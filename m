Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id CA9444CAA5F
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed,  2 Mar 2022 17:35:31 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 9DDC28449E;
	Wed,  2 Mar 2022 17:35:27 +0100 (CET)
Received: from simonwunderlich.de (simonwunderlich.de [IPv6:2a01:4f8:c17:e8c0::1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 50C5180871
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed,  2 Mar 2022 17:35:25 +0100 (CET)
Received: from kero.packetmixer.de (p200300c597470Fc0D439Fbe5c3508408.dip0.t-ipconnect.de [IPv6:2003:c5:9747:fc0:d439:fbe5:c350:8408])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by simonwunderlich.de (Postfix) with ESMTPSA id 0F3B4FA74C;
	Wed,  2 Mar 2022 17:35:25 +0100 (CET)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: kuba@kernel.org,
	davem@davemloft.net
Subject: [PATCH 1/4] batman-adv: Start new development cycle
Date: Wed,  2 Mar 2022 17:35:19 +0100
Message-Id: <20220302163522.102842-2-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220302163522.102842-1-sw@simonwunderlich.de>
References: <20220302163522.102842-1-sw@simonwunderlich.de>
MIME-Version: 1.0
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	dmarc=none;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates 2a01:4f8:c17:e8c0::1 as permitted sender) smtp.mailfrom=sw@simonwunderlich.de
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1646238925; a=rsa-sha256;
	cv=none;
	b=ErJiaQRLlmhhOgEs2LP0fQ2e8uwmie6wb0x6uaX0sMGFGJ8LJqY0kQRCdxsUIzUj/fB/b9
	j3YegdS8IQ5A3ep0HoTMcFU+Vj9PLhVwM8GfTp05VhSj2ZpbPAvFpB31kbhljrOUdRyqkP
	1B/ZzB9ukv+LbxYcUC794Z3RmJVgsSU=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1646238925;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=DfHJuZJV0mdyt0uCiWVMZjejov62/G1MhWXoMOKW0qw=;
	b=U2QGBpYEm2b70jAO82o/S/bOE+b7S5zyll2hFO+xx5Lgce53oNvjGYGBZiqC56mOag03cJ
	zWEDFXZDI86WjVHf/dpKQiN+yp8RvoBwEKqdFF6uKyX62p0HPt2RhccZl1dFN1dQ0Feoqt
	T3iDZh/re23lTWdAtAnvQb9meFFAows=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: XSEHJKJ3DKU6NSJI34WF2KSIKV6DBCAQ
X-Message-ID-Hash: XSEHJKJ3DKU6NSJI34WF2KSIKV6DBCAQ
X-MailFrom: sw@simonwunderlich.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/XSEHJKJ3DKU6NSJI34WF2KSIKV6DBCAQ/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

This version will contain all the (major or even only minor) changes for
Linux 5.18.

The version number isn't a semantic version number with major and minor
information. It is just encoding the year of the expected publishing as
Linux -rc1 and the number of published versions this year (starting at 0)=
.

Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
---
 net/batman-adv/main.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/batman-adv/main.h b/net/batman-adv/main.h
index 494d1ebecac2..f3be82999f1f 100644
--- a/net/batman-adv/main.h
+++ b/net/batman-adv/main.h
@@ -13,7 +13,7 @@
 #define BATADV_DRIVER_DEVICE "batman-adv"
=20
 #ifndef BATADV_SOURCE_VERSION
-#define BATADV_SOURCE_VERSION "2022.0"
+#define BATADV_SOURCE_VERSION "2022.1"
 #endif
=20
 /* B.A.T.M.A.N. parameters */
--=20
2.30.2
