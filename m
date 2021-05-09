Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 134A3377820
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun,  9 May 2021 21:45:27 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 91EFB80A11;
	Sun,  9 May 2021 21:45:25 +0200 (CEST)
Received: from mail.aperture-lab.de (mail.aperture-lab.de [116.203.183.178])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id F13F3804F1
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun,  9 May 2021 21:45:21 +0200 (CEST)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 8239E3ED8B;
	Sun,  9 May 2021 21:45:20 +0200 (CEST)
From: =?UTF-8?q?Linus=20L=C3=BCssing?= <linus.luessing@c0d3.blue>
To: netdev@vger.kernel.org
Subject: [PATCH net-next v2 00/11] net: bridge: split IPv4/v6 mc router state and export for batman-adv
Date: Sun,  9 May 2021 21:44:58 +0200
Message-Id: <20210509194509.10849-1-linus.luessing@c0d3.blue>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Last-TLS-Session-Version: TLSv1.2
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1620589522; a=rsa-sha256;
	cv=none;
	b=zipArkqaEPjrU/uZm7NUkkNUWogDhjpPcGLpULuXMqPufSdFLS0U72yd6GqcuYT4vAIgmm
	IXkHc8+cN9A3yEo4gyT8uN3jGrJhCxe1LWFXdl9g+GX1bVf++wX7Wp85Ai8TGOop2U2sCP
	tJwDbNrC4fpmTYQhKdsXc7L29rpfDb8=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=none (diktynna.open-mesh.org: domain of linus.luessing@c0d3.blue has no SPF policy when checking 116.203.183.178) smtp.mailfrom=linus.luessing@c0d3.blue
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1620589522;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=aKZfSTJ3DifSpW9C+/c0Fdhg1USCp90E5dZZDkhe5GQ=;
	b=SLNobBmiCz++26LBwDs8bey4kzWSgc0bMtCTTNst88q2cznYrq8jFGPplCeNfp73dNEd0j
	XAqp6/l0S1xnUUNjvbTN3Yw/jbkP2ISp7+1tut9K9v1wtOnePlAj1c+EVXtxfwxPUvaAQj
	lYq57zC+f46IEX2PTBQBF3UTx/GskRc=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: WBOW6OL37YKJSKXMH2OWCBDRMBU2ELYT
X-Message-ID-Hash: WBOW6OL37YKJSKXMH2OWCBDRMBU2ELYT
X-MailFrom: linus.luessing@c0d3.blue
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: Roopa Prabhu <roopa@nvidia.com>, Nikolay Aleksandrov <nikolay@nvidia.com>, Jakub Kicinski <kuba@kernel.org>, "David S . Miller" <davem@davemloft.net>, bridge@lists.linux-foundation.org, b.a.t.m.a.n@lists.open-mesh.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/WBOW6OL37YKJSKXMH2OWCBDRMBU2ELYT/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Hi,

The following patches are splitting the so far combined multicast router
state in the Linux bridge into two ones, one for IPv4 and one for IPv6,
for a more fine-grained detection of multicast routers. This avoids
sending IPv4 multicast packets to an IPv6-only multicast router and=20
avoids sending IPv6 multicast packets to an IPv4-only multicast router.
This also allows batman-adv to make use of the now split information in
the final patch.

The first eight patches prepare the bridge code to avoid duplicate
code or IPv6-#ifdef clutter for the multicast router state split. And=20
contain no functional changes yet.

The ninth patch then implements the IPv4+IPv6 multicast router state
split.

Patch number ten adds IPv4+IPv6 specific timers to the mdb netlink
router port dump, so that the timers validity can be checked individually
from userspace.

The final, eleventh patch exports this now per protocol family multicast
router state so that batman-adv can then later make full use of the=20
Multicast Router Discovery (MRD) support in the Linux bridge. The=20
batman-adv protocol format currently expects separate multicast router
states for IPv4 and IPv6, therefore it depends on the first patch.
batman-adv will then make use of this newly exported functions like
this[0].

Regards, Linus

[0]: https://git.open-mesh.org/batman-adv.git/shortlog/refs/heads/linus/m=
ulticast-routeable-mrd
     -> https://git.open-mesh.org/batman-adv.git/commit/d4bed3a9242744570=
8baeb1f2d1841c5fb816fd4

Changelog v2:=20

* split into multiple patches as suggested by Nikolay
* added helper functions to br_multicast_flood(), avoiding
  IPv6 #ifdef clutter
* fixed reverse xmas tree ordering in br_rports_fill_info() and=20
  added helper functions to avoid IPv6 #ifdef clutter
* Added a common br_multicast_add_router() and a helper function
  to retrieve the correct slot to avoid duplicate code for an
  ip4 and ip6 variant
* replaced the "1" and "2" constants in br_multicast_is_router()
  with the appropriate enums
* added br_{ip4,ip6}_multicast_rport_del() wrappers to reduce
  IPv6 #ifdef clutter
* added return values to br_*multicast_rport_del() to only notify
  if the port was actually removed and did not race with a readdition
  somewhere else
* added empty, void br_ip6_multicast_mark_router() if compiled
  without IPv6, to reduce IPv6 #ifdef clutter

