Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 11FC4377841
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun,  9 May 2021 21:46:06 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id D4A2B83EC3;
	Sun,  9 May 2021 21:46:00 +0200 (CEST)
Received: from mail.aperture-lab.de (mail.aperture-lab.de [IPv6:2a01:4f8:c2c:665b::1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 05CE183E53
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun,  9 May 2021 21:45:30 +0200 (CEST)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 698273ED8E;
	Sun,  9 May 2021 21:45:29 +0200 (CEST)
From: =?UTF-8?q?Linus=20L=C3=BCssing?= <linus.luessing@c0d3.blue>
To: netdev@vger.kernel.org
Subject: [net-next v2 08/11] net: bridge: mcast: split router port del+notify for mcast router split
Date: Sun,  9 May 2021 21:45:06 +0200
Message-Id: <20210509194509.10849-9-linus.luessing@c0d3.blue>
In-Reply-To: <20210509194509.10849-1-linus.luessing@c0d3.blue>
References: <20210509194509.10849-1-linus.luessing@c0d3.blue>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Last-TLS-Session-Version: TLSv1.2
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1620589530; a=rsa-sha256;
	cv=none;
	b=U7uv54gNNSkTo7VyCFz5brzrgZG0GcL+HormlOz42Jee04HX4ldEH8B8RBa/BTs8D3lpsh
	W9cQjCx/EnK4qmz5q5ljon00DRl4BbUOYgejUJCPlAMBpj2I9zTK0Rfj+pztpz5EMVBE/z
	/ns3tR+WdKTsSL1tDlmvDuPll0KdCXU=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=none (diktynna.open-mesh.org: domain of linus.luessing@c0d3.blue has no SPF policy when checking 2a01:4f8:c2c:665b::1) smtp.mailfrom=linus.luessing@c0d3.blue
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1620589530;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=wz1aEZsQhu/WQkAyoJkhzen0dDkS7IBsiueVz2i/Lw4=;
	b=qHryzN3438K3ppSU80fiU+dSgHIFqeO0oe3ol7gMqrgY26ASBCS2fvPxDiWWzcu4vgGPSJ
	iapl2of0fQ/mYs6hWQ18kIE8C522WwKoXJ2Hgn4s1Wnw5J4kqIuTfYchLMJ5WxNficNjcu
	cBeQQzRq3eFl1ppeCXYpqFtA+TLAWx8=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: 2PT6MS2OHQX5TM6DYGZGOL47CBNUV7ON
X-Message-ID-Hash: 2PT6MS2OHQX5TM6DYGZGOL47CBNUV7ON
X-MailFrom: linus.luessing@c0d3.blue
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: Roopa Prabhu <roopa@nvidia.com>, Nikolay Aleksandrov <nikolay@nvidia.com>, Jakub Kicinski <kuba@kernel.org>, "David S . Miller" <davem@davemloft.net>, bridge@lists.linux-foundation.org, b.a.t.m.a.n@lists.open-mesh.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/2PT6MS2OHQX5TM6DYGZGOL47CBNUV7ON/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

In preparation for the upcoming split of multicast router state into
their IPv4 and IPv6 variants split router port deletion and notification
into two functions. When we disable a port for instance later we want to
only send one notification to switchdev and netlink for compatibility
and want to avoid sending one for IPv4 and one for IPv6. For that the
split is needed.

Signed-off-by: Linus L=C3=BCssing <linus.luessing@c0d3.blue>
---
 net/bridge/br_multicast.c | 40 ++++++++++++++++++++++++++++++---------
 1 file changed, 31 insertions(+), 9 deletions(-)

diff --git a/net/bridge/br_multicast.c b/net/bridge/br_multicast.c
index 839d21b..39854d5 100644
--- a/net/bridge/br_multicast.c
+++ b/net/bridge/br_multicast.c
@@ -60,7 +60,8 @@ static void br_ip4_multicast_leave_group(struct net_bri=
dge *br,
 					 const unsigned char *src);
 static void br_multicast_port_group_rexmit(struct timer_list *t);
=20
-static void __del_port_router(struct net_bridge_port *p);
+static void
+br_multicast_rport_del_notify(struct net_bridge_port *p, bool deleted);
 #if IS_ENABLED(CONFIG_IPV6)
 static void br_ip6_multicast_leave_group(struct net_bridge *br,
 					 struct net_bridge_port *port,
@@ -1354,11 +1355,26 @@ static int br_ip6_multicast_add_group(struct net_=
bridge *br,
 }
 #endif
=20
+static bool br_multicast_rport_del(struct hlist_node *rlist)
+{
+	if (hlist_unhashed(rlist))
+		return false;
+
+	hlist_del_init_rcu(rlist);
+	return true;
+}
+
+static inline bool br_ip4_multicast_rport_del(struct net_bridge_port *p)
+{
+	return br_multicast_rport_del(&p->ip4_rlist);
+}
+
 static void br_multicast_router_expired(struct net_bridge_port *port,
 					struct timer_list *t,
 					struct hlist_node *rlist)
 {
 	struct net_bridge *br =3D port->br;
+	bool del;
=20
 	spin_lock(&br->multicast_lock);
 	if (port->multicast_router =3D=3D MDB_RTR_TYPE_DISABLED ||
@@ -1366,7 +1382,8 @@ static void br_multicast_router_expired(struct net_=
bridge_port *port,
 	    timer_pending(t))
 		goto out;
=20
-	__del_port_router(port);
+	del =3D br_multicast_rport_del(rlist);
+	br_multicast_rport_del_notify(port, del);
 out:
 	spin_unlock(&br->multicast_lock);
 }
@@ -1706,19 +1723,20 @@ void br_multicast_disable_port(struct net_bridge_=
port *port)
 	struct net_bridge *br =3D port->br;
 	struct net_bridge_port_group *pg;
 	struct hlist_node *n;
+	bool del =3D false;
=20
 	spin_lock(&br->multicast_lock);
 	hlist_for_each_entry_safe(pg, n, &port->mglist, mglist)
 		if (!(pg->flags & MDB_PG_FLAGS_PERMANENT))
 			br_multicast_find_del_pg(br, pg);
=20
-	__del_port_router(port);
-
+	del |=3D br_ip4_multicast_rport_del(port);
 	del_timer(&port->ip4_mc_router_timer);
 	del_timer(&port->ip4_own_query.timer);
 #if IS_ENABLED(CONFIG_IPV6)
 	del_timer(&port->ip6_own_query.timer);
 #endif
+	br_multicast_rport_del_notify(port, del);
 	spin_unlock(&br->multicast_lock);
 }
=20
@@ -3508,11 +3526,12 @@ int br_multicast_set_router(struct net_bridge *br=
, unsigned long val)
 	return err;
 }
=20
-static void __del_port_router(struct net_bridge_port *p)
+static void
+br_multicast_rport_del_notify(struct net_bridge_port *p, bool deleted)
 {
-	if (hlist_unhashed(&p->ip4_rlist))
+	if (!deleted)
 		return;
-	hlist_del_init_rcu(&p->ip4_rlist);
+
 	br_rtr_notify(p->br->dev, p, RTM_DELMDB);
 	br_port_mc_router_state_change(p, false);
=20
@@ -3526,6 +3545,7 @@ int br_multicast_set_port_router(struct net_bridge_=
port *p, unsigned long val)
 	struct net_bridge *br =3D p->br;
 	unsigned long now =3D jiffies;
 	int err =3D -EINVAL;
+	bool del =3D false;
=20
 	spin_lock(&br->multicast_lock);
 	if (p->multicast_router =3D=3D val) {
@@ -3539,12 +3559,14 @@ int br_multicast_set_port_router(struct net_bridg=
e_port *p, unsigned long val)
 	switch (val) {
 	case MDB_RTR_TYPE_DISABLED:
 		p->multicast_router =3D MDB_RTR_TYPE_DISABLED;
-		__del_port_router(p);
+		del |=3D br_ip4_multicast_rport_del(p);
 		del_timer(&p->ip4_mc_router_timer);
+		br_multicast_rport_del_notify(p, del);
 		break;
 	case MDB_RTR_TYPE_TEMP_QUERY:
 		p->multicast_router =3D MDB_RTR_TYPE_TEMP_QUERY;
-		__del_port_router(p);
+		del |=3D br_ip4_multicast_rport_del(p);
+		br_multicast_rport_del_notify(p, del);
 		break;
 	case MDB_RTR_TYPE_PERM:
 		p->multicast_router =3D MDB_RTR_TYPE_PERM;
--=20
2.31.0
