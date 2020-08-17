Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id E2DFB246514
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 17 Aug 2020 13:05:01 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id A90A8805A6;
	Mon, 17 Aug 2020 13:05:00 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 616958039F
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 17 Aug 2020 13:04:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1597661770;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=lIQkJdKItQtPGIYA1cpUGi7DZ2Z83z1jPnsLDHRjLoU=;
	b=Kxc3PqtG75tCeAhjgt3+15rghL+qJlSItfnrqQu0aC82wS/t3m9FL7as3kpyf9TWdt/yRX
	VI4J3g4xmj3bnRTr0g4pq2JokavJNI0k44oBYXw0Amyblih3KLWn9gewJgioHskNVn28oA
	5jfCOR3iJJeKMnSrMIjvRt37Pmeeo88=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
Subject: [PATCH] batman-adv: Migrate to linux/prandom.h
Date: Mon, 17 Aug 2020 12:56:06 +0200
Message-Id: <20200817105606.15457-1-sven@narfation.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1597662297;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=lIQkJdKItQtPGIYA1cpUGi7DZ2Z83z1jPnsLDHRjLoU=;
	b=ChNzZE+Iyntvug2R3ftTtwgQo1UTrnq0HURIKdkH03RPXuVBsMFGuUu5aN86v0N66mJPzU
	X/kyOcEEItb2hOjLMj0zi1KCzdz/gb/wa6FgfXaCJfsVwYGNQ4sEDvapecvHLLEs5SuuDr
	VxLRxejC5EpUE4XGp9S70myXyA70NNY=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1597662297; a=rsa-sha256;
	cv=none;
	b=RB2N2qbTzQeV4IQm+n4nC1WoSyAgEP3jjHMukmG9tm4I5Fpx2NhudoXXxo2Ps7o7/+DGKb
	8PQ0v21qUE825RuVEFvA4uK8sMehQ71JoFNToHGo1e9YifNlZCkyobRF60TWMq//x4Sk/a
	icD9JTSLEonDYlI83X7sNhq5zq/kfjo=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=Kxc3PqtG;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: FH3PYCIKCQLZRS4AAPBXAOBZEIABMO3V
X-Message-ID-Hash: FH3PYCIKCQLZRS4AAPBXAOBZEIABMO3V
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/FH3PYCIKCQLZRS4AAPBXAOBZEIABMO3V/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

The commit c0842fbc1b18 ("random32: move the pseudo-random 32-bit
definitions to prandom.h") introduced a new header for the pseudo random
functions from (previously) linux/random.h. One future goal of the
prandom.h change is to make code to switch just the new header file and t=
o
avoid the implicit include. This would allow the removal of the implicit
include from random.h

Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 compat-include/linux/prandom.h  | 20 ++++++++++++++++++++
 net/batman-adv/bat_iv_ogm.c     |  1 +
 net/batman-adv/bat_v_elp.c      |  1 +
 net/batman-adv/bat_v_ogm.c      |  1 +
 net/batman-adv/network-coding.c |  2 +-
 5 files changed, 24 insertions(+), 1 deletion(-)
 create mode 100644 compat-include/linux/prandom.h

diff --git a/compat-include/linux/prandom.h b/compat-include/linux/prando=
m.h
new file mode 100644
index 00000000..6280957e
--- /dev/null
+++ b/compat-include/linux/prandom.h
@@ -0,0 +1,20 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/* Copyright (C) 2007-2020  B.A.T.M.A.N. contributors:
+ *
+ * Marek Lindner, Simon Wunderlich
+ *
+ * This file contains macros for maintaining compatibility with older ve=
rsions
+ * of the Linux kernel.
+ */
+
+#ifndef _NET_BATMAN_ADV_COMPAT_LINUX_PRANDOM_H_
+#define _NET_BATMAN_ADV_COMPAT_LINUX_PRANDOM_H_
+
+#include <linux/version.h>
+#if LINUX_VERSION_IS_GEQ(5, 9, 0)
+#include_next <linux/prandom.h>
+#else
+#include <linux/random.h>
+#endif
+
+#endif /* _NET_BATMAN_ADV_COMPAT_LINUX_PRANDOM_H_ */
diff --git a/net/batman-adv/bat_iv_ogm.c b/net/batman-adv/bat_iv_ogm.c
index a4faf5f9..206d0b42 100644
--- a/net/batman-adv/bat_iv_ogm.c
+++ b/net/batman-adv/bat_iv_ogm.c
@@ -27,6 +27,7 @@
 #include <linux/netdevice.h>
 #include <linux/netlink.h>
 #include <linux/pkt_sched.h>
+#include <linux/prandom.h>
 #include <linux/printk.h>
 #include <linux/random.h>
 #include <linux/rculist.h>
diff --git a/net/batman-adv/bat_v_elp.c b/net/batman-adv/bat_v_elp.c
index d35aca0e..79a7dfc3 100644
--- a/net/batman-adv/bat_v_elp.c
+++ b/net/batman-adv/bat_v_elp.c
@@ -20,6 +20,7 @@
 #include <linux/kref.h>
 #include <linux/netdevice.h>
 #include <linux/nl80211.h>
+#include <linux/prandom.h>
 #include <linux/random.h>
 #include <linux/rculist.h>
 #include <linux/rcupdate.h>
diff --git a/net/batman-adv/bat_v_ogm.c b/net/batman-adv/bat_v_ogm.c
index 717fe657..8c1148fc 100644
--- a/net/batman-adv/bat_v_ogm.c
+++ b/net/batman-adv/bat_v_ogm.c
@@ -20,6 +20,7 @@
 #include <linux/lockdep.h>
 #include <linux/mutex.h>
 #include <linux/netdevice.h>
+#include <linux/prandom.h>
 #include <linux/random.h>
 #include <linux/rculist.h>
 #include <linux/rcupdate.h>
diff --git a/net/batman-adv/network-coding.c b/net/batman-adv/network-cod=
ing.c
index 64619b7a..61ddd6d7 100644
--- a/net/batman-adv/network-coding.c
+++ b/net/batman-adv/network-coding.c
@@ -26,8 +26,8 @@
 #include <linux/lockdep.h>
 #include <linux/net.h>
 #include <linux/netdevice.h>
+#include <linux/prandom.h>
 #include <linux/printk.h>
-#include <linux/random.h>
 #include <linux/rculist.h>
 #include <linux/rcupdate.h>
 #include <linux/seq_file.h>
--=20
2.20.1
