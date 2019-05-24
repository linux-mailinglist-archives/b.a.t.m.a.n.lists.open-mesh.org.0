Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [78.46.248.236])
	by mail.lfdr.de (Postfix) with ESMTPS id 47F4C29EF4
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 24 May 2019 21:20:18 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id D79DF82004;
	Fri, 24 May 2019 21:20:10 +0200 (CEST)
Received: from v3-1039.vlinux.de (narfation.org [79.140.41.39])
 by open-mesh.org (Postfix) with ESMTPS id 59111816B8
 for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 24 May 2019 21:20:07 +0200 (CEST)
Received: from sven-desktop.home.narfation.org (unknown
 [IPv6:2a00:1ca0:1480:f1fc::4065])
 by v3-1039.vlinux.de (Postfix) with ESMTPSA id 48A891100E1;
 Fri, 24 May 2019 21:20:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
 s=20121; t=1558725606;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=3P9rjbyHPu1oskeRF35iHg1pGV6a+BjDYA/oUPR9TjQ=;
 b=vXKr5HRMe0oyKAd+h3X2+ApASQ+8J2BwzzjEMTdZzfFvgaZ2EW5iAkOg+H8142iFlUl4ry
 +Vf0rz8ru1TdkkxqHf+FclC5JCq7j0LmEypyvk7b9vjLReU6lbOFG65SXtagXau6R4Six/
 wF7MmQfa/A+Le/cL1LiYbGMH0YPO2V4=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: [PATCH 2/3] batman-adv: Add missing include for atomic functions
Date: Fri, 24 May 2019 21:19:57 +0200
Message-Id: <20190524191958.30928-2-sven@narfation.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190524191958.30928-1-sven@narfation.org>
References: <20190524191958.30928-1-sven@narfation.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org; 
 s=20121; t=1558725606;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=3P9rjbyHPu1oskeRF35iHg1pGV6a+BjDYA/oUPR9TjQ=;
 b=tDQ/F9y3fGvSt1BAs1PtxReZbk8IbxXgQoPEsV7mBLOZiVQ1DOP55I4FYhF0fR+Aj9Ojil
 /inxRgq3YtBkAFlFRI5zUlPwxiEQyzY1coKuRrr1wANCcI4HjTDP9u8xJzRfycHZbutq1Z
 kwfdFSMb5ZsehUpfLEYURWamIUZiIVo=
ARC-Seal: i=1; s=20121; d=narfation.org; t=1558725606; a=rsa-sha256; cv=none;
 b=Vouehs0kE/ZRf/5szHID2PwUnsxTvASVdl0yYDb/2Tf4utLT1TsAowJ4JBa08p6aM8IaBm
 CcsWmUSSBWmI9W7dMzz+n4FDWss4BHx5wZigoYpHBvBwdDu+Map+dO+h8z1PuHH2oAnE0l
 oLl35yGbEwqNKblylMUfKdf1JiFpwvw=
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

main.h is using atomic_add_unless and log.h atomic_read. The main
header linux/atomic.h should be included for these files.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 net/batman-adv/log.h  | 1 +
 net/batman-adv/main.h | 1 +
 2 files changed, 2 insertions(+)

diff --git a/net/batman-adv/log.h b/net/batman-adv/log.h
index 5504637e..741cfa37 100644
--- a/net/batman-adv/log.h
+++ b/net/batman-adv/log.h
@@ -9,6 +9,7 @@
 
 #include "main.h"
 
+#include <linux/atomic.h>
 #include <linux/bitops.h>
 #include <linux/compiler.h>
 #include <linux/printk.h>
diff --git a/net/batman-adv/main.h b/net/batman-adv/main.h
index 11d051db..821a7de4 100644
--- a/net/batman-adv/main.h
+++ b/net/batman-adv/main.h
@@ -205,6 +205,7 @@ enum batadv_uev_type {
 
 /* Kernel headers */
 
+#include <linux/atomic.h>
 #include <linux/compiler.h>
 #include <linux/etherdevice.h>
 #include <linux/if_vlan.h>
-- 
2.20.1

