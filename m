Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [IPv6:2a01:4f8:141:3341:78:46:248:236])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ED4A8629E
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu,  8 Aug 2019 15:06:45 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 4C5CF827AE;
	Thu,  8 Aug 2019 15:06:33 +0200 (CEST)
Received: from mail.mail.packetmixer.de (packetmixer.de [79.140.42.25])
 by open-mesh.org (Postfix) with ESMTPS id 0DE3D81CE3
 for <b.a.t.m.a.n@lists.open-mesh.org>; Thu,  8 Aug 2019 15:06:23 +0200 (CEST)
Received: from kero.packetmixer.de
 (p200300C5971AA600E0A7EA13A3520353.dip0.t-ipconnect.de
 [IPv6:2003:c5:971a:a600:e0a7:ea13:a352:353])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mail.packetmixer.de (Postfix) with ESMTPSA id C9D8A6207A;
 Thu,  8 Aug 2019 15:06:22 +0200 (CEST)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: davem@davemloft.net
Subject: [PATCH 4/4] batman-adv: BATMAN_V: aggregate OGMv2 packets
Date: Thu,  8 Aug 2019 15:06:19 +0200
Message-Id: <20190808130619.4481-5-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190808130619.4481-1-sw@simonwunderlich.de>
References: <20190808130619.4481-1-sw@simonwunderlich.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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
Cc: netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

From: Linus Lüssing <linus.luessing@c0d3.blue>

Instead of transmitting individual OGMv2 packets from the aggregation
queue merge those OGMv2 packets into a single one and transmit this
aggregate instead.

This reduces overhead as it saves an ethernet header and a transmission
per aggregated OGMv2 packet.

Signed-off-by: Linus Lüssing <linus.luessing@c0d3.blue>
Signed-off-by: Sven Eckelmann <sven@narfation.org>
Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
---
 net/batman-adv/bat_v_ogm.c | 28 +++++++++++++++++++++++++++-
 1 file changed, 27 insertions(+), 1 deletion(-)

diff --git a/net/batman-adv/bat_v_ogm.c b/net/batman-adv/bat_v_ogm.c
index 52c990b54de5..319249f0f85f 100644
--- a/net/batman-adv/bat_v_ogm.c
+++ b/net/batman-adv/bat_v_ogm.c
@@ -191,18 +191,44 @@ static void batadv_v_ogm_aggr_list_free(struct batadv_hard_iface *hard_iface)
  * batadv_v_ogm_aggr_send() - flush & send aggregation queue
  * @hard_iface: the interface with the aggregation queue to flush
  *
+ * Aggregates all OGMv2 packets currently in the aggregation queue into a
+ * single OGMv2 packet and transmits this aggregate.
+ *
+ * The aggregation queue is empty after this call.
+ *
  * Caller needs to hold the hard_iface->bat_v.aggr_list_lock.
  */
 static void batadv_v_ogm_aggr_send(struct batadv_hard_iface *hard_iface)
 {
+	unsigned int aggr_len = hard_iface->bat_v.aggr_len;
+	struct sk_buff *skb_aggr;
+	unsigned int ogm_len;
 	struct sk_buff *skb;
 
 	lockdep_assert_held(&hard_iface->bat_v.aggr_list_lock);
 
+	if (!aggr_len)
+		return;
+
+	skb_aggr = dev_alloc_skb(aggr_len + ETH_HLEN + NET_IP_ALIGN);
+	if (!skb_aggr) {
+		batadv_v_ogm_aggr_list_free(hard_iface);
+		return;
+	}
+
+	skb_reserve(skb_aggr, ETH_HLEN + NET_IP_ALIGN);
+	skb_reset_network_header(skb_aggr);
+
 	while ((skb = skb_dequeue(&hard_iface->bat_v.aggr_list))) {
 		hard_iface->bat_v.aggr_len -= batadv_v_ogm_len(skb);
-		batadv_v_ogm_send_to_if(skb, hard_iface);
+
+		ogm_len = batadv_v_ogm_len(skb);
+		skb_put_data(skb_aggr, skb->data, ogm_len);
+
+		consume_skb(skb);
 	}
+
+	batadv_v_ogm_send_to_if(skb_aggr, hard_iface);
 }
 
 /**
-- 
2.20.1

