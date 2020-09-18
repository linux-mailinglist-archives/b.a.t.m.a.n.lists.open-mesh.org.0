Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 9884E26FE1C
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 18 Sep 2020 15:20:18 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 36CAB80854;
	Fri, 18 Sep 2020 15:20:09 +0200 (CEST)
Received: from simonwunderlich.de (simonwunderlich.de [79.140.42.25])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 2A2A4800F2
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 18 Sep 2020 15:20:00 +0200 (CEST)
Received: from kero.packetmixer.de (p200300c59714ead05d12fb7f5a0314d0.dip0.t-ipconnect.de [IPv6:2003:c5:9714:ead0:5d12:fb7f:5a03:14d0])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by simonwunderlich.de (Postfix) with ESMTPSA id E55C762077;
	Fri, 18 Sep 2020 15:19:59 +0200 (CEST)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: davem@davemloft.net
Subject: [PATCH 4/6] batman-adv: mcast: fix duplicate mcast packets in BLA backbone from LAN
Date: Fri, 18 Sep 2020 15:19:54 +0200
Message-Id: <20200918131956.21598-5-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200918131956.21598-1-sw@simonwunderlich.de>
References: <20200918131956.21598-1-sw@simonwunderlich.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1600435200;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=xmrqpZIE+Du/dvCDvifqNl5Ez1rSg4wnq2gcO5zMJ6E=;
	b=e/Yc76S8g1FfBqVVcFlafso1yPnLEWaZrK1g6WzGptxl+HbEKY34xP7VU8R4qsY3wi4KPK
	Qp71+YflfwR6ZVTnstTilojF73EWebFZucnthsBcGVVwBgRhWOw2ePBqcrJyPJy8+h34kS
	5GqyhQw6E1eKina25RFzicEwIySxeVE=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1600435200; a=rsa-sha256;
	cv=none;
	b=pkG1GFoer6avSkO25njFGY8zwje+ntHHyJZBfplt+oi18W94UPze/pkEYXiZ2KXZIK3XYz
	/qWw7Q1bpGGRhHSL9aK/xgSj04vdpxkCc91+J2Eh1ZJQ56g+EetJiTqn7TmQ4NEVHN45/b
	HsYPrMefoEJ0VVPrSfI54VwFD6razZ4=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates 79.140.42.25 as permitted sender) smtp.mailfrom=sw@simonwunderlich.de
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: GUBBVNCNBW76ZTCB2BBLG3PKJL4QZX2V
X-Message-ID-Hash: GUBBVNCNBW76ZTCB2BBLG3PKJL4QZX2V
X-MailFrom: sw@simonwunderlich.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/GUBBVNCNBW76ZTCB2BBLG3PKJL4QZX2V/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

From: Linus L=C3=BCssing <linus.luessing@c0d3.blue>

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

Fixes: 2d3f6ccc4ea5 ("batman-adv: Modified forwarding behaviour for multi=
cast packets")
Signed-off-by: Linus L=C3=BCssing <linus.luessing@c0d3.blue>
Signed-off-by: Sven Eckelmann <sven@narfation.org>
Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
---
 net/batman-adv/multicast.c      | 46 ++++++++++++++++++++++++++-------
 net/batman-adv/multicast.h      | 15 +++++++++++
 net/batman-adv/soft-interface.c |  5 ++--
 3 files changed, 53 insertions(+), 13 deletions(-)

diff --git a/net/batman-adv/multicast.c b/net/batman-adv/multicast.c
index bdc4a1fba1c6..ca24a2e522b7 100644
--- a/net/batman-adv/multicast.c
+++ b/net/batman-adv/multicast.c
@@ -51,6 +51,7 @@
 #include <uapi/linux/batadv_packet.h>
 #include <uapi/linux/batman_adv.h>
=20
+#include "bridge_loop_avoidance.h"
 #include "hard-interface.h"
 #include "hash.h"
 #include "log.h"
@@ -1434,6 +1435,35 @@ batadv_mcast_forw_mode(struct batadv_priv *bat_pri=
v, struct sk_buff *skb,
 	return BATADV_FORW_ALL;
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
  * batadv_mcast_forw_tt() - forwards a packet to multicast listeners
  * @bat_priv: the bat priv with all the soft interface information
@@ -1471,8 +1501,8 @@ batadv_mcast_forw_tt(struct batadv_priv *bat_priv, =
struct sk_buff *skb,
 			break;
 		}
=20
-		batadv_send_skb_unicast(bat_priv, newskb, BATADV_UNICAST, 0,
-					orig_entry->orig_node, vid);
+		batadv_mcast_forw_send_orig(bat_priv, newskb, vid,
+					    orig_entry->orig_node);
 	}
 	rcu_read_unlock();
=20
@@ -1513,8 +1543,7 @@ batadv_mcast_forw_want_all_ipv4(struct batadv_priv =
*bat_priv,
 			break;
 		}
=20
-		batadv_send_skb_unicast(bat_priv, newskb, BATADV_UNICAST, 0,
-					orig_node, vid);
+		batadv_mcast_forw_send_orig(bat_priv, newskb, vid, orig_node);
 	}
 	rcu_read_unlock();
 	return ret;
