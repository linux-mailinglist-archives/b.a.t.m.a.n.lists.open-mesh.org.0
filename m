Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FEB64CF28B
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon,  7 Mar 2022 08:24:39 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id B38F1844B7;
	Mon,  7 Mar 2022 08:24:36 +0100 (CET)
Received: from galois.linutronix.de (Galois.linutronix.de [IPv6:2a0a:51c0:0:12e:550::1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 1182B80356
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun,  6 Mar 2022 22:58:02 +0100 (CET)
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020; t=1646603882;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=HfjELwPcooFKFLjxQkftJyRT5nPeVL034Dgm8E9kFI0=;
	b=wTc1eDzoo86+fYdTrurDLL7JqCRg55ir9drOfBbYa4UwX4xn5WJVPfiDpTBis4hjtdlOaf
	mkD11APb0AYhaLkLqivvwer4UTTdeAAELGwTPAupbJOuGAG0GMI2gWoFaCGisVOvCUKTNa
	zSNGAW6MKQc98i6Kpv+xtffHsmAipW2Jnb7XzCEKFEUhCS0eYYUZdpmF/hfxZTonHo2cj3
	SRypbAyuYJ1vfP9XCr48wfaSs7MrLdXAB39mVa0ltZ+pzbPUqh6jCJukaEDgUihezsWf73
	4yMS8Z+1RUNxVqHZKoDncJbkDKvA9sGUIAGetr35Iz53WUmJuCM8EcK09PHaeg==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020e; t=1646603882;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=HfjELwPcooFKFLjxQkftJyRT5nPeVL034Dgm8E9kFI0=;
	b=JGcAHoyDvUtFmx844ZkwTsngjB3p9s0CBLR5sBR+Ziw0UZL6a9gkQx+RvjE4Z91Uvuh4ui
	RuN9AJo9VNuwQwCg==
To: netdev@vger.kernel.org
Subject: [PATCH net-next 05/10] batman-adv: Use netif_rx().
Date: Sun,  6 Mar 2022 22:57:48 +0100
Message-Id: <20220306215753.3156276-6-bigeasy@linutronix.de>
In-Reply-To: <20220306215753.3156276-1-bigeasy@linutronix.de>
References: <20220306215753.3156276-1-bigeasy@linutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=linutronix.de header.s=2020 header.b=wTc1eDzo;
	dkim=pass header.d=linutronix.de header.s=2020e header.b=JGcAHoyD;
	dmarc=pass (policy=none) header.from=linutronix.de;
	spf=pass (diktynna.open-mesh.org: domain of bigeasy@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=bigeasy@linutronix.de
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1646603883; a=rsa-sha256;
	cv=none;
	b=c2PCR6kpZ5nJz/qSlIqOvmQlYlEu1Y+ZxERQPtCq4Sn3spBsjph2qTdE6p/ZvW/SXqiVb3
	rX/kePjP2dDg7zSkMpjriRUxgl/5jCYVCet/NyJGI17v5C2tGSZZ3dxbS0X8RvlMaaFOPa
	Dmg0Xs3LJ68mYVJoa5nGpsBjKIUBSnc=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1646603883;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=HfjELwPcooFKFLjxQkftJyRT5nPeVL034Dgm8E9kFI0=;
	b=x49ETnz+Vrr2guI8+DiMmE93XRVV0WOIeghLRBVW6ghzcnzk1vJlpeNhPvqgWGl8zeQg6K
	FpimyCJ3F/NBUfzrCD1BBUkmwR5RPBdXqrdJemUBtsBJZ7sFKpSFtGn6/jSdyUX+0wgm3v
	FEYPqAIBmM4GsGtNLOgPnprGCSPFxAI=
X-MailFrom: bigeasy@linutronix.de
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
Message-ID-Hash: H3F66NKMNPEKJC27ZCWBU2F7OB4C74OF
X-Message-ID-Hash: H3F66NKMNPEKJC27ZCWBU2F7OB4C74OF
X-Mailman-Approved-At: Mon, 07 Mar 2022 07:24:24 +0100
CC: "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>, Thomas Gleixner <tglx@linutronix.de>, Sebastian Andrzej Siewior <bigeasy@linutronix.de>, Antonio Quartulli <a@unstable.cc>, Marek Lindner <mareklindner@neomailbox.ch>, b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/H3F66NKMNPEKJC27ZCWBU2F7OB4C74OF/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Since commit
   baebdf48c3600 ("net: dev: Makes sure netif_rx() can be invoked in any co=
ntext.")

the function netif_rx() can be used in preemptible/thread context as
well as in interrupt context.

Use netif_rx().

Cc: Antonio Quartulli <a@unstable.cc>
Cc: Marek Lindner <mareklindner@neomailbox.ch>
Cc: Simon Wunderlich <sw@simonwunderlich.de>
Cc: Sven Eckelmann <sven@narfation.org>
Cc: b.a.t.m.a.n@lists.open-mesh.org
Signed-off-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
---
 net/batman-adv/bridge_loop_avoidance.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/batman-adv/bridge_loop_avoidance.c b/net/batman-adv/bridge=
_loop_avoidance.c
index 337e20b6586d3..7f8a14d99cdb0 100644
--- a/net/batman-adv/bridge_loop_avoidance.c
+++ b/net/batman-adv/bridge_loop_avoidance.c
@@ -444,7 +444,7 @@ static void batadv_bla_send_claim(struct batadv_priv *b=
at_priv, const u8 *mac,
 	batadv_add_counter(bat_priv, BATADV_CNT_RX_BYTES,
 			   skb->len + ETH_HLEN);
=20
-	netif_rx_any_context(skb);
+	netif_rx(skb);
 out:
 	batadv_hardif_put(primary_if);
 }
--=20
2.35.1
