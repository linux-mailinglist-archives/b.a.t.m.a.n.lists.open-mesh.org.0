Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [IPv6:2a01:4f8:141:3341:78:46:248:236])
	by mail.lfdr.de (Postfix) with ESMTPS id 85E2E12DC43
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed,  1 Jan 2020 00:08:05 +0100 (CET)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 36A9D807E3;
	Wed,  1 Jan 2020 00:07:58 +0100 (CET)
Received: from dvalin.narfation.org (dvalin.narfation.org
 [IPv6:2a00:17d8:100::8b1])
 by open-mesh.org (Postfix) with ESMTPS id 234658047E
 for <b.a.t.m.a.n@lists.open-mesh.org>; Wed,  1 Jan 2020 00:07:55 +0100 (CET)
Received: by dvalin.narfation.org (Postfix, from userid 1000)
 id D32C1203F6; Tue, 31 Dec 2019 23:01:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
 s=20121; t=1577833261;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=ncXBWbcxuRtKGdkAcOi7BSwIHskhJ2o3jUcvTklp8AE=;
 b=DXrA8rSIY43S0LORvfzzvPyay/g97o/RRagwq8eBWZsYt25HLdwndR96IryOpmjnVgZZ9w
 uPTkRreIxTcB7d80uz60Ik27nwAV76CNDbs/Ykc6r7F7FCT+A1NMcBAhWrCqxX9uDEobDw
 v5lR1PV+kcNAPrNPPiKLxsAdt9vW8OQ=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: [PATCH 1/3] alfred: Update copyright years for 2020
Date: Wed,  1 Jan 2020 00:00:59 +0100
Message-Id: <20191231230101.32668-1-sven@narfation.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1577833675;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:dkim-signature;
 bh=ncXBWbcxuRtKGdkAcOi7BSwIHskhJ2o3jUcvTklp8AE=;
 b=J9ZwlPehuGRm9L9gFFyiz0jNTPn5oGk5MyXlWoFSL/DckRxCIbFcO8IKtVPQCbRiISHgRB
 yVcUC6CHSeQfTypbkFcGoXA9cAINMFXZwaNxB7aYdPrsoSw64S4MMw66kgA4IKQ5OUS6fc
 tCLeFYAvkpAKgJyuTqIgi9OPJTFoftk=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1577833675; a=rsa-sha256; cv=none;
 b=ZOzAG+j43/adxcefPHmsTTmRnqIPHNSk3nmWSrtnep3hm/dwq7VuXTm0CeZ/yyg0CkILnW
 wJBNKSTHL62YjvAkpXSWKC0FchrOgv+DrFn4oSMVck2JbLUJwvzLCTmlPqM+unktHuRifD
 rjjVjZZb4YM2Qbg55K4gb2wr1RD2UB8=
ARC-Authentication-Results: i=1; open-mesh.org;
 dkim=pass header.d=narfation.org header.s=20121 header.b=DXrA8rSI;
 spf=none (open-mesh.org: domain of sven@dvalin.narfation.org has no SPF policy
 when checking 2a00:17d8:100::8b1) smtp.mailfrom=sven@dvalin.narfation.org
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

Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 Makefile           | 2 +-
 alfred.h           | 2 +-
 batadv_query.c     | 2 +-
 batadv_query.h     | 2 +-
 batadv_querynl.c   | 2 +-
 batadv_querynl.h   | 2 +-
 batman_adv.h       | 2 +-
 bitops.h           | 2 +-
 client.c           | 2 +-
 gpsd/Makefile      | 2 +-
 gpsd/alfred-gpsd.c | 2 +-
 gpsd/alfred-gpsd.h | 2 +-
 hash.c             | 2 +-
 hash.h             | 2 +-
 main.c             | 2 +-
 netlink.c          | 2 +-
 netlink.h          | 2 +-
 netsock.c          | 2 +-
 packet.h           | 2 +-
 recv.c             | 2 +-
 send.c             | 2 +-
 server.c           | 2 +-
 unix_sock.c        | 2 +-
 util.c             | 2 +-
 vis/Makefile       | 2 +-
 vis/vis.c          | 2 +-
 vis/vis.h          | 2 +-
 27 files changed, 27 insertions(+), 27 deletions(-)

