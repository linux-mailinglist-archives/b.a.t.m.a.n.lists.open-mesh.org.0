Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 020E9457E42
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 20 Nov 2021 13:39:56 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 9B4F883DB5;
	Sat, 20 Nov 2021 13:39:46 +0100 (CET)
Received: from dvalin.narfation.org (dvalin.narfation.org [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id A359A82602
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 20 Nov 2021 13:39:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1637411982;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=wtxbE2ShimJI2SYkU0dcLWnYZNoIH7UwvIqoz/9d5Cc=;
	b=PR9byry0AjRWtNLQHZmii/TOZTfT352Bo6IjIx06nTnhmF4RNXJK2rXaD7mBMK8nW55UkE
	8ihf3XSNEinQ/xvBA4sYk4ASaC3ETvS/s7F+f6CcdlU/Uk51vFon2LoPzuZxNTgdjmcy3x
	plK24LOnasEW8rGDm371i3kNDQ739/k=
From: Sven Eckelmann <sven@narfation.org>
To: stable@vger.kernel.org
Subject: [PATCH 4.4 02/11] batman-adv: Fix multicast TT issues with bogus ROAM flags
Date: Sat, 20 Nov 2021 13:39:30 +0100
Message-Id: <20211120123939.260723-3-sven@narfation.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211120123939.260723-1-sven@narfation.org>
References: <20211120123939.260723-1-sven@narfation.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1637411982; a=rsa-sha256;
	cv=none;
	b=vIeC+Pj1CWcsJdSSBeDs/t295LCmvKX332yGWg3v20vKuYd1eLG2fv6enS6bTspps2v8Q2
	KJJ3/yo79YhNVsyJNPeGZfNONZ09Q4fP4iMwo6NDOQDL4U/eh5mFpofgvHv2l8thZtiRm2
	fgWW5LEI9hbsYx1JwmXsRvOVGf6FJZ8=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1637411982;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=wtxbE2ShimJI2SYkU0dcLWnYZNoIH7UwvIqoz/9d5Cc=;
	b=jvtvOscKrpnrZnsHnFUeM0VGNKTpImPChdCEHHlfn78HLXwg7XdvmPQqQC0PX+u0puzlbx
	IVoCXYxKilGqm2xDaxO++26+/VIw83/E8AfT31S1OkPe16rqQdX2/8X8menmhHUBtrmQSm
	wEw9ozfEmNjpv6hba/gMiPs2ZR983WA=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=PR9byry0;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: RRPQ4GA5SP6QQNDBVF4TFNSFXIJTQ6XU
X-Message-ID-Hash: RRPQ4GA5SP6QQNDBVF4TFNSFXIJTQ6XU
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: b.a.t.m.a.n@lists.open-mesh.org, =?UTF-8?q?Leonardo=20M=C3=B6rlein?= <me@irrelefant.net>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/RRPQ4GA5SP6QQNDBVF4TFNSFXIJTQ6XU/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

From: Linus L=C3=BCssing <linus.luessing@c0d3.blue>

commit a44ebeff6bbd6ef50db41b4195fca87b21aefd20 upstream.

When a (broken) node wrongly sends multicast TT entries with a ROAM
flag then this causes any receiving node to drop all entries for the
same multicast MAC address announced by other nodes, leading to
packet loss.

Fix this DoS vector by only storing TT sync flags. For multicast TT
non-sync'ing flag bits like ROAM are unused so far anyway.

Fixes: 1d8ab8d3c176 ("batman-adv: Modified forwarding behaviour for multi=
cast packets")
Reported-by: Leonardo M=C3=B6rlein <me@irrelefant.net>
Signed-off-by: Linus L=C3=BCssing <linus.luessing@c0d3.blue>
Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
[ bp: 4.4 backported: adjust context, use old style to access flags ]
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 net/batman-adv/translation-table.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/net/batman-adv/translation-table.c b/net/batman-adv/translat=
ion-table.c
index 5f976485e8c6..208cf66868e9 100644
--- a/net/batman-adv/translation-table.c
+++ b/net/batman-adv/translation-table.c
@@ -1426,7 +1426,8 @@ static bool batadv_tt_global_add(struct batadv_priv=
 *bat_priv,
 		ether_addr_copy(common->addr, tt_addr);
 		common->vid =3D vid;
=20
-		common->flags =3D flags & (~BATADV_TT_SYNC_MASK);
+		if (!is_multicast_ether_addr(common->addr))
+			common->flags =3D flags & (~BATADV_TT_SYNC_MASK);
=20
 		tt_global_entry->roam_at =3D 0;
 		/* node must store current time in case of roaming. This is
@@ -1489,7 +1490,8 @@ static bool batadv_tt_global_add(struct batadv_priv=
 *bat_priv,
 		 * TT_CLIENT_WIFI, therefore they have to be copied in the
 		 * client entry
 		 */
-		tt_global_entry->common.flags |=3D flags & (~BATADV_TT_SYNC_MASK);
+		if (!is_multicast_ether_addr(common->addr))
+			tt_global_entry->common.flags |=3D flags & (~BATADV_TT_SYNC_MASK);
=20
 		/* If there is the BATADV_TT_CLIENT_ROAM flag set, there is only
 		 * one originator left in the list and we previously received a
--=20
2.30.2
