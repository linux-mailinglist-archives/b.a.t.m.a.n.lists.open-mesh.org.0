Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id B8CC13F1D15
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 19 Aug 2021 17:41:38 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id ED3A882640;
	Thu, 19 Aug 2021 17:41:23 +0200 (CEST)
Received: from simonwunderlich.de (packetmixer.de [IPv6:2001:4d88:2000:24::c0de])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 0A47682611
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 19 Aug 2021 17:41:14 +0200 (CEST)
Received: from kero.packetmixer.de (p200300c5971402c0773d8e0e2371531e.dip0.t-ipconnect.de [IPv6:2003:c5:9714:2c0:773d:8e0e:2371:531e])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by simonwunderlich.de (Postfix) with ESMTPSA id C3A91174022;
	Thu, 19 Aug 2021 17:33:41 +0200 (CEST)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: kuba@kernel.org,
	davem@davemloft.net
Subject: [PATCH 3/6] batman-adv: Switch to kstrtox.h for kstrtou64
Date: Thu, 19 Aug 2021 17:33:31 +0200
Message-Id: <20210819153334.18850-4-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210819153334.18850-1-sw@simonwunderlich.de>
References: <20210819153334.18850-1-sw@simonwunderlich.de>
MIME-Version: 1.0
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates 2001:4d88:2000:24::c0de as permitted sender) smtp.mailfrom=sw@simonwunderlich.de
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1629387675; a=rsa-sha256;
	cv=none;
	b=TUz5Dm9CKXi3LBtMdFU5Bc9Rfj7CcotiWjMAk/QnyJXL8HZSTgb/cVoxJVRBBR9L4edNu8
	5EOOhzBoK37XeSOBCqBqCXslTVPENUAHut2CYSU7uXZ/XgHWNCvHy8S/O42rGTXbkM92bI
	XqCTaCHA33JdkJX+eXe/0G1QpB28+tA=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1629387675;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=1J/ocA4aA5PPsdVqfbCcDlPxz4D6wJ1JICNC1750kzg=;
	b=UTJ5wDEWcpgVCz+AQ0xEs76qWnH4XCNDRAf2gc5s5aYL+qRc6MVdoaYBL5YRFuLvwGGOJK
	PmtJZZK1Mk/9DAr64R4Dcyukc6Kyo38/MTkFQycYv2CZoiKW9ML+TKRAbnpe8owqdnMQWQ
	zHDXr/u76ouVm4FAwotuUUVTLOGlSVk=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: O4ZSH5ABGE3FNUYVCRVES4ALA6OCABD6
X-Message-ID-Hash: O4ZSH5ABGE3FNUYVCRVES4ALA6OCABD6
X-MailFrom: sw@simonwunderlich.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/O4ZSH5ABGE3FNUYVCRVES4ALA6OCABD6/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

From: Sven Eckelmann <sven@narfation.org>

The commit 4c52729377ea ("kernel.h: split out kstrtox() and simple_strtox=
()
to a separate header") moved the kstrtou64 function to a new header calle=
d
linux/kstrtox.h.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
---
 net/batman-adv/gateway_common.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/batman-adv/gateway_common.c b/net/batman-adv/gateway_com=
mon.c
index fdde305a198e..9349c76f30c5 100644
--- a/net/batman-adv/gateway_common.c
+++ b/net/batman-adv/gateway_common.c
@@ -10,7 +10,7 @@
 #include <linux/atomic.h>
 #include <linux/byteorder/generic.h>
 #include <linux/errno.h>
-#include <linux/kernel.h>
+#include <linux/kstrtox.h>
 #include <linux/limits.h>
 #include <linux/math64.h>
 #include <linux/netdevice.h>
--=20
2.20.1
