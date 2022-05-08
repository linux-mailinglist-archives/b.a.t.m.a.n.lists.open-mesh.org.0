Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id BDA1C51EDC3
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun,  8 May 2022 15:26:24 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id D411282E80;
	Sun,  8 May 2022 15:26:21 +0200 (CEST)
Received: from simonwunderlich.de (simonwunderlich.de [IPv6:2a01:4f8:c17:e8c0::1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id D1AC481243
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun,  8 May 2022 15:26:17 +0200 (CEST)
Received: from kero.packetmixer.de (p200300Fa271a310000945DF34724C077.dip0.t-ipconnect.de [IPv6:2003:fa:271a:3100:94:5df3:4724:c077])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by simonwunderlich.de (Postfix) with ESMTPSA id A04CAFA200;
	Sun,  8 May 2022 15:26:17 +0200 (CEST)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: kuba@kernel.org,
	davem@davemloft.net
Subject: [PATCH 1/2] batman-adv: Start new development cycle
Date: Sun,  8 May 2022 15:26:15 +0200
Message-Id: <20220508132616.21232-2-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220508132616.21232-1-sw@simonwunderlich.de>
References: <20220508132616.21232-1-sw@simonwunderlich.de>
MIME-Version: 1.0
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1652016377; a=rsa-sha256;
	cv=none;
	b=dM6ajnWnK95itErttpc83hifgw7Ymo8FFEecbUl+o4poOZIlBjBHQnUvPKrF1jXSrqNXNA
	DzKQ8v+D/ExCYaqaV7iWZRGRPDEbmcgkWveCMxjphchC/3W17bEcbxWiI9vEWRJ3iOAuVG
	0SjlHpG9/VtVgaA2PfccLpt7xvC/EpU=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates 2a01:4f8:c17:e8c0::1 as permitted sender) smtp.mailfrom=sw@simonwunderlich.de;
	dmarc=none
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1652016377;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=te+tc0NzF52+1HK/1DWqg1g9ftmcnzhUBSwYG82YGMg=;
	b=A1nuWUKlD243ZPhcjzXHP4nDXX7/zG4t83rfJH2ApMJXEo+S27Gs5hT+uZ+abgsf7/a595
	u3ub3U85WDIKLAjIuV5xGPYr1OmwrvwUHcj2EkH2JSALaYQJJKri6KNZIcnwCqpdxWQ+9Z
	Bs9AYAAunXOObme7wsbiHfOmSwlM2Ds=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: ITEFC2AJ3KYFOGICUYBT7F4M2QBZA3SZ
X-Message-ID-Hash: ITEFC2AJ3KYFOGICUYBT7F4M2QBZA3SZ
X-MailFrom: sw@simonwunderlich.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/ITEFC2AJ3KYFOGICUYBT7F4M2QBZA3SZ/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

This version will contain all the (major or even only minor) changes for
Linux 5.19.

The version number isn't a semantic version number with major and minor
information. It is just encoding the year of the expected publishing as
Linux -rc1 and the number of published versions this year (starting at 0)=
.

Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
---
 net/batman-adv/main.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/batman-adv/main.h b/net/batman-adv/main.h
index f3be82999f1f..23f3d53f4b51 100644
--- a/net/batman-adv/main.h
+++ b/net/batman-adv/main.h
@@ -13,7 +13,7 @@
 #define BATADV_DRIVER_DEVICE "batman-adv"
=20
 #ifndef BATADV_SOURCE_VERSION
-#define BATADV_SOURCE_VERSION "2022.1"
+#define BATADV_SOURCE_VERSION "2022.2"
 #endif
=20
 /* B.A.T.M.A.N. parameters */
--=20
2.30.2
