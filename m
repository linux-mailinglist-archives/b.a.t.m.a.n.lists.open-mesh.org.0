Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [78.46.248.236])
	by mail.lfdr.de (Postfix) with ESMTPS id 9454E1582E
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue,  7 May 2019 05:48:42 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 1C37981C80;
	Tue,  7 May 2019 05:48:35 +0200 (CEST)
Received: from mail.aperture-lab.de (mail.aperture-lab.de
 [IPv6:2a01:4f8:171:314c::100:a1])
 by open-mesh.org (Postfix) with ESMTPS id EAD8080A40
 for <b.a.t.m.a.n@lists.open-mesh.org>; Tue,  7 May 2019 05:48:30 +0200 (CEST)
From: T_X <tux@c0d3.blue>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c0d3.blue; s=2018;
 t=1557200910; h=from:from:sender:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:openpgp:autocrypt;
 bh=S+VrC/JN87lC1CYw7Xd5eBjCY9p9Zc/K5irHHKpySXA=;
 b=O6NEcK/gZVlTORjxCa9PS8QiN+fJ073sY/gdsbBG5IzHRuzZt025DHcuhQqYmwVphne/cA
 D41H96Z9JyQOqBPqh6KhbpgNszOpw+CExCussB8vJgI3W6F9LYEKIcYUucRiRpo1+vJUaK
 G2ushgIP2SCSVhS7aK8c9O2utxepYbWpt/GS6DdLvF6t3dxpzaMGKLLrYE8U9oM6TJvLUT
 /Hao03IeFujz4zfuK3G1bbyhEyh2uWgSTR/hfBjOMmWM5n5Av42RzZBg2527OCifcR9+4A
 Hmm4b+8XxcuUVAAOnEYNng9CtVlMPoi15+Cn1/5s39BMJRIkLCkGR1COFeM3Iw==
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: [PATCH v2 1/3] batman-adv: mcast: shorten multicast tt/tvlv worker
 spinlock section
Date: Tue,  7 May 2019 05:48:22 +0200
Message-Id: <20190507034824.3362-2-tux@c0d3.blue>
In-Reply-To: <20190507034824.3362-1-tux@c0d3.blue>
References: <20190507034824.3362-1-tux@c0d3.blue>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=c0d3.blue;
 s=2018; t=1557200910; h=from:from:sender:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:openpgp:autocrypt;
 bh=S+VrC/JN87lC1CYw7Xd5eBjCY9p9Zc/K5irHHKpySXA=;
 b=ETqKDGk5ZhGsMPTslqhcziohqhBM2pheNQbyOZMPJYKVJMppeiKeDMFhdROoh7k5TChLqN
 dG+jCR88SIorkgyGVqrei4hSS5w1uC7wSWskvXekMXB3EcEt/XD1uTQG5BCJhfrqztrMJU
 OPzez5aIMlXlansz1wYquY9ZjyX++j0Uq1q7rEkJDB5i38oDESdTpyHBOrDIl92cBshUGq
 kzcsjjlEnkVboyr75cH2kkfGzAU22uvUQXL19kcKb6+1UCAaBSRrS+DXzxb/EaD3OSqKRl
 3Ltbzzh72yDMj8DmTpADHp/R6HBvnXvecq2OuVTabdxTlQjTEsGruWk+GcBSIw==
ARC-Seal: i=1; s=2018; d=c0d3.blue; t=1557200910; a=rsa-sha256; cv=none;
 b=UgLZiX8bqIOYygbypeGuaC3VErYG07yewjntGoNZKOprJJmv9o8I3s60pLuI++5E9WLCrm
 DRgt5nCOINPRZUSyUdvf/Mdzp+ccYocz82GjBfarVw4XFibLQOhrsKswfh7ChjR+wv1QEN
 fVp+EsYt4mBMvd+Tn8T4sgxIXbPP8bxz6rdLHik3/cPaSU/OvnDHLm4g0tmSYdaFAvfobJ
 A0JgK8x4vxGmekQoYQVJoYkTPhTfJtUCuGp/6Xf913yrCcI2wmzLE4Q1atYQwC2Y4nwNK8
 GToLMFLRsBTRHpRrt46udHnbJ5uuZOFX9hYrTQ1mI51GL0rtmZ1EYVGbRkh9Rg==
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

