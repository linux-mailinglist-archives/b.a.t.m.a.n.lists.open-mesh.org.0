Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [78.46.248.236])
	by mail.lfdr.de (Postfix) with ESMTPS id 12017610BF
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat,  6 Jul 2019 15:06:08 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 1C2128130E;
	Sat,  6 Jul 2019 15:06:03 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
 by open-mesh.org (Postfix) with ESMTPS id 31C4F805C9
 for <b.a.t.m.a.n@lists.open-mesh.org>; Sat,  6 Jul 2019 15:05:59 +0200 (CEST)
Received: from sven-desktop.home.narfation.org (unknown
 [IPv6:2a00:1ca0:1480:f1fc::4065])
 by dvalin.narfation.org (Postfix) with ESMTPSA id B6B6C1FFA5;
 Sat,  6 Jul 2019 13:05:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
 s=20121; t=1562418358;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=6I6ZqaIE2uEL7yukG5GESlEIUmMd29peUfc5A1GFGgE=;
 b=zN8LpdMI6PD+R9inUdi2UQel8+iCEZBI9xI6wmMyqK/riIfCqJQgr8P67cYgIMKpoefZXg
 PAQezIHi0yyucSOvl7V7rTeiB6hk5N3vHMwt2GOjjCjccVE2DdnjMfe13i2WGMgEdP/yzX
 SgwDxcqPXGtheBLOt9eAV/DhfnP0ABo=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: [PATCH] batman-adv: Replace usage of strlcpy with strscpy
Date: Sat,  6 Jul 2019 15:05:55 +0200
Message-Id: <20190706130555.13343-1-sven@narfation.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org; 
 s=20121; t=1562418358;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=6I6ZqaIE2uEL7yukG5GESlEIUmMd29peUfc5A1GFGgE=;
 b=hrc5HSIZcN1Mun+8s5IFnFNN7+dzZgiA9cnDaPTWAPqkJWHMuEVQjAcfVYG9R8Fcchw1mY
 bUsHca+MJ2GPRnZUlgsDoeku5DBjCFayEi8JrOnukgjWjxflsTz9Nr0h3FrCNpN/L2mfsz
 Re1mjOJUoYUkSaErMz9plHYb+PAKo6s=
ARC-Seal: i=1; s=20121; d=narfation.org; t=1562418358; a=rsa-sha256; cv=none;
 b=a16WEhBS/w9TQAdWoP+9RNO3NaHSh1s5BYKZ7lDtJ2EhR+sRe5mrCPRJQ3lenQu5D88ElX
 oVCeV2xA5Qceh2eIcTAKbK7uQmc472dVkH9ZjM7XxXuVQ0VNLxmrvQuUJlR0kke4VPpQ9T
 Kz1Xcc/AO7YMxRIMwBdss0r7q5a5AEI=
ARC-Authentication-Results: i=1; ORIGINATING;
 auth=pass smtp.auth=sven smtp.mailfrom=sven@narfation.org
X-BeenThere: b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 2.1.23
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
List-Unsubscribe: <https://lists.open-mesh.org/mm/options/b.a.t.m.a.n>,
 <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=unsubscribe>
List-Archive: <http://lists.open-mesh.org/pipermail/b.a.t.m.a.n/>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Subscribe: <https://lists.open-mesh.org/mm/listinfo/b.a.t.m.a.n>,
 <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=subscribe>
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n@lists.open-mesh.org>
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

The strscpy was introduced to fix some API problems around strlcpy. And
checkpatch started to report recently that strlcpy is deprecated and
strscpy is preferred.

