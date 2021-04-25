Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E36F36A828
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 25 Apr 2021 18:01:47 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 4946380CDD;
	Sun, 25 Apr 2021 18:01:44 +0200 (CEST)
Received: from mail.aperture-lab.de (mail.aperture-lab.de [IPv6:2a01:4f8:c2c:665b::1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 62FE780031
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 25 Apr 2021 18:01:41 +0200 (CEST)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 123483EBF7;
	Sun, 25 Apr 2021 18:01:37 +0200 (CEST)
From: =?UTF-8?q?Linus=20L=C3=BCssing?= <linus.luessing@c0d3.blue>
To: netdev@vger.kernel.org
Subject: [PATCH net-next 0/2] net: bridge: split IPv4/v6 mc router state and export for batman-adv
Date: Sun, 25 Apr 2021 18:00:48 +0200
Message-Id: <20210425160050.8732-1-linus.luessing@c0d3.blue>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Last-TLS-Session-Version: TLSv1.2
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1619366501; a=rsa-sha256;
	cv=none;
	b=lEia0dSzeE0zlynoEfNHopk5K3Aq8LYxHE7iMNUYPIUtckqJVp1Z3Z4wNENvON5aqufTYJ
	shedEW88NOxKK5WW73pIStuJBt70qRmf8gWcL91uqAb3rcTsMLgdaQJ9crI9G9wy0WsIsK
	vnMIn0/3eN3hdwRzMJASGorPjhxxQYw=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=none (diktynna.open-mesh.org: domain of linus.luessing@c0d3.blue has no SPF policy when checking 2a01:4f8:c2c:665b::1) smtp.mailfrom=linus.luessing@c0d3.blue
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1619366501;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=xYalNIb2+AlNvqeCyMkhCE1++rbfqWzCzlSMBuNKYtk=;
	b=hWmLxkosNK1RO0r3i21h7yB9xzrn9ejFoxHrJFb2hhngaX/7OYz45PEBwOA+2mbt9JOTbG
	W8LdobeRtP+lI4HStkoeLgMeFlcA9zERHA6LVwpZ1lVFLN2kUuGR9A4PaWTBMNN7eMluQW
	wwT9OVtmiQ1ZptuTE+qnUFBM164FcdQ=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: 3MKZYRNZWNTOQS7NQ7BM3A32TIEJZ6CM
X-Message-ID-Hash: 3MKZYRNZWNTOQS7NQ7BM3A32TIEJZ6CM
X-MailFrom: linus.luessing@c0d3.blue
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: Roopa Prabhu <roopa@nvidia.com>, Nikolay Aleksandrov <nikolay@nvidia.com>, Jakub Kicinski <kuba@kernel.org>, "David S . Miller" <davem@davemloft.net>, bridge@lists.linux-foundation.org, b.a.t.m.a.n@lists.open-mesh.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/3MKZYRNZWNTOQS7NQ7BM3A32TIEJZ6CM/>
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
