Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A0902E82A2
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri,  1 Jan 2021 00:10:40 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 64876819CC;
	Fri,  1 Jan 2021 00:10:39 +0100 (CET)
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 3D31A80128
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri,  1 Jan 2021 00:10:36 +0100 (CET)
Received: by dvalin.narfation.org (Postfix, from userid 1000)
	id A58D420EB6; Thu, 31 Dec 2020 23:01:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1609455662;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=Jhj1NtcEQrc6Ep9yw5gzpTNOPiM6my0di/GjQEZ+kRk=;
	b=xooR0MxdeGUubtzeuNhC1Rz9t9b7HghOhtoxRhfRHi0ZVAZ3i/Q4RL5FPy9iNdlwxGDUDh
	q58b24BR8qyQIZFl9BYoqsPoyXC/Kfl30KTLhVkN1jJqKcgwFeqhzvaUFha1oYBcWJhWzT
	DOryEWHineIIIGLGsbTb19ub1ES3Jmc=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
Subject: [PATCH 1/3] alfred: Update copyright years for 2021
Date: Fri,  1 Jan 2021 00:01:00 +0100
Message-Id: <20201231230102.10127-1-sven@narfation.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1609456236;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=Jhj1NtcEQrc6Ep9yw5gzpTNOPiM6my0di/GjQEZ+kRk=;
	b=ps/yJ2mmsLNbxzuoyjmuXEcoecrIqKxGjoVfeoncviM9cbzWIgHLyHuGSf4fR/ry9OEguX
	P7qhkWylWFvhJ/Cyw7obrm2zkxFitzZV03NR+2awyQ/4TtjGVee7vLtfqtpyUnma53bxG/
	yG9UFQxgsQl1VlA9JNBr3TX48687F2E=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=xooR0Mxd;
	spf=none (diktynna.open-mesh.org: domain of sven@dvalin.narfation.org has no SPF policy when checking 213.160.73.56) smtp.mailfrom=sven@dvalin.narfation.org
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1609456236; a=rsa-sha256;
	cv=none;
	b=J1+gMahJhJkfZgBabcIT7/yeQuSCeC4kwK6ZLZ3wFTBhdUg6zOXLbqsHWpOjR8ynJXEj8B
	T069Fl2J506oJBF/6c7/DHOqkU+Pyhhpa1nfttMJFpWJ7018BNHGyaBG9uhQ2vbXQmmKGB
	YsP2t1vCQ5tSdvoFDlrS4PHkLJRVCr8=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: MC6OMMXDRRYSN6TGV2KO2CC4Y2JNTXXI
X-Message-ID-Hash: MC6OMMXDRRYSN6TGV2KO2CC4Y2JNTXXI
X-MailFrom: sven@dvalin.narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/MC6OMMXDRRYSN6TGV2KO2CC4Y2JNTXXI/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

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
index 6268cb9..57206e0 100755
--- a/Makefile
+++ b/Makefile
@@ -2,7 +2,7 @@
 # SPDX-License-Identifier: GPL-2.0
 # -*- makefile -*-
 #
-# Copyright (C) 2012-2020  B.A.T.M.A.N. contributors
+# Copyright (C) 2012-2021  B.A.T.M.A.N. contributors
 #
 # License-Filename: LICENSES/preferred/GPL-2.0
=20
diff --git a/alfred.h b/alfred.h
index a61365d..8a9d244 100644
--- a/alfred.h
+++ b/alfred.h
@@ -1,5 +1,5 @@
 /* SPDX-License-Identifier: GPL-2.0 */
-/* Copyright (C) 2012-2020  B.A.T.M.A.N. contributors:
+/* Copyright (C) 2012-2021  B.A.T.M.A.N. contributors:
  *
  * Simon Wunderlich
  *
diff --git a/batadv_query.c b/batadv_query.c
index 66d3452..410d271 100644
--- a/batadv_query.c
+++ b/batadv_query.c
@@ -1,5 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0
-/* Copyright (C) 2012-2020  B.A.T.M.A.N. contributors:
+/* Copyright (C) 2012-2021  B.A.T.M.A.N. contributors:
  *
  * Simon Wunderlich
  *
diff --git a/batadv_query.h b/batadv_query.h
index 291292d..f198de9 100644
--- a/batadv_query.h
+++ b/batadv_query.h
@@ -1,5 +1,5 @@
 /* SPDX-License-Identifier: GPL-2.0 */
-/* Copyright (C) 2006-2020  B.A.T.M.A.N. contributors:
+/* Copyright (C) 2006-2021  B.A.T.M.A.N. contributors:
  *
  * Simon Wunderlich, Marek Lindner
  *
diff --git a/batadv_querynl.c b/batadv_querynl.c
index 2793242..d9a6028 100644
--- a/batadv_querynl.c
+++ b/batadv_querynl.c
@@ -1,5 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0
-/* Copyright (C) 2009-2020  B.A.T.M.A.N. contributors:
+/* Copyright (C) 2009-2021  B.A.T.M.A.N. contributors:
  *
  * Marek Lindner <mareklindner@neomailbox.ch>, Andrew Lunn <andrew@lunn.=
ch>
  *
diff --git a/batadv_querynl.h b/batadv_querynl.h
index f684ad8..7f969b9 100644
--- a/batadv_querynl.h
+++ b/batadv_querynl.h
@@ -1,5 +1,5 @@
 /* SPDX-License-Identifier: GPL-2.0 */
