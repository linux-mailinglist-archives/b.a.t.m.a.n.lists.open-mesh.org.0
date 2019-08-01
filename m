Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [78.46.248.236])
	by mail.lfdr.de (Postfix) with ESMTPS id DDB4C7DCE2
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu,  1 Aug 2019 15:54:49 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 534AB80BCC;
	Thu,  1 Aug 2019 15:54:40 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org
 [IPv6:2a00:17d8:100::8b1])
 by open-mesh.org (Postfix) with ESMTPS id 086238067A
 for <b.a.t.m.a.n@lists.open-mesh.org>; Thu,  1 Aug 2019 15:54:35 +0200 (CEST)
Received: from sven-desktop.home.narfation.org (unknown
 [IPv6:2a00:1ca0:1480:f9fc::4065])
 by dvalin.narfation.org (Postfix) with ESMTPSA id 724C8200F1;
 Thu,  1 Aug 2019 13:54:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
 s=20121; t=1564667675;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=pxv5KrOa149bXSdvOf8e7NaDD6IOvEtW4J3InBKk7Pg=;
 b=rTm2kqnn8HiksUgprHp8H0guxuyHRTgQv1VIQDTS96V1dx85+zQKr8/DzQ1aHjuoEqh1Qb
 eX657AHPAniIU4RoArEA3ES5ZfB6ANIDWZHIkAwkn0z1HjGdxSXb9zi3Rl5AOvViiLS+Ek
 kN1iripIgCYlZi0I92U7rDAsW6HQnMQ=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: [PATCH] alfred: vis: Add missing include for ifinfomsg
Date: Thu,  1 Aug 2019 15:54:32 +0200
Message-Id: <20190801135432.28244-1-sven@narfation.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org; 
 s=20121; t=1564667675;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=pxv5KrOa149bXSdvOf8e7NaDD6IOvEtW4J3InBKk7Pg=;
 b=CA5i/sbIZG8P67xOVmUV1Q4RIEx/83GbDvCLJs0pEKinuvtS5AGFqiBEho71UzZjnYXidQ
 NQKYtdZJ08g9IdXATUv0CMN25tMyU1TIEZAd/ZjGGcaz35qgEit1jVO10KLqqvDhQ5YP0L
 2VuuXcefvUaeKtLeT2GOknMl5QpTgpQ=
ARC-Seal: i=1; s=20121; d=narfation.org; t=1564667675; a=rsa-sha256; cv=none;
 b=j+gzNbm4jVDuSKDHTFnuLXCZ4F1bMftCQU3fPZdgrZOueTSP9771iLR9R9DC96dMcYyRle
 zXuPtPDNwTx9dPiaxnWfnJrHDdjXlYGiHnV1/1r88vrdggXZMgH5G1TrfdlrPLJdY8xHKl
 Gdq/hDqzkBOtyjGe6bJjE+gh3TZ8sgQ=
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

Fixes: 0fc6e6674428 ("alfred: vis: Retrieve hardif status via generic netlink")
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 vis/vis.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/vis/vis.c b/vis/vis.c
index 9474563..8df3056 100644
--- a/vis/vis.c
+++ b/vis/vis.c
@@ -10,6 +10,7 @@
 #include <dirent.h>
 #include <errno.h>
 #include <getopt.h>
+#include <linux/rtnetlink.h>
 #include <net/if.h>
 #include <netinet/in.h>
 #include <signal.h>
-- 
2.20.1

