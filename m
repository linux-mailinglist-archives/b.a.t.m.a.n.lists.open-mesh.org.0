Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 117393F287C
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 20 Aug 2021 10:33:24 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 7278882729;
	Fri, 20 Aug 2021 10:33:13 +0200 (CEST)
Received: from simonwunderlich.de (simonwunderlich.de [79.140.42.25])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 16E9E8261F
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 20 Aug 2021 10:33:06 +0200 (CEST)
Received: from kero.packetmixer.de (p200300c5970e73c0a32126881010a2d4.dip0.t-ipconnect.de [IPv6:2003:c5:970e:73c0:a321:2688:1010:a2d4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by simonwunderlich.de (Postfix) with ESMTPSA id BFE81174022;
	Fri, 20 Aug 2021 10:33:05 +0200 (CEST)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: kuba@kernel.org,
	davem@davemloft.net
Subject: [PATCH 3/6] batman-adv: Switch to kstrtox.h for kstrtou64
Date: Fri, 20 Aug 2021 10:32:57 +0200
Message-Id: <20210820083300.32289-4-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210820083300.32289-1-sw@simonwunderlich.de>
References: <20210820083300.32289-1-sw@simonwunderlich.de>
MIME-Version: 1.0
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates 79.140.42.25 as permitted sender) smtp.mailfrom=sw@simonwunderlich.de
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1629448386; a=rsa-sha256;
	cv=none;
	b=SDvcyuisGIMBHbIOhSfOENReeFn65XHO+sqn4pF6t9uc6TNQOlpuaUy9GFsusKfDuntHph
	JAYB1QLHBs6KFnnxOCF24kxpczR/0CcKTQoQXgF2Ddg2+h2uQrTLTDd1OisiVga8FLy++T
	ThV1shy23Azbbh5HfbNdQ3unMGKTaqs=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1629448386;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=1J/ocA4aA5PPsdVqfbCcDlPxz4D6wJ1JICNC1750kzg=;
	b=mN0KjkXx5ry37VBZQ3RRbWIOITNwB4i4fT6MZbc6AwY0yA7MAN3nz/LpZvr+3f3JlXywuM
	b38nBIsO/k9aClQmOXClf1AOZInOkiPla8nw1gmjokL1n/NuLlwE3AD196H/VPxfQs9xfR
	gsGdhzK7R4LwHZ6Q7fztkvYLRWQFlew=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: XNHX7SIKSMR6JS7TWWAG32RR25D4KSB4
X-Message-ID-Hash: XNHX7SIKSMR6JS7TWWAG32RR25D4KSB4
X-MailFrom: sw@simonwunderlich.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/XNHX7SIKSMR6JS7TWWAG32RR25D4KSB4/>
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
