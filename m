Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id CAD9E234B46
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 31 Jul 2020 20:40:37 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 91A9B80FCB;
	Fri, 31 Jul 2020 20:40:36 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 0506C801AB
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 31 Jul 2020 20:40:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1596220505;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=Uc3GLIcHW7wjOOdtjW6dyDZ46WyvH09Z9Db7cssSPSs=;
	b=EmvU2/uGhHO9KAdtHarMowWp5bOMslrRIXTrck9PkmFW2AYX+1O4U9Dq4Ev8MFeoXM/5AG
	ea15/dgQmaAKuHs9tCs+0A14lCpq0p077dRakScUJtlF7bW04XrdK9JNGnHTjGmXlpW2PT
	883/uHguhJrj7kH9JP9xkA9pNaKeEAg=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
Subject: [PATCH] batman-adv: Drop repeated words in comments
Date: Fri, 31 Jul 2020 20:35:01 +0200
Message-Id: <20200731183501.14698-1-sven@narfation.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1596220834;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=Uc3GLIcHW7wjOOdtjW6dyDZ46WyvH09Z9Db7cssSPSs=;
	b=TqUaEsGukSN+VhzjR+C81c850rjg2bLKJcUjB8l70Or7Uxde0f/2MTH0uWU3pVogjupAFN
	uMDdtCgriwi1XX9UopqhrXjWtf+RphCWDn1wHT9RUmyrnOvCepVcqcSFyMrPFLDbqMLtfN
	71zGrrkqeV/UHpLR4VpFVb3rRE2suVY=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1596220834; a=rsa-sha256;
	cv=none;
	b=rpTGuvDxHIqjapRHayXg6kzFcX5jlA49d6X5OF/U7kBISlBQIPPr2KN1slhUgL0negEbL/
	ipa045cYZKAVoMyrWMOvzqgmu+fSzoKyvouehcGIYYl2m/N/qJ8YcAhSm7Lb89Nhpe1KkZ
	Xg8cbvORiwKuk/Aqas8EPq5BdJlYHgA=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=EmvU2/uG;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: FYFIYMTXQWMS2DTUKYILH4ACXLWZNN45
X-Message-ID-Hash: FYFIYMTXQWMS2DTUKYILH4ACXLWZNN45
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/FYFIYMTXQWMS2DTUKYILH4ACXLWZNN45/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

checkpatch found various instances of "Possible repeated word" in various
comments.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
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
index 91a04ca3..5c41cc52 100644
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
index 9fdbe306..9a47ef8b 100644
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
index fa06b51c..715f169c 100644
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
index bdc4a1fb..1622c3f5 100644
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
index 48d70785..64619b7a 100644
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
index d267b948..87017332 100644
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
index 23833a0b..9d3974ba 100644
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
