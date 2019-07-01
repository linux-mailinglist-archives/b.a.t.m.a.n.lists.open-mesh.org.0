Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [IPv6:2a01:4f8:141:3341:78:46:248:236])
	by mail.lfdr.de (Postfix) with ESMTPS id 70FE83AC96
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 10 Jun 2019 02:46:09 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id ECF7082687;
	Mon, 10 Jun 2019 02:45:58 +0200 (CEST)
Received: from mail.aperture-lab.de (mail.aperture-lab.de [138.201.29.205])
 by open-mesh.org (Postfix) with ESMTPS id 1151881638
 for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 10 Jun 2019 02:45:42 +0200 (CEST)
From: =?UTF-8?q?Linus=20L=C3=BCssing?= <linus.luessing@c0d3.blue>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c0d3.blue; s=2018;
 t=1560127541;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=VJzZbiOPyvOL//aHaNRuWuA10r18W68iiwz7tsaiClk=;
 b=qejHZKZxh6+tZQ775h8NOMKLhYeU5zB3eMx9KH8u5Duw1mxMqkY1+iP/Q+/Spony/Yn75L
 z9oCgWHRbxLhk+LffinPFq5VKjc78/eRPEkjgQJ/734DmYF0pajC10nE4lDZmOfmYXa/1C
 H3n0MWhQ5F33XXexOdeYd1iXYYtw6aCp1FRoUivhJEi8zaIeIo4BnKkIMkD3xwtpUIK97v
 +HFtRvrQAkD30LSJBvq0widFAAcLjMic7jPry/h4RDBr7V4blPZiYFoIzXTxM9h24e8bhY
 aLhqWjXcoYPy/DcLaKHapP/Pe9mTfnqzkD8IPivHYO2hTI6pZCnEJUQHou1IFA==
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: [PATCH v4 1/2] batman-adv: mcast: detect,
 distribute and maintain multicast router presence
Date: Mon, 10 Jun 2019 02:45:34 +0200
Message-Id: <20190610004535.13725-2-linus.luessing@c0d3.blue>
In-Reply-To: <20190610004535.13725-1-linus.luessing@c0d3.blue>
References: <20190610004535.13725-1-linus.luessing@c0d3.blue>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=c0d3.blue;
 s=2018; t=1560127541;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=VJzZbiOPyvOL//aHaNRuWuA10r18W68iiwz7tsaiClk=;
 b=HCD4rb7MRbpVXdTl9PyfKWP4sWwiHVvQ0h3gfdVF2NfRh4P9A8l0Gpjolp38jh3HK+u9Au
 BVxNFmjhpRn80DlkM5uQq8BksPC99ajjcS8w/kxPsUb/iL8jvCZYk8Hj5mIqTyJ5aJWbqL
 lD5ufn7IMEim9h5jvmVeP2TXVWG8c7TuitRDcwsK+jDpP62IN6xW+0Au2mE73UMpO7xVdf
 8j70mBGM61xeTRdXJbgpDu37Slp/hXtvGAIJgNT/BVSwxeCyQ6VXtftPAwe6ih9rx3KRtS
 G2/E2yeWOFMlNTum3eBi3byr6EN2BYbxzH+tW+KsE9erTDF8utQ2z/odihqYaQ==
ARC-Seal: i=1; s=2018; d=c0d3.blue; t=1560127541; a=rsa-sha256; cv=none;
 b=Ze2OXnuiwyiprpenKkQZPn411QwMSZppYUcjZnADSxT5HrUbUGamMqrxU2gPhZRMcc4ZaH
 5sgDixr7oFMo1jNrLRPdUUxgn08p8pQ1e4mc/77BO1kErunsjQRjRpFrEUJ7BiwYzJkoe1
 4b7oSvXHJzqES5zhfcpUsDlXYFXXxjltGgRcr2l8e4REs8CQl5VtSaMNToC70wiM0jrj4S
 U26I0YYb9ajFkdKnYa5PeegvDsiqG3b10cl5MN+cTFlekaPNsbSxP5kix+ZPNpr6gjypIl
 eHs4AdMOGwUVVU5OcISFI+ahDAvvyrNVHnK3z+xkcFvFc7ADDcUVNuzd8Ue8JA==
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

To be able to apply our group aware multicast optimizations to packets
with a scope greater than link-local we need to not only keep track of
multicast listeners but also multicast routers.

With this patch a node detects the presence of multicast routers on
its segment by checking if
/proc/sys/net/ipv{4,6}/conf/<bat0|br0(bat)>/mc_forwarding is set for one
thing. This option is enabled by multicast routing daemons and needed
for the kernel's multicast routing tables to receive and route packets.

