Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D8FE299892
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 26 Oct 2020 22:10:11 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 4D2B5807DE;
	Mon, 26 Oct 2020 22:10:10 +0100 (CET)
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 286F58009A
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 26 Oct 2020 22:10:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1603746112;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=N2IXhMfgMpVVfrbRXrSC6clCcHFsxPvWiCozS/Eskqs=;
	b=I3Ros2E//51bafOJAEs19nuwoT3L3GOiERypTglCk46xe9cZayOlLHWuaSXXfdKaWLPKrf
	bsZOrt/m0CRiFld0ZE4qxCkA4+L4v5DC3C+jJq4i6fhq/cP0ZGcM1HUbd3Al+biOTKyYTi
	obvmUSlr9UbVD3+0EKe19c7nP6GpjRc=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
Subject: [PATCH] batman-adv: Add new include for min/max helpers
Date: Mon, 26 Oct 2020 22:01:41 +0100
Message-Id: <20201026210141.23146-1-sven@narfation.org>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1603746608; a=rsa-sha256;
	cv=none;
	b=gj6QF+oo+p/hMGGZb+h2EipEMxDZmKfADhVnPM6eGeWFFKzGusW5pMjyGskAHK0Jyvlg3d
	eLxf3SdUXhDmd/w2XjMNxsUvql90pK4hCIFy4uJbLDJOVkOa21wOF5B5j++Aefc2EtNe8/
	QL4zfe7kU8hq3IlNe4Aj/fCJbcJNUbE=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=I3Ros2E/;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1603746608;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=N2IXhMfgMpVVfrbRXrSC6clCcHFsxPvWiCozS/Eskqs=;
	b=Xq8TWSNt2VGglTtYVm4DZIQJZxnuAB0rGxj1cmxERId6a/iTBo7s6k3gqWi2Apg1ZsB+Ye
	060nNjooqHQgD5wtUMBbLD8ud5eypB1pwqFsgTa55sMeWXjbmYGMxnwyzglsk8MSusfqaC
	zP3FqOIuykHSCJqFIgkCJ9vdCvfvZxs=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: Z54WUJHXR2HG2EJ3MYIQGD6FHVEPH45X
X-Message-ID-Hash: Z54WUJHXR2HG2EJ3MYIQGD6FHVEPH45X
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/Z54WUJHXR2HG2EJ3MYIQGD6FHVEPH45X/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

The commit b296a6d53339 ("kernel.h: split out min()/max() et al. helpers"=
)
moved the min/max helper functionality from kernel.h to minmax.h. Adjust
the kernel code accordingly to avoid fragile indirect includes.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 compat-include/linux/minmax.h   | 20 ++++++++++++++++++++
 net/batman-adv/bat_v.c          |  1 +
 net/batman-adv/bat_v_elp.c      |  1 +
 net/batman-adv/bat_v_ogm.c      |  1 +
 net/batman-adv/fragmentation.c  |  2 +-
 net/batman-adv/hard-interface.c |  1 +
 net/batman-adv/icmp_socket.c    |  1 +
 net/batman-adv/main.c           |  1 +
 net/batman-adv/netlink.c        |  1 +
 net/batman-adv/tp_meter.c       |  1 +
 10 files changed, 29 insertions(+), 1 deletion(-)
 create mode 100644 compat-include/linux/minmax.h

diff --git a/compat-include/linux/minmax.h b/compat-include/linux/minmax.=
h
new file mode 100644
index 00000000..4b19479b
--- /dev/null
+++ b/compat-include/linux/minmax.h
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
+#ifndef _NET_BATMAN_ADV_COMPAT_LINUX_MINMAX_H_
+#define _NET_BATMAN_ADV_COMPAT_LINUX_MINMAX_H_
+
+#include <linux/version.h>
+#if LINUX_VERSION_IS_GEQ(5, 10, 0)
+#include_next <linux/minmax.h>
+#else
+#include <linux/kernel.h>
+#endif
+
+#endif /* _NET_BATMAN_ADV_COMPAT_LINUX_MINMAX_H_ */
diff --git a/net/batman-adv/bat_v.c b/net/batman-adv/bat_v.c
index 0ecaf1bb..e91d2c07 100644
--- a/net/batman-adv/bat_v.c
+++ b/net/batman-adv/bat_v.c
@@ -16,6 +16,7 @@
 #include <linux/kernel.h>
 #include <linux/kref.h>
 #include <linux/list.h>
