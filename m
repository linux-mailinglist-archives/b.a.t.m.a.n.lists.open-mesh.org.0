Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id C08882695D9
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 14 Sep 2020 21:48:47 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id CC06480818;
	Mon, 14 Sep 2020 21:48:44 +0200 (CEST)
Received: from mail.aperture-lab.de (mail.aperture-lab.de [138.201.29.205])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 1FD8480374
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 14 Sep 2020 21:48:42 +0200 (CEST)
From: =?UTF-8?q?Linus=20L=C3=BCssing?= <linus.luessing@c0d3.blue>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c0d3.blue; s=2018;
	t=1600112921;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=jAZhb2TOIFneokrXV6NhfMy5oFgt9Cj2pr5Ax67vdes=;
	b=SzLcXWcaXIasZ1KNkJGSPokbLc12Av8FeJPXSnBRf6xTJ/zt5LfPgledrX/creOQvRSYQs
	5P++OXPwwAFXTcy352QDl2oTHOH+eG6p098N4O05M8Qi7WwGfiYvcCAT1GnGGG4QJHE3cJ
	7qLCjgjue/bdRidsUUZ2i6mcutFOeJFQpGI/nZsOWhHCQwdFsXHdYEqz7sz1aCa4YThXOE
	7hJ0n6TLYDvWK5yQoK1VJd2NXjFvfMtlyNy/0fwSN8XVco8TThjyL8egG41usT2EweD/qu
	g3kYPWME4JJdxk9ieqPyjgsIEYzOB+CPIPbdqYIKqaXEsDub/B90Ym6cqfJRPA==
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: =?UTF-8?q?Linus=20L=C3=BCssing?= <linus.luessing@c0d3.blue>
Subject: [PATCH maint v4 1/3] batman-adv: mcast: fix duplicate mcast packets in BLA backbone from LAN
Date: Mon, 14 Sep 2020 21:48:35 +0200
Message-Id: <20200914194837.10425-2-linus.luessing@c0d3.blue>
In-Reply-To: <20200914194837.10425-1-linus.luessing@c0d3.blue>
References: <20200914194837.10425-1-linus.luessing@c0d3.blue>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=linus.luessing@c0d3.blue smtp.mailfrom=linus.luessing@c0d3.blue
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1600112922;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=jAZhb2TOIFneokrXV6NhfMy5oFgt9Cj2pr5Ax67vdes=;
	b=e4g2fhEgukt9lOJuSXcDcpLWnNu5cR/7Fw0YKrGgJtnu4F5pDiDSSF/3AuyJfI2wFwKEmO
	jEKnOgixfGcb24yXAbeuKVszmLY1MfrBdQ/5hdB1IzvBBQXRReE4e1r6EzgeRPogJQP5G3
	omh4R1jrCqcBeiiJl8uS6RWMCz0R45s=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1600112922; a=rsa-sha256;
	cv=none;
	b=nkHDkIPSd7vCFE4cx8QssfOh8GUbJPI930VTgbR9Idr+7auTU0COUXpjE3WcKglpX+cw5A
	FkU784NOZ4rOGAcvyXBvjsFFg0ycOaMyUp2YZ3uLlLRs8LiNQyz17MyVyj4YGmGMF1gwH3
	s4rRbX6FNHgpRZZNMXd4c1NWDQ86y/w=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none (invalid DKIM record) header.d=c0d3.blue header.s=2018 header.b=SzLcXWca;
	spf=none (diktynna.open-mesh.org: domain of linus.luessing@c0d3.blue has no SPF policy when checking 138.201.29.205) smtp.mailfrom=linus.luessing@c0d3.blue
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: CZY7EDTC36G6FHN2HJZG4VGIXZWI5UNK
X-Message-ID-Hash: CZY7EDTC36G6FHN2HJZG4VGIXZWI5UNK
X-MailFrom: linus.luessing@c0d3.blue
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/CZY7EDTC36G6FHN2HJZG4VGIXZWI5UNK/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

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

Fixes: 405cc1e5a81e ("batman-adv: Modified forwarding behaviour for multi=
cast packets")
Signed-off-by: Linus L=C3=BCssing <linus.luessing@c0d3.blue>
---
 net/batman-adv/multicast.c      | 46 ++++++++++++++++++++++++++-------
 net/batman-adv/multicast.h      | 15 +++++++++++
 net/batman-adv/soft-interface.c |  5 ++--
 3 files changed, 53 insertions(+), 13 deletions(-)

diff --git a/net/batman-adv/multicast.c b/net/batman-adv/multicast.c
index bdc4a1fb..ca24a2e5 100644
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
index ebf82599..3e114bc5 100644
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
index 23833a0b..3d037b17 100644
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
2.28.0
