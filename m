Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id C2145ABC89A
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 19 May 2025 22:48:39 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 9E571846F9
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 19 May 2025 22:48:39 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1747687719;
 b=0Cfz5z/vy/VaIeDBDNFlAmhyUzOQ2rm778UUOVdhGrGxSl0eq7KY2peVhh7rmY2x/MJcZ
 6+Or4tZnF4bVN/CwPcIKSYqofNxMLt+sSDwdyg6ekBqN5iDQIsrhxJJFEIswpl6/ng5ClHl
 w07H/g6BdagSXuAyc7v74uT4Ptg2aBk=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1747687719; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=ZyLWWB7YfeF/QGdzEH0pR1JoVUVT39q+Nr/ihIBlmTU=;
 b=BlsBI4ko3GFt6cQR1f7anMjSuHRidmO1u3L+G3DDxsiKqowH9au3gTZwo4yZX6ZqMtGR6
 ErxOTDs50nv6zcFROG2yu2F0+z3IaUH4D8mZ8VFyRwG1Bc6flcv9sLMWms47db+9lavAFI8
 hcnhkPC50OdaELMx62IxOxLCewt7Cts=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=universe-factory.net;
  arc=pass;
  dmarc=none
Authentication-Results: open-mesh.org;
 dkim=pass header.d=universe-factory.net; arc=pass; dmarc=none
Received: from mail.universe-factory.net (osgiliath.universe-factory.net
 [141.95.161.142])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 1D142842E0
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 19 May 2025 22:47:05 +0200 (CEST)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1747687630;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=ZyLWWB7YfeF/QGdzEH0pR1JoVUVT39q+Nr/ihIBlmTU=;
	b=kjUUHZVW/L4BRU7pY22kWjtbVMyRVCzNx1A7JGnBGPrVrMhWRR6+moXNhk2TFF/wm8de/G
	MsrZ/V9ulXETG1+hDE5BKWmsKWbnWSndy4ZPJEt29mjlV3StI/XnctKruEr8TcMNVpB2Ch
	bd4w6XWSzeUGFBGhW5E33WweqoWn+kU=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=universe-factory.net header.s=dkim header.b=PJb+TBoh;
	dmarc=pass (policy=reject) header.from=universe-factory.net;
	spf=pass (diktynna.open-mesh.org: domain of mschiffer@universe-factory.net
 designates 141.95.161.142 as permitted sender)
 smtp.mailfrom=mschiffer@universe-factory.net
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1747687630; a=rsa-sha256;
	cv=none;
	b=fFhc22wrjRJAGkgBu0tcLmZiTTU35VbguqSeMh9CZtdM6KSnFWqtNEwkw+anH4r1cvjLHG
	eSrmehpWBef3ejFSzaqE2SKlUlK4z6WLwWEV/UoGPj/56C0Bv1pDZo5sVgauzvkXpknZI9
	S5K4WBtoFtfUk0RQg2FOSQuTgSVQr28=
From: Matthias Schiffer <mschiffer@universe-factory.net>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=universe-factory.net;
	s=dkim; t=1747687624;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ZyLWWB7YfeF/QGdzEH0pR1JoVUVT39q+Nr/ihIBlmTU=;
	b=PJb+TBoh24tTtvbGcekC1HCI+flXMs6FLRU0QzzaIr9y5ty8NhTSW4y1g0eXR2Usongt1V
	yejsRtN/VJyBrAIPRb/1l688Qgx8j+EKl21+2xmHPvEzKf/EsbTnSMDB65+UCM8aBuE/lG
	fI9kRrfjrILUDxCqoVNMu5bDXX4H83AVzovzLJFwvqx5Br1BZumXzCglp/t3NDD16/jTT7
	t5vaiwWNlbEBgXgm1sWnsi/VeEPhN3L28T6PhBVLvMKDN6wS34X8NNhhw3PuFruTk90GrA
	CBggFABT6Fc/ayCFhsYTlWNIQxKPEXPvKR4PfIKnOXCR86uJdzxz0GUmhyte5g==
To: Marek Lindner <marek.lindner@mailbox.org>,
	Simon Wunderlich <sw@simonwunderlich.de>,
	Antonio Quartulli <antonio@mandelbit.com>,
	Sven Eckelmann <sven@narfation.org>
Cc: "David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Simon Horman <horms@kernel.org>,
	b.a.t.m.a.n@lists.open-mesh.org,
	netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Matthias Schiffer <mschiffer@universe-factory.net>
Subject: [PATCH batadv 2/5] batman-adv: only create hardif while a netdev is
 part of a mesh
