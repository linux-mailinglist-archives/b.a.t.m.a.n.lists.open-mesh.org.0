Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id C31D8457E3E
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 20 Nov 2021 13:39:49 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 07EEF83C7F;
	Sat, 20 Nov 2021 13:39:45 +0100 (CET)
Received: from dvalin.narfation.org (dvalin.narfation.org [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 219D581A7E
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 20 Nov 2021 13:39:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1637411981;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=D2Zt3+lA2sYSSk7jceFNezZYAdSOoveVQg/mf+lksSc=;
	b=E9ewx4ThRJkEkzIvuj3fclf0YyNljDhDOyfnUqbGwm7Cd7bBPLyPbi6eQUyhGYqn4VtwD2
	GICXJsUhLp5TctmcwzxDWDI+F5TYXJxCGZSgPE0rGUgXSzs75XpNrIUhoVU4zVdNpgKUdt
	L5EVcS7QX7TEIXHW35OnwzKOItIlp/4=
From: Sven Eckelmann <sven@narfation.org>
To: stable@vger.kernel.org
Subject: [PATCH 4.4 01/11] batman-adv: Keep fragments equally sized
Date: Sat, 20 Nov 2021 13:39:29 +0100
Message-Id: <20211120123939.260723-2-sven@narfation.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211120123939.260723-1-sven@narfation.org>
References: <20211120123939.260723-1-sven@narfation.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1637411982; a=rsa-sha256;
	cv=none;
	b=iKFfDNEIVCKr/vD+pWf/e71rr7ZSp1clpftSajLRHr1EczDelnxaKoGqf5vWRu3bE+Gjgr
	0WyU4+/iQLLWkueo7wMt6WxL6G9sIO6LfFnJ0WVKuHcms+ZBI8RWukvU5qZFz8GRwBXRM/
	5fHehBZMM/XLynfLr/DvXCOlNfF4qus=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1637411982;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=D2Zt3+lA2sYSSk7jceFNezZYAdSOoveVQg/mf+lksSc=;
	b=hfz+l1sXgQNrXF2pIa6vLs7k0vXMGBddkEsJYnVG/cGNGQXDS9Cv2llVFJmRzbXa5ELzGf
	pf10yNgF+lDLXIIjUE0AkIwKz8BBbxP4N63c/wuiTQLMREuxp/ZVecA0z9GIoouGxPa00j
	6lpRMatbUSo1zigBDr6lW8lujEku1xg=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=E9ewx4Th;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: NZLKM5A7G6KRSLQWZOVNSVCSZ4XHHK7F
X-Message-ID-Hash: NZLKM5A7G6KRSLQWZOVNSVCSZ4XHHK7F
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/NZLKM5A7G6KRSLQWZOVNSVCSZ4XHHK7F/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

commit 1c2bcc766be44467809f1798cd4ceacafe20a852 upstream.

The batman-adv fragmentation packets have the design problem that they
cannot be refragmented and cannot handle padding by the underlying link.
The latter often leads to problems when networks are incorrectly configur=
ed
and don't use a common MTU.

The sender could for example fragment a 1271 byte frame (plus external
ethernet header (14) and batadv unicast header (10)) to fit in a 1280 byt=
es
large MTU of the underlying link (max. 1294 byte frames). This would crea=
te
a 1294 bytes large frame (fragment 2) and a 55 bytes large frame
(fragment 1). The extra 54 bytes are the fragment header (20) added to ea=
ch
fragment and the external ethernet header (14) for the second fragment.

Let us assume that the next hop is then not able to transport 1294 bytes =
to
its next hop. The 1294 byte large frame will be dropped but the 55 bytes
large fragment will still be forwarded to its destination.

Or let us assume that the underlying hardware requires that each frame ha=
s
a minimum size (e.g. 60 bytes). Then it will pad the 55 bytes frame to 60
bytes. The receiver of the 60 bytes frame will no longer be able to
correctly assemble the two frames together because it is not aware that 5
bytes of the 60 bytes frame are padding and don't belong to the reassembl=
ed
frame.

This can partly be avoided by splitting frames more equally. In this
example, the 675 and 674 bytes large fragment frames could both potential=
ly
reach its destination without being too large or too small.

Reported-by: Martin Weinelt <martin@darmstadt.freifunk.net>
Fixes: ee75ed88879a ("batman-adv: Fragment and send skbs larger than mtu"=
)
Signed-off-by: Sven Eckelmann <sven@narfation.org>
Acked-by: Linus L=C3=BCssing <linus.luessing@c0d3.blue>
Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
[ bp: 4.4 backported: adjust context, switch back to old return type +
  labels ]
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 net/batman-adv/fragmentation.c | 20 +++++++++++++-------
 1 file changed, 13 insertions(+), 7 deletions(-)

diff --git a/net/batman-adv/fragmentation.c b/net/batman-adv/fragmentatio=
n.c
index 9751b207b01f..3aceac21b283 100644
--- a/net/batman-adv/fragmentation.c
+++ b/net/batman-adv/fragmentation.c
@@ -396,7 +396,7 @@ bool batadv_frag_skb_fwd(struct sk_buff *skb,
  * batadv_frag_create - create a fragment from skb
  * @skb: skb to create fragment from
  * @frag_head: header to use in new fragment
- * @mtu: size of new fragment
+ * @fragment_size: size of new fragment
  *
  * Split the passed skb into two fragments: A new one with size matching=
 the
  * passed mtu and the old one with the rest. The new skb contains data f=
rom the
@@ -406,11 +406,11 @@ bool batadv_frag_skb_fwd(struct sk_buff *skb,
  */
 static struct sk_buff *batadv_frag_create(struct sk_buff *skb,
 					  struct batadv_frag_packet *frag_head,
-					  unsigned int mtu)
+					  unsigned int fragment_size)
 {
 	struct sk_buff *skb_fragment;
 	unsigned header_size =3D sizeof(*frag_head);
-	unsigned fragment_size =3D mtu - header_size;
+	unsigned mtu =3D fragment_size + header_size;
=20
 	skb_fragment =3D netdev_alloc_skb(NULL, mtu + ETH_HLEN);
 	if (!skb_fragment)
@@ -448,7 +448,7 @@ bool batadv_frag_send_packet(struct sk_buff *skb,
 	struct sk_buff *skb_fragment;
 	unsigned mtu =3D neigh_node->if_incoming->net_dev->mtu;
 	unsigned header_size =3D sizeof(frag_header);
-	unsigned max_fragment_size, max_packet_size;
+	unsigned max_fragment_size, num_fragments;
 	bool ret =3D false;
=20
 	/* To avoid merge and refragmentation at next-hops we never send
@@ -456,10 +456,15 @@ bool batadv_frag_send_packet(struct sk_buff *skb,
 	 */
 	mtu =3D min_t(unsigned, mtu, BATADV_FRAG_MAX_FRAG_SIZE);
 	max_fragment_size =3D mtu - header_size;
-	max_packet_size =3D max_fragment_size * BATADV_FRAG_MAX_FRAGMENTS;
+
+	if (skb->len =3D=3D 0 || max_fragment_size =3D=3D 0)
+		goto out_err;
+
+	num_fragments =3D (skb->len - 1) / max_fragment_size + 1;
+	max_fragment_size =3D (skb->len - 1) / num_fragments + 1;
=20
 	/* Don't even try to fragment, if we need more than 16 fragments */
-	if (skb->len > max_packet_size)
+	if (num_fragments > BATADV_FRAG_MAX_FRAGMENTS)
 		goto out_err;
=20
 	bat_priv =3D orig_node->bat_priv;
@@ -484,7 +489,8 @@ bool batadv_frag_send_packet(struct sk_buff *skb,
 		if (frag_header.no =3D=3D BATADV_FRAG_MAX_FRAGMENTS - 1)
 			goto out_err;
=20
-		skb_fragment =3D batadv_frag_create(skb, &frag_header, mtu);
+		skb_fragment =3D batadv_frag_create(skb, &frag_header,
+						  max_fragment_size);
 		if (!skb_fragment)
 			goto out_err;
=20
--=20
2.30.2
