Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [78.46.248.236])
	by mail.lfdr.de (Postfix) with ESMTPS id 16DD714ECA9
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 31 Jan 2020 13:47:31 +0100 (CET)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 16ADB809F2;
	Fri, 31 Jan 2020 13:47:24 +0100 (CET)
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
 by open-mesh.org (Postfix) with ESMTPS id CCE6E80258
 for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 31 Jan 2020 13:47:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
 s=20121; t=1580474498;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=Juzxwgq5XXebVXOlIntdf8znPL0Wt5dkSQFBqOXoA7I=;
 b=q9llWQbnX1/UWWeZvqBjMFQd4CjfGixI/aSJBr+P++39jiVD9qZN14mPL5GTIo17zimbF3
 QTjRIg47H+DwFMrWhGoIXmoXummWuDfSXM/+OUyWjd1MoSEV011Wk6QT9FXw4+m7tJtULz
 P486gj3r+Jcgo8YELva5Be9tOb63gRA=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: [PATCH] batman-adv: Drop workaround for Debian's make-kpkg
Date: Fri, 31 Jan 2020 13:40:50 +0100
Message-Id: <20200131124050.4984-1-sven@narfation.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1580474838;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:dkim-signature;
 bh=Juzxwgq5XXebVXOlIntdf8znPL0Wt5dkSQFBqOXoA7I=;
 b=rrFn3TiSDT35/MrGezSsaApmDrT1go0TN0XZNjaVQsU1szyXPCFb1mLQDwQmWb0dl4T/yB
 EPvFiMK/wMEF4l8gYOani29HMj82m1Dj+rc052mUm/DlHN694m7BJuv5c6dYZsNqrqW+or
 Y+DAt5m2FIrOBqPfEse2zQ4GVmtqZs8=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1580474838; a=rsa-sha256; cv=none;
 b=FzaW+nPYXO3dYBa4luYQYJDGox7mXLsP28wJDJcl4VB1alYR7UaKmxQcuKjy3C0016jzbR
 0XHUKNmVufJAOB+46q3A5daEzU54SW8MFo4ISWdlq2Z0tynS5isQjFvJbA2KXUhgBuZLvl
 TfPoqx8K77X9qbv8V3vJB89uRB9Bgs0=
ARC-Authentication-Results: i=1; open-mesh.org;
 dkim=pass header.d=narfation.org header.s=20121 header.b=q9llWQbn;
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

The make-kpkg is a Debian specific tool to create a debian kernel package.
It is not really maintained anymore and also not used to build the official
Debian kernel packages.

The correct way to have a kernel package under Debian is either to use the
offical packages from the Debian main repository or to build them using the
Linux make target deb-pkg.

There is no reason to ship this workaround when Debian isn't even shipping
make-kpkg with Debian buster and also not in the current Debian bullseye
development snapshot.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 compat.h | 9 ---------
 1 file changed, 9 deletions(-)

diff --git a/compat.h b/compat.h
index b915d914..21bacc5d 100644
--- a/compat.h
+++ b/compat.h
@@ -28,15 +28,6 @@
 
 #endif /* LINUX_VERSION_IS_LESS(4, 3, 0) */
 
-#if LINUX_VERSION_IS_LESS(4, 6, 0)
-
-/* workaround for current issues with Debian's make-kpkg */
-#if LINUX_VERSION_IS_GEQ(4, 5, 0)
-#include <uapi/linux/pkt_cls.h>
-#endif
-
-#endif /* LINUX_VERSION_IS_LESS(4, 6, 0) */
-
 #if LINUX_VERSION_IS_LESS(4, 15, 0)
 
 #define batadv_softif_slave_add(__dev, __slave_dev, __extack) \
-- 
2.20.1

