Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 7071F39FAEC
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue,  8 Jun 2021 17:36:18 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 4832283F2E;
	Tue,  8 Jun 2021 17:36:15 +0200 (CEST)
Received: from simonwunderlich.de (simonwunderlich.de [79.140.42.25])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 0DBD683ED9
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue,  8 Jun 2021 17:35:30 +0200 (CEST)
Received: from kero.packetmixer.de (p200300c5970dd3e020a52263b5aabfb3.dip0.t-ipconnect.de [IPv6:2003:c5:970d:d3e0:20a5:2263:b5aa:bfb3])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by simonwunderlich.de (Postfix) with ESMTPSA id 0A073174029;
	Tue,  8 Jun 2021 17:27:04 +0200 (CEST)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: kuba@kernel.org,
	davem@davemloft.net
Subject: [PATCH 05/11] batman-adv: mcast: add MRD + routable IPv4 multicast with bridges support
Date: Tue,  8 Jun 2021 17:26:54 +0200
Message-Id: <20210608152700.30315-6-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210608152700.30315-1-sw@simonwunderlich.de>
References: <20210608152700.30315-1-sw@simonwunderlich.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1623166530; a=rsa-sha256;
	cv=none;
	b=SlEajPOCHgIVp2YHlAQ8mBXPUhIvGOx3w4UKVF5rqShvKerd6XYxeU7TUA1t72DdDvmIPn
	P9zAv9g6hUiHKlRdhC1QanxsqGsOmvyeGwYJoBypvNRbehsJ7LMrZstfTVUMV3sNOBxnk9
	eocPEweOTRxhMaFDlM6EoK69gqIyErw=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates 79.140.42.25 as permitted sender) smtp.mailfrom=sw@simonwunderlich.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1623166530;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=RqgIAL/MHM+sGPZYMI0a/RUUMOl/1CPKeEjpY0FyUuo=;
	b=3yowcZGlFezjw5Ef/quFNHUtpzCAzSbX0BtyWE7FR1O+c7bM00XW74Fy1USHZKkz+vmIAY
	FJihQxYCv1yZZJoH+tkG0x3yiqwwpQYnXMNV6mE956wFt0z5KJo9ap5tVGmWliJZam4RH8
	wzvlGPD3e5ZT2b/t+KBmVjKTo4cfkjk=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: UVWFPYB2CFVC4LLIYRAX6QG3RGAXL4EN
X-Message-ID-Hash: UVWFPYB2CFVC4LLIYRAX6QG3RGAXL4EN
X-MailFrom: sw@simonwunderlich.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/UVWFPYB2CFVC4LLIYRAX6QG3RGAXL4EN/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

From: Linus L=C3=BCssing <linus.luessing@c0d3.blue>

This adds support for routable IPv4 multicast addresses
(224.0.0.0/4, excluding 224.0.0.0/24) in bridged setups.

This utilizes the Multicast Router Discovery (MRD, RFC4286) support
in the Linux bridge. batman-adv will now query the Linux bridge for
IPv4 multicast routers, which the bridge has previously learned about
via MRD.

This allows us to then safely send routable IPv4 multicast packets in
bridged setups to multicast listeners and multicast routers only. Before
we had to flood such packets to avoid potential multicast packet loss to
IPv4 multicast routers, which we were not able to detect before.

With the bridge MRD integration, we are now also able to perform more
fine-grained detection of IPv6 multicast routers in bridged setups:
Before we were "guessing" IPv6 multicast routers by looking up multicast
listeners for the link-local All Routers multicast address (ff02::2),
which every IPv6 multicast router is listening to. However this would
also include more nodes than necessary: For instance nodes which are
just a router for unicast, but not multicast would be included, too.

Signed-off-by: Linus L=C3=BCssing <linus.luessing@c0d3.blue>
Signed-off-by: Sven Eckelmann <sven@narfation.org>
Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
---
 net/batman-adv/multicast.c | 41 +++++---------------------------------
 1 file changed, 5 insertions(+), 36 deletions(-)

diff --git a/net/batman-adv/multicast.c b/net/batman-adv/multicast.c
index 1d63c8cbbfe7..923e2197c2db 100644
--- a/net/batman-adv/multicast.c
+++ b/net/batman-adv/multicast.c
@@ -193,53 +193,22 @@ static u8 batadv_mcast_mla_rtr_flags_softif_get(str=
uct batadv_priv *bat_priv,
  *	BATADV_MCAST_WANT_NO_RTR6: No IPv6 multicast router is present
  *	The former two OR'd: no multicast router is present
  */
-#if IS_ENABLED(CONFIG_IPV6)
 static u8 batadv_mcast_mla_rtr_flags_bridge_get(struct batadv_priv *bat_=
priv,
 						struct net_device *bridge)
 {
-	struct list_head bridge_mcast_list =3D LIST_HEAD_INIT(bridge_mcast_list=
);
 	struct net_device *dev =3D bat_priv->soft_iface;
-	struct br_ip_list *br_ip_entry, *tmp;
-	u8 flags =3D BATADV_MCAST_WANT_NO_RTR6;
-	int ret;
+	u8 flags =3D BATADV_NO_FLAGS;
=20
 	if (!bridge)
 		return BATADV_MCAST_WANT_NO_RTR4 | BATADV_MCAST_WANT_NO_RTR6;
=20
-	/* TODO: ask the bridge if a multicast router is present (the bridge
-	 * is capable of performing proper RFC4286 multicast router
-	 * discovery) instead of searching for a ff02::2 listener here
-	 */
-	ret =3D br_multicast_list_adjacent(dev, &bridge_mcast_list);
-	if (ret < 0)
-		return BATADV_NO_FLAGS;
-
-	list_for_each_entry_safe(br_ip_entry, tmp, &bridge_mcast_list, list) {
-		/* the bridge snooping does not maintain IPv4 link-local
-		 * addresses - therefore we won't find any IPv4 multicast router
-		 * address here, only IPv6 ones
-		 */
-		if (br_ip_entry->addr.proto =3D=3D htons(ETH_P_IPV6) &&
-		    ipv6_addr_is_ll_all_routers(&br_ip_entry->addr.dst.ip6))
-			flags &=3D ~BATADV_MCAST_WANT_NO_RTR6;
-
-		list_del(&br_ip_entry->list);
-		kfree(br_ip_entry);
-	}
+	if (!br_multicast_has_router_adjacent(dev, ETH_P_IP))
+		flags |=3D BATADV_MCAST_WANT_NO_RTR4;
+	if (!br_multicast_has_router_adjacent(dev, ETH_P_IPV6))
+		flags |=3D BATADV_MCAST_WANT_NO_RTR6;
=20
 	return flags;
 }
-#else
-static inline u8
-batadv_mcast_mla_rtr_flags_bridge_get(struct batadv_priv *bat_priv,
-				      struct net_device *bridge)
-{
-	if (bridge)
-		return BATADV_NO_FLAGS;
-	else
-		return BATADV_MCAST_WANT_NO_RTR4 | BATADV_MCAST_WANT_NO_RTR6;
-}
-#endif
=20
 /**
  * batadv_mcast_mla_rtr_flags_get() - get multicast router flags
--=20
2.20.1
