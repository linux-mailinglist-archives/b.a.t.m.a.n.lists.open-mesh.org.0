Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id D8E53250206
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 24 Aug 2020 18:28:03 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 8CB8880487;
	Mon, 24 Aug 2020 18:27:56 +0200 (CEST)
Received: from simonwunderlich.de (simonwunderlich.de [79.140.42.25])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id CD5218039D
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 24 Aug 2020 18:27:47 +0200 (CEST)
Received: from kero.packetmixer.de (p200300c5970d68d0e0160e8a82c5fd76.dip0.t-ipconnect.de [IPv6:2003:c5:970d:68d0:e016:e8a:82c5:fd76])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by simonwunderlich.de (Postfix) with ESMTPSA id 717C162074;
	Mon, 24 Aug 2020 18:27:47 +0200 (CEST)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: davem@davemloft.net
Subject: [PATCH 4/5] batman-adv: Drop repeated words in comments
Date: Mon, 24 Aug 2020 18:27:40 +0200
Message-Id: <20200824162741.880-5-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200824162741.880-1-sw@simonwunderlich.de>
References: <20200824162741.880-1-sw@simonwunderlich.de>
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1598286467;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=vdwOHTe30smc5o93VMX5DIJxxBUe9zNsqKKCGJY2YZU=;
	b=gIxwae6qUcN+JR4GXgHYaEQUMhCQPuEbfStr1FRqkiPsxlF9WoHfs24R0rcyVIL9pZhYT8
	z+fflqhgIeLTuaSo5OEaDjV0kN2hbEgCxDEK4Eg/h361waknoB+zJaVZgstFMoNZtjcvNe
	s8lY/LT2AOeGLYNQN2uxYc0yOfOubeQ=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1598286467; a=rsa-sha256;
	cv=none;
	b=gxRPMUx5Y1KULXJCZTj8vuowctPNG9GfdikmS85zu3YoHKZ8e6GfSUnTVmwJm6bn4ODHGp
	QBSoLFrKChfnLZUyAxNs5Czj42nwJ4srodhFbqngGcTDJrZ8CZpXybOvEj2mU7TDfUiutL
	Qd4J4Vgf/Pom0DRaxtfHk6JkuQidyWQ=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates 79.140.42.25 as permitted sender) smtp.mailfrom=sw@simonwunderlich.de
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: OE2VDOZFHLPS4LDPGSFPMYVEELTPXZQG
X-Message-ID-Hash: OE2VDOZFHLPS4LDPGSFPMYVEELTPXZQG
X-MailFrom: sw@simonwunderlich.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/OE2VDOZFHLPS4LDPGSFPMYVEELTPXZQG/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

From: Sven Eckelmann <sven@narfation.org>

checkpatch found various instances of "Possible repeated word" in various
comments.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
---
 net/batman-adv/bridge_loop_avoidance.c | 2 +-
 net/batman-adv/fragmentation.c         | 2 +-
 net/batman-adv/hard-interface.c        | 2 +-
 net/batman-adv/multicast.c             | 2 +-
 net/batman-adv/network-coding.c        | 2 +-
 net/batman-adv/send.c                  | 2 +-
 net/batman-adv/soft-interface.c        | 4 ++--
 7 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/net/batman-adv/bridge_loop_avoidance.c b/net/batman-adv/brid=
ge_loop_avoidance.c
index 91a04ca373dc..5c41cc52bc53 100644
--- a/net/batman-adv/bridge_loop_avoidance.c
+++ b/net/batman-adv/bridge_loop_avoidance.c
@@ -1795,7 +1795,7 @@ batadv_bla_loopdetect_check(struct batadv_priv *bat=
_priv, struct sk_buff *skb,
=20
 	ret =3D queue_work(batadv_event_workqueue, &backbone_gw->report_work);
=20
-	/* backbone_gw is unreferenced in the report work function function
+	/* backbone_gw is unreferenced in the report work function
 	 * if queue_work() call was successful
 	 */
 	if (!ret)
diff --git a/net/batman-adv/fragmentation.c b/net/batman-adv/fragmentatio=
n.c
index 9fdbe3068153..9a47ef8b95c4 100644
--- a/net/batman-adv/fragmentation.c
+++ b/net/batman-adv/fragmentation.c
@@ -306,7 +306,7 @@ batadv_frag_merge_packets(struct hlist_head *chain)
  * set *skb to merged packet; 2) Packet is buffered: Return true and set=
 *skb
  * to NULL; 3) Error: Return false and free skb.
  *
