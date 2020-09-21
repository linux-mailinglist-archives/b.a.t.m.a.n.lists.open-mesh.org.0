Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id BD5822721F9
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 21 Sep 2020 13:12:36 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 845D48061F;
	Mon, 21 Sep 2020 13:12:35 +0200 (CEST)
Received: from mail-lf1-x141.google.com (mail-lf1-x141.google.com [IPv6:2a00:1450:4864:20::141])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id A3D10800A7
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 21 Sep 2020 13:03:40 +0200 (CEST)
Received: by mail-lf1-x141.google.com with SMTP id q8so13497026lfb.6
        for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 21 Sep 2020 04:03:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=blackwall-org.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ynxvS52GFgVISxCrLMAhqxHP2Rg1ErDlZ6rvqJHD3LY=;
        b=wynHXAYxsNjuoEi/JC8ohwBBCrHAgzwxZEjioK0s7AYUgb3Z1tDN+RXmyGS+ie70hk
         h6WhOhzcno56py0sUdEduLmAyGLO6j8/y18vKKsbvhtWhBNK9vGf1SiZ/o204QmLau3q
         Nil5G81dGq1Hoj1yevlALDLblog4E5fZjPgsT6U4Adg2kDDiGscJsJTQqR4LKu71hesH
         mOmNFJBeGbwh/WqTPQoN8Fxr8CqjeePwqIoWlm9KuWyD/WYP1EL5myt8rqhOga+/CN09
         c1Mc7pFZiJIjABkERJfeEnC79+NQU32ve/i6rpXMEWlz0kMVFeYzxglqevHjIKBMV7r1
         z9pQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ynxvS52GFgVISxCrLMAhqxHP2Rg1ErDlZ6rvqJHD3LY=;
        b=P3ncsh7kOkLfMOySk1Oa0loaDZr6iFLufEc0RX+YYexmF2hvc6Poo7xXDfboKfKBJF
         aZlrePsqNHqTwetS5kzMxRwOmeCA2uPXUPIyFIjQBH0J7azOab0tVUeDNSUt1d56X8l1
         8RdB5sRcJpdl6PbPuaYT3+SgIhAOGMbbAzgSu8KPp36BRSvnAUnMMUgsxYCtWUQQUA3Y
         wLPmTBpM/U4vZEwNx85lFKpe5kZz1GaxK9UC3dUi3LHZm2nakcoZFqUtLXJx8wzJ7tEq
         9nmPqrQrOQ905MVuqRqPFf/+Mvd8YAB90e34HCH2rjvZYRvZin7SGoQgpcotK1wwU2N+
         D4rw==
X-Gm-Message-State: AOAM532DGdVITdzSzuLvh5N9jySus0FknM4s/hVnOqCCcVElj1qLujD7
	4q3OI+5zRDyEBWoE2uXTgdt/3sR0qenk+gvF/Bq5Ng==
X-Google-Smtp-Source: ABdhPJwU3WxzcYVx22Hj9ED3ESNltJqeNCT5v/HF3o6fCy+jH3Aayvo5Kzbn7nhmOrcTvgpC3oUsIA==
X-Received: by 2002:adf:ee8d:: with SMTP id b13mr56080531wro.249.1600685775981;
        Mon, 21 Sep 2020 03:56:15 -0700 (PDT)
Received: from debil.vdiclient.nvidia.com (84-238-136-197.ip.btc-net.bg. [84.238.136.197])
        by smtp.gmail.com with ESMTPSA id s11sm19637727wrt.43.2020.09.21.03.56.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Sep 2020 03:56:15 -0700 (PDT)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Subject: [PATCH net-next 06/16] net: bridge: mcast: rename br_ip's u member to dst
Date: Mon, 21 Sep 2020 13:55:16 +0300
Message-Id: <20200921105526.1056983-7-razor@blackwall.org>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20200921105526.1056983-1-razor@blackwall.org>
References: <20200921105526.1056983-1-razor@blackwall.org>
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1600686220;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=ynxvS52GFgVISxCrLMAhqxHP2Rg1ErDlZ6rvqJHD3LY=;
	b=Nqt4Ci99SeB8XlhckbF5KalmFUsW/xPzSr6ZVZa8pOs7CRJjc+u4y7U9bU3nVqd/Kx4MAW
	uJHjRIlwS6k4dNTCPGknF+KuXXY6QYwPCSU7QfxFlnRFV4fQkrvujpYOE8z/oh5jNXpmO/
	Tq8c3pdHmqJJ5LSaq5dmRoov8eHITDE=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1600686220; a=rsa-sha256;
	cv=none;
	b=fidAGTedWhW23009IUg8E/4SuRk6Gm2faRGkHgqNR2o0TIjBuzt/rtllJc1/t5MFs59f4l
	V2UKhdu7Ff8OpXGELmP7DThHOZHnHMWtkNyMqxqLYiygVLzoHVb441/YznkR7Ptty+RJF/
	CuHc7vP5vMdGu0bbk9LwK7FwrsYiiRg=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=blackwall-org.20150623.gappssmtp.com header.s=20150623 header.b=wynHXAYx;
	spf=none (diktynna.open-mesh.org: domain of razor@blackwall.org has no SPF policy when checking 2a00:1450:4864:20::141) smtp.mailfrom=razor@blackwall.org
