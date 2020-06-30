Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 9988C20F098
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 30 Jun 2020 10:35:32 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 01B1781825;
	Tue, 30 Jun 2020 10:35:24 +0200 (CEST)
Received: from simonwunderlich.de (simonwunderlich.de [79.140.42.25])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 7BAD180A43
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 30 Jun 2020 10:35:15 +0200 (CEST)
Received: from kero.packetmixer.de (p4fd575ab.dip0.t-ipconnect.de [79.213.117.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by simonwunderlich.de (Postfix) with ESMTPSA id F38166205D;
	Tue, 30 Jun 2020 10:27:51 +0200 (CEST)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: davem@davemloft.net
Subject: [PATCH 1/4] batman-adv: Start new development cycle
Date: Tue, 30 Jun 2020 10:27:28 +0200
Message-Id: <20200630082731.2397-2-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200630082731.2397-1-sw@simonwunderlich.de>
References: <20200630082731.2397-1-sw@simonwunderlich.de>
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1593506115;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=CKefgdXUGGB/sJDvjYVHJyDfjForriGPAa0r586y5Bg=;
	b=SE60ccviZNl4I9R5BI0wjX+UJeHPCvBAWyznsWktInATKLDPF63Lifsa86rI85H0x2OS+0
	ZjsDA+f+73vCVLaYpVY4M+bxw2V2zHxe8tTcNBXWqPiG8gF812rI5WmPMDUi+jjhe1wuw7
	pKt3/yjX3AGwJ7DQ2PTBOV0IBU9D8cI=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1593506115; a=rsa-sha256;
	cv=none;
	b=1Hop3QqDjjNIzyzS4snLnhHXbeOmGKtDH+0FlAsT+NK79xSEyc8ZBnFsJ5maD6djRuhG+O
	9Li+CLDVCJBOuc3VDxpafXHLpRGbdAAp0QIqr15KR87txfZWTbKBCLp28tYlyCPvh5IsIH
	aDZvYT27X/B6ACcvdEguOYZjMWqRHog=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates 79.140.42.25 as permitted sender) smtp.mailfrom=sw@simonwunderlich.de
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: XPXU6FM6TMCIQIF3IBYGE2M25TR45MLU
X-Message-ID-Hash: XPXU6FM6TMCIQIF3IBYGE2M25TR45MLU
X-MailFrom: sw@simonwunderlich.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/XPXU6FM6TMCIQIF3IBYGE2M25TR45MLU/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
---
 net/batman-adv/main.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/batman-adv/main.h b/net/batman-adv/main.h
index 61d8dbe8c954..42b8d1e76dea 100644
--- a/net/batman-adv/main.h
+++ b/net/batman-adv/main.h
@@ -13,7 +13,7 @@
 #define BATADV_DRIVER_DEVICE "batman-adv"
=20
 #ifndef BATADV_SOURCE_VERSION
-#define BATADV_SOURCE_VERSION "2020.2"
+#define BATADV_SOURCE_VERSION "2020.3"
 #endif
=20
 /* B.A.T.M.A.N. parameters */
--=20
2.20.1
