Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 188B236A829
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 25 Apr 2021 18:01:49 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id E083683CB1;
	Sun, 25 Apr 2021 18:01:47 +0200 (CEST)
Received: from mail.aperture-lab.de (mail.aperture-lab.de [116.203.183.178])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 0C47A83AD0
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 25 Apr 2021 18:01:46 +0200 (CEST)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 2464B3ED8E;
	Sun, 25 Apr 2021 18:01:43 +0200 (CEST)
From: =?UTF-8?q?Linus=20L=C3=BCssing?= <linus.luessing@c0d3.blue>
To: netdev@vger.kernel.org
Subject: [PATCH net-next 1/2] net: bridge: mcast: split multicast router state for IPv4 and IPv6
Date: Sun, 25 Apr 2021 18:00:49 +0200
Message-Id: <20210425160050.8732-2-linus.luessing@c0d3.blue>
In-Reply-To: <20210425160050.8732-1-linus.luessing@c0d3.blue>
References: <20210425160050.8732-1-linus.luessing@c0d3.blue>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Last-TLS-Session-Version: TLSv1.2
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1619366506; a=rsa-sha256;
	cv=none;
	b=wqF3XoLjXx0nS/gxAHaj3ja0/fNygp0nl660DL67/GwbSXsCl9lJvUq3orV84Oj9fqiYr0
	SPkGrOq9XfORh4oQEQ1zAn05KerWZB6Yl7MnioxDIiCWGgwClHq9RnZGlefD0NjCSbppvQ
	u0iDZhro9/Fv32YeMVikKMioq6qrsM4=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=none (diktynna.open-mesh.org: domain of linus.luessing@c0d3.blue has no SPF policy when checking 116.203.183.178) smtp.mailfrom=linus.luessing@c0d3.blue
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1619366506;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=65ONkUdcOfCjas9yw8WQC78fNNYBtcuRRlG2Uj0bh00=;
	b=mlKQtBVOkZp6ya99xZNlDg0INoMAgv+qdOVq+fKwvP8MjV7FkW3PQOS9iTkEfVefG/Yilw
	/yfc5ZxQ1HgVFa2TSx1L9b25cVV865wD64I6MWUzGJbE7tfS5zkuwoAhlhwYU0yIlXusGm
	IrvXoe7eKNbUUhrBetwW9KjTESz13nI=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: GM6VBYFH625DBXLAZLJILGMRBDLVUMM7
X-Message-ID-Hash: GM6VBYFH625DBXLAZLJILGMRBDLVUMM7
X-MailFrom: linus.luessing@c0d3.blue
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: Roopa Prabhu <roopa@nvidia.com>, Nikolay Aleksandrov <nikolay@nvidia.com>, Jakub Kicinski <kuba@kernel.org>, "David S . Miller" <davem@davemloft.net>, bridge@lists.linux-foundation.org, b.a.t.m.a.n@lists.open-mesh.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/GM6VBYFH625DBXLAZLJILGMRBDLVUMM7/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

A multicast router for IPv4 does not imply that the same host also is a
multicast router for IPv6 and vice versa.

To reduce multicast traffic when a host is only a multicast router for
one of these two protocol families, keep router state for IPv4 and IPv6
separately. Similar to how querier state is kept separately.

For backwards compatibility for netlink and switchdev notifications
these two will still only notify if a port switched from either no
IPv4/IPv6 multicast router to any IPv4/IPv6 multicast router or the
other way round. However a full netlink MDB router dump will now also
include a multicast router timeout for both IPv4 and IPv6.

Signed-off-by: Linus L=C3=BCssing <linus.luessing@c0d3.blue>
---
 include/uapi/linux/if_bridge.h |   2 +
 net/bridge/br_forward.c        |  22 ++-
 net/bridge/br_input.c          |   2 +-
 net/bridge/br_mdb.c            |  38 +++-
 net/bridge/br_multicast.c      | 341 +++++++++++++++++++++++++--------
 net/bridge/br_private.h        |  48 ++++-
 6 files changed, 352 insertions(+), 101 deletions(-)

diff --git a/include/uapi/linux/if_bridge.h b/include/uapi/linux/if_bridg=
e.h
index 13d59c51ef5b..6b56a7549531 100644
--- a/include/uapi/linux/if_bridge.h
+++ b/include/uapi/linux/if_bridge.h
@@ -627,6 +627,8 @@ enum {
 	MDBA_ROUTER_PATTR_UNSPEC,
 	MDBA_ROUTER_PATTR_TIMER,
 	MDBA_ROUTER_PATTR_TYPE,
+	MDBA_ROUTER_PATTR_INET_TIMER,
+	MDBA_ROUTER_PATTR_INET6_TIMER,
 	__MDBA_ROUTER_PATTR_MAX
 };
 #define MDBA_ROUTER_PATTR_MAX (__MDBA_ROUTER_PATTR_MAX - 1)
