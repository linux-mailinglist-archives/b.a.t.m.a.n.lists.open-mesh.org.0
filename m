Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [78.46.248.236])
	by mail.lfdr.de (Postfix) with ESMTPS id D380080945
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun,  4 Aug 2019 06:29:42 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 9430A821FE;
	Sun,  4 Aug 2019 06:29:25 +0200 (CEST)
Received: from mail.aperture-lab.de (mail.aperture-lab.de
 [IPv6:2a01:4f8:171:314c::100:a1])
 by open-mesh.org (Postfix) with ESMTPS id BD7C881C5F
 for <b.a.t.m.a.n@lists.open-mesh.org>; Sun,  4 Aug 2019 06:29:12 +0200 (CEST)
From: =?UTF-8?q?Linus=20L=C3=BCssing?= <linus.luessing@c0d3.blue>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c0d3.blue; s=2018;
 t=1564892951;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=hPetC+cQgEPCx0M+lG3sXrzzmL2YwcVrqnHa93YH054=;
 b=IkkfLKZwgGVbJAPcPPUfarO5tbN4KMSBZRh1V5pWY5KslR5E4i1wfVnb2lU2htA9Aa1fls
 yAuy9cOM/qOP4sUQcbjVvXClis+0EOLH0gGg+gcInLvpB6BsHpVlSrGsLgLITLkg6QyYoz
 n72bun5vooO0tfVUUmXKIPmN0jptq5i0GlpIGBDkYi39MLllW1xPPqF9HIjYqDcVnT3LAj
 QnL4/tn8ZtrQpdK7bi9dTel0pUIBaonEm0G3mUKBFj0OX+TNE9j+437baYmLpSDOXPVEBO
 4RQFerlEZJoaz1uGQtB9tmmQ1xqWRrKcxExp+2C6H+QEormIJiT3lGSofyFaJQ==
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: [PATCH 2/2] batman-adv: BATMAN_V: aggregate OGMv2 packets
Date: Sun,  4 Aug 2019 06:28:55 +0200
Message-Id: <20190804042855.29327-3-linus.luessing@c0d3.blue>
In-Reply-To: <20190804042855.29327-1-linus.luessing@c0d3.blue>
References: <20190804042855.29327-1-linus.luessing@c0d3.blue>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=c0d3.blue;
 s=2018; t=1564892951;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=hPetC+cQgEPCx0M+lG3sXrzzmL2YwcVrqnHa93YH054=;
 b=NpPBNciA+BP6GrPJT+yzP6w2WzOwtnYy7Q4Ww3MOhVT+dqS605HxFwT8SwRPNnhLzz9rLy
 QE+Q04PzborYlHxyLi28kQptwmygZKMZfOvW5t2SK14tDwMBOVjQhtLWaXpzIMaXHuiVtm
 kcR6TA5Bt4ZC/nI4l8ybk55xOndnq9GlHQpOa/AJahigiM/I5iCqKUAbixt7T9zwgJcLuW
 lHVdXeDi62r6ikpWMylOURT+GgWDq/bvpJl4SAGiE5r4P4m6OWud+IXx/IAX8vDJgcym/3
 o9oBGwmIbOJuUhKbH7NrN7wPeJ4MkA+6AQ+GJ/bMEctTcI90njs7jN0pwMy7/Q==
ARC-Seal: i=1; s=2018; d=c0d3.blue; t=1564892951; a=rsa-sha256; cv=none;
 b=Vs+S6cF+LjIunHzpa73euWt8b0LnQNuFi3v+YTOMiPafwJ1mJYDRrqV0HgRQ2ifjf8Rfvp
 HZka+Lt7zSH8oYT5dnjvcgWpBR5IezKUWp61PXbNLeHnLrgpwWi1ZV5g9jHNlaWGvWg89k
 +xqJ0JRPaco55ObIT1lcDs6nqB1QQcdr2SSipAOkSsgb2JmmTrR1AzwvBirCmoLVpRgv/D
 LrmreTNjXHDfO52OLWdNFEThut/0YljpzOWFHzKcXdHrNS0LzGMVhttc1sPOEJ+dhknll1
 GSUxqlrBGmL65GXLSclJ2XTJgvQn2+uHAuq5YJA3HsxU9tSY1A5XleaXmI12iw==
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
index 36f78889..a743c67d 100644
--- a/net/batman-adv/bat_v_ogm.c
+++ b/net/batman-adv/bat_v_ogm.c
@@ -180,15 +180,40 @@ static void batadv_v_ogm_aggr_list_free(struct batadv_hard_iface *hard_iface)
 /**
  * batadv_v_ogm_aggr_send() - flush & send aggregation queue
  * @hard_iface: the interface with the aggregation queue to flush
+ *
+ * Aggregates all OGMv2 packets currently in the aggregation queue into a
+ * single OGMv2 packet and transmits this aggregate.
+ *
+ * The aggregation queue is empty after this call.
  */
 static void batadv_v_ogm_aggr_send(struct batadv_hard_iface *hard_iface)
 {
-	struct sk_buff *skb;
+	unsigned int aggr_len = hard_iface->bat_v.aggr_len;
+	struct sk_buff *skb, *skb_aggr;
+	unsigned int ogm_len;
+
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