Content-Transfer-Encoding: quoted-printable
X-MailFrom: razor@blackwall.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
Message-ID-Hash: KMVJSXG2W7UMKSUOQ6U4LYU2A5QHVDEI
X-Message-ID-Hash: KMVJSXG2W7UMKSUOQ6U4LYU2A5QHVDEI
X-Mailman-Approved-At: Mon, 21 Sep 2020 11:12:33 +0200
CC: roopa@nvidia.com, davem@davemloft.net, bridge@lists.linux-foundation.org, Nikolay Aleksandrov <nikolay@nvidia.com>, Marek Lindner <mareklindner@neomailbox.ch>, b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/KMVJSXG2W7UMKSUOQ6U4LYU2A5QHVDEI/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

From: Nikolay Aleksandrov <nikolay@nvidia.com>

Since now we have src in br_ip, u no longer makes sense so rename
it to dst. No functional changes.

CC: Marek Lindner <mareklindner@neomailbox.ch>
CC: Simon Wunderlich <sw@simonwunderlich.de>
CC: Antonio Quartulli <a@unstable.cc
CC: Sven Eckelmann <sven@narfation.org>
CC: b.a.t.m.a.n@lists.open-mesh.org
Signed-off-by: Nikolay Aleksandrov <nikolay@nvidia.com>
---
 include/linux/if_bridge.h  |  2 +-
 net/batman-adv/multicast.c | 10 +++++-----
 net/bridge/br_mdb.c        | 16 ++++++++--------
 net/bridge/br_multicast.c  | 26 +++++++++++++-------------
 4 files changed, 27 insertions(+), 27 deletions(-)

diff --git a/include/linux/if_bridge.h b/include/linux/if_bridge.h
index 4fb9c4954f3a..556caed00258 100644
--- a/include/linux/if_bridge.h
+++ b/include/linux/if_bridge.h
@@ -25,7 +25,7 @@ struct br_ip {
 #if IS_ENABLED(CONFIG_IPV6)
 		struct in6_addr ip6;
 #endif
-	} u;
+	} dst;
 	__be16		proto;
 	__u16           vid;
 };
diff --git a/net/batman-adv/multicast.c b/net/batman-adv/multicast.c
index 1622c3f5898f..2317c0d69b58 100644
--- a/net/batman-adv/multicast.c
+++ b/net/batman-adv/multicast.c
@@ -220,7 +220,7 @@ static u8 batadv_mcast_mla_rtr_flags_bridge_get(struc=
t batadv_priv *bat_priv,
 		 * address here, only IPv6 ones
 		 */
 		if (br_ip_entry->addr.proto =3D=3D htons(ETH_P_IPV6) &&
-		    ipv6_addr_is_ll_all_routers(&br_ip_entry->addr.u.ip6))
+		    ipv6_addr_is_ll_all_routers(&br_ip_entry->addr.dst.ip6))
 			flags &=3D ~BATADV_MCAST_WANT_NO_RTR6;
=20
 		list_del(&br_ip_entry->list);
@@ -608,11 +608,11 @@ static int batadv_mcast_mla_bridge_get(struct net_d=
evice *dev,
 				continue;
=20
 			if (tvlv_flags & BATADV_MCAST_WANT_ALL_UNSNOOPABLES &&
-			    ipv4_is_local_multicast(br_ip_entry->addr.u.ip4))
+			    ipv4_is_local_multicast(br_ip_entry->addr.dst.ip4))
 				continue;
=20
 			if (!(tvlv_flags & BATADV_MCAST_WANT_NO_RTR4) &&
-			    !ipv4_is_local_multicast(br_ip_entry->addr.u.ip4))
+			    !ipv4_is_local_multicast(br_ip_entry->addr.dst.ip4))
 				continue;
 		}
=20
@@ -622,11 +622,11 @@ static int batadv_mcast_mla_bridge_get(struct net_d=
evice *dev,
 				continue;
=20
 			if (tvlv_flags & BATADV_MCAST_WANT_ALL_UNSNOOPABLES &&
-			    ipv6_addr_is_ll_all_nodes(&br_ip_entry->addr.u.ip6))
+			    ipv6_addr_is_ll_all_nodes(&br_ip_entry->addr.dst.ip6))
 				continue;