diff --git a/Makefile b/Makefile
index 8840961..2bfe18c 100755
--- a/Makefile
+++ b/Makefile
@@ -2,7 +2,7 @@
 # SPDX-License-Identifier: GPL-2.0
 # -*- makefile -*-
 #
-# Copyright (C) 2012-2019  B.A.T.M.A.N. contributors
+# Copyright (C) 2012-2020  B.A.T.M.A.N. contributors
 #
 # License-Filename: LICENSES/preferred/GPL-2.0
 
diff --git a/alfred.h b/alfred.h
index 2b7e175..38cc27b 100644
--- a/alfred.h
+++ b/alfred.h
@@ -1,5 +1,5 @@
 /* SPDX-License-Identifier: GPL-2.0 */
-/* Copyright (C) 2012-2019  B.A.T.M.A.N. contributors:
+/* Copyright (C) 2012-2020  B.A.T.M.A.N. contributors:
  *
  * Simon Wunderlich
  *
diff --git a/batadv_query.c b/batadv_query.c
index fb72e77..f758b42 100644
--- a/batadv_query.c
+++ b/batadv_query.c
@@ -1,5 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0
-/* Copyright (C) 2012-2019  B.A.T.M.A.N. contributors:
+/* Copyright (C) 2012-2020  B.A.T.M.A.N. contributors:
  *
  * Simon Wunderlich
  *
diff --git a/batadv_query.h b/batadv_query.h
index 7e93791..291292d 100644
--- a/batadv_query.h
+++ b/batadv_query.h
@@ -1,5 +1,5 @@
 /* SPDX-License-Identifier: GPL-2.0 */
-/* Copyright (C) 2006-2019  B.A.T.M.A.N. contributors:
+/* Copyright (C) 2006-2020  B.A.T.M.A.N. contributors:
  *
  * Simon Wunderlich, Marek Lindner
  *
diff --git a/batadv_querynl.c b/batadv_querynl.c
index d5e9402..2793242 100644
--- a/batadv_querynl.c
+++ b/batadv_querynl.c
@@ -1,5 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0
-/* Copyright (C) 2009-2019  B.A.T.M.A.N. contributors:
+/* Copyright (C) 2009-2020  B.A.T.M.A.N. contributors:
  *
  * Marek Lindner <mareklindner@neomailbox.ch>, Andrew Lunn <andrew@lunn.ch>
  *
diff --git a/batadv_querynl.h b/batadv_querynl.h
index e2066c2..f684ad8 100644
--- a/batadv_querynl.h
+++ b/batadv_querynl.h
@@ -1,5 +1,5 @@
 /* SPDX-License-Identifier: GPL-2.0 */
-/* Copyright (C) 2009-2019  B.A.T.M.A.N. contributors:
+/* Copyright (C) 2009-2020  B.A.T.M.A.N. contributors:
  *
  * Marek Lindner <mareklindner@neomailbox.ch>, Andrew Lunn <andrew@lunn.ch>
  *
diff --git a/batman_adv.h b/batman_adv.h
index 67f4636..617c180 100644
--- a/batman_adv.h
+++ b/batman_adv.h
@@ -1,5 +1,5 @@
 /* SPDX-License-Identifier: MIT */
-/* Copyright (C) 2016-2019  B.A.T.M.A.N. contributors:
+/* Copyright (C) 2016-2020  B.A.T.M.A.N. contributors:
  *
  * Matthias Schiffer
  */
diff --git a/bitops.h b/bitops.h
index ead4a4f..2333aa4 100644
--- a/bitops.h
+++ b/bitops.h
@@ -2,7 +2,7 @@
 /* Minimal Linux-like bit manipulation helper functions
  * (reduced version for alfred)
  *
- * Copyright (c) 2012-2019, Sven Eckelmann <sven@narfation.org>
+ * Copyright (c) 2012-2020, Sven Eckelmann <sven@narfation.org>
  *
  * License-Filename: LICENSES/preferred/MIT
  */
