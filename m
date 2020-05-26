Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 56E3F1E1F4A
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 26 May 2020 12:06:03 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 9E2FA8212D;
	Tue, 26 May 2020 12:05:58 +0200 (CEST)
Received: from simonwunderlich.de (simonwunderlich.de [79.140.42.25])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id CFE768211B
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 26 May 2020 12:05:54 +0200 (CEST)
Received: from kero.packetmixer.de (p200300c597221100fc44a592f3d496ba.dip0.t-ipconnect.de [IPv6:2003:c5:9722:1100:fc44:a592:f3d4:96ba])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by simonwunderlich.de (Postfix) with ESMTPSA id 043076205F;
	Tue, 26 May 2020 12:00:09 +0200 (CEST)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: davem@davemloft.net
Subject: [PATCH 2/3] batman-adv: use rcu_replace_pointer() where appropriate
Date: Tue, 26 May 2020 12:00:06 +0200
Message-Id: <20200526100007.10501-3-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200526100007.10501-1-sw@simonwunderlich.de>
References: <20200526100007.10501-1-sw@simonwunderlich.de>
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1590487554;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=pwXwc5ft7aurV2qmbjltmZAJU9D+IY2WWxV8FoeQ7Tk=;
	b=JazhQNXnP6wdFNwiVuKUVXNl341Vvq6vkVtPZnPlGaDjvGXIPsDb13Rj6e8BZU2eti6gjG
	kNaK1arN3j+h/OjEN0P9LWqc0XA1m9h5BpYlbHSsi9p5A13HHS1uCHGNR3tiixEI1NX5wn
	+P8LWKs6svmi6nQciJ9UH0oQtwzR914=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1590487554; a=rsa-sha256;
	cv=none;
	b=lsCM7C4dEJOo8ImFOsdriUfrc7qJHY2x2yOlym4OnbGSZ2f//bvU94wPN0o2p5wAYajfM/
	F/Vl6zZzoAHHg6eUpli4+vI0b8riIbHPDFTHjQ8MJgc7gkl82xXWbkI81G0fwkBZeqXzhZ
	nz45Gd86ZUKO+03gm7BJLMPRTXf7QFA=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates 79.140.42.25 as permitted sender) smtp.mailfrom=sw@simonwunderlich.de
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: JCYX3VOINQ5OIUBMNW4UGPUR5XEUZCJZ
X-Message-ID-Hash: JCYX3VOINQ5OIUBMNW4UGPUR5XEUZCJZ
X-MailFrom: sw@simonwunderlich.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org, Antonio Quartulli <a@unstable.cc>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/JCYX3VOINQ5OIUBMNW4UGPUR5XEUZCJZ/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

From: Antonio Quartulli <a@unstable.cc>

In commit a63fc6b75cca ("rcu: Upgrade rcu_swap_protected() to
rcu_replace_pointer()") a new helper macro named rcu_replace_pointer() wa=
s
introduced to simplify code requiring to switch an rcu pointer to a new
value while extracting the old one.

Use rcu_replace_pointer() where appropriate to make code slimer.

Signed-off-by: Antonio Quartulli <a@unstable.cc>
Signed-off-by: Sven Eckelmann <sven@narfation.org>
Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
---
 net/batman-adv/gateway_client.c | 4 ++--
 net/batman-adv/hard-interface.c | 4 ++--
 net/batman-adv/routing.c        | 4 ++--
 3 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/net/batman-adv/gateway_client.c b/net/batman-adv/gateway_cli=
ent.c
index e22e49289677..a18dcc686dc3 100644
--- a/net/batman-adv/gateway_client.c
+++ b/net/batman-adv/gateway_client.c
@@ -146,8 +146,8 @@ static void batadv_gw_select(struct batadv_priv *bat_=
priv,
 	if (new_gw_node)
 		kref_get(&new_gw_node->refcount);
=20
-	curr_gw_node =3D rcu_dereference_protected(bat_priv->gw.curr_gw, 1);
-	rcu_assign_pointer(bat_priv->gw.curr_gw, new_gw_node);
+	curr_gw_node =3D rcu_replace_pointer(bat_priv->gw.curr_gw, new_gw_node,
+					   true);
=20
 	if (curr_gw_node)
 		batadv_gw_node_put(curr_gw_node);
diff --git a/net/batman-adv/hard-interface.c b/net/batman-adv/hard-interf=
ace.c
index c7e98a40dd33..3a256af92784 100644
--- a/net/batman-adv/hard-interface.c
+++ b/net/batman-adv/hard-interface.c
@@ -473,8 +473,8 @@ static void batadv_primary_if_select(struct batadv_pr=
iv *bat_priv,
 	if (new_hard_iface)
 		kref_get(&new_hard_iface->refcount);
=20
-	curr_hard_iface =3D rcu_dereference_protected(bat_priv->primary_if, 1);
-	rcu_assign_pointer(bat_priv->primary_if, new_hard_iface);
+	curr_hard_iface =3D rcu_replace_pointer(bat_priv->primary_if,
+					      new_hard_iface, 1);
=20
 	if (!new_hard_iface)
 		goto out;
diff --git a/net/batman-adv/routing.c b/net/batman-adv/routing.c
index 3632bd976c56..d343382e9664 100644
--- a/net/batman-adv/routing.c
+++ b/net/batman-adv/routing.c
@@ -71,13 +71,13 @@ static void _batadv_update_route(struct batadv_priv *=
bat_priv,
 	 * the code needs to ensure the curr_router variable contains a pointer
 	 * to the replaced best neighbor.
 	 */
-	curr_router =3D rcu_dereference_protected(orig_ifinfo->router, true);
=20
 	/* increase refcount of new best neighbor */
 	if (neigh_node)
 		kref_get(&neigh_node->refcount);
=20
-	rcu_assign_pointer(orig_ifinfo->router, neigh_node);
+	curr_router =3D rcu_replace_pointer(orig_ifinfo->router, neigh_node,
+					  true);
 	spin_unlock_bh(&orig_node->neigh_list_lock);
 	batadv_orig_ifinfo_put(orig_ifinfo);
=20
--=20
2.20.1
