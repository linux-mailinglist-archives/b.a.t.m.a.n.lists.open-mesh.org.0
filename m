Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F2B3457E67
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 20 Nov 2021 13:41:04 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id CFA1A83F1D;
	Sat, 20 Nov 2021 13:40:14 +0100 (CET)
Received: from dvalin.narfation.org (dvalin.narfation.org [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id D894683EEB
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 20 Nov 2021 13:40:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1637412009;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=XHOg4YHyMCg3Xv3zgok7Jnbe/28aOSTPMzRtbJARquw=;
	b=S+cHCDuHBBK+91vYa6zqpFY3+mr/ltTUqigQTCd43C8yXkg0o0Vv2d4vq35f0jtcDVHFa5
	5M/NvN3KLiV03Yz2lEngTV3LKZ5W0wFyUjGioEGyp0hYe97IkoTdzJJoO21ueHnK1tmv2A
	bVt+/l5tOg2Ltw8GsPr1mFqsa61bLeg=
From: Sven Eckelmann <sven@narfation.org>
To: stable@vger.kernel.org
Subject: [PATCH 4.9 6/7] batman-adv: Reserve needed_*room for fragments
Date: Sat, 20 Nov 2021 13:39:57 +0100
Message-Id: <20211120123958.260826-7-sven@narfation.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211120123958.260826-1-sven@narfation.org>
References: <20211120123958.260826-1-sven@narfation.org>
MIME-Version: 1.0
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1637412009; a=rsa-sha256;
	cv=none;
	b=gRb6iTHGuL7z4lCZuPVeYfsCTAv724cIk3NmA+6uhi3FsuGLPMbHXoYbOoyYVVF2OdcrFv
	RYk8/otLAl0PqeksIMx2TGZcvEHnusTERuyIoWxD9Gh4WHCFhI1zM1P3RC7VutxtwQrdsn
	Jst9yumBz+IDj5CV96tI9V681jB1paU=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1637412009;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=XHOg4YHyMCg3Xv3zgok7Jnbe/28aOSTPMzRtbJARquw=;
	b=NDwv9jLannOl69aqvHB9c+tI6o7Mt5R6GEEs9e3b0P6FTdf8rdeZuoIBDFMtVGlj+LBwq6
	/OEC5TB0+yGANnfm/YkNGG8ekTeTiCig3Ds14JYEwtuo6qVJ+5qZpsUbO7ioyABhDPo4Zf
	1XUbM4JlEG51165Oe+6BESynK0SjljA=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=S+cHCDuH;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: XQ4LH3YO3JGM7T2ON34JTEY5OXCXG3NN
X-Message-ID-Hash: XQ4LH3YO3JGM7T2ON34JTEY5OXCXG3NN
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/XQ4LH3YO3JGM7T2ON34JTEY5OXCXG3NN/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

commit c5cbfc87558168ef4c3c27ce36eba6b83391db19 upstream.

The batadv net_device is trying to propagate the needed_headroom and
needed_tailroom from the lower devices. This is needed to avoid cost
intensive reallocations using pskb_expand_head during the transmission.

But the fragmentation code split the skb's without adding extra room at t=
he
end/beginning of the various fragments. This reduced the performance of
transmissions over complex scenarios (batadv on vxlan on wireguard) becau=
se
the lower devices had to perform the reallocations at least once.

Fixes: ee75ed88879a ("batman-adv: Fragment and send skbs larger than mtu"=
)
Signed-off-by: Sven Eckelmann <sven@narfation.org>
Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
[ bp: 4.9 backported: adjust context. ]
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 net/batman-adv/fragmentation.c | 15 ++++++++++-----
 1 file changed, 10 insertions(+), 5 deletions(-)

diff --git a/net/batman-adv/fragmentation.c b/net/batman-adv/fragmentatio=
n.c
index b36606816bac..353772eb4f4d 100644
--- a/net/batman-adv/fragmentation.c
+++ b/net/batman-adv/fragmentation.c
@@ -394,6 +394,7 @@ bool batadv_frag_skb_fwd(struct sk_buff *skb,
=20
 /**
  * batadv_frag_create - create a fragment from skb
+ * @net_dev: outgoing device for fragment
  * @skb: skb to create fragment from
  * @frag_head: header to use in new fragment
  * @fragment_size: size of new fragment
@@ -404,22 +405,25 @@ bool batadv_frag_skb_fwd(struct sk_buff *skb,
  *
  * Return: the new fragment, NULL on error.
  */
-static struct sk_buff *batadv_frag_create(struct sk_buff *skb,
+static struct sk_buff *batadv_frag_create(struct net_device *net_dev,
+					  struct sk_buff *skb,
 					  struct batadv_frag_packet *frag_head,
 					  unsigned int fragment_size)
 {
+	unsigned int ll_reserved =3D LL_RESERVED_SPACE(net_dev);
+	unsigned int tailroom =3D net_dev->needed_tailroom;
 	struct sk_buff *skb_fragment;
 	unsigned int header_size =3D sizeof(*frag_head);
 	unsigned int mtu =3D fragment_size + header_size;
=20
-	skb_fragment =3D netdev_alloc_skb(NULL, mtu + ETH_HLEN);
+	skb_fragment =3D dev_alloc_skb(ll_reserved + mtu + tailroom);
 	if (!skb_fragment)
 		goto err;
=20
 	skb_fragment->priority =3D skb->priority;
=20
 	/* Eat the last mtu-bytes of the skb */
-	skb_reserve(skb_fragment, header_size + ETH_HLEN);
+	skb_reserve(skb_fragment, ll_reserved + header_size);
 	skb_split(skb, skb_fragment, skb->len - fragment_size);
=20
 	/* Add the header */
@@ -443,11 +447,12 @@ int batadv_frag_send_packet(struct sk_buff *skb,
 			    struct batadv_orig_node *orig_node,
 			    struct batadv_neigh_node *neigh_node)
 {
+	struct net_device *net_dev =3D neigh_node->if_incoming->net_dev;
 	struct batadv_priv *bat_priv;
 	struct batadv_hard_iface *primary_if =3D NULL;
 	struct batadv_frag_packet frag_header;
 	struct sk_buff *skb_fragment;
-	unsigned int mtu =3D neigh_node->if_incoming->net_dev->mtu;
+	unsigned int mtu =3D net_dev->mtu;
 	unsigned int header_size =3D sizeof(frag_header);
 	unsigned int max_fragment_size, num_fragments;
 	int ret =3D -1;
@@ -503,7 +508,7 @@ int batadv_frag_send_packet(struct sk_buff *skb,
 			goto out;
 		}
=20
-		skb_fragment =3D batadv_frag_create(skb, &frag_header,
+		skb_fragment =3D batadv_frag_create(net_dev, skb, &frag_header,
 						  max_fragment_size);
 		if (!skb_fragment)
 			goto out;
--=20
2.30.2
