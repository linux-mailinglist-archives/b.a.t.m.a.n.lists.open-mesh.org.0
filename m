Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id B901C45A2FB
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 23 Nov 2021 13:43:50 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 64B66844DF;
	Tue, 23 Nov 2021 13:43:46 +0100 (CET)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id D434C844EC
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 23 Nov 2021 13:43:38 +0100 (CET)
Received: by mail.kernel.org (Postfix) with ESMTPSA id F124D60F50;
	Tue, 23 Nov 2021 12:43:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1637671417;
	bh=Xy5yYcl3DWawStVLPPiQjYHyU17np50TsLn6ZM9JUuU=;
	h=Subject:To:Cc:From:Date:In-Reply-To:From;
	b=EyX8nb5ez2v5Fr6Oonkh+IfnRCwD99Tezkha0iSvpZFNICiAFhY9sdpe3EtYygt2x
	 x4OLRgVQRaZsiAbVTop3d8gJn3G66WpIBv1gLRM6fKhXEUIHxlZafp1OscBt6Oj0f8
	 PS5/iQf72EvvNz3hPIV7s+smb37OWI9PBW7ias/8=
Subject: Patch "batman-adv: mcast: fix duplicate mcast packets in BLA backbone from LAN" has been added to the 4.9-stable tree
To: b.a.t.m.a.n@lists.open-mesh.org,gregkh@linuxfoundation.org,linus.luessing@c0d3.blue,sven@narfation.org,sw@simonwunderlich.de
From: <gregkh@linuxfoundation.org>
Date: Tue, 23 Nov 2021 13:43:02 +0100
In-Reply-To: <20211120123958.260826-4-sven@narfation.org>
Message-ID: <1637671382128178@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1
X-stable: commit
X-Patchwork-Hint: ignore 
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1637671419; a=rsa-sha256;
	cv=none;
	b=RYPIfZ0BGYQh/nE1kJEMkLRlfxL3mLpLX7GLFPKNkiH44yhvGVFzoDuUZZ1Z8+DMLIMmhv
	e8O1WInDSUduY5/u5peozrEZRyma9U5p+JbD5P2i7fpvF1fgy9KmInPMsUHdP78s87UcSm
	3ZBR10O0/KuZqbI6Y7Qic6PdAnhwtFQ=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1637671419;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:dkim-signature;
	bh=dxTxUoF7TNuexQiZwbZ8xsFV+j1uKmAzwAMiNd3t9rA=;
	b=xwG76GUqNvTSmIuTrQBxmvjnAlOYym/DyD5gakNR9s+7mtlyIv3Mc+tSr75rSn6ju1khAc
	nZsXBEg1TvEAPRHH/153EtLvH73CY7PklPc+R5xrpKrgLxRYu3Col65VVO+M/7CB9PNinP
	afGbfC/wFAU/T7v1qKGpbNSNeJMGYHQ=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=linuxfoundation.org header.s=korg header.b=EyX8nb5e;
	spf=pass (diktynna.open-mesh.org: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
	dmarc=pass (policy=none) header.from=linuxfoundation.org
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: 7YMUIBWZYRIDLQVHMYBPNTWN7I4Q77Y3
X-Message-ID-Hash: 7YMUIBWZYRIDLQVHMYBPNTWN7I4Q77Y3
X-MailFrom: gregkh@linuxfoundation.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
CC: stable-commits@vger.kernel.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/7YMUIBWZYRIDLQVHMYBPNTWN7I4Q77Y3/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>


This is a note to let you know that I've just added the patch titled

    batman-adv: mcast: fix duplicate mcast packets in BLA backbone from L=
AN

to the 4.9-stable tree which can be found at:
    http://www.kernel.org/git/?p=3Dlinux/kernel/git/stable/stable-queue.g=
it;a=3Dsummary

The filename of the patch is:
     batman-adv-mcast-fix-duplicate-mcast-packets-in-bla-backbone-from-la=
n.patch
and it can be found in the queue-4.9 subdirectory.

If you, or anyone else, feels it should not be added to the stable tree,
please let <stable@vger.kernel.org> know about it.


From foo@baz Tue Nov 23 01:37:10 PM CET 2021
From: Sven Eckelmann <sven@narfation.org>
Date: Sat, 20 Nov 2021 13:39:54 +0100
Subject: batman-adv: mcast: fix duplicate mcast packets in BLA backbone f=
rom LAN
To: stable@vger.kernel.org
Cc: b.a.t.m.a.n@lists.open-mesh.org, "Linus L=FCssing" <linus.luessing@c0=
d3.blue>, "Simon Wunderlich" <sw@simonwunderlich.de>, "Sven Eckelmann" <s=
ven@narfation.org>
Message-ID: <20211120123958.260826-4-sven@narfation.org>

From: Linus L=FCssing <linus.luessing@c0d3.blue>

commit 3236d215ad38a3f5372e65cd1e0a52cf93d3c6a2 upstream.

Scenario:
* Multicast frame send from a BLA backbone (multiple nodes with
  their bat0 bridged together, with BLA enabled)

Issue:
* BLA backbone nodes receive the frame multiple times on bat0

For multicast frames received via batman-adv broadcast packets the
originator of the broadcast packet is checked before decapsulating and
forwarding the frame to bat0 (batadv_bla_is_backbone_gw()->
batadv_recv_bcast_packet()). If it came from a node which shares the
same BLA backbone with us then it is not forwarded to bat0 to avoid a
loop.

When sending a multicast frame in a non-4-address batman-adv unicast
packet we are currently missing this check - and cannot do so because
the batman-adv unicast packet has no originator address field.

However, we can simply fix this on the sender side by only sending the
multicast frame via unicasts to interested nodes which do not share the
same BLA backbone with us. This also nicely avoids some unnecessary
transmissions on mesh side.

Note that no infinite loop was observed, probably because of dropping
via batadv_interface_tx()->batadv_bla_tx(). However the duplicates still
utterly confuse switches/bridges, ICMPv6 duplicate address detection and
neighbor discovery and therefore leads to long delays before being able
to establish TCP connections, for instance. And it also leads to the Linu=
x
bridge printing messages like:
"br-lan: received packet on eth1 with own address as source address ..."

Fixes: fe2da6ff27c7 ("batman-adv: Modified forwarding behaviour for multi=
cast packets")
Signed-off-by: Linus L=FCssing <linus.luessing@c0d3.blue>
Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
[ bp: 4.9 backport: drop usage in non-existing batadv_mcast_forw_*. ]
Signed-off-by: Sven Eckelmann <sven@narfation.org>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 net/batman-adv/multicast.c      |   31 +++++++++++++++++++++++++++++++
 net/batman-adv/multicast.h      |   15 +++++++++++++++
 net/batman-adv/soft-interface.c |    5 ++---
 3 files changed, 48 insertions(+), 3 deletions(-)

--- a/net/batman-adv/multicast.c
+++ b/net/batman-adv/multicast.c
@@ -53,10 +53,12 @@
 #include <net/ip.h>
 #include <net/ipv6.h>
=20
+#include "bridge_loop_avoidance.h"
 #include "hard-interface.h"
 #include "hash.h"
 #include "log.h"
 #include "packet.h"
+#include "send.h"
 #include "translation-table.h"
 #include "tvlv.h"
=20
@@ -1252,6 +1254,35 @@ void batadv_mcast_free(struct batadv_pri
 }
=20
 /**
+ * batadv_mcast_forw_send_orig() - send a multicast packet to an origina=
tor
+ * @bat_priv: the bat priv with all the soft interface information
+ * @skb: the multicast packet to send
+ * @vid: the vlan identifier
+ * @orig_node: the originator to send the packet to
+ *
+ * Return: NET_XMIT_DROP in case of error or NET_XMIT_SUCCESS otherwise.
+ */
+int batadv_mcast_forw_send_orig(struct batadv_priv *bat_priv,
+				struct sk_buff *skb,
+				unsigned short vid,
+				struct batadv_orig_node *orig_node)
+{
+	/* Avoid sending multicast-in-unicast packets to other BLA
+	 * gateways - they already got the frame from the LAN side
+	 * we share with them.
+	 * TODO: Refactor to take BLA into account earlier, to avoid
+	 * reducing the mcast_fanout count.
+	 */
+	if (batadv_bla_is_backbone_gw_orig(bat_priv, orig_node->orig, vid)) {
+		dev_kfree_skb(skb);
+		return NET_XMIT_SUCCESS;
+	}
+
+	return batadv_send_skb_unicast(bat_priv, skb, BATADV_UNICAST, 0,
+				       orig_node, vid);
+}
+
+/**
  * batadv_mcast_purge_orig - reset originator global mcast state modific=
ations
  * @orig: the originator which is going to get purged
  */
--- a/net/batman-adv/multicast.h
+++ b/net/batman-adv/multicast.h
@@ -45,6 +45,11 @@ enum batadv_forw_mode
 batadv_mcast_forw_mode(struct batadv_priv *bat_priv, struct sk_buff *skb=
,
 		       struct batadv_orig_node **mcast_single_orig);
=20
+int batadv_mcast_forw_send_orig(struct batadv_priv *bat_priv,
+				struct sk_buff *skb,
+				unsigned short vid,
+				struct batadv_orig_node *orig_node);
+
 void batadv_mcast_init(struct batadv_priv *bat_priv);
=20
 int batadv_mcast_flags_seq_print_text(struct seq_file *seq, void *offset=
);
@@ -71,6 +76,16 @@ static inline int batadv_mcast_init(stru
 	return 0;
 }
=20
+static inline int
+batadv_mcast_forw_send_orig(struct batadv_priv *bat_priv,
+			    struct sk_buff *skb,
+			    unsigned short vid,
+			    struct batadv_orig_node *orig_node)
+{
+	kfree_skb(skb);
+	return NET_XMIT_DROP;
+}
+
 static inline void batadv_mcast_free(struct batadv_priv *bat_priv)
 {
 }
--- a/net/batman-adv/soft-interface.c
+++ b/net/batman-adv/soft-interface.c
@@ -356,9 +356,8 @@ send:
 				goto dropped;
 			ret =3D batadv_send_skb_via_gw(bat_priv, skb, vid);
 		} else if (mcast_single_orig) {
-			ret =3D batadv_send_skb_unicast(bat_priv, skb,
-						      BATADV_UNICAST, 0,
-						      mcast_single_orig, vid);
+			ret =3D batadv_mcast_forw_send_orig(bat_priv, skb, vid,
+							  mcast_single_orig);
 		} else {
 			if (batadv_dat_snoop_outgoing_arp_request(bat_priv,
 								  skb))


Patches currently in stable-queue which might be from sven@narfation.org =
are

queue-4.9/batman-adv-consider-fragmentation-for-needed_headroom.patch
queue-4.9/ath9k-fix-potential-interrupt-storm-on-queue-reset.patch
queue-4.9/batman-adv-mcast-fix-duplicate-mcast-packets-from-bla-backbone-=
to-mesh.patch
queue-4.9/ath10k-fix-max-antenna-gain-unit.patch
queue-4.9/batman-adv-mcast-fix-duplicate-mcast-packets-in-bla-backbone-fr=
om-lan.patch
queue-4.9/batman-adv-reserve-needed_-room-for-fragments.patch
queue-4.9/batman-adv-fix-own-ogm-check-in-aggregated-ogms.patch
queue-4.9/batman-adv-keep-fragments-equally-sized.patch
queue-4.9/batman-adv-don-t-always-reallocate-the-fragmentation-skb-head.p=
atch
