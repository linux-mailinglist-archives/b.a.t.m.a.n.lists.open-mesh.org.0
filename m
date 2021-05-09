Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 13AD3377844
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun,  9 May 2021 21:46:21 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 0674783EE4;
	Sun,  9 May 2021 21:46:14 +0200 (CEST)
Received: from mail.aperture-lab.de (mail.aperture-lab.de [IPv6:2a01:4f8:c2c:665b::1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 07D0F83E53
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun,  9 May 2021 21:45:33 +0200 (CEST)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 5BFED3EDDE;
	Sun,  9 May 2021 21:45:32 +0200 (CEST)
From: =?UTF-8?q?Linus=20L=C3=BCssing?= <linus.luessing@c0d3.blue>
To: netdev@vger.kernel.org
Subject: [net-next v2 11/11] net: bridge: mcast: export multicast router presence adjacent to a port
Date: Sun,  9 May 2021 21:45:09 +0200
Message-Id: <20210509194509.10849-12-linus.luessing@c0d3.blue>
In-Reply-To: <20210509194509.10849-1-linus.luessing@c0d3.blue>
References: <20210509194509.10849-1-linus.luessing@c0d3.blue>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Last-TLS-Session-Version: TLSv1.2
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1620589533; a=rsa-sha256;
	cv=none;
	b=YBTT6dN83pWVF4GV8xjSWwTsyu/U27MHfwbNJ1MFRDgwNbSUVbTx2bPfB3ErU8clSBGyWP
	nduQ1dxPn8G5MUE1KpuE2eCvxkqi+MyWo88M9nCVf18YXVS+IfEpfxwJgPR/FV+QEOdBuu
	i7g3sqScA+jjKYP1nN9FtcJ0b3KuRi4=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=none (diktynna.open-mesh.org: domain of linus.luessing@c0d3.blue has no SPF policy when checking 2a01:4f8:c2c:665b::1) smtp.mailfrom=linus.luessing@c0d3.blue
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1620589533;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Y/xWHgZW15t2k875gWtkdbnBAcDpxFMVFRHX/PAn3GA=;
	b=FzIGKVh/sys+bVvhZNHpydkVyZtGwsWZdv+eg+BvILTLQR0djOMogOLgw911BA3f5Sw9RG
	Ttwh7Q1bOcJMpslSZ957Zq8WIyB3NdqERhqyQfuxYgR3/KLx2WoOWdaYAAkSk6Ua5cZDc6
	/Jfy3rHHpv9ULa52Was2W5RsGw+4eTU=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: IGXK4NVN4HCJV5A2JGIDZYRYETHFVYCT
X-Message-ID-Hash: IGXK4NVN4HCJV5A2JGIDZYRYETHFVYCT
X-MailFrom: linus.luessing@c0d3.blue
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: Roopa Prabhu <roopa@nvidia.com>, Nikolay Aleksandrov <nikolay@nvidia.com>, Jakub Kicinski <kuba@kernel.org>, "David S . Miller" <davem@davemloft.net>, bridge@lists.linux-foundation.org, b.a.t.m.a.n@lists.open-mesh.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/IGXK4NVN4HCJV5A2JGIDZYRYETHFVYCT/>
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
 net/bridge/br_multicast.c | 58 +++++++++++++++++++++++++++++++++++++++
 1 file changed, 58 insertions(+)

diff --git a/net/bridge/br_multicast.c b/net/bridge/br_multicast.c
index b625fd6..e963de5 100644
--- a/net/bridge/br_multicast.c
+++ b/net/bridge/br_multicast.c
@@ -4061,6 +4061,64 @@ unlock:
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
