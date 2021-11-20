Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 96894457E45
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 20 Nov 2021 13:40:09 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id D31BE83DBD;
	Sat, 20 Nov 2021 13:39:48 +0100 (CET)
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 8413383CDB
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 20 Nov 2021 13:39:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1637411984;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=pWzN12n9JDn4u38kbM+1UpTY7e4s5CzMiYZXJ63BwS8=;
	b=Dnr1DBlWPpRBy3KC8WPcYv6nk98Cljqkh/wP2/ea+5St+3PfwlxBjkjkyYVz5ljfd5irT6
	W0CGq56OZNhAP06iulcFuut1aLUblLIy/ndlqk3DYUfRpvGwuKXdQNR+sLbaUd6A0O3bLD
	mOhD56cZt4PjSHDjLLF53dZnx9MBxeY=
From: Sven Eckelmann <sven@narfation.org>
To: stable@vger.kernel.org
Subject: [PATCH 4.4 05/11] batman-adv: mcast: fix duplicate mcast packets in BLA backbone from mesh
Date: Sat, 20 Nov 2021 13:39:33 +0100
Message-Id: <20211120123939.260723-6-sven@narfation.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211120123939.260723-1-sven@narfation.org>
References: <20211120123939.260723-1-sven@narfation.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1637411984; a=rsa-sha256;
	cv=none;
	b=PtUrKDCSy2SmPJ49IiyMQlTaWe6BIoBMpLEJOki8vj9Uem/WJoknizL1+xX6YRGSijGOpt
	Sf4u0ooJXHYqRt6/QCJFUSvYAMYy+avmJIwairEkRwSzDAkO4FX9K68sf6flKSg3cdJ2Kv
	HyF0hDzyGYjocLNbT4lChQkbhyOAF8M=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1637411984;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=pWzN12n9JDn4u38kbM+1UpTY7e4s5CzMiYZXJ63BwS8=;
	b=qpik9l3BfhKm4nKQZAL9zfgWuCRl0ue8dqzZaN2Tzg990iF5MaRKt1+QFK8P3FTCbchH8C
	DY5jfF5mGsAjWYpYprfFSmGjjB1/WaqTJx3W2T7vL6mFneHB+QJ7GGiNQiDnFvjeiaiGYR
	++wg8j8aadFQyHHPpiiuD/LYCLxqCaU=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=Dnr1DBlW;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: VFK73ECF7H5H55ZQSPK23TUFZR2UJ4QL
X-Message-ID-Hash: VFK73ECF7H5H55ZQSPK23TUFZR2UJ4QL
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/VFK73ECF7H5H55ZQSPK23TUFZR2UJ4QL/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

From: Linus L=C3=BCssing <linus.luessing@c0d3.blue>

commit 74c09b7275126da1b642b90c9cdc3ae8b729ad4b upstream

Scenario:
* Multicast frame send from mesh to a BLA backbone (multiple nodes
  with their bat0 bridged together, with BLA enabled)

Issue:
* BLA backbone nodes receive the frame multiple times on bat0,
  once from mesh->bat0 and once from each backbone_gw from LAN

For unicast, a node will send only to the best backbone gateway
according to the TQ. However for multicast we currently cannot determine
if multiple destination nodes share the same backbone if they don't share
the same backbone with us. So we need to keep sending the unicasts to
all backbone gateways and let the backbone gateways decide which one
will forward the frame. We can use the CLAIM mechanism to make this
decision.

One catch: The batman-adv gateway feature for DHCP packets potentially
sends multicast packets in the same batman-adv unicast header as the
multicast optimizations code. And we are not allowed to drop those even
if we did not claim the source address of the sender, as for such
packets there is only this one multicast-in-unicast packet.

How can we distinguish the two cases?

The gateway feature uses a batman-adv unicast 4 address header. While
the multicast-to-unicasts feature uses a simple, 3 address batman-adv
unicast header. So let's use this to distinguish.

Fixes: 2d3f6ccc4ea5 ("batman-adv: check incoming packet type for bla")
Signed-off-by: Linus L=C3=BCssing <linus.luessing@c0d3.blue>
Acked-by: Simon Wunderlich <sw@simonwunderlich.de>
[ bp: 4.4 backported: adjust context, correct fixes line ]
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 net/batman-adv/bridge_loop_avoidance.c | 34 +++++++++++++++++++-------
 net/batman-adv/bridge_loop_avoidance.h |  4 +--
 net/batman-adv/soft-interface.c        |  6 ++---
 3 files changed, 30 insertions(+), 14 deletions(-)

diff --git a/net/batman-adv/bridge_loop_avoidance.c b/net/batman-adv/brid=
ge_loop_avoidance.c
index 1267cbb1a329..c8fbcaed5844 100644
--- a/net/batman-adv/bridge_loop_avoidance.c
+++ b/net/batman-adv/bridge_loop_avoidance.c
@@ -1538,7 +1538,7 @@ void batadv_bla_free(struct batadv_priv *bat_priv)
  * @bat_priv: the bat priv with all the soft interface information
  * @skb: the frame to be checked
  * @vid: the VLAN ID of the frame
- * @is_bcast: the packet came in a broadcast packet type.
+ * @packet_type: the batman packet type this frame came in
  *
  * bla_rx avoidance checks if:
  *  * we have to race for a claim