For another thing if a bridge is configured on top of bat0 then the
presence of an IPv6 multicast router behind this bridge is currently
detected by checking for an IPv6 multicast "All Routers Address"
(ff02::2). This should later be replaced by querying the bridge, which
performs proper, RFC4286 compliant Multicast Router Discovery (our
simplified approach includes more hosts than necessary, most notably
not just multicast routers but also unicast ones and is not applicable
for IPv4).

If a multicast router is detected then this is signalized via the new
BATADV_MCAST_WANT_ALL_RTR4 and BATADV_MCAST_WANT_ALL_RTR6
multicast tvlv flags (which are sent flipped over the wire for backwards
compatibility - so that old nodes will always have them "set").

Signed-off-by: Linus Lüssing <linus.luessing@c0d3.blue>
---
 include/uapi/linux/batadv_packet.h |   8 +
 net/batman-adv/multicast.c         | 404 +++++++++++++++++++++++++----
 net/batman-adv/originator.c        |   3 +-
 net/batman-adv/types.h             |  29 +++
 4 files changed, 392 insertions(+), 52 deletions(-)

diff --git a/include/uapi/linux/batadv_packet.h b/include/uapi/linux/batadv_packet.h
index 4ebc2135..23a43043 100644
--- a/include/uapi/linux/batadv_packet.h
+++ b/include/uapi/linux/batadv_packet.h
@@ -107,12 +107,20 @@ enum batadv_icmp_packettype {
  * @BATADV_MCAST_WANT_ALL_UNSNOOPABLES: we want all packets destined for
  *  224.0.0.0/24 or ff02::1
  * @BATADV_MCAST_WANT_ALL_IPV4: we want all IPv4 multicast packets
+ *  (both link-local and routeable ones)
  * @BATADV_MCAST_WANT_ALL_IPV6: we want all IPv6 multicast packets
+ *  (both link-local and routable ones)
+ * @BATADV_MCAST_WANT_NO_RTR4: we have no IPv4 multicast router and therefore
+ * only need routeable IPv4 multicast packets we signed up for explicitly
+ * @BATADV_MCAST_WANT_NO_RTR6: we have no IPv6 multicast router and therefore
+ * only need routeable IPv6 multicast packets we signed up for explicitly
  */
 enum batadv_mcast_flags {
 	BATADV_MCAST_WANT_ALL_UNSNOOPABLES	= 1UL << 0,
 	BATADV_MCAST_WANT_ALL_IPV4		= 1UL << 1,
 	BATADV_MCAST_WANT_ALL_IPV6		= 1UL << 2,
+	BATADV_MCAST_WANT_NO_RTR4		= 1UL << 3,
+	BATADV_MCAST_WANT_NO_RTR6		= 1UL << 4,
 };
 
 /* tt data subtypes */
diff --git a/net/batman-adv/multicast.c b/net/batman-adv/multicast.c
index 5940c2df..abf86041 100644
--- a/net/batman-adv/multicast.c
+++ b/net/batman-adv/multicast.c
@@ -73,26 +73,200 @@ static void batadv_mcast_start_timer(struct batadv_priv *bat_priv)
 }
 
 /**
- * batadv_mcast_has_bridge() - check whether the soft-iface is bridged
- * @bat_priv: the bat priv with all the soft interface information
+ * batadv_mcast_get_bridge() - get the bridge on top of the softif if it exists
+ * @soft_iface: netdev struct of the mesh interface
  *
- * Checks whether there is a bridge on top of our soft interface.
+ * If the given soft interface has a bridge on top then the refcount
+ * of the according net device is increased.
  *
- * Return: true if there is a bridge, false otherwise.
+ * Return: NULL if no such bridge exists. Otherwise the net device of the
+ * bridge.
  */
-static bool batadv_mcast_has_bridge(struct batadv_priv *bat_priv)
+static struct net_device *batadv_mcast_get_bridge(struct net_device *soft_iface)
 {
-	struct net_device *upper = bat_priv->soft_iface;
+	struct net_device *upper = soft_iface;
 
 	rcu_read_lock();
 	do {
 		upper = netdev_master_upper_dev_get_rcu(upper);
 	} while (upper && !(upper->priv_flags & IFF_EBRIDGE));
+
+	if (upper)
+		dev_hold(upper);
 	rcu_read_unlock();
 
 	return upper;
 }
 
