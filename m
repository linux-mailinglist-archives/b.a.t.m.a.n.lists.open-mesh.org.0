Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [IPv6:2a01:4f8:141:3341:78:46:248:236])
	by mail.lfdr.de (Postfix) with ESMTPS id 29FB780944
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun,  4 Aug 2019 06:29:37 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 0A33781624;
	Sun,  4 Aug 2019 06:29:24 +0200 (CEST)
Received: from mail.aperture-lab.de (mail.aperture-lab.de [138.201.29.205])
 by open-mesh.org (Postfix) with ESMTPS id 8445A8051C
 for <b.a.t.m.a.n@lists.open-mesh.org>; Sun,  4 Aug 2019 06:29:10 +0200 (CEST)
From: =?UTF-8?q?Linus=20L=C3=BCssing?= <linus.luessing@c0d3.blue>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c0d3.blue; s=2018;
 t=1564892950;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=YWX+1ZflgJ563xuHJUKREEzcMWQJ90p8LBH1UZHLw3k=;
 b=p49lNhyZ48TFIVfouAYeNUldmICWo2teVnhI6Fj4uj+OIKcz6U01cYm9UEIfIghn6bK1lE
 Y1I65QdkD1/7EBq+qIDXkdeNGTWEUUn5gPyTPu9AuDi+C2debQNHDewZEUGxeUP77SYVQo
 vJNO+thqKm7PA9qhwmUkBhZWp0dVnP1007R/Zj1EEoeti9Zo21vSSHEK3bC1ZYIO7ttZLd
 onKZUNLQExqhWhINb2QiYz25+I2uCRrXEqJ3UhL3FG9QCqhdx+9o+TH8PGA4uzA2fObg2I
 gvm7cT6ZQ7UUz5nq+EWdGF8cMAjQYYNcCLgtGYCXWsAITtxhUXIIt7+JthhnSA==
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: [PATCH 1/2] batman-adv: BATMAN_V: introduce per hard-iface OGMv2
 queues
Date: Sun,  4 Aug 2019 06:28:54 +0200
Message-Id: <20190804042855.29327-2-linus.luessing@c0d3.blue>
In-Reply-To: <20190804042855.29327-1-linus.luessing@c0d3.blue>
References: <20190804042855.29327-1-linus.luessing@c0d3.blue>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=c0d3.blue;
 s=2018; t=1564892950;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=YWX+1ZflgJ563xuHJUKREEzcMWQJ90p8LBH1UZHLw3k=;
 b=aMWS/fsuxzNQgALSPlXSEs8TY7BMOy0M7snLKCBpeAM6hnWrCuM0Mmlor4qfyS4WGSKl0C
 gTCHVstB0mUAus/OlRqVoX1OLw82S037C8EgR8WfR5b9dA4ZLaZXwYJTxZkJ8nOCqxbmRS
 uit5Ptpl+XuT/gjbeP+lzCtA677d2c8ar4NdGwe5fvhnBgYdMq+M0VHKyABLjJjQAGf/LT
 CmCSudoguBOJZ+WqKErOY2bRw9PLp8IIKFSVJuXICLcGWOdMgpj8dVjiKy98GlWO5hP4II
 rcl43tLPp7/ljH5aYrrJbYlH5g5oC5GqlbvPugsAnJ6FddoWovFjCksmU7r00w==
ARC-Seal: i=1; s=2018; d=c0d3.blue; t=1564892950; a=rsa-sha256; cv=none;
 b=W/LhcX+FK+eFg7jTi2yihzIejzUAq3DhjxghuLbSVDx14L2s+Y8alSjXnAeMRYnrCZ+nzw
 DQzjPo7aJJi+n1q3rHJyBfhTKli8NvFFwdrj6H71rBjRVNOTbnUfzOffPvLRmOCRz4o7f/
 dqTG8IArK2LDuRJY1f3ZI5lTFaPmFYimpA2XnGS/cOJgYktup12wGZnVHp9mcgC+s3uln0
 u6IzBcWAWp0N920Q4RUzwCelfCv0aaHktxsGb3PKZPRiqz6AFTJ4eYhI01orP0FhzNC6jh
 16/onpfYYTsl75/BulyQbntYzHjcY4MSkxlIoA5romzV/aVGlRCIVMrzcyYbBQ==
