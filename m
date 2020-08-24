Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 246342501FF
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 24 Aug 2020 18:27:51 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id E8AF3803F0;
	Mon, 24 Aug 2020 18:27:49 +0200 (CEST)
Received: from simonwunderlich.de (simonwunderlich.de [79.140.42.25])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id B55DB8039D
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 24 Aug 2020 18:27:46 +0200 (CEST)
Received: from kero.packetmixer.de (p200300c5970d68d0e0160e8a82c5fd76.dip0.t-ipconnect.de [IPv6:2003:c5:970d:68d0:e016:e8a:82c5:fd76])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by simonwunderlich.de (Postfix) with ESMTPSA id 6D31262071;
	Mon, 24 Aug 2020 18:27:46 +0200 (CEST)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: davem@davemloft.net
Subject: [PATCH 1/5] batman-adv: Start new development cycle
Date: Mon, 24 Aug 2020 18:27:37 +0200
Message-Id: <20200824162741.880-2-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200824162741.880-1-sw@simonwunderlich.de>
References: <20200824162741.880-1-sw@simonwunderlich.de>
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1598286466;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=pJYT55pZSH2w0hxTpgGLXk7t2of8LsxiYQLl6DN0928=;
	b=yasyu42QOEtFh+C+xtTUbAcCmhKnhpjl6Ymnk/M9VnJj+9YFyHzB6q3AQBDP80g4L1Wkr2
	KcRcy4ktBJf7kTfez9+XkARo/LZPu7PcrQiw6GnHxE3h74uxYsiAMtit3csBLn7bQ0pzRc
	1kvkgpCKbCJs6b0qdBRNoIqRon1odNw=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1598286466; a=rsa-sha256;
	cv=none;
	b=HJ2jqAT6yZyh/PJ1/HqKfuAJXaauV1CbtICfv4K09jgY7erHM05U4R6fb1ERRS7gc8OFT5
	oAA7Aqs833JzkyvHH7fUgSzB68gDEbwbAbHzQBxYCWfSmQabWUBqXFESK9U/0RsYzCMu9O
	0DQpp5MaODCQq64dHxrrR3SHPXVXVz8=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates 79.140.42.25 as permitted sender) smtp.mailfrom=sw@simonwunderlich.de
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: BY72I64AVOE7WICROTSFHPIAWHPONBVD
X-Message-ID-Hash: BY72I64AVOE7WICROTSFHPIAWHPONBVD
X-MailFrom: sw@simonwunderlich.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/BY72I64AVOE7WICROTSFHPIAWHPONBVD/>
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
index 0393bb9ed3d0..a47dc332d796 100644
--- a/net/batman-adv/main.h
+++ b/net/batman-adv/main.h
@@ -13,7 +13,7 @@
 #define BATADV_DRIVER_DEVICE "batman-adv"
=20
 #ifndef BATADV_SOURCE_VERSION
-#define BATADV_SOURCE_VERSION "2020.3"
+#define BATADV_SOURCE_VERSION "2020.4"
 #endif
=20
 /* B.A.T.M.A.N. parameters */
--=20
2.20.1
