Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 73B1236A81E
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 25 Apr 2021 17:58:09 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 2218E8063F;
	Sun, 25 Apr 2021 17:58:08 +0200 (CEST)
Received: from mail.aperture-lab.de (mail.aperture-lab.de [116.203.183.178])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 8B21F803F5
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 25 Apr 2021 17:58:04 +0200 (CEST)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 3B5813EBF7;
	Sun, 25 Apr 2021 17:58:03 +0200 (CEST)
From: =?UTF-8?q?Linus=20L=C3=BCssing?= <linus.luessing@c0d3.blue>
To: netdev@vger.kernel.org
Subject: [PATCH net-next 0/2] net: bridge: split IPv4/v6 mc router state and export for batman-adv
Date: Sun, 25 Apr 2021 17:57:31 +0200
Message-Id: <20210425155732.8561-1-linus.luessing@c0d3.blue>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Last-TLS-Session-Version: TLSv1.2
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1619366284; a=rsa-sha256;
	cv=none;
	b=DO2pFa50lR3p10SgCjXJZIMLoFZDZOcLx7S8XqXTvbvmyIbUhAyo5FHV2xXYposU5phd0L
	lDJE8xHf9zVsBOijRoxPo4IBvQL7xkNItbo3VMJ62jwKcPufGm0Uqcu9daE3q1TE7pkubb
	Bygj0wtQTo3Ke305VqrFOFQubIsggEg=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=none (diktynna.open-mesh.org: domain of linus.luessing@c0d3.blue has no SPF policy when checking 116.203.183.178) smtp.mailfrom=linus.luessing@c0d3.blue
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1619366284;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=xYalNIb2+AlNvqeCyMkhCE1++rbfqWzCzlSMBuNKYtk=;
	b=pUzuXTIv5B/C7AxzcNorWKamU6nVQgljCXW7K+PJlCdt05pPyGAlef9oy44s54/TUWw68R
	m/8V8FvQQTNogbLDOhC7vj/Ylz1KPSsXg7E2fdh7ZVbP0Y4xZYPcf/r6RcNOwjDynzetzF
	Qz81NHCIv9r1AEl7j0q2MJnhOqQbz+8=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: BRVSG7ETNW5RB2S4LSGX7WEUSQWD653M
X-Message-ID-Hash: BRVSG7ETNW5RB2S4LSGX7WEUSQWD653M
X-MailFrom: linus.luessing@c0d3.blue
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: Roopa Prabhu <roopa@nvidia.com>, Nikolay Aleksandrov <nikolay@nvidia.com>, Jakub Kicinski <kuba@kernel.org>, "David S . Miller" <davem@davemloft.net>, bridge@lists.linux-foundation.org, b.a.t.m.a.n@lists.open-mesh.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/BRVSG7ETNW5RB2S4LSGX7WEUSQWD653M/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Hi,

The following are two patches for the Linux bridge regarding multicast
routers. They are rebased on top of the following fix:
"net: bridge: mcast: fix broken length + header check for MRDv6 Adv." [0]
And should be applied afterwards.

The first one splits the so far combined multicast router state into two
ones, one for IPv4 and one for IPv6, for a more fine-grained detection of
multicast routers. This avoids sending IPv4 multicast packets to an
IPv6-only multicast router and avoids sending IPv6 multicast packets to
an IPv4-only multicast router. This is also in preparation for the
second patch:

The second patch exports this now per protocol family multicast router
state so that batman-adv can then later make full use of the
Multicast Router Discovery (MRD) support in the Linux bridge. The
batman-adv protocol format currently expects separate multicast router
states for IPv4 and IPv6, therefore it depends on the first patch.
batman-adv will then make use of this newly exported functions like
this[1].

Regards, Linus

[0]: https://patchwork.kernel.org/project/netdevbpf/patch/20210425152736.=
8421-1-linus.luessing@c0d3.blue/
[1]: https://git.open-mesh.org/batman-adv.git/shortlog/refs/heads/linus/m=
ulticast-routeable-mrd
     -> https://git.open-mesh.org/batman-adv.git/commit/d4bed3a9242744570=
8baeb1f2d1841c5fb816fd4
