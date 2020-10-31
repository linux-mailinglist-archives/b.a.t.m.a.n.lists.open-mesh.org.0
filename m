Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 3626B2A1911
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 31 Oct 2020 18:44:58 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 0E4198098E;
	Sat, 31 Oct 2020 18:44:57 +0100 (CET)
Received: from dvalin.narfation.org (dvalin.narfation.org [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 09843803C2
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 31 Oct 2020 18:44:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1604165931;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=nM/zxbkNIfMkHpFq65ZIKG/kfCE1ipxfVX80vbO4nWQ=;
	b=QeylGUFNjMa/3qtUf0bhgQoAK/jao38b2l4gj8mVSs+dZm671ZhGYQTqn/T+prtUtMcQEb
	YZw2HOe1a6xsvtNm7KtIXxipVc24J7ppA8gNXZt0dYSkcFjoYzOVyQWUkYmJvkg+/NOqy7
	IlcYybuCnLoicWXfMZO1VcCXMdMitFc=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
Subject: [PATCH 3/3] batman-adv: Drop legacy code for auto deleting mesh interfaces
Date: Sat, 31 Oct 2020 18:38:16 +0100
Message-Id: <20201031173816.108427-3-sven@narfation.org>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201031173816.108427-1-sven@narfation.org>
References: <20201031173816.108427-1-sven@narfation.org>
MIME-Version: 1.0
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1604166294; a=rsa-sha256;
	cv=none;
	b=l22l826O9r8/HLOM6Xi4vZ6PIBfqzpP7ISwgCKE2B3wSUY6/Z2vrd3YXm8tjJes3DJY7+p
	c9BB9zPhcACE4f68zE9bN/Mxd2bEDDjBXO21rM7/d3Mjz88oHhwR9AhxYklsgHOyI6e1cE
	A0t+3mq2EM3RBaSbx9WVBSLcxtTuiI8=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=QeylGUFN;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1604166294;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=nM/zxbkNIfMkHpFq65ZIKG/kfCE1ipxfVX80vbO4nWQ=;
	b=3VmMuPAgqQEGTQK4Z5fmMfb459LgdhTb254jtNEzMWDDgIyN+DxAFk3ftIGhka2AghUUY5
	wjGLHdyV4LHjTqfuu6d/OSu1+5l1hFb3OR30HPXfrG4ypiSHkDgECmt/lNnuE1PdF7eLC5
	hjI+vqF3B9iG+U/q5IAR9/MXJOWj5rc=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: LCS2DWN2VJNQJ3LH7WWIXKGMZAWXXOGS
X-Message-ID-Hash: LCS2DWN2VJNQJ3LH7WWIXKGMZAWXXOGS
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/LCS2DWN2VJNQJ3LH7WWIXKGMZAWXXOGS/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

The only way to automatically drop batadv mesh interfaces when all soft
interfaces were removed was dropped with the sysfs support. It is no long=
er
needed to have them handled by kernel anymore.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 net/batman-adv/hard-interface.c |  8 ++------
 net/batman-adv/hard-interface.h | 19 +------------------
 net/batman-adv/soft-interface.c |  5 ++---
 3 files changed, 5 insertions(+), 27 deletions(-)

diff --git a/net/batman-adv/hard-interface.c b/net/batman-adv/hard-interf=
ace.c
index f122e448..19ea5870 100644
--- a/net/batman-adv/hard-interface.c
+++ b/net/batman-adv/hard-interface.c
@@ -842,11 +842,8 @@ static size_t batadv_hardif_cnt(const struct net_dev=
ice *soft_iface)
 /**
  * batadv_hardif_disable_interface() - Remove hard interface from soft i=
nterface
  * @hard_iface: hard interface to be removed
- * @autodel: whether to delete soft interface when it doesn't contain an=
y other
- *  slave interfaces
  */
-void batadv_hardif_disable_interface(struct batadv_hard_iface *hard_ifac=
e,
-				     enum batadv_hard_if_cleanup autodel)
+void batadv_hardif_disable_interface(struct batadv_hard_iface *hard_ifac=
e)
 {
 	struct batadv_priv *bat_priv =3D netdev_priv(hard_iface->soft_iface);
 	struct batadv_hard_iface *primary_if =3D NULL;
@@ -950,8 +947,7 @@ static void batadv_hardif_remove_interface(struct bat=
adv_hard_iface *hard_iface)
=20
 	/* first deactivate interface */
 	if (hard_iface->if_status !=3D BATADV_IF_NOT_IN_USE)
-		batadv_hardif_disable_interface(hard_iface,
-						BATADV_IF_CLEANUP_KEEP);
+		batadv_hardif_disable_interface(hard_iface);
=20
 	if (hard_iface->if_status !=3D BATADV_IF_NOT_IN_USE)
 		return;
diff --git a/net/batman-adv/hard-interface.h b/net/batman-adv/hard-interf=
ace.h
index 1ee45b61..f4b8e9ef 100644
--- a/net/batman-adv/hard-interface.h
+++ b/net/batman-adv/hard-interface.h
@@ -67,22 +67,6 @@ enum batadv_hard_if_bcast {
 	BATADV_HARDIF_BCAST_DUPORIG,
 };
=20
-/**
- * enum batadv_hard_if_cleanup - Cleanup modi for soft_iface after slave=
 removal
- */
-enum batadv_hard_if_cleanup {
-	/**
-	 * @BATADV_IF_CLEANUP_KEEP: Don't automatically delete soft-interface
-	 */
-	BATADV_IF_CLEANUP_KEEP,
-
-	/**
-	 * @BATADV_IF_CLEANUP_AUTO: Delete soft-interface after last slave was
-	 *  removed
-	 */
-	BATADV_IF_CLEANUP_AUTO,
-};
-
 extern struct notifier_block batadv_hard_if_notifier;
=20
 struct net_device *batadv_get_real_netdev(struct net_device *net_device)=
;
@@ -92,8 +76,7 @@ struct batadv_hard_iface*
 batadv_hardif_get_by_netdev(const struct net_device *net_dev);
 int batadv_hardif_enable_interface(struct batadv_hard_iface *hard_iface,
 				   struct net *net, const char *iface_name);
-void batadv_hardif_disable_interface(struct batadv_hard_iface *hard_ifac=
e,
-				     enum batadv_hard_if_cleanup autodel);
+void batadv_hardif_disable_interface(struct batadv_hard_iface *hard_ifac=
e);
 int batadv_hardif_min_mtu(struct net_device *soft_iface);
 void batadv_update_min_mtu(struct net_device *soft_iface);
 void batadv_hardif_release(struct kref *ref);
diff --git a/net/batman-adv/soft-interface.c b/net/batman-adv/soft-interf=
ace.c
index 24760777..9efebaa3 100644
--- a/net/batman-adv/soft-interface.c
+++ b/net/batman-adv/soft-interface.c
@@ -878,7 +878,7 @@ static int batadv_softif_slave_del(struct net_device =
*dev,
 	if (!hard_iface || hard_iface->soft_iface !=3D dev)
 		goto out;
=20
-	batadv_hardif_disable_interface(hard_iface, BATADV_IF_CLEANUP_KEEP);
+	batadv_hardif_disable_interface(hard_iface);
 	ret =3D 0;
=20
 out:
@@ -1083,8 +1083,7 @@ static void batadv_softif_destroy_netlink(struct ne=
t_device *soft_iface,
=20
 	list_for_each_entry(hard_iface, &batadv_hardif_list, list) {
 		if (hard_iface->soft_iface =3D=3D soft_iface)
-			batadv_hardif_disable_interface(hard_iface,
-							BATADV_IF_CLEANUP_KEEP);
+			batadv_hardif_disable_interface(hard_iface);
 	}
=20
 	/* destroy the "untagged" VLAN */
--=20
2.28.0
