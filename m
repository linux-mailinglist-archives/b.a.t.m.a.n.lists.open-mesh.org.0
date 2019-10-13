Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [78.46.248.236])
	by mail.lfdr.de (Postfix) with ESMTPS id 44DD5D579F
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 13 Oct 2019 21:13:04 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id A780E807CE;
	Sun, 13 Oct 2019 21:12:48 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
 by open-mesh.org (Postfix) with ESMTPS id B6B5180049
 for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 13 Oct 2019 21:12:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
 s=20121; t=1570993457;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Rt8KZpzPjawzkHWyH6Ws7kj7Svcr8epO/xdxfLioKLU=;
 b=a65kyld3Jrc50iei1fWKuiIlk+G+zhTYQOr0ZW5IzxHHJCCT8d3s49957K7GLOcZfUzulg
 bnRu/XpAGhs0rgY4zT7jRZEt5qrwBKDiyPQ+/jxsvg7Up1TfsWXoXkxt2Als8+Jc55U9FX
 wAMFEO52U3GMXoaB7QMxHZN4GojwF5g=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: [PATCH maint 2/2] batman-adv: Avoid OGM workqueue synchronous cancel
 deadlock
Date: Sun, 13 Oct 2019 21:03:07 +0200
Message-Id: <20191013190307.11796-2-sven@narfation.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191013190307.11796-1-sven@narfation.org>
References: <20191013190307.11796-1-sven@narfation.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1570993956;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:dkim-signature;
 bh=Rt8KZpzPjawzkHWyH6Ws7kj7Svcr8epO/xdxfLioKLU=;
 b=VRHTP16bISZzYeLjVDrD+H2N/v6C3q7DNBH1BK2HBY4AziwCOQTiaw+2+oKlLEnyw/z4Kk
 5K86Nkv84I37EA6Svfw1DaucsbQWP4orIh4feJckmWx1dhg60dDSkzNu34QkegqNAwZ5ha
 8szzu0blPlna/7u1hiwhdtYjR5kHmMI=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1570993956; a=rsa-sha256; cv=none;
 b=ZbxGJGBUOLEmns0bKVJ5n47C+BkKUKdZcRGgqIo0im2Q0Xmf7mZJABcnzAlOZi9IyXreTl
 qEGbaejuDTAEww44Khu6BpVXz1X1WRK4QDuR4AnggkUlldgrBBt9MzELbmbHBMcc77ZgVm
 5TiCMIou9LJxX5bk50EmdigyzE2pGOQ=
ARC-Authentication-Results: i=1; open-mesh.org;
 dkim=pass header.d=narfation.org header.s=20121 header.b=a65kyld3;
 spf=pass (open-mesh.org: domain of sven@narfation.org designates 213.160.73.56
 as permitted sender) smtp.mailfrom=sven@narfation.org
X-BeenThere: b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
List-Unsubscribe: <https://lists.open-mesh.org/mm/options/b.a.t.m.a.n>,
 <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=unsubscribe>
List-Archive: <http://lists.open-mesh.org/pipermail/b.a.t.m.a.n/>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Subscribe: <https://lists.open-mesh.org/mm/listinfo/b.a.t.m.a.n>,
 <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=subscribe>
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n@lists.open-mesh.org>
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

batadv_forw_packet_list_free can be called when an interface is being
disabled. Under this circumstance, the rntl_lock will be held and while it
calls cancel_delayed_work_sync.

cancel_delayed_work_sync will stop the execution of the current context
when the work item is currently processed. It can now happen that the
cancel_delayed_work_sync was called when rtnl_lock was already called in
batadv_iv_send_outstanding_bat_ogm_packet or when it was in the process of
calling it. In this case, batadv_iv_send_outstanding_bat_ogm_packet waits
for the lock and cancel_delayed_work_sync (which holds the rtnl_lock) is
waiting for batadv_iv_send_outstanding_bat_ogm_packet to finish.

