Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FE5245A2D3
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 23 Nov 2021 13:39:01 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id C041884497;
	Tue, 23 Nov 2021 13:38:59 +0100 (CET)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 3540D84481
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 23 Nov 2021 13:38:56 +0100 (CET)
Received: by mail.kernel.org (Postfix) with ESMTPSA id F079860E95;
	Tue, 23 Nov 2021 12:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1637671135;
	bh=8nHAK1vQBoTX9G3Qwk5wYdZjq9vztjeK7g8WhSYzd/A=;
	h=Subject:To:Cc:From:Date:In-Reply-To:From;
	b=BjNGv8c7SCiE4YxitCyZLh8OYxH0r31Kwsewq5BFIizBcYJrU/9M8jhb/aPfL/1Yn
	 kI/ca6dv1ZQsO+p9MCir3Bxa3BTJj7gRjs8f1gP8/CjDRAKA/iYn7MFHVgdataIvbT
	 1rKpNqP6WbkVz7P1nouiWUDPLX1Js3kyfcDbAE7A=
Subject: Patch "batman-adv: Don't always reallocate the fragmentation skb head" has been added to the 4.14-stable tree
To: b.a.t.m.a.n@lists.open-mesh.org,gregkh@linuxfoundation.org,sven@narfation.org,sw@simonwunderlich.de
From: <gregkh@linuxfoundation.org>
Date: Tue, 23 Nov 2021 13:38:33 +0100
In-Reply-To: <20211120124018.260907-6-sven@narfation.org>
Message-ID: <16376711132197@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=ANSI_X3.4-1968
X-stable: commit
X-Patchwork-Hint: ignore 
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1637671136; a=rsa-sha256;
	cv=none;
	b=DzTJx9Q8GHSDrO6qFFjrd+61MdOlk8FgCRjEor1OOVCD6i/IqNW6tuaILLFO3109sJvPDb
	xOhgdTPzwfxR6B0H1CJJz3qeEycWeDyk3fO1r4719tuBxeKg8Nn4Y1rXZRhbR/iYm0dlM3
	mcg7eebeQFvzH8Ixe9VVxuw/j+74fCg=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1637671136;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:dkim-signature;
	bh=CbDzKhbkkVAUx4wOGYdtG8G6kQZfCwY361DPGlA5wv8=;
	b=QbeVRX/XWOYfiYsy5K/5nEt5NplzvjYq9rsTO57yhPzIGnrpCjr9kU60oGkd4NhMTHIOHH
	+r4951Z8HwDlMnVO99OpfrxZG3I/XZlp/y8B9noTPn4cu5YHpbWjXSqfADaNcLvfFR0fsJ
	q900A/tsuQ3WigbCHKakxA/tJdY8N/4=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=linuxfoundation.org header.s=korg header.b=BjNGv8c7;
	spf=pass (diktynna.open-mesh.org: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
	dmarc=pass (policy=none) header.from=linuxfoundation.org
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: V2Q42I6O36V6JTFZOJIVDYQLIVGMVHIC
X-Message-ID-Hash: V2Q42I6O36V6JTFZOJIVDYQLIVGMVHIC
X-MailFrom: gregkh@linuxfoundation.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
CC: stable-commits@vger.kernel.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/V2Q42I6O36V6JTFZOJIVDYQLIVGMVHIC/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>


This is a note to let you know that I've just added the patch titled

    batman-adv: Don't always reallocate the fragmentation skb head

to the 4.14-stable tree which can be found at:
    http://www.kernel.org/git/?p=3Dlinux/kernel/git/stable/stable-queue.g=
it;a=3Dsummary

The filename of the patch is:
     batman-adv-don-t-always-reallocate-the-fragmentation-skb-head.patch
and it can be found in the queue-4.14 subdirectory.

If you, or anyone else, feels it should not be added to the stable tree,
please let <stable@vger.kernel.org> know about it.


From foo@baz Tue Nov 23 01:35:28 PM CET 2021
From: Sven Eckelmann <sven@narfation.org>
Date: Sat, 20 Nov 2021 13:40:18 +0100
Subject: batman-adv: Don't always reallocate the fragmentation skb head
To: stable@vger.kernel.org
Cc: b.a.t.m.a.n@lists.open-mesh.org, Sven Eckelmann <sven@narfation.org>,=
 Simon Wunderlich <sw@simonwunderlich.de>
Message-ID: <20211120124018.260907-6-sven@narfation.org>

From: Sven Eckelmann <sven@narfation.org>

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
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 net/batman-adv/fragmentation.c |   11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

--- a/net/batman-adv/fragmentation.c
+++ b/net/batman-adv/fragmentation.c
@@ -538,13 +538,14 @@ int batadv_frag_send_packet(struct sk_bu
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


Patches currently in stable-queue which might be from sven@narfation.org =
are

queue-4.14/batman-adv-consider-fragmentation-for-needed_headroom.patch
queue-4.14/ath9k-fix-potential-interrupt-storm-on-queue-reset.patch
queue-4.14/batman-adv-mcast-fix-duplicate-mcast-packets-from-bla-backbone=
-to-mesh.patch
queue-4.14/ath10k-fix-max-antenna-gain-unit.patch
queue-4.14/batman-adv-mcast-fix-duplicate-mcast-packets-in-bla-backbone-f=
rom-lan.patch
queue-4.14/batman-adv-reserve-needed_-room-for-fragments.patch
queue-4.14/batman-adv-don-t-always-reallocate-the-fragmentation-skb-head.=
patch