-/* Copyright (C) 2009-2020  B.A.T.M.A.N. contributors:
+/* Copyright (C) 2009-2021  B.A.T.M.A.N. contributors:
  *
  * Marek Lindner <mareklindner@neomailbox.ch>, Andrew Lunn <andrew@lunn.=
ch>
  *
diff --git a/batman_adv.h b/batman_adv.h
index bdb317f..27d35e7 100644
--- a/batman_adv.h
+++ b/batman_adv.h
@@ -1,5 +1,5 @@
 /* SPDX-License-Identifier: MIT */
-/* Copyright (C) 2016-2020  B.A.T.M.A.N. contributors:
+/* Copyright (C) 2016-2021  B.A.T.M.A.N. contributors:
  *
  * Matthias Schiffer
  */
diff --git a/bitops.h b/bitops.h
index 2333aa4..802fc25 100644
--- a/bitops.h
+++ b/bitops.h
@@ -2,7 +2,7 @@
 /* Minimal Linux-like bit manipulation helper functions
  * (reduced version for alfred)
  *
- * Copyright (c) 2012-2020, Sven Eckelmann <sven@narfation.org>
+ * Copyright (c) 2012-2021, Sven Eckelmann <sven@narfation.org>
  *
  * License-Filename: LICENSES/preferred/MIT
  */
diff --git a/client.c b/client.c
index b19887d..bd38c2f 100644
--- a/client.c
+++ b/client.c
@@ -1,5 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0
-/* Copyright (C) 2012-2020  B.A.T.M.A.N. contributors:
+/* Copyright (C) 2012-2021  B.A.T.M.A.N. contributors:
  *
  * Simon Wunderlich
  *
diff --git a/gpsd/Makefile b/gpsd/Makefile
index 0645573..b02404d 100755
--- a/gpsd/Makefile
+++ b/gpsd/Makefile
@@ -2,7 +2,7 @@
 # SPDX-License-Identifier: GPL-2.0
 # -*- makefile -*-
 #
-# Copyright (C) 2013-2020  B.A.T.M.A.N. contributors
+# Copyright (C) 2013-2021  B.A.T.M.A.N. contributors
 #
 # License-Filename: LICENSES/preferred/GPL-2.0
=20
diff --git a/gpsd/alfred-gpsd.c b/gpsd/alfred-gpsd.c
index 47d6a64..ee9e6e8 100644
--- a/gpsd/alfred-gpsd.c
+++ b/gpsd/alfred-gpsd.c
@@ -1,5 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0
-/* Copyright (C) 2013-2020  B.A.T.M.A.N. contributors:
+/* Copyright (C) 2013-2021  B.A.T.M.A.N. contributors:
  *
  * Andrew Lunn, Simon Wunderlich
  *
diff --git a/gpsd/alfred-gpsd.h b/gpsd/alfred-gpsd.h
index b5452b4..83d65bc 100644
--- a/gpsd/alfred-gpsd.h
+++ b/gpsd/alfred-gpsd.h
@@ -1,5 +1,5 @@
 /* SPDX-License-Identifier: GPL-2.0 */
-/* Copyright (C) 2013-2020  B.A.T.M.A.N. contributors:
+/* Copyright (C) 2013-2021  B.A.T.M.A.N. contributors:
  *
  * Andrew Lunn, Simon Wunderlich
  *
diff --git a/hash.c b/hash.c
index 82a287e..eb7ff1a 100644
--- a/hash.c
+++ b/hash.c
@@ -1,5 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0
-/* Copyright (C) 2006-2020  B.A.T.M.A.N. contributors:
+/* Copyright (C) 2006-2021  B.A.T.M.A.N. contributors:
  *
  * Simon Wunderlich, Marek Lindner
  *
diff --git a/hash.h b/hash.h
index 32a9e57..0ff887a 100644
--- a/hash.h
+++ b/hash.h
@@ -1,5 +1,5 @@
 /* SPDX-License-Identifier: GPL-2.0 */
-/* Copyright (C) 2006-2020  B.A.T.M.A.N. contributors:
+/* Copyright (C) 2006-2021  B.A.T.M.A.N. contributors:
  *
  * Simon Wunderlich, Marek Lindner
  *
diff --git a/main.c b/main.c
index 5ae8187..37cc5eb 100644
--- a/main.c
+++ b/main.c
@@ -1,5 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0
-/* Copyright (C) 2012-2020  B.A.T.M.A.N. contributors:
+/* Copyright (C) 2012-2021  B.A.T.M.A.N. contributors:
  *
  * Simon Wunderlich
  *
diff --git a/netlink.c b/netlink.c
index 865ed9f..5470b48 100644
--- a/netlink.c
+++ b/netlink.c
@@ -1,5 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0
-/* Copyright (C) 2009-2020  B.A.T.M.A.N. contributors:
+/* Copyright (C) 2009-2021  B.A.T.M.A.N. contributors:
  *
  * Marek Lindner <mareklindner@neomailbox.ch>, Andrew Lunn <andrew@lunn.=
ch>
  *
diff --git a/netlink.h b/netlink.h
index 2964a2b..74c32b5 100644
--- a/netlink.h
+++ b/netlink.h
@@ -1,5 +1,5 @@
 /* SPDX-License-Identifier: GPL-2.0 */
