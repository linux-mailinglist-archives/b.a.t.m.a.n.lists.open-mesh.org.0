Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [78.46.248.236])
	by mail.lfdr.de (Postfix) with ESMTPS id 13B8F2AB3F
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 26 May 2019 18:36:42 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id F24C48198A;
	Sun, 26 May 2019 18:36:27 +0200 (CEST)
Received: from mail.aperture-lab.de (mail.aperture-lab.de [138.201.29.205])
 by open-mesh.org (Postfix) with ESMTPS id 0AE1580343
 for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 26 May 2019 18:36:24 +0200 (CEST)
From: =?UTF-8?q?Linus=20L=C3=BCssing?= <linus.luessing@c0d3.blue>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c0d3.blue; s=2018;
 t=1558888583;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=lBVa8KFNgiffTQVvH44qbemgEmwdj2yDxjhyFlU5jA0=;
 b=mRwWE08piHiBp4NoOAkETG+BNtIPURCw5uYK/UJqPvVd6X+pOr9/aUibefJugPp90XFzBn
 E7u6A4/JWgDfvLkcOY+MdO3bsULWXLtkwzOPyf0jYziJngJzntMiJfrnousvVRfp+KwmQs
 qUfJzlkJUK2MpouI8V+NjkfxO/QThXHKfsxDZcPE0cgxs1l3vHmcRgOoepzoxWgSEcLELB
 C79Grc8A9Bp3Ex3AERwm/loh3/chwqbAar8aDkIxQcRVdBW7SYpuIX0sT6hMViq4ctUZP3
 tIuWZQCkEIsXoT3HBs2+nAPtckrV78Pk5vuDoM4Xx7c0l3mLl8IuXztgGy7cCA==
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: [PATCH v4 1/2] batman-adv: mcast: collect softif listeners from IP
 lists instead
Date: Sun, 26 May 2019 18:35:49 +0200
Message-Id: <20190526163550.4073-2-linus.luessing@c0d3.blue>
In-Reply-To: <20190526163550.4073-1-linus.luessing@c0d3.blue>
References: <20190526163550.4073-1-linus.luessing@c0d3.blue>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=c0d3.blue;
 s=2018; t=1558888583;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=lBVa8KFNgiffTQVvH44qbemgEmwdj2yDxjhyFlU5jA0=;
 b=qVCcWhPHf1Arp6sL2TWsNXHqPY7TsbgTbkqpNinAcoTbMojCI07f+NEwMK3b35P0ckY8Am
 q1q2kz5qNZl5HH0m/bAK5JggGfOj+XnjkXurRo2ifYUlwRvpBHwMaP65lkgQtFvDAp1T86
 2VV6KjqdVenbUPe34geK2ibejhj4V8C3bSpy4cXgO2lAlEUeXJOwfiycXaYdKp4h4Fko7Q
 uhzaokwhdyfbZjhVuaBJYW5YQQDaqMQVgnoyqJGBFGiEQWDchJtaKZn+M2jRAgPnPe+F1s
 6o29RMwgmeca/JBxL5ad6qGS/urAT7upfSDeoZtkGo5sfilRpGzhjBs0pwNYxQ==
ARC-Seal: i=1; s=2018; d=c0d3.blue; t=1558888583; a=rsa-sha256; cv=none;
 b=gfIUslWcW8Av1TUz0MliAYUcgWUCCriaDkCg3PF/S8LYpSQy9gxmLtymrcGUhPGBvDgD4u
 KosOMZps/+J0vYWH5G+amXsjUGWJR+5aKNcdCDtJ68qTKpb1wORL+h44wcE+fKec7Vj8ra
 pwL/nM53jhiAkWkc65gIVCWN/MKZpylsph4WWWQ53oIS8ExwAtVne2m+IzyRYw1aVPn78q
 qk5r7y1vA4AvMhANQ4qFDYrxt684oa/2fDlwSd5DUemy1oZqxMisbWzlKtoIgxZqj0DN2r
 DuJ3PHqg64/mrx059EBm7Dx80jkE3T5YKfAh3on9XYHMtOLV8JTy2wZBf32nzA==
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

Instead of collecting multicast MAC addresses from the netdev hw mc
list collect a node's multicast listeners from the IP lists and convert
those to MAC addresses.

This allows to exclude addresses of specific scope later. On a
multicast MAC address the IP destination scope is not visible anymore.

Signed-off-by: Linus Lüssing <linus.luessing@c0d3.blue>
---
 net/batman-adv/multicast.c | 258 +++++++++++++++++++++++++------------
 1 file changed, 173 insertions(+), 85 deletions(-)

diff --git a/net/batman-adv/multicast.c b/net/batman-adv/multicast.c
index af0e2ce8..693e3bba 100644
--- a/net/batman-adv/multicast.c
+++ b/net/batman-adv/multicast.c
@@ -20,6 +20,7 @@
 #include <linux/igmp.h>
 #include <linux/in.h>
 #include <linux/in6.h>
+#include <linux/inetdevice.h>
 #include <linux/ip.h>
 #include <linux/ipv6.h>
 #include <linux/jiffies.h>
