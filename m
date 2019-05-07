Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [78.46.248.236])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B07015832
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue,  7 May 2019 05:49:01 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id CE23581FEF;
	Tue,  7 May 2019 05:48:40 +0200 (CEST)
Received: from mail.aperture-lab.de (mail.aperture-lab.de
 [IPv6:2a01:4f8:171:314c::100:a1])
 by open-mesh.org (Postfix) with ESMTPS id 2493280A40
 for <b.a.t.m.a.n@lists.open-mesh.org>; Tue,  7 May 2019 05:48:33 +0200 (CEST)
From: T_X <tux@c0d3.blue>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c0d3.blue; s=2018;
 t=1557200912; h=from:from:sender:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:openpgp:autocrypt;
 bh=e06GwEtKT0ZvN9enVJATJ7pnEeFAux8IKLV6dvAXO4w=;
 b=RoaD0pAM+mnudkEogA54jSyjSPOXfcSZCJTIDJ4d5I+e1UnSoDNQ/rrekflsOS8BMHnNOA
 5p9EGFChjGzSPiE0h5gKdGy+255TGdt5YJfR3kln7oe0ToK2Va/1v6ceNj97qjyVgtJ9Qe
 eSrpjXEZ+fX5/cn+fq++HixDSlFzEgScdVKtr4iKRS4ctGa8IEvkSpcIQq4hkqfGueWnK6
 YSKgVpFLRMcRTxLmcTyhgckRvHxuQumdBKPA/3LShBi7Y1sE7TLI3httIOqrfTII2p4NB4
 vtThHCsMf9td9bDlkNyD/LbV+IFs3VL9x035GTqZALVbpvDjqAfq/26YDF8rXw==
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: [PATCH v2 3/3] batman-adv: mcast: avoid redundant multicast TT
 entries with bridges
Date: Tue,  7 May 2019 05:48:24 +0200
Message-Id: <20190507034824.3362-4-tux@c0d3.blue>
In-Reply-To: <20190507034824.3362-1-tux@c0d3.blue>
References: <20190507034824.3362-1-tux@c0d3.blue>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=c0d3.blue;
 s=2018; t=1557200912; h=from:from:sender:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:openpgp:autocrypt;
 bh=e06GwEtKT0ZvN9enVJATJ7pnEeFAux8IKLV6dvAXO4w=;
 b=v2DNjfF35+2TxeL54qAsFuq/7tAN+yniLfO4MQC+wpc4YPUeK7rxIyfQs8PgaiaK8o42uj
 2C4mIA8evbXj/vRC1LuGJaN9/HzUkfoyK6G5vXOON5QKoRZ8xrXAc1HTy2SHOSdBTojBBR
 CK3i4UEMUEL6UkvTPWPudZT4oC/xTNF34w2Uwb/z2sbcmXFiMKI4ob6zMcDA81BblEN+MI
 0gJKs8bE2N649QB8fwiT+VcDEbxJbI/WqP0ChdtDxsYdrLbF84NhpNzJ4/F3ia1WR2vgfm
 o353pJa4EeUYdxG1xLYvjwzp89Amzmakj3XZQsNexUqVGiDmYES0TxWI3awaXQ==
ARC-Seal: i=1; s=2018; d=c0d3.blue; t=1557200912; a=rsa-sha256; cv=none;
 b=REas1nhwpB1h8wBv5lBGiNcNem/RQqd9w6gHeinIjw2A25g6EmzPJ+vBnroBZWcLOz/hKE
 nWBymHe7Kx8HnFgJjWZ7iXlTi4dtrRmuLvZmml8e6TWM7vKBcD6vafrr3y61Cj2pHDWGGx
 i41J4KywQPmzDuXN/0HKuESLQs4osHNktgZPJsQId2W7KS77JKg12C7MZasaB5IZhtF+xJ
 vbnvfOwH25woolgD+rVfy7tObqsInBN6Eq0p38EegohVzRqGMm3bkyxcgEpCOS7V91MBJW
 HrSxAsB3AySjOjhzwLVmo9XEtcpWNoOgwPDP8XIwl/WgqE7xWYGBtc0yWICV+w==
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

From: Linus Lüssing <linus.luessing@c0d3.blue>

When a bridge is added on top of bat0 we set the WANT_ALL_UNSNOOPABLES
flag. Which means we sign up for all traffic for ff02::1/128 and
224.0.0.0/24.