@@ -1549,7 +1549,7 @@ void batadv_bla_free(struct batadv_priv *bat_priv)
  * process the skb.
  */
 int batadv_bla_rx(struct batadv_priv *bat_priv, struct sk_buff *skb,
-		  unsigned short vid, bool is_bcast)
+		  unsigned short vid, int packet_type)
 {
 	struct batadv_bla_backbone_gw *backbone_gw;
 	struct ethhdr *ethhdr;
@@ -1568,9 +1568,24 @@ int batadv_bla_rx(struct batadv_priv *bat_priv, st=
ruct sk_buff *skb,
 		goto allow;
=20
 	if (unlikely(atomic_read(&bat_priv->bla.num_requests)))
-		/* don't allow broadcasts while requests are in flight */
-		if (is_multicast_ether_addr(ethhdr->h_dest) && is_bcast)
-			goto handled;
+		/* don't allow multicast packets while requests are in flight */
+		if (is_multicast_ether_addr(ethhdr->h_dest))
+			/* Both broadcast flooding or multicast-via-unicasts
+			 * delivery might send to multiple backbone gateways
+			 * sharing the same LAN and therefore need to coordinate
+			 * which backbone gateway forwards into the LAN,
+			 * by claiming the payload source address.
+			 *
+			 * Broadcast flooding and multicast-via-unicasts
+			 * delivery use the following two batman packet types.
+			 * Note: explicitly exclude BATADV_UNICAST_4ADDR,
+			 * as the DHCP gateway feature will send explicitly
+			 * to only one BLA gateway, so the claiming process
+			 * should be avoided there.
+			 */
+			if (packet_type =3D=3D BATADV_BCAST ||
+			    packet_type =3D=3D BATADV_UNICAST)
+				goto handled;
=20
 	ether_addr_copy(search_claim.addr, ethhdr->h_source);
 	search_claim.vid =3D vid;
@@ -1598,13 +1613,14 @@ int batadv_bla_rx(struct batadv_priv *bat_priv, s=
truct sk_buff *skb,
 		goto allow;
 	}
=20
-	/* if it is a broadcast ... */
-	if (is_multicast_ether_addr(ethhdr->h_dest) && is_bcast) {
+	/* if it is a multicast ... */
+	if (is_multicast_ether_addr(ethhdr->h_dest) &&
+	    (packet_type =3D=3D BATADV_BCAST || packet_type =3D=3D BATADV_UNICA=
ST)) {
 		/* ... drop it. the responsible gateway is in charge.
 		 *
-		 * We need to check is_bcast because with the gateway
+		 * We need to check packet type because with the gateway
 		 * feature, broadcasts (like DHCP requests) may be sent
-		 * using a unicast packet type.
+		 * using a unicast 4 address packet type. See comment above.
 		 */
 		goto handled;
 	} else {
diff --git a/net/batman-adv/bridge_loop_avoidance.h b/net/batman-adv/brid=
ge_loop_avoidance.h
index 025152b34282..d1553c46df8c 100644
--- a/net/batman-adv/bridge_loop_avoidance.h
+++ b/net/batman-adv/bridge_loop_avoidance.h
@@ -27,7 +27,7 @@ struct sk_buff;
=20
 #ifdef CONFIG_BATMAN_ADV_BLA
 int batadv_bla_rx(struct batadv_priv *bat_priv, struct sk_buff *skb,
-		  unsigned short vid, bool is_bcast);
+		  unsigned short vid, int packet_type);
 int batadv_bla_tx(struct batadv_priv *bat_priv, struct sk_buff *skb,
 		  unsigned short vid);
 int batadv_bla_is_backbone_gw(struct sk_buff *skb,
@@ -50,7 +50,7 @@ void batadv_bla_free(struct batadv_priv *bat_priv);
=20
 static inline int batadv_bla_rx(struct batadv_priv *bat_priv,
 				struct sk_buff *skb, unsigned short vid,
-				bool is_bcast)
+				int packet_type)
 {
 	return 0;
 }
diff --git a/net/batman-adv/soft-interface.c b/net/batman-adv/soft-interf=
ace.c
index 64b46e9e365b..5105e860d3aa 100644
--- a/net/batman-adv/soft-interface.c
+++ b/net/batman-adv/soft-interface.c
@@ -393,10 +393,10 @@ void batadv_interface_rx(struct net_device *soft_if=
ace,
 	struct vlan_ethhdr *vhdr;
 	struct ethhdr *ethhdr;
 	unsigned short vid;
-	bool is_bcast;
+	int packet_type;
=20
 	batadv_bcast_packet =3D (struct batadv_bcast_packet *)skb->data;
-	is_bcast =3D (batadv_bcast_packet->packet_type =3D=3D BATADV_BCAST);
+	packet_type =3D batadv_bcast_packet->packet_type;
=20
 	/* check if enough space is available for pulling, and pull */
 	if (!pskb_may_pull(skb, hdr_size))
@@ -444,7 +444,7 @@ void batadv_interface_rx(struct net_device *soft_ifac=
e,
 	/* Let the bridge loop avoidance check the packet. If will
 	 * not handle it, we can safely push it up.
 	 */
-	if (batadv_bla_rx(bat_priv, skb, vid, is_bcast))
+	if (batadv_bla_rx(bat_priv, skb, vid, packet_type))
 		goto out;
=20
 	if (orig_node)
--=20
2.30.2
