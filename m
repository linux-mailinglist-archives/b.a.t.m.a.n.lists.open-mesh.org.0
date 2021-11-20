Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E7C8457E6F
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 20 Nov 2021 13:41:27 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id BB29A84479;
	Sat, 20 Nov 2021 13:40:24 +0100 (CET)
Received: from dvalin.narfation.org (dvalin.narfation.org [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 75DF283DB1
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 20 Nov 2021 13:40:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1637412022;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=UFOzYMAeSL48Cu2QrNvFfL68SSI9xsCNb7YyL0zH0QI=;
	b=tG2XxwVbBNOmKyB49Zy6BirClyPRJctKBEoxWjXFQyiRsmw1bzQE/TeC6wFrk8KGjikt7r
	JtZs2sbZU1D49s+0GgVPdFiIuy29J9JY7+P/WKUSPLEoX9dvKIxjR3KvRjF+qSUx3Wjqek
	Yv1QmpnckL0D/oi2pNZGC4YBnT7JSDA=
From: Sven Eckelmann <sven@narfation.org>
To: stable@vger.kernel.org
Subject: [PATCH 4.14 4/5] batman-adv: Reserve needed_*room for fragments
Date: Sat, 20 Nov 2021 13:40:17 +0100
Message-Id: <20211120124018.260907-5-sven@narfation.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211120124018.260907-1-sven@narfation.org>
References: <20211120124018.260907-1-sven@narfation.org>
MIME-Version: 1.0
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1637412022; a=rsa-sha256;
	cv=none;
	b=lhYK8TdDbLfpmGq3xGpwGLUYmtetPmFkvs4s1ODmxhk3x1AHCRHjoJKccqstUHJ6plwGEy
	ouCn8GlXKEwoiKyuQDFW+b7mMDMj89P59UdZn2LsP4NposodSYCk864Jo9E8LcmnF5Ghl1
	i+oF1Qjtxt3cLZcoihs0c641TGrywDU=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1637412022;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=UFOzYMAeSL48Cu2QrNvFfL68SSI9xsCNb7YyL0zH0QI=;
	b=qfqp2MY83kQIocZGveB76G0kXD7kJLubvyKdC70f7HMJ0acObnHtG3mbIfuV99h7Reb+jv
	kCsQuthBvYfoYZsu+/f3OEADS4k/N6GBL6OnwgN6nX/mQN6esbkS29ytZQOlpBDD2ZRiBG
	3vpa4xyGyJ7Rrtgle4sXVuv9ykHo6PI=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=tG2XxwVb;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: SJIN2EUMWD2WVE6S3Q6FZYZW22DWPOZQ
X-Message-ID-Hash: SJIN2EUMWD2WVE6S3Q6FZYZW22DWPOZQ
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/SJIN2EUMWD2WVE6S3Q6FZYZW22DWPOZQ/>
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
[ bp: 4.14 backported: adjust context. ]
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 net/batman-adv/fragmentation.c | 15 ++++++++++-----
 1 file changed, 10 insertions(+), 5 deletions(-)

diff --git a/net/batman-adv/fragmentation.c b/net/batman-adv/fragmentatio=
n.c
index 788d62073964..f1446a04f055 100644
--- a/net/batman-adv/fragmentation.c
+++ b/net/batman-adv/fragmentation.c
@@ -402,6 +402,7 @@ bool batadv_frag_skb_fwd(struct sk_buff *skb,
=20
 /**
  * batadv_frag_create - create a fragment from skb
+ * @net_dev: outgoing device for fragment
  * @skb: skb to create fragment from
  * @frag_head: header to use in new fragment
  * @fragment_size: size of new fragment
@@ -412,22 +413,25 @@ bool batadv_frag_skb_fwd(struct sk_buff *skb,
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
@@ -450,11 +454,12 @@ int batadv_frag_send_packet(struct sk_buff *skb,
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
 	int ret;
@@ -514,7 +519,7 @@ int batadv_frag_send_packet(struct sk_buff *skb,
 			goto put_primary_if;
 		}
=20
-		skb_fragment =3D batadv_frag_create(skb, &frag_header,
+		skb_fragment =3D batadv_frag_create(net_dev, skb, &frag_header,
 						  max_fragment_size);
 		if (!skb_fragment) {
 			ret =3D -ENOMEM;
--=20
2.30.2