ARC-Authentication-Results: i=1; ORIGINATING;
 auth=pass smtp.auth=linus.luessing@c0d3.blue
 smtp.mailfrom=linus.luessing@c0d3.blue
Authentication-Results: ORIGINATING;
 auth=pass smtp.auth=linus.luessing@c0d3.blue
 smtp.mailfrom=linus.luessing@c0d3.blue
X-BeenThere: b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 2.1.23
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

In preparation for the OGMv2 packet aggregation, hold OGMv2 packets for
up to BATADV_MAX_AGGREGATION_MS milliseconds (100ms) on per
hard-interface queues, before transmitting.

This allows us to later squash multiple OGMs into a single frame
and transmission for reduced overhead.

Signed-off-by: Linus Lüssing <linus.luessing@c0d3.blue>
---
 net/batman-adv/bat_v.c     |   7 ++
 net/batman-adv/bat_v_ogm.c | 141 ++++++++++++++++++++++++++++++++++++-
 net/batman-adv/bat_v_ogm.h |   2 +
 net/batman-adv/types.h     |  14 ++++
 4 files changed, 162 insertions(+), 2 deletions(-)

diff --git a/net/batman-adv/bat_v.c b/net/batman-adv/bat_v.c
index 22672cb3..64054edc 100644
--- a/net/batman-adv/bat_v.c
+++ b/net/batman-adv/bat_v.c
@@ -79,6 +79,7 @@ static int batadv_v_iface_enable(struct batadv_hard_iface *hard_iface)
 
 static void batadv_v_iface_disable(struct batadv_hard_iface *hard_iface)
 {
+	batadv_v_ogm_iface_disable(hard_iface);
 	batadv_v_elp_iface_disable(hard_iface);
 }
 
@@ -1081,6 +1082,12 @@ void batadv_v_hardif_init(struct batadv_hard_iface *hard_iface)
 	 */
 	atomic_set(&hard_iface->bat_v.throughput_override, 0);
 	atomic_set(&hard_iface->bat_v.elp_interval, 500);
