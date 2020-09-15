Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id E29B426A039
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 15 Sep 2020 09:54:26 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id ECEFF80850;
	Tue, 15 Sep 2020 09:54:18 +0200 (CEST)
Received: from mail.aperture-lab.de (mail.aperture-lab.de [IPv6:2a01:4f8:171:314c::100:a1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 3903480548
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 15 Sep 2020 09:54:14 +0200 (CEST)
From: =?UTF-8?q?Linus=20L=C3=BCssing?= <linus.luessing@c0d3.blue>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c0d3.blue; s=2018;
	t=1600156454;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=etgcuJb780uRE8DAFXZ6TTICWY/7gmsOS6YWa88s00Q=;
	b=H6uKpyCWKXd9Vu0wGjZUjOUH6Nd6BIelNsSZ4CgVq6YeOoHcpA736dlk1rWIbF2H218nsy
	d+JAYSpRtjEOadpLBHqXjBRxpTumw9jFMx6Jzcbk+LRx5wMDa5TNjievCGbRR12N8z7zL+
	AuiqZV12MtTca0gFJkBV+kbcgVdqpE3Wf29VPXtarXrUtmmonc1fgV12TRlLOpRTBsLvAQ
	xezgQexaCErkp73CfN4J3ZpJJT4AxwglDME2PFxP4s6wkSrKH5mB/erlx77Qq5EMvmP88S
	MFlWfpDOA72VOTcUwLurbgK5gFy823oln2Nv230rkzw2M9bqZWBZ6t/IOTy5tQ==
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: =?UTF-8?q?Linus=20L=C3=BCssing?= <linus.luessing@c0d3.blue>
Subject: [PATCH maint v6 2/3] batman-adv: mcast: fix duplicate mcast packets in BLA backbone from mesh
Date: Tue, 15 Sep 2020 09:54:09 +0200
Message-Id: <20200915075410.13932-3-linus.luessing@c0d3.blue>
In-Reply-To: <20200915075410.13932-1-linus.luessing@c0d3.blue>
References: <20200915075410.13932-1-linus.luessing@c0d3.blue>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=linus.luessing@c0d3.blue smtp.mailfrom=linus.luessing@c0d3.blue
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1600156454;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=etgcuJb780uRE8DAFXZ6TTICWY/7gmsOS6YWa88s00Q=;
	b=nIMKx77ZMwNF8Nn7moKyMZlyC5nzP3j/kXOn1rpEhh6yFChNSQf0s1FfP2KP0F3IIZ7o4V
	wMDZl/bx3B6mSF/P+UVay1PeD44SG1A4+0sus8+1u2Uk2QRcAg0cpWd2PRjEKKgWo86EwN
	SkVRFZFhCx4FcsnaW9jdYu53tn0nRBE=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1600156454; a=rsa-sha256;
	cv=none;
	b=sO/EHTJZ9BeAhEg18ykmyTesks9n61ib7OouUw1J6nGdkrSYlF0Pywy0StWJC3fAPYFQ2M
	aAGpDLDY9Dg0oEowUcdY8vCAsoyyWzXofJw3gdDUQtKMl1WZbln2w4OOCKiOoXET2z7Vn1
	tTzFs2QMw5HqF6NM03GsJP2+gSOT2ow=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none (invalid DKIM record) header.d=c0d3.blue header.s=2018 header.b=H6uKpyCW;
	spf=none (diktynna.open-mesh.org: domain of linus.luessing@c0d3.blue has no SPF policy when checking 2a01:4f8:171:314c::100:a1) smtp.mailfrom=linus.luessing@c0d3.blue
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: NASJ4QIPH4YLDPLHHVLRPIEN3MNYXAUG
X-Message-ID-Hash: NASJ4QIPH4YLDPLHHVLRPIEN3MNYXAUG
X-MailFrom: linus.luessing@c0d3.blue
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/NASJ4QIPH4YLDPLHHVLRPIEN3MNYXAUG/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

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

Fixes: e32470167379 ("batman-adv: check incoming packet type for bla")
Signed-off-by: Linus L=C3=BCssing <linus.luessing@c0d3.blue>
---
 net/batman-adv/bridge_loop_avoidance.c | 34 +++++++++++++++++++-------
 net/batman-adv/bridge_loop_avoidance.h |  4 +--
 net/batman-adv/soft-interface.c        |  6 ++---
 3 files changed, 30 insertions(+), 14 deletions(-)

diff --git a/net/batman-adv/bridge_loop_avoidance.c b/net/batman-adv/brid=
ge_loop_avoidance.c
index d8c5d317..3d2a66f2 100644
--- a/net/batman-adv/bridge_loop_avoidance.c
+++ b/net/batman-adv/bridge_loop_avoidance.c
@@ -1813,7 +1813,7 @@ batadv_bla_loopdetect_check(struct batadv_priv *bat=
_priv, struct sk_buff *skb,
  * @bat_priv: the bat priv with all the soft interface information
  * @skb: the frame to be checked
  * @vid: the VLAN ID of the frame
- * @is_bcast: the packet came in a broadcast packet type.
+ * @packet_type: the batman packet type this frame came in
  *
  * batadv_bla_rx avoidance checks if:
  *  * we have to race for a claim
@@ -1825,7 +1825,7 @@ batadv_bla_loopdetect_check(struct batadv_priv *bat=
_priv, struct sk_buff *skb,
  * further process the skb.
  */
 bool batadv_bla_rx(struct batadv_priv *bat_priv, struct sk_buff *skb,
-		   unsigned short vid, bool is_bcast)
+		   unsigned short vid, int packet_type)
 {
 	struct batadv_bla_backbone_gw *backbone_gw;
 	struct ethhdr *ethhdr;
@@ -1847,9 +1847,24 @@ bool batadv_bla_rx(struct batadv_priv *bat_priv, s=
truct sk_buff *skb,
 		goto handled;
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
@@ -1884,13 +1899,14 @@ bool batadv_bla_rx(struct batadv_priv *bat_priv, =
struct sk_buff *skb,
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
index 41edb2c4..a81c41b6 100644
--- a/net/batman-adv/bridge_loop_avoidance.h
+++ b/net/batman-adv/bridge_loop_avoidance.h
@@ -35,7 +35,7 @@ static inline bool batadv_bla_is_loopdetect_mac(const u=
int8_t *mac)
=20
 #ifdef CONFIG_BATMAN_ADV_BLA
 bool batadv_bla_rx(struct batadv_priv *bat_priv, struct sk_buff *skb,
-		   unsigned short vid, bool is_bcast);
+		   unsigned short vid, int packet_type);
 bool batadv_bla_tx(struct batadv_priv *bat_priv, struct sk_buff *skb,
 		   unsigned short vid);
 bool batadv_bla_is_backbone_gw(struct sk_buff *skb,
@@ -66,7 +66,7 @@ bool batadv_bla_check_claim(struct batadv_priv *bat_pri=
v, u8 *addr,
=20
 static inline bool batadv_bla_rx(struct batadv_priv *bat_priv,
 				 struct sk_buff *skb, unsigned short vid,
-				 bool is_bcast)
+				 int packet_type)
 {
 	return false;
 }
diff --git a/net/batman-adv/soft-interface.c b/net/batman-adv/soft-interf=
ace.c
index 3d037b17..cdde943c 100644
--- a/net/batman-adv/soft-interface.c
+++ b/net/batman-adv/soft-interface.c
@@ -424,10 +424,10 @@ void batadv_interface_rx(struct net_device *soft_if=
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
 	skb_pull_rcsum(skb, hdr_size);
 	skb_reset_mac_header(skb);
@@ -470,7 +470,7 @@ void batadv_interface_rx(struct net_device *soft_ifac=
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
2.28.0
