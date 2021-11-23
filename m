Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FC0645A2B1
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 23 Nov 2021 13:33:56 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 757BD83EE8;
	Tue, 23 Nov 2021 13:33:55 +0100 (CET)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 7B2CB83EA7
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 23 Nov 2021 13:33:52 +0100 (CET)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 43F8060F26;
	Tue, 23 Nov 2021 12:33:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1637670830;
	bh=XmAPLoO24cI+x7GlZXaFPxbHSYhyUQatNLFtd/JDCDg=;
	h=Subject:To:Cc:From:Date:In-Reply-To:From;
	b=ufKw0Xi6aohloOlpoxGRnIvnpobA3K8ueX/Tv8jC0bOLt238GF9csWpJqbdPNMXzz
	 ASMxMvomF5LGejK7VvQl8ht9RgkbxmWsetu2QiryZiIPtTB/YYlky1rJZ8r9+D8jmY
	 wypyxA5dookcICg8xYl6LSOHJNEYfUNqkz1oBxIg=
Subject: Patch "batman-adv: Don't always reallocate the fragmentation skb head" has been added to the 5.4-stable tree
To: b.a.t.m.a.n@lists.open-mesh.org,gregkh@linuxfoundation.org,sven@narfation.org,sw@simonwunderlich.de
From: <gregkh@linuxfoundation.org>
Date: Tue, 23 Nov 2021 13:33:40 +0100
In-Reply-To: <20211120124053.261156-4-sven@narfation.org>
Message-ID: <1637670820231128@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=ANSI_X3.4-1968
X-stable: commit
X-Patchwork-Hint: ignore 
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1637670832; a=rsa-sha256;
	cv=none;
	b=Lsu0pek+7rXLAqsJpg5Zujv8xg8BQ8//km3SAcuouewrn+hSXWkgjRbtWDs7a9c+yi+3ej
	y0Ey7Q66R7NedUSZsS8Su0M2IIzoYvsSGd3zHO4S/ue8tvrnS7KcG7WA7/aO4R/kEpocVS
	hmRa/Mt7yC012y8J9ctxGssQcZYolrE=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1637670832;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:dkim-signature;
	bh=X3furo+QtK6rmbrPncQQH68kZseSlWY+vjRuYtSMD/k=;
	b=ta2WOJKFrm/1Bvp1YIiFBDpoSE+ulQlhJF94+s/hq7WG9f3Kf5ULcudFllcNO7ZZeI70Tb
	uTx/W62khyBa5hTCpUlJkPQHAMe7KJu7VihZ2hfSW/xXpSoOuf4Rp1LTKouLez5JMKNXB6
	uXb3vuHkfmvEc0UHKA0cGFPOWyxSQZY=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=linuxfoundation.org header.s=korg header.b=ufKw0Xi6;
	spf=pass (diktynna.open-mesh.org: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
	dmarc=pass (policy=none) header.from=linuxfoundation.org
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: XWOCR7BPL4UJFM4U55HHQJDTEPI76Y56
X-Message-ID-Hash: XWOCR7BPL4UJFM4U55HHQJDTEPI76Y56
X-MailFrom: gregkh@linuxfoundation.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
CC: stable-commits@vger.kernel.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/XWOCR7BPL4UJFM4U55HHQJDTEPI76Y56/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>


This is a note to let you know that I've just added the patch titled

    batman-adv: Don't always reallocate the fragmentation skb head

to the 5.4-stable tree which can be found at:
    http://www.kernel.org/git/?p=3Dlinux/kernel/git/stable/stable-queue.g=
it;a=3Dsummary

The filename of the patch is:
     batman-adv-don-t-always-reallocate-the-fragmentation-skb-head.patch
and it can be found in the queue-5.4 subdirectory.

If you, or anyone else, feels it should not be added to the stable tree,
please let <stable@vger.kernel.org> know about it.


From foo@baz Tue Nov 23 01:32:30 PM CET 2021
From: Sven Eckelmann <sven@narfation.org>
Date: Sat, 20 Nov 2021 13:40:53 +0100
Subject: batman-adv: Don't always reallocate the fragmentation skb head
To: stable@vger.kernel.org
Cc: b.a.t.m.a.n@lists.open-mesh.org, Sven Eckelmann <sven@narfation.org>,=
 Simon Wunderlich <sw@simonwunderlich.de>
Message-ID: <20211120124053.261156-4-sven@narfation.org>

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
@@ -527,13 +527,14 @@ int batadv_frag_send_packet(struct sk_bu
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

queue-5.4/batman-adv-consider-fragmentation-for-needed_headroom.patch
queue-5.4/batman-adv-reserve-needed_-room-for-fragments.patch
queue-5.4/batman-adv-don-t-always-reallocate-the-fragmentation-skb-head.p=
atch
