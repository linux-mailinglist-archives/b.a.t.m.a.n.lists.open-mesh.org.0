Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id ED04C273CDB
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 22 Sep 2020 10:00:11 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id BA19B80805;
	Tue, 22 Sep 2020 10:00:10 +0200 (CEST)
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 6FAB880218
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 22 Sep 2020 09:30:51 +0200 (CEST)
Received: by mail-wr1-x430.google.com with SMTP id a17so15828965wrn.6
        for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 22 Sep 2020 00:30:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=blackwall-org.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=SaZ23g6utHBVS6/UY6BQ9IjsGAmE0I6Ay+JGEx5cRxA=;
        b=a5sSzYWlhp/YeNylquvM+Wq935bnw43AyQ+5wp9nednxaNQB8k1HG7QFjRhmfeNlLQ
         uXPag8WGQi+Wj8jh8lwAaZeANzJxCXcrYoLN3jZuZhRgHtfDv9KkC4ilKhVTlPDbqxUv
         K1T9Cdzsia6k2b29hg9gEz6IumfsulW99psZYAA0/V4yTpZEshyE5WwUroIvWK/Rz5mY
         QIKClpo1ihQgPoAA4o55Emd9nEhAOVph9lRaj/RfSLi6UHKbjZ4aR9hb94G43CPWcXpL
         CzxisHllJqjjbytks/xfKkbS0Qm1AaKuiY0ViRzXbHlu5TCguKtWnLxD22oY5t9tsN3i
         skVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=SaZ23g6utHBVS6/UY6BQ9IjsGAmE0I6Ay+JGEx5cRxA=;
        b=ftEN5g8AdgA/VxQ4lsu5W6ZkFviLLc66rafy3ctreapnT4hlOG90MF9qfbnR4hULCa
         AKRM4zE2YjYmqS2nDIzeOOat2QntYM0iv2O1u+jEFrzK0Ovl4HOb3VZuECAUzyTBnTNJ
         Wy/TiWpZ/fs0g6YMDWDUCreBjjupEJcMc/UZgU2UoBoLGFTk3tByhbczzNupVcpYMlgM
         Zs6kp3/Z8hGjQAl5UdtNIDHc1a+Sf0RzIvUase1tC2zo+8DvDWok56vBMfXP9HrUK8SN
         Cxr5oJMpPrHh2jr4mxD1DXAfSw4vwuhdZhGqivAJrBG9+WlSJIvDDdaGWbWOdw1GwL6y
         bXZg==
X-Gm-Message-State: AOAM532cntD44jIC4gQKl+tBugTncd0YkDrZ+W3BLAcgLPrwHxUPaEqR
	/xLLlNTZHR29rucSVqN/SE9izQ==
X-Google-Smtp-Source: ABdhPJxW3tUxZQYsIXIPSHe1oKa/GQhvcVfSZIRxtuzw+PXkl1w6JKHvm30xH9dd0VLR5te4w8GjLA==
X-Received: by 2002:a5d:6a42:: with SMTP id t2mr3593361wrw.425.1600759851028;
        Tue, 22 Sep 2020 00:30:51 -0700 (PDT)
Received: from debil.vdiclient.nvidia.com (84-238-136-197.ip.btc-net.bg. [84.238.136.197])
        by smtp.gmail.com with ESMTPSA id s26sm3258287wmh.44.2020.09.22.00.30.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Sep 2020 00:30:50 -0700 (PDT)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Subject: [PATCH net-next v2 06/16] net: bridge: mcast: rename br_ip's u member to dst