Date: Mon, 19 May 2025 22:46:29 +0200
Message-ID: 
 <e311c7d643fa1a7d13f2b518f6ee525eb6711f6c.1747687504.git.mschiffer@universe-factory.net>
In-Reply-To: 
 <0b26554afea5203820faef1dfb498af7533a9b5d.1747687504.git.mschiffer@universe-factory.net>
References: 
 <0b26554afea5203820faef1dfb498af7533a9b5d.1747687504.git.mschiffer@universe-factory.net>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Bar: -----
Message-ID-Hash: M773LGU2OFP4QP3L3QBWFJIQQGV52OPV
X-Message-ID-Hash: M773LGU2OFP4QP3L3QBWFJIQQGV52OPV
X-MailFrom: mschiffer@universe-factory.net
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency;
 loop; banned-address; member-moderation;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-0;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-1;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-2; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.8
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/M773LGU2OFP4QP3L3QBWFJIQQGV52OPV/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

batman-adv has used netdevice notifiers to create a hardif struct for
every Ethernet-like netdev in the system, instead of just for netdevs
that are actually used for meshing.

This is inefficient in many ways: It requires maintaining a global list
of hardifs (as there is no other place to store the hardif associated
with a netdev), lookups in this list are O(n) in the total number of
interfaces, and the maintenance of this list results in just loading the
batman-adv module to cause a slowdown of certain netdev operations (for
example, deleting n Ethernet netdevs may take O(n^2) because for each
removal, the corresponding hardif needs to be looked up in the global
list).

As the next step towards removing the global list, only create a hardif
struct when an interface is added to a mesh, and destroy it on removal.
Parts of batadv_hardif_add_interface() are merged into
batadv_hardif_enable_interface(), and batadv_hardif_remove_interface()
can be dropped altogether.

Signed-off-by: Matthias Schiffer <mschiffer@universe-factory.net>
---
 net/batman-adv/hard-interface.c | 131 +++++++++++++-------------------
 net/batman-adv/hard-interface.h |   2 +-
 net/batman-adv/mesh-interface.c |  13 +---
 3 files changed, 53 insertions(+), 93 deletions(-)

diff --git a/net/batman-adv/hard-interface.c b/net/batman-adv/hard-interface.c
index bace57e4f9a5..7e8c08fbd049 100644
--- a/net/batman-adv/hard-interface.c
+++ b/net/batman-adv/hard-interface.c
@@ -694,32 +694,66 @@ batadv_hardif_deactivate_interface(struct batadv_hard_iface *hard_iface)
 }
 
 /**
- * batadv_hardif_enable_interface() - Enslave hard interface to mesh interface
- * @hard_iface: hard interface to add to mesh interface
+ * batadv_hardif_enable_interface() - Enslave interface to mesh interface
+ * @net_dev: netdev struct of the interface to add to mesh interface
  * @mesh_iface: netdev struct of the mesh interface
  *
- * Return: 0 on success or negative error number in case of failure
+ * Return: new hardif on success, NULL for unsupported device types or negative
+ *         error number in case of failure
  */
