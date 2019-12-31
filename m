Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [78.46.248.236])
	by mail.lfdr.de (Postfix) with ESMTPS id 89A1F12DC60
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed,  1 Jan 2020 01:10:32 +0100 (CET)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 16FCC807DA;
	Wed,  1 Jan 2020 01:10:21 +0100 (CET)
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
 by open-mesh.org (Postfix) with ESMTPS id 7571C800E1
 for <b.a.t.m.a.n@lists.open-mesh.org>; Wed,  1 Jan 2020 01:09:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
 s=20121; t=1577836567;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=4Na6cVpDfVKFQrD2RqgR418ZTt5yGZfVhrZlY+v0R4o=;
 b=JRo5r7ajswvmjpwfiQ+NINua90HOGziYbTA/nohNyM2g4N55J6GCp3v2v5L4KMvmahfkYc
 P9Pvng9kNL7jWkq3L7oAM+lXWJ+syDxQ8cZmna0m56qC4UaDr1sB0ezHzc8oD8g28jyOfZ
 rAdyEh5kPcgRlydiRhrA7IIBQ6CCpiI=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: [PATCH] batman-adv: Disable CONFIG_BATMAN_ADV_SYSFS by default
Date: Wed,  1 Jan 2020 00:55:39 +0100
Message-Id: <20191231235539.18041-1-sven@narfation.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1577837399;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:dkim-signature;
 bh=4Na6cVpDfVKFQrD2RqgR418ZTt5yGZfVhrZlY+v0R4o=;
 b=snd6klGwNJ+dvENr1M7Ozvnq/bXj2SV/SWQxbYCKPkj/bfc/SOHQjnGN5a7wFwHt4iTSaB
 cJWEddhSCjA6+mhMB9JEgcj+NQ72fGceBKVGbsofKxkhstZV/bu1uY2ba9uA9apF0C91Th
 6QPhENL0xTB1HOKVbTs6VrzeFwsk2Kw=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1577837399; a=rsa-sha256; cv=none;
 b=zzNYY2hc0DZZhUDWYYiSEey88gdeR15XT2X6MrBd2a5+59fp/gCseXSyAv5Ssau+83bjd/
 1IdWoCIcmEI99ZHDx4dPgnSEQbhyqnbFpOSB/pSVLPbguDpa62ER3kFTUeCARsWzX2dw/B
 e9rBPAfPOxQC3t50s223RBMLfCvZe04=
ARC-Authentication-Results: i=1; open-mesh.org;
 dkim=pass header.d=narfation.org header.s=20121 header.b=JRo5r7aj;
 spf=pass (open-mesh.org: domain of sven@narfation.org designates 213.160.73.56
 as permitted sender) smtp.mailfrom=sven@narfation.org
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

The sysfs support in batman-adv is deprecated since a while and will be
removed completely next year.

All tools which were known to the batman-adv development team are
supporting the batman-adv netlink interface since a while. Thus
disabling CONFIG_BATMAN_ADV_SYSFS by default should not cause problems on
most systems. It is still possible to enable it in case it is still
required in a specific setup.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 Makefile               | 2 +-
 README.external.rst    | 2 +-
 net/batman-adv/Kconfig | 1 -
 3 files changed, 2 insertions(+), 3 deletions(-)

diff --git a/Makefile b/Makefile
index e391a1e7..448a14d6 100644
--- a/Makefile
+++ b/Makefile
@@ -17,7 +17,7 @@ export CONFIG_BATMAN_ADV_NC=n
 # B.A.T.M.A.N. multicast optimizations:
 export CONFIG_BATMAN_ADV_MCAST=y
 # B.A.T.M.A.N. sysfs support:
-export CONFIG_BATMAN_ADV_SYSFS=y
+export CONFIG_BATMAN_ADV_SYSFS=n
 # B.A.T.M.A.N. tracing support:
 export CONFIG_BATMAN_ADV_TRACING=n
 # B.A.T.M.A.N. V routing algorithm (experimental):
diff --git a/README.external.rst b/README.external.rst
index 6db0117d..5a5da14e 100644
--- a/README.external.rst
+++ b/README.external.rst
@@ -49,7 +49,7 @@ module).  Available  options  and  their    possible   values are
  * ``CONFIG_BATMAN_ADV_DAT=[y*|n]`` (B.A.T.M.A.N. Distributed ARP Table)
  * ``CONFIG_BATMAN_ADV_MCAST=[y*|n]`` (B.A.T.M.A.N. multicast optimizations)
  * ``CONFIG_BATMAN_ADV_NC=[y|n*]`` (B.A.T.M.A.N. Network Coding)
- * ``CONFIG_BATMAN_ADV_SYSFS=[y*|n]`` (B.A.T.M.A.N. sysfs support)
+ * ``CONFIG_BATMAN_ADV_SYSFS=[y|n*]`` (B.A.T.M.A.N. sysfs support)
  * ``CONFIG_BATMAN_ADV_TRACING=[y|n*]`` (B.A.T.M.A.N. tracing support)
  * ``CONFIG_BATMAN_ADV_BATMAN_V=[y*|n]`` (B.A.T.M.A.N. V routing algorithm)
 
diff --git a/net/batman-adv/Kconfig b/net/batman-adv/Kconfig
index 045b2b18..c762758a 100644
--- a/net/batman-adv/Kconfig
+++ b/net/batman-adv/Kconfig
@@ -100,7 +100,6 @@ config BATMAN_ADV_DEBUG
 config BATMAN_ADV_SYSFS
 	bool "batman-adv sysfs entries"
 	depends on BATMAN_ADV
-	default y
 	help
 	  Say Y here if you want to enable batman-adv device configuration and
 	  status interface through sysfs attributes. It is replaced by the
-- 
2.20.1