=20
 			if (!(tvlv_flags & BATADV_MCAST_WANT_NO_RTR6) &&
-			    IPV6_ADDR_MC_SCOPE(&br_ip_entry->addr.u.ip6) >
+			    IPV6_ADDR_MC_SCOPE(&br_ip_entry->addr.dst.ip6) >
 			    IPV6_ADDR_SCOPE_LINKLOCAL)
 				continue;
 		}
diff --git a/net/bridge/br_mdb.c b/net/bridge/br_mdb.c
index 269ffd2e549b..a1ff0a372185 100644
--- a/net/bridge/br_mdb.c
+++ b/net/bridge/br_mdb.c
@@ -70,10 +70,10 @@ static void __mdb_entry_to_br_ip(struct br_mdb_entry =
*entry, struct br_ip *ip)
 	ip->vid =3D entry->vid;
 	ip->proto =3D entry->addr.proto;
 	if (ip->proto =3D=3D htons(ETH_P_IP))
-		ip->u.ip4 =3D entry->addr.u.ip4;
+		ip->dst.ip4 =3D entry->addr.u.ip4;
 #if IS_ENABLED(CONFIG_IPV6)
 	else
-		ip->u.ip6 =3D entry->addr.u.ip6;
+		ip->dst.ip6 =3D entry->addr.u.ip6;
 #endif
 }
