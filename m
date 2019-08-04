Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [IPv6:2a01:4f8:141:3341:78:46:248:236])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FC1F80C10
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun,  4 Aug 2019 20:55:29 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 2DC72826F8;
	Sun,  4 Aug 2019 20:55:14 +0200 (CEST)
Received: from mail.aperture-lab.de (mail.aperture-lab.de [138.201.29.205])
 by open-mesh.org (Postfix) with ESMTPS id 0A15B826FD
 for <b.a.t.m.a.n@lists.open-mesh.org>; Sun,  4 Aug 2019 20:55:10 +0200 (CEST)
From: =?UTF-8?q?Linus=20L=C3=BCssing?= <linus.luessing@c0d3.blue>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c0d3.blue; s=2018;
 t=1564944909;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ScZCLpDPZHAgfEzoHIqS/KtkEgELHgPsilMoqdKhrr0=;
 b=ZO/715jy6wM+M1GofDxfbUI8EnYDI8synWXlYQnonuupLOIF5FUX+j9jvzO5Sb0FZeyXjr
 kH1i39+WBzyJpVZ89rOp0KJw3nCsHvrzQjeXbS5MRtx5OTOTYOpWtlqpBJO/n68ISEcw+F
 b9yp1mWj66KoIqZkxAeaNNjhyfNWVFB7NV/E+GrCKmk1+f/hvekI6pxbJEa3GC9UyP6t0m
 xVgxU/HU4akRVHmAkSRP3tgt/Ex3RkSzBdV8ytL4qLmFmt8tm9lVDm9ToPfVmR0Viy5qrX
 snEoBS+dNVSmVBpMtVi3lboLZ2IQU9MZj1OBk19W1Kyg0ea63s1iJ6m9bhNrdw==
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: [PATCH v3 2/2] batman-adv: BATMAN_V: aggregate OGMv2 packets
Date: Sun,  4 Aug 2019 20:54:54 +0200
Message-Id: <20190804185454.975-3-linus.luessing@c0d3.blue>
In-Reply-To: <20190804185454.975-1-linus.luessing@c0d3.blue>
References: <20190804185454.975-1-linus.luessing@c0d3.blue>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=c0d3.blue;
 s=2018; t=1564944909;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ScZCLpDPZHAgfEzoHIqS/KtkEgELHgPsilMoqdKhrr0=;
 b=K1XHBKu9gipyKPEvM1MBt/n9CkcaQYHsvACkR6fjQJZNtYuc5lPY+4hNUAImJCoxs/qBd1
 wdg5P3Cl+JECS5N0ul2/9MV19coJJdSuS7W1nHYSb3zDRKoK0st+75xfAB6dLHQjb/6MDo
 rnE11T4UYkohgBFmL04Xc/7Ufjd+sxEqbSTgvKxL8vpib15z6WG+k+1yeBSWU8jFieGPLw
 e/c2blmHfqAiEel5KJbRaVxIAis2ZqibOAlMBxOtseFoSXAu1ggY/DYBBcU0UDCYa/pnPh
 YEzuQc18rrN9mwH46WLnJIch2p3GucmbFQQK+mH+dYov+tQSkAQq+eZucpOxSQ==
ARC-Seal: i=1; s=2018; d=c0d3.blue; t=1564944909; a=rsa-sha256; cv=none;
 b=lI3l4TEqFro2O98+bSbT3ilbAl/cxN4Aug4fk/b4HGqSyKgmVdOhyk4lEqOnKygVgsRtmD
 KRzf88u2Rm8YtOCAvNxBOjXr4UqF1ERSq7cmLMUByReJVlquXFVJE6GNLyLjbjykf2iGlR
 UzM+EuJJzUna2qxzz0HPz58r7ks0xx/pocVUKQ7ghCDao35PAnATdO5esPBslbaDNiEvy7
 kmKGF5b5UBRFAh82sywoDX0LgFz9WbaZR6hwUsoOMWnH+SKXeuyzWpWTdCD3U5QxllswYb
 bdvi6QKQwT5RKZGJiYkh8+Ss7Z8oEiIQazO8ormlBJ+bDwLxXfhAujk7dC/eEg==
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
 net/batman-adv/bat_v_ogm.c | 28 +++++++++++++++++++++++++++-
 1 file changed, 27 insertions(+), 1 deletion(-)

diff --git a/net/batman-adv/bat_v_ogm.c b/net/batman-adv/bat_v_ogm.c
index f517423a..1d540504 100644
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
2.22.0

