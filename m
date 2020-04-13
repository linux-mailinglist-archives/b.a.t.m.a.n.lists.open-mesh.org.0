Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id E015D1A6C12
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 13 Apr 2020 20:35:17 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 7094D8073E;
	Mon, 13 Apr 2020 20:35:16 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org
 [IPv6:2a00:17d8:100::8b1])
 by diktynna.open-mesh.org (Postfix) with ESMTPS id 0AF0D801B2
 for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 13 Apr 2020 20:35:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
 s=20121; t=1586802378;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=hPG5OvTJNj7X/j56uh0IKvQbDqL/T1oIW0tRj9hYP/o=;
 b=HlcJOsPWj8amLoAkZakSu4L197M3RjiNNwXwicwDoSbMyI66uUzKv9CG8quc/nWFLDsfbO
 8DLU8ChQx852eXUPgk/5CzyBFDyiYNknps+XzsAKznPWHs1hn0QY1gNTLjMIMuLM+7AWAJ
 /v6TAAlod1sfUC1rS7HyQtJwgqwk8vQ=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: [PATCH] batman-adv: trace: Drop unneeded types.h include
Date: Mon, 13 Apr 2020 20:26:07 +0200
Message-Id: <20200413182607.21802-1-sven@narfation.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1586802915;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:dkim-signature;
 bh=hPG5OvTJNj7X/j56uh0IKvQbDqL/T1oIW0tRj9hYP/o=;
 b=jSSzHArI3f1OY7AWsUueVBm/JY7O4nN0x1nCFxQ+qjUmOdhqssc1g/i8HPT4anIY73Ngdk
 /j/SbNOp42wAVmvG+FDxmtw9h1/c9eHhx/SVhgykOTX3V2xkaxkIbqu/9xUKmK6nuVMZQU
 qxQa5Fx5nLFAHCM3h9CIFtEiL6qvyMo=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1586802915; a=rsa-sha256; cv=none;
 b=Y/fXENds3+h6OgRpLzmicx9nMBTGNAeFoL6bDZk7ZicF7THACx2g6fIs2uzwzD5Ju5z8UJ
 V5h03wdIv2c5WX7IVxEev5VisgbVjzCIyOZ+N14foXnOVYQkbbEhMOqZAwAL3fvLH0D7Q5
 Dp1d87C6xOmXzcBFIlGHjRmZnkJXSVc=
ARC-Authentication-Results: i=1; diktynna.open-mesh.org;
 dkim=pass header.d=narfation.org header.s=20121 header.b=HlcJOsPW;
 spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org
X-BeenThere: b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 2.1.29
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

The commit 04ae87a52074 ("ftrace: Rework event_create_dir()") restructured
various macros in the ftrace framework. These changes also had the nice
side effect that the linux/types.h include is no longer necessary to define
some of the types used by these macros.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 net/batman-adv/trace.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/net/batman-adv/trace.h b/net/batman-adv/trace.h
index f631b1e0..a8754757 100644
--- a/net/batman-adv/trace.h
+++ b/net/batman-adv/trace.h
@@ -15,7 +15,6 @@
 #include <linux/percpu.h>
 #include <linux/printk.h>
 #include <linux/tracepoint.h>
-#include <linux/types.h>
 
 #undef TRACE_SYSTEM
 #define TRACE_SYSTEM batadv
-- 
2.20.1

