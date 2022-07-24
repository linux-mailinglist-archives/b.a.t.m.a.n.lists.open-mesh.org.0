Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id F19D057F733
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 24 Jul 2022 23:27:31 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id E6AC4805A0;
	Sun, 24 Jul 2022 23:27:30 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 33E628030B
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 24 Jul 2022 23:27:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1658698046;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=NgUeCswDK2hqsMP6RuFuQrAvaIkpfQU1kSWI+4xbpFc=;
	b=r0CKj+vawdWFH8HeGO2UvEefQX+AXTUiSpqx+hbPsb9iPKTJqOR7u7pez0mwmnpRqwkXq2
	muJAfDL5aEYskO+AB/NJfymXVq+jiSQ4DlAStxdTEJJ3SEJdW/U75VxTScLqseI7ELKr8b
	RCX/A4eQaQAh9yNfcxqDibZbW7eJ6N0=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: [PATCH] batman-adv: tracing: Use the new __vstring() helper
Date: Sun, 24 Jul 2022 23:27:19 +0200
Message-Id: <20220724212719.92570-1-sven@narfation.org>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=r0CKj+va;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1658698047; a=rsa-sha256;
	cv=none;
	b=n8lnrR6amL34wx17gZXNhF9Fbi6QzWJdORtEDvD8WlHzI+za2W6nYeIbe0kla9+cPiMhyH
	IN3leXQ/UAqT5yNvZX8kQwMpdUbADx9IOumyDzJizaNw5OemYrUFQp4pwoxoHf7Gjja/Lc
	dNERnZRRMcp0uoZXRHYUe2vUMNlBp+s=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1658698047;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=NgUeCswDK2hqsMP6RuFuQrAvaIkpfQU1kSWI+4xbpFc=;
	b=R3hd0+DH8YtDoPg2Koc6QBsem/y0ROH4ozPffhq883UGHrY4wyKKe5YEXwCeFZUuTZEcpA
	3YZUB0P9RdU46fSnaJcbnbmDM0gpmPXeuRLAaRg5lLGUOaADppf9Zj/LkxD01bYZBi6P1N
	OWJlN3Ldbfb5+LFTPS2Z6deFlXvi3mQ=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: EFV76XHYEZ6ANYICN3HLW64L6AENXF5J
X-Message-ID-Hash: EFV76XHYEZ6ANYICN3HLW64L6AENXF5J
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/EFV76XHYEZ6ANYICN3HLW64L6AENXF5J/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

From: "Steven Rostedt (Google)" <rostedt@goodmis.org>

Instead of open coding a __dynamic_array() with a fixed length (which
defeats the purpose of the dynamic array in the first place). Use the new
__vstring() helper that will use a va_list and only write enough of the
string into the ring buffer that is needed.

Link: https://lkml.kernel.org/r/20220705224751.080390002@goodmis.org

Signed-off-by: Steven Rostedt (Google) <rostedt@goodmis.org>
[sven@narfation.org: add compat code]
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
Already added to
https://git.kernel.org/pub/scm/linux/kernel/git/rostedt/linux-trace.git/c=
ommit/?h=3Dfor-next&id=3D013cfbccb0cb3bbac478666aed78e4f5f7e39dd6

 compat-include/linux/tracepoint.h | 24 ++++++++++++++++++++++++
 net/batman-adv/trace.h            |  7 ++-----
 2 files changed, 26 insertions(+), 5 deletions(-)
 create mode 100644 compat-include/linux/tracepoint.h

diff --git a/compat-include/linux/tracepoint.h b/compat-include/linux/tra=
cepoint.h
new file mode 100644
index 00000000..61df01a3
--- /dev/null
+++ b/compat-include/linux/tracepoint.h
@@ -0,0 +1,24 @@
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
+#ifndef _NET_BATMAN_ADV_COMPAT_LINUX_TRACEPOINT_H_
+#define _NET_BATMAN_ADV_COMPAT_LINUX_TRACEPOINT_H_
+
+#include <linux/version.h>
+#include_next <linux/tracepoint.h>
+
+#if LINUX_VERSION_IS_LESS(5, 19, 0)
+
+#define __vstring(item, fmt, ap) __dynamic_array(char, item, 256)
+#define __assign_vstr(dst, fmt, va) \
+	WARN_ON_ONCE(vsnprintf(__get_dynamic_array(dst), 256, fmt, *va) >=3D 25=
6)
+
+#endif /* LINUX_VERSION_IS_LESS(5, 19, 0) */
+
+#endif	/* _NET_BATMAN_ADV_COMPAT_LINUX_TRACEPOINT_H_ */
diff --git a/net/batman-adv/trace.h b/net/batman-adv/trace.h
index d673ebdd..67d2a8a0 100644
--- a/net/batman-adv/trace.h
+++ b/net/batman-adv/trace.h
@@ -40,16 +40,13 @@ TRACE_EVENT(batadv_dbg,
 	    TP_STRUCT__entry(
 		    __string(device, bat_priv->soft_iface->name)
 		    __string(driver, KBUILD_MODNAME)
-		    __dynamic_array(char, msg, BATADV_MAX_MSG_LEN)
+		    __vstring(msg, vaf->fmt, vaf->va)
 	    ),
=20
 	    TP_fast_assign(
 		    __assign_str(device, bat_priv->soft_iface->name);
 		    __assign_str(driver, KBUILD_MODNAME);
-		    WARN_ON_ONCE(vsnprintf(__get_dynamic_array(msg),
-					   BATADV_MAX_MSG_LEN,
-					   vaf->fmt,
-					   *vaf->va) >=3D BATADV_MAX_MSG_LEN);
+		    __assign_vstr(msg, vaf->fmt, vaf->va);
 	    ),
=20
 	    TP_printk(
--=20
2.30.2
