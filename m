Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [IPv6:2a01:4f8:141:3341:78:46:248:236])
	by mail.lfdr.de (Postfix) with ESMTPS id B290080BF4
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun,  4 Aug 2019 20:07:01 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 21DDA826E8;
	Sun,  4 Aug 2019 20:06:50 +0200 (CEST)
Received: from mail.aperture-lab.de (mail.aperture-lab.de
 [IPv6:2a01:4f8:171:314c::100:a1])
 by open-mesh.org (Postfix) with ESMTPS id 01C068236E
 for <b.a.t.m.a.n@lists.open-mesh.org>; Sun,  4 Aug 2019 20:06:38 +0200 (CEST)
From: =?UTF-8?q?Linus=20L=C3=BCssing?= <linus.luessing@c0d3.blue>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c0d3.blue; s=2018;
 t=1564941998;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=cNQd3AU3rW8flaJW90/j1bZ7xhWR0PylQSVfGlADqM4=;
 b=GhoV7XuijUOksa7bcwG/jv+PmgJ4Luc/OoGWo0vZLzb7E96bKzW1CVLMqv2HEQnGQq+fdQ
 mVlAnpFX53c82rH8UutkdKhlJtAklKpbL15THImTJFylR2sePC7coNZcoafE2lWsYbLmvx
 WkzdLOQq1M2lMj3pnO0khVEo/JV6xvYbANeO/UJLWOuOHpcC9LfAyqiI08Fz3HzZv489M2
 lGjmO25Jn9PJJcjVqpSsliSrzr+JfJlh780KWngEc1HXOtsz91sW228Ulg+Gak4LDWRHF3
 at6lo6EyGprZK7HjB9N4WPqBgOuR0o4rsyIMYswELsH0k39cT6cLtu5b+xFWQg==
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: [PATCH v2 2/2] batman-adv: BATMAN_V: aggregate OGMv2 packets
Date: Sun,  4 Aug 2019 20:06:32 +0200
Message-Id: <20190804180632.489-3-linus.luessing@c0d3.blue>
In-Reply-To: <20190804180632.489-1-linus.luessing@c0d3.blue>
References: <20190804180632.489-1-linus.luessing@c0d3.blue>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=c0d3.blue;
 s=2018; t=1564941998;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=cNQd3AU3rW8flaJW90/j1bZ7xhWR0PylQSVfGlADqM4=;
 b=N6dXdhtyltCEjuXEaRhhYMzhG4irYPm+4/qXCE/8IPKW4CgXVwm3RAZHsj2dZixnJcrby1
 Zgw98lb9fDfcBekENPktFCb3H428e4YTY69AjUKR6Dmdt5RpusWCaKAv8ATnTTK62w2rea
 2cKkeSyst/KsK+UEBg/MNsTqXhOr+OC0ydNSNGkn9JMOfjqQsouCPu32ZE48A0pNh5ySLX
 BF0+CoaJ6Frdu1jLlOTr64u/w4nka9CVUKoIxN/YS99bEj2+MVE1QDOWyEulZxLDCNLYgK
 SENXoSjIOvYznd2K18C0gFkGVTeMklv18JQXShSfGJP9GzvOnzIxjUhLsPCrZA==
ARC-Seal: i=1; s=2018; d=c0d3.blue; t=1564941998; a=rsa-sha256; cv=none;
 b=jF8tiWGx4+POpvi8gmdw19UV8lwj/5P+W6caa7CFDN+awzI5FUmhp00uwXr2nJA8W58iuQ
 1xs6diAZR3bI4f+JeIGlKln4Nm5uamNmAvVlqjpbbRqmqoeqkVNC2w0LL2mAqYfllojKBt
 dg9xsuAitWYpzYSTpT7U1f9lgRZ8s9l794iNPnZdCa3l6NpEZxXByRWD3xbB5NZq8wQiKu
 /+J+zu0wWWZutu/2CfJHNEaKtYmn8oHuM6KD4Nr8BC+EsybMYfPDXDMcaGpD7o85s/8W17
 NwbgU0HV7cDKPT3jXNQwRqMtK6EQwKFw41FGpYWJ9sTbfZDUN+8GrJy+85BatQ==
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

Instead of transmitting individual OGMv2 packets from the aggregation
queue merge those OGMv2 packets into a single one and transmit this
aggregate instead.

This reduces overhead as it saves an ethernet header and a transmission
per aggregated OGMv2 packet.

Signed-off-by: Linus Lüssing <linus.luessing@c0d3.blue>
---
 net/batman-adv/bat_v_ogm.c | 29 +++++++++++++++++++++++++++--
 1 file changed, 27 insertions(+), 2 deletions(-)

diff --git a/net/batman-adv/bat_v_ogm.c b/net/batman-adv/bat_v_ogm.c
index c33041f6..069fdada 100644
--- a/net/batman-adv/bat_v_ogm.c
+++ b/net/batman-adv/bat_v_ogm.c
@@ -190,18 +190,43 @@ static void batadv_v_ogm_aggr_list_free(struct batadv_hard_iface *hard_iface)
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
-	struct sk_buff *skb;
+	unsigned int aggr_len = hard_iface->bat_v.aggr_len;
+	struct sk_buff *skb, *skb_aggr;
+	unsigned int ogm_len;
 
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
2.22.0

