Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F9583F2875
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 20 Aug 2021 10:33:13 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 66F1A8264E;
	Fri, 20 Aug 2021 10:33:09 +0200 (CEST)
Received: from simonwunderlich.de (packetmixer.de [IPv6:2001:4d88:2000:24::c0de])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 7EA1A80122
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 20 Aug 2021 10:33:05 +0200 (CEST)
Received: from kero.packetmixer.de (p200300c5970e73c0a32126881010a2d4.dip0.t-ipconnect.de [IPv6:2003:c5:970e:73c0:a321:2688:1010:a2d4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by simonwunderlich.de (Postfix) with ESMTPSA id 07538174020;
	Fri, 20 Aug 2021 10:33:05 +0200 (CEST)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: kuba@kernel.org,
	davem@davemloft.net
Subject: [PATCH 1/6] batman-adv: Start new development cycle
Date: Fri, 20 Aug 2021 10:32:55 +0200
Message-Id: <20210820083300.32289-2-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210820083300.32289-1-sw@simonwunderlich.de>
References: <20210820083300.32289-1-sw@simonwunderlich.de>
MIME-Version: 1.0
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates 2001:4d88:2000:24::c0de as permitted sender) smtp.mailfrom=sw@simonwunderlich.de
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1629448385; a=rsa-sha256;
	cv=none;
	b=DYpuWgeZLcSbcZ+X4kC7DTv5ip4xvcx38QII2Fgx3kN9zKbobhbNBZsXAp6pShQeU2whXJ
	vxLNY18fD/nZq+EViIxqFTzDsvWswwLshYW8ai1ud2su/OqBJlD5S8e19ghPq5reMcuBJ7
	FgogTqqTVE7hHuKUuOWdbiR2hYpF1YU=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1629448385;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=jRUIoBIhn1skrsU4Ef/xDHpPloarQozZ+IebrdA1QoM=;
	b=KukkG180st1xLzHJGFSzeFiFE6TyFWa+SZiMF5vhpyox6RBASIMTZX8/FoQrcCvVQJLRD9
	P/wrbSnRBbdit613X5/cIrZPPtzw2/gS6YPAb5Mvsoch9Yfj0KyxkcdFZGrMICR9aScwkK
	C8Ntl7GFBOaTUyku/D6VJctEIV3pGN4=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: HYKND3A47WUI4GFEWEDULCKT6APINAK2
X-Message-ID-Hash: HYKND3A47WUI4GFEWEDULCKT6APINAK2
X-MailFrom: sw@simonwunderlich.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/HYKND3A47WUI4GFEWEDULCKT6APINAK2/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

This version will contain all the (major or even only minor) changes for
Linux 5.15.

The version number isn't a semantic version number with major and minor
information. It is just encoding the year of the expected publishing as
Linux -rc1 and the number of published versions this year (starting at 0)=
.

Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
---
 net/batman-adv/main.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/batman-adv/main.h b/net/batman-adv/main.h
index 014235fd4681..058b8f2eef65 100644
--- a/net/batman-adv/main.h
+++ b/net/batman-adv/main.h
@@ -13,7 +13,7 @@
 #define BATADV_DRIVER_DEVICE "batman-adv"
=20
 #ifndef BATADV_SOURCE_VERSION
-#define BATADV_SOURCE_VERSION "2021.2"
+#define BATADV_SOURCE_VERSION "2021.3"
 #endif
=20
 /* B.A.T.M.A.N. parameters */
--=20
2.20.1