When the node itself had IPv6 enabled or joined a group in 224.0.0.0/24
itself then so far this would result in a multicast TT entry which is
redundant to the WANT_ALL_UNSNOOPABLES.

With this patch such redundant TT entries are avoided.

Signed-off-by: Linus Lüssing <linus.luessing@c0d3.blue>
---
 net/batman-adv/multicast.c | 31 +++++++++++++++++++++++++------
 1 file changed, 25 insertions(+), 6 deletions(-)

diff --git a/net/batman-adv/multicast.c b/net/batman-adv/multicast.c
index 2a975bc0..90571e4c 100644
--- a/net/batman-adv/multicast.c
+++ b/net/batman-adv/multicast.c
@@ -227,6 +227,10 @@ batadv_mcast_mla_softif_get_ipv4(struct net_device *dev,
 	rcu_read_lock();
 	for (pmc = rcu_dereference(in_dev->mc_list); pmc;
 	     pmc = rcu_dereference(pmc->next_rcu)) {
+		if (flags->tvlv_flags & BATADV_MCAST_WANT_ALL_UNSNOOPABLES &&
+		    ipv4_is_local_multicast(pmc->multiaddr))
+			continue;
+
 		ip_eth_mc_map(pmc->multiaddr, mcast_addr);
 
 		if (batadv_mcast_mla_is_duplicate(mcast_addr, mcast_list))
@@ -287,6 +291,10 @@ batadv_mcast_mla_softif_get_ipv6(struct net_device *dev,
 		    IPV6_ADDR_SCOPE_LINKLOCAL)
 			continue;
 
+		if (flags->tvlv_flags & BATADV_MCAST_WANT_ALL_UNSNOOPABLES &&
+		    ipv6_addr_is_ll_all_nodes(&pmc6->mca_addr))
+			continue;
+
 		ipv6_eth_mc_map(&pmc6->mca_addr, mcast_addr);
 
 		if (batadv_mcast_mla_is_duplicate(mcast_addr, mcast_list))
@@ -407,9 +415,8 @@ static int batadv_mcast_mla_bridge_get(struct net_device *dev,
 				       struct batadv_mcast_mla_flags *flags)
 {
 	struct list_head bridge_mcast_list = LIST_HEAD_INIT(bridge_mcast_list);
-	bool all_ipv4 = flags->tvlv_flags & BATADV_MCAST_WANT_ALL_IPV4;
-	bool all_ipv6 = flags->tvlv_flags & BATADV_MCAST_WANT_ALL_IPV6;
 	struct br_ip_list *br_ip_entry, *tmp;
+	u8 tvlv_flags = flags->tvlv_flags;
 	struct batadv_hw_addr *new;
 	u8 mcast_addr[ETH_ALEN];
 	int ret;
@@ -422,11 +429,23 @@ static int batadv_mcast_mla_bridge_get(struct net_device *dev,
 		goto out;
 
 	list_for_each_entry(br_ip_entry, &bridge_mcast_list, list) {
-		if (all_ipv4 && br_ip_entry->addr.proto == htons(ETH_P_IP))
-			continue;
+		if (br_ip_entry->addr.proto == htons(ETH_P_IP)) {
+			if (tvlv_flags & BATADV_MCAST_WANT_ALL_IPV4)
+				continue;
 
-		if (all_ipv6 && br_ip_entry->addr.proto == htons(ETH_P_IPV6))
-			continue;
+			if (tvlv_flags & BATADV_MCAST_WANT_ALL_UNSNOOPABLES &&
+			    ipv4_is_local_multicast(br_ip_entry->addr.u.ip4))
+				continue;
+		}
+
+		if (br_ip_entry->addr.proto == htons(ETH_P_IPV6)) {
+			if (tvlv_flags & BATADV_MCAST_WANT_ALL_IPV6)
+				continue;
+
+			if (tvlv_flags & BATADV_MCAST_WANT_ALL_UNSNOOPABLES &&
+			    ipv6_addr_is_ll_all_nodes(&br_ip_entry->addr.u.ip6))
+				continue;
+		}
 
 		batadv_mcast_mla_br_addr_cpy(mcast_addr, &br_ip_entry->addr);
 		if (batadv_mcast_mla_is_duplicate(mcast_addr, mcast_list))
-- 
2.20.1

