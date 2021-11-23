Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id AE4F745A2EF
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 23 Nov 2021 13:43:16 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id A4E14844C8;
	Tue, 23 Nov 2021 13:43:11 +0100 (CET)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 7AAF1844BC
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 23 Nov 2021 13:43:08 +0100 (CET)
Received: by mail.kernel.org (Postfix) with ESMTPSA id B17EA60F6B;
	Tue, 23 Nov 2021 12:43:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1637671387;
	bh=w/sCi5fzzJmSHzFJuTYE6ymDwD4BjdQi2ezp/zc1Bnw=;
	h=Subject:To:Cc:From:Date:In-Reply-To:From;
	b=mCNWJDJ0UgxDUlBVMkW/3W8BTnDp6gaU7oZAWun8UUo9VNjnaWThlyBy4mIN7NA0Z
	 qJOWYNHGLHErsMB6J0MYCoNYAT+2/L7dsDCu1YFuaKtcIZgo3hY1JV0J01Ic+4CJwu
	 CmctUXYd10Tlgb0iIUZAw/MNkfmaj5kmHhxkD1Gk=
Subject: Patch "batman-adv: mcast: fix duplicate mcast packets in BLA backbone from mesh" has been added to the 4.4-stable tree
To: b.a.t.m.a.n@lists.open-mesh.org,gregkh@linuxfoundation.org,linus.luessing@c0d3.blue,sven@narfation.org,sw@simonwunderlich.de
From: <gregkh@linuxfoundation.org>
Date: Tue, 23 Nov 2021 13:42:44 +0100
In-Reply-To: <20211120123939.260723-6-sven@narfation.org>
Message-ID: <16376713644214@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1
X-stable: commit
X-Patchwork-Hint: ignore 
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1637671388; a=rsa-sha256;
	cv=none;
	b=XFu3ISNrVls8WEbZZotHbrFM3kcVDECd7sq4jy7jTarzrZxRgnn3Zb1qf7yutEcANQI25k
	ljW4Igs7jkwyNmpZWMo6xjNeK54FFkvTLQiTbDQGfsMGVe7uLHNPZ++xntzenYsowOX/jW
	WFw9BDnJbWYcS1STRVHtdwkjXMyh25A=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1637671388;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:dkim-signature;
	bh=iMg8hv4k8E3S2cGyZzAtRbXayAn7MmlnqQFsQ1ZKThQ=;
	b=JbNPAGLx3x08ZQ1sWYeNtGipPgg+acQBRLnNiws6579XzIhENpNL0XLCA0qnJHwrgKiTWy
	/af65zq9F/KGOAuW7HehMNM68KREHnX9X5GzrfUkqCEY82I5mOFgHYbkVyIiU39IilCbIE
	tnYdSsRL3ouovqOudsoifsJY9cBLzh4=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=linuxfoundation.org header.s=korg header.b=mCNWJDJ0;
	spf=pass (diktynna.open-mesh.org: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
	dmarc=pass (policy=none) header.from=linuxfoundation.org
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: PXNQG3ZZAGTPZSVZKV2XOH3AYWZ3LQTL
X-Message-ID-Hash: PXNQG3ZZAGTPZSVZKV2XOH3AYWZ3LQTL
X-MailFrom: gregkh@linuxfoundation.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
CC: stable-commits@vger.kernel.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/PXNQG3ZZAGTPZSVZKV2XOH3AYWZ3LQTL/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>


This is a note to let you know that I've just added the patch titled

    batman-adv: mcast: fix duplicate mcast packets in BLA backbone from m=
esh

to the 4.4-stable tree which can be found at:
    http://www.kernel.org/git/?p=3Dlinux/kernel/git/stable/stable-queue.g=
it;a=3Dsummary

The filename of the patch is:
     batman-adv-mcast-fix-duplicate-mcast-packets-in-bla-backbone-from-me=
sh.patch
and it can be found in the queue-4.4 subdirectory.

If you, or anyone else, feels it should not be added to the stable tree,
please let <stable@vger.kernel.org> know about it.


From foo@baz Tue Nov 23 01:39:02 PM CET 2021
From: Sven Eckelmann <sven@narfation.org>
Date: Sat, 20 Nov 2021 13:39:33 +0100
Subject: batman-adv: mcast: fix duplicate mcast packets in BLA backbone f=
rom mesh
To: stable@vger.kernel.org
Cc: b.a.t.m.a.n@lists.open-mesh.org, "Linus L=FCssing" <linus.luessing@c0=
d3.blue>, "Simon Wunderlich" <sw@simonwunderlich.de>, "Sven Eckelmann" <s=
ven@narfation.org>
Message-ID: <20211120123939.260723-6-sven@narfation.org>

From: Linus L=FCssing <linus.luessing@c0d3.blue>

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
Signed-off-by: Linus L=FCssing <linus.luessing@c0d3.blue>
Acked-by: Simon Wunderlich <sw@simonwunderlich.de>
[ bp: 4.4 backported: adjust context, correct fixes line ]
Signed-off-by: Sven Eckelmann <sven@narfation.org>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 net/batman-adv/bridge_loop_avoidance.c |   34 ++++++++++++++++++++++++--=
-------
 net/batman-adv/bridge_loop_avoidance.h |    4 +--
 net/batman-adv/soft-interface.c        |    6 ++---
 3 files changed, 30 insertions(+), 14 deletions(-)

--- a/net/batman-adv/bridge_loop_avoidance.c
+++ b/net/batman-adv/bridge_loop_avoidance.c
@@ -1542,7 +1542,7 @@ void batadv_bla_free(struct batadv_priv
  * @bat_priv: the bat priv with all the soft interface information
  * @skb: the frame to be checked
  * @vid: the VLAN ID of the frame
- * @is_bcast: the packet came in a broadcast packet type.
+ * @packet_type: the batman packet type this frame came in
  *
  * bla_rx avoidance checks if:
  *  * we have to race for a claim
@@ -1553,7 +1553,7 @@ void batadv_bla_free(struct batadv_priv
  * process the skb.
  */
 int batadv_bla_rx(struct batadv_priv *bat_priv, struct sk_buff *skb,
-		  unsigned short vid, bool is_bcast)
+		  unsigned short vid, int packet_type)
 {
 	struct batadv_bla_backbone_gw *backbone_gw;
 	struct ethhdr *ethhdr;
@@ -1572,9 +1572,24 @@ int batadv_bla_rx(struct batadv_priv *ba
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
@@ -1602,13 +1617,14 @@ int batadv_bla_rx(struct batadv_priv *ba
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
@@ -50,7 +50,7 @@ void batadv_bla_free(struct batadv_priv
=20
 static inline int batadv_bla_rx(struct batadv_priv *bat_priv,
 				struct sk_buff *skb, unsigned short vid,
-				bool is_bcast)
+				int packet_type)
 {
 	return 0;
 }
--- a/net/batman-adv/soft-interface.c
+++ b/net/batman-adv/soft-interface.c
@@ -393,10 +393,10 @@ void batadv_interface_rx(struct net_devi
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
@@ -444,7 +444,7 @@ void batadv_interface_rx(struct net_devi
 	/* Let the bridge loop avoidance check the packet. If will
 	 * not handle it, we can safely push it up.
 	 */
-	if (batadv_bla_rx(bat_priv, skb, vid, is_bcast))
+	if (batadv_bla_rx(bat_priv, skb, vid, packet_type))
 		goto out;
=20
 	if (orig_node)


Patches currently in stable-queue which might be from sven@narfation.org =
are

queue-4.4/batman-adv-consider-fragmentation-for-needed_headroom.patch
queue-4.4/ath9k-fix-potential-interrupt-storm-on-queue-reset.patch
queue-4.4/batman-adv-set-.owner-to-this_module.patch
queue-4.4/batman-adv-mcast-fix-duplicate-mcast-packets-from-bla-backbone-=
to-mesh.patch
queue-4.4/batman-adv-fix-multicast-tt-issues-with-bogus-roam-flags.patch
queue-4.4/batman-adv-mcast-fix-duplicate-mcast-packets-in-bla-backbone-fr=
om-lan.patch
queue-4.4/batman-adv-reserve-needed_-room-for-fragments.patch
queue-4.4/net-batman-adv-fix-error-handling.patch
queue-4.4/batman-adv-keep-fragments-equally-sized.patch
queue-4.4/batman-adv-avoid-warn_on-timing-related-checks.patch
queue-4.4/batman-adv-prevent-duplicated-softif_vlan-entry.patch
queue-4.4/batman-adv-don-t-always-reallocate-the-fragmentation-skb-head.p=
atch
queue-4.4/batman-adv-mcast-fix-duplicate-mcast-packets-in-bla-backbone-fr=
om-mesh.patch
