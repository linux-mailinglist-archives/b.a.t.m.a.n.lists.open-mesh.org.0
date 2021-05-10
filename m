Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id E201E3797F2
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 10 May 2021 21:50:02 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 821E183EE5;
	Mon, 10 May 2021 21:50:01 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 4261C8030B
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 10 May 2021 21:49:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1620676197;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=O8Cw5XU45OXguEbAwrJyjqMfBVR+mX4FMaXMZ9idIvA=;
	b=TXkCN27Hkb9vjyN3gfNcfVxLtgJUI+8ZWicHVlbRXLOr05yg/XDLZjmicXvuXFQdSDSG5z
	uo2tAJFIatQrKk9Pma9tLR97j7fSTCaAv6CuuWrClGYYIwKUf1Om0Hhmjsd2v+XS8dtggc
	+lYIF5PPhlk1itKibgHB7XTGCJ37t7I=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
Subject: [PATCH 0/6] batctl: Use shared batadv genl socket for requests
Date: Mon, 10 May 2021 21:49:39 +0200
Message-Id: <20210510194945.103735-1-sven@narfation.org>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1620676198; a=rsa-sha256;
	cv=none;
	b=mybXi43ct7UHPtMFszbGfUNRVedhrzyRND3fPfnfB25cZQelJ1GFoerr8Px+7fL/m5IyJa
	HrOHv/7lxXR0ME+np1nST6qSl/vWUQ+3KNSGaWu+FqlKsTCI9Q9hrtO+pnycM2wT5xZ7mv
	dtqRBFvITiWgnk2UK9fJqCkZahvuk+U=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=TXkCN27H;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1620676198;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=O8Cw5XU45OXguEbAwrJyjqMfBVR+mX4FMaXMZ9idIvA=;
	b=tT1pazMSvknrpKGjcabcJGzrW1VVOPuJZ+ZS1jXxxl9GHsLsOWnjqZRF1krMvxFiST2RCD
	NQvyXvyxhIPYtjSZQPGfIiD14vhylIllUjsQipM9y2pqqLiXV4pVcrjktG8zsJSFbSiuoR
	495KqFK6j/hez9vN9i6t7NJnoHGdeLs=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: LYMU5ZA3I6YVHHRZVY3RJJR4KDHF76QI
X-Message-ID-Hash: LYMU5ZA3I6YVHHRZVY3RJJR4KDHF76QI
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/LYMU5ZA3I6YVHHRZVY3RJJR4KDHF76QI/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

It was noticed that quite a lot of functions create their own netlink
socket just to talk to batman-adv. This is related to the old sysfs
compat code which was removed in 2021.0. So restructure the code to
make use of the existing global information in the state object.

Kind regards,
	Sven

Sven Eckelmann (6):
  batctl: Consume genl ACKs after setting reads
  batctl: throughputmeter: Use global genl socket
  batctl: interface: List using shared genl socket
  batctl: Get meshif info using shared genl socket
  batctl: Use common genl socket for netlink_query_common
  batctl: routing_algo: List using shared genl socket

 functions.c       |  15 +++---
 functions.h       |   5 +-
 gateways.c        |   3 +-
 gw_mode.c         |   3 +-
 icmp_helper.c     |  14 +++---
 icmp_helper.h     |   2 +-
 interface.c       |  77 ++++++++++++-----------------
 mcast_flags.c     |   3 +-
 netlink.c         | 121 +++++++++++++++++-----------------------------
 netlink.h         |  12 ++---
 originators.c     |   3 +-
 ping.c            |   7 +--
 routing_algo.c    |  74 +++++++++++++---------------
 sys.c             |   8 ++-
 throughputmeter.c | 105 ++++++++--------------------------------
 traceroute.c      |   7 +--
 translate.c       |   5 +-
 17 files changed, 176 insertions(+), 288 deletions(-)

--=20
2.30.2