-int batadv_hardif_enable_interface(struct batadv_hard_iface *hard_iface,
+int batadv_hardif_enable_interface(struct net_device *net_dev,
 				   struct net_device *mesh_iface)
 {
 	struct batadv_priv *bat_priv;
 	__be16 ethertype = htons(ETH_P_BATMAN);
 	int max_header_len = batadv_max_header_len();
+	struct batadv_hard_iface *hard_iface;
 	unsigned int required_mtu;
 	unsigned int hardif_mtu;
 	int ret;
 
-	hardif_mtu = READ_ONCE(hard_iface->net_dev->mtu);
-	required_mtu = READ_ONCE(mesh_iface->mtu) + max_header_len;
+	ASSERT_RTNL();
 
-	if (hardif_mtu < ETH_MIN_MTU + max_header_len)
+	if (!batadv_is_valid_iface(net_dev))
 		return -EINVAL;
 
-	if (hard_iface->if_status != BATADV_IF_NOT_IN_USE)
-		goto out;
+	hard_iface = kzalloc(sizeof(*hard_iface), GFP_ATOMIC);
+	if (!hard_iface)
+		return -ENOMEM;
+
+	netdev_hold(net_dev, &hard_iface->dev_tracker, GFP_ATOMIC);
+	hard_iface->net_dev = net_dev;
+
+	hard_iface->mesh_iface = NULL;
+	hard_iface->if_status = BATADV_IF_INACTIVE;
+
+	INIT_LIST_HEAD(&hard_iface->list);
+	INIT_HLIST_HEAD(&hard_iface->neigh_list);
+
+	mutex_init(&hard_iface->bat_iv.ogm_buff_mutex);
+	spin_lock_init(&hard_iface->neigh_list_lock);
+	kref_init(&hard_iface->refcount);
+
+	hard_iface->num_bcasts = BATADV_NUM_BCASTS_DEFAULT;
+	hard_iface->wifi_flags = batadv_wifi_flags_evaluate(net_dev);
+	if (batadv_is_wifi_hardif(hard_iface))
+		hard_iface->num_bcasts = BATADV_NUM_BCASTS_WIRELESS;
+
+	atomic_set(&hard_iface->hop_penalty, 0);
+
+	batadv_v_hardif_init(hard_iface);
 
 	kref_get(&hard_iface->refcount);
+	list_add_tail_rcu(&hard_iface->list, &batadv_hardif_list);
+	batadv_hardif_generation++;
+
+	hardif_mtu = READ_ONCE(hard_iface->net_dev->mtu);
+	required_mtu = READ_ONCE(mesh_iface->mtu) + max_header_len;
+
+	if (hardif_mtu < ETH_MIN_MTU + max_header_len) {
+		ret = -EINVAL;
+		goto err_put;
+	}
 
 	netdev_hold(mesh_iface, &hard_iface->meshif_dev_tracker, GFP_ATOMIC);
 	hard_iface->mesh_iface = mesh_iface;
@@ -734,9 +768,6 @@ int batadv_hardif_enable_interface(struct batadv_hard_iface *hard_iface,
 	if (ret < 0)
 		goto err_upper;
 
-	hard_iface->if_status = BATADV_IF_INACTIVE;
-
-	kref_get(&hard_iface->refcount);
 	hard_iface->batman_adv_ptype.type = ethertype;
 	hard_iface->batman_adv_ptype.func = batadv_batman_skb_recv;
 	hard_iface->batman_adv_ptype.dev = hard_iface->net_dev;
@@ -773,7 +804,6 @@ int batadv_hardif_enable_interface(struct batadv_hard_iface *hard_iface,
 	if (bat_priv->algo_ops->iface.enabled)
 		bat_priv->algo_ops->iface.enabled(hard_iface);
 
-out:
 	return 0;
 
 err_upper:
@@ -781,6 +811,7 @@ int batadv_hardif_enable_interface(struct batadv_hard_iface *hard_iface,
 err_dev:
 	hard_iface->mesh_iface = NULL;
 	netdev_put(mesh_iface, &hard_iface->meshif_dev_tracker);
+err_put:
 	batadv_hardif_put(hard_iface);
 	return ret;
 }
@@ -818,11 +849,16 @@ void batadv_hardif_disable_interface(struct batadv_hard_iface *hard_iface)
 	struct batadv_priv *bat_priv = netdev_priv(hard_iface->mesh_iface);
 	struct batadv_hard_iface *primary_if = NULL;
 
+	ASSERT_RTNL();
+
 	batadv_hardif_deactivate_interface(hard_iface);
 
 	if (hard_iface->if_status != BATADV_IF_INACTIVE)
 		goto out;
 
+	list_del_rcu(&hard_iface->list);
+	batadv_hardif_generation++;
+
 	batadv_info(hard_iface->mesh_iface, "Removing interface: %s\n",
 		    hard_iface->net_dev->name);
 	dev_remove_pack(&hard_iface->batman_adv_ptype);
@@ -839,7 +875,7 @@ void batadv_hardif_disable_interface(struct batadv_hard_iface *hard_iface)
 	}
 
 	bat_priv->algo_ops->iface.disable(hard_iface);
-	hard_iface->if_status = BATADV_IF_NOT_IN_USE;
+	hard_iface->if_status = BATADV_IF_TO_BE_REMOVED;
 
 	/* delete all references to this hard_iface */
 	batadv_purge_orig_ref(bat_priv);
@@ -860,64 +896,6 @@ void batadv_hardif_disable_interface(struct batadv_hard_iface *hard_iface)
 	batadv_hardif_put(primary_if);
 }
 
-static struct batadv_hard_iface *
-batadv_hardif_add_interface(struct net_device *net_dev)
-{
-	struct batadv_hard_iface *hard_iface;
-
-	ASSERT_RTNL();
-
-	if (!batadv_is_valid_iface(net_dev))
-		return NULL;
-
-	hard_iface = kzalloc(sizeof(*hard_iface), GFP_ATOMIC);
-	if (!hard_iface)
-		return NULL;
-
-	netdev_hold(net_dev, &hard_iface->dev_tracker, GFP_ATOMIC);
-	hard_iface->net_dev = net_dev;
-
-	hard_iface->mesh_iface = NULL;
-	hard_iface->if_status = BATADV_IF_NOT_IN_USE;
-
-	INIT_LIST_HEAD(&hard_iface->list);
-	INIT_HLIST_HEAD(&hard_iface->neigh_list);
-
-	mutex_init(&hard_iface->bat_iv.ogm_buff_mutex);
-	spin_lock_init(&hard_iface->neigh_list_lock);
-	kref_init(&hard_iface->refcount);
-
-	hard_iface->num_bcasts = BATADV_NUM_BCASTS_DEFAULT;
-	hard_iface->wifi_flags = batadv_wifi_flags_evaluate(net_dev);
-	if (batadv_is_wifi_hardif(hard_iface))
-		hard_iface->num_bcasts = BATADV_NUM_BCASTS_WIRELESS;
-
-	atomic_set(&hard_iface->hop_penalty, 0);
-
-	batadv_v_hardif_init(hard_iface);
-
-	kref_get(&hard_iface->refcount);
-	list_add_tail_rcu(&hard_iface->list, &batadv_hardif_list);
-	batadv_hardif_generation++;
-
-	return hard_iface;
-}
-
-static void batadv_hardif_remove_interface(struct batadv_hard_iface *hard_iface)
-{
-	ASSERT_RTNL();
-
-	/* first deactivate interface */
-	if (hard_iface->if_status != BATADV_IF_NOT_IN_USE)
-		batadv_hardif_disable_interface(hard_iface);
-
-	if (hard_iface->if_status != BATADV_IF_NOT_IN_USE)
-		return;
-
-	hard_iface->if_status = BATADV_IF_TO_BE_REMOVED;
-	batadv_hardif_put(hard_iface);
-}
-
 /**
  * batadv_hard_if_event_meshif() - Handle events for mesh interfaces
  * @event: NETDEV_* event to handle
@@ -952,10 +930,6 @@ static int batadv_hard_if_event(struct notifier_block *this,
 		return batadv_hard_if_event_meshif(event, net_dev);
 
 	hard_iface = batadv_hardif_get_by_netdev(net_dev);
-	if (!hard_iface && (event == NETDEV_REGISTER ||
-			    event == NETDEV_POST_TYPE_CHANGE))
-		hard_iface = batadv_hardif_add_interface(net_dev);
-
 	if (!hard_iface)
 		goto out;
 
@@ -969,10 +943,7 @@ static int batadv_hard_if_event(struct notifier_block *this,
 		break;
 	case NETDEV_UNREGISTER:
 	case NETDEV_PRE_TYPE_CHANGE:
-		list_del_rcu(&hard_iface->list);
-		batadv_hardif_generation++;
-
-		batadv_hardif_remove_interface(hard_iface);
+		batadv_hardif_disable_interface(hard_iface);
 		break;
 	case NETDEV_CHANGEMTU:
 		if (hard_iface->mesh_iface)
diff --git a/net/batman-adv/hard-interface.h b/net/batman-adv/hard-interface.h
index 262a78364742..ebde3d5077a4 100644
--- a/net/batman-adv/hard-interface.h
+++ b/net/batman-adv/hard-interface.h
@@ -73,7 +73,7 @@ bool batadv_is_cfg80211_hardif(struct batadv_hard_iface *hard_iface);
 bool batadv_is_wifi_hardif(struct batadv_hard_iface *hard_iface);
 struct batadv_hard_iface*
 batadv_hardif_get_by_netdev(const struct net_device *net_dev);
-int batadv_hardif_enable_interface(struct batadv_hard_iface *hard_iface,
+int batadv_hardif_enable_interface(struct net_device *net_dev,
 				   struct net_device *mesh_iface);
 void batadv_hardif_disable_interface(struct batadv_hard_iface *hard_iface);
 int batadv_hardif_min_mtu(struct net_device *mesh_iface);
diff --git a/net/batman-adv/mesh-interface.c b/net/batman-adv/mesh-interface.c
index 5872818f4e31..860c5af5752a 100644
--- a/net/batman-adv/mesh-interface.c
+++ b/net/batman-adv/mesh-interface.c
@@ -835,18 +835,7 @@ static int batadv_meshif_slave_add(struct net_device *dev,
 				   struct net_device *slave_dev,
 				   struct netlink_ext_ack *extack)
 {
-	struct batadv_hard_iface *hard_iface;
-	int ret = -EINVAL;
-
-	hard_iface = batadv_hardif_get_by_netdev(slave_dev);
-	if (!hard_iface || hard_iface->mesh_iface)
-		goto out;
-
-	ret = batadv_hardif_enable_interface(hard_iface, dev);
-
-out:
-	batadv_hardif_put(hard_iface);
-	return ret;
+	return batadv_hardif_enable_interface(slave_dev, dev);
 }
 
 /**
-- 
2.49.0

