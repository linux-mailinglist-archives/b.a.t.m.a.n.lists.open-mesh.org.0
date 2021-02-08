Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 9797B313A66
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon,  8 Feb 2021 18:05:13 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 328248081E;
	Mon,  8 Feb 2021 18:05:12 +0100 (CET)
Received: from simonwunderlich.de (packetmixer.de [IPv6:2001:4d88:2000:24::c0de])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 31982806DA
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon,  8 Feb 2021 18:05:10 +0100 (CET)
Received: from kero.packetmixer.de (p4fd575e5.dip0.t-ipconnect.de [79.213.117.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by simonwunderlich.de (Postfix) with ESMTPSA id AF31717401F;
	Mon,  8 Feb 2021 17:59:39 +0100 (CET)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: kuba@kernel.org,
	davem@davemloft.net
Subject: [PATCH 1/4] batman-adv: Start new development cycle
Date: Mon,  8 Feb 2021 17:59:35 +0100
Message-Id: <20210208165938.13262-2-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210208165938.13262-1-sw@simonwunderlich.de>
References: <20210208165938.13262-1-sw@simonwunderlich.de>
MIME-Version: 1.0
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates 2001:4d88:2000:24::c0de as permitted sender) smtp.mailfrom=sw@simonwunderlich.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1612803910;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Cxl9hdRtUfyVCtKGBTZ95Yob3+2S4Unmgv+ekpq8l6Q=;
	b=O0/VaOw3GbV9AE+HYRBi3LuXp46G1gH6ytwvDcuiLitjmLnjtL9+f99BqO5iLoKR6LAZgX
	MQNI6uhYocPN/T1eehBpEX1yTlorBritlcUUA8XrQF4Xbc6oDbAq8FgehGCjoHdOr8hw+K
	CdHqKgc9qd8pPRhT70Ff7YW5XEsfmPA=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1612803910; a=rsa-sha256;
	cv=none;
	b=u99qocLBdvOT70ML1LIadEzrnzSXeNs5D+D3xjrDnjlGNszRCvnhoGsI0eRiaL/CGaC3t8
	IQO87EwAfCe+ZSANiNhW1MQ9877GMBnEAW4lkWIyJWhKYyHTZVNoOv0LQkmvOWs9fJ3u0e
	Y5xNTfSPyXRFwrlJaz4t5YGgcSdQo0I=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: YME3GJOL5LKHLYISR3HHONOHMQU3DWVY
X-Message-ID-Hash: YME3GJOL5LKHLYISR3HHONOHMQU3DWVY
X-MailFrom: sw@simonwunderlich.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/YME3GJOL5LKHLYISR3HHONOHMQU3DWVY/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

This version will contain all the (major or even only minor) changes for
Linux 5.12.

The version number isn't a semantic version number with major and minor
information. It is just encoding the year of the expected publishing as
Linux -rc1 and the number of published versions this year (starting at 0)=
.

Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
---
 net/batman-adv/main.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/batman-adv/main.h b/net/batman-adv/main.h
index 288201630ceb..2486efe4ffa6 100644
--- a/net/batman-adv/main.h
+++ b/net/batman-adv/main.h
@@ -13,7 +13,7 @@
 #define BATADV_DRIVER_DEVICE "batman-adv"
=20
 #ifndef BATADV_SOURCE_VERSION
-#define BATADV_SOURCE_VERSION "2021.0"
+#define BATADV_SOURCE_VERSION "2021.1"
 #endif
=20
 /* B.A.T.M.A.N. parameters */
--=20
2.20.1
