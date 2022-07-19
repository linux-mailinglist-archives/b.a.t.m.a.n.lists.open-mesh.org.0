Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id DF5E357F72F
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 24 Jul 2022 23:25:21 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 9E9D6831ED;
	Sun, 24 Jul 2022 23:25:20 +0200 (CEST)
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 3E7C780356
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 19 Jul 2022 18:08:14 +0200 (CEST)
Date: Tue, 19 Jul 2022 18:08:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020; t=1658246893;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
	bh=2dKGb2E0QqGRFRRVheII+rSbPJ0hXbaOlCSA1PSfg+U=;
	b=cve2S4HeQ/TSgVWGZYhXhdE7rxyvQc5FR0Fr/wb1d2+S0pwCvucY96wEVfLhbvoNuUo3Lv
	K6OZ5IQPoPGAJVi6FBxXUDimcgEF74r2uJ+CK90KZ4knT2VY9P9YwDMrTq3g+5/W6/snGj
	/n9CCSYkYSyZnJDAYUBJijNJKDkhw/PeGhGeDR65THVXUpnuAZYvxj99N0Anj43P9M80F0
	3ZC7LNUwZzoEUx/HdNObqwEXerGnyHkBXozxmw5BZTggiG9Txlq1dI6WollIPzINMeY9eF
	4X/V69em3M2dWebcEbmnn8ISFbJH1YnRBzCmw0CvwyFrmHfFEQJNHfy3TwlhLA==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020e; t=1658246893;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
	bh=2dKGb2E0QqGRFRRVheII+rSbPJ0hXbaOlCSA1PSfg+U=;
	b=OsI0gAG0EdwPQvH7yE3DMSMqWY9YjLLBMaFKqdNtNDMaj9qz5X7gVAIU15DR6EAg1PAg12
	euWjsdBUXR5XAPCg==
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Sasha Levin <sashal@kernel.org>
Subject: [PATCH 5.15] batman-adv: Use netif_rx_any_context() any.
Message-ID: <YtbW7Ca3t4/3qB7k@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=linutronix.de header.s=2020 header.b=cve2S4He;
	dkim=pass header.d=linutronix.de header.s=2020e header.b=OsI0gAG0;
	spf=pass (diktynna.open-mesh.org: domain of bigeasy@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=bigeasy@linutronix.de;
	dmarc=pass (policy=none) header.from=linutronix.de
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1658246894; a=rsa-sha256;
	cv=none;
	b=f5vq8P/2heCJF/ZmZP4l+FXvEfMMEbRY64z6ouJnGyhO4WBaxzaMVzNSkI9EM22EobjRps
	qLEGbeII7XYmxZ4Fw787uWXcbGX+dWFz18plJ/OBmWu2nCHauTNcTx0uOvop0ZnKFdxJX6
	ZPDGP6k9RDVedFE40JW1BhUsQswfoyE=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1658246894;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 dkim-signature; bh=2dKGb2E0QqGRFRRVheII+rSbPJ0hXbaOlCSA1PSfg+U=;
	b=Et5zUHhaRoDvDaTQyz5aihwUw51/gVOLQaFmbDAWPp2XBq/b1l7uoUHj7c0939YSC/O9/7
	QUi3jKXHe/t4LDikgT266OnP/aK1xIJ3qcfnwGfdlgokxQopsSNUIf6q+UoRMachK+7M3U
	l51clFOQaBvkP9NuuJ7ZZDmuKYl1s/0=
X-MailFrom: bigeasy@linutronix.de
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
Message-ID-Hash: 5GLNIAPVO3MEHIH5SAZYQ4V7GTHPAV6U
X-Message-ID-Hash: 5GLNIAPVO3MEHIH5SAZYQ4V7GTHPAV6U
X-Mailman-Approved-At: Sun, 24 Jul 2022 21:25:18 +0200
CC: linux-kernel@vger.kernel.org, stable@vger.kernel.org, Antonio Quartulli <a@unstable.cc>, Marek Lindner <mareklindner@neomailbox.ch>, b.a.t.m.a.n@lists.open-mesh.org, "David S. Miller" <davem@davemloft.net>, Thomas Gleixner <tglx@linutronix.de>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/5GLNIAPVO3MEHIH5SAZYQ4V7GTHPAV6U/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

This reverts the stable commit
   e65d78b12fbc0 ("batman-adv: Use netif_rx().")

The commit message says:

| Since commit
|    baebdf48c3600 ("net: dev: Makes sure netif_rx() can be invoked in any context.")
|
| the function netif_rx() can be used in preemptible/thread context as
| well as in interrupt context.

This commit (baebdf48c3600) has not been backported to the 5.15 stable
series and therefore, the commit which builds upon it, must not be
backported either.

Revert the backport and use netif_rx_any_context() again.

Signed-off-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
---
 net/batman-adv/bridge_loop_avoidance.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/batman-adv/bridge_loop_avoidance.c b/net/batman-adv/bridge_loop_avoidance.c
index 11f6ef657d822..17687848daec5 100644
--- a/net/batman-adv/bridge_loop_avoidance.c
+++ b/net/batman-adv/bridge_loop_avoidance.c
@@ -443,7 +443,7 @@ static void batadv_bla_send_claim(struct batadv_priv *bat_priv, u8 *mac,
 	batadv_add_counter(bat_priv, BATADV_CNT_RX_BYTES,
 			   skb->len + ETH_HLEN);
 
-	netif_rx(skb);
+	netif_rx_any_context(skb);
 out:
 	batadv_hardif_put(primary_if);
 }
-- 
2.36.1