- * Return: true when the packet is merged or buffered, false when skb is=
 not not
+ * Return: true when the packet is merged or buffered, false when skb is=
 not
  * used.
  */
 bool batadv_frag_skb_buffer(struct sk_buff **skb,
diff --git a/net/batman-adv/hard-interface.c b/net/batman-adv/hard-interf=
ace.c
index f95be90adaab..dad99641df2a 100644
--- a/net/batman-adv/hard-interface.c
+++ b/net/batman-adv/hard-interface.c
@@ -599,7 +599,7 @@ int batadv_hardif_min_mtu(struct net_device *soft_ifa=
ce)
 	/* report to the other components the maximum amount of bytes that
 	 * batman-adv can send over the wire (without considering the payload
 	 * overhead). For example, this value is used by TT to compute the
-	 * maximum local table table size
+	 * maximum local table size
 	 */
 	atomic_set(&bat_priv->packet_size_max, min_mtu);
=20
diff --git a/net/batman-adv/multicast.c b/net/batman-adv/multicast.c
index bdc4a1fba1c6..1622c3f5898f 100644
--- a/net/batman-adv/multicast.c
+++ b/net/batman-adv/multicast.c
@@ -207,7 +207,7 @@ static u8 batadv_mcast_mla_rtr_flags_bridge_get(struc=
t batadv_priv *bat_priv,
 		return BATADV_MCAST_WANT_NO_RTR4 | BATADV_MCAST_WANT_NO_RTR6;
=20
 	/* TODO: ask the bridge if a multicast router is present (the bridge
-	 * is capable of performing proper RFC4286 multicast multicast router
+	 * is capable of performing proper RFC4286 multicast router
 	 * discovery) instead of searching for a ff02::2 listener here
 	 */
 	ret =3D br_multicast_list_adjacent(dev, &bridge_mcast_list);
diff --git a/net/batman-adv/network-coding.c b/net/batman-adv/network-cod=
ing.c
index 48d707850f3e..64619b7a3a77 100644
--- a/net/batman-adv/network-coding.c
+++ b/net/batman-adv/network-coding.c
@@ -250,7 +250,7 @@ static void batadv_nc_path_put(struct batadv_nc_path =
*nc_path)
 /**
  * batadv_nc_packet_free() - frees nc packet
  * @nc_packet: the nc packet to free
- * @dropped: whether the packet is freed because is is dropped
+ * @dropped: whether the packet is freed because is dropped
  */
 static void batadv_nc_packet_free(struct batadv_nc_packet *nc_packet,
 				  bool dropped)
diff --git a/net/batman-adv/send.c b/net/batman-adv/send.c
index d267b94800d6..87017332b567 100644
--- a/net/batman-adv/send.c
+++ b/net/batman-adv/send.c
@@ -461,7 +461,7 @@ int batadv_send_skb_via_gw(struct batadv_priv *bat_pr=
iv, struct sk_buff *skb,
 /**
  * batadv_forw_packet_free() - free a forwarding packet
  * @forw_packet: The packet to free
- * @dropped: whether the packet is freed because is is dropped
+ * @dropped: whether the packet is freed because is dropped
  *
  * This frees a forwarding packet and releases any resources it might
  * have claimed.
diff --git a/net/batman-adv/soft-interface.c b/net/batman-adv/soft-interf=
ace.c
index 23833a0ba5e6..9d3974ba11ed 100644
--- a/net/batman-adv/soft-interface.c
+++ b/net/batman-adv/soft-interface.c
@@ -649,7 +649,7 @@ static void batadv_softif_destroy_vlan(struct batadv_=
priv *bat_priv,
 /**
  * batadv_interface_add_vid() - ndo_add_vid API implementation
  * @dev: the netdev of the mesh interface
- * @proto: protocol of the the vlan id
+ * @proto: protocol of the vlan id
  * @vid: identifier of the new vlan
  *
  * Set up all the internal structures for handling the new vlan on top o=
f the
@@ -707,7 +707,7 @@ static int batadv_interface_add_vid(struct net_device=
 *dev, __be16 proto,
 /**
  * batadv_interface_kill_vid() - ndo_kill_vid API implementation
  * @dev: the netdev of the mesh interface
- * @proto: protocol of the the vlan id
+ * @proto: protocol of the vlan id
  * @vid: identifier of the deleted vlan
  *
  * Destroy all the internal structures used to handle the vlan identifie=
d by vid
--=20
2.20.1
