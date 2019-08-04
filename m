Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [78.46.248.236])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BE9D80BF2
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun,  4 Aug 2019 20:06:46 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id A097D82540;
	Sun,  4 Aug 2019 20:06:41 +0200 (CEST)
Received: from mail.aperture-lab.de (mail.aperture-lab.de
 [IPv6:2a01:4f8:171:314c::100:a1])
 by open-mesh.org (Postfix) with ESMTPS id E013180BD1
 for <b.a.t.m.a.n@lists.open-mesh.org>; Sun,  4 Aug 2019 20:06:37 +0200 (CEST)
From: =?UTF-8?q?Linus=20L=C3=BCssing?= <linus.luessing@c0d3.blue>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c0d3.blue; s=2018;
 t=1564941997;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=1q4aLenkKLLfTjZaYHwm3E45981IaRUCfHok0JwYfD0=;
 b=Kfh+9cMQn0W2xU6OjNzGIbzDQAno14nnY4Z8uMfAm4v2EU3WErlrZw4OreGbUb5P7XuGm1
 e5NghLSLai5caIko+AxTAbh92a8es6AtENSc+2sMbjzl9L7j1dfXYFO1i7UzBjdYnHyL8N
 uZO/UjdjeBMQFbViDf6AOdAZhk5VpDics02PuhQ3xwXxxLHrIwHl524IRPjSfVStM43A7g
 F/sbqt/pDMAHjfGkFN61ihvSJOhUUvuUg5e1++xjtTDmMsyMJeiWJ15E1MQY8HvH03Tzwp
 tBPOqjDd+XbR8XP6XdE5KhqAdr6U23VH+K48Uk3oeTzviXmgHxhoC2NO9wEEWA==
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: [PATCH v2 1/2] batman-adv: BATMAN_V: introduce per hard-iface OGMv2
 queues
Date: Sun,  4 Aug 2019 20:06:31 +0200
Message-Id: <20190804180632.489-2-linus.luessing@c0d3.blue>
In-Reply-To: <20190804180632.489-1-linus.luessing@c0d3.blue>
References: <20190804180632.489-1-linus.luessing@c0d3.blue>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=c0d3.blue;
 s=2018; t=1564941997;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=1q4aLenkKLLfTjZaYHwm3E45981IaRUCfHok0JwYfD0=;
 b=KZSHkOEbRzXlYtP42FlzV6RQ437ZUUwvZy59kg5Dn3ruDpSrKiDEMRhi1Em+HPqg9FjUdU
 Jtrs1tmLtIE/Ixx0jqBlSRWOkfdGrIWYehpDfMzEwbliG0qwalb8T3yWXL6jo/+SIbjo/p
 yqaEXGFbqq3ylLChQpqtDQySbnpWTfBOQQy1HjRI4k5XGNPDZkVWRnf0yw6DIeVJfQExTc
 fxbuLqgl77YzsSMvIMX6aLjQd8v8dhJ8HzXS0GJ1NHvwDrq/koreSUBEESVx2UbDXuRt5g
 N1JMwefzzoErJg6Fh+Uq4ekKhVgZYzo+4N6sJlq+y2Lq2RbZK5U48LrsDLOUaw==
ARC-Seal: i=1; s=2018; d=c0d3.blue; t=1564941997; a=rsa-sha256; cv=none;
 b=J8CDHu07FnffZi+fBArOFgrb24fsUYtkoFXviua8QV4f/HWWOaxNVxD7LM9jtaZaqVio8O
 p4ssmM/znXJFp9B5+I+r2oAiKDmbVxD8qcq+gQVM+G8eZ8zSe4rb721hMHWWF8ZeR/ioVa
 SsP7jk+1j68K6xfJKEy5wg+smuxHT8pycY2qhzwUvJRSZnhe0nlRUf9BTaiGQfw/+xEyf+
 6VIiKR+6GJ9cBcYn3KqMfUF21jRY6TaYkoHHz/uok+3NA+RkuhH/W07K9WnWUkqjVB7kkX
 PpcnCe/HORbYVUKREK1OVu2JPCcxj+MkGECf2giwKO78MGz5LLEVOb1vs/rjmQ==
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
 net/batman-adv/bat_v_ogm.c | 152 ++++++++++++++++++++++++++++++++++++-
 net/batman-adv/bat_v_ogm.h |   3 +
 net/batman-adv/types.h     |  15 ++++
 4 files changed, 175 insertions(+), 2 deletions(-)

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
index fad95ef6..c33041f6 100644
--- a/net/batman-adv/bat_v_ogm.c
+++ b/net/batman-adv/bat_v_ogm.c
@@ -23,6 +23,7 @@
 #include <linux/rcupdate.h>
 #include <linux/skbuff.h>
 #include <linux/slab.h>
+#include <linux/spinlock.h>
 #include <linux/stddef.h>
 #include <linux/string.h>
 #include <linux/types.h>
