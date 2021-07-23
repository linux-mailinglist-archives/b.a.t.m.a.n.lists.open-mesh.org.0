Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 734E13D3EA3
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 23 Jul 2021 19:28:46 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 224328068E;
	Fri, 23 Jul 2021 19:28:45 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 5865580918
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 23 Jul 2021 19:28:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1627061003;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=HYJ+JC5t1bzEOjXrv/V84vV3gJuKVrCYzNjj0cJ62gc=;
	b=oOpKmraZmgVjB2WINq7Nb9C3gPc9wzA64ysLpWaRFDxHrOioUBMxxIYqVgJO/jN49Dju+V
	OoXyOlWzBCbyzFVyZPVdVD+/xUtaDr3XXYn748eh02OT3W5o0CM+b3J8KEiR4p/i88bnxO
	tgORfz5Zz4igH54UCPGVuhqCNV9urlk=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
Subject: [PATCH 1/2] batman-adv: compat: Add support for linux/kstrtox.h
Date: Fri, 23 Jul 2021 19:23:16 +0200
Message-Id: <20210723172317.323199-1-sven@narfation.org>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1627061321;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=HYJ+JC5t1bzEOjXrv/V84vV3gJuKVrCYzNjj0cJ62gc=;
	b=mjD2HKBgsjMwsP9gxasSYTk4+cfA080yPBaqTikFRgi02p35xuCH9vQPUIVz3kO+Gxd9TG
	bN7mHewABbn9aMw+ji/HX33OLU7+BP3M1olun0XxpYWxGgfSTEZrJV1cKPKLxRl3iXgmcG
	4LWChDGtYnR2ITAiRWCSyu3YHmTX3tE=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1627061321; a=rsa-sha256;
	cv=none;
	b=cVaau5E8V1rMkrs2O0d6+eD0NZWmC2+DRyMHsrJdeBUmHMurhFNskhKBRoi/rRs9KKeojR
	OFcFpmrOPVuCZTWKNRfgDSdhEYTl6FVnOD1Dnnnl9vEf189oQMTKYwcsmhVDoqwRl0N9zv
	WTEtbyuVim2WpG+vcrSJq23euQU2FsU=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=oOpKmraZ;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: XF24IVTSQCT25RM3MVOKSWVIGTVO3HRD
X-Message-ID-Hash: XF24IVTSQCT25RM3MVOKSWVIGTVO3HRD
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/XF24IVTSQCT25RM3MVOKSWVIGTVO3HRD/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

The commit 4c52729377ea ("kernel.h: split out kstrtox() and simple_strtox=
()
to a separate header") moved the kstrtou64 function to a new header calle=
d
linux/kstrtox.h.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 compat-include/linux/kstrtox.h | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)
 create mode 100644 compat-include/linux/kstrtox.h

diff --git a/compat-include/linux/kstrtox.h b/compat-include/linux/kstrto=
x.h
new file mode 100644
index 00000000..cd152e4b
--- /dev/null
+++ b/compat-include/linux/kstrtox.h
@@ -0,0 +1,20 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/* Copyright (C) B.A.T.M.A.N. contributors:
+ *
+ * Marek Lindner, Simon Wunderlich
+ *
+ * This file contains macros for maintaining compatibility with older ve=
rsions
+ * of the Linux kernel.
+ */
+
+#ifndef _NET_BATMAN_ADV_COMPAT_LINUX_KSTRTOX_H_
+#define _NET_BATMAN_ADV_COMPAT_LINUX_KSTRTOX_H_
+
+#include <linux/version.h>
+#if LINUX_VERSION_IS_GEQ(5, 14, 0)
+#include_next <linux/kstrtox.h>
+#else
+#include <linux/kernel.h>
+#endif
+
+#endif /* _NET_BATMAN_ADV_COMPAT_LINUX_KSTRTOX_H_ */
--=20
2.30.2
