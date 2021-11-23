Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 035C045A2EA
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 23 Nov 2021 13:42:59 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 9277F83EF3;
	Tue, 23 Nov 2021 13:42:58 +0100 (CET)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id A270484478
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 23 Nov 2021 13:42:55 +0100 (CET)
Received: by mail.kernel.org (Postfix) with ESMTPSA id C926660F6B;
	Tue, 23 Nov 2021 12:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1637671374;
	bh=fNmW5mMBeLXr3Awq1QsPqN4TarMMEzzbdmOm0ncKjmU=;
	h=Subject:To:Cc:From:Date:In-Reply-To:From;
	b=q/gvtqWlEUSVqudP/8GC86x6z5ZtU0bfeSzKHRBm0cn8ca0ClMs/tNb008mNUYbfa
	 ST/KmzDkEUHKQO6ac0q7C6Wu6Q2KIheI/rhMu7fGp8ahJxjkk6U10pangyv7don3EO
	 6vSfXjeEE2JDLE4DocVL3Ip53XHPtPiPsKXovpDI=
Subject: Patch "batman-adv: Consider fragmentation for needed_headroom" has been added to the 4.4-stable tree
To: b.a.t.m.a.n@lists.open-mesh.org,gregkh@linuxfoundation.org,linus.luessing@c0d3.blue,sven@narfation.org,sw@simonwunderlich.de
From: <gregkh@linuxfoundation.org>
Date: Tue, 23 Nov 2021 13:42:43 +0100
In-Reply-To: <20211120123939.260723-9-sven@narfation.org>
Message-ID: <163767136316261@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1
X-stable: commit
X-Patchwork-Hint: ignore 
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1637671375; a=rsa-sha256;
	cv=none;
	b=XGFoTHwBRRUerX94ly7uMYYBSxyIsFw8gFY0ze6x0Gv7HZioDPaoT+fFrFYLmEp12jAQ9L
	KvxdoN0pqoE2BcWZvxjNXV0FHVEGeqI1ZywYED2LNqf4pRXBiajq8RbTl31NeowSJD0pVo
	D9BMcYjJtWNhUFbgkyBa6v+OmnKFJC0=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1637671375;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:dkim-signature;
	bh=yzOzqX7aw0VZMjJBUADiZmEM33BdTfK9oNvcBq+ennI=;
	b=EScnXjz7Ay7qDzUDb5OVF41nsuB1mGJM45EA8jFS7cllibsWAgRMi6fzXoagZARDdjdtYk
	4l06i8K1OIK48a/lh75sWs63nSwLgdSSK8vWu3Jec1niFHdBCUkPH1sSAjm/XDjq+ti+Rm
	hvOz88NXkGgDJmUnxkppGAgFY9cPMmM=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=linuxfoundation.org header.s=korg header.b="q/gvtqWl";
	spf=pass (diktynna.open-mesh.org: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
	dmarc=pass (policy=none) header.from=linuxfoundation.org
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: 5ZZWT67F6W7ULURKZDQKI7PHYOPIQAHY
X-Message-ID-Hash: 5ZZWT67F6W7ULURKZDQKI7PHYOPIQAHY
X-MailFrom: gregkh@linuxfoundation.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
CC: stable-commits@vger.kernel.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/5ZZWT67F6W7ULURKZDQKI7PHYOPIQAHY/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>


This is a note to let you know that I've just added the patch titled

    batman-adv: Consider fragmentation for needed_headroom

to the 4.4-stable tree which can be found at:
    http://www.kernel.org/git/?p=3Dlinux/kernel/git/stable/stable-queue.g=
it;a=3Dsummary

The filename of the patch is:
     batman-adv-consider-fragmentation-for-needed_headroom.patch
and it can be found in the queue-4.4 subdirectory.

If you, or anyone else, feels it should not be added to the stable tree,
please let <stable@vger.kernel.org> know about it.


From foo@baz Tue Nov 23 01:39:02 PM CET 2021
From: Sven Eckelmann <sven@narfation.org>
Date: Sat, 20 Nov 2021 13:39:36 +0100
Subject: batman-adv: Consider fragmentation for needed_headroom
To: stable@vger.kernel.org
Cc: b.a.t.m.a.n@lists.open-mesh.org, "Sven Eckelmann" <sven@narfation.org=
>, "Linus L=FCssing" <linus.luessing@c0d3.blue>, "Simon Wunderlich" <sw@s=
imonwunderlich.de>
Message-ID: <20211120123939.260723-9-sven@narfation.org>

From: Sven Eckelmann <sven@narfation.org>

commit 4ca23e2c2074465bff55ea14221175fecdf63c5f upstream.

If a batman-adv packets has to be fragmented, then the original batman-ad=
v
packet header is not stripped away. Instead, only a new header is added i=
n
front of the packet after it was split.

This size must be considered to avoid cost intensive reallocations during
the transmission through the various device layers.

Fixes: 7bca68c7844b ("batman-adv: Add lower layer needed_(head|tail)room =
to own ones")
Reported-by: Linus L=FCssing <linus.luessing@c0d3.blue>
Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
Signed-off-by: Sven Eckelmann <sven@narfation.org>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 net/batman-adv/hard-interface.c |    3 +++
 1 file changed, 3 insertions(+)

--- a/net/batman-adv/hard-interface.c
+++ b/net/batman-adv/hard-interface.c
@@ -316,6 +316,9 @@ static void batadv_hardif_recalc_extra_s
 	needed_headroom =3D lower_headroom + (lower_header_len - ETH_HLEN);
 	needed_headroom +=3D batadv_max_header_len();
=20
+	/* fragmentation headers don't strip the unicast/... header */
+	needed_headroom +=3D sizeof(struct batadv_frag_packet);
+
 	soft_iface->needed_headroom =3D needed_headroom;
 	soft_iface->needed_tailroom =3D lower_tailroom;
 }


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
