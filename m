Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 331032C6ADB
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 27 Nov 2020 18:48:18 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 29C4481218;
	Fri, 27 Nov 2020 18:48:17 +0100 (CET)
Received: from simonwunderlich.de (simonwunderlich.de [79.140.42.25])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id A59ED807E7
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 27 Nov 2020 18:48:14 +0100 (CET)
Received: from kero.packetmixer.de (p200300c59712a4e04204e2f79fd8c031.dip0.t-ipconnect.de [IPv6:2003:c5:9712:a4e0:4204:e2f7:9fd8:c031])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by simonwunderlich.de (Postfix) with ESMTPSA id BCB38174061;
	Fri, 27 Nov 2020 18:38:58 +0100 (CET)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: davem@davemloft.net,
	kuba@kernel.org
Subject: [PATCH 2/3] batman-adv: Reserve needed_*room for fragments
Date: Fri, 27 Nov 2020 18:38:48 +0100
Message-Id: <20201127173849.19208-3-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201127173849.19208-1-sw@simonwunderlich.de>
References: <20201127173849.19208-1-sw@simonwunderlich.de>
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1606499294;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=d6CK7/FFgdy2qANPMl4OPgmCdAMU3HpWiOjaiGQaPCc=;
	b=PaHFWLmiOOdYuYIj+MuKklvYDOx4v9kDaRca2yyb0K7teDPIFmi0IinB7jGfe2jIfBOyre
	ZBKHDEOKzl0/yG1XXTnGzcQY0ZpHXSdOLUd29Ebt65Yp5arIYhSVLoE3UK4yLE1i49VV7Z
	3PPfv1CDjVS4hiqxcg9o2ZGe7JsxzwQ=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1606499294; a=rsa-sha256;
	cv=none;
	b=RepzvAzZvN4mVlwh4EOW42YQq5NMHOuvEDm84UJ5pl9y1EAI73CgUlWv2ERgWx2OUIS8+1
	4/+e7iIc1/0cSF7JnZPuJoHxBUc2Wdw0HJtNdA58e1qWzU6Air1IzKXYVeh5+U+f7ZUckI
	f5osKhdpgww8eTeQZDUAbOOWu+d2Hb0=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates 79.140.42.25 as permitted sender) smtp.mailfrom=sw@simonwunderlich.de
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: JFWIZYTDPDQTWJXHBKZUIAYM2WBGFBHA
X-Message-ID-Hash: JFWIZYTDPDQTWJXHBKZUIAYM2WBGFBHA
X-MailFrom: sw@simonwunderlich.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/JFWIZYTDPDQTWJXHBKZUIAYM2WBGFBHA/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

From: Sven Eckelmann <sven@narfation.org>

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
---
 net/batman-adv/fragmentation.c | 15 ++++++++++-----
 1 file changed, 10 insertions(+), 5 deletions(-)

diff --git a/net/batman-adv/fragmentation.c b/net/batman-adv/fragmentatio=
n.c
index 9a47ef8b95c4..8de1fb567fd7 100644
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
@@ -401,22 +402,25 @@ bool batadv_frag_skb_fwd(struct sk_buff *skb,
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
@@ -439,11 +443,12 @@ int batadv_frag_send_packet(struct sk_buff *skb,
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
@@ -503,7 +508,7 @@ int batadv_frag_send_packet(struct sk_buff *skb,
 			goto put_primary_if;
 		}
=20
-		skb_fragment =3D batadv_frag_create(skb, &frag_header,
+		skb_fragment =3D batadv_frag_create(net_dev, skb, &frag_header,
 						  max_fragment_size);
 		if (!skb_fragment) {
 			ret =3D -ENOMEM;
--=20
2.20.1
