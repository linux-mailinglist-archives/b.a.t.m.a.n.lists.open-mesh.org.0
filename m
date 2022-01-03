Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 48759483562
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon,  3 Jan 2022 18:12:15 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 00FFE83EF6;
	Mon,  3 Jan 2022 18:12:12 +0100 (CET)
Received: from simonwunderlich.de (simonwunderlich.de [23.88.38.48])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 0FA1983E8B
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon,  3 Jan 2022 18:12:08 +0100 (CET)
Received: from kero.packetmixer.de (p200300C597476fc09Af9dad664F33736.dip0.t-ipconnect.de [IPv6:2003:c5:9747:6fc0:9af9:dad6:64f3:3736])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by simonwunderlich.de (Postfix) with ESMTPSA id AC149FA1B7;
	Mon,  3 Jan 2022 18:12:07 +0100 (CET)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: davem@davemloft.net,
	kuba@kernel.org
Subject: [PATCH 1/1] batman-adv: mcast: don't send link-local multicast to mcast routers
Date: Mon,  3 Jan 2022 18:12:03 +0100
Message-Id: <20220103171203.1124980-2-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220103171203.1124980-1-sw@simonwunderlich.de>
References: <20220103171203.1124980-1-sw@simonwunderlich.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates 23.88.38.48 as permitted sender) smtp.mailfrom=sw@simonwunderlich.de;
	dmarc=none
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1641229928; a=rsa-sha256;
	cv=none;
	b=RnHzqM18svrcF6aXs/kzMPzKwBUst224WtC8MyMjrPNN8oF8Pzwr9zCF7u+0M6hQHqxCTq
	maHSsVWHUv9+mZj5YHpDzUq3a8mQ2VLlkldBaPv/1wr+xRgR+mFNpv3+jnk0knik56bANM
	bgqRS0lUa/nhSDrHdDlUjyar/a1M0Pc=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1641229928;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=M0zr2nLgAYcP4gU3XbA+CuYIuesGo/YcK7AJ/BCWG84=;
	b=lLivWadOXm9+7b6l9foMM5jKv77N5uNj/MkMlUQGnKeT7jF4oqrSGhN6dJy7JzOwsDITI/
	c6B/B2xz8b2uwPh0coD+gNo+a709v4ztz9Z3FuMBtz/+1HyAqQz3pdmW3SDZ8iUlTXLoYg
	hq2aEUD1t0A4A2BGJ+3cPz1/ilNWgqU=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: NRQPDOJPCI7HXDO66R7UOL5ZG5PEOHOQ
X-Message-ID-Hash: NRQPDOJPCI7HXDO66R7UOL5ZG5PEOHOQ
X-MailFrom: sw@simonwunderlich.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/NRQPDOJPCI7HXDO66R7UOL5ZG5PEOHOQ/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

From: Linus L=C3=BCssing <linus.luessing@c0d3.blue>

The addition of routable multicast TX handling introduced a
bug/regression for packets with a link-local multicast destination:
These packets would be sent to all batman-adv nodes with a multicast
router and to all batman-adv nodes with an old version without multicast
router detection.

This even disregards the batman-adv multicast fanout setting, which can
potentially lead to an unwanted, high number of unicast transmissions or
even congestion.

Fixing this by avoiding to send link-local multicast packets to nodes in
the multicast router list.