@@ -1551,8 +1580,7 @@ batadv_mcast_forw_want_all_ipv6(struct batadv_priv =
*bat_priv,
 			break;
 		}
=20
-		batadv_send_skb_unicast(bat_priv, newskb, BATADV_UNICAST, 0,
-					orig_node, vid);
+		batadv_mcast_forw_send_orig(bat_priv, newskb, vid, orig_node);
 	}
 	rcu_read_unlock();
 	return ret;
@@ -1618,8 +1646,7 @@ batadv_mcast_forw_want_all_rtr4(struct batadv_priv =
*bat_priv,
 			break;
 		}
=20
-		batadv_send_skb_unicast(bat_priv, newskb, BATADV_UNICAST, 0,
-					orig_node, vid);
+		batadv_mcast_forw_send_orig(bat_priv, newskb, vid, orig_node);
 	}
 	rcu_read_unlock();
 	return ret;
@@ -1656,8 +1683,7 @@ batadv_mcast_forw_want_all_rtr6(struct batadv_priv =
*bat_priv,
 			break;
 		}
=20
-		batadv_send_skb_unicast(bat_priv, newskb, BATADV_UNICAST, 0,
-					orig_node, vid);
+		batadv_mcast_forw_send_orig(bat_priv, newskb, vid, orig_node);
 	}
 	rcu_read_unlock();
 	return ret;
diff --git a/net/batman-adv/multicast.h b/net/batman-adv/multicast.h
index ebf825991ecd..3e114bc5ca3b 100644
--- a/net/batman-adv/multicast.h
+++ b/net/batman-adv/multicast.h
@@ -46,6 +46,11 @@ enum batadv_forw_mode
 batadv_mcast_forw_mode(struct batadv_priv *bat_priv, struct sk_buff *skb=
,
 		       struct batadv_orig_node **mcast_single_orig);
=20
+int batadv_mcast_forw_send_orig(struct batadv_priv *bat_priv,
+				struct sk_buff *skb,
+				unsigned short vid,
+				struct batadv_orig_node *orig_node);
+
 int batadv_mcast_forw_send(struct batadv_priv *bat_priv, struct sk_buff =
*skb,
 			   unsigned short vid);
=20
@@ -71,6 +76,16 @@ batadv_mcast_forw_mode(struct batadv_priv *bat_priv, s=
truct sk_buff *skb,
 	return BATADV_FORW_ALL;
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
 static inline int
 batadv_mcast_forw_send(struct batadv_priv *bat_priv, struct sk_buff *skb=
,
 		       unsigned short vid)
diff --git a/net/batman-adv/soft-interface.c b/net/batman-adv/soft-interf=
ace.c
index 23833a0ba5e6..3d037b17f3a7 100644
--- a/net/batman-adv/soft-interface.c
+++ b/net/batman-adv/soft-interface.c
@@ -364,9 +364,8 @@ static netdev_tx_t batadv_interface_tx(struct sk_buff=
 *skb,
 				goto dropped;
 			ret =3D batadv_send_skb_via_gw(bat_priv, skb, vid);
 		} else if (mcast_single_orig) {
-			ret =3D batadv_send_skb_unicast(bat_priv, skb,
-						      BATADV_UNICAST, 0,
-						      mcast_single_orig, vid);
+			ret =3D batadv_mcast_forw_send_orig(bat_priv, skb, vid,
+							  mcast_single_orig);
 		} else if (forw_mode =3D=3D BATADV_FORW_SOME) {
 			ret =3D batadv_mcast_forw_send(bat_priv, skb, vid);
 		} else {
--=20
2.20.1