diff --git a/net/bridge/br_forward.c b/net/bridge/br_forward.c
index 6e9b049ae521..897fafc83cd0 100644
--- a/net/bridge/br_forward.c
+++ b/net/bridge/br_forward.c
@@ -275,8 +275,19 @@ void br_multicast_flood(struct net_bridge_mdb_entry =
*mdst,
 	struct net_bridge_port_group *p;
 	bool allow_mode_include =3D true;
 	struct hlist_node *rp;
+#if IS_ENABLED(CONFIG_IPV6)
+	bool is_ipv6 =3D false;
+
+	if (skb->protocol =3D=3D htons(ETH_P_IPV6)) {
+		is_ipv6 =3D true;
+		rp =3D rcu_dereference(hlist_first_rcu(&br->ip6_mc_router_list));
+	} else {
+#else
+	if (1) {
+#endif
+		rp =3D rcu_dereference(hlist_first_rcu(&br->ip4_mc_router_list));
+	}
=20
-	rp =3D rcu_dereference(hlist_first_rcu(&br->router_list));
 	if (mdst) {
 		p =3D rcu_dereference(mdst->ports);
 		if (br_multicast_should_handle_mode(br, mdst->addr.proto) &&
@@ -290,7 +301,14 @@ void br_multicast_flood(struct net_bridge_mdb_entry =
*mdst,
 		struct net_bridge_port *port, *lport, *rport;
=20
 		lport =3D p ? p->key.port : NULL;
-		rport =3D hlist_entry_safe(rp, struct net_bridge_port, rlist);
+#if IS_ENABLED(CONFIG_IPV6)
+		if (is_ipv6)
+			rport =3D hlist_entry_safe(rp, struct net_bridge_port,
+						 ip6_rlist);
+		else
+#endif
+			rport =3D hlist_entry_safe(rp, struct net_bridge_port,
+						 ip4_rlist);
=20
 		if ((unsigned long)lport > (unsigned long)rport) {
 			port =3D lport;
diff --git a/net/bridge/br_input.c b/net/bridge/br_input.c
index 8875e953ac53..1f506309efa8 100644
--- a/net/bridge/br_input.c
+++ b/net/bridge/br_input.c
@@ -132,7 +132,7 @@ int br_handle_frame_finish(struct net *net, struct so=
ck *sk, struct sk_buff *skb
 		if ((mdst || BR_INPUT_SKB_CB_MROUTERS_ONLY(skb)) &&
 		    br_multicast_querier_exists(br, eth_hdr(skb), mdst)) {
 			if ((mdst && mdst->host_joined) ||
-			    br_multicast_is_router(br)) {
+			    br_multicast_is_router(br, skb)) {
 				local_rcv =3D true;
 				br->dev->stats.multicast++;
 			}
diff --git a/net/bridge/br_mdb.c b/net/bridge/br_mdb.c
index 95fa4af0e8dd..2fce1a895a70 100644
--- a/net/bridge/br_mdb.c
+++ b/net/bridge/br_mdb.c
@@ -22,25 +22,53 @@ static int br_rports_fill_info(struct sk_buff *skb, s=
truct netlink_callback *cb,
 	struct net_bridge *br =3D netdev_priv(dev);
 	struct net_bridge_port *p;
 	struct nlattr *nest, *port_nest;
+	bool have_ip4_mc_rtr, have_ip6_mc_rtr =3D false;
+	unsigned long ip4_timer, ip6_timer =3D 0;
=20
-	if (!br->multicast_router || hlist_empty(&br->router_list))
+	if (!br->multicast_router)
 		return 0;
=20
+#if IS_ENABLED(CONFIG_IPV6)
+	if (hlist_empty(&br->ip4_mc_router_list) &&
+	    hlist_empty(&br->ip6_mc_router_list))
+		return 0;
+#else
+	if (hlist_empty(&br->ip4_mc_router_list))
+		return 0;
+#endif
+
 	nest =3D nla_nest_start_noflag(skb, MDBA_ROUTER);
 	if (nest =3D=3D NULL)
 		return -EMSGSIZE;
=20
-	hlist_for_each_entry_rcu(p, &br->router_list, rlist) {
-		if (!p)
+	list_for_each_entry_rcu(p, &br->port_list, list) {
+		have_ip4_mc_rtr =3D !hlist_unhashed(&p->ip4_rlist);
+		ip4_timer =3D br_timer_value(&p->ip4_mc_router_timer);
+#if IS_ENABLED(CONFIG_IPV6)
+		have_ip6_mc_rtr =3D !hlist_unhashed(&p->ip6_rlist);
+		ip6_timer =3D br_timer_value(&p->ip6_mc_router_timer);
+#endif
+
+		if (!have_ip4_mc_rtr && !have_ip6_mc_rtr)
 			continue;
+
 		port_nest =3D nla_nest_start_noflag(skb, MDBA_ROUTER_PORT);
 		if (!port_nest)
 			goto fail;
+
 		if (nla_put_nohdr(skb, sizeof(u32), &p->dev->ifindex) ||
 		    nla_put_u32(skb, MDBA_ROUTER_PATTR_TIMER,
-				br_timer_value(&p->multicast_router_timer)) ||
+				max(ip4_timer, ip6_timer)) ||
 		    nla_put_u8(skb, MDBA_ROUTER_PATTR_TYPE,
-			       p->multicast_router)) {
+			       p->multicast_router) ||
+		#if IS_ENABLED(CONFIG_IPV6)
+		    (have_ip6_mc_rtr &&
+		     nla_put_u32(skb, MDBA_ROUTER_PATTR_INET6_TIMER,
+				 ip6_timer)) ||
+		#endif
+		    (have_ip4_mc_rtr &&
+		     nla_put_u32(skb, MDBA_ROUTER_PATTR_INET_TIMER,
+				 ip4_timer))) {
 			nla_nest_cancel(skb, port_nest);
 			goto fail;
 		}
diff --git a/net/bridge/br_multicast.c b/net/bridge/br_multicast.c
index 226bb05c3b42..0ebdbf09f44c 100644
--- a/net/bridge/br_multicast.c
+++ b/net/bridge/br_multicast.c
@@ -51,8 +51,8 @@ static const struct rhashtable_params br_sg_port_rht_pa=
rams =3D {
=20
 static void br_multicast_start_querier(struct net_bridge *br,
 				       struct bridge_mcast_own_query *query);
-static void br_multicast_add_router(struct net_bridge *br,
-				    struct net_bridge_port *port);
+static void br_ip4_multicast_add_router(struct net_bridge *br,
+					struct net_bridge_port *port);
 static void br_ip4_multicast_leave_group(struct net_bridge *br,
 					 struct net_bridge_port *port,
 					 __be32 group,
@@ -60,8 +60,12 @@ static void br_ip4_multicast_leave_group(struct net_br=
idge *br,
 					 const unsigned char *src);
 static void br_multicast_port_group_rexmit(struct timer_list *t);
=20
-static void __del_port_router(struct net_bridge_port *p);
+static void br_multicast_rport_del(struct net_bridge_port *p,
+				   struct hlist_node *rlist);
+static void br_multicast_rport_del_notify(struct net_bridge_port *p);
 #if IS_ENABLED(CONFIG_IPV6)
+static void br_ip6_multicast_add_router(struct net_bridge *br,
+					struct net_bridge_port *port);
 static void br_ip6_multicast_leave_group(struct net_bridge *br,
 					 struct net_bridge_port *port,
 					 const struct in6_addr *group,
@@ -1354,23 +1358,40 @@ static int br_ip6_multicast_add_group(struct net_=
bridge *br,
 }
 #endif
=20
-static void br_multicast_router_expired(struct timer_list *t)
+static void br_multicast_router_expired(struct net_bridge_port *port,
+					struct timer_list *t,
+					struct hlist_node *rlist)
 {
-	struct net_bridge_port *port =3D
-			from_timer(port, t, multicast_router_timer);
 	struct net_bridge *br =3D port->br;
=20
 	spin_lock(&br->multicast_lock);
 	if (port->multicast_router =3D=3D MDB_RTR_TYPE_DISABLED ||
 	    port->multicast_router =3D=3D MDB_RTR_TYPE_PERM ||
-	    timer_pending(&port->multicast_router_timer))
+	    timer_pending(t))
 		goto out;
=20
-	__del_port_router(port);
+	br_multicast_rport_del(port, rlist);
+	br_multicast_rport_del_notify(port);
 out:
 	spin_unlock(&br->multicast_lock);
 }
=20
+static void br_ip4_multicast_router_expired(struct timer_list *t)
+{
+	struct net_bridge_port *port =3D from_timer(port, t, ip4_mc_router_time=
r);
+
+	br_multicast_router_expired(port, t, &port->ip4_rlist);
+}
+
+#if IS_ENABLED(CONFIG_IPV6)
+static void br_ip6_multicast_router_expired(struct timer_list *t)
+{
+	struct net_bridge_port *port =3D from_timer(port, t, ip6_mc_router_time=
r);
+
+	br_multicast_router_expired(port, t, &port->ip6_rlist);
+}
+#endif
+
 static void br_mc_router_state_change(struct net_bridge *p,
 				      bool is_mc_router)
 {
@@ -1384,14 +1405,14 @@ static void br_mc_router_state_change(struct net_=
bridge *p,
 	switchdev_port_attr_set(p->dev, &attr, NULL);
 }
=20
-static void br_multicast_local_router_expired(struct timer_list *t)
+static void br_multicast_local_router_expired(struct net_bridge *br,
+					      struct timer_list *timer)
 {
-	struct net_bridge *br =3D from_timer(br, t, multicast_router_timer);
-
 	spin_lock(&br->multicast_lock);
 	if (br->multicast_router =3D=3D MDB_RTR_TYPE_DISABLED ||
 	    br->multicast_router =3D=3D MDB_RTR_TYPE_PERM ||
-	    timer_pending(&br->multicast_router_timer))
+	    br_ip4_multicast_is_router(br) ||
+	    br_ip6_multicast_is_router(br))
 		goto out;
=20
 	br_mc_router_state_change(br, false);
@@ -1399,6 +1420,22 @@ static void br_multicast_local_router_expired(stru=
ct timer_list *t)
 	spin_unlock(&br->multicast_lock);
 }
=20
+static inline void br_ip4_multicast_local_router_expired(struct timer_li=
st *t)
+{
+	struct net_bridge *br =3D from_timer(br, t, ip4_mc_router_timer);
+
+	br_multicast_local_router_expired(br, t);
+}
+
+#if IS_ENABLED(CONFIG_IPV6)
+static inline void br_ip6_multicast_local_router_expired(struct timer_li=
st *t)
+{
+	struct net_bridge *br =3D from_timer(br, t, ip6_mc_router_timer);
+
+	br_multicast_local_router_expired(br, t);
+}
+#endif
+
 static void br_multicast_querier_expired(struct net_bridge *br,
 					 struct bridge_mcast_own_query *query)
 {
@@ -1613,11 +1650,13 @@ int br_multicast_add_port(struct net_bridge_port =
*port)
 	port->multicast_router =3D MDB_RTR_TYPE_TEMP_QUERY;
 	port->multicast_eht_hosts_limit =3D BR_MCAST_DEFAULT_EHT_HOSTS_LIMIT;
=20
-	timer_setup(&port->multicast_router_timer,
-		    br_multicast_router_expired, 0);
+	timer_setup(&port->ip4_mc_router_timer,
+		    br_ip4_multicast_router_expired, 0);
 	timer_setup(&port->ip4_own_query.timer,
 		    br_ip4_multicast_port_query_expired, 0);
 #if IS_ENABLED(CONFIG_IPV6)
+	timer_setup(&port->ip6_mc_router_timer,
+		    br_ip6_multicast_router_expired, 0);
 	timer_setup(&port->ip6_own_query.timer,
 		    br_ip6_multicast_port_query_expired, 0);
 #endif
@@ -1649,7 +1688,10 @@ void br_multicast_del_port(struct net_bridge_port =
*port)
 	hlist_move_list(&br->mcast_gc_list, &deleted_head);
 	spin_unlock_bh(&br->multicast_lock);
 	br_multicast_gc(&deleted_head);
-	del_timer_sync(&port->multicast_router_timer);
+	del_timer_sync(&port->ip4_mc_router_timer);
+#if IS_ENABLED(CONFIG_IPV6)
+	del_timer_sync(&port->ip6_mc_router_timer);
+#endif
 	free_percpu(port->mcast_stats);
 }
=20
@@ -1673,9 +1715,14 @@ static void __br_multicast_enable_port(struct net_=
bridge_port *port)
 #if IS_ENABLED(CONFIG_IPV6)
 	br_multicast_enable(&port->ip6_own_query);
 #endif
-	if (port->multicast_router =3D=3D MDB_RTR_TYPE_PERM &&
-	    hlist_unhashed(&port->rlist))
-		br_multicast_add_router(br, port);
+	if (port->multicast_router =3D=3D MDB_RTR_TYPE_PERM) {
+		if (hlist_unhashed(&port->ip4_rlist))
+			br_ip4_multicast_add_router(br, port);
+#if IS_ENABLED(CONFIG_IPV6)
+		if (hlist_unhashed(&port->ip6_rlist))
+			br_ip6_multicast_add_router(br, port);
+#endif
+	}
 }
=20
 void br_multicast_enable_port(struct net_bridge_port *port)
@@ -1698,13 +1745,15 @@ void br_multicast_disable_port(struct net_bridge_=
port *port)
 		if (!(pg->flags & MDB_PG_FLAGS_PERMANENT))
 			br_multicast_find_del_pg(br, pg);
=20
-	__del_port_router(port);
-
-	del_timer(&port->multicast_router_timer);
+	br_multicast_rport_del(port, &port->ip4_rlist);
+	del_timer(&port->ip4_mc_router_timer);
 	del_timer(&port->ip4_own_query.timer);
 #if IS_ENABLED(CONFIG_IPV6)
+	br_multicast_rport_del(port, &port->ip6_rlist);
+	del_timer(&port->ip6_mc_router_timer);
 	del_timer(&port->ip6_own_query.timer);
 #endif
+	br_multicast_rport_del_notify(port);
 	spin_unlock(&br->multicast_lock);
 }
=20
@@ -2615,22 +2664,6 @@ static bool br_ip6_multicast_select_querier(struct=
 net_bridge *br,
 }
 #endif
=20
-static bool br_multicast_select_querier(struct net_bridge *br,
-					struct net_bridge_port *port,
-					struct br_ip *saddr)
-{
-	switch (saddr->proto) {
-	case htons(ETH_P_IP):
-		return br_ip4_multicast_select_querier(br, port, saddr->src.ip4);
-#if IS_ENABLED(CONFIG_IPV6)
-	case htons(ETH_P_IPV6):
-		return br_ip6_multicast_select_querier(br, port, &saddr->src.ip6);
-#endif
-	}
-
-	return false;
-}
-
 static void
 br_multicast_update_query_timer(struct net_bridge *br,
 				struct bridge_mcast_other_query *query,
@@ -2655,44 +2688,95 @@ static void br_port_mc_router_state_change(struct=
 net_bridge_port *p,
 	switchdev_port_attr_set(p->dev, &attr, NULL);
 }
=20
-/*
- * Add port to router_list
+/* Add port to router_list
  *  list is maintained ordered by pointer value
  *  and locked by br->multicast_lock and RCU
  */
-static void br_multicast_add_router(struct net_bridge *br,
-				    struct net_bridge_port *port)
+static void br_ip4_multicast_add_router(struct net_bridge *br,
+					struct net_bridge_port *port)
 {
 	struct net_bridge_port *p;
 	struct hlist_node *slot =3D NULL;
=20
-	if (!hlist_unhashed(&port->rlist))
+	if (!hlist_unhashed(&port->ip4_rlist))
 		return;
=20
-	hlist_for_each_entry(p, &br->router_list, rlist) {
-		if ((unsigned long) port >=3D (unsigned long) p)
+	hlist_for_each_entry(p, &br->ip4_mc_router_list, ip4_rlist) {
+		if ((unsigned long)port >=3D (unsigned long)p)
 			break;
-		slot =3D &p->rlist;
+		slot =3D &p->ip4_rlist;
 	}
=20
 	if (slot)
-		hlist_add_behind_rcu(&port->rlist, slot);
+		hlist_add_behind_rcu(&port->ip4_rlist, slot);
 	else
-		hlist_add_head_rcu(&port->rlist, &br->router_list);
-	br_rtr_notify(br->dev, port, RTM_NEWMDB);
-	br_port_mc_router_state_change(port, true);
+		hlist_add_head_rcu(&port->ip4_rlist, &br->ip4_mc_router_list);
+
+	/* For backwards compatibility for now, only notify if we
+	 * switched from no IPv4/IPv6 multicast router to a new
+	 * IPv4 or IPv6 multicast router.
+	 */
+#if IS_ENABLED(CONFIG_IPV6)
+	if (hlist_unhashed(&port->ip6_rlist)) {
+#else
+	if (1) {
+#endif
+		br_rtr_notify(br->dev, port, RTM_NEWMDB);
+		br_port_mc_router_state_change(port, true);
+	}
 }
=20
-static void br_multicast_mark_router(struct net_bridge *br,
-				     struct net_bridge_port *port)
+#if IS_ENABLED(CONFIG_IPV6)
+/* Add port to router_list
+ *  list is maintained ordered by pointer value
+ *  and locked by br->multicast_lock and RCU
+ */
+static void br_ip6_multicast_add_router(struct net_bridge *br,
+					struct net_bridge_port *port)
+{
+	struct net_bridge_port *p;
+	struct hlist_node *slot =3D NULL;
+
+	if (!hlist_unhashed(&port->ip6_rlist))
+		return;
+
+	hlist_for_each_entry(p, &br->ip6_mc_router_list, ip6_rlist) {
+		if ((unsigned long)port >=3D (unsigned long)p)
+			break;
+		slot =3D &p->ip6_rlist;
+	}
+
+	if (slot)
+		hlist_add_behind_rcu(&port->ip6_rlist, slot);
+	else
+		hlist_add_head_rcu(&port->ip6_rlist, &br->ip6_mc_router_list);
+
+	/* For backwards compatibility for now, only notify if we
+	 * switched from no IPv4/IPv6 multicast router to a new
+	 * IPv4 or IPv6 multicast router.
+	 */
+	if (hlist_unhashed(&port->ip4_rlist)) {
+		br_rtr_notify(br->dev, port, RTM_NEWMDB);
+		br_port_mc_router_state_change(port, true);
+	}
+}
+#endif
+
+static void br_ip4_multicast_mark_router(struct net_bridge *br,
+					 struct net_bridge_port *port)
 {
 	unsigned long now =3D jiffies;
=20
 	if (!port) {
 		if (br->multicast_router =3D=3D MDB_RTR_TYPE_TEMP_QUERY) {
-			if (!timer_pending(&br->multicast_router_timer))
+#if IS_ENABLED(CONFIG_IPV6)
+			if (!timer_pending(&br->ip4_mc_router_timer) &&
+			    !timer_pending(&br->ip6_mc_router_timer))
+#else
+			if (!timer_pending(&br->ip4_mc_router_timer))
+#endif
 				br_mc_router_state_change(br, true);
-			mod_timer(&br->multicast_router_timer,
+			mod_timer(&br->ip4_mc_router_timer,
 				  now + br->multicast_querier_interval);
 		}
 		return;
@@ -2702,24 +2786,69 @@ static void br_multicast_mark_router(struct net_b=
ridge *br,
 	    port->multicast_router =3D=3D MDB_RTR_TYPE_PERM)
 		return;
=20
-	br_multicast_add_router(br, port);
+	br_ip4_multicast_add_router(br, port);
=20
-	mod_timer(&port->multicast_router_timer,
+	mod_timer(&port->ip4_mc_router_timer,
 		  now + br->multicast_querier_interval);
 }
=20
-static void br_multicast_query_received(struct net_bridge *br,
-					struct net_bridge_port *port,
-					struct bridge_mcast_other_query *query,
-					struct br_ip *saddr,
-					unsigned long max_delay)
+#if IS_ENABLED(CONFIG_IPV6)
+static void br_ip6_multicast_mark_router(struct net_bridge *br,
+					 struct net_bridge_port *port)
+{
+	unsigned long now =3D jiffies;
+
+	if (!port) {
+		if (br->multicast_router =3D=3D MDB_RTR_TYPE_TEMP_QUERY) {
+			if (!timer_pending(&br->ip4_mc_router_timer) &&
+			    !timer_pending(&br->ip6_mc_router_timer))
+				br_mc_router_state_change(br, true);
+			mod_timer(&br->ip6_mc_router_timer,
+				  now + br->multicast_querier_interval);
+		}
+		return;
+	}
+
+	if (port->multicast_router =3D=3D MDB_RTR_TYPE_DISABLED ||
+	    port->multicast_router =3D=3D MDB_RTR_TYPE_PERM)
+		return;
+
+	br_ip6_multicast_add_router(br, port);
+
+	mod_timer(&port->ip6_mc_router_timer,
+		  now + br->multicast_querier_interval);
+}
+#endif
+
+static void
+br_ip4_multicast_query_received(struct net_bridge *br,
+				struct net_bridge_port *port,
+				struct bridge_mcast_other_query *query,
+				struct br_ip *saddr,
+				unsigned long max_delay)
+{
+	if (!br_ip4_multicast_select_querier(br, port, saddr->src.ip4))
+		return;
+
+	br_multicast_update_query_timer(br, query, max_delay);
+	br_ip4_multicast_mark_router(br, port);
+}
+
+#if IS_ENABLED(CONFIG_IPV6)
+static void
+br_ip6_multicast_query_received(struct net_bridge *br,
+				struct net_bridge_port *port,
+				struct bridge_mcast_other_query *query,
+				struct br_ip *saddr,
+				unsigned long max_delay)
 {
-	if (!br_multicast_select_querier(br, port, saddr))
+	if (!br_ip6_multicast_select_querier(br, port, &saddr->src.ip6))
 		return;
=20
 	br_multicast_update_query_timer(br, query, max_delay);
-	br_multicast_mark_router(br, port);
+	br_ip6_multicast_mark_router(br, port);
 }
+#endif
=20
 static void br_ip4_multicast_query(struct net_bridge *br,
 				   struct net_bridge_port *port,
@@ -2768,8 +2897,8 @@ static void br_ip4_multicast_query(struct net_bridg=
e *br,
 		saddr.proto =3D htons(ETH_P_IP);
 		saddr.src.ip4 =3D iph->saddr;
=20
-		br_multicast_query_received(br, port, &br->ip4_other_query,
-					    &saddr, max_delay);
+		br_ip4_multicast_query_received(br, port, &br->ip4_other_query,
+						&saddr, max_delay);
 		goto out;
 	}
=20
@@ -2856,8 +2985,8 @@ static int br_ip6_multicast_query(struct net_bridge=
 *br,
 		saddr.proto =3D htons(ETH_P_IPV6);
 		saddr.src.ip6 =3D ipv6_hdr(skb)->saddr;
=20
-		br_multicast_query_received(br, port, &br->ip6_other_query,
-					    &saddr, max_delay);
+		br_ip6_multicast_query_received(br, port, &br->ip6_other_query,
+						&saddr, max_delay);
 		goto out;
 	} else if (!group) {
 		goto out;
@@ -3087,7 +3216,7 @@ static void br_multicast_pim(struct net_bridge *br,
 	    pim_hdr_type(pimhdr) !=3D PIM_TYPE_HELLO)
 		return;
=20
-	br_multicast_mark_router(br, port);
+	br_ip4_multicast_mark_router(br, port);
 }
=20
 static int br_ip4_multicast_mrd_rcv(struct net_bridge *br,
@@ -3098,7 +3227,7 @@ static int br_ip4_multicast_mrd_rcv(struct net_brid=
ge *br,
 	    igmp_hdr(skb)->type !=3D IGMP_MRDISC_ADV)
 		return -ENOMSG;
=20
-	br_multicast_mark_router(br, port);
+	br_ip4_multicast_mark_router(br, port);
=20
 	return 0;
 }
@@ -3166,7 +3295,7 @@ static void br_ip6_multicast_mrd_rcv(struct net_bri=
dge *br,
 	if (icmp6_hdr(skb)->icmp6_type !=3D ICMPV6_MRDISC_ADV)
 		return;
=20
-	br_multicast_mark_router(br, port);
+	br_ip6_multicast_mark_router(br, port);
 }
=20
 static int br_multicast_ipv6_rcv(struct net_bridge *br,
@@ -3316,13 +3445,15 @@ void br_multicast_init(struct net_bridge *br)
 	br_opt_toggle(br, BROPT_HAS_IPV6_ADDR, true);
=20
 	spin_lock_init(&br->multicast_lock);
-	timer_setup(&br->multicast_router_timer,
-		    br_multicast_local_router_expired, 0);
+	timer_setup(&br->ip4_mc_router_timer,
+		    br_ip4_multicast_local_router_expired, 0);
 	timer_setup(&br->ip4_other_query.timer,
 		    br_ip4_multicast_querier_expired, 0);
 	timer_setup(&br->ip4_own_query.timer,
 		    br_ip4_multicast_query_expired, 0);
 #if IS_ENABLED(CONFIG_IPV6)
+	timer_setup(&br->ip6_mc_router_timer,
+		    br_ip6_multicast_local_router_expired, 0);
 	timer_setup(&br->ip6_other_query.timer,
 		    br_ip6_multicast_querier_expired, 0);
 	timer_setup(&br->ip6_own_query.timer,
@@ -3416,10 +3547,11 @@ void br_multicast_open(struct net_bridge *br)
=20
 void br_multicast_stop(struct net_bridge *br)
 {
-	del_timer_sync(&br->multicast_router_timer);
+	del_timer_sync(&br->ip4_mc_router_timer);
 	del_timer_sync(&br->ip4_other_query.timer);
 	del_timer_sync(&br->ip4_own_query.timer);
 #if IS_ENABLED(CONFIG_IPV6)
+	del_timer_sync(&br->ip6_mc_router_timer);
 	del_timer_sync(&br->ip6_other_query.timer);
 	del_timer_sync(&br->ip6_own_query.timer);
 #endif
@@ -3453,7 +3585,10 @@ int br_multicast_set_router(struct net_bridge *br,=
 unsigned long val)
 	case MDB_RTR_TYPE_DISABLED:
 	case MDB_RTR_TYPE_PERM:
 		br_mc_router_state_change(br, val =3D=3D MDB_RTR_TYPE_PERM);
-		del_timer(&br->multicast_router_timer);
+		del_timer(&br->ip4_mc_router_timer);
+#if IS_ENABLED(CONFIG_IPV6)
+		del_timer(&br->ip6_mc_router_timer);
+#endif
 		br->multicast_router =3D val;
 		err =3D 0;
 		break;
@@ -3470,11 +3605,26 @@ int br_multicast_set_router(struct net_bridge *br=
, unsigned long val)
 	return err;
 }
=20
-static void __del_port_router(struct net_bridge_port *p)
+static void br_multicast_rport_del(struct net_bridge_port *p,
+				   struct hlist_node *rlist)
 {
-	if (hlist_unhashed(&p->rlist))
+	if (hlist_unhashed(rlist))
 		return;
-	hlist_del_init_rcu(&p->rlist);
+	hlist_del_init_rcu(rlist);
+}
+
+static void br_multicast_rport_del_notify(struct net_bridge_port *p)
+{
+	/* For backwards compatibility for now, only notify if there is
+	 * no multicast router anymore for both IPv4 and IPv6.
+	 */
+	if (!hlist_unhashed(&p->ip4_rlist))
+		return;
+#if IS_ENABLED(CONFIG_IPV6)
+	if (!hlist_unhashed(&p->ip6_rlist))
+		return;
+#endif
+
 	br_rtr_notify(p->br->dev, p, RTM_DELMDB);
 	br_port_mc_router_state_change(p, false);
=20
@@ -3492,30 +3642,51 @@ int br_multicast_set_port_router(struct net_bridg=
e_port *p, unsigned long val)
 	spin_lock(&br->multicast_lock);
 	if (p->multicast_router =3D=3D val) {
 		/* Refresh the temp router port timer */
-		if (p->multicast_router =3D=3D MDB_RTR_TYPE_TEMP)
-			mod_timer(&p->multicast_router_timer,
+		if (p->multicast_router =3D=3D MDB_RTR_TYPE_TEMP) {
+			mod_timer(&p->ip4_mc_router_timer,
 				  now + br->multicast_querier_interval);
+#if IS_ENABLED(CONFIG_IPV6)
+			mod_timer(&p->ip6_mc_router_timer,
+				  now + br->multicast_querier_interval);
+#endif
+		}
 		err =3D 0;
 		goto unlock;
 	}
 	switch (val) {
 	case MDB_RTR_TYPE_DISABLED:
 		p->multicast_router =3D MDB_RTR_TYPE_DISABLED;
-		__del_port_router(p);
-		del_timer(&p->multicast_router_timer);
+		br_multicast_rport_del(p, &p->ip4_rlist);
+		del_timer(&p->ip4_mc_router_timer);
+#if IS_ENABLED(CONFIG_IPV6)
+		br_multicast_rport_del(p, &p->ip6_rlist);
+		del_timer(&p->ip6_mc_router_timer);
+#endif
+		br_multicast_rport_del_notify(p);
 		break;
 	case MDB_RTR_TYPE_TEMP_QUERY:
 		p->multicast_router =3D MDB_RTR_TYPE_TEMP_QUERY;
-		__del_port_router(p);
+		br_multicast_rport_del(p, &p->ip4_rlist);
+#if IS_ENABLED(CONFIG_IPV6)
+		br_multicast_rport_del(p, &p->ip6_rlist);
+#endif
+		br_multicast_rport_del_notify(p);
 		break;
 	case MDB_RTR_TYPE_PERM:
 		p->multicast_router =3D MDB_RTR_TYPE_PERM;
-		del_timer(&p->multicast_router_timer);
-		br_multicast_add_router(br, p);
+		del_timer(&p->ip4_mc_router_timer);
+		br_ip4_multicast_add_router(br, p);
+#if IS_ENABLED(CONFIG_IPV6)
+		del_timer(&p->ip6_mc_router_timer);
+		br_ip6_multicast_add_router(br, p);
+#endif
 		break;
 	case MDB_RTR_TYPE_TEMP:
 		p->multicast_router =3D MDB_RTR_TYPE_TEMP;
-		br_multicast_mark_router(br, p);
+		br_ip4_multicast_mark_router(br, p);
+#if IS_ENABLED(CONFIG_IPV6)
+		br_ip6_multicast_mark_router(br, p);
+#endif
 		break;
 	default:
 		goto unlock;
@@ -3621,7 +3792,7 @@ bool br_multicast_router(const struct net_device *d=
ev)
 	bool is_router;
=20
 	spin_lock_bh(&br->multicast_lock);
-	is_router =3D br_multicast_is_router(br);
+	is_router =3D br_multicast_is_router(br, NULL);
 	spin_unlock_bh(&br->multicast_lock);
 	return is_router;
 }
diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
index 7ce8a77cc6b6..203f64e4d4a2 100644
--- a/net/bridge/br_private.h
+++ b/net/bridge/br_private.h
@@ -307,16 +307,18 @@ struct net_bridge_port {
=20
 #ifdef CONFIG_BRIDGE_IGMP_SNOOPING
 	struct bridge_mcast_own_query	ip4_own_query;
+	struct timer_list		ip4_mc_router_timer;
+	struct hlist_node		ip4_rlist;
 #if IS_ENABLED(CONFIG_IPV6)
 	struct bridge_mcast_own_query	ip6_own_query;
+	struct timer_list		ip6_mc_router_timer;
+	struct hlist_node		ip6_rlist;
 #endif /* IS_ENABLED(CONFIG_IPV6) */
 	u32				multicast_eht_hosts_limit;
 	u32				multicast_eht_hosts_cnt;
 	unsigned char			multicast_router;
 	struct bridge_mcast_stats	__percpu *mcast_stats;
-	struct timer_list		multicast_router_timer;
 	struct hlist_head		mglist;
-	struct hlist_node		rlist;
 #endif
=20
 #ifdef CONFIG_SYSFS
@@ -449,14 +451,16 @@ struct net_bridge {
=20
 	struct hlist_head		mcast_gc_list;
 	struct hlist_head		mdb_list;
-	struct hlist_head		router_list;
=20
-	struct timer_list		multicast_router_timer;
+	struct hlist_head		ip4_mc_router_list;
+	struct timer_list		ip4_mc_router_timer;
 	struct bridge_mcast_other_query	ip4_other_query;
 	struct bridge_mcast_own_query	ip4_own_query;
 	struct bridge_mcast_querier	ip4_querier;
 	struct bridge_mcast_stats	__percpu *mcast_stats;
 #if IS_ENABLED(CONFIG_IPV6)
+	struct hlist_head		ip6_mc_router_list;
+	struct timer_list		ip6_mc_router_timer;
 	struct bridge_mcast_other_query	ip6_other_query;
 	struct bridge_mcast_own_query	ip6_own_query;
 	struct bridge_mcast_querier	ip6_querier;
@@ -864,11 +868,39 @@ static inline bool br_group_is_l2(const struct br_i=
p *group)
 #define mlock_dereference(X, br) \
 	rcu_dereference_protected(X, lockdep_is_held(&br->multicast_lock))
=20
-static inline bool br_multicast_is_router(struct net_bridge *br)
+static inline bool br_ip4_multicast_is_router(struct net_bridge *br)
 {
-	return br->multicast_router =3D=3D 2 ||
-	       (br->multicast_router =3D=3D 1 &&
-		timer_pending(&br->multicast_router_timer));
+	return timer_pending(&br->ip4_mc_router_timer);
+}
+
+static inline bool br_ip6_multicast_is_router(struct net_bridge *br)
+{
+#if IS_ENABLED(CONFIG_IPV6)
+	return timer_pending(&br->ip6_mc_router_timer);
+#else
+	return false;
+#endif
+}
+
+static inline bool
+br_multicast_is_router(struct net_bridge *br, struct sk_buff *skb)
+{
+	if (br->multicast_router =3D=3D 2)
+		return true;
+
+	if (br->multicast_router =3D=3D 1) {
+		if (skb) {
+			if (skb->protocol =3D=3D htons(ETH_P_IP))
+				return br_ip4_multicast_is_router(br);
+			else if (skb->protocol =3D=3D htons(ETH_P_IPV6))
+				return br_ip6_multicast_is_router(br);
+		} else {
+			return br_ip4_multicast_is_router(br) ||
+			       br_ip6_multicast_is_router(br);
+		}
+	}
+
+	return false;
 }
=20
 static inline bool
--=20
2.31.0
