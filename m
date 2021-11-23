Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C53045A2F9
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 23 Nov 2021 13:43:42 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 76373844F6;
	Tue, 23 Nov 2021 13:43:36 +0100 (CET)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 17E28844DF
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 23 Nov 2021 13:43:33 +0100 (CET)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 327CE60F6B;
	Tue, 23 Nov 2021 12:43:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1637671411;
	bh=O6r78RqarYqAim8bLRfE2Ywd9CWRficUypfBbZZztVI=;
	h=Subject:To:Cc:From:Date:In-Reply-To:From;
	b=fOThggrOwPU3B0UbBkJcRZ0ldDTYRF6CFDOAR2O0nnDbwvN2L+lISjz2dFOwuBqyp
	 QkPVBEVJ8C7xB6r6gAN3jRalZza3flpijdUcgcFwnPnvCresGb1PeVNbTQZD9T2JW7
	 Psy2HvkYW3DYYCjPAtFF+qSB7av4SqVzdUoObzYY=
Subject: Patch "batman-adv: Keep fragments equally sized" has been added to the 4.9-stable tree
To: b.a.t.m.a.n@lists.open-mesh.org,gregkh@linuxfoundation.org,linus.luessing@c0d3.blue,martin@darmstadt.freifunk.net,sven@narfation.org,sw@simonwunderlich.de
From: <gregkh@linuxfoundation.org>
Date: Tue, 23 Nov 2021 13:43:01 +0100
In-Reply-To: <20211120123958.260826-2-sven@narfation.org>
Message-ID: <1637671381212139@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1
X-stable: commit
X-Patchwork-Hint: ignore 
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1637671413; a=rsa-sha256;
	cv=none;
	b=0H4OGZCvHfmLRhn+zOTVQx0Utsd0lKt+OcntmhJjGPQ+Z7dpKJtFGU91PQjCfZVDSwyVha
	TMNfzqtaqWEl29uGIHipH9i1uGXNEGRrdJSmtMgedpZ5zZCzyzjSNf/WdB8T9w6ZGI2zRF
	vYSavey4XnTjxRbQosJ09KarpnLTNzQ=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1637671413;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:dkim-signature;
	bh=CSpdz7YXZQ8pzLFW55E2e6fQIKvq1nkBK6JBITE3V0U=;
	b=OU8RRB/iihJ5gK4wQZD1hD1AP0l1eX6RpsyAzxFm8lMkMWbrtXuW1boJou8zrTgFNV+2Ia
	BXDZ/n5sl3qgQsWgyanN1t6qMuZOBIDQVyXGCGYKrzyb1InRAblX+pcZmyyBE4BhlIASFX
	ASoG6I8J0wmDF5nf+iIcTTnwvAjcNEQ=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=linuxfoundation.org header.s=korg header.b=fOThggrO;
	spf=pass (diktynna.open-mesh.org: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
	dmarc=pass (policy=none) header.from=linuxfoundation.org
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: 6FBXKBZKASQPPS3NW6Q56Y6YCG523EWQ
X-Message-ID-Hash: 6FBXKBZKASQPPS3NW6Q56Y6YCG523EWQ
X-MailFrom: gregkh@linuxfoundation.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
CC: stable-commits@vger.kernel.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/6FBXKBZKASQPPS3NW6Q56Y6YCG523EWQ/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>


This is a note to let you know that I've just added the patch titled

    batman-adv: Keep fragments equally sized

to the 4.9-stable tree which can be found at:
    http://www.kernel.org/git/?p=3Dlinux/kernel/git/stable/stable-queue.g=
it;a=3Dsummary

The filename of the patch is:
     batman-adv-keep-fragments-equally-sized.patch
and it can be found in the queue-4.9 subdirectory.

If you, or anyone else, feels it should not be added to the stable tree,
please let <stable@vger.kernel.org> know about it.


From foo@baz Tue Nov 23 01:37:10 PM CET 2021
From: Sven Eckelmann <sven@narfation.org>
Date: Sat, 20 Nov 2021 13:39:52 +0100
Subject: batman-adv: Keep fragments equally sized
To: stable@vger.kernel.org
Cc: b.a.t.m.a.n@lists.open-mesh.org, "Sven Eckelmann" <sven@narfation.org=
>, "Martin Weinelt" <martin@darmstadt.freifunk.net>, "Linus L=FCssing" <l=
inus.luessing@c0d3.blue>, "Simon Wunderlich" <sw@simonwunderlich.de>
Message-ID: <20211120123958.260826-2-sven@narfation.org>

From: Sven Eckelmann <sven@narfation.org>

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
Acked-by: Linus L=FCssing <linus.luessing@c0d3.blue>
Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
[ bp: 4.9 backported: adjust context. ]
Signed-off-by: Sven Eckelmann <sven@narfation.org>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 net/batman-adv/fragmentation.c |   20 +++++++++++++-------
 1 file changed, 13 insertions(+), 7 deletions(-)

--- a/net/batman-adv/fragmentation.c
+++ b/net/batman-adv/fragmentation.c
@@ -396,7 +396,7 @@ out:
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
@@ -406,11 +406,11 @@ out:
  */
 static struct sk_buff *batadv_frag_create(struct sk_buff *skb,
 					  struct batadv_frag_packet *frag_head,
-					  unsigned int mtu)
+					  unsigned int fragment_size)
 {
 	struct sk_buff *skb_fragment;
 	unsigned int header_size =3D sizeof(*frag_head);
-	unsigned int fragment_size =3D mtu - header_size;
+	unsigned int mtu =3D fragment_size + header_size;
=20
 	skb_fragment =3D netdev_alloc_skb(NULL, mtu + ETH_HLEN);
 	if (!skb_fragment)
@@ -449,7 +449,7 @@ int batadv_frag_send_packet(struct sk_bu
 	struct sk_buff *skb_fragment;
 	unsigned int mtu =3D neigh_node->if_incoming->net_dev->mtu;
 	unsigned int header_size =3D sizeof(frag_header);
-	unsigned int max_fragment_size, max_packet_size;
+	unsigned int max_fragment_size, num_fragments;
 	int ret =3D -1;
=20
 	/* To avoid merge and refragmentation at next-hops we never send
@@ -457,10 +457,15 @@ int batadv_frag_send_packet(struct sk_bu
 	 */
 	mtu =3D min_t(unsigned int, mtu, BATADV_FRAG_MAX_FRAG_SIZE);
 	max_fragment_size =3D mtu - header_size;
-	max_packet_size =3D max_fragment_size * BATADV_FRAG_MAX_FRAGMENTS;
+
+	if (skb->len =3D=3D 0 || max_fragment_size =3D=3D 0)
+		return -EINVAL;
+
+	num_fragments =3D (skb->len - 1) / max_fragment_size + 1;
+	max_fragment_size =3D (skb->len - 1) / num_fragments + 1;
=20
 	/* Don't even try to fragment, if we need more than 16 fragments */
-	if (skb->len > max_packet_size)
+	if (num_fragments > BATADV_FRAG_MAX_FRAGMENTS)
 		goto out;
=20
 	bat_priv =3D orig_node->bat_priv;
@@ -498,7 +503,8 @@ int batadv_frag_send_packet(struct sk_bu
 			goto out;
 		}
=20
-		skb_fragment =3D batadv_frag_create(skb, &frag_header, mtu);
+		skb_fragment =3D batadv_frag_create(skb, &frag_header,
+						  max_fragment_size);
 		if (!skb_fragment)
 			goto out;
=20


Patches currently in stable-queue which might be from sven@narfation.org =
are

queue-4.9/batman-adv-consider-fragmentation-for-needed_headroom.patch
queue-4.9/ath9k-fix-potential-interrupt-storm-on-queue-reset.patch
queue-4.9/batman-adv-mcast-fix-duplicate-mcast-packets-from-bla-backbone-=
to-mesh.patch
queue-4.9/ath10k-fix-max-antenna-gain-unit.patch
queue-4.9/batman-adv-mcast-fix-duplicate-mcast-packets-in-bla-backbone-fr=
om-lan.patch
queue-4.9/batman-adv-reserve-needed_-room-for-fragments.patch
queue-4.9/batman-adv-fix-own-ogm-check-in-aggregated-ogms.patch
queue-4.9/batman-adv-keep-fragments-equally-sized.patch
queue-4.9/batman-adv-don-t-always-reallocate-the-fragmentation-skb-head.p=
atch
