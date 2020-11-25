Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E0062C402B
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 25 Nov 2020 13:30:18 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 568B1807BA;
	Wed, 25 Nov 2020 13:30:17 +0100 (CET)
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 4BF39801FA
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 25 Nov 2020 13:30:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1606307099;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=exiD9FyoG5DurkRzWglTG9JUd8YUwIC8yNqZGHe6PyM=;
	b=h8dq+KFch97AGcGL3AeaRqTQMuA/i0b6NDEe0/HSOka25hvfJcH3f9XKINwfkzStVr5LkA
	6xNPh7Iiqe/+yxXOTVJO2KFz1Jkc+F6AEfkw3g4QP+bQvG5grPtQFYPr2YmHOBrdwJd/br
	TspeLGAL2zrdTNjJTe09IuyHE8S6Qvo=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: [RFC PATCH] batman-adv: Reserve needed_headroom for fragments
Date: Wed, 25 Nov 2020 13:24:38 +0100
Message-Id: <20201125122438.955972-1-sven@narfation.org>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1606307414;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=exiD9FyoG5DurkRzWglTG9JUd8YUwIC8yNqZGHe6PyM=;
	b=FZWpB2aAxfQUbSOYzqt9IMzhSfsJcvg4tOwMmQ9rYmBtaAITIxOV1jGD5Gb15gHqcyp1+G
	fgseXX9cYrqxAARzlAOe/8N2zabJFKwLbuWZtVGvHLr4t2ikAMIzEaktVXyoQB4bU7cnHn
	kfMTqNUzhJwmMegybvmFJFFtV2wn+30=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1606307414; a=rsa-sha256;
	cv=none;
	b=F6SiivyI2Z4KI4c+l6XBBtyIbY8T+n4F5e+ZrEKaL51d+tMOa49FVUurazAh0Y41bpMoh+
	yMmAXJQD1Q723HUPqA2/eioksIJHWMdufUlFAy8ZSVdWF+6xKOdzLtuEelqvt9T+dGZPeN
	KIFaAaFty5+mBQHNwu7Vtt4NOrx2mj4=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=h8dq+KFc;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: Y7WA4PNJ2QBT3DN6OZEBDQV3QBZHOLNR
X-Message-ID-Hash: Y7WA4PNJ2QBT3DN6OZEBDQV3QBZHOLNR
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: Annika Wickert <annika.wickert@exaring.de>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/Y7WA4PNJ2QBT3DN6OZEBDQV3QBZHOLNR/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

TODO: write something about the extra headroom vxlan needs and why it
reduced the performance significantly when only using the minimum reserve=
d
space.

Cc: Annika Wickert <annika.wickert@exaring.de>
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 net/batman-adv/fragmentation.c | 14 +++++++++-----
 1 file changed, 9 insertions(+), 5 deletions(-)

diff --git a/net/batman-adv/fragmentation.c b/net/batman-adv/fragmentatio=
n.c
index 97220e19..5039b201 100644
--- a/net/batman-adv/fragmentation.c
+++ b/net/batman-adv/fragmentation.c
@@ -391,6 +391,7 @@ bool batadv_frag_skb_fwd(struct sk_buff *skb,
=20
 /**
  * batadv_frag_create() - create a fragment from skb
+ * @net_dev: outgoing device for fragment
  * @skb: skb to create fragment from
  * @frag_head: header to use in new fragment
  * @fragment_size: size of new fragment
@@ -401,22 +402,24 @@ bool batadv_frag_skb_fwd(struct sk_buff *skb,
  *
  * Return: the new fragment, NULL on error.
  */
-static struct sk_buff *batadv_frag_create(struct sk_buff *skb,
+static struct sk_buff *batadv_frag_create(struct net_device *net_dev,
+					  struct sk_buff *skb,
 					  struct batadv_frag_packet *frag_head,
 					  unsigned int fragment_size)
 {
 	struct sk_buff *skb_fragment;
 	unsigned int header_size =3D sizeof(*frag_head);
 	unsigned int mtu =3D fragment_size + header_size;
+	int ll_reserved =3D LL_RESERVED_SPACE(net_dev);
=20
-	skb_fragment =3D netdev_alloc_skb(NULL, mtu + ETH_HLEN);
+	skb_fragment =3D dev_alloc_skb(ll_reserved + mtu);
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
@@ -439,11 +442,12 @@ int batadv_frag_send_packet(struct sk_buff *skb,
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
@@ -503,7 +507,7 @@ int batadv_frag_send_packet(struct sk_buff *skb,
 			goto put_primary_if;
 		}
=20
-		skb_fragment =3D batadv_frag_create(skb, &frag_header,
+		skb_fragment =3D batadv_frag_create(net_dev, skb, &frag_header,
 						  max_fragment_size);
 		if (!skb_fragment) {
 			ret =3D -ENOMEM;
--=20
2.29.2
