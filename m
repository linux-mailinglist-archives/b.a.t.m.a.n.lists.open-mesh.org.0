Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [78.46.248.236])
	by mail.lfdr.de (Postfix) with ESMTPS id BA09B58095
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 27 Jun 2019 12:40:13 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 0556082767;
	Thu, 27 Jun 2019 12:39:55 +0200 (CEST)
Received: from mail.mail.packetmixer.de (packetmixer.de
 [IPv6:2001:4d88:2000:24::c0de])
 by open-mesh.org (Postfix) with ESMTPS id A1447826C6
 for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 27 Jun 2019 12:39:44 +0200 (CEST)
Received: from kero.packetmixer.de (ip-109-41-128-179.web.vodafone.de
 [109.41.128.179])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mail.packetmixer.de (Postfix) with ESMTPSA id 5576862073;
 Thu, 27 Jun 2019 12:39:44 +0200 (CEST)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: davem@davemloft.net
Subject: [PATCH 03/10] batman-adv: Add missing include for atomic functions
Date: Thu, 27 Jun 2019 12:39:31 +0200
Message-Id: <20190627103938.7488-4-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20190627103938.7488-1-sw@simonwunderlich.de>
References: <20190627103938.7488-1-sw@simonwunderlich.de>
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
Cc: netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

From: Sven Eckelmann <sven@narfation.org>

main.h is using atomic_add_unless and log.h atomic_read. The main
header linux/atomic.h should be included for these files.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
---
 net/batman-adv/log.h  | 1 +
 net/batman-adv/main.h | 1 +
 2 files changed, 2 insertions(+)

diff --git a/net/batman-adv/log.h b/net/batman-adv/log.h
index 5504637e63d8..741cfa3719ff 100644
--- a/net/batman-adv/log.h
+++ b/net/batman-adv/log.h
@@ -9,6 +9,7 @@
 
 #include "main.h"
 
+#include <linux/atomic.h>
 #include <linux/bitops.h>
 #include <linux/compiler.h>
 #include <linux/printk.h>
diff --git a/net/batman-adv/main.h b/net/batman-adv/main.h
index 11d051dbbda4..821a7de45256 100644
--- a/net/batman-adv/main.h
+++ b/net/batman-adv/main.h
@@ -205,6 +205,7 @@ enum batadv_uev_type {
 
 /* Kernel headers */
 
+#include <linux/atomic.h>
 #include <linux/compiler.h>
 #include <linux/etherdevice.h>
 #include <linux/if_vlan.h>
-- 
2.11.0