@@ -76,6 +77,20 @@ struct batadv_orig_node *batadv_v_ogm_orig_get(struct batadv_priv *bat_priv,
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
@@ -115,6 +130,104 @@ static void batadv_v_ogm_send_to_if(struct sk_buff *skb,
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
+ * Caller needs to hold the hard_iface->bat_v.aggr_list_lock.
+ *
+ * Return: True, if the given OGMv2 packet still fits, false otherwise.
+ */
+static bool batadv_v_ogm_queue_left(struct sk_buff *skb,
+				    struct batadv_hard_iface *hard_iface)
+{
+	unsigned int max = min_t(unsigned int, hard_iface->net_dev->mtu,
+				 BATADV_MAX_AGGREGATION_BYTES);
+	unsigned int ogm_len = batadv_v_ogm_len(skb);
+
+	lockdep_assert_held(&hard_iface->bat_v.aggr_list_lock);
+
+	return hard_iface->bat_v.aggr_len + ogm_len <= max;
+}
+
+/**
+ * batadv_v_ogm_aggr_list_free - free all elements in an aggregation queue
+ * @hard_iface: the interface holding the aggregation queue
+ *
+ * Empties the OGMv2 aggregation queue and frees all the skbs it contained.
+ *
+ * Caller needs to hold the hard_iface->bat_v.aggr_list_lock.
+ */
+static void batadv_v_ogm_aggr_list_free(struct batadv_hard_iface *hard_iface)
+{
+	struct sk_buff *skb;
+
+	lockdep_assert_held(&hard_iface->bat_v.aggr_list_lock);
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
+ *
+ * Caller needs to hold the hard_iface->bat_v.aggr_list_lock.
+ */
+static void batadv_v_ogm_aggr_send(struct batadv_hard_iface *hard_iface)
+{
+	struct sk_buff *skb;
+
+	lockdep_assert_held(&hard_iface->bat_v.aggr_list_lock);
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
@@ -210,7 +323,7 @@ static void batadv_v_ogm_send(struct work_struct *work)
 			break;
 		}
 
-		batadv_v_ogm_send_to_if(skb_tmp, hard_iface);
+		batadv_v_ogm_queue_on_if(skb_tmp, hard_iface);
 		batadv_hardif_put(hard_iface);
 	}
 	rcu_read_unlock();
@@ -223,6 +336,27 @@ static void batadv_v_ogm_send(struct work_struct *work)
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
+
+	batv = container_of(work, struct batadv_hard_iface_bat_v, aggr_wq.work);
+	hard_iface = container_of(batv, struct batadv_hard_iface, bat_v);
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
@@ -235,11 +369,25 @@ int batadv_v_ogm_iface_enable(struct batadv_hard_iface *hard_iface)
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
@@ -382,7 +530,7 @@ static void batadv_v_ogm_forward(struct batadv_priv *bat_priv,
 		   if_outgoing->net_dev->name, ntohl(ogm_forward->throughput),
 		   ogm_forward->ttl, if_incoming->net_dev->name);
 
-	batadv_v_ogm_send_to_if(skb, if_outgoing);
+	batadv_v_ogm_queue_on_if(skb, if_outgoing);
 
 out:
 	if (orig_ifinfo)
diff --git a/net/batman-adv/bat_v_ogm.h b/net/batman-adv/bat_v_ogm.h
index 2a50df7f..bf16d040 100644
--- a/net/batman-adv/bat_v_ogm.h
+++ b/net/batman-adv/bat_v_ogm.h
@@ -11,10 +11,13 @@
 
 #include <linux/skbuff.h>
 #include <linux/types.h>
+#include <linux/workqueue.h>
 
 int batadv_v_ogm_init(struct batadv_priv *bat_priv);
 void batadv_v_ogm_free(struct batadv_priv *bat_priv);
+void batadv_v_ogm_aggr_work(struct work_struct *work);
 int batadv_v_ogm_iface_enable(struct batadv_hard_iface *hard_iface);
+void batadv_v_ogm_iface_disable(struct batadv_hard_iface *hard_iface);
 struct batadv_orig_node *batadv_v_ogm_orig_get(struct batadv_priv *bat_priv,
 					       const u8 *addr);
 void batadv_v_ogm_primary_iface_set(struct batadv_hard_iface *primary_iface);
diff --git a/net/batman-adv/types.h b/net/batman-adv/types.h
index 6ae139d7..3e286e0d 100644
--- a/net/batman-adv/types.h
+++ b/net/batman-adv/types.h
@@ -117,6 +117,21 @@ struct batadv_hard_iface_bat_v {
 	/** @elp_wq: workqueue used to schedule ELP transmissions */
 	struct delayed_work elp_wq;
 
+	/** @aggr_wq: workqueue used to transmit queued OGM packets */
+	struct delayed_work aggr_wq;
+
+	/** @aggr_list: queue for to be aggregated OGM packets */
+	struct sk_buff_head aggr_list;
+
+	/**
+	 * @aggr_len: length of the OGM aggregate (excluding ethernet frame
+	 *  size)
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

