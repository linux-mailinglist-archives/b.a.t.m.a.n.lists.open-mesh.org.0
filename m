Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id EABFC2C5AE0
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 26 Nov 2020 18:44:24 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id B2D2481A41;
	Thu, 26 Nov 2020 18:44:23 +0100 (CET)
Received: from dvalin.narfation.org (dvalin.narfation.org [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 5AF89801AB
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 26 Nov 2020 18:44:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1606412659;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=xtwUA9sXqjsX6r7H1Yfggefl2deuhNpGULcVEn4rjTg=;
	b=diyyoUt2f4AxXu9KkBvl1wqvdrwravknU/9NcmfwY3pFoHW8mmAlOfSDpoWBq1gIpRDVbo
	/yNUhoAowBP92s6m569pbjadE85jeHJXDxrSyhNeE2mtrbbMF0IS+ltBEgek61+RFfvsCa
	X2UYctBqFvuilEUp3N4xSQpt/qFKbkM=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
Subject: [PATCH] batman-adv: Don't always reallocate the fragmentation skb head
Date: Thu, 26 Nov 2020 18:44:04 +0100
Message-Id: <20201126174404.1068235-1-sven@narfation.org>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1606412660;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=xtwUA9sXqjsX6r7H1Yfggefl2deuhNpGULcVEn4rjTg=;
	b=JbP451q3h1KCnaJJKwIAnWlmpgOuaWagbx/TYms3Eh1cpyvlfCG2g7gOKeOrsjl77WzyzT
	IiAsbetm9LowhBxrVAp2y8eoEkUlZ/Nv2jMJOFpWlyX8cJUpGi40kt5nTEb2vwk+ps0z2i
	Wspcsnde4b688nsq4bmX2Dj0km3f0wU=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1606412660; a=rsa-sha256;
	cv=none;
	b=gdl6Nj0dd4wGniJVOsCaUoNnsatwT2F/MGPOxSUrczRm5w9r0m6xTXGD/TzaNJJVE6W3XS
	+UuFRyuuBM3pM1STOSrZ43s8F92Wtxnmal8hCfRTIF+i0QPhzK3lDAJsY51eCXYDDkWwJK
	AXJbZLaOIwZAfi1KihZrFuCYyXlVnkk=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=diyyoUt2;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: CL7YXDSHWIITJGG3ARLVGFIXXM5KKRJA
X-Message-ID-Hash: CL7YXDSHWIITJGG3ARLVGFIXXM5KKRJA
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/CL7YXDSHWIITJGG3ARLVGFIXXM5KKRJA/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

When a packet is fragmented by batman-adv, the original batman-adv header
is not modified. Only a new fragmentation is inserted between the origina=
l
one and the ethernet header. The code must therefore make sure that it ha=
s
a writable region of this size in the skbuff head.

But it is not useful to always reallocate the skbuff by this size even wh=
en
there would be more than enough headroom still in the skb. The reallocati=
on
is just to costly during in this codepath.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 net/batman-adv/fragmentation.c | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/net/batman-adv/fragmentation.c b/net/batman-adv/fragmentatio=
n.c
index 8a73804d..59ebd731 100644
--- a/net/batman-adv/fragmentation.c
+++ b/net/batman-adv/fragmentation.c
@@ -527,13 +527,14 @@ int batadv_frag_send_packet(struct sk_buff *skb,
 		frag_header.no++;
 	}
=20
-	/* Make room for the fragment header. */
-	if (batadv_skb_head_push(skb, header_size) < 0 ||
-	    pskb_expand_head(skb, header_size + ETH_HLEN, 0, GFP_ATOMIC) < 0) {
-		ret =3D -ENOMEM;
+	/* make sure that there is at least enough head for the fragmentation
+	 * and ethernet headers
+	 */
+	ret =3D skb_cow_head(skb, ETH_HLEN + header_size);
+	if (ret < 0)
 		goto put_primary_if;
-	}
=20
+	skb_push(skb, header_size);
 	memcpy(skb->data, &frag_header, header_size);
=20
 	/* Send the last fragment */
--=20
2.29.2
