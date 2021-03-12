Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id ED65933927C
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 12 Mar 2021 16:55:15 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 8C64680054;
	Fri, 12 Mar 2021 16:55:14 +0100 (CET)
Received: from simonwunderlich.de (packetmixer.de [IPv6:2001:4d88:2000:24::c0de])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id BEBEC8048A
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 12 Mar 2021 16:55:11 +0100 (CET)
Received: from kero.packetmixer.de (p4fd57512.dip0.t-ipconnect.de [79.213.117.18])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by simonwunderlich.de (Postfix) with ESMTPSA id 05929174023;
	Fri, 12 Mar 2021 16:47:33 +0100 (CET)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: kuba@kernel.org,
	davem@davemloft.net
Subject: [PATCH 1/1] batman-adv: Use netif_rx_any_context().
Date: Fri, 12 Mar 2021 16:47:24 +0100
Message-Id: <20210312154724.14980-2-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210312154724.14980-1-sw@simonwunderlich.de>
References: <20210312154724.14980-1-sw@simonwunderlich.de>
MIME-Version: 1.0
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1615564511; a=rsa-sha256;
	cv=none;
	b=bh8+sDsFsJQlD3dYEu2eCzpHKBDIFjMcuMjtOAw3Il/P0hKbfm0W3e8i/KrQmGRaoke14i
	hQVw9zFLzSQpG4LEMkSNmSnT3r0gUMAvFj7OCkm0UNZJ3FrnYOZUkXW1HYz+a8Hh6SK04p
	Kio+VTA04XhVYqaD5j8DW6hApj+v54A=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates 2001:4d88:2000:24::c0de as permitted sender) smtp.mailfrom=sw@simonwunderlich.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1615564511;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=9q5Q/WuiSdPuZvHw3IRpyOmWGTumNJkNredeZgR6WYc=;
	b=YOLHkXwSXiAGrwCu76uhTBk8Y2gXhtNaF+PZ6AzBmCmj+bJW68FrbHy2pn42DX3hHzo+kT
	9xlZ/JGPtpmh2/U7MjDliV/0tzYPg1CUtutFw/Y3KF4ItdsCTRbpqgPigf3aaynViCaIXb
	4t4V/v71Dlwqr94ehZ1FmlIJm76Cyjc=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: OKFZPGAIIYZFR74FXYG7ARSQUISVIDQH
X-Message-ID-Hash: OKFZPGAIIYZFR74FXYG7ARSQUISVIDQH
X-MailFrom: sw@simonwunderlich.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org, Sebastian Andrzej Siewior <bigeasy@linutronix.de>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/OKFZPGAIIYZFR74FXYG7ARSQUISVIDQH/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>

The usage of in_interrupt() in non-core code is phased out. Ideally the
information of the calling context should be passed by the callers or the
functions be split as appropriate.

The attempt to consolidate the code by passing an arguemnt or by
distangling it failed due lack of knowledge about this driver and because
the call chains are hard to follow.

As a stop gap use netif_rx_any_context() which invokes the correct code p=
ath
depending on context and confines the in_interrupt() usage to core code.

Signed-off-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Signed-off-by: Sven Eckelmann <sven@narfation.org>
Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
---
 net/batman-adv/bridge_loop_avoidance.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/net/batman-adv/bridge_loop_avoidance.c b/net/batman-adv/brid=
ge_loop_avoidance.c
index 360bdbf44748..bcd543ce835b 100644
--- a/net/batman-adv/bridge_loop_avoidance.c
+++ b/net/batman-adv/bridge_loop_avoidance.c
@@ -438,10 +438,7 @@ static void batadv_bla_send_claim(struct batadv_priv=
 *bat_priv, u8 *mac,
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
2.20.1
