Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id EEC836563FC
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 26 Dec 2022 17:03:00 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 38000845C8;
	Mon, 26 Dec 2022 17:02:55 +0100 (CET)
Received: from mail.aperture-lab.de (mail.aperture-lab.de [IPv6:2a01:4f8:c2c:665b::1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 290458455E
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 26 Dec 2022 17:02:51 +0100 (CET)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1672070571;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=5Yy/bmxSzd50SSJdVcbJ4gk3sRVa+cTZNfxrg37lXkM=;
	b=meIKLYJRmWHfxKLlV8prRoKAjhRkIKvGn3AgNXgOIpcQfQfgkkL4yJqkeD+bhiPQf9NB00
	/Ab42+qt+NtCb7YBnOyfk6JQ9qSiMpGuB7qWCziO4TpmeF4EHxVayjRIB1l3oGj7q+RlN3
	BlctoJLage7H7kstjd+jPIuSSon3rx4=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	dmarc=none;
	spf=none (diktynna.open-mesh.org: domain of linus.luessing@c0d3.blue has no SPF policy when checking 2a01:4f8:c2c:665b::1) smtp.mailfrom=linus.luessing@c0d3.blue
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1672070571; a=rsa-sha256;
	cv=none;
	b=pHQ8mp3v7kG1g4RKexPsdHt8WcXwWWtHEv8UWIaxms2Wn++3OLq89l5TKQVsdJOtLCCPAP
	s6x6PGsPfXjdOn6C1ENGCGlYyKK2NOcA0VID1ydTkj1OZGlVsW4eVFGFv98O6Z4H8NVbsh
	t3NvxLyp/Wco3w6hJgECL79AZvEF8OE=
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id A03683EC75;
	Mon, 26 Dec 2022 17:02:49 +0100 (CET)
From: =?UTF-8?q?Linus=20L=C3=BCssing?= <linus.luessing@c0d3.blue>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: =?UTF-8?q?Linus=20L=C3=BCssing?= <linus.luessing@c0d3.blue>
Subject: [PATCH 1/5] batman-adv: mcast: remove now redundant single ucast forwarding
Date: Mon, 26 Dec 2022 17:02:29 +0100
Message-Id: <20221226160233.9521-2-linus.luessing@c0d3.blue>
In-Reply-To: <20221226160233.9521-1-linus.luessing@c0d3.blue>
References: <20221226160233.9521-1-linus.luessing@c0d3.blue>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Last-TLS-Session-Version: TLSv1.3
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: VKKRRD2YV435XTRKHRXBFYKJA2NJYWLI
X-Message-ID-Hash: VKKRRD2YV435XTRKHRXBFYKJA2NJYWLI
X-MailFrom: linus.luessing@c0d3.blue
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/VKKRRD2YV435XTRKHRXBFYKJA2NJYWLI/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

The multicast code to send a multicast packet via multiple batman-adv
unicast packets is not only capable of sending to multiple but also to a
single node. Therefore we can safely remove the old, specialized, now
redundant multicast-to-single-unicast code.

The only functional change of this simplification is that the edge case
of allowing a multicast packet with an unsnoopable destination address
(224.0.0.0/24 or ff02::1) where only a single node has signaled interest
in it via the batman-adv want-all-unsnoopables multicast flag is now
transmitted via a batman-adv broadcast instead of a batman-adv unicast
packet. Maintaining this edge case feature does not seem worth the extra
lines of code and people should just not expect to be able to snoop and
optimize such unsnoopable multicast addresses when bridges are involved.

While at it also renaming a few items in the batadv_forw_mode enum to
prepare for the new batman-adv multicast packet type.

Signed-off-by: Linus L=C3=BCssing <linus.luessing@c0d3.blue>
---
 net/batman-adv/multicast.c      | 248 ++------------------------------
 net/batman-adv/multicast.h      |  38 +----
 net/batman-adv/soft-interface.c |  25 ++--
 3 files changed, 33 insertions(+), 278 deletions(-)

diff --git a/net/batman-adv/multicast.c b/net/batman-adv/multicast.c
index 34897a15ad9d..dbe7fcfad512 100644
--- a/net/batman-adv/multicast.c
+++ b/net/batman-adv/multicast.c
@@ -1144,223 +1144,20 @@ static int batadv_mcast_forw_rtr_count(struct ba=
tadv_priv *bat_priv,
 	}
 }
=20
-/**
- * batadv_mcast_forw_tt_node_get() - get a multicast tt node
- * @bat_priv: the bat priv with all the soft interface information
- * @ethhdr: the ether header containing the multicast destination
- *
- * Return: an orig_node matching the multicast address provided by ethhd=
r
- * via a translation table lookup. This increases the returned nodes ref=
count.
- */
-static struct batadv_orig_node *
-batadv_mcast_forw_tt_node_get(struct batadv_priv *bat_priv,
-			      struct ethhdr *ethhdr)
-{
-	return batadv_transtable_search(bat_priv, NULL, ethhdr->h_dest,
-					BATADV_NO_FLAGS);
-}
-
-/**
- * batadv_mcast_forw_ipv4_node_get() - get a node with an ipv4 flag
- * @bat_priv: the bat priv with all the soft interface information
- *
- * Return: an orig_node which has the BATADV_MCAST_WANT_ALL_IPV4 flag se=
t and
- * increases its refcount.
- */
-static struct batadv_orig_node *
-batadv_mcast_forw_ipv4_node_get(struct batadv_priv *bat_priv)
-{
-	struct batadv_orig_node *tmp_orig_node, *orig_node =3D NULL;
-
-	rcu_read_lock();
-	hlist_for_each_entry_rcu(tmp_orig_node,
-				 &bat_priv->mcast.want_all_ipv4_list,
-				 mcast_want_all_ipv4_node) {
-		if (!kref_get_unless_zero(&tmp_orig_node->refcount))
-			continue;
-
-		orig_node =3D tmp_orig_node;
-		break;
-	}
-	rcu_read_unlock();
-
-	return orig_node;
-}
-
-/**
- * batadv_mcast_forw_ipv6_node_get() - get a node with an ipv6 flag
- * @bat_priv: the bat priv with all the soft interface information
- *
- * Return: an orig_node which has the BATADV_MCAST_WANT_ALL_IPV6 flag se=
t
- * and increases its refcount.
- */
-static struct batadv_orig_node *
-batadv_mcast_forw_ipv6_node_get(struct batadv_priv *bat_priv)
-{
-	struct batadv_orig_node *tmp_orig_node, *orig_node =3D NULL;
-
-	rcu_read_lock();
-	hlist_for_each_entry_rcu(tmp_orig_node,
-				 &bat_priv->mcast.want_all_ipv6_list,
-				 mcast_want_all_ipv6_node) {
-		if (!kref_get_unless_zero(&tmp_orig_node->refcount))
-			continue;
-
-		orig_node =3D tmp_orig_node;
-		break;
-	}
-	rcu_read_unlock();
-
-	return orig_node;
-}
-
-/**
- * batadv_mcast_forw_ip_node_get() - get a node with an ipv4/ipv6 flag
- * @bat_priv: the bat priv with all the soft interface information
- * @ethhdr: an ethernet header to determine the protocol family from
- *
- * Return: an orig_node which has the BATADV_MCAST_WANT_ALL_IPV4 or
- * BATADV_MCAST_WANT_ALL_IPV6 flag, depending on the provided ethhdr, se=
ts and
- * increases its refcount.
- */
-static struct batadv_orig_node *
-batadv_mcast_forw_ip_node_get(struct batadv_priv *bat_priv,
-			      struct ethhdr *ethhdr)
-{
-	switch (ntohs(ethhdr->h_proto)) {
-	case ETH_P_IP:
-		return batadv_mcast_forw_ipv4_node_get(bat_priv);
-	case ETH_P_IPV6:
-		return batadv_mcast_forw_ipv6_node_get(bat_priv);
-	default:
-		/* we shouldn't be here... */
-		return NULL;
-	}
-}
-
-/**
- * batadv_mcast_forw_unsnoop_node_get() - get a node with an unsnoopable=
 flag
- * @bat_priv: the bat priv with all the soft interface information
- *
- * Return: an orig_node which has the BATADV_MCAST_WANT_ALL_UNSNOOPABLES=
 flag
- * set and increases its refcount.
- */
-static struct batadv_orig_node *
-batadv_mcast_forw_unsnoop_node_get(struct batadv_priv *bat_priv)
-{
-	struct batadv_orig_node *tmp_orig_node, *orig_node =3D NULL;
-
-	rcu_read_lock();
-	hlist_for_each_entry_rcu(tmp_orig_node,
-				 &bat_priv->mcast.want_all_unsnoopables_list,
-				 mcast_want_all_unsnoopables_node) {
-		if (!kref_get_unless_zero(&tmp_orig_node->refcount))
-			continue;
-
-		orig_node =3D tmp_orig_node;
-		break;
-	}
-	rcu_read_unlock();
-
-	return orig_node;
-}
-
-/**
- * batadv_mcast_forw_rtr4_node_get() - get a node with an ipv4 mcast rou=
ter flag
- * @bat_priv: the bat priv with all the soft interface information
- *
- * Return: an orig_node which has the BATADV_MCAST_WANT_NO_RTR4 flag uns=
et and
- * increases its refcount.
- */
-static struct batadv_orig_node *
-batadv_mcast_forw_rtr4_node_get(struct batadv_priv *bat_priv)
-{
-	struct batadv_orig_node *tmp_orig_node, *orig_node =3D NULL;
-
-	rcu_read_lock();
-	hlist_for_each_entry_rcu(tmp_orig_node,
-				 &bat_priv->mcast.want_all_rtr4_list,
-				 mcast_want_all_rtr4_node) {
-		if (!kref_get_unless_zero(&tmp_orig_node->refcount))
-			continue;
-
-		orig_node =3D tmp_orig_node;
-		break;
-	}
-	rcu_read_unlock();
-
-	return orig_node;
-}
-
-/**
- * batadv_mcast_forw_rtr6_node_get() - get a node with an ipv6 mcast rou=
ter flag
- * @bat_priv: the bat priv with all the soft interface information
- *
- * Return: an orig_node which has the BATADV_MCAST_WANT_NO_RTR6 flag uns=
et
- * and increases its refcount.
- */
-static struct batadv_orig_node *
-batadv_mcast_forw_rtr6_node_get(struct batadv_priv *bat_priv)
-{
-	struct batadv_orig_node *tmp_orig_node, *orig_node =3D NULL;
-
-	rcu_read_lock();
-	hlist_for_each_entry_rcu(tmp_orig_node,
-				 &bat_priv->mcast.want_all_rtr6_list,
-				 mcast_want_all_rtr6_node) {
-		if (!kref_get_unless_zero(&tmp_orig_node->refcount))
-			continue;
-
-		orig_node =3D tmp_orig_node;
-		break;
-	}
-	rcu_read_unlock();
-
-	return orig_node;
-}
-
-/**
- * batadv_mcast_forw_rtr_node_get() - get a node with an ipv4/ipv6 route=
r flag
- * @bat_priv: the bat priv with all the soft interface information
- * @ethhdr: an ethernet header to determine the protocol family from
- *
- * Return: an orig_node which has no BATADV_MCAST_WANT_NO_RTR4 or
- * BATADV_MCAST_WANT_NO_RTR6 flag, depending on the provided ethhdr, set=
 and
- * increases its refcount.
- */
-static struct batadv_orig_node *
-batadv_mcast_forw_rtr_node_get(struct batadv_priv *bat_priv,
-			       struct ethhdr *ethhdr)
-{
-	switch (ntohs(ethhdr->h_proto)) {
-	case ETH_P_IP:
-		return batadv_mcast_forw_rtr4_node_get(bat_priv);
-	case ETH_P_IPV6:
-		return batadv_mcast_forw_rtr6_node_get(bat_priv);
-	default:
-		/* we shouldn't be here... */
-		return NULL;
-	}
-}
-
 /**
  * batadv_mcast_forw_mode() - check on how to forward a multicast packet
  * @bat_priv: the bat priv with all the soft interface information
- * @skb: The multicast packet to check
- * @orig: an originator to be set to forward the skb to
+ * @skb: the multicast packet to check
  * @is_routable: stores whether the destination is routable
  *
- * Return: the forwarding mode as enum batadv_forw_mode and in case of
- * BATADV_FORW_SINGLE set the orig to the single originator the skb
- * should be forwarded to.
+ * Return: The forwarding mode as enum batadv_forw_mode.
  */
 enum batadv_forw_mode
 batadv_mcast_forw_mode(struct batadv_priv *bat_priv, struct sk_buff *skb=
,
-		       struct batadv_orig_node **orig, int *is_routable)
+		       int *is_routable)
 {
 	int ret, tt_count, ip_count, unsnoop_count, total_count;
 	bool is_unsnoopable =3D false;
-	unsigned int mcast_fanout;
 	struct ethhdr *ethhdr;
 	int rtr_count =3D 0;
=20
@@ -1369,7 +1166,7 @@ batadv_mcast_forw_mode(struct batadv_priv *bat_priv=
, struct sk_buff *skb,
 	if (ret =3D=3D -ENOMEM)
 		return BATADV_FORW_NONE;
 	else if (ret < 0)
-		return BATADV_FORW_ALL;
+		return BATADV_FORW_BCAST;
=20
 	ethhdr =3D eth_hdr(skb);
=20
@@ -1382,32 +1179,15 @@ batadv_mcast_forw_mode(struct batadv_priv *bat_pr=
iv, struct sk_buff *skb,
=20
 	total_count =3D tt_count + ip_count + unsnoop_count + rtr_count;
=20
-	switch (total_count) {
-	case 1:
-		if (tt_count)
-			*orig =3D batadv_mcast_forw_tt_node_get(bat_priv, ethhdr);
-		else if (ip_count)
-			*orig =3D batadv_mcast_forw_ip_node_get(bat_priv, ethhdr);
-		else if (unsnoop_count)
-			*orig =3D batadv_mcast_forw_unsnoop_node_get(bat_priv);
-		else if (rtr_count)
-			*orig =3D batadv_mcast_forw_rtr_node_get(bat_priv,
-							       ethhdr);
-
-		if (*orig)
-			return BATADV_FORW_SINGLE;
-
-		fallthrough;
-	case 0:
+	if (!total_count)
 		return BATADV_FORW_NONE;
-	default:
-		mcast_fanout =3D atomic_read(&bat_priv->multicast_fanout);
+	else if (unsnoop_count)
+		return BATADV_FORW_BCAST;
=20
-		if (!unsnoop_count && total_count <=3D mcast_fanout)
-			return BATADV_FORW_SOME;
-	}
+	if (total_count <=3D atomic_read(&bat_priv->multicast_fanout))
+		return BATADV_FORW_UCASTS;
=20
-	return BATADV_FORW_ALL;
+	return BATADV_FORW_BCAST;
 }
=20
 /**
@@ -1419,10 +1199,10 @@ batadv_mcast_forw_mode(struct batadv_priv *bat_pr=
iv, struct sk_buff *skb,
  *
  * Return: NET_XMIT_DROP in case of error or NET_XMIT_SUCCESS otherwise.
  */
-int batadv_mcast_forw_send_orig(struct batadv_priv *bat_priv,
-				struct sk_buff *skb,
-				unsigned short vid,
-				struct batadv_orig_node *orig_node)
+static int batadv_mcast_forw_send_orig(struct batadv_priv *bat_priv,
+				       struct sk_buff *skb,
+				       unsigned short vid,
+				       struct batadv_orig_node *orig_node)
 {
 	/* Avoid sending multicast-in-unicast packets to other BLA
 	 * gateways - they already got the frame from the LAN side
diff --git a/net/batman-adv/multicast.h b/net/batman-adv/multicast.h
index 8aec818d0bf6..a9770d8d6d36 100644
--- a/net/batman-adv/multicast.h
+++ b/net/batman-adv/multicast.h
@@ -17,23 +17,16 @@
  */
 enum batadv_forw_mode {
 	/**
-	 * @BATADV_FORW_ALL: forward the packet to all nodes (currently via
-	 *  classic flooding)
+	 * @BATADV_FORW_BCAST: forward the packet to all nodes via a batman-adv
+	 *  broadcast packet
 	 */
-	BATADV_FORW_ALL,
+	BATADV_FORW_BCAST,
=20
 	/**
-	 * @BATADV_FORW_SOME: forward the packet to some nodes (currently via
-	 *  a multicast-to-unicast conversion and the BATMAN unicast routing
-	 *  protocol)
+	 * @BATADV_FORW_UCASTS: forward the packet to some nodes via one
+	 *  or more batman-adv unicast packets
 	 */
-	BATADV_FORW_SOME,
-
-	/**
-	 * @BATADV_FORW_SINGLE: forward the packet to a single node (currently
-	 *  via the BATMAN unicast routing protocol)
-	 */
-	BATADV_FORW_SINGLE,
+	BATADV_FORW_UCASTS,
=20
 	/** @BATADV_FORW_NONE: don't forward, drop it */
 	BATADV_FORW_NONE,
@@ -43,14 +36,8 @@ enum batadv_forw_mode {
=20
 enum batadv_forw_mode
 batadv_mcast_forw_mode(struct batadv_priv *bat_priv, struct sk_buff *skb=
,
-		       struct batadv_orig_node **mcast_single_orig,
 		       int *is_routable);
=20
-int batadv_mcast_forw_send_orig(struct batadv_priv *bat_priv,
-				struct sk_buff *skb,
-				unsigned short vid,
-				struct batadv_orig_node *orig_node);
-
 int batadv_mcast_forw_send(struct batadv_priv *bat_priv, struct sk_buff =
*skb,
 			   unsigned short vid, int is_routable);
=20
@@ -69,20 +56,9 @@ void batadv_mcast_purge_orig(struct batadv_orig_node *=
orig_node);
=20
 static inline enum batadv_forw_mode
 batadv_mcast_forw_mode(struct batadv_priv *bat_priv, struct sk_buff *skb=
,
-		       struct batadv_orig_node **mcast_single_orig,
 		       int *is_routable)
 {
-	return BATADV_FORW_ALL;
-}
-
-static inline int
-batadv_mcast_forw_send_orig(struct batadv_priv *bat_priv,
-			    struct sk_buff *skb,
-			    unsigned short vid,
-			    struct batadv_orig_node *orig_node)
-{
-	kfree_skb(skb);
-	return NET_XMIT_DROP;
+	return BATADV_FORW_BCAST;
 }
=20
 static inline int
diff --git a/net/batman-adv/soft-interface.c b/net/batman-adv/soft-interf=
ace.c
index 0f5c0679b55a..b70d0167d2fa 100644
--- a/net/batman-adv/soft-interface.c
+++ b/net/batman-adv/soft-interface.c
@@ -196,8 +196,7 @@ static netdev_tx_t batadv_interface_tx(struct sk_buff=
 *skb,
 	unsigned short vid;
 	u32 seqno;
 	int gw_mode;
-	enum batadv_forw_mode forw_mode =3D BATADV_FORW_SINGLE;
-	struct batadv_orig_node *mcast_single_orig =3D NULL;
+	enum batadv_forw_mode forw_mode =3D BATADV_FORW_BCAST;
 	int mcast_is_routable =3D 0;
 	int network_offset =3D ETH_HLEN;
 	__be16 proto;
@@ -301,14 +300,18 @@ static netdev_tx_t batadv_interface_tx(struct sk_bu=
ff *skb,
 send:
 		if (do_bcast && !is_broadcast_ether_addr(ethhdr->h_dest)) {
 			forw_mode =3D batadv_mcast_forw_mode(bat_priv, skb,
-							   &mcast_single_orig,
 							   &mcast_is_routable);
-			if (forw_mode =3D=3D BATADV_FORW_NONE)
-				goto dropped;
-
-			if (forw_mode =3D=3D BATADV_FORW_SINGLE ||
-			    forw_mode =3D=3D BATADV_FORW_SOME)
+			switch (forw_mode) {
+			case BATADV_FORW_BCAST:
+				break;
+			case BATADV_FORW_UCASTS:
 				do_bcast =3D false;
+				break;
+			case BATADV_FORW_NONE:
+				fallthrough;
+			default:
+				goto dropped;
+			}
 		}
 	}
=20
@@ -357,10 +360,7 @@ static netdev_tx_t batadv_interface_tx(struct sk_buf=
f *skb,
 			if (ret)
 				goto dropped;
 			ret =3D batadv_send_skb_via_gw(bat_priv, skb, vid);
-		} else if (mcast_single_orig) {
-			ret =3D batadv_mcast_forw_send_orig(bat_priv, skb, vid,
-							  mcast_single_orig);
-		} else if (forw_mode =3D=3D BATADV_FORW_SOME) {
+		} else if (forw_mode =3D=3D BATADV_FORW_UCASTS) {
 			ret =3D batadv_mcast_forw_send(bat_priv, skb, vid,
 						     mcast_is_routable);
 		} else {
@@ -386,7 +386,6 @@ static netdev_tx_t batadv_interface_tx(struct sk_buff=
 *skb,
 dropped_freed:
 	batadv_inc_counter(bat_priv, BATADV_CNT_TX_DROPPED);
 end:
-	batadv_orig_node_put(mcast_single_orig);
 	batadv_hardif_put(primary_if);
 	return NETDEV_TX_OK;
 }
--=20
2.39.0