+#include <linux/minmax.h>
 #include <linux/netdevice.h>
 #include <linux/netlink.h>
 #include <linux/rculist.h>
diff --git a/net/batman-adv/bat_v_elp.c b/net/batman-adv/bat_v_elp.c
index 79a7dfc3..0512ea6c 100644
--- a/net/batman-adv/bat_v_elp.c
+++ b/net/batman-adv/bat_v_elp.c
@@ -18,6 +18,7 @@
 #include <linux/jiffies.h>
 #include <linux/kernel.h>
 #include <linux/kref.h>
+#include <linux/minmax.h>
 #include <linux/netdevice.h>
 #include <linux/nl80211.h>
 #include <linux/prandom.h>
diff --git a/net/batman-adv/bat_v_ogm.c b/net/batman-adv/bat_v_ogm.c
index 8c1148fc..798d6598 100644
--- a/net/batman-adv/bat_v_ogm.c
+++ b/net/batman-adv/bat_v_ogm.c
@@ -18,6 +18,7 @@
 #include <linux/kref.h>
 #include <linux/list.h>
 #include <linux/lockdep.h>
+#include <linux/minmax.h>
 #include <linux/mutex.h>
 #include <linux/netdevice.h>
 #include <linux/prandom.h>
diff --git a/net/batman-adv/fragmentation.c b/net/batman-adv/fragmentatio=
n.c
index 9a47ef8b..97220e19 100644
--- a/net/batman-adv/fragmentation.c
+++ b/net/batman-adv/fragmentation.c
@@ -14,8 +14,8 @@
 #include <linux/gfp.h>
 #include <linux/if_ether.h>
 #include <linux/jiffies.h>
-#include <linux/kernel.h>
 #include <linux/lockdep.h>
+#include <linux/minmax.h>
 #include <linux/netdevice.h>
 #include <linux/skbuff.h>
 #include <linux/slab.h>
diff --git a/net/batman-adv/hard-interface.c b/net/batman-adv/hard-interf=
ace.c
index dad99641..a28fb9ab 100644
--- a/net/batman-adv/hard-interface.c
+++ b/net/batman-adv/hard-interface.c
@@ -18,6 +18,7 @@
 #include <linux/kref.h>
 #include <linux/limits.h>
 #include <linux/list.h>
+#include <linux/minmax.h>
 #include <linux/mutex.h>
 #include <linux/netdevice.h>
 #include <linux/printk.h>
diff --git a/net/batman-adv/icmp_socket.c b/net/batman-adv/icmp_socket.c
index 8bdabc03..56de4bf2 100644
--- a/net/batman-adv/icmp_socket.c
+++ b/net/batman-adv/icmp_socket.c
@@ -20,6 +20,7 @@
 #include <linux/if_ether.h>
 #include <linux/kernel.h>
 #include <linux/list.h>
+#include <linux/minmax.h>
 #include <linux/module.h>
 #include <linux/netdevice.h>
 #include <linux/pkt_sched.h>
diff --git a/net/batman-adv/main.c b/net/batman-adv/main.c
index 70fee9b4..293c62ed 100644
--- a/net/batman-adv/main.c
+++ b/net/batman-adv/main.c
@@ -23,6 +23,7 @@
 #include <linux/kobject.h>
 #include <linux/kref.h>
 #include <linux/list.h>
+#include <linux/minmax.h>
 #include <linux/module.h>
 #include <linux/netdevice.h>
 #include <linux/printk.h>
diff --git a/net/batman-adv/netlink.c b/net/batman-adv/netlink.c
index c7a55647..97bcf149 100644
--- a/net/batman-adv/netlink.c
+++ b/net/batman-adv/netlink.c
@@ -23,6 +23,7 @@
 #include <linux/kernel.h>
 #include <linux/limits.h>
 #include <linux/list.h>
+#include <linux/minmax.h>
 #include <linux/netdevice.h>
 #include <linux/netlink.h>
 #include <linux/printk.h>
diff --git a/net/batman-adv/tp_meter.c b/net/batman-adv/tp_meter.c
index db7e3774..d4e10005 100644
--- a/net/batman-adv/tp_meter.c
+++ b/net/batman-adv/tp_meter.c
@@ -23,6 +23,7 @@
 #include <linux/kthread.h>
 #include <linux/limits.h>
 #include <linux/list.h>
+#include <linux/minmax.h>
 #include <linux/netdevice.h>
 #include <linux/param.h>
 #include <linux/printk.h>
--=20
2.28.0