+/**
+ * batadv_mcast_mla_rtr_flags_softif_get_ipv4() - get mcast router flags from
+ *  node for IPv4
+ * @dev: the interface to check
+ *
+ * Checks the presence of an IPv4 multicast router on this node.
+ *
+ * Caller needs to hold rcu read lock.
+ *
+ * Return: BATADV_NO_FLAGS if present, BATADV_MCAST_WANT_NO_RTR4 otherwise.
+ */
+static u8 batadv_mcast_mla_rtr_flags_softif_get_ipv4(struct net_device *dev)
+{
+	struct in_device *in_dev = __in_dev_get_rcu(dev);
+
+	if (in_dev && IN_DEV_MFORWARD(in_dev))
+		return BATADV_NO_FLAGS;
+	else
+		return BATADV_MCAST_WANT_NO_RTR4;
+}
+
+/**
+ * batadv_mcast_mla_rtr_flags_softif_get_ipv6() - get mcast router flags from
+ *  node for IPv6
+ * @dev: the interface to check
+ *
+ * Checks the presence of an IPv6 multicast router on this node.
+ *
+ * Caller needs to hold rcu read lock.
+ *
+ * Return: BATADV_NO_FLAGS if present, BATADV_MCAST_WANT_NO_RTR6 otherwise.
+ */
+#if IS_ENABLED(CONFIG_IPV6_MROUTE)
+static u8 batadv_mcast_mla_rtr_flags_softif_get_ipv6(struct net_device *dev)
+{
+	struct inet6_dev *in6_dev = __in6_dev_get(dev);
+
+	if (in6_dev && in6_dev->cnf.mc_forwarding)
+		return BATADV_NO_FLAGS;
+	else
+		return BATADV_MCAST_WANT_NO_RTR6;
+}
+#else
+static inline u8
+batadv_mcast_mla_rtr_flags_softif_get_ipv6(struct net_device *dev)
+{
+	return BATADV_MCAST_WANT_NO_RTR6;
+}
+#endif
+
+/**
+ * batadv_mcast_mla_rtr_flags_softif_get() - get mcast router flags from node
+ * @bat_priv: the bat priv with all the soft interface information
+ * @bridge: bridge interface on top of the soft_iface if present,
+ *  otherwise pass NULL
+ *
+ * Checks the presence of IPv4 and IPv6 multicast routers on this
+ * node.
+ *
+ * Return:
+ *	BATADV_NO_FLAGS: Both an IPv4 and IPv6 multicast router is present
+ *	BATADV_MCAST_WANT_NO_RTR4: No IPv4 multicast router is present
+ *	BATADV_MCAST_WANT_NO_RTR6: No IPv6 multicast router is present
+ *	The former two OR'd: no multicast router is present
+ */
+static u8 batadv_mcast_mla_rtr_flags_softif_get(struct batadv_priv *bat_priv,
+						struct net_device *bridge)
+{
+	struct net_device *dev = bridge ? bridge : bat_priv->soft_iface;
+	u8 flags = BATADV_NO_FLAGS;
+
+	rcu_read_lock();
+
+	flags |= batadv_mcast_mla_rtr_flags_softif_get_ipv4(dev);
+	flags |= batadv_mcast_mla_rtr_flags_softif_get_ipv6(dev);
+
+	rcu_read_unlock();
+
+	return flags;
+}
+
+/**
+ * batadv_mcast_mla_rtr_flags_bridge_get() - get mcast router flags from bridge
+ * @bat_priv: the bat priv with all the soft interface information
+ * @bridge: bridge interface on top of the soft_iface if present,
+ *  otherwise pass NULL
+ *
+ * Checks the presence of IPv4 and IPv6 multicast routers behind a bridge.
+ *
+ * Return:
+ *	BATADV_NO_FLAGS: Both an IPv4 and IPv6 multicast router is present
+ *	BATADV_MCAST_WANT_NO_RTR4: No IPv4 multicast router is present
+ *	BATADV_MCAST_WANT_NO_RTR6: No IPv6 multicast router is present
+ *	The former two OR'd: no multicast router is present
+ */
+#if IS_ENABLED(CONFIG_IPV6)
+static u8 batadv_mcast_mla_rtr_flags_bridge_get(struct batadv_priv *bat_priv,
+						struct net_device *bridge)
+{
+	struct list_head bridge_mcast_list = LIST_HEAD_INIT(bridge_mcast_list);
+	struct net_device *dev = bat_priv->soft_iface;
+	struct br_ip_list *br_ip_entry, *tmp;
+	u8 flags = BATADV_MCAST_WANT_NO_RTR6;
+	int ret;
+
+	if (!bridge)
+		return BATADV_MCAST_WANT_NO_RTR4 | BATADV_MCAST_WANT_NO_RTR6;
+
+	/* TODO: ask the bridge if a multicast router is present (the bridge
+	 * is capable of performing proper RFC4286 multicast multicast router
+	 * discovery) instead of searching for a ff02::2 listener here
+	 */
+	ret = br_multicast_list_adjacent(dev, &bridge_mcast_list);
+	if (ret < 0)
+		return BATADV_NO_FLAGS;
+
+	list_for_each_entry_safe(br_ip_entry, tmp, &bridge_mcast_list, list) {
+		/* the bridge snooping does not maintain IPv4 link-local
+		 * addresses - therefore we won't find any IPv4 multicast router
+		 * address here, only IPv6 ones
+		 */
+		if (br_ip_entry->addr.proto == htons(ETH_P_IPV6) &&
+		    ipv6_addr_is_ll_all_routers(&br_ip_entry->addr.u.ip6))
+			flags &= ~BATADV_MCAST_WANT_NO_RTR6;
+
+		list_del(&br_ip_entry->list);
+		kfree(br_ip_entry);
+	}
+
+	return flags;
+}
+#else
+static inline u8
+batadv_mcast_mla_rtr_flags_bridge_get(struct batadv_priv *bat_priv,
+				      struct net_device *bridge)
+{
+	if (bridge)
+		return BATADV_NO_FLAGS;
+	else
+		return BATADV_MCAST_WANT_NO_RTR4 | BATADV_MCAST_WANT_NO_RTR6;
+}
+#endif
+
+/**
+ * batadv_mcast_mla_rtr_flags_get() - get multicast router flags
+ * @bat_priv: the bat priv with all the soft interface information
+ * @bridge: bridge interface on top of the soft_iface if present,
+ *  otherwise pass NULL
+ *
+ * Checks the presence of IPv4 and IPv6 multicast routers on this
+ * node or behind its bridge.
+ *
+ * Return:
+ *	BATADV_NO_FLAGS: Both an IPv4 and IPv6 multicast router is present
+ *	BATADV_MCAST_WANT_NO_RTR4: No IPv4 multicast router is present
+ *	BATADV_MCAST_WANT_NO_RTR6: No IPv6 multicast router is present
+ *	The former two OR'd: no multicast router is present
+ */
+static u8 batadv_mcast_mla_rtr_flags_get(struct batadv_priv *bat_priv,
+					 struct net_device *bridge)
+{
+	u8 flags = BATADV_MCAST_WANT_NO_RTR4 | BATADV_MCAST_WANT_NO_RTR6;
+
+	flags &= batadv_mcast_mla_rtr_flags_softif_get(bat_priv, bridge);
+	flags &= batadv_mcast_mla_rtr_flags_bridge_get(bat_priv, bridge);
+
+	return flags;
+}
+
 /**
  * batadv_mcast_mla_flags_get() - get the new multicast flags
  * @bat_priv: the bat priv with all the soft interface information
@@ -106,13 +280,20 @@ batadv_mcast_mla_flags_get(struct batadv_priv *bat_priv)
 	struct net_device *dev = bat_priv->soft_iface;
 	struct batadv_mcast_querier_state *qr4, *qr6;
 	struct batadv_mcast_mla_flags mla_flags;
+	struct net_device *bridge;
+
+	bridge = batadv_mcast_get_bridge(dev);
 
 	memset(&mla_flags, 0, sizeof(mla_flags));
 	mla_flags.enabled = 1;
+	mla_flags.tvlv_flags |= batadv_mcast_mla_rtr_flags_get(bat_priv,
+							       bridge);
 
-	if (!batadv_mcast_has_bridge(bat_priv))
+	if (!bridge)
 		return mla_flags;
 
+	dev_put(bridge);
+
 	mla_flags.bridged = 1;
 	qr4 = &mla_flags.querier_ipv4;
 	qr6 = &mla_flags.querier_ipv6;
@@ -146,32 +327,6 @@ batadv_mcast_mla_flags_get(struct batadv_priv *bat_priv)
 	return mla_flags;
 }
 
-/**
- * batadv_mcast_get_bridge() - get the bridge on top of the softif if it exists
- * @soft_iface: netdev struct of the mesh interface
- *
- * If the given soft interface has a bridge on top then the refcount
- * of the according net device is increased.
- *
- * Return: NULL if no such bridge exists. Otherwise the net device of the
- * bridge.
- */
-static struct net_device *batadv_mcast_get_bridge(struct net_device *soft_iface)
-{
-	struct net_device *upper = soft_iface;
-
-	rcu_read_lock();
-	do {
-		upper = netdev_master_upper_dev_get_rcu(upper);
-	} while (upper && !(upper->priv_flags & IFF_EBRIDGE));
-
-	if (upper)
-		dev_hold(upper);
-	rcu_read_unlock();
-
-	return upper;
-}
-
 /**
  * batadv_mcast_mla_is_duplicate() - check whether an address is in a list
  * @mcast_addr: the multicast address to check
@@ -231,6 +386,10 @@ batadv_mcast_mla_softif_get_ipv4(struct net_device *dev,
 		    ipv4_is_local_multicast(pmc->multiaddr))
 			continue;
 
+		if (!(flags->tvlv_flags & BATADV_MCAST_WANT_NO_RTR4) &&
+		    !ipv4_is_local_multicast(pmc->multiaddr))
+			continue;
+
 		ip_eth_mc_map(pmc->multiaddr, mcast_addr);
 
 		if (batadv_mcast_mla_is_duplicate(mcast_addr, mcast_list))
@@ -295,6 +454,11 @@ batadv_mcast_mla_softif_get_ipv6(struct net_device *dev,
 		    ipv6_addr_is_ll_all_nodes(&pmc6->mca_addr))
 			continue;
 
+		if (!(flags->tvlv_flags & BATADV_MCAST_WANT_NO_RTR6) &&
+		    IPV6_ADDR_MC_SCOPE(&pmc6->mca_addr) >
+		    IPV6_ADDR_SCOPE_LINKLOCAL)
+			continue;
+
 		ipv6_eth_mc_map(&pmc6->mca_addr, mcast_addr);
 
 		if (batadv_mcast_mla_is_duplicate(mcast_addr, mcast_list))
@@ -436,6 +600,10 @@ static int batadv_mcast_mla_bridge_get(struct net_device *dev,
 			if (tvlv_flags & BATADV_MCAST_WANT_ALL_UNSNOOPABLES &&
 			    ipv4_is_local_multicast(br_ip_entry->addr.u.ip4))
 				continue;
+
+			if (!(tvlv_flags & BATADV_MCAST_WANT_NO_RTR4) &&
+			    !ipv4_is_local_multicast(br_ip_entry->addr.u.ip4))
+				continue;
 		}
 
 #if IS_ENABLED(CONFIG_IPV6)
@@ -446,6 +614,11 @@ static int batadv_mcast_mla_bridge_get(struct net_device *dev,
 			if (tvlv_flags & BATADV_MCAST_WANT_ALL_UNSNOOPABLES &&
 			    ipv6_addr_is_ll_all_nodes(&br_ip_entry->addr.u.ip6))
 				continue;
+
+			if (!(tvlv_flags & BATADV_MCAST_WANT_NO_RTR6) &&
+			    IPV6_ADDR_MC_SCOPE(&br_ip_entry->addr.u.ip6) >
+			    IPV6_ADDR_SCOPE_LINKLOCAL)
+				continue;
 		}
 #endif
 
@@ -656,19 +829,23 @@ static void batadv_mcast_flags_log(struct batadv_priv *bat_priv, u8 flags)
 {
 	bool old_enabled = bat_priv->mcast.mla_flags.enabled;
 	u8 old_flags = bat_priv->mcast.mla_flags.tvlv_flags;
-	char str_old_flags[] = "[...]";
+	char str_old_flags[] = "[.... . ]";
 
-	sprintf(str_old_flags, "[%c%c%c]",
+	sprintf(str_old_flags, "[%c%c%c%s%s]",
 		(old_flags & BATADV_MCAST_WANT_ALL_UNSNOOPABLES) ? 'U' : '.',
 		(old_flags & BATADV_MCAST_WANT_ALL_IPV4) ? '4' : '.',
-		(old_flags & BATADV_MCAST_WANT_ALL_IPV6) ? '6' : '.');
+		(old_flags & BATADV_MCAST_WANT_ALL_IPV6) ? '6' : '.',
+		!(old_flags & BATADV_MCAST_WANT_NO_RTR4) ? "R4" : ". ",
+		!(old_flags & BATADV_MCAST_WANT_NO_RTR6) ? "R6" : ". ");
 
 	batadv_dbg(BATADV_DBG_MCAST, bat_priv,
-		   "Changing multicast flags from '%s' to '[%c%c%c]'\n",
+		   "Changing multicast flags from '%s' to '[%c%c%c%s%s]'\n",
 		   old_enabled ? str_old_flags : "<undefined>",
 		   (flags & BATADV_MCAST_WANT_ALL_UNSNOOPABLES) ? 'U' : '.',
 		   (flags & BATADV_MCAST_WANT_ALL_IPV4) ? '4' : '.',
-		   (flags & BATADV_MCAST_WANT_ALL_IPV6) ? '6' : '.');
+		   (flags & BATADV_MCAST_WANT_ALL_IPV6) ? '6' : '.',
+		   !(flags & BATADV_MCAST_WANT_NO_RTR4) ? "R4" : ". ",
+		   !(flags & BATADV_MCAST_WANT_NO_RTR6) ? "R6" : ". ");
 }
 
 /**
@@ -1460,6 +1637,127 @@ static void batadv_mcast_want_ipv6_update(struct batadv_priv *bat_priv,
 	}
 }
 
+/**
+ * batadv_mcast_want_rtr4_update() - update want-all-rtr4 counter and list
+ * @bat_priv: the bat priv with all the soft interface information
+ * @orig: the orig_node which multicast state might have changed of
+ * @mcast_flags: flags indicating the new multicast state
+ *
+ * If the BATADV_MCAST_WANT_NO_RTR4 flag of this originator, orig, has
+ * toggled then this method updates counter and list accordingly.
+ *
+ * Caller needs to hold orig->mcast_handler_lock.
+ */
+static void batadv_mcast_want_rtr4_update(struct batadv_priv *bat_priv,
+					  struct batadv_orig_node *orig,
+					  u8 mcast_flags)
+{
+	struct hlist_node *node = &orig->mcast_want_all_rtr4_node;
+	struct hlist_head *head = &bat_priv->mcast.want_all_rtr4_list;
+
+	lockdep_assert_held(&orig->mcast_handler_lock);
+
+	/* switched from flag set to unset */
+	if (!(mcast_flags & BATADV_MCAST_WANT_NO_RTR4) &&
+	    orig->mcast_flags & BATADV_MCAST_WANT_NO_RTR4) {
+		atomic_inc(&bat_priv->mcast.num_want_all_rtr4);
+
+		spin_lock_bh(&bat_priv->mcast.want_lists_lock);
+		/* flag checks above + mcast_handler_lock prevents this */
+		WARN_ON(!hlist_unhashed(node));
+
+		hlist_add_head_rcu(node, head);
+		spin_unlock_bh(&bat_priv->mcast.want_lists_lock);
+	/* switched from flag unset to set */
+	} else if (mcast_flags & BATADV_MCAST_WANT_NO_RTR4 &&
+		   !(orig->mcast_flags & BATADV_MCAST_WANT_NO_RTR4)) {
+		atomic_dec(&bat_priv->mcast.num_want_all_rtr4);
+
+		spin_lock_bh(&bat_priv->mcast.want_lists_lock);
+		/* flag checks above + mcast_handler_lock prevents this */
+		WARN_ON(hlist_unhashed(node));
+
+		hlist_del_init_rcu(node);
+		spin_unlock_bh(&bat_priv->mcast.want_lists_lock);
+	}
+}
+
+/**
+ * batadv_mcast_want_rtr6_update() - update want-all-rtr6 counter and list
+ * @bat_priv: the bat priv with all the soft interface information
+ * @orig: the orig_node which multicast state might have changed of
+ * @mcast_flags: flags indicating the new multicast state
+ *
+ * If the BATADV_MCAST_WANT_NO_RTR6 flag of this originator, orig, has
+ * toggled then this method updates counter and list accordingly.
+ *
+ * Caller needs to hold orig->mcast_handler_lock.
+ */
+static void batadv_mcast_want_rtr6_update(struct batadv_priv *bat_priv,
+					  struct batadv_orig_node *orig,
+					  u8 mcast_flags)
+{
+	struct hlist_node *node = &orig->mcast_want_all_rtr6_node;
+	struct hlist_head *head = &bat_priv->mcast.want_all_rtr6_list;
+
+	lockdep_assert_held(&orig->mcast_handler_lock);
+
+	/* switched from flag set to unset */
+	if (!(mcast_flags & BATADV_MCAST_WANT_NO_RTR6) &&
+	    orig->mcast_flags & BATADV_MCAST_WANT_NO_RTR6) {
+		atomic_inc(&bat_priv->mcast.num_want_all_rtr6);
+
+		spin_lock_bh(&bat_priv->mcast.want_lists_lock);
+		/* flag checks above + mcast_handler_lock prevents this */
+		WARN_ON(!hlist_unhashed(node));
+
+		hlist_add_head_rcu(node, head);
+		spin_unlock_bh(&bat_priv->mcast.want_lists_lock);
+	/* switched from flag unset to set */
+	} else if (mcast_flags & BATADV_MCAST_WANT_NO_RTR6 &&
+		   !(orig->mcast_flags & BATADV_MCAST_WANT_NO_RTR6)) {
+		atomic_dec(&bat_priv->mcast.num_want_all_rtr6);
+
+		spin_lock_bh(&bat_priv->mcast.want_lists_lock);
+		/* flag checks above + mcast_handler_lock prevents this */
+		WARN_ON(hlist_unhashed(node));
+
+		hlist_del_init_rcu(node);
+		spin_unlock_bh(&bat_priv->mcast.want_lists_lock);
+	}
+}
+
+/**
+ * batadv_mcast_tvlv_flags_get() - get multicast flags from an OGM TVLV
+ * @enabled: whether the originator has multicast TVLV support enabled
+ * @tvlv_value: tvlv buffer containing the multicast flags
+ * @tvlv_value_len: tvlv buffer length
+ *
+ * Return: multicast flags for the given tvlv buffer
+ */
+static u8
+batadv_mcast_tvlv_flags_get(bool enabled, void *tvlv_value, u16 tvlv_value_len)
+{
+	u8 mcast_flags = BATADV_NO_FLAGS;
+
+	if (enabled && tvlv_value && tvlv_value_len >= sizeof(mcast_flags))
+		mcast_flags = *(u8 *)tvlv_value;
+
+	if (!enabled) {
+		mcast_flags |= BATADV_MCAST_WANT_ALL_IPV4;
+		mcast_flags |= BATADV_MCAST_WANT_ALL_IPV6;
+	}
+
+	/* remove redundant flags to avoid sending duplicate packets later */
+	if (mcast_flags & BATADV_MCAST_WANT_ALL_IPV4)
+		mcast_flags |= BATADV_MCAST_WANT_NO_RTR4;
+
+	if (mcast_flags & BATADV_MCAST_WANT_ALL_IPV6)
+		mcast_flags |= BATADV_MCAST_WANT_NO_RTR6;
+
+	return mcast_flags;
+}
+
 /**
  * batadv_mcast_tvlv_ogm_handler() - process incoming multicast tvlv container
  * @bat_priv: the bat priv with all the soft interface information
@@ -1475,16 +1773,10 @@ static void batadv_mcast_tvlv_ogm_handler(struct batadv_priv *bat_priv,
 					  u16 tvlv_value_len)
 {
 	bool orig_mcast_enabled = !(flags & BATADV_TVLV_HANDLER_OGM_CIFNOTFND);
-	u8 mcast_flags = BATADV_NO_FLAGS;
+	u8 mcast_flags;
 
-	if (orig_mcast_enabled && tvlv_value &&
-	    tvlv_value_len >= sizeof(mcast_flags))
-		mcast_flags = *(u8 *)tvlv_value;
-
-	if (!orig_mcast_enabled) {
-		mcast_flags |= BATADV_MCAST_WANT_ALL_IPV4;
-		mcast_flags |= BATADV_MCAST_WANT_ALL_IPV6;
-	}
+	mcast_flags = batadv_mcast_tvlv_flags_get(orig_mcast_enabled,
+						  tvlv_value, tvlv_value_len);
 
 	spin_lock_bh(&orig->mcast_handler_lock);
 
@@ -1501,6 +1793,8 @@ static void batadv_mcast_tvlv_ogm_handler(struct batadv_priv *bat_priv,
 	batadv_mcast_want_unsnoop_update(bat_priv, orig, mcast_flags);
 	batadv_mcast_want_ipv4_update(bat_priv, orig, mcast_flags);
 	batadv_mcast_want_ipv6_update(bat_priv, orig, mcast_flags);
+	batadv_mcast_want_rtr4_update(bat_priv, orig, mcast_flags);
+	batadv_mcast_want_rtr6_update(bat_priv, orig, mcast_flags);
 
 	orig->mcast_flags = mcast_flags;
 	spin_unlock_bh(&orig->mcast_handler_lock);
@@ -1550,10 +1844,12 @@ static void batadv_mcast_flags_print_header(struct batadv_priv *bat_priv,
 		shadowing6 = '?';
 	}
 
-	seq_printf(seq, "Multicast flags (own flags: [%c%c%c])\n",
+	seq_printf(seq, "Multicast flags (own flags: [%c%c%c%s%s])\n",
 		   (flags & BATADV_MCAST_WANT_ALL_UNSNOOPABLES) ? 'U' : '.',
 		   (flags & BATADV_MCAST_WANT_ALL_IPV4) ? '4' : '.',
-		   (flags & BATADV_MCAST_WANT_ALL_IPV6) ? '6' : '.');
+		   (flags & BATADV_MCAST_WANT_ALL_IPV6) ? '6' : '.',
+		   !(flags & BATADV_MCAST_WANT_NO_RTR4) ? "R4" : ". ",
+		   !(flags & BATADV_MCAST_WANT_NO_RTR6) ? "R6" : ". ");
 	seq_printf(seq, "* Bridged [U]\t\t\t\t%c\n", bridged ? 'U' : '.');
 	seq_printf(seq, "* No IGMP/MLD Querier [4/6]:\t\t%c/%c\n",
 		   querier4, querier6);
@@ -1607,13 +1903,17 @@ int batadv_mcast_flags_seq_print_text(struct seq_file *seq, void *offset)
 
 			flags = orig_node->mcast_flags;
 
-			seq_printf(seq, "%pM [%c%c%c]\n", orig_node->orig,
+			seq_printf(seq, "%pM [%c%c%c%s%s]\n", orig_node->orig,
 				   (flags & BATADV_MCAST_WANT_ALL_UNSNOOPABLES)
 				   ? 'U' : '.',
 				   (flags & BATADV_MCAST_WANT_ALL_IPV4)
 				   ? '4' : '.',
 				   (flags & BATADV_MCAST_WANT_ALL_IPV6)
-				   ? '6' : '.');
+				   ? '6' : '.',
+				   !(flags & BATADV_MCAST_WANT_NO_RTR4)
+				   ? "R4" : ". ",
+				   !(flags & BATADV_MCAST_WANT_NO_RTR6)
+				   ? "R6" : ". ");
 		}
 		rcu_read_unlock();
 	}
@@ -1887,6 +2187,8 @@ void batadv_mcast_purge_orig(struct batadv_orig_node *orig)
 	batadv_mcast_want_unsnoop_update(bat_priv, orig, BATADV_NO_FLAGS);
 	batadv_mcast_want_ipv4_update(bat_priv, orig, BATADV_NO_FLAGS);
 	batadv_mcast_want_ipv6_update(bat_priv, orig, BATADV_NO_FLAGS);
+	batadv_mcast_want_rtr4_update(bat_priv, orig, BATADV_NO_FLAGS);
+	batadv_mcast_want_rtr6_update(bat_priv, orig, BATADV_NO_FLAGS);
 
 	spin_unlock_bh(&orig->mcast_handler_lock);
 }
diff --git a/net/batman-adv/originator.c b/net/batman-adv/originator.c
index 45db798a..d53cba34 100644
--- a/net/batman-adv/originator.c
+++ b/net/batman-adv/originator.c
@@ -1043,7 +1043,8 @@ struct batadv_orig_node *batadv_orig_node_new(struct batadv_priv *bat_priv,
 	orig_node->bcast_seqno_reset = reset_time;
 
 #ifdef CONFIG_BATMAN_ADV_MCAST
-	orig_node->mcast_flags = BATADV_NO_FLAGS;
+	orig_node->mcast_flags = BATADV_MCAST_WANT_NO_RTR4;
+	orig_node->mcast_flags |= BATADV_MCAST_WANT_NO_RTR6;
 	INIT_HLIST_NODE(&orig_node->mcast_want_all_unsnoopables_node);
 	INIT_HLIST_NODE(&orig_node->mcast_want_all_ipv4_node);
 	INIT_HLIST_NODE(&orig_node->mcast_want_all_ipv6_node);
diff --git a/net/batman-adv/types.h b/net/batman-adv/types.h
index e5d3809d..ab55daeb 100644
--- a/net/batman-adv/types.h
+++ b/net/batman-adv/types.h
@@ -404,6 +404,17 @@ struct batadv_orig_node {
 	 *  list
 	 */
 	struct hlist_node mcast_want_all_ipv6_node;
