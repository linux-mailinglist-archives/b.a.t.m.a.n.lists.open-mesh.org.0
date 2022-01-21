Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 89F5F4962C8
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 21 Jan 2022 17:28:51 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 62FD283D9B;
	Fri, 21 Jan 2022 17:28:50 +0100 (CET)
Received: from dvalin.narfation.org (dvalin.narfation.org [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 6DCF980218
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 21 Jan 2022 17:28:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1642782527;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=AAHILyti4MGHCaZK04+uW9cFrhtxoJaq47P529eAB3E=;
	b=xySMVyrE7EQ5YQD2Vjb1MhdvM81bTjNG0R2L0U0fSpJ0I+FyHtBl1QzBn4TfeRauCeEroe
	wyF45zCl8F8Ais9FKMNZPskQzSrhwE8DnVo9ABaFxwCOTpidF6WV34BJW1nTxywKkCzNOD
	TRVDXVXxxRwrmnGQoxDc5P4UBJYSe6o=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
Subject: [PATCH] batman-adv: Migrate to linux/container_of.h
Date: Fri, 21 Jan 2022 17:28:38 +0100
Message-Id: <20220121162838.25222-1-sven@narfation.org>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=xySMVyrE;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1642782528; a=rsa-sha256;
	cv=none;
	b=UpFQUL5Hf584lh/GhZ+5C5KO6JPgohmx3cjWfWilO1MOpnyzeuDSz89BpJVvf7+bo7NBkB
	wmnzOka6k2I3Ndf1Ek8iScLaNq8pZEeqc86VSnlnpG/N0GYvpXjHO/FBlTATlgvtkExRLL
	BVw9E22n5NRzEQEp6lKxzdtkJDD19z0=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1642782528;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=AAHILyti4MGHCaZK04+uW9cFrhtxoJaq47P529eAB3E=;
	b=x2PeBleEsEImd/3zDt09WIQFqmLP1dvhzxQ1nKqh+gpDW7KE0S5WC+4XWFpdrQNV0YoghC
	bSDhkCJJf6mhZVfS+BQgLRJDPXV924fxzo/DCOg2Bc+RPp+gYLoSVk+4X6p73zPnF9hldK
	F94KRD6xhtZByFORsM9ElIQ84jKgxRo=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: 2YMNWQYOMZ4JN4A7Z7ZWBWRFEFGZHTTJ
X-Message-ID-Hash: 2YMNWQYOMZ4JN4A7Z7ZWBWRFEFGZHTTJ
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/2YMNWQYOMZ4JN4A7Z7ZWBWRFEFGZHTTJ/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

The commit d2a8ebbf8192 ("kernel.h: split out container_of() and
typeof_member() macros")  introduced a new header for the container_of
related macros from (previously) linux/kernel.h.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 compat-include/linux/container_of.h    | 20 ++++++++++++++++++++
 net/batman-adv/bat_iv_ogm.c            |  2 +-
 net/batman-adv/bat_v_elp.c             |  2 +-
 net/batman-adv/bat_v_ogm.c             |  2 +-
 net/batman-adv/bridge_loop_avoidance.c |  1 +
 net/batman-adv/distributed-arp-table.c |  2 +-
 net/batman-adv/gateway_client.c        |  1 +
 net/batman-adv/hard-interface.c        |  2 +-
 net/batman-adv/main.c                  |  1 +
 net/batman-adv/multicast.c             |  1 +
 net/batman-adv/network-coding.c        |  2 +-
 net/batman-adv/originator.c            |  2 +-
 net/batman-adv/send.c                  |  2 +-
 net/batman-adv/soft-interface.c        |  2 +-
 net/batman-adv/tp_meter.c              |  2 +-
 net/batman-adv/translation-table.c     |  2 +-
 net/batman-adv/tvlv.c                  |  2 +-
 17 files changed, 36 insertions(+), 12 deletions(-)
 create mode 100644 compat-include/linux/container_of.h

diff --git a/compat-include/linux/container_of.h b/compat-include/linux/c=
ontainer_of.h
new file mode 100644
index 00000000..f1e8e1b6
--- /dev/null
+++ b/compat-include/linux/container_of.h
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
+#ifndef _NET_BATMAN_ADV_COMPAT_LINUX_CONTAINER_OF_H_
+#define _NET_BATMAN_ADV_COMPAT_LINUX_CONTAINER_OF_H_
+
+#include <linux/version.h>
+#if LINUX_VERSION_IS_GEQ(5, 16, 0)
+#include_next <linux/container_of.h>
+#else
+#include <linux/kernel.h>
+#endif
+
+#endif /* _NET_BATMAN_ADV_COMPAT_LINUX_CONTAINER_OF_H_ */
diff --git a/net/batman-adv/bat_iv_ogm.c b/net/batman-adv/bat_iv_ogm.c
index f94f538f..7f6a7c96 100644
--- a/net/batman-adv/bat_iv_ogm.c
+++ b/net/batman-adv/bat_iv_ogm.c
@@ -13,13 +13,13 @@
 #include <linux/bug.h>
 #include <linux/byteorder/generic.h>
 #include <linux/cache.h>
+#include <linux/container_of.h>
 #include <linux/errno.h>
 #include <linux/etherdevice.h>
 #include <linux/gfp.h>
 #include <linux/if_ether.h>
 #include <linux/init.h>
 #include <linux/jiffies.h>
-#include <linux/kernel.h>
 #include <linux/kref.h>
 #include <linux/list.h>
 #include <linux/lockdep.h>
diff --git a/net/batman-adv/bat_v_elp.c b/net/batman-adv/bat_v_elp.c
index 71999e13..b6db999a 100644
--- a/net/batman-adv/bat_v_elp.c
+++ b/net/batman-adv/bat_v_elp.c
@@ -10,13 +10,13 @@
 #include <linux/atomic.h>
 #include <linux/bitops.h>
 #include <linux/byteorder/generic.h>
+#include <linux/container_of.h>
 #include <linux/errno.h>
 #include <linux/etherdevice.h>
 #include <linux/ethtool.h>
 #include <linux/gfp.h>
 #include <linux/if_ether.h>
 #include <linux/jiffies.h>
-#include <linux/kernel.h>
 #include <linux/kref.h>
 #include <linux/minmax.h>
 #include <linux/netdevice.h>
diff --git a/net/batman-adv/bat_v_ogm.c b/net/batman-adv/bat_v_ogm.c
index 1d750f3c..033639df 100644
--- a/net/batman-adv/bat_v_ogm.c
+++ b/net/batman-adv/bat_v_ogm.c
@@ -9,12 +9,12 @@
=20
 #include <linux/atomic.h>
 #include <linux/byteorder/generic.h>
+#include <linux/container_of.h>
 #include <linux/errno.h>
 #include <linux/etherdevice.h>
 #include <linux/gfp.h>
 #include <linux/if_ether.h>
 #include <linux/jiffies.h>
-#include <linux/kernel.h>
 #include <linux/kref.h>
 #include <linux/list.h>
 #include <linux/lockdep.h>
diff --git a/net/batman-adv/bridge_loop_avoidance.c b/net/batman-adv/brid=
ge_loop_avoidance.c
index 2ed9496f..337e20b6 100644
--- a/net/batman-adv/bridge_loop_avoidance.c
+++ b/net/batman-adv/bridge_loop_avoidance.c
@@ -10,6 +10,7 @@
 #include <linux/atomic.h>
 #include <linux/byteorder/generic.h>
 #include <linux/compiler.h>
+#include <linux/container_of.h>
 #include <linux/crc16.h>
 #include <linux/errno.h>
 #include <linux/etherdevice.h>
diff --git a/net/batman-adv/distributed-arp-table.c b/net/batman-adv/dist=
ributed-arp-table.c
index 2f008e32..fefb51a5 100644
--- a/net/batman-adv/distributed-arp-table.c
+++ b/net/batman-adv/distributed-arp-table.c
@@ -11,6 +11,7 @@
 #include <linux/atomic.h>
 #include <linux/bitops.h>
 #include <linux/byteorder/generic.h>
+#include <linux/container_of.h>
 #include <linux/errno.h>
 #include <linux/etherdevice.h>
 #include <linux/gfp.h>
@@ -20,7 +21,6 @@
 #include <linux/in.h>
 #include <linux/ip.h>
 #include <linux/jiffies.h>
-#include <linux/kernel.h>
 #include <linux/kref.h>
 #include <linux/list.h>
 #include <linux/netlink.h>
diff --git a/net/batman-adv/gateway_client.c b/net/batman-adv/gateway_cli=
ent.c
index b7466136..d26124bc 100644
--- a/net/batman-adv/gateway_client.c
+++ b/net/batman-adv/gateway_client.c
@@ -9,6 +9,7 @@
=20
 #include <linux/atomic.h>
 #include <linux/byteorder/generic.h>
+#include <linux/container_of.h>
 #include <linux/errno.h>
 #include <linux/etherdevice.h>
 #include <linux/gfp.h>
diff --git a/net/batman-adv/hard-interface.c b/net/batman-adv/hard-interf=
ace.c
index 8a2b78f9..59d19097 100644
--- a/net/batman-adv/hard-interface.c
+++ b/net/batman-adv/hard-interface.c
@@ -9,11 +9,11 @@
=20
 #include <linux/atomic.h>
 #include <linux/byteorder/generic.h>
+#include <linux/container_of.h>
 #include <linux/gfp.h>
 #include <linux/if.h>
 #include <linux/if_arp.h>
 #include <linux/if_ether.h>
-#include <linux/kernel.h>
 #include <linux/kref.h>
 #include <linux/limits.h>
 #include <linux/list.h>
diff --git a/net/batman-adv/main.c b/net/batman-adv/main.c
index 5207cd8d..4a8de470 100644
--- a/net/batman-adv/main.c
+++ b/net/batman-adv/main.c
@@ -9,6 +9,7 @@
 #include <linux/atomic.h>
 #include <linux/build_bug.h>
 #include <linux/byteorder/generic.h>
+#include <linux/container_of.h>
 #include <linux/crc32c.h>
 #include <linux/device.h>
 #include <linux/errno.h>
diff --git a/net/batman-adv/multicast.c b/net/batman-adv/multicast.c
index f4004cf0..1860de73 100644
--- a/net/batman-adv/multicast.c
+++ b/net/batman-adv/multicast.c
@@ -11,6 +11,7 @@
 #include <linux/bitops.h>
 #include <linux/bug.h>
 #include <linux/byteorder/generic.h>
+#include <linux/container_of.h>
 #include <linux/errno.h>
 #include <linux/etherdevice.h>
 #include <linux/gfp.h>
diff --git a/net/batman-adv/network-coding.c b/net/batman-adv/network-cod=
ing.c
index 974d726f..5f4aeeb6 100644
--- a/net/batman-adv/network-coding.c
+++ b/net/batman-adv/network-coding.c
@@ -11,6 +11,7 @@
 #include <linux/bitops.h>
 #include <linux/byteorder/generic.h>
 #include <linux/compiler.h>
+#include <linux/container_of.h>
 #include <linux/errno.h>
 #include <linux/etherdevice.h>
 #include <linux/gfp.h>
@@ -19,7 +20,6 @@
 #include <linux/init.h>
 #include <linux/jhash.h>
 #include <linux/jiffies.h>
-#include <linux/kernel.h>
 #include <linux/kref.h>
 #include <linux/list.h>
 #include <linux/lockdep.h>
diff --git a/net/batman-adv/originator.c b/net/batman-adv/originator.c
index aadc653c..34903df4 100644
--- a/net/batman-adv/originator.c
+++ b/net/batman-adv/originator.c
@@ -8,11 +8,11 @@
 #include "main.h"
=20
 #include <linux/atomic.h>
+#include <linux/container_of.h>
 #include <linux/errno.h>
 #include <linux/etherdevice.h>
 #include <linux/gfp.h>
 #include <linux/jiffies.h>
-#include <linux/kernel.h>
 #include <linux/kref.h>
 #include <linux/list.h>
 #include <linux/lockdep.h>
diff --git a/net/batman-adv/send.c b/net/batman-adv/send.c
index 477d85a3..0379b126 100644
--- a/net/batman-adv/send.c
+++ b/net/batman-adv/send.c
@@ -10,13 +10,13 @@
 #include <linux/atomic.h>
 #include <linux/bug.h>
 #include <linux/byteorder/generic.h>
+#include <linux/container_of.h>
 #include <linux/errno.h>
 #include <linux/etherdevice.h>
 #include <linux/gfp.h>
 #include <linux/if.h>
 #include <linux/if_ether.h>
 #include <linux/jiffies.h>
-#include <linux/kernel.h>
 #include <linux/kref.h>
 #include <linux/list.h>
 #include <linux/netdevice.h>
diff --git a/net/batman-adv/soft-interface.c b/net/batman-adv/soft-interf=
ace.c
index 2dbbe6c1..0f5c0679 100644
--- a/net/batman-adv/soft-interface.c
+++ b/net/batman-adv/soft-interface.c
@@ -11,6 +11,7 @@
 #include <linux/byteorder/generic.h>
 #include <linux/cache.h>
 #include <linux/compiler.h>
+#include <linux/container_of.h>
 #include <linux/cpumask.h>
 #include <linux/errno.h>
 #include <linux/etherdevice.h>
@@ -19,7 +20,6 @@
 #include <linux/if_ether.h>
 #include <linux/if_vlan.h>
 #include <linux/jiffies.h>
-#include <linux/kernel.h>
 #include <linux/kref.h>
 #include <linux/list.h>
 #include <linux/lockdep.h>
diff --git a/net/batman-adv/tp_meter.c b/net/batman-adv/tp_meter.c
index 93730d30..7f3dd3c3 100644
--- a/net/batman-adv/tp_meter.c
+++ b/net/batman-adv/tp_meter.c
@@ -12,13 +12,13 @@
 #include <linux/byteorder/generic.h>
 #include <linux/cache.h>
 #include <linux/compiler.h>
+#include <linux/container_of.h>
 #include <linux/err.h>
 #include <linux/etherdevice.h>
 #include <linux/gfp.h>
 #include <linux/if_ether.h>
 #include <linux/init.h>
 #include <linux/jiffies.h>
-#include <linux/kernel.h>
 #include <linux/kref.h>
 #include <linux/kthread.h>
 #include <linux/limits.h>
diff --git a/net/batman-adv/translation-table.c b/net/batman-adv/translat=
ion-table.c
index 4b7ad668..8478034d 100644
--- a/net/batman-adv/translation-table.c
+++ b/net/batman-adv/translation-table.c
@@ -13,6 +13,7 @@
 #include <linux/byteorder/generic.h>
 #include <linux/cache.h>
 #include <linux/compiler.h>
+#include <linux/container_of.h>
 #include <linux/crc32c.h>
 #include <linux/errno.h>
 #include <linux/etherdevice.h>
@@ -21,7 +22,6 @@
 #include <linux/init.h>
 #include <linux/jhash.h>
 #include <linux/jiffies.h>
-#include <linux/kernel.h>
 #include <linux/kref.h>
 #include <linux/list.h>
 #include <linux/lockdep.h>
diff --git a/net/batman-adv/tvlv.c b/net/batman-adv/tvlv.c
index 0cb58eb0..7ec2e234 100644
--- a/net/batman-adv/tvlv.c
+++ b/net/batman-adv/tvlv.c
@@ -7,10 +7,10 @@
 #include "main.h"
=20
 #include <linux/byteorder/generic.h>
+#include <linux/container_of.h>
 #include <linux/etherdevice.h>
 #include <linux/gfp.h>
 #include <linux/if_ether.h>
-#include <linux/kernel.h>
 #include <linux/kref.h>
 #include <linux/list.h>
 #include <linux/lockdep.h>
--=20
2.30.2
