Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [IPv6:2a01:4f8:141:3341:78:46:248:236])
	by mail.lfdr.de (Postfix) with ESMTPS id A5F6329EF3
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 24 May 2019 21:20:08 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 9B6618140D;
	Fri, 24 May 2019 21:20:04 +0200 (CEST)
Received: from v3-1039.vlinux.de (narfation.org [IPv6:2001:4d88:2000:7::2])
 by open-mesh.org (Postfix) with ESMTPS id DD9F3806C9
 for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 24 May 2019 21:20:01 +0200 (CEST)
Received: from sven-desktop.home.narfation.org (unknown
 [IPv6:2a00:1ca0:1480:f1fc::4065])
 by v3-1039.vlinux.de (Postfix) with ESMTPSA id 569F11100E1;
 Fri, 24 May 2019 21:20:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
 s=20121; t=1558725601;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=i0dr5bu2qt4D652EGQhig8+qdE0Xk7o9WIRFFOO1y58=;
 b=moEa6qSUBU6TT6bu0QgsDpW+MY3iwMCwhzinFP9msy2p4OtlkIT5y1yAT84QJk9u/iEubV
 J2kH5ikGYCxSvbON0k2Fs43B8PyMe6I43UDsXusDq2PkUUq5Wq/PXCMLUUZR35VITjBTVO
 M6PCVaUpWbxIBa64DKz69rTK59HHSGo=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: [PATCH 1/3] batman-adv: Fix includes for *_MAX constants
Date: Fri, 24 May 2019 21:19:56 +0200
Message-Id: <20190524191958.30928-1-sven@narfation.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org; 
 s=20121; t=1558725601;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=i0dr5bu2qt4D652EGQhig8+qdE0Xk7o9WIRFFOO1y58=;
 b=NSugEjr3uHlnpiYspMhyiSuaqThNiDI3YuH+JX1rycUJ8xeLO2FZ1ysAVsVSVl7ziGEJEu
 gdPFTdaWTPIlvkl9SjoipJ4lP8wVPmggs92mK+7JZ4cgTB2VMDT+jHLwK36YcVEbVsOhct
 rNw8GP9GJziYMhjdGaRFS4RHrsQjpzk=
ARC-Seal: i=1; s=20121; d=narfation.org; t=1558725601; a=rsa-sha256; cv=none;
 b=nctKyeU3C6gsEoQ4mfLbGKkwg4WWGlo4A1nkmTxQ/YnXvIDfwY51m9KN6FmCY8uXHdEW5d
 XfJFC9lEgi3IdFVddO0RSPu7/HIsG1ljAIpAxVNq5QTu6xYgDdxuhhW+pT51Q81eIXgoQn
 nkV+Jq4mzb9WtE+aUmFt7uZxf2BOyV0=
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

The commit 54d50897d544 ("linux/kernel.h: split *_MAX and *_MIN macros into
<linux/limits.h>") moved the U32_MAX/INT_MAX/ULONG_MAX from linux/kernel.h
to linux/limits.h. Adjust the includes accordingly.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 net/batman-adv/gateway_common.c | 1 +
 net/batman-adv/hard-interface.c | 1 +
 net/batman-adv/netlink.c        | 1 +
 net/batman-adv/sysfs.c          | 1 +
 net/batman-adv/tp_meter.c       | 1 +
 5 files changed, 5 insertions(+)

diff --git a/net/batman-adv/gateway_common.c b/net/batman-adv/gateway_common.c
index dac097f9..fc557505 100644
--- a/net/batman-adv/gateway_common.c
+++ b/net/batman-adv/gateway_common.c
@@ -11,6 +11,7 @@
 #include <linux/byteorder/generic.h>
 #include <linux/errno.h>
 #include <linux/kernel.h>
+#include <linux/limits.h>
 #include <linux/math64.h>
 #include <linux/netdevice.h>
 #include <linux/stddef.h>
diff --git a/net/batman-adv/hard-interface.c b/net/batman-adv/hard-interface.c
index 79d1731b..89948764 100644
--- a/net/batman-adv/hard-interface.c
+++ b/net/batman-adv/hard-interface.c
@@ -16,6 +16,7 @@
 #include <linux/if_ether.h>
 #include <linux/kernel.h>
 #include <linux/kref.h>
+#include <linux/limits.h>
 #include <linux/list.h>
 #include <linux/netdevice.h>
 #include <linux/printk.h>
diff --git a/net/batman-adv/netlink.c b/net/batman-adv/netlink.c
index a67720fa..7253699c 100644
--- a/net/batman-adv/netlink.c
+++ b/net/batman-adv/netlink.c
@@ -21,6 +21,7 @@
 #include <linux/if_vlan.h>
 #include <linux/init.h>
 #include <linux/kernel.h>
+#include <linux/limits.h>
 #include <linux/list.h>
 #include <linux/netdevice.h>
 #include <linux/netlink.h>
diff --git a/net/batman-adv/sysfs.c b/net/batman-adv/sysfs.c
index 80fc3253..1efcb970 100644
--- a/net/batman-adv/sysfs.c
+++ b/net/batman-adv/sysfs.c
@@ -18,6 +18,7 @@
 #include <linux/kernel.h>
 #include <linux/kobject.h>
 #include <linux/kref.h>
+#include <linux/limits.h>
 #include <linux/netdevice.h>
 #include <linux/printk.h>
 #include <linux/rculist.h>
diff --git a/net/batman-adv/tp_meter.c b/net/batman-adv/tp_meter.c
index 82039214..dd6a9a40 100644
--- a/net/batman-adv/tp_meter.c
+++ b/net/batman-adv/tp_meter.c
@@ -21,6 +21,7 @@
 #include <linux/kernel.h>
 #include <linux/kref.h>
 #include <linux/kthread.h>
+#include <linux/limits.h>
 #include <linux/list.h>
 #include <linux/netdevice.h>
 #include <linux/param.h>
-- 
2.20.1

