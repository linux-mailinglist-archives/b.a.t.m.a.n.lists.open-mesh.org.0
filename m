Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 11D5C377833
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun,  9 May 2021 21:45:44 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 0495983E36;
	Sun,  9 May 2021 21:45:38 +0200 (CEST)
Received: from mail.aperture-lab.de (mail.aperture-lab.de [IPv6:2a01:4f8:c2c:665b::1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id C6F6983DDA
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun,  9 May 2021 21:45:25 +0200 (CEST)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 3CE4A3EDDF;
	Sun,  9 May 2021 21:45:25 +0200 (CEST)
From: =?UTF-8?q?Linus=20L=C3=BCssing?= <linus.luessing@c0d3.blue>
To: netdev@vger.kernel.org
Subject: [net-next v2 04/11] net: bridge: mcast: prepare query reception for mcast router split
Date: Sun,  9 May 2021 21:45:02 +0200
Message-Id: <20210509194509.10849-5-linus.luessing@c0d3.blue>
In-Reply-To: <20210509194509.10849-1-linus.luessing@c0d3.blue>
References: <20210509194509.10849-1-linus.luessing@c0d3.blue>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Last-TLS-Session-Version: TLSv1.2
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1620589525; a=rsa-sha256;
	cv=none;
	b=k1S2KQo+GydknAuPfNi3+y0+VyUGmeL1jus7OZ5st2cyOCQ06LOI47s6JbcYqf8ffBNzCB
	U3Ds43l49K2S+aIzT4ze0jX9Kf1RfAMHlBz1ZJ55C0KU9c6JSo1VCLRUfFD4Hi7XUmJaKa
	R9tIsMqSIbmtdVasMK98be5nf76e2yE=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=none (diktynna.open-mesh.org: domain of linus.luessing@c0d3.blue has no SPF policy when checking 2a01:4f8:c2c:665b::1) smtp.mailfrom=linus.luessing@c0d3.blue
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1620589525;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=I7S4ItrNpISTGDjzKet6Swazz9Xsupr1Miu5Iq6uEh4=;
	b=mJRkyCqneHDaQOW4ajfV4HvjenVZzlLYSEfaQNANZL+o/M8LLw19NRtO1bj7VGDo9C/FX4
	vIU7wgPP23M0KCOEE2Aq1nMSgry7X3SF07UekzsG2sVa4sBxbFXqr4wGmbfmw52SGymr4P
	mmJ3hlTao/Aip2JCNP6WFRJDUa0qQGQ=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: 4AQTWLEPSECY633AWLXJQPE4DFOGHALX
X-Message-ID-Hash: 4AQTWLEPSECY633AWLXJQPE4DFOGHALX
X-MailFrom: linus.luessing@c0d3.blue
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: Roopa Prabhu <roopa@nvidia.com>, Nikolay Aleksandrov <nikolay@nvidia.com>, Jakub Kicinski <kuba@kernel.org>, "David S . Miller" <davem@davemloft.net>, bridge@lists.linux-foundation.org, b.a.t.m.a.n@lists.open-mesh.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/4AQTWLEPSECY633AWLXJQPE4DFOGHALX/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

In preparation for the upcoming split of multicast router state into
their IPv4 and IPv6 variants and as the br_multicast_mark_router() will
be split for that remove the select querier wrapper and instead add
ip4 and ip6 variants for br_multicast_query_received().

Signed-off-by: Linus L=C3=BCssing <linus.luessing@c0d3.blue>
---
 net/bridge/br_multicast.c | 53 ++++++++++++++++++++-------------------
 1 file changed, 27 insertions(+), 26 deletions(-)

diff --git a/net/bridge/br_multicast.c b/net/bridge/br_multicast.c
index 6fe93a3..7edbbc9 100644
--- a/net/bridge/br_multicast.c
+++ b/net/bridge/br_multicast.c
@@ -2615,22 +2615,6 @@ update:
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
@@ -2708,19 +2692,36 @@ static void br_multicast_mark_router(struct net_b=
ridge *br,
 		  now + br->multicast_querier_interval);
 }
=20
-static void br_multicast_query_received(struct net_bridge *br,
-					struct net_bridge_port *port,
-					struct bridge_mcast_other_query *query,
-					struct br_ip *saddr,
-					unsigned long max_delay)
+static void
+br_ip4_multicast_query_received(struct net_bridge *br,
+				struct net_bridge_port *port,
+				struct bridge_mcast_other_query *query,
+				struct br_ip *saddr,
+				unsigned long max_delay)
 {
-	if (!br_multicast_select_querier(br, port, saddr))
+	if (!br_ip4_multicast_select_querier(br, port, saddr->src.ip4))
 		return;
=20
 	br_multicast_update_query_timer(br, query, max_delay);
 	br_multicast_mark_router(br, port);
 }
=20
+#if IS_ENABLED(CONFIG_IPV6)
+static void
+br_ip6_multicast_query_received(struct net_bridge *br,
+				struct net_bridge_port *port,
+				struct bridge_mcast_other_query *query,
+				struct br_ip *saddr,
+				unsigned long max_delay)
+{
+	if (!br_ip6_multicast_select_querier(br, port, &saddr->src.ip6))
+		return;
+
+	br_multicast_update_query_timer(br, query, max_delay);
+	br_multicast_mark_router(br, port);
+}
+#endif
+
 static void br_ip4_multicast_query(struct net_bridge *br,
 				   struct net_bridge_port *port,
 				   struct sk_buff *skb,
@@ -2768,8 +2769,8 @@ static void br_ip4_multicast_query(struct net_bridg=
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
@@ -2856,8 +2857,8 @@ static int br_ip6_multicast_query(struct net_bridge=
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
--=20
2.31.0
