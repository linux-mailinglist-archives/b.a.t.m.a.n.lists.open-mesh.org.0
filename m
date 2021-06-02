Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id D33913994BE
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed,  2 Jun 2021 22:42:45 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 1480783EE6;
	Wed,  2 Jun 2021 22:42:37 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id EF46C808DE
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed,  2 Jun 2021 22:42:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1622666082;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=omSKb49EnYmEd3PGvhFwm0wFmRJlN2PtY5BdAap3PLY=;
	b=q8jfl7iOmiewQeiS6qHIO/klE4ebXkg+IyoM+ncSbKTp3sY+AkX+E8Kict7M9SGPwk1lKW
	jO8fbQdejpcuTeTVl++ItR1/WWQZGcQe4ZNegLy14ltNQVtN7SYnbVcxDfTJKXJcipXXkO
	d8FKNskozsg8Rb1Cj8NS405tbzFGjyk=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
Subject: [PATCH 3/4] batman-adv: Don't manually reattach hard-interface
Date: Wed,  2 Jun 2021 22:32:34 +0200
Message-Id: <20210602203235.10659-3-sven@narfation.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210602203235.10659-1-sven@narfation.org>
References: <20210602203235.10659-1-sven@narfation.org>
MIME-Version: 1.0
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1622666548; a=rsa-sha256;
	cv=none;
	b=S213DjnwFBnJsXedUzY8dJv+jk3kbPUVopxOC1h4/m4egP/aIOi48z0F9qoiqwR852ioOp
	Pt9jmJDSJ52rXCoSgZn0OzdZX7SsMCwE3L7/1H+Kb4M38wt1TyUWwsjEfpUL8tVVp0CqMr
	sj0vRqLH6cEjPDW7+oYpXRyxhXJLbWg=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=q8jfl7iO;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1622666548;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=omSKb49EnYmEd3PGvhFwm0wFmRJlN2PtY5BdAap3PLY=;
	b=RbuGJNb031bqlBxQ4LH6/aWg41A8NQKeJ/Fj4ImImEH1cOe/oxdHFbti3j89fqVCOMwZFs
	HC8MO8D7orQ0l1iN20NEWmvK2xZ2D110sJ/P+NNYK/qAfRoRr+PEb1ZQBj/fVnNRWWG6s/
	XR+0sdZhzAKmdjNmc6+hzmd+NqwCP80=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: 6DYDELTBTY7S55UYTTB6T2CBOKTOZB2Q
X-Message-ID-Hash: 6DYDELTBTY7S55UYTTB6T2CBOKTOZB2Q
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/6DYDELTBTY7S55UYTTB6T2CBOKTOZB2Q/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

The batadv_hardif_enable_interface is now only called from the callback
ndo_add_slave. This callback is only used by do_set_master in the rtnetli=
nk
code which only does two things:

1. remove the net_device from its old master
2. add the net_device to its new batadv master

The code to replicate the first step in batman-adv is therefore unused
since the sysfs code was dropped.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 net/batman-adv/hard-interface.c | 34 ---------------------------------
 1 file changed, 34 deletions(-)

diff --git a/net/batman-adv/hard-interface.c b/net/batman-adv/hard-interf=
ace.c
index 44b65fa4..6ce75ec6 100644
--- a/net/batman-adv/hard-interface.c
+++ b/net/batman-adv/hard-interface.c
@@ -677,31 +677,6 @@ batadv_hardif_deactivate_interface(struct batadv_har=
d_iface *hard_iface)
 	batadv_update_min_mtu(hard_iface->soft_iface);
 }
=20
-/**
- * batadv_master_del_slave() - remove hard_iface from the current master=
 iface
- * @slave: the interface enslaved in another master
- * @master: the master from which slave has to be removed
- *
- * Invoke ndo_del_slave on master passing slave as argument. In this way=
 the
- * slave is free'd and the master can correctly change its internal stat=
e.
- *
- * Return: 0 on success, a negative value representing the error otherwi=
se
- */
-static int batadv_master_del_slave(struct batadv_hard_iface *slave,
-				   struct net_device *master)
-{
-	int ret;
-
-	if (!master)
-		return 0;
-
-	ret =3D -EBUSY;
-	if (master->netdev_ops->ndo_del_slave)
-		ret =3D master->netdev_ops->ndo_del_slave(master, slave->net_dev);
-
-	return ret;
-}
-
 /**
  * batadv_hardif_enable_interface() - Enslave hard interface to soft int=
erface
  * @hard_iface: hard interface to add to soft interface
@@ -713,7 +688,6 @@ int batadv_hardif_enable_interface(struct batadv_hard=
_iface *hard_iface,
 				   struct net_device *soft_iface)
 {
 	struct batadv_priv *bat_priv;
-	struct net_device *master;
 	__be16 ethertype =3D htons(ETH_P_BATMAN);
 	int max_header_len =3D batadv_max_header_len();
 	int ret;
@@ -732,14 +706,6 @@ int batadv_hardif_enable_interface(struct batadv_har=
d_iface *hard_iface,
 		goto err_dev;
 	}
=20
-	/* check if the interface is enslaved in another virtual one and
-	 * in that case unlink it first
-	 */
-	master =3D netdev_master_upper_dev_get(hard_iface->net_dev);
-	ret =3D batadv_master_del_slave(hard_iface, master);
-	if (ret)
-		goto err_dev;
-
 	hard_iface->soft_iface =3D soft_iface;
 	bat_priv =3D netdev_priv(hard_iface->soft_iface);
=20
--=20
2.30.2