It is not necessary to hold the mla_lock spinlock during the whole
multicast tt/tvlv worker callback. Just holding it during the checks and
updates of the bat_priv stored multicast flags and mla_list is enough.

Therefore this patch splits batadv_mcast_mla_tvlv_update() in two:
batadv_mcast_mla_flags_get() at the beginning of the worker to gather
and calculate the new multicast flags, which does not need any locking
as it neither reads from nor writes to bat_priv->mcast.

And batadv_mcast_mla_flags_update() at the end of the worker which
commits the newly calculated flags and lists to bat_priv->mcast and
therefore needs the lock.

Signed-off-by: Linus Lüssing <linus.luessing@c0d3.blue>
---
 net/batman-adv/multicast.c      | 274 ++++++++++++++++----------------
 net/batman-adv/soft-interface.c |   5 -
 net/batman-adv/types.h          |  38 +++--
 3 files changed, 165 insertions(+), 152 deletions(-)

diff --git a/net/batman-adv/multicast.c b/net/batman-adv/multicast.c
index ec54e236..af0e2ce8 100644
--- a/net/batman-adv/multicast.c
+++ b/net/batman-adv/multicast.c
@@ -71,6 +71,80 @@ static void batadv_mcast_start_timer(struct batadv_priv *bat_priv)
 			   msecs_to_jiffies(BATADV_MCAST_WORK_PERIOD));
 }
 
+/**
+ * batadv_mcast_has_bridge() - check whether the soft-iface is bridged
+ * @bat_priv: the bat priv with all the soft interface information
+ *
+ * Checks whether there is a bridge on top of our soft interface.
+ *
+ * Return: true if there is a bridge, false otherwise.
+ */
+static bool batadv_mcast_has_bridge(struct batadv_priv *bat_priv)
+{
+	struct net_device *upper = bat_priv->soft_iface;
+
+	rcu_read_lock();
+	do {
+		upper = netdev_master_upper_dev_get_rcu(upper);
+	} while (upper && !(upper->priv_flags & IFF_EBRIDGE));
+	rcu_read_unlock();
+
+	return upper;
+}
+
+/**
+ * batadv_mcast_mla_flags_get() - get the new multicast flags
+ * @bat_priv: the bat priv with all the soft interface information
+ *
+ * Return: A set of flags for the current/next TVLV, querier and
+ * bridge state.
+ */
+static struct batadv_mcast_mla_flags
+batadv_mcast_mla_flags_get(struct batadv_priv *bat_priv)
+{
+	struct net_device *dev = bat_priv->soft_iface;
+	struct batadv_mcast_querier_state *qr4, *qr6;
+	struct batadv_mcast_mla_flags mla_flags;
+
+	memset(&mla_flags, 0, sizeof(mla_flags));
+	mla_flags.enabled = 1;
+
+	if (!batadv_mcast_has_bridge(bat_priv))
+		return mla_flags;
+
+	mla_flags.bridged = 1;
+	qr4 = &mla_flags.querier_ipv4;
+	qr6 = &mla_flags.querier_ipv6;
+
+	if (!IS_ENABLED(CONFIG_BRIDGE_IGMP_SNOOPING))
+		pr_warn_once("No bridge IGMP snooping compiled - multicast optimizations disabled\n");
+
+	qr4->exists = br_multicast_has_querier_anywhere(dev, ETH_P_IP);
+	qr4->shadowing = br_multicast_has_querier_adjacent(dev, ETH_P_IP);
+
+	qr6->exists = br_multicast_has_querier_anywhere(dev, ETH_P_IPV6);
+	qr6->shadowing = br_multicast_has_querier_adjacent(dev, ETH_P_IPV6);
+
+	mla_flags.tvlv_flags |= BATADV_MCAST_WANT_ALL_UNSNOOPABLES;
+
+	/* 1) If no querier exists at all, then multicast listeners on
+	 *    our local TT clients behind the bridge will keep silent.
+	 * 2) If the selected querier is on one of our local TT clients,
+	 *    behind the bridge, then this querier might shadow multicast
+	 *    listeners on our local TT clients, behind this bridge.
+	 *
+	 * In both cases, we will signalize other batman nodes that
+	 * we need all multicast traffic of the according protocol.
+	 */
+	if (!qr4->exists || qr4->shadowing)
+		mla_flags.tvlv_flags |= BATADV_MCAST_WANT_ALL_IPV4;
+
+	if (!qr6->exists || qr6->shadowing)
+		mla_flags.tvlv_flags |= BATADV_MCAST_WANT_ALL_IPV6;
+
+	return mla_flags;
+}
+
 /**
  * batadv_mcast_get_bridge() - get the bridge on top of the softif if it exists
  * @soft_iface: netdev struct of the mesh interface
@@ -127,9 +201,9 @@ static bool batadv_mcast_addr_is_ipv6(const u8 *addr)
 
 /**
  * batadv_mcast_mla_softif_get() - get softif multicast listeners
- * @bat_priv: the bat priv with all the soft interface information
  * @dev: the device to collect multicast addresses from
  * @mcast_list: a list to put found addresses into
+ * @flags: flags indicating the new multicast state
  *
  * Collects multicast addresses of multicast listeners residing
  * on this kernel on the given soft interface, dev, in
@@ -144,12 +218,13 @@ static bool batadv_mcast_addr_is_ipv6(const u8 *addr)
  * Return: -ENOMEM on memory allocation error or the number of
  * items added to the mcast_list otherwise.
  */