-/* Copyright (C) 2009-2020  B.A.T.M.A.N. contributors:
+/* Copyright (C) 2009-2021  B.A.T.M.A.N. contributors:
  *
  * Marek Lindner <mareklindner@neomailbox.ch>, Andrew Lunn <andrew@lunn.=
ch>
  *
diff --git a/netsock.c b/netsock.c
index 9b200d2..28beef1 100644
--- a/netsock.c
+++ b/netsock.c
@@ -1,5 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0
-/* Copyright (C) 2012-2020  B.A.T.M.A.N. contributors:
+/* Copyright (C) 2012-2021  B.A.T.M.A.N. contributors:
  *
  * Simon Wunderlich
  *
diff --git a/packet.h b/packet.h
index 81ecbb9..7e91c58 100644
--- a/packet.h
+++ b/packet.h
@@ -1,5 +1,5 @@
 /* SPDX-License-Identifier: MIT */
-/* Copyright (C) 2012-2020  B.A.T.M.A.N. contributors:
+/* Copyright (C) 2012-2021  B.A.T.M.A.N. contributors:
  *
  * Simon Wunderlich, Sven Eckelmann
  *
diff --git a/recv.c b/recv.c
index 744080b..c4ac7e4 100644
--- a/recv.c
+++ b/recv.c
@@ -1,5 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0
-/* Copyright (C) 2012-2020  B.A.T.M.A.N. contributors:
+/* Copyright (C) 2012-2021  B.A.T.M.A.N. contributors:
  *
  * Simon Wunderlich
  *
diff --git a/send.c b/send.c
index de530d9..5afe374 100644
--- a/send.c
+++ b/send.c
@@ -1,5 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0
-/* Copyright (C) 2012-2020  B.A.T.M.A.N. contributors:
+/* Copyright (C) 2012-2021  B.A.T.M.A.N. contributors:
  *
  * Simon Wunderlich
  *
diff --git a/server.c b/server.c
index 37b11fe..5ea6683 100644
--- a/server.c
+++ b/server.c
@@ -1,5 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0
-/* Copyright (C) 2012-2020  B.A.T.M.A.N. contributors:
+/* Copyright (C) 2012-2021  B.A.T.M.A.N. contributors:
  *
  * Simon Wunderlich
  *
diff --git a/unix_sock.c b/unix_sock.c
index 2bbc408..b05b8a2 100644
--- a/unix_sock.c
+++ b/unix_sock.c
@@ -1,5 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0
-/* Copyright (C) 2012-2020  B.A.T.M.A.N. contributors:
+/* Copyright (C) 2012-2021  B.A.T.M.A.N. contributors:
  *
  * Simon Wunderlich
  *
diff --git a/util.c b/util.c
index f1dc0dc..c1ee1fa 100644
--- a/util.c
+++ b/util.c
@@ -1,5 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0
-/* Copyright (C) 2012-2020  B.A.T.M.A.N. contributors:
+/* Copyright (C) 2012-2021  B.A.T.M.A.N. contributors:
  *
  * Simon Wunderlich
  *
diff --git a/vis/Makefile b/vis/Makefile
index 50c8efb..ab79775 100755
--- a/vis/Makefile
+++ b/vis/Makefile
@@ -2,7 +2,7 @@
 # SPDX-License-Identifier: GPL-2.0
 # -*- makefile -*-
 #
-# Copyright (C) 2013-2020  B.A.T.M.A.N. contributors
+# Copyright (C) 2013-2021  B.A.T.M.A.N. contributors
 #
 # License-Filename: LICENSES/preferred/GPL-2.0
=20
diff --git a/vis/vis.c b/vis/vis.c
index 1bb82ab..3b1f37c 100644
--- a/vis/vis.c
+++ b/vis/vis.c
@@ -1,5 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0
-/* Copyright (C) 2013-2020  B.A.T.M.A.N. contributors:
+/* Copyright (C) 2013-2021  B.A.T.M.A.N. contributors:
  *
  * Simon Wunderlich
  *
diff --git a/vis/vis.h b/vis/vis.h
index 6f5b839..8033db6 100644
--- a/vis/vis.h
+++ b/vis/vis.h
@@ -1,5 +1,5 @@
 /* SPDX-License-Identifier: GPL-2.0 */
-/* Copyright (C) 2013-2020  B.A.T.M.A.N. contributors:
+/* Copyright (C) 2013-2021  B.A.T.M.A.N. contributors:
  *
  * Simon Wunderlich
  *
--=20
2.29.2