The functionality introduced in commi 30035e45753b ("string: provide
strscpy()") improves following points compared to strlcpy:

* it doesn't read from memory beyond (src + size)
* provides an easy way to check for destination buffer overflow
* robust against asynchronous source buffer changes

Since batman-adv doesn't depend on any of the previously mentioned behavior
changes, the usage of strlcpy can simply be replaced by strscpy to silence
checkpatch.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 compat-include/linux/string.h   | 51 +++++++++++++++++++++++++++++++++
 net/batman-adv/soft-interface.c |  8 +++---
 net/batman-adv/sysfs.c          |  2 +-
 3 files changed, 56 insertions(+), 5 deletions(-)
 create mode 100644 compat-include/linux/string.h

diff --git a/compat-include/linux/string.h b/compat-include/linux/string.h
new file mode 100644
index 00000000..36ec689e
--- /dev/null
+++ b/compat-include/linux/string.h
@@ -0,0 +1,51 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/* Copyright (C) 2015  Chris Metcalf <cmetcalf@ezchip.com>
+ *
+ * This file contains macros for maintaining compatibility with older versions
+ * of the Linux kernel.
+ */
+
+#ifndef _NET_BATMAN_ADV_COMPAT_LINUX_STRING_H_
+#define _NET_BATMAN_ADV_COMPAT_LINUX_STRING_H_
+
+#include <linux/version.h>
+#include_next <linux/string.h>
+#include <asm-generic/errno-base.h>
+
+#if LINUX_VERSION_CODE < KERNEL_VERSION(4, 3, 0)
+
+#ifndef __HAVE_ARCH_STRSCPY
+
+static inline ssize_t batadv_strscpy(char *dest, const char *src, size_t count)
+{
+	long res = 0;
+
+	if (count == 0)
+		return -E2BIG;
+
+	while (count) {
+		char c;
+
+		c = src[res];
+		dest[res] = c;
+		if (!c)
+			return res;
+		res++;
+		count--;
+	}
+
+	/* Hit buffer length without finding a NUL; force NUL-termination. */
+	if (res)
+		dest[res-1] = '\0';
+
+	return -E2BIG;
+}
+
+#define strscpy(_dest, _src, _count) \
+	batadv_strscpy((_dest), (_src), (_count))
+
+#endif
+
+#endif /* < KERNEL_VERSION(4, 3, 0) */
+
+#endif	/* _NET_BATMAN_ADV_COMPAT_LINUX_STRING_H_ */
diff --git a/net/batman-adv/soft-interface.c b/net/batman-adv/soft-interface.c
index c7a2e77c..a1146cb1 100644
--- a/net/batman-adv/soft-interface.c
+++ b/net/batman-adv/soft-interface.c
@@ -943,10 +943,10 @@ static const struct net_device_ops batadv_netdev_ops = {
 static void batadv_get_drvinfo(struct net_device *dev,
 			       struct ethtool_drvinfo *info)
 {
-	strlcpy(info->driver, "B.A.T.M.A.N. advanced", sizeof(info->driver));
-	strlcpy(info->version, BATADV_SOURCE_VERSION, sizeof(info->version));
-	strlcpy(info->fw_version, "N/A", sizeof(info->fw_version));
-	strlcpy(info->bus_info, "batman", sizeof(info->bus_info));
+	strscpy(info->driver, "B.A.T.M.A.N. advanced", sizeof(info->driver));
+	strscpy(info->version, BATADV_SOURCE_VERSION, sizeof(info->version));
+	strscpy(info->fw_version, "N/A", sizeof(info->fw_version));
+	strscpy(info->bus_info, "batman", sizeof(info->bus_info));
 }
 
 /* Inspired by drivers/net/ethernet/dlink/sundance.c:1702
diff --git a/net/batman-adv/sysfs.c b/net/batman-adv/sysfs.c
index 1efcb970..e5bbc28e 100644
--- a/net/batman-adv/sysfs.c
+++ b/net/batman-adv/sysfs.c
@@ -1070,7 +1070,7 @@ static ssize_t batadv_store_mesh_iface(struct kobject *kobj,
 	dev_hold(net_dev);
 	INIT_WORK(&store_work->work, batadv_store_mesh_iface_work);
 	store_work->net_dev = net_dev;
-	strlcpy(store_work->soft_iface_name, buff,
+	strscpy(store_work->soft_iface_name, buff,
 		sizeof(store_work->soft_iface_name));
 
 	queue_work(batadv_event_workqueue, &store_work->work);
-- 
2.20.1