Fixes: 11d458c1cb9b ("batman-adv: mcast: apply optimizations for routable=
 packets, too")
Signed-off-by: Linus L=C3=BCssing <linus.luessing@c0d3.blue>
Signed-off-by: Sven Eckelmann <sven@narfation.org>
Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
---
 net/batman-adv/multicast.c      | 15 ++++++++++-----
 net/batman-adv/multicast.h      | 10 ++++++----
 net/batman-adv/soft-interface.c |  7 +++++--
 3 files changed, 21 insertions(+), 11 deletions(-)

diff --git a/net/batman-adv/multicast.c b/net/batman-adv/multicast.c
index 433901dcf0c3..f4004cf0ff6f 100644
--- a/net/batman-adv/multicast.c
+++ b/net/batman-adv/multicast.c
@@ -1339,6 +1339,7 @@ batadv_mcast_forw_rtr_node_get(struct batadv_priv *=
bat_priv,
  * @bat_priv: the bat priv with all the soft interface information
  * @skb: The multicast packet to check
  * @orig: an originator to be set to forward the skb to
+ * @is_routable: stores whether the destination is routable
  *
  * Return: the forwarding mode as enum batadv_forw_mode and in case of
  * BATADV_FORW_SINGLE set the orig to the single originator the skb
@@ -1346,17 +1347,16 @@ batadv_mcast_forw_rtr_node_get(struct batadv_priv=
 *bat_priv,
  */
 enum batadv_forw_mode
 batadv_mcast_forw_mode(struct batadv_priv *bat_priv, struct sk_buff *skb=
,
-		       struct batadv_orig_node **orig)
+		       struct batadv_orig_node **orig, int *is_routable)
 {
 	int ret, tt_count, ip_count, unsnoop_count, total_count;
 	bool is_unsnoopable =3D false;
 	unsigned int mcast_fanout;
 	struct ethhdr *ethhdr;
-	int is_routable =3D 0;
 	int rtr_count =3D 0;
=20
 	ret =3D batadv_mcast_forw_mode_check(bat_priv, skb, &is_unsnoopable,
-					   &is_routable);
+					   is_routable);
 	if (ret =3D=3D -ENOMEM)
 		return BATADV_FORW_NONE;
 	else if (ret < 0)
@@ -1369,7 +1369,7 @@ batadv_mcast_forw_mode(struct batadv_priv *bat_priv=
, struct sk_buff *skb,
 	ip_count =3D batadv_mcast_forw_want_all_ip_count(bat_priv, ethhdr);
 	unsnoop_count =3D !is_unsnoopable ? 0 :
 			atomic_read(&bat_priv->mcast.num_want_all_unsnoopables);
-	rtr_count =3D batadv_mcast_forw_rtr_count(bat_priv, is_routable);
+	rtr_count =3D batadv_mcast_forw_rtr_count(bat_priv, *is_routable);
=20
 	total_count =3D tt_count + ip_count + unsnoop_count + rtr_count;
=20
@@ -1689,6 +1689,7 @@ batadv_mcast_forw_want_rtr(struct batadv_priv *bat_=
priv,
  * @bat_priv: the bat priv with all the soft interface information
  * @skb: the multicast packet to transmit
  * @vid: the vlan identifier
+ * @is_routable: stores whether the destination is routable
  *
  * Sends copies of a frame with multicast destination to any node that s=
ignaled
  * interest in it, that is either via the translation table or the accor=
ding
@@ -1701,7 +1702,7 @@ batadv_mcast_forw_want_rtr(struct batadv_priv *bat_=
priv,
  * is neither IPv4 nor IPv6. NET_XMIT_SUCCESS otherwise.
  */
 int batadv_mcast_forw_send(struct batadv_priv *bat_priv, struct sk_buff =
*skb,
-			   unsigned short vid)
+			   unsigned short vid, int is_routable)
 {
 	int ret;
=20
@@ -1717,12 +1718,16 @@ int batadv_mcast_forw_send(struct batadv_priv *ba=
t_priv, struct sk_buff *skb,
 		return ret;
 	}
=20
+	if (!is_routable)
+		goto skip_mc_router;
+
 	ret =3D batadv_mcast_forw_want_rtr(bat_priv, skb, vid);
 	if (ret !=3D NET_XMIT_SUCCESS) {
 		kfree_skb(skb);
 		return ret;
 	}
=20
+skip_mc_router:
 	consume_skb(skb);
 	return ret;
 }
diff --git a/net/batman-adv/multicast.h b/net/batman-adv/multicast.h
index 9fee5da08311..8aec818d0bf6 100644
--- a/net/batman-adv/multicast.h
+++ b/net/batman-adv/multicast.h
@@ -43,7 +43,8 @@ enum batadv_forw_mode {
=20
 enum batadv_forw_mode
 batadv_mcast_forw_mode(struct batadv_priv *bat_priv, struct sk_buff *skb=
,
-		       struct batadv_orig_node **mcast_single_orig);
+		       struct batadv_orig_node **mcast_single_orig,
+		       int *is_routable);
=20
 int batadv_mcast_forw_send_orig(struct batadv_priv *bat_priv,
 				struct sk_buff *skb,
@@ -51,7 +52,7 @@ int batadv_mcast_forw_send_orig(struct batadv_priv *bat=
_priv,
 				struct batadv_orig_node *orig_node);
=20
 int batadv_mcast_forw_send(struct batadv_priv *bat_priv, struct sk_buff =
*skb,
-			   unsigned short vid);
+			   unsigned short vid, int is_routable);
=20
 void batadv_mcast_init(struct batadv_priv *bat_priv);
=20
@@ -68,7 +69,8 @@ void batadv_mcast_purge_orig(struct batadv_orig_node *o=
rig_node);
=20
 static inline enum batadv_forw_mode
 batadv_mcast_forw_mode(struct batadv_priv *bat_priv, struct sk_buff *skb=
,
-		       struct batadv_orig_node **mcast_single_orig)
+		       struct batadv_orig_node **mcast_single_orig,
+		       int *is_routable)
 {
 	return BATADV_FORW_ALL;
 }
@@ -85,7 +87,7 @@ batadv_mcast_forw_send_orig(struct batadv_priv *bat_pri=
v,
=20
 static inline int
 batadv_mcast_forw_send(struct batadv_priv *bat_priv, struct sk_buff *skb=
,
-		       unsigned short vid)
+		       unsigned short vid, int is_routable)
 {
 	kfree_skb(skb);
 	return NET_XMIT_DROP;
diff --git a/net/batman-adv/soft-interface.c b/net/batman-adv/soft-interf=
ace.c
index 7ee09337fc40..2dbbe6c19609 100644
--- a/net/batman-adv/soft-interface.c
+++ b/net/batman-adv/soft-interface.c
@@ -198,6 +198,7 @@ static netdev_tx_t batadv_interface_tx(struct sk_buff=
 *skb,
 	int gw_mode;
 	enum batadv_forw_mode forw_mode =3D BATADV_FORW_SINGLE;
 	struct batadv_orig_node *mcast_single_orig =3D NULL;
+	int mcast_is_routable =3D 0;
 	int network_offset =3D ETH_HLEN;
 	__be16 proto;
=20
@@ -300,7 +301,8 @@ static netdev_tx_t batadv_interface_tx(struct sk_buff=
 *skb,
 send:
 		if (do_bcast && !is_broadcast_ether_addr(ethhdr->h_dest)) {
 			forw_mode =3D batadv_mcast_forw_mode(bat_priv, skb,
-							   &mcast_single_orig);
+							   &mcast_single_orig,
+							   &mcast_is_routable);
 			if (forw_mode =3D=3D BATADV_FORW_NONE)
 				goto dropped;
=20
@@ -359,7 +361,8 @@ static netdev_tx_t batadv_interface_tx(struct sk_buff=
 *skb,
 			ret =3D batadv_mcast_forw_send_orig(bat_priv, skb, vid,
 							  mcast_single_orig);
 		} else if (forw_mode =3D=3D BATADV_FORW_SOME) {
-			ret =3D batadv_mcast_forw_send(bat_priv, skb, vid);
+			ret =3D batadv_mcast_forw_send(bat_priv, skb, vid,
+						     mcast_is_routable);
 		} else {
 			if (batadv_dat_snoop_outgoing_arp_request(bat_priv,
 								  skb))
--=20
2.30.2