This can only be avoided by not using (conflicting) blocking locks while
cancel_delayed_work_sync is called. It also has the benefit that the
ogm scheduling functionality can avoid unnecessary delays which can be
introduced by a global lock.

Fixes: 9b8ceef26c69 ("batman-adv: Avoid free/alloc race when handling OGM buffer")
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 net/batman-adv/bat_iv_ogm.c     | 86 +++++++++++++++++++++------------
 net/batman-adv/hard-interface.c |  2 +
 net/batman-adv/types.h          |  7 ++-
 3 files changed, 61 insertions(+), 34 deletions(-)

diff --git a/net/batman-adv/bat_iv_ogm.c b/net/batman-adv/bat_iv_ogm.c
index e20c3813..5b0b20e6 100644
--- a/net/batman-adv/bat_iv_ogm.c
+++ b/net/batman-adv/bat_iv_ogm.c
@@ -22,6 +22,8 @@
 #include <linux/kernel.h>
 #include <linux/kref.h>
 #include <linux/list.h>
+#include <linux/lockdep.h>
+#include <linux/mutex.h>
 #include <linux/netdevice.h>
 #include <linux/netlink.h>
 #include <linux/pkt_sched.h>
@@ -29,7 +31,6 @@
 #include <linux/random.h>
 #include <linux/rculist.h>
 #include <linux/rcupdate.h>
-#include <linux/rtnetlink.h>
 #include <linux/seq_file.h>
 #include <linux/skbuff.h>
 #include <linux/slab.h>
@@ -194,7 +195,7 @@ static int batadv_iv_ogm_iface_enable(struct batadv_hard_iface *hard_iface)
 	unsigned char *ogm_buff;
 	u32 random_seqno;
 
-	ASSERT_RTNL();
+	mutex_lock(&hard_iface->bat_iv.ogm_buff_mutex);
 
 	/* randomize initial seqno to avoid collision */
 	get_random_bytes(&random_seqno, sizeof(random_seqno));
@@ -202,8 +203,10 @@ static int batadv_iv_ogm_iface_enable(struct batadv_hard_iface *hard_iface)
 
 	hard_iface->bat_iv.ogm_buff_len = BATADV_OGM_HLEN;
 	ogm_buff = kmalloc(hard_iface->bat_iv.ogm_buff_len, GFP_ATOMIC);
-	if (!ogm_buff)
+	if (!ogm_buff) {
+		mutex_unlock(&hard_iface->bat_iv.ogm_buff_mutex);
 		return -ENOMEM;
+	}
 
 	hard_iface->bat_iv.ogm_buff = ogm_buff;
 
@@ -215,41 +218,59 @@ static int batadv_iv_ogm_iface_enable(struct batadv_hard_iface *hard_iface)
 	batadv_ogm_packet->reserved = 0;
 	batadv_ogm_packet->tq = BATADV_TQ_MAX_VALUE;
 
