Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 14C9045A2F4
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 23 Nov 2021 13:43:31 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 6F174844E3;
	Tue, 23 Nov 2021 13:43:24 +0100 (CET)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 623DC844BD
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 23 Nov 2021 13:43:19 +0100 (CET)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 8F53D60F6B;
	Tue, 23 Nov 2021 12:43:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1637671398;
	bh=Q89r5lezy4KAUZVVOl69jDvDqk+pnfL/4azIISaX/ZI=;
	h=Subject:To:Cc:From:Date:In-Reply-To:From;
	b=sc7HjY7r6f+5AsCUWYhoAKuHirMT1TavujMzA8iKrQh4ogSTx6AZfLSDm1t5KWFY4
	 eMfVms2z5DjGv2X8BuE1jKY7R4jzgi7qd42vFWACBIek4HzYWv+uYklA0CDtmBQ+V3
	 /FxAdrQjHImNlYEupNpElayB6vIyAqV2Rl/ZVKak=
Subject: Patch "batman-adv: Keep fragments equally sized" has been added to the 4.4-stable tree
To: b.a.t.m.a.n@lists.open-mesh.org,gregkh@linuxfoundation.org,linus.luessing@c0d3.blue,martin@darmstadt.freifunk.net,sven@narfation.org,sw@simonwunderlich.de
From: <gregkh@linuxfoundation.org>
Date: Tue, 23 Nov 2021 13:42:44 +0100
In-Reply-To: <20211120123939.260723-2-sven@narfation.org>
Message-ID: <163767136412811@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1
X-stable: commit
X-Patchwork-Hint: ignore 
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1637671399; a=rsa-sha256;
	cv=none;
	b=Ry4HmRSQC/5wsNKBt0HWnoknuVukeO0+ktr4weBMoSZolOjLj680kAwCtn2Zh/aKRmdHwj
	kBMKXk3xdoy6DmRylcKS1fOtL4CHKIlE2JiNsBqMsKs6F0pa9PvUFSaAnf8v9LYkt5CHNk
	yFgPO5357JNOHOGuPGUnnRQgaX1px1Q=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1637671399;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:dkim-signature;
	bh=ZSq0J0se5Kfl1gce2SNSdlhZINFwqafZCr44LMpHrQk=;
	b=a8NX+iLpcmJF5LHFThWxUz6BQUKXtDZtmsruW19Skwuen3BRc+XAmLvDVf4MWfgfFU59qm
	bGTvhKvLlZh26/UEHWNGkwxoJd0aelk/sic8D/FGCLW0qLCpugFKbRJmbPzOGH8Wvbchm9
	4BsIVy79wKXwrN539Pt/p3sfkMWaOh8=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=linuxfoundation.org header.s=korg header.b=sc7HjY7r;
	spf=pass (diktynna.open-mesh.org: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
	dmarc=pass (policy=none) header.from=linuxfoundation.org
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: 3QUCSCQR4F6QA5XWKRK6ROWI24ER6FOX
X-Message-ID-Hash: 3QUCSCQR4F6QA5XWKRK6ROWI24ER6FOX
X-MailFrom: gregkh@linuxfoundation.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
CC: stable-commits@vger.kernel.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/3QUCSCQR4F6QA5XWKRK6ROWI24ER6FOX/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>


This is a note to let you know that I've just added the patch titled

    batman-adv: Keep fragments equally sized

to the 4.4-stable tree which can be found at:
    http://www.kernel.org/git/?p=3Dlinux/kernel/git/stable/stable-queue.g=
it;a=3Dsummary

The filename of the patch is:
     batman-adv-keep-fragments-equally-sized.patch
and it can be found in the queue-4.4 subdirectory.

If you, or anyone else, feels it should not be added to the stable tree,
please let <stable@vger.kernel.org> know about it.


From foo@baz Tue Nov 23 01:39:02 PM CET 2021
From: Sven Eckelmann <sven@narfation.org>
Date: Sat, 20 Nov 2021 13:39:29 +0100
Subject: batman-adv: Keep fragments equally sized
To: stable@vger.kernel.org
Cc: b.a.t.m.a.n@lists.open-mesh.org, "Sven Eckelmann" <sven@narfation.org=
>, "Martin Weinelt" <martin@darmstadt.freifunk.net>, "Linus L=FCssing" <l=
inus.luessing@c0d3.blue>, "Simon Wunderlich" <sw@simonwunderlich.de>
Message-ID: <20211120123939.260723-2-sven@narfation.org>

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
[ bp: 4.4 backported: adjust context, switch back to old return type +
  labels ]
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
 	unsigned header_size =3D sizeof(*frag_head);
-	unsigned fragment_size =3D mtu - header_size;
+	unsigned mtu =3D fragment_size + header_size;
=20
 	skb_fragment =3D netdev_alloc_skb(NULL, mtu + ETH_HLEN);
 	if (!skb_fragment)
@@ -448,7 +448,7 @@ bool batadv_frag_send_packet(struct sk_b
 	struct sk_buff *skb_fragment;
 	unsigned mtu =3D neigh_node->if_incoming->net_dev->mtu;
 	unsigned header_size =3D sizeof(frag_header);
-	unsigned max_fragment_size, max_packet_size;
+	unsigned max_fragment_size, num_fragments;
 	bool ret =3D false;
=20
 	/* To avoid merge and refragmentation at next-hops we never send
@@ -456,10 +456,15 @@ bool batadv_frag_send_packet(struct sk_b
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
@@ -484,7 +489,8 @@ bool batadv_frag_send_packet(struct sk_b
 		if (frag_header.no =3D=3D BATADV_FRAG_MAX_FRAGMENTS - 1)
 			goto out_err;
=20
-		skb_fragment =3D batadv_frag_create(skb, &frag_header, mtu);
+		skb_fragment =3D batadv_frag_create(skb, &frag_header,
+						  max_fragment_size);
 		if (!skb_fragment)
 			goto out_err;
=20


Patches currently in stable-queue which might be from sven@narfation.org =
are

queue-4.4/batman-adv-consider-fragmentation-for-needed_headroom.patch
queue-4.4/ath9k-fix-potential-interrupt-storm-on-queue-reset.patch
queue-4.4/batman-adv-set-.owner-to-this_module.patch
queue-4.4/batman-adv-mcast-fix-duplicate-mcast-packets-from-bla-backbone-=
to-mesh.patch
queue-4.4/batman-adv-fix-multicast-tt-issues-with-bogus-roam-flags.patch
queue-4.4/batman-adv-mcast-fix-duplicate-mcast-packets-in-bla-backbone-fr=
om-lan.patch
queue-4.4/batman-adv-reserve-needed_-room-for-fragments.patch
queue-4.4/net-batman-adv-fix-error-handling.patch
queue-4.4/batman-adv-keep-fragments-equally-sized.patch
queue-4.4/batman-adv-avoid-warn_on-timing-related-checks.patch
queue-4.4/batman-adv-prevent-duplicated-softif_vlan-entry.patch
queue-4.4/batman-adv-don-t-always-reallocate-the-fragmentation-skb-head.p=
atch
queue-4.4/batman-adv-mcast-fix-duplicate-mcast-packets-in-bla-backbone-fr=
om-mesh.patch