+
+	/**
+	 * @mcast_want_all_rtr4_node: a list node for the mcast.want_all_rtr4
+	 *  list
+	 */
+	struct hlist_node mcast_want_all_rtr4_node;
+	/**
+	 * @mcast_want_all_rtr6_node: a list node for the mcast.want_all_rtr6
+	 *  list
+	 */
+	struct hlist_node mcast_want_all_rtr6_node;
 #endif
 
 	/** @capabilities: announced capabilities of this originator */
@@ -1218,6 +1229,18 @@ struct batadv_priv_mcast {
 	 */
 	struct hlist_head want_all_ipv6_list;
 
+	/**
+	 * @want_all_rtr4_list: a list of orig_nodes wanting all routeable IPv4
+	 *  multicast traffic
+	 */
+	struct hlist_head want_all_rtr4_list;
+
+	/**
+	 * @want_all_rtr6_list: a list of orig_nodes wanting all routeable IPv6
+	 *  multicast traffic
+	 */
+	struct hlist_head want_all_rtr6_list;
+
 	/**
 	 * @mla_flags: flags for the querier, bridge and tvlv state
 	 */
@@ -1240,6 +1263,12 @@ struct batadv_priv_mcast {
 	/** @num_want_all_ipv6: counter for items in want_all_ipv6_list */
 	atomic_t num_want_all_ipv6;
 
+	/** @num_want_all_rtr4: counter for items in want_all_rtr4_list */
+	atomic_t num_want_all_rtr4;
+
+	/** @num_want_all_rtr6: counter for items in want_all_rtr6_list */
+	atomic_t num_want_all_rtr6;
+
 	/**
 	 * @want_lists_lock: lock for protecting modifications to mcasts
 	 *  want_all_{unsnoopables,ipv4,ipv6}_list (traversals are rcu-locked)
-- 
2.20.1