+	mutex_unlock(&hard_iface->bat_iv.ogm_buff_mutex);
+
 	return 0;
 }
 
 static void batadv_iv_ogm_iface_disable(struct batadv_hard_iface *hard_iface)
 {
-	ASSERT_RTNL();
+	mutex_lock(&hard_iface->bat_iv.ogm_buff_mutex);
 
 	kfree(hard_iface->bat_iv.ogm_buff);
 	hard_iface->bat_iv.ogm_buff = NULL;
+
+	mutex_unlock(&hard_iface->bat_iv.ogm_buff_mutex);
 }
 
 static void batadv_iv_ogm_iface_update_mac(struct batadv_hard_iface *hard_iface)
 {
 	struct batadv_ogm_packet *batadv_ogm_packet;
-	unsigned char *ogm_buff = hard_iface->bat_iv.ogm_buff;
+	void *ogm_buff;
 
-	ASSERT_RTNL();
+	mutex_lock(&hard_iface->bat_iv.ogm_buff_mutex);
 
-	batadv_ogm_packet = (struct batadv_ogm_packet *)ogm_buff;
+	ogm_buff = hard_iface->bat_iv.ogm_buff;
+	if (!ogm_buff)
+		goto unlock;
+
+	batadv_ogm_packet = ogm_buff;
 	ether_addr_copy(batadv_ogm_packet->orig,
 			hard_iface->net_dev->dev_addr);
 	ether_addr_copy(batadv_ogm_packet->prev_sender,
 			hard_iface->net_dev->dev_addr);
+
+unlock:
+	mutex_unlock(&hard_iface->bat_iv.ogm_buff_mutex);
 }
 
 static void
 batadv_iv_ogm_primary_iface_set(struct batadv_hard_iface *hard_iface)
 {
 	struct batadv_ogm_packet *batadv_ogm_packet;
-	unsigned char *ogm_buff = hard_iface->bat_iv.ogm_buff;
+	void *ogm_buff;
 
-	ASSERT_RTNL();
+	mutex_lock(&hard_iface->bat_iv.ogm_buff_mutex);
 
-	batadv_ogm_packet = (struct batadv_ogm_packet *)ogm_buff;
+	ogm_buff = hard_iface->bat_iv.ogm_buff;
+	if (!ogm_buff)
+		goto unlock;
+
+	batadv_ogm_packet = ogm_buff;
 	batadv_ogm_packet->ttl = BATADV_TTL;
+
+unlock:
+	mutex_unlock(&hard_iface->bat_iv.ogm_buff_mutex);
 }
 
 /* when do we schedule our own ogm to be sent */
@@ -751,7 +772,11 @@ batadv_iv_ogm_slide_own_bcast_window(struct batadv_hard_iface *hard_iface)
 	}
 }
 
