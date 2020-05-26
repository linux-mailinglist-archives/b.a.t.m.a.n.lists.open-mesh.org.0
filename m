Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 494891E1F50
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 26 May 2020 12:06:13 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id B351182746;
	Tue, 26 May 2020 12:06:04 +0200 (CEST)
Received: from simonwunderlich.de (simonwunderlich.de [79.140.42.25])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id C1F0381DA3
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 26 May 2020 12:05:54 +0200 (CEST)
Received: from kero.packetmixer.de (p200300c597221100fc44a592f3d496ba.dip0.t-ipconnect.de [IPv6:2003:c5:9722:1100:fc44:a592:f3d4:96ba])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by simonwunderlich.de (Postfix) with ESMTPSA id A0F7C6205E;
	Tue, 26 May 2020 12:00:09 +0200 (CEST)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: davem@davemloft.net
Subject: [PATCH 1/3] batman-adv: Revert "Drop lockdep.h include for soft-interface.c"
Date: Tue, 26 May 2020 12:00:05 +0200
Message-Id: <20200526100007.10501-2-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200526100007.10501-1-sw@simonwunderlich.de>
References: <20200526100007.10501-1-sw@simonwunderlich.de>
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1590487554;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=VrMfKcMFaA4DVAxKsbqlMJVA5tVtmC7Hxm/6rDt1bSI=;
	b=sqKXeqYThKcueBHtjwR0j7l9Hzgh8fsZCIU0qaOoIRd8JoWy2T5d1FNBfza6Q7dzDfJBrP
	qrIfdK+v05E5IvmRZykCPnE+19WzZe2egX0fzALXOeIOiykEuCDJ7xKJLUWzQrPaKEazf7
	Tpx7fxod9XmpfYJeN+GbdIebRUv+3SE=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1590487554; a=rsa-sha256;
	cv=none;
	b=d66fskeoZZ7s4bnR6UKHWGYA3UVSfibZfaDCD5DTVg5LMHj4PQNEotJTpHywsNNM2IgOXv
	P0BIGLXykCVGNq5P5YwsnBsrzZTM8U0HTNdjeE/4p+lkzCniaxcU27CoTRezXQuh0KWCcT
	/zUkfJIqb8EXGC8BhtGuQB4swEjIKCA=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates 79.140.42.25 as permitted sender) smtp.mailfrom=sw@simonwunderlich.de
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: XLV6WDZ7AOVPSML5LPGKUWTJT7AJLTQO
X-Message-ID-Hash: XLV6WDZ7AOVPSML5LPGKUWTJT7AJLTQO
X-MailFrom: sw@simonwunderlich.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/XLV6WDZ7AOVPSML5LPGKUWTJT7AJLTQO/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

From: Sven Eckelmann <sven@narfation.org>

The commit 1a33e10e4a95 ("net: partially revert dynamic lockdep key
changes") reverts the commit ab92d68fc22f ("net: core: add generic lockde=
p
keys"). But it forgot to also revert the commit 5759af0682b3 ("batman-adv=
:
Drop lockdep.h include for soft-interface.c") which depends on the latter=
.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
---
 net/batman-adv/soft-interface.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/net/batman-adv/soft-interface.c b/net/batman-adv/soft-interf=
ace.c
index 822af540b854..0ddd80130ea3 100644
--- a/net/batman-adv/soft-interface.c
+++ b/net/batman-adv/soft-interface.c
@@ -22,6 +22,7 @@
 #include <linux/kernel.h>
 #include <linux/kref.h>
 #include <linux/list.h>
+#include <linux/lockdep.h>
 #include <linux/netdevice.h>
 #include <linux/netlink.h>
 #include <linux/percpu.h>
--=20
2.20.1
