Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 6997739FAD8
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue,  8 Jun 2021 17:35:37 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 1A17083EB7;
	Tue,  8 Jun 2021 17:35:33 +0200 (CEST)
Received: from simonwunderlich.de (packetmixer.de [IPv6:2001:4d88:2000:24::c0de])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 431B580BE6
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue,  8 Jun 2021 17:35:29 +0200 (CEST)
Received: from kero.packetmixer.de (p200300c5970dd3e020a52263b5aabfb3.dip0.t-ipconnect.de [IPv6:2003:c5:970d:d3e0:20a5:2263:b5aa:bfb3])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by simonwunderlich.de (Postfix) with ESMTPSA id 44B6517402C;
	Tue,  8 Jun 2021 17:27:05 +0200 (CEST)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: kuba@kernel.org,
	davem@davemloft.net
Subject: [PATCH 08/11] batman-adv: Drop implicit creation of batadv net_devices
Date: Tue,  8 Jun 2021 17:26:57 +0200
Message-Id: <20210608152700.30315-9-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210608152700.30315-1-sw@simonwunderlich.de>
References: <20210608152700.30315-1-sw@simonwunderlich.de>
MIME-Version: 1.0
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1623166529; a=rsa-sha256;
	cv=none;
	b=4LjGle2Pn2MNnCdQ2cVMgJ8bv11cL4MKjq5n/lnqVmEIausmxPKs5AC+O28ISJGjsH03oM
	vyj+8bw0GQu86T8bZkgUAP3yrB734uto242I5v71fRAlN94O4rqUSiiH+NcFGKnFeFkaNZ
	7sJ/G6wwth/dbnIRVKCIglpOdCPGPNQ=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates 2001:4d88:2000:24::c0de as permitted sender) smtp.mailfrom=sw@simonwunderlich.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1623166529;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=0XyTrZGzSZBEaN3pmW0mbiE04GCdXFAfIUZXXjg7hx8=;
	b=Qeqvp4OtXEo3VLO1sp61O+jggsQdESFIXV+hfD3RWK5fv0ADsM7TMUot9MeAlXQZwl0uqN
	uXxjmAR+Ywrlged21ngDJjCL6EM/pznhNUzE5xZCgvEwpqcvWLLn570hZOh0lPq89qemwX
	cCj4y6kXeYZbdYs5z0+YoSfAmZSly/E=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: T6Z4ZSNQGNL2P76UW4XHW4FJ26KFCI3Q
X-Message-ID-Hash: T6Z4ZSNQGNL2P76UW4XHW4FJ26KFCI3Q
X-MailFrom: sw@simonwunderlich.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/T6Z4ZSNQGNL2P76UW4XHW4FJ26KFCI3Q/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

From: Sven Eckelmann <sven@narfation.org>

The sysfs code in batman-adv was could create a new batadv interfaces on
demand when a string (interface name) was written to the
batman-adv/mesh_iface file. But the code no longer exists in the current
batman-adv codebase. The helper code to implement this behavior must be
considered as unused and can be dropped.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
---
 net/batman-adv/hard-interface.c | 12 ++----------
 net/batman-adv/soft-interface.c | 34 +--------------------------------
 net/batman-adv/soft-interface.h |  2 --
 3 files changed, 3 insertions(+), 45 deletions(-)

diff --git a/net/batman-adv/hard-interface.c b/net/batman-adv/hard-interf=
ace.c
index b99f64f483fc..a638f35598f0 100644
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
index a21884c0d47f..0c5b34251a6d 100644
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
index 38b0ad182584..67a2ddd6832f 100644
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
2.20.1