+
+	hard_iface->bat_v.aggr_len = 0;
+	skb_queue_head_init(&hard_iface->bat_v.aggr_list);
+	spin_lock_init(&hard_iface->bat_v.aggr_list_lock);
+	INIT_DELAYED_WORK(&hard_iface->bat_v.aggr_wq,
+			  batadv_v_ogm_aggr_work);
 }
 
 /**
diff --git a/net/batman-adv/bat_v_ogm.c b/net/batman-adv/bat_v_ogm.c
index fad95ef6..36f78889 100644
--- a/net/batman-adv/bat_v_ogm.c
+++ b/net/batman-adv/bat_v_ogm.c
@@ -76,6 +76,20 @@ struct batadv_orig_node *batadv_v_ogm_orig_get(struct batadv_priv *bat_priv,
 	return orig_node;
 }
 
+/**
+ * batadv_v_ogm_start_queue_timer() - restart the OGM aggregation timer
+ * @hard_iface: the interface to use to send the OGM
+ */
+static void batadv_v_ogm_start_queue_timer(struct batadv_hard_iface *hard_iface)
+{
+	unsigned int msecs = BATADV_MAX_AGGREGATION_MS * 1000;
+
+	/* msecs * [0.9, 1.1] */
+	msecs += prandom_u32() % (msecs / 5) - (msecs / 10);
+	queue_delayed_work(batadv_event_workqueue, &hard_iface->bat_v.aggr_wq,
+			   msecs_to_jiffies(msecs / 1000));
+}
+
 /**
  * batadv_v_ogm_start_timer() - restart the OGM sending timer
  * @bat_priv: the bat priv with all the soft interface information
@@ -115,6 +129,92 @@ static void batadv_v_ogm_send_to_if(struct sk_buff *skb,
 	batadv_send_broadcast_skb(skb, hard_iface);
 }
 
+/**
+ * batadv_v_ogm_len() - OGMv2 packet length
+ * @skb: the OGM to check
+ *
+ * Return: Length of the given OGMv2 packet, including tvlv length, excluding
+ * ethernet frame length.
+ */
+static inline unsigned int batadv_v_ogm_len(struct sk_buff *skb)
+{
+	struct batadv_ogm2_packet *ogm_packet;
+
+	ogm_packet = (struct batadv_ogm2_packet *)skb->data;
+	return BATADV_OGM2_HLEN + ntohs(ogm_packet->tvlv_len);
+}
+
+/**
+ * batadv_v_ogm_queue_left() - check if given OGM still fits aggregation queue
+ * @skb: the OGM to check
+ * @hard_iface: the interface to use to send the OGM
+ *
+ * Return: True, if the given OGMv2 packet still fits, false otherwise.
+ */
+static bool batadv_v_ogm_queue_left(struct sk_buff *skb,
+				    struct batadv_hard_iface *hard_iface)
+{
+	unsigned int max = min_t(unsigned int, hard_iface->net_dev->mtu,
+			   BATADV_MAX_AGGREGATION_BYTES);
+	unsigned int ogm_len = batadv_v_ogm_len(skb);
+
+	return hard_iface->bat_v.aggr_len + ogm_len <= max;
+}
+
+/**
+ * batadv_v_ogm_aggr_list_free - free all elements in an skb queue
+ * @head: the skb queue to empty
+ *
+ * Empties an skb queue and frees all the skbs it contained.
+ */
+static void batadv_v_ogm_aggr_list_free(struct batadv_hard_iface *hard_iface)
+{
+	struct sk_buff *skb;
+
+	while ((skb = skb_dequeue(&hard_iface->bat_v.aggr_list)))
+		kfree_skb(skb);
+
+	hard_iface->bat_v.aggr_len = 0;
+}
+
+/**
+ * batadv_v_ogm_aggr_send() - flush & send aggregation queue
+ * @hard_iface: the interface with the aggregation queue to flush
+ */
+static void batadv_v_ogm_aggr_send(struct batadv_hard_iface *hard_iface)
+{
+	struct sk_buff *skb;
+
+	while ((skb = skb_dequeue(&hard_iface->bat_v.aggr_list))) {
+		hard_iface->bat_v.aggr_len -= batadv_v_ogm_len(skb);
+		batadv_v_ogm_send_to_if(skb, hard_iface);
+	}
+}
+
+/**
+ * batadv_v_ogm_queue_on_if() - queue a batman ogm on a given interface
+ * @skb: the OGM to queue
+ * @hard_iface: the interface to queue the OGM on
+ */
+static void batadv_v_ogm_queue_on_if(struct sk_buff *skb,
+				     struct batadv_hard_iface *hard_iface)
+{
+	struct batadv_priv *bat_priv = netdev_priv(hard_iface->soft_iface);
+
+	if (!atomic_read(&bat_priv->aggregated_ogms)) {
+		batadv_v_ogm_send_to_if(skb, hard_iface);
+		return;
+	}
+
+	spin_lock_bh(&hard_iface->bat_v.aggr_list_lock);
+	if (!batadv_v_ogm_queue_left(skb, hard_iface))
+		batadv_v_ogm_aggr_send(hard_iface);
+
+	hard_iface->bat_v.aggr_len += batadv_v_ogm_len(skb);
+	skb_queue_tail(&hard_iface->bat_v.aggr_list, skb);
+	spin_unlock_bh(&hard_iface->bat_v.aggr_list_lock);
+}
+
 /**
  * batadv_v_ogm_send() - periodic worker broadcasting the own OGM
  * @work: work queue item
@@ -210,7 +310,7 @@ static void batadv_v_ogm_send(struct work_struct *work)
 			break;
 		}
 
-		batadv_v_ogm_send_to_if(skb_tmp, hard_iface);
+		batadv_v_ogm_queue_on_if(skb_tmp, hard_iface);
 		batadv_hardif_put(hard_iface);
 	}
 	rcu_read_unlock();
@@ -223,6 +323,29 @@ static void batadv_v_ogm_send(struct work_struct *work)
 	return;
 }
 
+/**
+ * batadv_v_ogm_aggr_work() - OGM queue periodic task per interface
+ * @work: work queue item
+ *
+ * Emits aggregated OGM message in regular intervals.
+ */
+void batadv_v_ogm_aggr_work(struct work_struct *work)
+{
+	struct batadv_hard_iface_bat_v *batv;
+	struct batadv_hard_iface *hard_iface;
+	struct batadv_priv *bat_priv;
+
+	batv = container_of(work, struct batadv_hard_iface_bat_v, aggr_wq.work);
+	hard_iface = container_of(batv, struct batadv_hard_iface, bat_v);
+	bat_priv = netdev_priv(hard_iface->soft_iface);
+
+	spin_lock_bh(&hard_iface->bat_v.aggr_list_lock);
+	batadv_v_ogm_aggr_send(hard_iface);
+	spin_unlock_bh(&hard_iface->bat_v.aggr_list_lock);
+
+	batadv_v_ogm_start_queue_timer(hard_iface);
+}
+
 /**
  * batadv_v_ogm_iface_enable() - prepare an interface for B.A.T.M.A.N. V
  * @hard_iface: the interface to prepare
@@ -235,11 +358,25 @@ int batadv_v_ogm_iface_enable(struct batadv_hard_iface *hard_iface)
 {
 	struct batadv_priv *bat_priv = netdev_priv(hard_iface->soft_iface);
 
+	batadv_v_ogm_start_queue_timer(hard_iface);
 	batadv_v_ogm_start_timer(bat_priv);
 
 	return 0;
 }
 
+/**
+ * batadv_v_ogm_iface_disable() - release OGM interface private resources
+ * @hard_iface: interface for which the resources have to be released
+ */
+void batadv_v_ogm_iface_disable(struct batadv_hard_iface *hard_iface)
+{
+	cancel_delayed_work_sync(&hard_iface->bat_v.aggr_wq);
+
+	spin_lock_bh(&hard_iface->bat_v.aggr_list_lock);
+	batadv_v_ogm_aggr_list_free(hard_iface);
+	spin_unlock_bh(&hard_iface->bat_v.aggr_list_lock);
+}
+
 /**
  * batadv_v_ogm_primary_iface_set() - set a new primary interface
  * @primary_iface: the new primary interface
@@ -382,7 +519,7 @@ static void batadv_v_ogm_forward(struct batadv_priv *bat_priv,
 		   if_outgoing->net_dev->name, ntohl(ogm_forward->throughput),
 		   ogm_forward->ttl, if_incoming->net_dev->name);
 
-	batadv_v_ogm_send_to_if(skb, if_outgoing);
+	batadv_v_ogm_queue_on_if(skb, if_outgoing);
 
 out:
 	if (orig_ifinfo)
diff --git a/net/batman-adv/bat_v_ogm.h b/net/batman-adv/bat_v_ogm.h
index 2a50df7f..807c2516 100644
--- a/net/batman-adv/bat_v_ogm.h
+++ b/net/batman-adv/bat_v_ogm.h
@@ -14,7 +14,9 @@
 
 int batadv_v_ogm_init(struct batadv_priv *bat_priv);
 void batadv_v_ogm_free(struct batadv_priv *bat_priv);
+void batadv_v_ogm_aggr_work(struct work_struct *work);
 int batadv_v_ogm_iface_enable(struct batadv_hard_iface *hard_iface);
+void batadv_v_ogm_iface_disable(struct batadv_hard_iface *hard_iface);
 struct batadv_orig_node *batadv_v_ogm_orig_get(struct batadv_priv *bat_priv,
 					       const u8 *addr);
 void batadv_v_ogm_primary_iface_set(struct batadv_hard_iface *primary_iface);
diff --git a/net/batman-adv/types.h b/net/batman-adv/types.h
index 6ae139d7..a68be4c3 100644
--- a/net/batman-adv/types.h
+++ b/net/batman-adv/types.h
@@ -117,6 +117,20 @@ struct batadv_hard_iface_bat_v {
 	/** @elp_wq: workqueue used to schedule ELP transmissions */
 	struct delayed_work elp_wq;
 
+	/** @aggr_wq: workqueue used to transmit queued OGM packets */
+	struct delayed_work aggr_wq;
+
+	/** @aggr_list: queue for to be aggregated OGM packets */
+	struct sk_buff_head aggr_list;
+
+	/** @aggr_len: length of the OGM aggregate (excluding ethernet frame
+	 * size)
+	 */
+	unsigned int aggr_len;
+
+	/** @aggr_list_lock: protects aggr_list */
+	spinlock_t aggr_list_lock;
+
 	/**
 	 * @throughput_override: throughput override to disable link
 	 *  auto-detection
-- 
2.22.0

