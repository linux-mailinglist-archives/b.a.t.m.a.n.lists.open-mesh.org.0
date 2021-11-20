Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id CF24C457E71
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 20 Nov 2021 13:41:33 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 832C683E46;
	Sat, 20 Nov 2021 13:40:48 +0100 (CET)
Received: from dvalin.narfation.org (dvalin.narfation.org [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 3F72383E7F
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 20 Nov 2021 13:40:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1637412046;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=yGa6OoUPEYHgyDIv8ERrakabBDfdYWMc2wN0J6w6sP4=;
	b=rSblnZzzpanyq2NyphcwMg9fwJ3XFlts40iWPL13bMXZXHBl2KNogxk1fxloLDzbfsymfo
	OZ5fHXTc9T699hm4Qbd7WA6L1MzCP2zRgQ50q6OUOdMHqWQF9/vZW0RlHLSOtY9kLcPkQD
	WqVV6EVXnd+plnmTbt0oL2v9yTJ7YjQ=
From: Sven Eckelmann <sven@narfation.org>
To: stable@vger.kernel.org
Subject: [PATCH 4.19 0/4] batman-adv: Fixes for stable/linux-4.19.y
Date: Sat, 20 Nov 2021 13:40:40 +0100
Message-Id: <20211120124044.261086-1-sven@narfation.org>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1637412046; a=rsa-sha256;
	cv=none;
	b=XnJk4w3RmcDE7zm5UPUgi8G95+rDHyx/gSBL71MbJpXt87mTPxJ2da3kxFIv/176Q5ayLO
	kxOsge8PaXXCUpGwdgCWkB5e4wnb1WBb7NhPvBB3bG0gqRGWOGvmK+Y4gpjGs5pYs/KY0B
	WB5Lraue2QQoO6WeTN8MKZKSJEKp/5c=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1637412046;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=yGa6OoUPEYHgyDIv8ERrakabBDfdYWMc2wN0J6w6sP4=;
	b=W3X1dW74vZYZ2bCTEpU14yGo4KK0Mgyh1zGkUY8n9nNQkDc9MRQL4u6x0YSSpMyyduKp0E
	+Q1e2NURS40Sy0vcOchE1JDn00erqSn6ILST6G04Iwv64RC4R8gAnVogLgK1GGpLiDIKn/
	wCqR/Ni1gNyAAwXO9JzQFkFErBlttAc=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=rSblnZzz;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: S4Y5K3WV4CNG23XO5HSSDHORRGQSIXJL
X-Message-ID-Hash: S4Y5K3WV4CNG23XO5HSSDHORRGQSIXJL
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/S4Y5K3WV4CNG23XO5HSSDHORRGQSIXJL/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Hi,

I went through  all changes in batman-adv since v4.19 with a Fixes: line
and checked whether they were backported to the LTS kernels. The ones whi=
ch
weren't ported and applied to this branch are now part of this patch seri=
es.

There are also following three patches included:

* batman-adv: Consider fragmentation for needed_headroom
* batman-adv: Reserve needed_*room for fragments
* batman-adv: Don't always reallocate the fragmentation skb head

which could in some circumstances cause packet loss but which were create=
d
to fix high CPU load/low throughput problems. But I've added them here
anyway because the corresponding VXLAN patches were also added to stable.
And some stable kernels also got these fixes a while back.

Kind regards,
	Sven

Linus L=C3=BCssing (1):
  batman-adv: mcast: fix duplicate mcast packets in BLA backbone from
    LAN

Sven Eckelmann (3):
  batman-adv: Consider fragmentation for needed_headroom
  batman-adv: Reserve needed_*room for fragments
  batman-adv: Don't always reallocate the fragmentation skb head

 net/batman-adv/fragmentation.c  | 26 ++++++++++++++++----------
 net/batman-adv/hard-interface.c |  3 +++
 net/batman-adv/multicast.c      | 31 +++++++++++++++++++++++++++++++
 net/batman-adv/multicast.h      | 15 +++++++++++++++
 net/batman-adv/soft-interface.c |  5 ++---
 5 files changed, 67 insertions(+), 13 deletions(-)

--=20
2.30.2
