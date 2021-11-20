Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 447EA457E76
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 20 Nov 2021 13:41:47 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 5812A83EFB;
	Sat, 20 Nov 2021 13:40:53 +0100 (CET)
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id AEB6B84484
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 20 Nov 2021 13:40:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1637412048;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=+tBFI+c/zrKjqSB+eEK3KHNzW5Yo1CUzU2UbnYjd1bU=;
	b=HmAQtKlyJLK+arpJsol4rguUOl+AGByII/2fQEkmb3obu9IsQwkFJojgF62shMziTUkqQS
	Vw3tpq7c9lpXGngNQF53nFVgNsp/Vp7pWftaHC5NN+3U0ZS+vEKKhcXxxS1kqmYwN8OyPi
	i/CT3xZWIlj/Cl8ntE8SC3NtA0/Pfoc=
From: Sven Eckelmann <sven@narfation.org>
To: stable@vger.kernel.org
Subject: [PATCH 4.19 4/4] batman-adv: Don't always reallocate the fragmentation skb head
Date: Sat, 20 Nov 2021 13:40:44 +0100
Message-Id: <20211120124044.261086-5-sven@narfation.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211120124044.261086-1-sven@narfation.org>
References: <20211120124044.261086-1-sven@narfation.org>
MIME-Version: 1.0
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1637412048; a=rsa-sha256;
	cv=none;
	b=l9LXqcS7Nmc/Ry6Ouf05JuC6fmyJQLPygDS6FrmgjriEU2z0XfXG+qflHprGF73HezgjpG
	V0muWRcAKGzgXcX9+WyTV4IV4IdshXcFVZ0PMoVMGujhEp4XHrWX+U8X776MiJztNL5onq
	RhMGg0plwBlSBpisZG/nGUwbE5Y2g1E=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1637412048;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=+tBFI+c/zrKjqSB+eEK3KHNzW5Yo1CUzU2UbnYjd1bU=;
	b=neLDZZPac+aYgjObxEN9a5E3fbi8ImUipPDtP9/S5IArwn3Z15lfRfb8AV8QYNzDcjmQm6
	B+JivnHpT1db8oqhAPu41HQ9LdhKLAdBuH3xxXYazyTU0183Dc5MAGErCHz3T2+I2PR5dO
	JXPhWdnHTJbhIOx3VZZOoyn1OtOaKPI=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=HmAQtKly;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: Z554DV7DQSN2RI7B45KSWAZTSNDY3ICM
X-Message-ID-Hash: Z554DV7DQSN2RI7B45KSWAZTSNDY3ICM
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/Z554DV7DQSN2RI7B45KSWAZTSNDY3ICM/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

commit 992b03b88e36254e26e9a4977ab948683e21bd9f upstream.

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

Fixes: ee75ed88879a ("batman-adv: Fragment and send skbs larger than mtu"=
)
Signed-off-by: Sven Eckelmann <sven@narfation.org>
Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 net/batman-adv/fragmentation.c | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/net/batman-adv/fragmentation.c b/net/batman-adv/fragmentatio=
n.c
index 2dbd870221e4..cc062b69fc8d 100644
--- a/net/batman-adv/fragmentation.c
+++ b/net/batman-adv/fragmentation.c
@@ -539,13 +539,14 @@ int batadv_frag_send_packet(struct sk_buff *skb,
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
2.30.2
