Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id A12EF45A2B8
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 23 Nov 2021 13:35:23 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 7FBF483EFA;
	Tue, 23 Nov 2021 13:35:21 +0100 (CET)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 2F4EB83F18
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 23 Nov 2021 13:35:18 +0100 (CET)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 7074A61027;
	Tue, 23 Nov 2021 12:35:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1637670916;
	bh=UnMVWIKjZ2GCOJqpvw1BfirWjN7hZxGYI7muIsh+xmk=;
	h=Subject:To:Cc:From:Date:In-Reply-To:From;
	b=j8bu5L8ZNDaN8v8CwNb2m4u47DQPpN7D74ZBow5oLRCL8YxMzJAJ/LttRnETypsaf
	 iIBzn745j96YAAyykc7PK69qmQvlbP0vOCvVyWrDO/EOTvc8tWWuQZS43dvhtTWAWs
	 Jpxw6lzEWpbEZyDrMwrjJ5+hwl9ZEdnMI+cP5UAU=
Subject: Patch "batman-adv: Reserve needed_*room for fragments" has been added to the 4.19-stable tree
To: b.a.t.m.a.n@lists.open-mesh.org,gregkh@linuxfoundation.org,sven@narfation.org,sw@simonwunderlich.de
From: <gregkh@linuxfoundation.org>
Date: Tue, 23 Nov 2021 13:35:01 +0100
In-Reply-To: <20211120124044.261086-4-sven@narfation.org>
Message-ID: <1637670901241132@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=ANSI_X3.4-1968
X-stable: commit
X-Patchwork-Hint: ignore 
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1637670918; a=rsa-sha256;
	cv=none;
	b=eLr5sVyk9FSNGpGlyYnqbQkpYwGgpR4PyjapX/Z4kengpgp4ALiw5KRsoPSWLrTPnzi13n
	TCJULlh6yoMe4orpXblBkt/7lcJ1SlLof52zO8p88h97Bz9AJKzofpYW2ZNtFzCNhIbthQ
	LwcfZHtGDrSCoVlimxNL0UjalFLs0vc=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1637670918;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:dkim-signature;
	bh=SlFy4xuWAuBfK7b7ucOnt6sTcyzXPxD7w540d5M3bek=;
	b=jCEc1E8MBi9T3pv+Fhs9DndDulpcQzTdnXPznmX6K1tCPuCRBxV0HZjGvJzreRvUak2Aj/
	5t2i5BTMJt8XRx+0FubixDHHqybmeg8zm5/8P53Q+uVzaqiagGtYXstkGaYIBqV8oRkq53
	LQK4gEF8C+1meIFOSxZQs9KEXvv6090=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=linuxfoundation.org header.s=korg header.b=j8bu5L8Z;
	spf=pass (diktynna.open-mesh.org: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
	dmarc=pass (policy=none) header.from=linuxfoundation.org
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: KIVOWTWSADKKTYO7P7C4NTJZBLMPRGFL
X-Message-ID-Hash: KIVOWTWSADKKTYO7P7C4NTJZBLMPRGFL
X-MailFrom: gregkh@linuxfoundation.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
CC: stable-commits@vger.kernel.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/KIVOWTWSADKKTYO7P7C4NTJZBLMPRGFL/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>


This is a note to let you know that I've just added the patch titled

    batman-adv: Reserve needed_*room for fragments

to the 4.19-stable tree which can be found at:
    http://www.kernel.org/git/?p=3Dlinux/kernel/git/stable/stable-queue.g=
it;a=3Dsummary

The filename of the patch is:
     batman-adv-reserve-needed_-room-for-fragments.patch
and it can be found in the queue-4.19 subdirectory.

If you, or anyone else, feels it should not be added to the stable tree,
please let <stable@vger.kernel.org> know about it.


From foo@baz Tue Nov 23 01:33:57 PM CET 2021
From: Sven Eckelmann <sven@narfation.org>
Date: Sat, 20 Nov 2021 13:40:43 +0100
Subject: batman-adv: Reserve needed_*room for fragments
To: stable@vger.kernel.org
Cc: b.a.t.m.a.n@lists.open-mesh.org, Sven Eckelmann <sven@narfation.org>,=
 Simon Wunderlich <sw@simonwunderlich.de>
Message-ID: <20211120124044.261086-4-sven@narfation.org>

From: Sven Eckelmann <sven@narfation.org>

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
[ bp: 4.19 backported: adjust context. ]
Signed-off-by: Sven Eckelmann <sven@narfation.org>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 net/batman-adv/fragmentation.c |   15 ++++++++++-----
 1 file changed, 10 insertions(+), 5 deletions(-)

--- a/net/batman-adv/fragmentation.c
+++ b/net/batman-adv/fragmentation.c
@@ -403,6 +403,7 @@ out:
=20
 /**
  * batadv_frag_create() - create a fragment from skb
+ * @net_dev: outgoing device for fragment
  * @skb: skb to create fragment from
  * @frag_head: header to use in new fragment
  * @fragment_size: size of new fragment
@@ -413,22 +414,25 @@ out:
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
@@ -451,11 +455,12 @@ int batadv_frag_send_packet(struct sk_bu
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
@@ -515,7 +520,7 @@ int batadv_frag_send_packet(struct sk_bu
 			goto put_primary_if;
 		}
=20
-		skb_fragment =3D batadv_frag_create(skb, &frag_header,
+		skb_fragment =3D batadv_frag_create(net_dev, skb, &frag_header,
 						  max_fragment_size);
 		if (!skb_fragment) {
 			ret =3D -ENOMEM;


Patches currently in stable-queue which might be from sven@narfation.org =
are

queue-4.19/batman-adv-consider-fragmentation-for-needed_headroom.patch
queue-4.19/ath9k-fix-potential-interrupt-storm-on-queue-reset.patch
queue-4.19/ath10k-fix-max-antenna-gain-unit.patch
queue-4.19/batman-adv-mcast-fix-duplicate-mcast-packets-in-bla-backbone-f=
rom-lan.patch
queue-4.19/batman-adv-reserve-needed_-room-for-fragments.patch
queue-4.19/batman-adv-don-t-always-reallocate-the-fragmentation-skb-head.=
patch
