Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [IPv6:2a01:4f8:141:3341:78:46:248:236])
	by mail.lfdr.de (Postfix) with ESMTPS id 6182F15849
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue,  7 May 2019 06:09:00 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id C841082153;
	Tue,  7 May 2019 06:08:45 +0200 (CEST)
Received: from mail.aperture-lab.de (mail.aperture-lab.de [138.201.29.205])
 by open-mesh.org (Postfix) with ESMTPS id 67D5D82081
 for <b.a.t.m.a.n@lists.open-mesh.org>; Tue,  7 May 2019 06:08:37 +0200 (CEST)
From: =?UTF-8?q?Linus=20L=C3=BCssing?= <linus.luessing@c0d3.blue>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c0d3.blue; s=2018;
 t=1557202115; h=from:from:sender:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:openpgp:autocrypt;
 bh=TsjvNMmHIo/hwbB/G/l4etZ79ozEzx3sY49wbqumedM=;
 b=rU1xC8n424cKKSbvu2NTQoj3vKv06si/KugYvFQZ4Lmq7Y93wF4AULY0hCCfJp8ZHcyLGi
 0Ps1Oxbs/Q8SHrgHtRe0hRrZWmoZXYFd3UFE2j2tdgrX5l5kBp6deNuFTxw0nMK9+5KT70
 1oovym/V4kSTK8S930kjmY1lGWC08xjlKlVp1WDZZNpQEyqWEwKmmrkG7DFJzKXrGTc7L1
 0hHx3Uk4J9voEGG+oAZjoJ9q6mLHJb3SMmaCMt/KBE20M03OOir4zBUrxhW+0CgpQeKT+q
 P1T2wF2UHvYvvF9m4WgPd1dyHxW0w+D8PVTBhaC1cpovnN9qee1QehbwlW4LLw==
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: [PATCH v2 3/3] batman-adv: mcast: avoid redundant multicast TT
 entries with bridges
Date: Tue,  7 May 2019 06:08:28 +0200
Message-Id: <20190507040828.3927-4-linus.luessing@c0d3.blue>
In-Reply-To: <20190507040828.3927-1-linus.luessing@c0d3.blue>
References: <20190507040828.3927-1-linus.luessing@c0d3.blue>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=c0d3.blue;
 s=2018; t=1557202115; h=from:from:sender:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:openpgp:autocrypt;
 bh=TsjvNMmHIo/hwbB/G/l4etZ79ozEzx3sY49wbqumedM=;
 b=CzgSMl+A+dwpfardFCKR40scFjvuKQ9lzViTZDIPzf+7JIM2UuzNfHh3NiU2x9cntsd/fL
 ePggbXt3yVlngwpKjc74G6mVS54OGPnv2fxxhU49T+CxU1DC6ruanwFFQwC/BeZ2d6VDrI
 k7cgu4kV3J8dSGX6UkjqOIaOkyD/hXWzJ4wvzCmNYfcsDJoBszfFahYG55FXsbWx132clF
 13Tiv7qVNvuRkpBF673robGbCrb2Q4AvBpCrOGQdbDH0xctLeZl4uyIT2d6/xlw57kghBy
 B0A1vA4MfcvGm2e/rqCC6UYuPbmlh0NCh87DKD1tMHxZL7zYNb0vIYNJ0kAWqA==
ARC-Seal: i=1; s=2018; d=c0d3.blue; t=1557202115; a=rsa-sha256; cv=none;
 b=NAXroKIAMZb6X79rnv8he+0iOl41IaAdkgVdkrVzVfCxwETNVNVv+9pX0v6pF/9e9ZDOY9
 pjKLPyiVCJ05eqhjVYSyhGFaIBfdsmo4+Ty1NRMm1ttGBeYU4zL4Zd07zp1XTU10AVqHMt
 jrlGHswUKDFKo36pieVdRZNjmvYbJlKwL4YNfBXZBGKuQQYd+s557rfzqyQNKjL6ubBkHF
 nICxIPbnzHFiNreJSxDCA32JOZcgTxSHaBRNtAEwFZ9FwP+Kb4fbkGIt+DU0Ep1g4riZOz
 ogqy0wKm4Zs6nJoh3dE6jEuYE9SGB6WLYOQfKMgGSzB69/xEp+4H3PDc33i3Nw==
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