diff --git a/client.c b/client.c
index 85a05ce..b808295 100644
--- a/client.c
+++ b/client.c
@@ -1,5 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0
-/* Copyright (C) 2012-2019  B.A.T.M.A.N. contributors:
+/* Copyright (C) 2012-2020  B.A.T.M.A.N. contributors:
  *
  * Simon Wunderlich
  *
diff --git a/gpsd/Makefile b/gpsd/Makefile
index 81bf254..0645573 100755
--- a/gpsd/Makefile
+++ b/gpsd/Makefile
@@ -2,7 +2,7 @@
 # SPDX-License-Identifier: GPL-2.0
 # -*- makefile -*-
 #
-# Copyright (C) 2013-2019  B.A.T.M.A.N. contributors
+# Copyright (C) 2013-2020  B.A.T.M.A.N. contributors
 #
 # License-Filename: LICENSES/preferred/GPL-2.0
 
diff --git a/gpsd/alfred-gpsd.c b/gpsd/alfred-gpsd.c
index 6e9137c..884bdbf 100644
--- a/gpsd/alfred-gpsd.c
+++ b/gpsd/alfred-gpsd.c
@@ -1,5 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0
-/* Copyright (C) 2013-2019  B.A.T.M.A.N. contributors:
+/* Copyright (C) 2013-2020  B.A.T.M.A.N. contributors:
  *
  * Andrew Lunn, Simon Wunderlich
  *
diff --git a/gpsd/alfred-gpsd.h b/gpsd/alfred-gpsd.h
index addfa4f..5783eee 100644
--- a/gpsd/alfred-gpsd.h
+++ b/gpsd/alfred-gpsd.h
@@ -1,5 +1,5 @@
 /* SPDX-License-Identifier: GPL-2.0 */
-/* Copyright (C) 2013-2019  B.A.T.M.A.N. contributors:
+/* Copyright (C) 2013-2020  B.A.T.M.A.N. contributors:
  *
  * Andrew Lunn, Simon Wunderlich
  *
diff --git a/hash.c b/hash.c
index 02ac15e..82a287e 100644
--- a/hash.c
+++ b/hash.c
@@ -1,5 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0
-/* Copyright (C) 2006-2019  B.A.T.M.A.N. contributors:
+/* Copyright (C) 2006-2020  B.A.T.M.A.N. contributors:
  *
  * Simon Wunderlich, Marek Lindner
  *
diff --git a/hash.h b/hash.h
index f5a8fb5..32a9e57 100644
--- a/hash.h
+++ b/hash.h
@@ -1,5 +1,5 @@
 /* SPDX-License-Identifier: GPL-2.0 */
-/* Copyright (C) 2006-2019  B.A.T.M.A.N. contributors:
+/* Copyright (C) 2006-2020  B.A.T.M.A.N. contributors:
  *
  * Simon Wunderlich, Marek Lindner
  *
diff --git a/main.c b/main.c
index f633462..57bea61 100644
--- a/main.c
+++ b/main.c
@@ -1,5 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0
-/* Copyright (C) 2012-2019  B.A.T.M.A.N. contributors:
+/* Copyright (C) 2012-2020  B.A.T.M.A.N. contributors:
  *
  * Simon Wunderlich
  *
diff --git a/netlink.c b/netlink.c
index e8fe55e..865ed9f 100644
--- a/netlink.c
+++ b/netlink.c
@@ -1,5 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0
-/* Copyright (C) 2009-2019  B.A.T.M.A.N. contributors:
+/* Copyright (C) 2009-2020  B.A.T.M.A.N. contributors:
  *
  * Marek Lindner <mareklindner@neomailbox.ch>, Andrew Lunn <andrew@lunn.ch>
  *
diff --git a/netlink.h b/netlink.h
index 26ad1e8..2964a2b 100644
--- a/netlink.h
+++ b/netlink.h
@@ -1,5 +1,5 @@
 /* SPDX-License-Identifier: GPL-2.0 */