-static void batadv_iv_ogm_schedule(struct batadv_hard_iface *hard_iface)
+/**
+ * batadv_iv_ogm_schedule_buff() - schedule submission of hardif ogm buffer
+ * @hard_iface: interface whose ogm buffer should be transmitted
+ */
+static void batadv_iv_ogm_schedule_buff(struct batadv_hard_iface *hard_iface)
 {
 	struct batadv_priv *bat_priv = netdev_priv(hard_iface->soft_iface);
 	unsigned char **ogm_buff = &hard_iface->bat_iv.ogm_buff;
@@ -762,11 +787,7 @@ static void batadv_iv_ogm_schedule(struct batadv_hard_iface *hard_iface)
 	u16 tvlv_len = 0;
 	unsigned long send_time;
 
-	ASSERT_RTNL();
-
-	if (hard_iface->if_status == BATADV_IF_NOT_IN_USE ||
-	    hard_iface->if_status == BATADV_IF_TO_BE_REMOVED)
-		return;
+	lockdep_assert_held(&hard_iface->bat_iv.ogm_buff_mutex);
 
 	/* the interface gets activated here to avoid race conditions between
 	 * the moment of activating the interface in
@@ -834,6 +855,17 @@ static void batadv_iv_ogm_schedule(struct batadv_hard_iface *hard_iface)
 		batadv_hardif_put(primary_if);
 }
 
+static void batadv_iv_ogm_schedule(struct batadv_hard_iface *hard_iface)
+{
+	if (hard_iface->if_status == BATADV_IF_NOT_IN_USE ||
+	    hard_iface->if_status == BATADV_IF_TO_BE_REMOVED)
+		return;
+
+	mutex_lock(&hard_iface->bat_iv.ogm_buff_mutex);
+	batadv_iv_ogm_schedule_buff(hard_iface);
+	mutex_unlock(&hard_iface->bat_iv.ogm_buff_mutex);
+}
+
 /**
  * batadv_iv_orig_ifinfo_sum() - Get bcast_own sum for originator over iterface
  * @orig_node: originator which reproadcasted the OGMs directly
@@ -1654,12 +1686,16 @@ static void batadv_iv_ogm_process(const struct sk_buff *skb, int ogm_offset,
 	batadv_orig_node_put(orig_node);
 }
 
-static void
-batadv_iv_send_outstanding_forw_packet(struct batadv_forw_packet *forw_packet)
+static void batadv_iv_send_outstanding_bat_ogm_packet(struct work_struct *work)
 {
+	struct delayed_work *delayed_work;
+	struct batadv_forw_packet *forw_packet;
 	struct batadv_priv *bat_priv;
 	bool dropped = false;
 
+	delayed_work = to_delayed_work(work);
+	forw_packet = container_of(delayed_work, struct batadv_forw_packet,
+				   delayed_work);
 	bat_priv = netdev_priv(forw_packet->if_incoming->soft_iface);
 
 	if (atomic_read(&bat_priv->mesh_state) == BATADV_MESH_DEACTIVATING) {
@@ -1688,20 +1724,6 @@ batadv_iv_send_outstanding_forw_packet(struct batadv_forw_packet *forw_packet)
 		batadv_forw_packet_free(forw_packet, dropped);
 }
 
-static void batadv_iv_send_outstanding_bat_ogm_packet(struct work_struct *work)
-{
-	struct delayed_work *delayed_work;
-	struct batadv_forw_packet *forw_packet;
-
-	delayed_work = to_delayed_work(work);
-	forw_packet = container_of(delayed_work, struct batadv_forw_packet,
-				   delayed_work);
-
-	rtnl_lock();
-	batadv_iv_send_outstanding_forw_packet(forw_packet);
-	rtnl_unlock();
-}
-
 static int batadv_iv_ogm_receive(struct sk_buff *skb,
 				 struct batadv_hard_iface *if_incoming)
 {
diff --git a/net/batman-adv/hard-interface.c b/net/batman-adv/hard-interface.c
index c90e4734..afb52282 100644
--- a/net/batman-adv/hard-interface.c
+++ b/net/batman-adv/hard-interface.c
@@ -18,6 +18,7 @@
 #include <linux/kref.h>
 #include <linux/limits.h>
 #include <linux/list.h>
+#include <linux/mutex.h>
 #include <linux/netdevice.h>
 #include <linux/printk.h>
 #include <linux/rculist.h>
@@ -929,6 +930,7 @@ batadv_hardif_add_interface(struct net_device *net_dev)
 	INIT_LIST_HEAD(&hard_iface->list);
 	INIT_HLIST_HEAD(&hard_iface->neigh_list);
 
+	mutex_init(&hard_iface->bat_iv.ogm_buff_mutex);
 	spin_lock_init(&hard_iface->neigh_list_lock);
 	kref_init(&hard_iface->refcount);
 
diff --git a/net/batman-adv/types.h b/net/batman-adv/types.h
index eded9167..aa038b91 100644
--- a/net/batman-adv/types.h
+++ b/net/batman-adv/types.h
@@ -74,14 +74,17 @@ enum batadv_dhcp_recipient {
  * struct batadv_hard_iface_bat_iv - per hard-interface B.A.T.M.A.N. IV data
  */
 struct batadv_hard_iface_bat_iv {
-	/** @ogm_buff: buffer holding the OGM packet. rtnl protected */
+	/** @ogm_buff: buffer holding the OGM packet */
 	unsigned char *ogm_buff;
 
-	/** @ogm_buff_len: length of the OGM packet buffer. rtnl protected */
+	/** @ogm_buff_len: length of the OGM packet buffer */
 	int ogm_buff_len;
 
 	/** @ogm_seqno: OGM sequence number - used to identify each OGM */
 	atomic_t ogm_seqno;
+
+	/** @ogm_buff_mutex: lock protecting ogm_buff and ogm_buff_len */
+	struct mutex ogm_buff_mutex;
 };
 
 /**
-- 
2.20.1

