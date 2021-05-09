Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id A71FA37783F
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun,  9 May 2021 21:45:55 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id AE26583ED2;
	Sun,  9 May 2021 21:45:49 +0200 (CEST)
Received: from mail.aperture-lab.de (mail.aperture-lab.de [IPv6:2a01:4f8:c2c:665b::1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id B836B83E70
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun,  9 May 2021 21:45:27 +0200 (CEST)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 2EF053EDE1;
	Sun,  9 May 2021 21:45:27 +0200 (CEST)
From: =?UTF-8?q?Linus=20L=C3=BCssing?= <linus.luessing@c0d3.blue>
To: netdev@vger.kernel.org
Subject: [net-next v2 06/11] net: bridge: mcast: prepare expiry functions for mcast router split
Date: Sun,  9 May 2021 21:45:04 +0200
Message-Id: <20210509194509.10849-7-linus.luessing@c0d3.blue>
In-Reply-To: <20210509194509.10849-1-linus.luessing@c0d3.blue>
References: <20210509194509.10849-1-linus.luessing@c0d3.blue>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Last-TLS-Session-Version: TLSv1.2
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1620589527; a=rsa-sha256;
	cv=none;
	b=PQDZTMleLrVQRglOQbR+0y5AUjHYY91oKtd+sfnfZSq3uRXTkFCElW/riiiuplKS85Uh+o
	57iiM756QyAef+nxHYoaknP3OweGtuW/lmeaYLc2zFaiYPhH++wU8PaSdfiAB0ServBGhT
	3U5jcUqf8ZYSQF4xFXFn7T7QTuTaprg=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=none (diktynna.open-mesh.org: domain of linus.luessing@c0d3.blue has no SPF policy when checking 2a01:4f8:c2c:665b::1) smtp.mailfrom=linus.luessing@c0d3.blue
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1620589527;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=uHH27GNY449jAS163rZEGWDmcj973Lo8Egf3xtKcPQ4=;
	b=lsPtv0dC1s8Rz8DDBnnI4kjM9B1ACt0478vnUT+GxobJi5dsfDWoB8iV2uLrzidYzo9FU0
	+b681ijNMMWDsA+snsme38L/mPCK/TVFeSmIWVHGKue9Ae1jvq4M1Tm/aElvT3UmUWt5Nd
	8BZMcvz9F6LsmfphTSd6zjpL7fpKnv0=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: JOR53XNWDOQZ3IVAC3KBTQBRSYCADCVB
X-Message-ID-Hash: JOR53XNWDOQZ3IVAC3KBTQBRSYCADCVB
X-MailFrom: linus.luessing@c0d3.blue
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: Roopa Prabhu <roopa@nvidia.com>, Nikolay Aleksandrov <nikolay@nvidia.com>, Jakub Kicinski <kuba@kernel.org>, "David S . Miller" <davem@davemloft.net>, bridge@lists.linux-foundation.org, b.a.t.m.a.n@lists.open-mesh.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/JOR53XNWDOQZ3IVAC3KBTQBRSYCADCVB/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

In preparation for the upcoming split of multicast router state into
their IPv4 and IPv6 variants move the protocol specific timer access to
an ip4 wrapper function.

Signed-off-by: Linus L=C3=BCssing <linus.luessing@c0d3.blue>
---
 net/bridge/br_multicast.c | 31 ++++++++++++++++++++++---------
 1 file changed, 22 insertions(+), 9 deletions(-)

diff --git a/net/bridge/br_multicast.c b/net/bridge/br_multicast.c
index 048b5b9..6c844b2 100644
--- a/net/bridge/br_multicast.c
+++ b/net/bridge/br_multicast.c
@@ -1354,16 +1354,16 @@ static int br_ip6_multicast_add_group(struct net_=
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
-			from_timer(port, t, ip4_mc_router_timer);
 	struct net_bridge *br =3D port->br;
=20
 	spin_lock(&br->multicast_lock);
 	if (port->multicast_router =3D=3D MDB_RTR_TYPE_DISABLED ||
 	    port->multicast_router =3D=3D MDB_RTR_TYPE_PERM ||
-	    timer_pending(&port->ip4_mc_router_timer))
+	    timer_pending(t))
 		goto out;
=20
 	__del_port_router(port);
@@ -1371,6 +1371,13 @@ out:
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
 static void br_mc_router_state_change(struct net_bridge *p,
 				      bool is_mc_router)
 {
@@ -1384,10 +1391,9 @@ static void br_mc_router_state_change(struct net_b=
ridge *p,
 	switchdev_port_attr_set(p->dev, &attr, NULL);
 }
=20
-static void br_multicast_local_router_expired(struct timer_list *t)
+static void br_multicast_local_router_expired(struct net_bridge *br,
+					      struct timer_list *timer)
 {
-	struct net_bridge *br =3D from_timer(br, t, ip4_mc_router_timer);
-
 	spin_lock(&br->multicast_lock);
 	if (br->multicast_router =3D=3D MDB_RTR_TYPE_DISABLED ||
 	    br->multicast_router =3D=3D MDB_RTR_TYPE_PERM ||
@@ -1400,6 +1406,13 @@ out:
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
 static void br_multicast_querier_expired(struct net_bridge *br,
 					 struct bridge_mcast_own_query *query)
 {
@@ -1615,7 +1628,7 @@ int br_multicast_add_port(struct net_bridge_port *p=
ort)
 	port->multicast_eht_hosts_limit =3D BR_MCAST_DEFAULT_EHT_HOSTS_LIMIT;
=20
 	timer_setup(&port->ip4_mc_router_timer,
-		    br_multicast_router_expired, 0);
+		    br_ip4_multicast_router_expired, 0);
 	timer_setup(&port->ip4_own_query.timer,
 		    br_ip4_multicast_port_query_expired, 0);
 #if IS_ENABLED(CONFIG_IPV6)
@@ -3319,7 +3332,7 @@ void br_multicast_init(struct net_bridge *br)
=20
 	spin_lock_init(&br->multicast_lock);
 	timer_setup(&br->ip4_mc_router_timer,
-		    br_multicast_local_router_expired, 0);
+		    br_ip4_multicast_local_router_expired, 0);
 	timer_setup(&br->ip4_other_query.timer,
 		    br_ip4_multicast_querier_expired, 0);
 	timer_setup(&br->ip4_own_query.timer,
--=20
2.31.0