-/* Copyright (C) 2009-2019  B.A.T.M.A.N. contributors:
+/* Copyright (C) 2009-2020  B.A.T.M.A.N. contributors:
  *
  * Marek Lindner <mareklindner@neomailbox.ch>, Andrew Lunn <andrew@lunn.ch>
  *
diff --git a/netsock.c b/netsock.c
index fcbc20b..9b200d2 100644
--- a/netsock.c
+++ b/netsock.c
@@ -1,5 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0
-/* Copyright (C) 2012-2019  B.A.T.M.A.N. contributors:
+/* Copyright (C) 2012-2020  B.A.T.M.A.N. contributors:
  *
  * Simon Wunderlich
  *
diff --git a/packet.h b/packet.h
index 564afad..ad2dfa6 100644
--- a/packet.h
+++ b/packet.h
@@ -1,5 +1,5 @@
 /* SPDX-License-Identifier: MIT */
-/* Copyright (C) 2012-2019  B.A.T.M.A.N. contributors:
+/* Copyright (C) 2012-2020  B.A.T.M.A.N. contributors:
  *
  * Simon Wunderlich, Sven Eckelmann
  *
diff --git a/recv.c b/recv.c
index e7c2c24..74a0f85 100644
--- a/recv.c
+++ b/recv.c
@@ -1,5 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0
-/* Copyright (C) 2012-2019  B.A.T.M.A.N. contributors:
+/* Copyright (C) 2012-2020  B.A.T.M.A.N. contributors:
  *
  * Simon Wunderlich
  *
diff --git a/send.c b/send.c
index d4043bc..02f4022 100644
--- a/send.c
+++ b/send.c
@@ -1,5 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0
-/* Copyright (C) 2012-2019  B.A.T.M.A.N. contributors:
+/* Copyright (C) 2012-2020  B.A.T.M.A.N. contributors:
  *
  * Simon Wunderlich
  *
diff --git a/server.c b/server.c
index 18109cc..cdd5be2 100644
--- a/server.c
+++ b/server.c
@@ -1,5 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0
-/* Copyright (C) 2012-2019  B.A.T.M.A.N. contributors:
+/* Copyright (C) 2012-2020  B.A.T.M.A.N. contributors:
  *
  * Simon Wunderlich
  *
diff --git a/unix_sock.c b/unix_sock.c
index 1d17cee..420affc 100644
--- a/unix_sock.c
+++ b/unix_sock.c
@@ -1,5 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0
-/* Copyright (C) 2012-2019  B.A.T.M.A.N. contributors:
+/* Copyright (C) 2012-2020  B.A.T.M.A.N. contributors:
  *
  * Simon Wunderlich
  *
diff --git a/util.c b/util.c
index e14350e..f1dc0dc 100644
--- a/util.c
+++ b/util.c
@@ -1,5 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0
-/* Copyright (C) 2012-2019  B.A.T.M.A.N. contributors:
+/* Copyright (C) 2012-2020  B.A.T.M.A.N. contributors:
  *
  * Simon Wunderlich
  *
diff --git a/vis/Makefile b/vis/Makefile
index 53d1f44..cfd0921 100755
--- a/vis/Makefile
+++ b/vis/Makefile
@@ -2,7 +2,7 @@
 # SPDX-License-Identifier: GPL-2.0
 # -*- makefile -*-
 #
-# Copyright (C) 2013-2019  B.A.T.M.A.N. contributors
+# Copyright (C) 2013-2020  B.A.T.M.A.N. contributors
 #
 # License-Filename: LICENSES/preferred/GPL-2.0
 
diff --git a/vis/vis.c b/vis/vis.c
index cdc5524..17e067e 100644
--- a/vis/vis.c
+++ b/vis/vis.c
@@ -1,5 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0
-/* Copyright (C) 2013-2019  B.A.T.M.A.N. contributors:
+/* Copyright (C) 2013-2020  B.A.T.M.A.N. contributors:
  *
  * Simon Wunderlich
  *
diff --git a/vis/vis.h b/vis/vis.h
index fa5a248..3e8277a 100644
--- a/vis/vis.h
+++ b/vis/vis.h
@@ -1,5 +1,5 @@
 /* SPDX-License-Identifier: GPL-2.0 */
-/* Copyright (C) 2013-2019  B.A.T.M.A.N. contributors:
+/* Copyright (C) 2013-2020  B.A.T.M.A.N. contributors:
  *
  * Simon Wunderlich
  *
-- 
2.20.1

