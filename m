Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id B351D4826BD
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat,  1 Jan 2022 06:27:28 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 9012183DD3;
	Sat,  1 Jan 2022 06:27:27 +0100 (CET)
Received: from mail.aperture-lab.de (mail.aperture-lab.de [IPv6:2a01:4f8:c2c:665b::1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 32CD480885
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sat,  1 Jan 2022 06:27:24 +0100 (CET)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id EE9383F5BB;
	Sat,  1 Jan 2022 06:27:22 +0100 (CET)
From: =?UTF-8?q?Linus=20L=C3=BCssing?= <linus.luessing@c0d3.blue>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: =?UTF-8?q?Linus=20L=C3=BCssing?= <linus.luessing@c0d3.blue>
Subject: [PATCH maint] batman-adv: mcast: don't send link-local multicast to mcast routers
Date: Sat,  1 Jan 2022 06:27:13 +0100
Message-Id: <20220101052713.9204-1-linus.luessing@c0d3.blue>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Last-TLS-Session-Version: TLSv1.3
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=none (diktynna.open-mesh.org: domain of linus.luessing@c0d3.blue has no SPF policy when checking 2a01:4f8:c2c:665b::1) smtp.mailfrom=linus.luessing@c0d3.blue;
	dmarc=none
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1641014844; a=rsa-sha256;
	cv=none;
	b=fFb0tiE1TDHfzKomkTFRiSd5h1R1gcB5/XfstLUL/DgRhQi9Ltlj3OEt2UcZMjjpKn4eus
	UZh4oW3S/e1pcK5/RvaptGqB3jEXq5ViM9dmZx+q8tZ7FdMR+lG4ZLELU30BRPv+KdIfQT
	s5a1oFteMRMxe61Y9LyUnf8SMaBJRGA=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1641014844;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=eqvOMCIvQV98rmzXGrQzYFLUzqtlilbVPmIwf72OINo=;
	b=PnO/4REFKjUsATTZp8jUagBExh4KvLN3TuVuL6PEyOfnuTG8OzTzI5rlhbs6OniqodTi4S
	Zd1NEbYQ2jiWg0QXw930659u0fbgApurED6RCj27/f/o5+KBomRYoIMlT33f3TKHSu+q10
	mxtu4lNak2tYCICiijnnUHXW0IbKQJw=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: 7FG377FQZG44JZY3SEU5IUCBPMH6P766
X-Message-ID-Hash: 7FG377FQZG44JZY3SEU5IUCBPMH6P766
X-MailFrom: linus.luessing@c0d3.blue
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/7FG377FQZG44JZY3SEU5IUCBPMH6P766/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

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

Fixes: 3a8df00cd969 ("batman-adv: mcast: apply optimizations for routable=
 packets, too")
Signed-off-by: Linus L=C3=BCssing <linus.luessing@c0d3.blue>
---
 net/batman-adv/multicast.c      | 15 ++++++++++-----
 net/batman-adv/multicast.h      |  5 +++--
 net/batman-adv/soft-interface.c |  7 +++++--
 3 files changed, 18 insertions(+), 9 deletions(-)

diff --git a/net/batman-adv/multicast.c b/net/batman-adv/multicast.c
index 433901dc..f4004cf0 100644
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
index 9fee5da0..c214304d 100644
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
diff --git a/net/batman-adv/soft-interface.c b/net/batman-adv/soft-interf=
ace.c
index 7ee09337..2dbbe6c1 100644
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
2.34.1