-static int batadv_mcast_mla_softif_get(struct batadv_priv *bat_priv,
-				       struct net_device *dev,
-				       struct hlist_head *mcast_list)
+static int
+batadv_mcast_mla_softif_get(struct net_device *dev,
+			    struct hlist_head *mcast_list,
+			    struct batadv_mcast_mla_flags *flags)
 {
-	bool all_ipv4 = bat_priv->mcast.flags & BATADV_MCAST_WANT_ALL_IPV4;
-	bool all_ipv6 = bat_priv->mcast.flags & BATADV_MCAST_WANT_ALL_IPV6;
+	bool all_ipv4 = flags->tvlv_flags & BATADV_MCAST_WANT_ALL_IPV4;
+	bool all_ipv6 = flags->tvlv_flags & BATADV_MCAST_WANT_ALL_IPV6;
 	struct net_device *bridge = batadv_mcast_get_bridge(dev);
 	struct netdev_hw_addr *mc_list_entry;
 	struct batadv_hw_addr *new;
@@ -227,9 +302,9 @@ static void batadv_mcast_mla_br_addr_cpy(char *dst, const struct br_ip *src)
 
 /**
  * batadv_mcast_mla_bridge_get() - get bridged-in multicast listeners
- * @bat_priv: the bat priv with all the soft interface information
  * @dev: a bridge slave whose bridge to collect multicast addresses from
  * @mcast_list: a list to put found addresses into
+ * @flags: flags indicating the new multicast state
  *
  * Collects multicast addresses of multicast listeners residing
  * on foreign, non-mesh devices which we gave access to our mesh via
@@ -239,13 +314,13 @@ static void batadv_mcast_mla_br_addr_cpy(char *dst, const struct br_ip *src)
  * Return: -ENOMEM on memory allocation error or the number of
  * items added to the mcast_list otherwise.
  */
-static int batadv_mcast_mla_bridge_get(struct batadv_priv *bat_priv,
-				       struct net_device *dev,
-				       struct hlist_head *mcast_list)
+static int batadv_mcast_mla_bridge_get(struct net_device *dev,
+				       struct hlist_head *mcast_list,
+				       struct batadv_mcast_mla_flags *flags)
 {
 	struct list_head bridge_mcast_list = LIST_HEAD_INIT(bridge_mcast_list);
-	bool all_ipv4 = bat_priv->mcast.flags & BATADV_MCAST_WANT_ALL_IPV4;
-	bool all_ipv6 = bat_priv->mcast.flags & BATADV_MCAST_WANT_ALL_IPV6;
+	bool all_ipv4 = flags->tvlv_flags & BATADV_MCAST_WANT_ALL_IPV4;
+	bool all_ipv6 = flags->tvlv_flags & BATADV_MCAST_WANT_ALL_IPV6;
 	struct br_ip_list *br_ip_entry, *tmp;
 	struct batadv_hw_addr *new;
 	u8 mcast_addr[ETH_ALEN];
@@ -369,27 +444,6 @@ static void batadv_mcast_mla_tt_add(struct batadv_priv *bat_priv,
 	}
 }
 
-/**
- * batadv_mcast_has_bridge() - check whether the soft-iface is bridged
- * @bat_priv: the bat priv with all the soft interface information
- *
- * Checks whether there is a bridge on top of our soft interface.
- *
- * Return: true if there is a bridge, false otherwise.
- */
-static bool batadv_mcast_has_bridge(struct batadv_priv *bat_priv)
-{
-	struct net_device *upper = bat_priv->soft_iface;
-
-	rcu_read_lock();
-	do {
-		upper = netdev_master_upper_dev_get_rcu(upper);
-	} while (upper && !(upper->priv_flags & IFF_EBRIDGE));
-	rcu_read_unlock();
-
-	return upper;
-}
-
 /**
  * batadv_mcast_querier_log() - debug output regarding the querier status on
  *  link
@@ -424,7 +478,7 @@ batadv_mcast_querier_log(struct batadv_priv *bat_priv, char *str_proto,
 		batadv_info(bat_priv->soft_iface,
 			    "%s Querier disappeared - multicast optimizations disabled\n",
 			    str_proto);
-	else if (!bat_priv->mcast.bridged && !new_state->exists)
+	else if (!bat_priv->mcast.mla_flags.bridged && !new_state->exists)
 		batadv_info(bat_priv->soft_iface,
 			    "No %s Querier present - multicast optimizations disabled\n",
 			    str_proto);
@@ -446,9 +500,7 @@ batadv_mcast_querier_log(struct batadv_priv *bat_priv, char *str_proto,
  * batadv_mcast_bridge_log() - debug output for topology changes in bridged
  *  setups
  * @bat_priv: the bat priv with all the soft interface information
- * @bridged: a flag about whether the soft interface is currently bridged or not
- * @querier_ipv4: (maybe) new status of a potential, selected IGMP querier
- * @querier_ipv6: (maybe) new status of a potential, selected MLD querier
+ * @new_flags: flags indicating the new multicast state
  *
  * If no bridges are ever used on this node, then this function does nothing.
  *
@@ -461,38 +513,40 @@ batadv_mcast_querier_log(struct batadv_priv *bat_priv, char *str_proto,
  * multicast flags this node is going to set.
  */
 static void
-batadv_mcast_bridge_log(struct batadv_priv *bat_priv, bool bridged,
-			struct batadv_mcast_querier_state *querier_ipv4,
-			struct batadv_mcast_querier_state *querier_ipv6)
+batadv_mcast_bridge_log(struct batadv_priv *bat_priv,
+			struct batadv_mcast_mla_flags *new_flags)
 {
-	if (!bat_priv->mcast.bridged && bridged)
+	struct batadv_mcast_mla_flags *old_flags = &bat_priv->mcast.mla_flags;
+
+	if (!old_flags->bridged && new_flags->bridged)
 		batadv_dbg(BATADV_DBG_MCAST, bat_priv,
 			   "Bridge added: Setting Unsnoopables(U)-flag\n");
-	else if (bat_priv->mcast.bridged && !bridged)
+	else if (old_flags->bridged && !new_flags->bridged)
 		batadv_dbg(BATADV_DBG_MCAST, bat_priv,
 			   "Bridge removed: Unsetting Unsnoopables(U)-flag\n");
 
-	if (bridged) {
+	if (new_flags->bridged) {
 		batadv_mcast_querier_log(bat_priv, "IGMP",
-					 &bat_priv->mcast.querier_ipv4,
-					 querier_ipv4);
+					 &old_flags->querier_ipv4,
+					 &new_flags->querier_ipv4);
 		batadv_mcast_querier_log(bat_priv, "MLD",
-					 &bat_priv->mcast.querier_ipv6,
-					 querier_ipv6);
+					 &old_flags->querier_ipv6,
+					 &new_flags->querier_ipv6);
 	}
 }
 
 /**
  * batadv_mcast_flags_logs() - output debug information about mcast flag changes
  * @bat_priv: the bat priv with all the soft interface information
- * @flags: flags indicating the new multicast state
+ * @flags: TVLV flags indicating the new multicast state
  *
- * Whenever the multicast flags this nodes announces changes (@mcast_flags vs.
- * bat_priv->mcast.flags), this notifies userspace via the 'mcast' log level.
+ * Whenever the multicast TVLV flags this nodes announces change this notifies
+ * userspace via the 'mcast' log level.
  */
 static void batadv_mcast_flags_log(struct batadv_priv *bat_priv, u8 flags)
 {
-	u8 old_flags = bat_priv->mcast.flags;
+	bool old_enabled = bat_priv->mcast.mla_flags.enabled;
+	u8 old_flags = bat_priv->mcast.mla_flags.tvlv_flags;
 	char str_old_flags[] = "[...]";
 
 	sprintf(str_old_flags, "[%c%c%c]",
@@ -502,85 +556,39 @@ static void batadv_mcast_flags_log(struct batadv_priv *bat_priv, u8 flags)
 
 	batadv_dbg(BATADV_DBG_MCAST, bat_priv,
 		   "Changing multicast flags from '%s' to '[%c%c%c]'\n",
-		   bat_priv->mcast.enabled ? str_old_flags : "<undefined>",
+		   old_enabled ? str_old_flags : "<undefined>",
 		   (flags & BATADV_MCAST_WANT_ALL_UNSNOOPABLES) ? 'U' : '.',
 		   (flags & BATADV_MCAST_WANT_ALL_IPV4) ? '4' : '.',
 		   (flags & BATADV_MCAST_WANT_ALL_IPV6) ? '6' : '.');
 }
 
 /**
- * batadv_mcast_mla_tvlv_update() - update multicast tvlv
+ * batadv_mcast_mla_flags_update() - update multicast flags
  * @bat_priv: the bat priv with all the soft interface information
+ * @flags: flags indicating the new multicast state
  *
  * Updates the own multicast tvlv with our current multicast related settings,
  * capabilities and inabilities.
- *
- * Return: false if we want all IPv4 && IPv6 multicast traffic and true
- * otherwise.
  */
-static bool batadv_mcast_mla_tvlv_update(struct batadv_priv *bat_priv)
+static void
+batadv_mcast_mla_flags_update(struct batadv_priv *bat_priv,
+			      struct batadv_mcast_mla_flags *flags)
 {
 	struct batadv_tvlv_mcast_data mcast_data;
-	struct batadv_mcast_querier_state querier4 = {false, false};
-	struct batadv_mcast_querier_state querier6 = {false, false};
-	struct net_device *dev = bat_priv->soft_iface;
-	bool bridged;
 
-	mcast_data.flags = BATADV_NO_FLAGS;
+	if (!memcmp(flags, &bat_priv->mcast.mla_flags, sizeof(*flags)))
+		return;
+
+	batadv_mcast_bridge_log(bat_priv, flags);
+	batadv_mcast_flags_log(bat_priv, flags->tvlv_flags);
+
+	mcast_data.flags = flags->tvlv_flags;
 	memset(mcast_data.reserved, 0, sizeof(mcast_data.reserved));
 
-	bridged = batadv_mcast_has_bridge(bat_priv);
-	if (!bridged)
-		goto update;
+	batadv_tvlv_container_register(bat_priv, BATADV_TVLV_MCAST, 2,
+				       &mcast_data, sizeof(mcast_data));
 
-	if (!IS_ENABLED(CONFIG_BRIDGE_IGMP_SNOOPING))
-		pr_warn_once("No bridge IGMP snooping compiled - multicast optimizations disabled\n");
-
-	querier4.exists = br_multicast_has_querier_anywhere(dev, ETH_P_IP);
-	querier4.shadowing = br_multicast_has_querier_adjacent(dev, ETH_P_IP);
-
-	querier6.exists = br_multicast_has_querier_anywhere(dev, ETH_P_IPV6);
-	querier6.shadowing = br_multicast_has_querier_adjacent(dev, ETH_P_IPV6);
-
-	mcast_data.flags |= BATADV_MCAST_WANT_ALL_UNSNOOPABLES;
-
-	/* 1) If no querier exists at all, then multicast listeners on
-	 *    our local TT clients behind the bridge will keep silent.
-	 * 2) If the selected querier is on one of our local TT clients,
-	 *    behind the bridge, then this querier might shadow multicast
-	 *    listeners on our local TT clients, behind this bridge.
-	 *
-	 * In both cases, we will signalize other batman nodes that
-	 * we need all multicast traffic of the according protocol.
-	 */
-	if (!querier4.exists || querier4.shadowing)
-		mcast_data.flags |= BATADV_MCAST_WANT_ALL_IPV4;
-
-	if (!querier6.exists || querier6.shadowing)
-		mcast_data.flags |= BATADV_MCAST_WANT_ALL_IPV6;
-
-update:
-	batadv_mcast_bridge_log(bat_priv, bridged, &querier4, &querier6);
-
-	bat_priv->mcast.querier_ipv4.exists = querier4.exists;
-	bat_priv->mcast.querier_ipv4.shadowing = querier4.shadowing;
-
-	bat_priv->mcast.querier_ipv6.exists = querier6.exists;
-	bat_priv->mcast.querier_ipv6.shadowing = querier6.shadowing;
-
-	bat_priv->mcast.bridged = bridged;
-
-	if (!bat_priv->mcast.enabled ||
-	    mcast_data.flags != bat_priv->mcast.flags) {
-		batadv_mcast_flags_log(bat_priv, mcast_data.flags);
-		batadv_tvlv_container_register(bat_priv, BATADV_TVLV_MCAST, 2,
-					       &mcast_data, sizeof(mcast_data));
-		bat_priv->mcast.flags = mcast_data.flags;
-		bat_priv->mcast.enabled = true;
-	}
-
-	return !(mcast_data.flags & BATADV_MCAST_WANT_ALL_IPV4 &&
-		 mcast_data.flags & BATADV_MCAST_WANT_ALL_IPV6);
+	bat_priv->mcast.mla_flags = *flags;
 }
 
 /**
@@ -599,22 +607,24 @@ static void __batadv_mcast_mla_update(struct batadv_priv *bat_priv)
 {
 	struct net_device *soft_iface = bat_priv->soft_iface;
 	struct hlist_head mcast_list = HLIST_HEAD_INIT;
+	struct batadv_mcast_mla_flags flags;
 	int ret;
 
-	if (!batadv_mcast_mla_tvlv_update(bat_priv))
-		goto update;
+	flags = batadv_mcast_mla_flags_get(bat_priv);
 
-	ret = batadv_mcast_mla_softif_get(bat_priv, soft_iface, &mcast_list);
+	ret = batadv_mcast_mla_softif_get(soft_iface, &mcast_list, &flags);
 	if (ret < 0)
 		goto out;
 
-	ret = batadv_mcast_mla_bridge_get(bat_priv, soft_iface, &mcast_list);
+	ret = batadv_mcast_mla_bridge_get(soft_iface, &mcast_list, &flags);
 	if (ret < 0)
 		goto out;
 
-update:
+	spin_lock(&bat_priv->mcast.mla_lock);
 	batadv_mcast_mla_tt_retract(bat_priv, &mcast_list);
 	batadv_mcast_mla_tt_add(bat_priv, &mcast_list);
+	batadv_mcast_mla_flags_update(bat_priv, &flags);
+	spin_unlock(&bat_priv->mcast.mla_lock);
 
 out:
 	batadv_mcast_mla_list_free(&mcast_list);
@@ -639,10 +649,7 @@ static void batadv_mcast_mla_update(struct work_struct *work)
 	priv_mcast = container_of(delayed_work, struct batadv_priv_mcast, work);
 	bat_priv = container_of(priv_mcast, struct batadv_priv, mcast);
 
-	spin_lock(&bat_priv->mcast.mla_lock);
 	__batadv_mcast_mla_update(bat_priv);
-	spin_unlock(&bat_priv->mcast.mla_lock);
-
 	batadv_mcast_start_timer(bat_priv);
 }
 
@@ -1417,15 +1424,16 @@ void batadv_mcast_init(struct batadv_priv *bat_priv)
 static void batadv_mcast_flags_print_header(struct batadv_priv *bat_priv,
 					    struct seq_file *seq)
 {
-	u8 flags = bat_priv->mcast.flags;
+	struct batadv_mcast_mla_flags *mla_flags = &bat_priv->mcast.mla_flags;
 	char querier4, querier6, shadowing4, shadowing6;
-	bool bridged = bat_priv->mcast.bridged;
+	bool bridged = mla_flags->bridged;
+	u8 flags = mla_flags->tvlv_flags;
 
 	if (bridged) {
-		querier4 = bat_priv->mcast.querier_ipv4.exists ? '.' : '4';
-		querier6 = bat_priv->mcast.querier_ipv6.exists ? '.' : '6';
-		shadowing4 = bat_priv->mcast.querier_ipv4.shadowing ? '4' : '.';
-		shadowing6 = bat_priv->mcast.querier_ipv6.shadowing ? '6' : '.';
+		querier4 = mla_flags->querier_ipv4.exists ? '.' : '4';
+		querier6 = mla_flags->querier_ipv6.exists ? '.' : '6';
+		shadowing4 = mla_flags->querier_ipv4.shadowing ? '4' : '.';
+		shadowing6 = mla_flags->querier_ipv6.shadowing ? '6' : '.';
 	} else {
 		querier4 = '?';
 		querier6 = '?';
@@ -1517,19 +1525,19 @@ int batadv_mcast_flags_seq_print_text(struct seq_file *seq, void *offset)
 int batadv_mcast_mesh_info_put(struct sk_buff *msg,
 			       struct batadv_priv *bat_priv)
 {
-	u32 flags = bat_priv->mcast.flags;
+	u32 flags = bat_priv->mcast.mla_flags.tvlv_flags;
 	u32 flags_priv = BATADV_NO_FLAGS;
 
-	if (bat_priv->mcast.bridged) {
+	if (bat_priv->mcast.mla_flags.bridged) {
 		flags_priv |= BATADV_MCAST_FLAGS_BRIDGED;
 
-		if (bat_priv->mcast.querier_ipv4.exists)
+		if (bat_priv->mcast.mla_flags.querier_ipv4.exists)
 			flags_priv |= BATADV_MCAST_FLAGS_QUERIER_IPV4_EXISTS;
-		if (bat_priv->mcast.querier_ipv6.exists)
+		if (bat_priv->mcast.mla_flags.querier_ipv6.exists)
 			flags_priv |= BATADV_MCAST_FLAGS_QUERIER_IPV6_EXISTS;
-		if (bat_priv->mcast.querier_ipv4.shadowing)
+		if (bat_priv->mcast.mla_flags.querier_ipv4.shadowing)
 			flags_priv |= BATADV_MCAST_FLAGS_QUERIER_IPV4_SHADOWING;
-		if (bat_priv->mcast.querier_ipv6.shadowing)
+		if (bat_priv->mcast.mla_flags.querier_ipv6.shadowing)
 			flags_priv |= BATADV_MCAST_FLAGS_QUERIER_IPV6_SHADOWING;
 	}
 
diff --git a/net/batman-adv/soft-interface.c b/net/batman-adv/soft-interface.c
index a7677e1d..887d9077 100644
--- a/net/batman-adv/soft-interface.c
+++ b/net/batman-adv/soft-interface.c
@@ -803,11 +803,6 @@ static int batadv_softif_init_late(struct net_device *dev)
 	atomic_set(&bat_priv->distributed_arp_table, 1);
 #endif
 #ifdef CONFIG_BATMAN_ADV_MCAST
-	bat_priv->mcast.querier_ipv4.exists = false;
-	bat_priv->mcast.querier_ipv4.shadowing = false;
-	bat_priv->mcast.querier_ipv6.exists = false;
-	bat_priv->mcast.querier_ipv6.shadowing = false;
-	bat_priv->mcast.flags = BATADV_NO_FLAGS;
 	atomic_set(&bat_priv->multicast_mode, 1);
 	atomic_set(&bat_priv->multicast_fanout, 16);
 	atomic_set(&bat_priv->mcast.num_want_all_unsnoopables, 0);
diff --git a/net/batman-adv/types.h b/net/batman-adv/types.h
index 74b64473..3212cfc9 100644
--- a/net/batman-adv/types.h
+++ b/net/batman-adv/types.h
@@ -1168,6 +1168,26 @@ struct batadv_mcast_querier_state {
 	unsigned char shadowing:1;
 };
 
+/**
+ * struct batadv_mcast_mla_flags - flags for the querier, bridge and tvlv state
+ */
+struct batadv_mcast_mla_flags {
+	/** @querier_ipv4: the current state of an IGMP querier in the mesh */
+	struct batadv_mcast_querier_state querier_ipv4;
+
+	/** @querier_ipv6: the current state of an MLD querier in the mesh */
+	struct batadv_mcast_querier_state querier_ipv6;
+
+	/** @enabled: whether the multicast tvlv is currently enabled */
+	unsigned char enabled:1;
+
+	/** @bridged: whether the soft interface has a bridge on top */
+	unsigned char bridged:1;
+
+	/** @tvlv_flags: the flags we have last sent in our mcast tvlv */
+	u8 tvlv_flags;
+};
+
 /**
  * struct batadv_priv_mcast - per mesh interface mcast data
  */
@@ -1196,20 +1216,10 @@ struct batadv_priv_mcast {
 	 */
 	struct hlist_head want_all_ipv6_list;
 
-	/** @querier_ipv4: the current state of an IGMP querier in the mesh */
-	struct batadv_mcast_querier_state querier_ipv4;
-
-	/** @querier_ipv6: the current state of an MLD querier in the mesh */
-	struct batadv_mcast_querier_state querier_ipv6;
-
-	/** @flags: the flags we have last sent in our mcast tvlv */
-	u8 flags;
-
-	/** @enabled: whether the multicast tvlv is currently enabled */
-	unsigned char enabled:1;
-
-	/** @bridged: whether the soft interface has a bridge on top */
-	unsigned char bridged:1;
+	/**
+	 * @mla_flags: flags for the querier, bridge and tvlv state
+	 */
+	struct batadv_mcast_mla_flags mla_flags;
 
 	/**
 	 * @mla_lock: a lock protecting mla_list and mla_flags
-- 
2.20.1

