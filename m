Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 31D2D457E58
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 20 Nov 2021 13:40:32 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id D87C683E23;
	Sat, 20 Nov 2021 13:39:54 +0100 (CET)
Received: from dvalin.narfation.org (dvalin.narfation.org [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 9220B83D9C
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 20 Nov 2021 13:39:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1637411987;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=J2yYAWWrPYzWNGmwIQ4VJd+c8/WRWRL3hv2IB/oZOzM=;
	b=T7bE5MzDLN24h+7/X5jZ0cPd5y9F02IZNUjfzTAC8RfovdvaHQBE4nJd4Qu9Y4KmjBryTg
	Ge5VFmac49gNtQOvzPgSV0Q5mTzXEP9f8mE27dcVjlxujyhpNfMYdIO7i3bKKmYkHy99kH
	fRnt3bB0JjqSRQmEYEcGzlVKB8/3Ef8=
From: Sven Eckelmann <sven@narfation.org>
To: stable@vger.kernel.org
Subject: [PATCH 4.4 10/11] batman-adv: Don't always reallocate the fragmentation skb head
Date: Sat, 20 Nov 2021 13:39:38 +0100
Message-Id: <20211120123939.260723-11-sven@narfation.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211120123939.260723-1-sven@narfation.org>
References: <20211120123939.260723-1-sven@narfation.org>
MIME-Version: 1.0
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1637411987; a=rsa-sha256;
	cv=none;
	b=IQtm0lGVwKUo5vDaOucUn5uB8sydTJlBmSwp4JpKIYI3K8lG/tj4aY+TwcrT163AQLkyNH
	V0pr68WcndlCITMKV0lx/Yv4c3rTQ0ulF2Q/48G8suXpVwbluR0riay8AYGKxb7CzWicJE
	nZO9qj5xNIlwQJ3gX+09m3qIzXP5byM=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1637411987;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=J2yYAWWrPYzWNGmwIQ4VJd+c8/WRWRL3hv2IB/oZOzM=;
	b=woTEb6g1/od1Sa0YQNlcArxa55Oz9xOF4LIHbPPb6xz3rnwESIhOXzHvpbOwrxDmrueAgr
	BBzxbuiKt2ehaUxO/BeG/eMatX6Q2PTkNCLXFRD6lGb26j1hIMmlimIgLkYF1Z7OvknLvU
	jX9X5dhGEthrYskKxGvz4H6ET8vZqck=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=T7bE5MzD;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: CV46UYFW7C6YXO45YD2JOEQMGZDN52TL
X-Message-ID-Hash: CV46UYFW7C6YXO45YD2JOEQMGZDN52TL
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/CV46UYFW7C6YXO45YD2JOEQMGZDN52TL/>
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
[ bp: 4.4 backported: adjust context, switch back to old return type +
  labels ]
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 net/batman-adv/fragmentation.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/net/batman-adv/fragmentation.c b/net/batman-adv/fragmentatio=
n.c
index 07dd799e0d56..371f50804fc2 100644
--- a/net/batman-adv/fragmentation.c
+++ b/net/batman-adv/fragmentation.c
@@ -507,11 +507,13 @@ bool batadv_frag_send_packet(struct sk_buff *skb,
 		frag_header.no++;
 	}
=20
-	/* Make room for the fragment header. */
-	if (batadv_skb_head_push(skb, header_size) < 0 ||
-	    pskb_expand_head(skb, header_size + ETH_HLEN, 0, GFP_ATOMIC) < 0)
+	/* make sure that there is at least enough head for the fragmentation
+	 * and ethernet headers
+	 */
+	if (skb_cow_head(skb, ETH_HLEN + header_size) < 0)
 		goto out_err;
=20
+	skb_push(skb, header_size);
 	memcpy(skb->data, &frag_header, header_size);
=20
 	/* Send the last fragment */
--=20
2.30.2
