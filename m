Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id A816236A82D
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 25 Apr 2021 18:01:53 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 7593683DF5;
	Sun, 25 Apr 2021 18:01:50 +0200 (CEST)
Received: from mail.aperture-lab.de (mail.aperture-lab.de [116.203.183.178])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 01BEB83D8A
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 25 Apr 2021 18:01:47 +0200 (CEST)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 609933ED90;
	Sun, 25 Apr 2021 18:01:47 +0200 (CEST)
From: =?UTF-8?q?Linus=20L=C3=BCssing?= <linus.luessing@c0d3.blue>
To: netdev@vger.kernel.org
Subject: [PATCH net-next 2/2] net: bridge: mcast: export multicast router presence adjacent to a port
Date: Sun, 25 Apr 2021 18:00:50 +0200
Message-Id: <20210425160050.8732-3-linus.luessing@c0d3.blue>
In-Reply-To: <20210425160050.8732-1-linus.luessing@c0d3.blue>
References: <20210425160050.8732-1-linus.luessing@c0d3.blue>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Last-TLS-Session-Version: TLSv1.2
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1619366508; a=rsa-sha256;
	cv=none;
	b=F6ZtRC29LWQb4RoM+6E4mwAmwz0qFv3ic1o/rTyD3Fs9KS8Yd1kl35OkmRiWueK30mD7U3
	bld4h/Az8NH513f6c/O8t2rZcsTScEMKAmbMm3nulG+r7BSvpp0YUZ/LWNZuEBVtdTXO78
	b+EdrEv1LGzzrengggkxcshI0lDbEzw=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=none (diktynna.open-mesh.org: domain of linus.luessing@c0d3.blue has no SPF policy when checking 116.203.183.178) smtp.mailfrom=linus.luessing@c0d3.blue
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1619366508;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=IPsOpR6OHNsu1fDLF0OsVzqClKWdJO2qZvqjYpIRPvg=;
	b=hT+8O1SsNgsysdQASu6To/t6LuVmoYL1CE+nwkKpwA6VhAHul7s8F1IGQUbd7+4MkoAZm0
	j96npc2poGS16/ZxN1EUzI9XEHpu+PNxInWHeCoEYCAMpAo6cuvf1kYwhbUgHB+A+2G/x4
	3oZ9gqQfgOt5QdntNFHQHADjUwjfhzQ=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: NJB7GJDPQ67RQKNHQWGJ7NJGFCRORBLB
X-Message-ID-Hash: NJB7GJDPQ67RQKNHQWGJ7NJGFCRORBLB
X-MailFrom: linus.luessing@c0d3.blue
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: Roopa Prabhu <roopa@nvidia.com>, Nikolay Aleksandrov <nikolay@nvidia.com>, Jakub Kicinski <kuba@kernel.org>, "David S . Miller" <davem@davemloft.net>, bridge@lists.linux-foundation.org, b.a.t.m.a.n@lists.open-mesh.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/NJB7GJDPQ67RQKNHQWGJ7NJGFCRORBLB/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

To properly support routable multicast addresses in batman-adv in a
group-aware way, a batman-adv node needs to know if it serves multicast
routers.

This adds a function to the bridge to export this so that batman-adv
can then make full use of the Multicast Router Discovery capability of
the bridge.

Signed-off-by: Linus L=C3=BCssing <linus.luessing@c0d3.blue>
---
 include/linux/if_bridge.h |  8 ++++++
 net/bridge/br_multicast.c | 58 +++++++++++++++++++++++++++++++++++++++
 2 files changed, 66 insertions(+)

diff --git a/include/linux/if_bridge.h b/include/linux/if_bridge.h
index 2cc35038a8ca..12e9a32dbca0 100644
--- a/include/linux/if_bridge.h
+++ b/include/linux/if_bridge.h
@@ -67,6 +67,7 @@ int br_multicast_list_adjacent(struct net_device *dev,
 			       struct list_head *br_ip_list);
 bool br_multicast_has_querier_anywhere(struct net_device *dev, int proto=
);
 bool br_multicast_has_querier_adjacent(struct net_device *dev, int proto=
);
+bool br_multicast_has_router_adjacent(struct net_device *dev, int proto)=
;
 bool br_multicast_enabled(const struct net_device *dev);
 bool br_multicast_router(const struct net_device *dev);
 int br_mdb_replay(struct net_device *br_dev, struct net_device *dev,
@@ -87,6 +88,13 @@ static inline bool br_multicast_has_querier_adjacent(s=
truct net_device *dev,
 {
 	return false;
 }
+
+static inline bool br_multicast_has_router_adjacent(struct net_device *d=
ev,
+						    int proto)
+{
+	return true;
+}
+
 static inline bool br_multicast_enabled(const struct net_device *dev)
 {
 	return false;
diff --git a/net/bridge/br_multicast.c b/net/bridge/br_multicast.c
index 0ebdbf09f44c..4afaf011f171 100644
--- a/net/bridge/br_multicast.c
+++ b/net/bridge/br_multicast.c
@@ -4013,6 +4013,64 @@ bool br_multicast_has_querier_adjacent(struct net_=
device *dev, int proto)
 }
 EXPORT_SYMBOL_GPL(br_multicast_has_querier_adjacent);
=20
+/**
+ * br_multicast_has_router_adjacent - Checks for a router behind a bridg=
e port
+ * @dev: The bridge port adjacent to which to check for a multicast rout=
er
+ * @proto: The protocol family to check for: IGMP -> ETH_P_IP, MLD -> ET=
H_P_IPV6
+ *
+ * Checks whether the given interface has a bridge on top and if so retu=
rns
+ * true if a multicast router is behind one of the other ports of this
+ * bridge. Otherwise returns false.
+ */
+bool br_multicast_has_router_adjacent(struct net_device *dev, int proto)
+{
+	struct net_bridge_port *port, *p;
+	bool ret =3D false;
+
+	rcu_read_lock();
+	if (!netif_is_bridge_port(dev))
+		goto unlock;
+
+	port =3D br_port_get_rcu(dev);
+	if (!port || !port->br)
+		goto unlock;
+
+	switch (proto) {
+	case ETH_P_IP:
+		hlist_for_each_entry_rcu(p, &port->br->ip4_mc_router_list,
+					 ip4_rlist) {
+			if (p =3D=3D port)
+				continue;
+
+			ret =3D true;
+			goto unlock;
+		}
+		break;
+#if IS_ENABLED(CONFIG_IPV6)
+	case ETH_P_IPV6:
+		hlist_for_each_entry_rcu(p, &port->br->ip6_mc_router_list,
+					 ip6_rlist) {
+			if (p =3D=3D port)
+				continue;
+
+			ret =3D true;
+			goto unlock;
+		}
+		break;
+#endif
+	default:
+		/* when compiled without IPv6 support, be conservative and
+		 * always assume presence of an IPv6 multicast router
+		 */
+		ret =3D true;
+	}
+
+unlock:
+	rcu_read_unlock();
+	return ret;
+}
+EXPORT_SYMBOL_GPL(br_multicast_has_router_adjacent);
+
 static void br_mcast_stats_add(struct bridge_mcast_stats __percpu *stats=
,
 			       const struct sk_buff *skb, u8 type, u8 dir)
 {
--=20
2.31.0
