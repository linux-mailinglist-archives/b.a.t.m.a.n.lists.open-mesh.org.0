Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id AA1832695E8
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 14 Sep 2020 21:54:05 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id EB3B780811;
	Mon, 14 Sep 2020 21:54:04 +0200 (CEST)
Received: from mail.aperture-lab.de (mail.aperture-lab.de [IPv6:2a01:4f8:171:314c::100:a1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id C482B8027F
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 14 Sep 2020 21:53:51 +0200 (CEST)
From: =?UTF-8?q?Linus=20L=C3=BCssing?= <linus.luessing@c0d3.blue>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c0d3.blue; s=2018;
	t=1600113231;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=NMk5LPMRIr84YJp9suvbKSDgO0TGTMPX9eoYAxiYTUM=;
	b=OuzyXeyfCY4FGTiPx90O2cR2kZ7Wd055eGUJhEXIsrYGJ6TKlsUt3aM5Vp0aNG5idL654j
	Q34QMEvlhg0EfDi4klxyg7gzHc5ald+YnDMwJkx55hc1v/8OzwQdRc/3JPbrDAVWYqAW0w
	4p4XJ9A0pcpUbGa/2o5CD4XprV5ZnVOwvRnAuxAFDLP6RJO2tRqFQez5N6CNCGTmmFACNc
	1jQfLZfGryFcHU2fUxHaPTCJJMRYRqJ5hCZA16h5CGlcwijUYzA5Uiwehhi6/14plxFZxR
	i0aJ9KPggc18Z5sDjTWWqQm5LW5ierjtTl0LDwdFFwx2Oo8f/gxbRu1kgBVlBg==
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: =?UTF-8?q?Linus=20L=C3=BCssing?= <linus.luessing@c0d3.blue>
Subject: [PATCH maint v5 3/3] batman-adv: mcast: fix duplicate mcast packets from BLA backbone to mesh
Date: Mon, 14 Sep 2020 21:53:47 +0200
Message-Id: <20200914195347.10505-4-linus.luessing@c0d3.blue>
In-Reply-To: <20200914195347.10505-1-linus.luessing@c0d3.blue>
References: <20200914195347.10505-1-linus.luessing@c0d3.blue>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=linus.luessing@c0d3.blue smtp.mailfrom=linus.luessing@c0d3.blue
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1600113231;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=NMk5LPMRIr84YJp9suvbKSDgO0TGTMPX9eoYAxiYTUM=;
	b=Vk4wQO0BTaxBiRMIEvwAPJdsNrbroAlewjTTj3svswQ4A5wtxNFR4laKBkCG9zWUtaxA1d
	PnU/WQcmgHJTgWc4HmhUoMBfcN+/IwCYhXhEfnHLtOLVZ5wC9htQWdS1c/0odqwdckdNMh
	nKoIPWyOKrqSIacDqU38i+AaTgAZ1wE=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1600113231; a=rsa-sha256;
	cv=none;
	b=VkiXcChH++cG/lEzhzLwAaFbF8Ez9I3+05jo6rRfW/zTpG72SN3Ano0UKGb51QUEAwYsg9
	2Wfa32H3EnsDwQ++yAbl82EczztF6buH6eGyND52FJ1OPZghArL7Cn7v5sgrR9ZLr8MhJX
	ZLQTziJXwhVApDWZDwQYlOX3XlQHUSM=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none (invalid DKIM record) header.d=c0d3.blue header.s=2018 header.b=OuzyXeyf;
	spf=none (diktynna.open-mesh.org: domain of linus.luessing@c0d3.blue has no SPF policy when checking 2a01:4f8:171:314c::100:a1) smtp.mailfrom=linus.luessing@c0d3.blue
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: J4472ZVGDRUAFHSZXN73BDV7ESS5SQRL
X-Message-ID-Hash: J4472ZVGDRUAFHSZXN73BDV7ESS5SQRL
X-MailFrom: linus.luessing@c0d3.blue
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/J4472ZVGDRUAFHSZXN73BDV7ESS5SQRL/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Scenario:
* Multicast frame send from BLA backbone gateways (multiple nodes
  with their bat0 bridged together, with BLA enabled) sharing the same
  LAN to nodes in the mesh

Issue:
* Nodes receive the frame multiple times on bat0 from the mesh,
  once from each foreign BLA backbone gateway which shares the same LAN
  with another

For multicast frames via batman-adv broadcast packets coming from the
same BLA backbone but from different backbone gateways duplicates are
currently detected via a CRC history of previously received packets.

However this CRC so far was not performed for multicast frames received
via batman-adv unicast packets. Fixing this by appyling the same check
for such packets, too.

Room for improvements in the future: Ideally we would introduce the
possibility to not only claim a client, but a complete originator, too.
This would allow us to only send a multicast-in-unicast packet from a BLA
backbone gateway claiming the node and by that avoid potential redundant
transmissions in the first place.

Fixes: e5cf86d30a9b ("batman-adv: add broadcast duplicate check")
Signed-off-by: Linus L=C3=BCssing <linus.luessing@c0d3.blue>
---
 net/batman-adv/bridge_loop_avoidance.c | 107 +++++++++++++++++++++----
 1 file changed, 92 insertions(+), 15 deletions(-)

diff --git a/net/batman-adv/bridge_loop_avoidance.c b/net/batman-adv/brid=
ge_loop_avoidance.c
index 3d2a66f2..e4f66dd8 100644
--- a/net/batman-adv/bridge_loop_avoidance.c
+++ b/net/batman-adv/bridge_loop_avoidance.c
@@ -1580,13 +1580,16 @@ int batadv_bla_init(struct batadv_priv *bat_priv)
 }
=20
 /**
- * batadv_bla_check_bcast_duplist() - Check if a frame is in the broadca=
st dup.
+ * batadv_bla_check_duplist() - Check if a frame is in the broadcast dup=
.
  * @bat_priv: the bat priv with all the soft interface information
- * @skb: contains the bcast_packet to be checked
+ * @skb: contains the multicast packet to be checked
+ * @payload_ptr: pointer to position inside the head buffer of the skb
+ *  marking the start of the data to be CRC'ed
+ * @orig: originator mac address, NULL if unknown
  *
- * check if it is on our broadcast list. Another gateway might
- * have sent the same packet because it is connected to the same backbon=
e,
- * so we have to remove this duplicate.
+ * Check if it is on our broadcast list. Another gateway might have sent=
 the
+ * same packet because it is connected to the same backbone, so we have =
to
+ * remove this duplicate.
  *
  * This is performed by checking the CRC, which will tell us
  * with a good chance that it is the same packet. If it is furthermore
@@ -1595,23 +1598,23 @@ int batadv_bla_init(struct batadv_priv *bat_priv)
  *
  * Return: true if a packet is in the duplicate list, false otherwise.
  */
-bool batadv_bla_check_bcast_duplist(struct batadv_priv *bat_priv,
-				    struct sk_buff *skb)
+static bool batadv_bla_check_duplist(struct batadv_priv *bat_priv,
+				     struct sk_buff *skb, u8 *payload_ptr,
+				     const u8 *orig)
 {
+	struct batadv_bcast_duplist_entry *entry;
+	bool ret =3D false;
 	int i, curr;
 	__be32 crc;
-	struct batadv_bcast_packet *bcast_packet;
-	struct batadv_bcast_duplist_entry *entry;
-	bool ret =3D false;
-
-	bcast_packet =3D (struct batadv_bcast_packet *)skb->data;
=20
 	/* calculate the crc ... */
-	crc =3D batadv_skb_crc32(skb, (u8 *)(bcast_packet + 1));
+	crc =3D batadv_skb_crc32(skb, payload_ptr);
=20
 	spin_lock_bh(&bat_priv->bla.bcast_duplist_lock);
=20
 	for (i =3D 0; i < BATADV_DUPLIST_SIZE; i++) {
+		bool is_from_same_orig =3D false;
+
 		curr =3D (bat_priv->bla.bcast_duplist_curr + i);
 		curr %=3D BATADV_DUPLIST_SIZE;
 		entry =3D &bat_priv->bla.bcast_duplist[curr];
@@ -1626,7 +1629,24 @@ bool batadv_bla_check_bcast_duplist(struct batadv_=
priv *bat_priv,
 		if (entry->crc !=3D crc)
 			continue;
=20
-		if (batadv_compare_eth(entry->orig, bcast_packet->orig))
+		/* are the originators both known and not anonymous? */
+		if (orig && !is_zero_ether_addr(orig) &&
+		    !is_zero_ether_addr(entry->orig)) {
+			/* if known, check if the new frame came from
+			 * the same originator
+			 */
+			if (batadv_compare_eth(entry->orig, orig))
+				is_from_same_orig =3D true;
+		}
+
+		/* we are safe to take identical frames from the
+		 * same orig, if known, as multiplications in
+		 * the mesh are detected via the (orig, seqno) pair;
+		 * so we can be a bit more liberal here and allow
+		 * identical frames from the same orig which the source
+		 * host might have sent multiple times on purpose
+		 */
+		if (is_from_same_orig)
 			continue;
=20
 		/* this entry seems to match: same crc, not too old,
@@ -1643,7 +1663,14 @@ bool batadv_bla_check_bcast_duplist(struct batadv_=
priv *bat_priv,
 	entry =3D &bat_priv->bla.bcast_duplist[curr];
 	entry->crc =3D crc;
 	entry->entrytime =3D jiffies;
-	ether_addr_copy(entry->orig, bcast_packet->orig);
+
+	/* known originator */
+	if (orig)
+		ether_addr_copy(entry->orig, orig);
+	/* anonymous originator */
+	else
+		eth_zero_addr(entry->orig);
+
 	bat_priv->bla.bcast_duplist_curr =3D curr;
=20
 out:
@@ -1652,6 +1679,48 @@ bool batadv_bla_check_bcast_duplist(struct batadv_=
priv *bat_priv,
 	return ret;
 }
=20
+/**
+ * batadv_bla_check_ucast_duplist() - Check if a frame is in the broadca=
st dup.
+ * @bat_priv: the bat priv with all the soft interface information
+ * @skb: contains the multicast packet to be checked, decapsulated from =
a
+ *  unicast_packet
+ *
+ * Check if it is on our broadcast list. Another gateway might have sent=
 the
+ * same packet because it is connected to the same backbone, so we have =
to
+ * remove this duplicate.
+ *
+ * Return: true if a packet is in the duplicate list, false otherwise.
+ */
+static bool batadv_bla_check_ucast_duplist(struct batadv_priv *bat_priv,
+					   struct sk_buff *skb)
+{
+	return batadv_bla_check_duplist(bat_priv, skb, (u8 *)skb->data, NULL);
+}
+
+/**
+ * batadv_bla_check_bcast_duplist() - Check if a frame is in the broadca=
st dup.
+ * @bat_priv: the bat priv with all the soft interface information
+ * @skb: contains the bcast_packet to be checked
+ *
+ * Check if it is on our broadcast list. Another gateway might have sent=
 the
+ * same packet because it is connected to the same backbone, so we have =
to
+ * remove this duplicate.
+ *
+ * Return: true if a packet is in the duplicate list, false otherwise.
+ */
+bool batadv_bla_check_bcast_duplist(struct batadv_priv *bat_priv,
+				    struct sk_buff *skb)
+{
+	struct batadv_bcast_packet *bcast_packet;
+	u8 *payload_ptr;
+
+	bcast_packet =3D (struct batadv_bcast_packet *)skb->data;
+	payload_ptr =3D (u8 *)(bcast_packet + 1);
+
+	return batadv_bla_check_duplist(bat_priv, skb, payload_ptr,
+					bcast_packet->orig);
+}
+
 /**
  * batadv_bla_is_backbone_gw_orig() - Check if the originator is a gatew=
ay for
  *  the VLAN identified by vid.
@@ -1866,6 +1935,14 @@ bool batadv_bla_rx(struct batadv_priv *bat_priv, s=
truct sk_buff *skb,
 			    packet_type =3D=3D BATADV_UNICAST)
 				goto handled;
=20
+	/* potential duplicates from foreign BLA backbone gateways via
+	 * multicast-in-unicast packets
+	 */
+	if (is_multicast_ether_addr(ethhdr->h_dest) &&
+	    packet_type =3D=3D BATADV_UNICAST &&
+	    batadv_bla_check_ucast_duplist(bat_priv, skb))
+		goto handled;
+
 	ether_addr_copy(search_claim.addr, ethhdr->h_source);
 	search_claim.vid =3D vid;
 	claim =3D batadv_claim_hash_find(bat_priv, &search_claim);
--=20
2.28.0
