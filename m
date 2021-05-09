Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F3B9377840
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun,  9 May 2021 21:45:59 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 3BA7483EB5;
	Sun,  9 May 2021 21:45:55 +0200 (CEST)
Received: from mail.aperture-lab.de (mail.aperture-lab.de [IPv6:2a01:4f8:c2c:665b::1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 04EFC83E71
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun,  9 May 2021 21:45:29 +0200 (CEST)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 1ED773ED8B;
	Sun,  9 May 2021 21:45:28 +0200 (CEST)
From: =?UTF-8?q?Linus=20L=C3=BCssing?= <linus.luessing@c0d3.blue>
To: netdev@vger.kernel.org
Subject: [net-next v2 07/11] net: bridge: mcast: prepare add-router function for mcast router split
Date: Sun,  9 May 2021 21:45:05 +0200
Message-Id: <20210509194509.10849-8-linus.luessing@c0d3.blue>
In-Reply-To: <20210509194509.10849-1-linus.luessing@c0d3.blue>
References: <20210509194509.10849-1-linus.luessing@c0d3.blue>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Last-TLS-Session-Version: TLSv1.2
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1620589529; a=rsa-sha256;
	cv=none;
	b=ol9Rc3jXaK3K0vRqmEAn3D6N5GZk7+QnPQ4eNz9cJ8AW001hwBVx/vwEDYTAhNAYW3TOm9
	rKyY5/x6lSo3Us7sUlIouiJqSo4oxr6OXlUoNs5CaUZnkhFD7gjvQi5j2CbpSxFRwNkTEb
	/WCPBvVASyxGMqeCdJjoWnfxbbAp1rE=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=none (diktynna.open-mesh.org: domain of linus.luessing@c0d3.blue has no SPF policy when checking 2a01:4f8:c2c:665b::1) smtp.mailfrom=linus.luessing@c0d3.blue
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1620589529;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=zG+pM+lEypNeNNK/88iv2rifa+FNEKyXybJkuPngPyI=;
	b=GWV1IAlOhXSPuCFvGXrQr683It1VHit23deAU/IhEVR/IENXPeoZTcK46lM3QSGsR635qY
	9B+GkxGPhHhKvb5C0cHrDVRkPQSOt0ULn8W3FWKmCflfSBm7B8+l7yMdcZKERmmadD+RVz
	qEt7PMuq0RyL0o541H71RcfV5ccLC3M=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: DKD5HKOZUQ246QKF7OELCPBENWJ2TLQR
X-Message-ID-Hash: DKD5HKOZUQ246QKF7OELCPBENWJ2TLQR
X-MailFrom: linus.luessing@c0d3.blue
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: Roopa Prabhu <roopa@nvidia.com>, Nikolay Aleksandrov <nikolay@nvidia.com>, Jakub Kicinski <kuba@kernel.org>, "David S . Miller" <davem@davemloft.net>, bridge@lists.linux-foundation.org, b.a.t.m.a.n@lists.open-mesh.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/DKD5HKOZUQ246QKF7OELCPBENWJ2TLQR/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

In preparation for the upcoming split of multicast router state into
their IPv4 and IPv6 variants move the protocol specific router list
access to an ip4 wrapper function.

Signed-off-by: Linus L=C3=BCssing <linus.luessing@c0d3.blue>
---
 net/bridge/br_multicast.c | 59 +++++++++++++++++++++++++++------------
 1 file changed, 41 insertions(+), 18 deletions(-)

diff --git a/net/bridge/br_multicast.c b/net/bridge/br_multicast.c
index 6c844b2..839d21b 100644
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
@@ -1689,7 +1689,7 @@ static void __br_multicast_enable_port(struct net_b=
ridge_port *port)
 #endif
 	if (port->multicast_router =3D=3D MDB_RTR_TYPE_PERM &&
 	    hlist_unhashed(&port->ip4_rlist))
-		br_multicast_add_router(br, port);
+		br_ip4_multicast_add_router(br, port);
 }
=20
 void br_multicast_enable_port(struct net_bridge_port *port)
@@ -2659,28 +2659,51 @@ static void br_port_mc_router_state_change(struct=
 net_bridge_port *p,
  *  and locked by br->multicast_lock and RCU
  */
 static void br_multicast_add_router(struct net_bridge *br,
-				    struct net_bridge_port *port)
+				    struct net_bridge_port *port,
+				    struct hlist_node *slot,
+				    struct hlist_node *rlist,
+				    struct hlist_head *mc_router_list)
 {
-	struct net_bridge_port *p;
-	struct hlist_node *slot =3D NULL;
-
-	if (!hlist_unhashed(&port->ip4_rlist))
+	if (!hlist_unhashed(rlist))
 		return;
=20
-	hlist_for_each_entry(p, &br->ip4_mc_router_list, ip4_rlist) {
-		if ((unsigned long) port >=3D (unsigned long) p)
-			break;
-		slot =3D &p->ip4_rlist;
-	}
-
 	if (slot)
-		hlist_add_behind_rcu(&port->ip4_rlist, slot);
+		hlist_add_behind_rcu(rlist, slot);
 	else
-		hlist_add_head_rcu(&port->ip4_rlist, &br->ip4_mc_router_list);
+		hlist_add_head_rcu(rlist, mc_router_list);
+
 	br_rtr_notify(br->dev, port, RTM_NEWMDB);
 	br_port_mc_router_state_change(port, true);
 }
=20
+struct hlist_node *
+br_ip4_multicast_get_rport_slot(struct net_bridge *br, struct net_bridge=
_port *port)
+{
+	struct hlist_node *slot =3D NULL;
+	struct net_bridge_port *p;
+
+	hlist_for_each_entry(p, &br->ip4_mc_router_list, ip4_rlist) {
+		if ((unsigned long)port >=3D (unsigned long)p)
+			break;
+		slot =3D &p->ip4_rlist;
+	}
+
+	return slot;
+}
+
+/* Add port to router_list
+ *  list is maintained ordered by pointer value
+ *  and locked by br->multicast_lock and RCU
+ */
+static void br_ip4_multicast_add_router(struct net_bridge *br,
+					struct net_bridge_port *port)
+{
+	struct hlist_node *slot =3D br_ip4_multicast_get_rport_slot(br, port);
+
+	br_multicast_add_router(br, port, slot, &port->ip4_rlist,
+				&br->ip4_mc_router_list);
+}
+
 static void br_multicast_mark_router(struct net_bridge *br,
 				     struct net_bridge_port *port)
 {
@@ -2700,7 +2723,7 @@ static void br_multicast_mark_router(struct net_bri=
dge *br,
 	    port->multicast_router =3D=3D MDB_RTR_TYPE_PERM)
 		return;
=20
-	br_multicast_add_router(br, port);
+	br_ip4_multicast_add_router(br, port);
=20
 	mod_timer(&port->ip4_mc_router_timer,
 		  now + br->multicast_querier_interval);
@@ -3526,7 +3549,7 @@ int br_multicast_set_port_router(struct net_bridge_=
port *p, unsigned long val)
 	case MDB_RTR_TYPE_PERM:
 		p->multicast_router =3D MDB_RTR_TYPE_PERM;
 		del_timer(&p->ip4_mc_router_timer);
-		br_multicast_add_router(br, p);
+		br_ip4_multicast_add_router(br, p);
 		break;
 	case MDB_RTR_TYPE_TEMP:
 		p->multicast_router =3D MDB_RTR_TYPE_TEMP;
--=20
2.31.0
