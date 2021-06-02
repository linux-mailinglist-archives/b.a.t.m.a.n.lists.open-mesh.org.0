Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 005E73994BC
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed,  2 Jun 2021 22:42:36 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id B012E83EB7;
	Wed,  2 Jun 2021 22:42:30 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 26637839CB
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed,  2 Jun 2021 22:42:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1622666085;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=w+BmgJ7u/J0ZCNsYIj8MrzumxlRDu8o2yLWcV26pAT8=;
	b=EExXfnfVISViiBtmAQj9HS/Y+kiaoAYByGgRZSe+LKvVVGLFGcCM/FMKRlc5/55wzWR9xw
	KmQD2+na7ypjgZd5rsxylnjggjdELlZtWgB5ThZaFfBRA07HxTYM+bwWR3nw/Px+9vc1Fg
	y24uE/QKMnullRuGIYTSnNunfXxXIxs=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
Subject: [PATCH 4/4] batman-adv: Drop reduntant batadv interface check
Date: Wed,  2 Jun 2021 22:32:35 +0200
Message-Id: <20210602203235.10659-4-sven@narfation.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210602203235.10659-1-sven@narfation.org>
References: <20210602203235.10659-1-sven@narfation.org>
MIME-Version: 1.0
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1622666548; a=rsa-sha256;
	cv=none;
	b=fOSqQkcWtWEKV8fiOIjsjHmf1Z+y/AqqHNVWB07O0hvERw81RQw702i7kZA26nTjRKN5D/
	uZ61OuIDJO0P8lWw+KAtRzSiMbhLrpAG4Xupco9MngPiN5lN7NQPAwdjL5pUOjhA49EPDg
	Ln6IsOyI63rqryUjy+jjC94zWcDQSbc=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=EExXfnfV;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1622666548;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=w+BmgJ7u/J0ZCNsYIj8MrzumxlRDu8o2yLWcV26pAT8=;
	b=gC46cUQ9fRup9LRCHAGHuC8DRX6rLwB36IDQr+C66BLs1o0YBgudnC4nhWuNC5X/WrRie1
	t9sYXbD4QXL2+67FdWwD+/FQUEd3ASiBDBqe6k/8Qg4+IiST9xJ2ex0+JrF1QUGquxjJy+
	igoWSM+vn8dauQI6TGEmJA50A7gAZ7s=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: MBRPXHASHGQY225OUZC24CEXI77RZBKY
X-Message-ID-Hash: MBRPXHASHGQY225OUZC24CEXI77RZBKY
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/MBRPXHASHGQY225OUZC24CEXI77RZBKY/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

If batadv_hardif_enable_interface is called then its called from its
callback ndo_add_slave. It is therefore not necessary to check if it is a
batadv interface.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 net/batman-adv/hard-interface.c | 9 ---------
 1 file changed, 9 deletions(-)

diff --git a/net/batman-adv/hard-interface.c b/net/batman-adv/hard-interf=
ace.c
index 6ce75ec6..667b553c 100644
--- a/net/batman-adv/hard-interface.c
+++ b/net/batman-adv/hard-interface.c
@@ -9,7 +9,6 @@
=20
 #include <linux/atomic.h>
 #include <linux/byteorder/generic.h>
-#include <linux/errno.h>
 #include <linux/gfp.h>
 #include <linux/if.h>
 #include <linux/if_arp.h>
@@ -698,14 +697,6 @@ int batadv_hardif_enable_interface(struct batadv_har=
d_iface *hard_iface,
 	kref_get(&hard_iface->refcount);
=20
 	dev_hold(soft_iface);
-
-	if (!batadv_softif_is_valid(soft_iface)) {
-		pr_err("Can't create batman mesh interface %s: already exists as regul=
ar interface\n",
-		       soft_iface->name);
-		ret =3D -EINVAL;
-		goto err_dev;
-	}
-
 	hard_iface->soft_iface =3D soft_iface;
 	bat_priv =3D netdev_priv(hard_iface->soft_iface);
=20
--=20
2.30.2
