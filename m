Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 46801457E6D
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 20 Nov 2021 13:41:20 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id A4279840AE;
	Sat, 20 Nov 2021 13:40:23 +0100 (CET)
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 49F5083DB1
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 20 Nov 2021 13:40:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1637412021;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=eIuLQzrv3u3n569TsqkDZ/7gzlYfsZOmxlHpIWKUjZk=;
	b=WwuJK4q0rN69i5RwQgib2M1yQqFnLKkkQgWZlvqjH8HP+CnUWxdLQ+Avl2tUY3Np29q6Ek
	esJVgK8/yY1Y05e3RxEKQhJOQYDLEYdAfpgL4ua7Em3aMDEhdBnwZ6kRBwFpbE7mtkhlCU
	8HEpOXJ8Ker2q2DHNhNCP9T6NMGFgmQ=
From: Sven Eckelmann <sven@narfation.org>
To: stable@vger.kernel.org
Subject: [PATCH 4.14 2/5] batman-adv: mcast: fix duplicate mcast packets from BLA backbone to mesh
Date: Sat, 20 Nov 2021 13:40:15 +0100
Message-Id: <20211120124018.260907-3-sven@narfation.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211120124018.260907-1-sven@narfation.org>
References: <20211120124018.260907-1-sven@narfation.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1637412021; a=rsa-sha256;
	cv=none;
	b=0jb1wfZRhTMa9xcr03dBG9Jlrqnc6T+WXx62MCzv+nw2U+6xvpWvMnt4xHBHlbju/+xkP8
	hizu1ai86A4l2E+B3ry1KdgNaJKVqwRmL6vSj4XHK60Iz5sYe+mMv/uiGRm1MAlDOu3pzS
	oOE5lpbCe1QpTnWb/jsWwOpbKQL6oi0=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1637412021;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=eIuLQzrv3u3n569TsqkDZ/7gzlYfsZOmxlHpIWKUjZk=;
	b=f4MlFlACGFAZJ9BEyM7PGnAls84XBXNMVEm/S3xaq2Kg6S3KJjJGeqoUSZzqTQcD1zmPir
	0LL7Bn3/wyObyJUFu9lTpCAYZwQ8B24EDXHFgH+o29Oycet0U+A2XfHdaEcBU+MZc6viIY
	SFXsumd4DUAvfjXMhCkp9xP139HMhCY=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=WwuJK4q0;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: ZCAIMZMOXIZWNOLAZN7JHB6TXAAPS2HZ
X-Message-ID-Hash: ZCAIMZMOXIZWNOLAZN7JHB6TXAAPS2HZ
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/ZCAIMZMOXIZWNOLAZN7JHB6TXAAPS2HZ/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

From: Linus L=C3=BCssing <linus.luessing@c0d3.blue>

commit 2369e827046920ef0599e6a36b975ac5c0a359c2 upstream.

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

Fixes: fe2da6ff27c7 ("batman-adv: add broadcast duplicate check")
Signed-off-by: Linus L=C3=BCssing <linus.luessing@c0d3.blue>
Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
[ bp: 4.14 backported: adjust context, correct fixes line ]
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 net/batman-adv/bridge_loop_avoidance.c | 103 +++++++++++++++++++++----
 1 file changed, 87 insertions(+), 16 deletions(-)

diff --git a/net/batman-adv/bridge_loop_avoidance.c b/net/batman-adv/brid=
ge_loop_avoidance.c
index 12ecde765003..89afb90458f4 100644
--- a/net/batman-adv/bridge_loop_avoidance.c
+++ b/net/batman-adv/bridge_loop_avoidance.c
@@ -1598,13 +1598,16 @@ int batadv_bla_init(struct batadv_priv *bat_priv)
 }
=20
 /**
- * batadv_bla_check_bcast_duplist - Check if a frame is in the broadcast=
 dup.
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
@@ -1613,19 +1616,17 @@ int batadv_bla_init(struct batadv_priv *bat_priv)
  *
  * Return: true if a packet is in the duplicate list, false otherwise.
  */
-bool batadv_bla_check_bcast_duplist(struct batadv_priv *bat_priv,
-				    struct sk_buff *skb)
+static bool batadv_bla_check_duplist(struct batadv_priv *bat_priv,
+				     struct sk_buff *skb, u8 *payload_ptr,
+				     const u8 *orig)
 {
-	int i, curr;
-	__be32 crc;
-	struct batadv_bcast_packet *bcast_packet;
 	struct batadv_bcast_duplist_entry *entry;
 	bool ret =3D false;
-
-	bcast_packet =3D (struct batadv_bcast_packet *)skb->data;
+	int i, curr;
+	__be32 crc;
=20
 	/* calculate the crc ... */
-	crc =3D batadv_skb_crc32(skb, (u8 *)(bcast_packet + 1));
+	crc =3D batadv_skb_crc32(skb, payload_ptr);
=20
 	spin_lock_bh(&bat_priv->bla.bcast_duplist_lock);
=20
@@ -1644,8 +1645,21 @@ bool batadv_bla_check_bcast_duplist(struct batadv_=
priv *bat_priv,
 		if (entry->crc !=3D crc)
 			continue;
=20
-		if (batadv_compare_eth(entry->orig, bcast_packet->orig))
-			continue;
+		/* are the originators both known and not anonymous? */
+		if (orig && !is_zero_ether_addr(orig) &&
+		    !is_zero_ether_addr(entry->orig)) {
+			/* If known, check if the new frame came from
+			 * the same originator:
+			 * We are safe to take identical frames from the
+			 * same orig, if known, as multiplications in
+			 * the mesh are detected via the (orig, seqno) pair.
+			 * So we can be a bit more liberal here and allow
+			 * identical frames from the same orig which the source
+			 * host might have sent multiple times on purpose.
+			 */
+			if (batadv_compare_eth(entry->orig, orig))
+				continue;
+		}
=20
 		/* this entry seems to match: same crc, not too old,
 		 * and from another gw. therefore return true to forbid it.
@@ -1661,7 +1675,14 @@ bool batadv_bla_check_bcast_duplist(struct batadv_=
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
@@ -1670,6 +1691,48 @@ bool batadv_bla_check_bcast_duplist(struct batadv_=
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
  * batadv_bla_is_backbone_gw_orig - Check if the originator is a gateway=
 for
  *  the VLAN identified by vid.
@@ -1884,6 +1947,14 @@ bool batadv_bla_rx(struct batadv_priv *bat_priv, s=
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
2.30.2
