Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id C008931AD4D
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 13 Feb 2021 18:08:16 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 68B0583D1D;
	Sat, 13 Feb 2021 18:08:15 +0100 (CET)
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id DA5238035B
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 13 Feb 2021 18:02:11 +0100 (CET)
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020; t=1613235731;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=2jAvpoJvnMaPdsdEV5/K3yUC3luNsKw09mGdklKWPok=;
	b=GUERZWQGuPfiSkXAHVCYxsdYD80vVyUh1Vk+4uI/wT+G0fiQmcfNs72l46wF6l8t/RNE09
	J8YcizzZRJkXBRPndXPvaw2E52UyJVm6GWY5C5zer4K8EZyzlf08pWxfUSqO5dAE0eeiBP
	g+RnwN02s1nMqenUbQWTBdvaVv/p57dhoyzBQrgsBzQ/S4v4ll+aj/BNR2L390sBjt2X4B
	luRoHxqhsPmk+6A6doVj7GP3HUCjTsty8pW2FCXvbED9Y3UEVUE5bGCFHHa2cUfONV29XM
	lnR5cFrjD0S9ax/sRwKLO6uhPCqBPt6fWxTaDDfM/NZriTrOhHmB87EK/ikCAg==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020e; t=1613235731;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=2jAvpoJvnMaPdsdEV5/K3yUC3luNsKw09mGdklKWPok=;
	b=T0h3CSp5Szlz35w0e4cn1Rj/I0YdTBScHWsF40XVefNIQ7bWjkS34UyBTQ2z76euYFOdaK
	+NALOYammcV0wmBg==
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: [PATCH] batman-adv: Use netif_rx_any_context().
Date: Sat, 13 Feb 2021 18:02:04 +0100
Message-Id: <20210213170204.3092113-1-bigeasy@linutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=linutronix.de header.s=2020 header.b=GUERZWQG;
	dkim=pass header.d=linutronix.de header.s=2020e header.b=T0h3CSp5;
	spf=pass (diktynna.open-mesh.org: domain of bigeasy@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=bigeasy@linutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1613235731;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=2jAvpoJvnMaPdsdEV5/K3yUC3luNsKw09mGdklKWPok=;
	b=01xYiBhdszKuNEQQc4ex/qv61xJQc6IzpNntnnAkqDW6r59twgkJvDLnTE1Sgo0fQE2oBk
	pq1NETgBQCJD59HdKf/tXWytLO78DJPmqlk04mm6TrzrrweIX80V//zm1D1MQ9iwrn2pgV
	jKmbTQ/HNKLiIRTfSqRm/qjDIIL52Y4=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1613235731; a=rsa-sha256;
	cv=none;
	b=lGSoSvSw3KONscmFAugyQAw/duTVagcAijEgzpoa/ADTJvFDszE/KKbSLsIH4AuR0Z/2E5
	e6XL7sevB2qyNmAHQ32YFdVCCo93VtkyoUyddLTcGMO7yne2dcWSpVc8ky0y6zSxYO1DfT
	kmWKyQHdZ1+GgNdZCp43wcGSxR6TjW0=
X-MailFrom: bigeasy@linutronix.de
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
Message-ID-Hash: 3GKKZOZB4GD4RLVNLCTVSUV346NZJNYL
X-Message-ID-Hash: 3GKKZOZB4GD4RLVNLCTVSUV346NZJNYL
X-Mailman-Approved-At: Sat, 13 Feb 2021 17:08:12 +0100
CC: Marek Lindner <mareklindner@neomailbox.ch>, Antonio Quartulli <a@unstable.cc>, Thomas Gleixner <tglx@linutronix.de>, Sebastian Andrzej Siewior <bigeasy@linutronix.de>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/3GKKZOZB4GD4RLVNLCTVSUV346NZJNYL/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

The usage of in_interrupt() in non-core code is phased out. Ideally the
information of the calling context should be passed by the callers or the
functions be split as appropriate.

The attempt to consolidate the code by passing an arguemnt or by
distangling it failed due lack of knowledge about this driver and because
the call chains are hard to follow.

As a stop gap use netif_rx_any_context() which invokes the correct code path
depending on context and confines the in_interrupt() usage to core code.

Signed-off-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
---
 net/batman-adv/bridge_loop_avoidance.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/net/batman-adv/bridge_loop_avoidance.c b/net/batman-adv/bridge=
_loop_avoidance.c
index d2de12e527baa..b3411a034d87e 100644
--- a/net/batman-adv/bridge_loop_avoidance.c
+++ b/net/batman-adv/bridge_loop_avoidance.c
@@ -438,10 +438,7 @@ static void batadv_bla_send_claim(struct batadv_priv *=
bat_priv, u8 *mac,
 	batadv_add_counter(bat_priv, BATADV_CNT_RX_BYTES,
 			   skb->len + ETH_HLEN);
=20
-	if (in_interrupt())
-		netif_rx(skb);
-	else
-		netif_rx_ni(skb);
+	netif_rx_any_context(skb);
 out:
 	if (primary_if)
 		batadv_hardif_put(primary_if);
--=20
2.30.0
