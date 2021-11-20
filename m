Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 969F0457E6C
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 20 Nov 2021 13:41:16 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 28F428437E;
	Sat, 20 Nov 2021 13:40:23 +0100 (CET)
Received: from dvalin.narfation.org (dvalin.narfation.org [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id B975283EF9
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 20 Nov 2021 13:40:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1637412020;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=W25qbrddikgRbqQQU9Es3DdvCaHJ62JN5PdNFLVyOyc=;
	b=rLAILJ6rl1fZzwdBNKh+OKshdCV81CffZQR30gWoiqOHiFnYhlPV1rlaTenEDKN3OvhUWy
	6n0D83nxkdc1X7bjBW7hIbpHiK/VcNh2CYCTQZMRoWDpMaaBfJXg244Jn3MhIeq5f6WUuH
	2S38TtsKRjNJpMsWpS3hCLA6uetkIdU=
From: Sven Eckelmann <sven@narfation.org>
To: stable@vger.kernel.org
Subject: [PATCH 4.14 1/5] batman-adv: mcast: fix duplicate mcast packets in BLA backbone from LAN
Date: Sat, 20 Nov 2021 13:40:14 +0100
Message-Id: <20211120124018.260907-2-sven@narfation.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211120124018.260907-1-sven@narfation.org>
References: <20211120124018.260907-1-sven@narfation.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1637412020; a=rsa-sha256;
	cv=none;
	b=oDYYAwoxBzblR4fqEdtmzl737vrVfFsgYAtZOxtmVrbN1q4SdOWKq26JipFL13tPKemId6
	suunDk0XpSVzje5Np5UroARmaHeruqCTYLV9x7goZU694P9qjvut+OrkzpOGMJWkINQomG
	GR3DPF72DiAMdAHhSdZ4E4vGh+N8EVo=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1637412020;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=W25qbrddikgRbqQQU9Es3DdvCaHJ62JN5PdNFLVyOyc=;
	b=2ffRA4tT0aV6xrfskU5VhK9SqWvqUQeHC+UYeGdCYw3j/3vprExLnycj14dafoP9Fyw8z2
	7z7BdS1LuCE40XA7Rbd1H8zKyxiWvZAx2+SM8ocxg4v74o9HmovrWGca+hV2KCISh9c7wl
	CHTzp9IRKHJXVEUMa6edoaM92Zlj5Nk=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=rLAILJ6r;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: OWLAZ72WB7DSSVEU2PNA4QYAUDC2E4UY
X-Message-ID-Hash: OWLAZ72WB7DSSVEU2PNA4QYAUDC2E4UY
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/OWLAZ72WB7DSSVEU2PNA4QYAUDC2E4UY/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

From: Linus L=C3=BCssing <linus.luessing@c0d3.blue>

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

Fixes: 1d8ab8d3c176 ("batman-adv: Modified forwarding behaviour for multi=
cast packets")
Signed-off-by: Linus L=C3=BCssing <linus.luessing@c0d3.blue>
Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
[ bp: 4.14 backport: drop usage in non-existing batadv_mcast_forw_*,
  correct fixes line ]
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 net/batman-adv/multicast.c      | 31 +++++++++++++++++++++++++++++++
 net/batman-adv/multicast.h      | 15 +++++++++++++++
 net/batman-adv/soft-interface.c |  5 ++---
 3 files changed, 48 insertions(+), 3 deletions(-)

diff --git a/net/batman-adv/multicast.c b/net/batman-adv/multicast.c
index d47865e0e697..fc62f325f9ec 100644
--- a/net/batman-adv/multicast.c
+++ b/net/batman-adv/multicast.c
@@ -55,10 +55,12 @@
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
@@ -1290,6 +1292,35 @@ void batadv_mcast_free(struct batadv_priv *bat_pri=
v)
 	batadv_mcast_mla_tt_retract(bat_priv, NULL);
 }
=20
+/**
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
 /**
  * batadv_mcast_purge_orig - reset originator global mcast state modific=
ations
  * @orig: the originator which is going to get purged
diff --git a/net/batman-adv/multicast.h b/net/batman-adv/multicast.h
index 2a78cddab0e9..8faf4f4e0c75 100644
--- a/net/batman-adv/multicast.h
+++ b/net/batman-adv/multicast.h
@@ -43,6 +43,11 @@ enum batadv_forw_mode
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
@@ -65,6 +70,16 @@ static inline int batadv_mcast_init(struct batadv_priv=
 *bat_priv)
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
diff --git a/net/batman-adv/soft-interface.c b/net/batman-adv/soft-interf=
ace.c
index ba9dce04343a..7a04ac96b121 100644
--- a/net/batman-adv/soft-interface.c
+++ b/net/batman-adv/soft-interface.c
@@ -359,9 +359,8 @@ static int batadv_interface_tx(struct sk_buff *skb,
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
--=20
2.30.2