Date: Tue, 22 Sep 2020 10:30:17 +0300
Message-Id: <20200922073027.1196992-7-razor@blackwall.org>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20200922073027.1196992-1-razor@blackwall.org>
References: <20200922073027.1196992-1-razor@blackwall.org>
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1600759851;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=SaZ23g6utHBVS6/UY6BQ9IjsGAmE0I6Ay+JGEx5cRxA=;
	b=2a43ngozqBMpGa5JakP/LXS8Jw7wxsBwEQ/zwGWF7DwJGG4kyPyn7WfnDNwx8Stcj7L0u4
	5PQhZYAZD3uA2bpDlL0aFFLEm9bthcqF502rQbuXv93iI6v2t1ADwsJUIEYEkvGIz8yjlH
	PtuOBfJ8+P9irSuBPkKhhqRhM8A1tLs=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1600759851; a=rsa-sha256;
	cv=none;
	b=QfvqiQfcog2Wpbt8bA39QR9H4/0q7S2IE5Gv651D7ae6bz3QxelHMrAlzHmFpbJtapGUQX
	NmtoWbDIbp2/+UsFWw9hSd9p4z5jkfgHNGZEeTg0I7fqDeFi7jQJIlHj9Cq7M3Bx8LIpgu
	SVb2N+umUgeu2014YX9juXd5XMuJXtw=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=blackwall-org.20150623.gappssmtp.com header.s=20150623 header.b=a5sSzYWl;
	spf=none (diktynna.open-mesh.org: domain of razor@blackwall.org has no SPF policy when checking 2a00:1450:4864:20::430) smtp.mailfrom=razor@blackwall.org
Content-Transfer-Encoding: quoted-printable
X-MailFrom: razor@blackwall.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
Message-ID-Hash: DSWREO6GO3TVVIQUZAFMHH5G7MPYJSTM
X-Message-ID-Hash: DSWREO6GO3TVVIQUZAFMHH5G7MPYJSTM
X-Mailman-Approved-At: Tue, 22 Sep 2020 08:00:08 +0200
CC: roopa@nvidia.com, davem@davemloft.net, bridge@lists.linux-foundation.org, Nikolay Aleksandrov <nikolay@nvidia.com>, Marek Lindner <mareklindner@neomailbox.ch>, Antonio Quartulli <a@unstable.cc>, b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/DSWREO6GO3TVVIQUZAFMHH5G7MPYJSTM/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

From: Nikolay Aleksandrov <nikolay@nvidia.com>

Since now we have src in br_ip, u no longer makes sense so rename
it to dst. No functional changes.

v2: fix build with CONFIG_BATMAN_ADV_MCAST

CC: Marek Lindner <mareklindner@neomailbox.ch>
CC: Simon Wunderlich <sw@simonwunderlich.de>
CC: Antonio Quartulli <a@unstable.cc>
CC: Sven Eckelmann <sven@narfation.org>
CC: b.a.t.m.a.n@lists.open-mesh.org
Signed-off-by: Nikolay Aleksandrov <nikolay@nvidia.com>
---
 include/linux/if_bridge.h  |  2 +-
 net/batman-adv/multicast.c | 14 +++++++-------
 net/bridge/br_mdb.c        | 16 ++++++++--------
 net/bridge/br_multicast.c  | 26 +++++++++++++-------------
 4 files changed, 29 insertions(+), 29 deletions(-)

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
index 1622c3f5898f..7dda0f7b3d96 100644
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
@@ -561,10 +561,10 @@ batadv_mcast_mla_softif_get(struct net_device *dev,
 static void batadv_mcast_mla_br_addr_cpy(char *dst, const struct br_ip *=
src)
 {
 	if (src->proto =3D=3D htons(ETH_P_IP))
-		ip_eth_mc_map(src->u.ip4, dst);
+		ip_eth_mc_map(src->dst.ip4, dst);
 #if IS_ENABLED(CONFIG_IPV6)
 	else if (src->proto =3D=3D htons(ETH_P_IPV6))
-		ipv6_eth_mc_map(&src->u.ip6, dst);
+		ipv6_eth_mc_map(&src->dst.ip6, dst);
 #endif
 	else
 		eth_zero_addr(dst);
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
