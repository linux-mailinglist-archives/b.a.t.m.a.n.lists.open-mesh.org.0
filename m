Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [78.46.248.236])
	by mail.lfdr.de (Postfix) with ESMTPS id 2173C2AB40
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 26 May 2019 18:36:48 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 7C85A820CE;
	Sun, 26 May 2019 18:36:29 +0200 (CEST)
Received: from mail.aperture-lab.de (mail.aperture-lab.de
 [IPv6:2a01:4f8:171:314c::100:a1])
 by open-mesh.org (Postfix) with ESMTPS id 153A8810DA
 for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 26 May 2019 18:36:25 +0200 (CEST)
From: =?UTF-8?q?Linus=20L=C3=BCssing?= <linus.luessing@c0d3.blue>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c0d3.blue; s=2018;
 t=1558888584;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=cBgt4Z3PVkqgc+e7fr2c6b9bhSWnJxI7amyu6XpI8O0=;
 b=AL7SzwjbnrShPti+TGa7iJUhOBBPQafcrLLN/Na9dPEPw/SOoHvGEYYySi3zmvvBGk6+YX
 Gd2x7D6fGDIoODCeBJqmLZJtN3ikZLUe0izKYWSVLiYBF3EGgSeQs7DV6u8caMplRhU+rF
 YEBQqWz53qxi7XtEJxfhRAO4/jx5uieqhSaYdUAKI/6aM7F1/0jmD7OVtB1lX3YZY7Zxxs
 DEpyTBqjXa5PDm7AoQq9K8X/ueIHrG1BJt0XlRcNJod1DbBpyRpME+gD1UTLEcdsQUdUyv
 isvp6OZxzY5qHpX9ca2vhl+f7JmhM7gcVXXhqIrcyXQckYyZ6TfcxtiwhyYXOg==
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: [PATCH v4 2/2] batman-adv: mcast: avoid redundant multicast TT
 entries with bridges
Date: Sun, 26 May 2019 18:35:50 +0200
Message-Id: <20190526163550.4073-3-linus.luessing@c0d3.blue>
In-Reply-To: <20190526163550.4073-1-linus.luessing@c0d3.blue>
References: <20190526163550.4073-1-linus.luessing@c0d3.blue>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=c0d3.blue;
 s=2018; t=1558888584;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=cBgt4Z3PVkqgc+e7fr2c6b9bhSWnJxI7amyu6XpI8O0=;
 b=kZo0Ukx7WqIOhBkoma1SGpsiC9hFzxxwNQO2lBGIjuKCJcW4yc8cN9BOGHzRTL/XpGxmy/
 w0MNNEpSCFjmCmV3eM25L9iJZMf4yPirWefBrtR1Cklb9BOcng/nq4jOmV8qT6A9djdlXZ
 tOTGEapbsruM6eTUA/idNyA2xFUDmR+WFwyfV3fkMuXvcO7JMQh4wAR0GyZfOZxsKNI9y/
 PedBx0E6cWHJmSaPWh5ztkBAfm2iSTFwfvU8vxDz4xRsC8XDM9xRkzyV+0jSDCIpnyGDl6
 exgNz9nJt+qvp662fgn+bCPgh72Bkap3c9b+KS0taWlHn8pmvVANHYlCt2KExA==
ARC-Seal: i=1; s=2018; d=c0d3.blue; t=1558888584; a=rsa-sha256; cv=none;
 b=hUQT15xkaAa72A5e/NEqvHLN2qXMiBV0U08E+dNcyv8sjEb7oc5hSVTORDzX/kd22kPcKk
 eg1oJMVGJJ91y1MW8z0qFZs7G70zdoIQV+RMWKbjky+TcNIzsZghAFZ+w0knMK6tv1zss1
 cVRO3n/D0TdJ3E+PKEYn07oX2kQbZs+/uOCBoWJwyDqiNHEwOrfxKiuyRXIiJtT606VpFt
 IXsqB5RACe/rQKkfpR5/PMXQ624zajWWFI9SD5vGoT3P7zWQccBagGUXjYbTn6fQduKanI
 jjgFoFHUegsUqzHvE8F+KNcuf9R0OZ21qiRGKQTkpAo0vJg8H0rKQA246Jt6Mw==
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

When a bridge is added on top of bat0 we set the WANT_ALL_UNSNOOPABLES
flag. Which means we sign up for all traffic for ff02::1/128 and
224.0.0.0/24.

When the node itself had IPv6 enabled or joined a group in 224.0.0.0/24
itself then so far this would result in a multicast TT entry which is
redundant to the WANT_ALL_UNSNOOPABLES.

With this patch such redundant TT entries are avoided.

Signed-off-by: Linus Lüssing <linus.luessing@c0d3.blue>
---
 net/batman-adv/multicast.c | 33 +++++++++++++++++++++++++++------
 1 file changed, 27 insertions(+), 6 deletions(-)

diff --git a/net/batman-adv/multicast.c b/net/batman-adv/multicast.c
index 693e3bba..5940c2df 100644
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
@@ -422,11 +429,25 @@ static int batadv_mcast_mla_bridge_get(struct net_device *dev,
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
+#if IS_ENABLED(CONFIG_IPV6)
+		if (br_ip_entry->addr.proto == htons(ETH_P_IPV6)) {
+			if (tvlv_flags & BATADV_MCAST_WANT_ALL_IPV6)
+				continue;
+
+			if (tvlv_flags & BATADV_MCAST_WANT_ALL_UNSNOOPABLES &&
+			    ipv6_addr_is_ll_all_nodes(&br_ip_entry->addr.u.ip6))
+				continue;
+		}
+#endif
 
 		batadv_mcast_mla_br_addr_cpy(mcast_addr, &br_ip_entry->addr);
 		if (batadv_mcast_mla_is_duplicate(mcast_addr, mcast_list))
-- 
2.20.1

