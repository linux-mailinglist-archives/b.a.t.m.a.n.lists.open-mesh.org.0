Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id A4BB11945BE
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 26 Mar 2020 18:44:13 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 14DCB80760;
	Thu, 26 Mar 2020 18:44:12 +0100 (CET)
Received: from dvalin.narfation.org (dvalin.narfation.org
 [IPv6:2a00:17d8:100::8b1])
 by diktynna.open-mesh.org (Postfix) with ESMTPS id CB40980161
 for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 26 Mar 2020 18:44:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
 s=20121; t=1585244230;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=1Ze59X/Xuk79G40sDazjf/0jrmx6Co2CpuMwyEMKtB0=;
 b=a5s7/HFvAAW3rpqYapML4clc9DBB5LEaau8384vSGcb1jeQYXEHNcp2vNnOsD+hCJ5ljH8
 vOs5UP7yPGyIgrmqUx9T/ZfS5bBfoPNaA0pvCaUeKi6g5A4zOoFF9rpPob5nEMI8e11dfv
 QigZaGpPJ57KGGHAYKsmxSzXrkzVPfM=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: [PATCH] batman-adv: Fix spelling error in term buffer
Date: Thu, 26 Mar 2020 18:37:07 +0100
Message-Id: <20200326173707.9644-1-sven@narfation.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1585244649;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:dkim-signature;
 bh=1Ze59X/Xuk79G40sDazjf/0jrmx6Co2CpuMwyEMKtB0=;
 b=BUDqfeEJ0ZtMXbGt5lMqOOSE/bBXaRIYoNGbEJbliVE2yx0f7qqhz6kGpVW6CIuPIysIT+
 WbEvSOzziajrdb/9N+XqNlq9256z9D+BrQ9031RWdgwcAlmjFPZoRAh4aVBpbpSYcbVqAK
 HtV6ImYi2g0YybeFHcjS/vg6nBYH3j0=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1585244649; a=rsa-sha256; cv=none;
 b=gPodOu0pnHzx1o7l+HiPv2kQzN0bYl3Wq7o4BUYn/Y54jy8AicUXAJCAwHsoXBjvj55E64
 gGlpQLOiB+XzEBEmbq1RqRLLECFWs7WlxYBX3rldPlhqvcQpYq+r9jLL0LM1Zv+YMEhwmI
 wywh1wBqQVY+D7dWpOYmowRDUUXb/qY=
ARC-Authentication-Results: i=1; diktynna.open-mesh.org;
 dkim=pass header.d=narfation.org header.s=20121 header.b=a5s7/HFv;
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

checkpatch warns about a typo in the word bufFer which was introduced in
commit 2191c1bcbc64 ("batman-adv: kernel doc for types.h").

Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 net/batman-adv/types.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/batman-adv/types.h b/net/batman-adv/types.h
index 6854cb2b..d8f754d1 100644
--- a/net/batman-adv/types.h
+++ b/net/batman-adv/types.h
@@ -711,7 +711,7 @@ struct batadv_priv_bla {
 
 /**
  * struct batadv_priv_debug_log - debug logging data
- * @log_buff: buffer holding the logs (ring bufer)
+ * @log_buff: buffer holding the logs (ring buffer)
  * @log_start: index of next character to read
  * @log_end: index of next character to write
  * @lock: lock protecting log_buff, log_start & log_end
-- 
2.20.1