=20
@@ -158,10 +158,10 @@ static int __mdb_fill_info(struct sk_buff *skb,
 	e.ifindex =3D ifindex;
 	e.vid =3D mp->addr.vid;
 	if (mp->addr.proto =3D=3D htons(ETH_P_IP))
-		e.addr.u.ip4 =3D mp->addr.u.ip4;
+		e.addr.u.ip4 =3D mp->addr.dst.ip4;
 #if IS_ENABLED(CONFIG_IPV6)
 	if (mp->addr.proto =3D=3D htons(ETH_P_IPV6))
-		e.addr.u.ip6 =3D mp->addr.u.ip6;
+		e.addr.u.ip6 =3D mp->addr.dst.ip6;
 #endif
 	e.addr.proto =3D mp->addr.proto;
 	nest_ent =3D nla_nest_start_noflag(skb,
@@ -474,10 +474,10 @@ static void br_mdb_switchdev_host_port(struct net_d=
evice *dev,
 	};
=20
 	if (mp->addr.proto =3D=3D htons(ETH_P_IP))
-		ip_eth_mc_map(mp->addr.u.ip4, mdb.addr);
+		ip_eth_mc_map(mp->addr.dst.ip4, mdb.addr);
 #if IS_ENABLED(CONFIG_IPV6)
 	else
-		ipv6_eth_mc_map(&mp->addr.u.ip6, mdb.addr);
+		ipv6_eth_mc_map(&mp->addr.dst.ip6, mdb.addr);
 #endif
=20
 	mdb.obj.orig_dev =3D dev;
@@ -520,10 +520,10 @@ void br_mdb_notify(struct net_device *dev,
=20
 	if (pg) {
 		if (mp->addr.proto =3D=3D htons(ETH_P_IP))
-			ip_eth_mc_map(mp->addr.u.ip4, mdb.addr);
+			ip_eth_mc_map(mp->addr.dst.ip4, mdb.addr);
 #if IS_ENABLED(CONFIG_IPV6)
 		else
-			ipv6_eth_mc_map(&mp->addr.u.ip6, mdb.addr);
+			ipv6_eth_mc_map(&mp->addr.dst.ip6, mdb.addr);
 #endif
 		mdb.obj.orig_dev =3D pg->port->dev;
 		switch (type) {
diff --git a/net/bridge/br_multicast.c b/net/bridge/br_multicast.c
index a899c22c8f57..e1fb822b9ddb 100644
--- a/net/bridge/br_multicast.c
+++ b/net/bridge/br_multicast.c
@@ -86,7 +86,7 @@ static struct net_bridge_mdb_entry *br_mdb_ip4_get(stru=
ct net_bridge *br,
 	struct br_ip br_dst;
=20
 	memset(&br_dst, 0, sizeof(br_dst));
-	br_dst.u.ip4 =3D dst;
+	br_dst.dst.ip4 =3D dst;
 	br_dst.proto =3D htons(ETH_P_IP);
 	br_dst.vid =3D vid;
=20
@@ -101,7 +101,7 @@ static struct net_bridge_mdb_entry *br_mdb_ip6_get(st=
ruct net_bridge *br,
 	struct br_ip br_dst;
=20
 	memset(&br_dst, 0, sizeof(br_dst));
-	br_dst.u.ip6 =3D *dst;
+	br_dst.dst.ip6 =3D *dst;
 	br_dst.proto =3D htons(ETH_P_IPV6);
 	br_dst.vid =3D vid;
=20
@@ -126,11 +126,11 @@ struct net_bridge_mdb_entry *br_mdb_get(struct net_=
bridge *br,
=20
 	switch (skb->protocol) {
 	case htons(ETH_P_IP):
-		ip.u.ip4 =3D ip_hdr(skb)->daddr;
+		ip.dst.ip4 =3D ip_hdr(skb)->daddr;
 		break;
 #if IS_ENABLED(CONFIG_IPV6)
 	case htons(ETH_P_IPV6):
-		ip.u.ip6 =3D ipv6_hdr(skb)->daddr;
+		ip.dst.ip6 =3D ipv6_hdr(skb)->daddr;
 		break;
 #endif
 	default:
@@ -625,9 +625,9 @@ static struct sk_buff *br_multicast_alloc_query(struc=
t net_bridge *br,
=20
 	switch (group->proto) {
 	case htons(ETH_P_IP):
-		ip4_dst =3D ip_dst ? ip_dst->u.ip4 : htonl(INADDR_ALLHOSTS_GROUP);
+		ip4_dst =3D ip_dst ? ip_dst->dst.ip4 : htonl(INADDR_ALLHOSTS_GROUP);
 		return br_ip4_multicast_alloc_query(br, pg,
-						    ip4_dst, group->u.ip4,
+						    ip4_dst, group->dst.ip4,
 						    with_srcs, over_lmqt,
 						    sflag, igmp_type,
 						    need_rexmit);
@@ -636,13 +636,13 @@ static struct sk_buff *br_multicast_alloc_query(str=
uct net_bridge *br,
 		struct in6_addr ip6_dst;
=20
 		if (ip_dst)
-			ip6_dst =3D ip_dst->u.ip6;
+			ip6_dst =3D ip_dst->dst.ip6;
 		else
 			ipv6_addr_set(&ip6_dst, htonl(0xff020000), 0, 0,
 				      htonl(1));
=20
 		return br_ip6_multicast_alloc_query(br, pg,
-						    &ip6_dst, &group->u.ip6,
+						    &ip6_dst, &group->dst.ip6,
 						    with_srcs, over_lmqt,
 						    sflag, igmp_type,
 						    need_rexmit);
@@ -906,7 +906,7 @@ static int br_ip4_multicast_add_group(struct net_brid=
ge *br,
 		return 0;
=20
 	memset(&br_group, 0, sizeof(br_group));
-	br_group.u.ip4 =3D group;
+	br_group.dst.ip4 =3D group;
 	br_group.proto =3D htons(ETH_P_IP);
 	br_group.vid =3D vid;
 	filter_mode =3D igmpv2 ? MCAST_EXCLUDE : MCAST_INCLUDE;
@@ -930,7 +930,7 @@ static int br_ip6_multicast_add_group(struct net_brid=
ge *br,
 		return 0;
=20
 	memset(&br_group, 0, sizeof(br_group));
-	br_group.u.ip6 =3D *group;
+	br_group.dst.ip6 =3D *group;
 	br_group.proto =3D htons(ETH_P_IPV6);
 	br_group.vid =3D vid;
 	filter_mode =3D mldv1 ? MCAST_EXCLUDE : MCAST_INCLUDE;
@@ -1079,7 +1079,7 @@ static void br_multicast_send_query(struct net_brid=
ge *br,
 	    !br_opt_get(br, BROPT_MULTICAST_QUERIER))
 		return;
=20
-	memset(&br_group.u, 0, sizeof(br_group.u));
+	memset(&br_group.dst, 0, sizeof(br_group.dst));
=20
 	if (port ? (own_query =3D=3D &port->ip4_own_query) :
 		   (own_query =3D=3D &br->ip4_own_query)) {
@@ -2506,7 +2506,7 @@ static void br_ip4_multicast_leave_group(struct net=
_bridge *br,
 	own_query =3D port ? &port->ip4_own_query : &br->ip4_own_query;
=20
 	memset(&br_group, 0, sizeof(br_group));
-	br_group.u.ip4 =3D group;
+	br_group.dst.ip4 =3D group;
 	br_group.proto =3D htons(ETH_P_IP);
 	br_group.vid =3D vid;
=20
@@ -2530,7 +2530,7 @@ static void br_ip6_multicast_leave_group(struct net=
_bridge *br,
 	own_query =3D port ? &port->ip6_own_query : &br->ip6_own_query;
=20
 	memset(&br_group, 0, sizeof(br_group));
-	br_group.u.ip6 =3D *group;
+	br_group.dst.ip6 =3D *group;
 	br_group.proto =3D htons(ETH_P_IPV6);
 	br_group.vid =3D vid;
=20
--=20
2.25.4
