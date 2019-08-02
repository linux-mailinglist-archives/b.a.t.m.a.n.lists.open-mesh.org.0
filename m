Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [78.46.248.236])
	by mail.lfdr.de (Postfix) with ESMTPS id 64F197ECB7
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri,  2 Aug 2019 08:36:05 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id A747481EE7;
	Fri,  2 Aug 2019 08:36:00 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
 by open-mesh.org (Postfix) with ESMTPS id 22A61808E0
 for <b.a.t.m.a.n@lists.open-mesh.org>; Fri,  2 Aug 2019 08:35:57 +0200 (CEST)
Received: from sven-desktop.home.narfation.org (unknown
 [IPv6:2a00:1ca0:1480:f9fc:eddf:ecf4:8861:c186])
 by dvalin.narfation.org (Postfix) with ESMTPSA id AA2F620045;
 Fri,  2 Aug 2019 06:35:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
 s=20121; t=1564727756;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=gVhkNRXMzFndo/1VM3w1PbpgG3Y1ZEtQwQqkOfJOa+U=;
 b=oaKm32H5OtIvQ41K4lcuRx6t0ZfLMVhy/hl5lISSjAkGXYB6XMVZ7f1VjIuD8SOHxFSXII
 PXN2GfK9ziCZfgAfp7KzjGIQhGMf3UrCSRdW5idTNWtegLXSlbhWZGamj/W3s1d4VZebdr
 RPCoTUDyJ27mcj9k4dH2qBA+P2UV3Ew=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: [PATCH] alfred: vis: Fix ifindex check when registering interface
Date: Fri,  2 Aug 2019 08:35:53 +0200
Message-Id: <20190802063553.5666-1-sven@narfation.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org; 
 s=20121; t=1564727756;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=gVhkNRXMzFndo/1VM3w1PbpgG3Y1ZEtQwQqkOfJOa+U=;
 b=N+wMiW/lvxV9e7oxjnjBSld7BMuoavsSAAVQf1x1hoNEwqGcLiV6cXY2u95q8oIyP3vtBd
 wlflokc2T7E4tuzspE0DN9syFKXiGTzRzKIKAfwHewmFPUQmxMg8HCoU4xrpw27B4w5C6J
 FwauvoVq+SC8lWrtDV+iEyaiINg0TrA=
ARC-Seal: i=1; s=20121; d=narfation.org; t=1564727756; a=rsa-sha256; cv=none;
 b=qEWkhOiZvmNpBUKBaILKJYhCbgke88S5VWrulXwygIbCRMdvVYvVlEB8YzN7hlSHyF/KxY
 jLXQQuIGkyBktJxvsycpd2RKihVGG34hs3S2WVS+U5+mmCY6eMdFhe4aumhPCZG1ZlQRaH
 u/fM32XzyZ8PJoPTzuQvob7fDzUqQqg=
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

The return value of if_nametoindex should be checked before the rtnl query
is send to the kernel. Otherwise we might try to operate on an ifindex
which doesn't exist in the kernel - which will never register any interface.

Fixes: a34f044de561 ("alfred: vis: Use rtnl to query list of hardifs of meshif")
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 vis/vis.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/vis/vis.c b/vis/vis.c
index 8df3056..cdc5524 100644
--- a/vis/vis.c
+++ b/vis/vis.c
@@ -617,7 +617,7 @@ static int register_interfaces(struct globals *globals)
 	};
 
 	register_arg.ifindex = if_nametoindex(globals->interface);
-	if (!globals->interface)
+	if (!register_arg.ifindex)
 		return EXIT_FAILURE;
 
 
-- 
2.20.1