@@ -171,91 +172,6 @@ static struct net_device *batadv_mcast_get_bridge(struct net_device *soft_iface)
 	return upper;
 }
 
-/**
- * batadv_mcast_addr_is_ipv4() - check if multicast MAC is IPv4
- * @addr: the MAC address to check
- *
- * Return: True, if MAC address is one reserved for IPv4 multicast, false
- * otherwise.
- */
-static bool batadv_mcast_addr_is_ipv4(const u8 *addr)
-{
-	static const u8 prefix[] = {0x01, 0x00, 0x5E};
-
-	return memcmp(prefix, addr, sizeof(prefix)) == 0;
-}
-
-/**
- * batadv_mcast_addr_is_ipv6() - check if multicast MAC is IPv6
- * @addr: the MAC address to check
- *
- * Return: True, if MAC address is one reserved for IPv6 multicast, false
- * otherwise.
- */
-static bool batadv_mcast_addr_is_ipv6(const u8 *addr)
-{
-	static const u8 prefix[] = {0x33, 0x33};
-
-	return memcmp(prefix, addr, sizeof(prefix)) == 0;
-}
-
-/**
- * batadv_mcast_mla_softif_get() - get softif multicast listeners
- * @dev: the device to collect multicast addresses from
- * @mcast_list: a list to put found addresses into
- * @flags: flags indicating the new multicast state
- *
- * Collects multicast addresses of multicast listeners residing
- * on this kernel on the given soft interface, dev, in
- * the given mcast_list. In general, multicast listeners provided by
- * your multicast receiving applications run directly on this node.
- *
- * If there is a bridge interface on top of dev, collects from that one
- * instead. Just like with IP addresses and routes, multicast listeners
- * will(/should) register to the bridge interface instead of an
- * enslaved bat0.
- *
- * Return: -ENOMEM on memory allocation error or the number of
- * items added to the mcast_list otherwise.
- */
-static int
-batadv_mcast_mla_softif_get(struct net_device *dev,
-			    struct hlist_head *mcast_list,
-			    struct batadv_mcast_mla_flags *flags)
-{
-	bool all_ipv4 = flags->tvlv_flags & BATADV_MCAST_WANT_ALL_IPV4;
-	bool all_ipv6 = flags->tvlv_flags & BATADV_MCAST_WANT_ALL_IPV6;
-	struct net_device *bridge = batadv_mcast_get_bridge(dev);
-	struct netdev_hw_addr *mc_list_entry;
-	struct batadv_hw_addr *new;
-	int ret = 0;
-
-	netif_addr_lock_bh(bridge ? bridge : dev);
-	netdev_for_each_mc_addr(mc_list_entry, bridge ? bridge : dev) {
-		if (all_ipv4 && batadv_mcast_addr_is_ipv4(mc_list_entry->addr))
-			continue;
-
-		if (all_ipv6 && batadv_mcast_addr_is_ipv6(mc_list_entry->addr))
-			continue;
-
-		new = kmalloc(sizeof(*new), GFP_ATOMIC);
-		if (!new) {
-			ret = -ENOMEM;
-			break;
-		}
-
-		ether_addr_copy(new->addr, mc_list_entry->addr);
-		hlist_add_head(&new->list, mcast_list);
-		ret++;
-	}
-	netif_addr_unlock_bh(bridge ? bridge : dev);
-
-	if (bridge)
-		dev_put(bridge);
-
-	return ret;
-}
-
 /**
  * batadv_mcast_mla_is_duplicate() - check whether an address is in a list
  * @mcast_addr: the multicast address to check
@@ -276,6 +192,178 @@ static bool batadv_mcast_mla_is_duplicate(u8 *mcast_addr,
 	return false;
 }
 
+/**
+ * batadv_mcast_mla_softif_get_ipv4() - get softif IPv4 multicast listeners
+ * @dev: the device to collect multicast addresses from
+ * @mcast_list: a list to put found addresses into
+ * @flags: flags indicating the new multicast state
+ *
+ * Collects multicast addresses of IPv4 multicast listeners residing
+ * on this kernel on the given soft interface, dev, in
+ * the given mcast_list. In general, multicast listeners provided by
+ * your multicast receiving applications run directly on this node.
+ *
+ * Return: -ENOMEM on memory allocation error or the number of
+ * items added to the mcast_list otherwise.
+ */
+static int
+batadv_mcast_mla_softif_get_ipv4(struct net_device *dev,
+				 struct hlist_head *mcast_list,
+				 struct batadv_mcast_mla_flags *flags)
+{
+	struct batadv_hw_addr *new;
+	struct in_device *in_dev;
+	u8 mcast_addr[ETH_ALEN];
+	struct ip_mc_list *pmc;
+	int ret = 0;
+
+	if (flags->tvlv_flags & BATADV_MCAST_WANT_ALL_IPV4)
+		return 0;
+
+	in_dev = in_dev_get(dev);
+	if (!in_dev)
+		return 0;
+
+	rcu_read_lock();
+	for (pmc = rcu_dereference(in_dev->mc_list); pmc;
+	     pmc = rcu_dereference(pmc->next_rcu)) {
+		ip_eth_mc_map(pmc->multiaddr, mcast_addr);
+
+		if (batadv_mcast_mla_is_duplicate(mcast_addr, mcast_list))
+			continue;
+
+		new = kmalloc(sizeof(*new), GFP_ATOMIC);
+		if (!new) {
+			ret = -ENOMEM;
+			break;
+		}
+
+		ether_addr_copy(new->addr, mcast_addr);
+		hlist_add_head(&new->list, mcast_list);
+		ret++;
+	}
+	rcu_read_unlock();
+	in_dev_put(in_dev);
+
+	return ret;
+}
+
+/**
+ * batadv_mcast_mla_softif_get_ipv6() - get softif IPv6 multicast listeners
+ * @dev: the device to collect multicast addresses from
+ * @mcast_list: a list to put found addresses into
+ * @flags: flags indicating the new multicast state
+ *
+ * Collects multicast addresses of IPv6 multicast listeners residing
+ * on this kernel on the given soft interface, dev, in
+ * the given mcast_list. In general, multicast listeners provided by
+ * your multicast receiving applications run directly on this node.
+ *
+ * Return: -ENOMEM on memory allocation error or the number of
+ * items added to the mcast_list otherwise.
+ */
+#if IS_ENABLED(CONFIG_IPV6)
+static int
+batadv_mcast_mla_softif_get_ipv6(struct net_device *dev,
+				 struct hlist_head *mcast_list,
+				 struct batadv_mcast_mla_flags *flags)
+{
+	struct batadv_hw_addr *new;
+	struct inet6_dev *in6_dev;
+	u8 mcast_addr[ETH_ALEN];
+	struct ifmcaddr6 *pmc6;
+	int ret = 0;
+
+	if (flags->tvlv_flags & BATADV_MCAST_WANT_ALL_IPV6)
+		return 0;
+
+	in6_dev = in6_dev_get(dev);
+	if (!in6_dev)
+		return 0;
+
+	read_lock_bh(&in6_dev->lock);
+	for (pmc6 = in6_dev->mc_list; pmc6; pmc6 = pmc6->next) {
+		if (IPV6_ADDR_MC_SCOPE(&pmc6->mca_addr) <
+		    IPV6_ADDR_SCOPE_LINKLOCAL)
+			continue;
+
+		ipv6_eth_mc_map(&pmc6->mca_addr, mcast_addr);
+
+		if (batadv_mcast_mla_is_duplicate(mcast_addr, mcast_list))
+			continue;
+
+		new = kmalloc(sizeof(*new), GFP_ATOMIC);
+		if (!new) {
+			ret = -ENOMEM;
+			break;
+		}
+
+		ether_addr_copy(new->addr, mcast_addr);
+		hlist_add_head(&new->list, mcast_list);
+		ret++;
+	}
+	read_unlock_bh(&in6_dev->lock);
+	in6_dev_put(in6_dev);
+
+	return ret;
+}
+#else
+static inline int
+batadv_mcast_mla_softif_get_ipv6(struct net_device *dev,
+				 struct hlist_head *mcast_list,
+				 struct batadv_mcast_mla_flags *flags)
+{
+	return 0;
+}
+#endif
+
+/**
+ * batadv_mcast_mla_softif_get() - get softif multicast listeners
+ * @dev: the device to collect multicast addresses from
+ * @mcast_list: a list to put found addresses into
+ * @flags: flags indicating the new multicast state
+ *
+ * Collects multicast addresses of multicast listeners residing
+ * on this kernel on the given soft interface, dev, in
+ * the given mcast_list. In general, multicast listeners provided by
+ * your multicast receiving applications run directly on this node.
+ *
+ * If there is a bridge interface on top of dev, collects from that one
+ * instead. Just like with IP addresses and routes, multicast listeners
+ * will(/should) register to the bridge interface instead of an
+ * enslaved bat0.
+ *
+ * Return: -ENOMEM on memory allocation error or the number of
+ * items added to the mcast_list otherwise.
+ */
+static int
+batadv_mcast_mla_softif_get(struct net_device *dev,
+			    struct hlist_head *mcast_list,
+			    struct batadv_mcast_mla_flags *flags)
+{
+	struct net_device *bridge = batadv_mcast_get_bridge(dev);
+	int ret4, ret6 = 0;
+
+	if (bridge)
+		dev = bridge;
+
+	ret4 = batadv_mcast_mla_softif_get_ipv4(dev, mcast_list, flags);
+	if (ret4 < 0)
+		goto out;
+
+	ret6 = batadv_mcast_mla_softif_get_ipv6(dev, mcast_list, flags);
+	if (ret6 < 0) {
+		ret4 = 0;
+		goto out;
+	}
+
+out:
+	if (bridge)
+		dev_put(bridge);
+
+	return ret4 + ret6;
+}
+
 /**
  * batadv_mcast_mla_br_addr_cpy() - copy a bridge multicast address
  * @dst: destination to write to - a multicast MAC address
-- 
2.20.1

