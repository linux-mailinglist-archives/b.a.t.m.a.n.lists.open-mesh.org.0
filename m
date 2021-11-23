Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B79345A2EC
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 23 Nov 2021 13:43:06 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 95644844B1;
	Tue, 23 Nov 2021 13:43:04 +0100 (CET)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 2FA85844A1
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 23 Nov 2021 13:43:00 +0100 (CET)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 5046F60F50;
	Tue, 23 Nov 2021 12:42:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1637671378;
	bh=QS4XkyzLdw2ANQs487lKw2ZKEGs4ARfqKJr92DrTzA4=;
	h=Subject:To:Cc:From:Date:In-Reply-To:From;
	b=zEs73AqPrPP4itoliKwGWSL61Fbg4eXtbRKuzoFVRI+Us3Os1WK3NfV/M6gHJIgFb
	 xPWsHQ0BpoEjiYYmYH82al2a77/HPKKl4m8Cn/7TEGbI6pi+w14uTdt0jYcfWDwDv7
	 enJaUJILQXBedFbTZ15IYU9eGXVpXm7nMYkAhjbw=
Subject: Patch "batman-adv: Fix multicast TT issues with bogus ROAM flags" has been added to the 4.4-stable tree
To: b.a.t.m.a.n@lists.open-mesh.org,gregkh@linuxfoundation.org,linus.luessing@c0d3.blue,me@irrelefant.net,sven@narfation.org,sw@simonwunderlich.de
From: <gregkh@linuxfoundation.org>
Date: Tue, 23 Nov 2021 13:42:43 +0100
In-Reply-To: <20211120123939.260723-3-sven@narfation.org>
Message-ID: <163767136325592@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1
X-stable: commit
X-Patchwork-Hint: ignore 
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1637671380; a=rsa-sha256;
	cv=none;
	b=w7EDOnCkm8EuD1mjO1Pm7fE4218M0YhNVXXIUU5+wYmVhuxp8GdBtDMb0Mmwky+lu7j+8H
	nWmqaliCMQEDsakmo++COIw6vfvXw5gHTW/xt1k34XrK7X99giYRxM9Gqgp7IL/muZXrXG
	EcyqyUorLLtvADyG9MHhVkMdp4Eqv4s=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1637671380;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:dkim-signature;
	bh=9PfxSwjsWOMdmHjB3z6q8McJuFD5+tP/SvBOWG9eR0Q=;
	b=esbInDm6pwpmNUU807KZdTEaSiRE52XmNeSPreKsaWLpZ6EeoOjT264tep+QyrjYVQLWhe
	hnZEwOfVR51Iim9zK2b3mXoYv6LYlNn/cQo7ZGqBVaowQR+4Ko0WGiEBCS6QDsEzlmUaox
	BlHRKaYG8+sPIhqVETX5xPJTQH932b4=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=linuxfoundation.org header.s=korg header.b=zEs73AqP;
	spf=pass (diktynna.open-mesh.org: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
	dmarc=pass (policy=none) header.from=linuxfoundation.org
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: XC7DJ6KZ2FRXMY7AONCRCWMWSA2CBWOB
X-Message-ID-Hash: XC7DJ6KZ2FRXMY7AONCRCWMWSA2CBWOB
X-MailFrom: gregkh@linuxfoundation.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
CC: stable-commits@vger.kernel.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/XC7DJ6KZ2FRXMY7AONCRCWMWSA2CBWOB/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>


This is a note to let you know that I've just added the patch titled

    batman-adv: Fix multicast TT issues with bogus ROAM flags

to the 4.4-stable tree which can be found at:
    http://www.kernel.org/git/?p=3Dlinux/kernel/git/stable/stable-queue.g=
it;a=3Dsummary

The filename of the patch is:
     batman-adv-fix-multicast-tt-issues-with-bogus-roam-flags.patch
and it can be found in the queue-4.4 subdirectory.

If you, or anyone else, feels it should not be added to the stable tree,
please let <stable@vger.kernel.org> know about it.


From foo@baz Tue Nov 23 01:39:02 PM CET 2021
From: Sven Eckelmann <sven@narfation.org>
Date: Sat, 20 Nov 2021 13:39:30 +0100
Subject: batman-adv: Fix multicast TT issues with bogus ROAM flags
To: stable@vger.kernel.org
Cc: b.a.t.m.a.n@lists.open-mesh.org, "Linus L=FCssing" <linus.luessing@c0=
d3.blue>, "Leonardo M=F6rlein" <me@irrelefant.net>, "Simon Wunderlich" <s=
w@simonwunderlich.de>, "Sven Eckelmann" <sven@narfation.org>
Message-ID: <20211120123939.260723-3-sven@narfation.org>

From: Linus L=FCssing <linus.luessing@c0d3.blue>

commit a44ebeff6bbd6ef50db41b4195fca87b21aefd20 upstream.

When a (broken) node wrongly sends multicast TT entries with a ROAM
flag then this causes any receiving node to drop all entries for the
same multicast MAC address announced by other nodes, leading to
packet loss.

Fix this DoS vector by only storing TT sync flags. For multicast TT
non-sync'ing flag bits like ROAM are unused so far anyway.

Fixes: 1d8ab8d3c176 ("batman-adv: Modified forwarding behaviour for multi=
cast packets")
Reported-by: Leonardo M=F6rlein <me@irrelefant.net>
Signed-off-by: Linus L=FCssing <linus.luessing@c0d3.blue>
Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
[ bp: 4.4 backported: adjust context, use old style to access flags ]
Signed-off-by: Sven Eckelmann <sven@narfation.org>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 net/batman-adv/translation-table.c |    6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

--- a/net/batman-adv/translation-table.c
+++ b/net/batman-adv/translation-table.c
@@ -1426,7 +1426,8 @@ static bool batadv_tt_global_add(struct
 		ether_addr_copy(common->addr, tt_addr);
 		common->vid =3D vid;
=20
-		common->flags =3D flags & (~BATADV_TT_SYNC_MASK);
+		if (!is_multicast_ether_addr(common->addr))
+			common->flags =3D flags & (~BATADV_TT_SYNC_MASK);
=20
 		tt_global_entry->roam_at =3D 0;
 		/* node must store current time in case of roaming. This is
@@ -1489,7 +1490,8 @@ static bool batadv_tt_global_add(struct
 		 * TT_CLIENT_WIFI, therefore they have to be copied in the
 		 * client entry
 		 */
-		tt_global_entry->common.flags |=3D flags & (~BATADV_TT_SYNC_MASK);
+		if (!is_multicast_ether_addr(common->addr))
+			tt_global_entry->common.flags |=3D flags & (~BATADV_TT_SYNC_MASK);
=20
 		/* If there is the BATADV_TT_CLIENT_ROAM flag set, there is only
 		 * one originator left in the list and we previously received a


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
