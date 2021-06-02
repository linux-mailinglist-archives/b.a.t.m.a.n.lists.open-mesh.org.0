Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AC9E3994BD
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed,  2 Jun 2021 22:42:41 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 866D083EDC;
	Wed,  2 Jun 2021 22:42:31 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id E35F980591
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed,  2 Jun 2021 22:42:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1622666077;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=xfEVWRGRVFJiXDrH31x9TuTTNuxdpLAyaJpTB5qGhIM=;
	b=afSPY4M4xxlWdp6ER1s71Y59fGcC9SbNALtAf9QA9OydpGCwXKuefKZTy3k2oEE4FbVZyK
	Q5iu8x6Gmbo6oupagRa3dkj8ty780fharyNYJczVUr7erlz6kfiLS+zv/EMhOEGHDm6AZ0
	khMYbySi+lqVcoYc5AfDI6KpBK3w/do=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
Subject: [PATCH 1/4] batman-adv: Drop implicit creation of batadv net_devices
Date: Wed,  2 Jun 2021 22:32:32 +0200
Message-Id: <20210602203235.10659-1-sven@narfation.org>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1622666547; a=rsa-sha256;
	cv=none;
	b=V8bFsGgtFytceqMfw7TJ4qdLfEoqDDK7pgdiE7Iu+1h/eBBT5Pj93bJ4X3uBnDmgRf5FyS
	5tsVhX/bgHc3vLGOp7njxH5sl5PUkTL3kAggRkxFVOhxtAoKqU8iUPmBrkMBmPggjdlQsG
	0bs5HPnoVD4jIODzg1aDAU+iIyIMao0=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=afSPY4M4;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1622666547;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=xfEVWRGRVFJiXDrH31x9TuTTNuxdpLAyaJpTB5qGhIM=;
	b=lh3S1LPfOpKwQJNtVgmeww4voGLSDwcQBNc5mMRUHkyFHeIVXZ2ZzUF+BUwtTy1sYpFqsX
	QOeX/FFCFrZDC82RxCUPt04fFYvyRbjBOf9OJLXVKzfX/CYLku5UcH1hs1HW7xt4zK+jdv
	lD/LwY6eaZkhKE5X2SqxWl36EPw3esU=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: KFD2AUMYI3NQ2MULUVWBUW6WWHJQF5WZ
X-Message-ID-Hash: KFD2AUMYI3NQ2MULUVWBUW6WWHJQF5WZ
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/KFD2AUMYI3NQ2MULUVWBUW6WWHJQF5WZ/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

The sysfs code in batman-adv was could create a new batadv interfaces on
demand when a string (interface name) was written to the
batman-adv/mesh_iface file. But the code no longer exists in the current
batman-adv codebase. The helper code to implement this behavior must be
considered as unused and can be dropped.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 net/batman-adv/hard-interface.c | 12 ++----------
 net/batman-adv/soft-interface.c | 34 +--------------------------------
 net/batman-adv/soft-interface.h |  2 --
 3 files changed, 3 insertions(+), 45 deletions(-)

diff --git a/net/batman-adv/hard-interface.c b/net/batman-adv/hard-interf=
ace.c
index 4a6a25d5..9a78789b 100644
--- a/net/batman-adv/hard-interface.c
+++ b/net/batman-adv/hard-interface.c
@@ -725,17 +725,9 @@ int batadv_hardif_enable_interface(struct batadv_har=
d_iface *hard_iface,
 	kref_get(&hard_iface->refcount);
=20
 	soft_iface =3D dev_get_by_name(net, iface_name);
-
 	if (!soft_iface) {
-		soft_iface =3D batadv_softif_create(net, iface_name);
-
-		if (!soft_iface) {
-			ret =3D -ENOMEM;
-			goto err;
-		}
-
-		/* dev_get_by_name() increases the reference counter for us */
-		dev_hold(soft_iface);
+		ret =3D -EINVAL;
+		goto err;
 	}
=20
 	if (!batadv_softif_is_valid(soft_iface)) {
diff --git a/net/batman-adv/soft-interface.c b/net/batman-adv/soft-interf=
ace.c
index a21884c0..0c5b3425 100644
--- a/net/batman-adv/soft-interface.c
+++ b/net/batman-adv/soft-interface.c
@@ -26,7 +26,6 @@
 #include <linux/netdevice.h>
 #include <linux/netlink.h>
 #include <linux/percpu.h>
-#include <linux/printk.h>
 #include <linux/random.h>
 #include <linux/rculist.h>
 #include <linux/rcupdate.h>
@@ -37,6 +36,7 @@
 #include <linux/stddef.h>
 #include <linux/string.h>
 #include <linux/types.h>
+#include <net/net_namespace.h>
 #include <net/netlink.h>
 #include <uapi/linux/batadv_packet.h>
 #include <uapi/linux/batman_adv.h>
@@ -1086,38 +1086,6 @@ static int batadv_softif_newlink(struct net *src_n=
et, struct net_device *dev,
 	return register_netdevice(dev);
 }
=20
-/**
- * batadv_softif_create() - Create and register soft interface
- * @net: the applicable net namespace
- * @name: name of the new soft interface
- *
- * Return: newly allocated soft_interface, NULL on errors
- */
-struct net_device *batadv_softif_create(struct net *net, const char *nam=
e)
-{
-	struct net_device *soft_iface;
-	int ret;
-
-	soft_iface =3D alloc_netdev(sizeof(struct batadv_priv), name,
-				  NET_NAME_UNKNOWN, batadv_softif_init_early);
-	if (!soft_iface)
-		return NULL;
-
-	dev_net_set(soft_iface, net);
-
-	soft_iface->rtnl_link_ops =3D &batadv_link_ops;
-
-	ret =3D register_netdevice(soft_iface);
-	if (ret < 0) {
-		pr_err("Unable to register the batman interface '%s': %i\n",
-		       name, ret);
-		free_netdev(soft_iface);
-		return NULL;
-	}
-
-	return soft_iface;
-}
-
 /**
  * batadv_softif_destroy_netlink() - deletion of batadv_soft_interface v=
ia
  *  netlink
diff --git a/net/batman-adv/soft-interface.h b/net/batman-adv/soft-interf=
ace.h
index 38b0ad18..67a2ddd6 100644
--- a/net/batman-adv/soft-interface.h
+++ b/net/batman-adv/soft-interface.h
@@ -12,14 +12,12 @@
 #include <linux/netdevice.h>
 #include <linux/skbuff.h>
 #include <linux/types.h>
-#include <net/net_namespace.h>
 #include <net/rtnetlink.h>
=20
 int batadv_skb_head_push(struct sk_buff *skb, unsigned int len);
 void batadv_interface_rx(struct net_device *soft_iface,
 			 struct sk_buff *skb, int hdr_size,
 			 struct batadv_orig_node *orig_node);
-struct net_device *batadv_softif_create(struct net *net, const char *nam=
e);
 bool batadv_softif_is_valid(const struct net_device *net_dev);
 extern struct rtnl_link_ops batadv_link_ops;
 int batadv_softif_create_vlan(struct batadv_priv *bat_priv, unsigned sho=
rt vid);
--=20
2.30.2
