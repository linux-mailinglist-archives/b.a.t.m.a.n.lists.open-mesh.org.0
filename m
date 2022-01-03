Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BF58483572
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon,  3 Jan 2022 18:18:06 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id E11BD84380;
	Mon,  3 Jan 2022 18:18:00 +0100 (CET)
Received: from simonwunderlich.de (simonwunderlich.de [23.88.38.48])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id D597683EFC
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon,  3 Jan 2022 18:17:52 +0100 (CET)
Received: from kero.packetmixer.de (p200300c597476fC09aF9daD664F33736.dip0.t-ipconnect.de [IPv6:2003:c5:9747:6fc0:9af9:dad6:64f3:3736])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by simonwunderlich.de (Postfix) with ESMTPSA id 8709DFA1C3;
	Mon,  3 Jan 2022 18:17:52 +0100 (CET)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: kuba@kernel.org,
	davem@davemloft.net
Subject: [PATCH 3/3] batman-adv: remove unneeded variable in batadv_nc_init
Date: Mon,  3 Jan 2022 18:17:22 +0100
Message-Id: <20220103171722.1126109-4-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220103171722.1126109-1-sw@simonwunderlich.de>
References: <20220103171722.1126109-1-sw@simonwunderlich.de>
MIME-Version: 1.0
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates 23.88.38.48 as permitted sender) smtp.mailfrom=sw@simonwunderlich.de;
	dmarc=none
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1641230272; a=rsa-sha256;
	cv=none;
	b=qfEpKYbQI8IbG/emzFjxcDZuGPduOGtf4gUwTI8R2PqmDew1iFVG/CFH2M2Av1D8xjGaXI
	d+C3A1hbuB6YwkQ3A8/iiKi6uuTKmN+K/Yaeo6LpPP3UrCj0lPUkyKM1c5PbAiqFOliWzS
	OLPkcBidnLrWowvRln+iuVB50vv4Xd8=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1641230272;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Ev+/OIM+wV84WSG7N/9B9acRz9TKDK8FkZG4OOnne4U=;
	b=iPCvE0IJoGmSrB7oT20f+kdCDCZbOv81hwY4ts/hOROD6Bg2AgnGbU7a698BaBTEPtjpqh
	gJ60/FXRHxzwpoGsq0AUT89JygkwwHqBgAn8NCrsKVjncAX51dYltiSMGANeUBFIX1GWoC
	NPOIPOWG8OoSDUJo1J5yCN5D1hnpYrM=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: BES5S6RMXLPHKGUWBILMUOFKAJBJMM47
X-Message-ID-Hash: BES5S6RMXLPHKGUWBILMUOFKAJBJMM47
X-MailFrom: sw@simonwunderlich.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org, Minghao Chi <chi.minghao@zte.com.cn>, Zeal Robot <zealci@zte.com.cn>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/BES5S6RMXLPHKGUWBILMUOFKAJBJMM47/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

From: Minghao Chi <chi.minghao@zte.com.cn>

Return status directly from function called.

Reported-by: Zeal Robot <zealci@zte.com.cn>
Signed-off-by: Minghao Chi <chi.minghao@zte.com.cn>
Signed-off-by: Sven Eckelmann <sven@narfation.org>
Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
---
 net/batman-adv/network-coding.c | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/net/batman-adv/network-coding.c b/net/batman-adv/network-cod=
ing.c
index 0a7f1d36a6a8..974d726fabb9 100644
--- a/net/batman-adv/network-coding.c
+++ b/net/batman-adv/network-coding.c
@@ -58,13 +58,9 @@ static int batadv_nc_recv_coded_packet(struct sk_buff =
*skb,
  */
 int __init batadv_nc_init(void)
 {
-	int ret;
-
 	/* Register our packet type */
-	ret =3D batadv_recv_handler_register(BATADV_CODED,
-					   batadv_nc_recv_coded_packet);
-
-	return ret;
+	return batadv_recv_handler_register(BATADV_CODED,
+					    batadv_nc_recv_coded_packet);
 }
=20
 /**
--=20
2.30.2
