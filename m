Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [78.46.248.236])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A84B15830
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue,  7 May 2019 05:48:53 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 62B9281E97;
	Tue,  7 May 2019 05:48:36 +0200 (CEST)
Received: from mail.aperture-lab.de (mail.aperture-lab.de
 [IPv6:2a01:4f8:171:314c::100:a1])
 by open-mesh.org (Postfix) with ESMTPS id 1DF2C80A40
 for <b.a.t.m.a.n@lists.open-mesh.org>; Tue,  7 May 2019 05:48:32 +0200 (CEST)
From: T_X <tux@c0d3.blue>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c0d3.blue; s=2018;
 t=1557200911; h=from:from:sender:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:openpgp:autocrypt;
 bh=lLduy3aujIF4DftSWi8HIfncHyZ2lFQpZ6+ZZYzxUu0=;
 b=Wx9rujmftJZ4s6Xxm94dU1Xvx225GxfcDrbmnSmSbHTxIIgK1dSG0gQuxqfdsAAcyVM74j
 +/xzMfywOGbLOuW+SoF/vjJvFnGpmYmDfdf5qOkOkNZ36cfYwQiMOf7TX9EdVNieW+SOLc
 xSDhaIibaKlBnSQkC9JuBlfvYy32crcUWwdXClKClYY7nIX7C24mHFLrwyiMBJe+orji36
 OlPdOBfGRDogZan7hhASAuPo+tZrEwc8IAk5EBf08fMDgnyg2PUj1e84JdxV5M0oPQLYHD
 jTTO4EgR/Qw/WQwFdrXMUDz72eY3vjz9kjVR9NNteOaYer1MjiSw9uF7vWiKdQ==
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: [PATCH v2 2/3] batman-adv: mcast: collect softif listeners from IP
 lists instead
Date: Tue,  7 May 2019 05:48:23 +0200
Message-Id: <20190507034824.3362-3-tux@c0d3.blue>
In-Reply-To: <20190507034824.3362-1-tux@c0d3.blue>
References: <20190507034824.3362-1-tux@c0d3.blue>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=c0d3.blue;
 s=2018; t=1557200911; h=from:from:sender:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:openpgp:autocrypt;
 bh=lLduy3aujIF4DftSWi8HIfncHyZ2lFQpZ6+ZZYzxUu0=;
 b=TgEJNF+MWdW/aNRAr8TGtdwCQj1HkVr+Gtguxe3mijbylG+jqmKXnwMN45Nj1kRIhR7GUi
 a2KpyNILafXFGPMB8cWXc64m6usDVWEeALIpsuowfTjyhaBhJzXGzuEaOpAc8sj/pYe0El
 3XCw/McLiK1cmzuOX4NMYVXqk+42fYRsazZzmkRh8fNnAca0jafAV6vmprI/XQLSS7/Lsp
 ArEU6muMueTgY86z92JH8xXzCi8h5QFW0QTyoks/zV0kSwttd+IAww2vRT5akKkD2XllEa
 AXYtIsBZgsxqbx1ubwg9sXv6G8zvSIZ1MvX81EsYQUCaxbknXmbCAIWvDDV0Wg==
ARC-Seal: i=1; s=2018; d=c0d3.blue; t=1557200911; a=rsa-sha256; cv=none;
 b=CzyztAoZhQh3mJ2PDqIvgLTw0Ln7Cl3JGcDa3CvccYVHk26JA67fCtah8lfu1pc4gLHAAf
 MQB5pIetRsZgCE5RQaR6UumewhrJiGNrP5DayRwe3cZRBoKGPQPsoYrGlnx9XmDjvR7FIe
 x/8F8f6PFTeBfhTfDZcrsgBYv8RBwsksV3aUmOmWyRxz4M9QHTOJA/hMwIhnf2Uu3XaYet
 pg6KWLp7UmxcakvnmCdk2Hf7Ng4ypMy0Kw594BM+pDU4jkugQqjUILoEABxl4wwyCf67Yc
 JSTEFKKmKXJ/dt57TmZImDKtukOhtoRvybH6YF26ITt3ZKYRDMMsZ6hT7+x6nw==
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
index af0e2ce8..2a975bc0 100644
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
+batadv_mcast_mla_softif_get_ipv6(struct batadv_priv *bat_priv,
+				 struct net_device *dev,
+				 struct hlist_head *mcast_list)
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

