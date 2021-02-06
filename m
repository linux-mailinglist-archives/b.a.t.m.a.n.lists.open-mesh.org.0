Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id DF30B311C1F
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat,  6 Feb 2021 09:25:40 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id AF64A83BF3;
	Sat,  6 Feb 2021 09:25:39 +0100 (CET)
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 8A3FB83B48
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sat,  6 Feb 2021 09:25:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1612599555;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=OuZjgCzew/vHfqjmbcDrfUHSho0HOOuiCV1x1rbfyww=;
	b=QZNp6TXT4wXFUwu642IQorM1GBiAxfiVUENxhUFlBRf+cwlqXnGXXriAPouIVcwgt1DVF/
	bNDGOCiIeIzadp9BBxOK8YbVyGB7JgOg4USreCsZ4DeS/6zyTnDVTFh1psUGOy/pc1jw2N
	GWyk+1tcMs0qGub28F/jWvjMos5nZ70=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: [PATCH 3/3] alfred: Drop publication years from copyright info
Date: Sat,  6 Feb 2021 09:18:44 +0100
Message-Id: <20210206081844.7676-3-sven@narfation.org>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210206081844.7676-1-sven@narfation.org>
References: <20210206081844.7676-1-sven@narfation.org>
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1612599936;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=OuZjgCzew/vHfqjmbcDrfUHSho0HOOuiCV1x1rbfyww=;
	b=it4r5SVOaycxRqx95EIc4oWiUHJJyM0UAu3GHqCNtygPYIcLDwO22Bu/KKj7wWk2sKAEXs
	snuxQx/clNL0/PrObyKBly/TAWFz5PuuyNwCzNCg5VYxhOgdkYPdWh9q5v85tL7UeDTWOM
	gRuy4B2LaRcFIfwsxITB3blqVu2yMls=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1612599936; a=rsa-sha256;
	cv=none;
	b=T9P2jfCvbBasyX791wojIHrHT/4fz2IaxEt8julOoAr2iy86E1UMaPQwvJPz5Hvupwgvx/
	Fb/+G0DojOAmpzI3b0EV43w8JdYJ2cfp+w6JvYgUrP88FyrOyoRoq1u6Pl7T7Hy2Dhgb12
	vHqe2Nu2CvvpfbUJMHosLNqew8jRt5w=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=QZNp6TXT;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: 7W6AEDGD5RFIB2QU5WWVJQRTA4OPLFJN
X-Message-ID-Hash: 7W6AEDGD5RFIB2QU5WWVJQRTA4OPLFJN
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: Marek Lindner <mareklindner@neomailbox.ch>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/7W6AEDGD5RFIB2QU5WWVJQRTA4OPLFJN/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

The batman-adv source code was using the year of publication (to net-next=
)
as "last" year for the copyright statement. The whole source code mention=
ed
in the MAINTAINERS "BATMAN ADVANCED" section was handled as a single enti=
ty
regarding the publishing year. And this was also performed the same way i=
n
the related projects alfred + batctl.

This avoided having outdated (in sense of year information - not copyrigh=
t
holder) publishing information inside several files. But since the simple
"update copyright year" commit (without other changes) in the file was no=
t
well received in the upstream kernel, the option to not have a copyright
year (for initial and last publication) in the files are chosen instead.
More detailed information about the years can still be retrieved from the
SCM system.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
Cc: Andrew Lunn <andrew@lunn.ch>
Cc: Marek Lindner <mareklindner@neomailbox.ch>
Cc: Matthias Schiffer <mschiffer@universe-factory.net>
Cc: Simon Wunderlich <sw@simonwunderlich.de>
Cc: Sven Eckelmann <sven@narfation.org>
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
index 57206e0..d71f41f 100755
--- a/Makefile
+++ b/Makefile
@@ -2,7 +2,7 @@
 # SPDX-License-Identifier: GPL-2.0
 # -*- makefile -*-
 #
-# Copyright (C) 2012-2021  B.A.T.M.A.N. contributors
+# Copyright (C) B.A.T.M.A.N. contributors
 #
 # License-Filename: LICENSES/preferred/GPL-2.0
=20
diff --git a/alfred.h b/alfred.h
index 20d471b..1e2c058 100644
--- a/alfred.h
+++ b/alfred.h
@@ -1,5 +1,5 @@
 /* SPDX-License-Identifier: GPL-2.0 */
-/* Copyright (C) 2012-2021  B.A.T.M.A.N. contributors:
+/* Copyright (C) B.A.T.M.A.N. contributors:
  *
  * Simon Wunderlich
  *
diff --git a/batadv_query.c b/batadv_query.c
index 410d271..d1853b7 100644
--- a/batadv_query.c
+++ b/batadv_query.c
@@ -1,5 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0
-/* Copyright (C) 2012-2021  B.A.T.M.A.N. contributors:
+/* Copyright (C) B.A.T.M.A.N. contributors:
  *
  * Simon Wunderlich
  *
diff --git a/batadv_query.h b/batadv_query.h
index f198de9..3b5ffba 100644
--- a/batadv_query.h
+++ b/batadv_query.h
@@ -1,5 +1,5 @@
 /* SPDX-License-Identifier: GPL-2.0 */
-/* Copyright (C) 2006-2021  B.A.T.M.A.N. contributors:
+/* Copyright (C) B.A.T.M.A.N. contributors:
  *
  * Simon Wunderlich, Marek Lindner
  *
diff --git a/batadv_querynl.c b/batadv_querynl.c
index d9a6028..872cb85 100644
--- a/batadv_querynl.c
+++ b/batadv_querynl.c
@@ -1,5 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0
-/* Copyright (C) 2009-2021  B.A.T.M.A.N. contributors:
+/* Copyright (C) B.A.T.M.A.N. contributors:
  *
  * Marek Lindner <mareklindner@neomailbox.ch>, Andrew Lunn <andrew@lunn.=
ch>
  *
diff --git a/batadv_querynl.h b/batadv_querynl.h
index 7f969b9..70c2bb4 100644
--- a/batadv_querynl.h
+++ b/batadv_querynl.h
@@ -1,5 +1,5 @@
 /* SPDX-License-Identifier: GPL-2.0 */
-/* Copyright (C) 2009-2021  B.A.T.M.A.N. contributors:
+/* Copyright (C) B.A.T.M.A.N. contributors:
  *
  * Marek Lindner <mareklindner@neomailbox.ch>, Andrew Lunn <andrew@lunn.=
ch>
  *
diff --git a/batman_adv.h b/batman_adv.h
index 27d35e7..35dc016 100644
--- a/batman_adv.h
+++ b/batman_adv.h
@@ -1,5 +1,5 @@
 /* SPDX-License-Identifier: MIT */
-/* Copyright (C) 2016-2021  B.A.T.M.A.N. contributors:
+/* Copyright (C) B.A.T.M.A.N. contributors:
  *
  * Matthias Schiffer
  */
diff --git a/bitops.h b/bitops.h
index 802fc25..582a1f2 100644
--- a/bitops.h
+++ b/bitops.h
@@ -2,7 +2,7 @@
 /* Minimal Linux-like bit manipulation helper functions
  * (reduced version for alfred)
  *
- * Copyright (c) 2012-2021, Sven Eckelmann <sven@narfation.org>
+ * Copyright (c) Sven Eckelmann <sven@narfation.org>
  *
  * License-Filename: LICENSES/preferred/MIT
  */
diff --git a/client.c b/client.c
index bd38c2f..dc643f3 100644
--- a/client.c
+++ b/client.c
@@ -1,5 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0
-/* Copyright (C) 2012-2021  B.A.T.M.A.N. contributors:
+/* Copyright (C) B.A.T.M.A.N. contributors:
  *
  * Simon Wunderlich
  *
diff --git a/gpsd/Makefile b/gpsd/Makefile
index b02404d..11ee7dd 100755
--- a/gpsd/Makefile
+++ b/gpsd/Makefile
@@ -2,7 +2,7 @@
 # SPDX-License-Identifier: GPL-2.0
 # -*- makefile -*-
 #
-# Copyright (C) 2013-2021  B.A.T.M.A.N. contributors
+# Copyright (C) B.A.T.M.A.N. contributors
 #
 # License-Filename: LICENSES/preferred/GPL-2.0
=20
diff --git a/gpsd/alfred-gpsd.c b/gpsd/alfred-gpsd.c
index ee9e6e8..20b3d98 100644
--- a/gpsd/alfred-gpsd.c
+++ b/gpsd/alfred-gpsd.c
@@ -1,5 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0
-/* Copyright (C) 2013-2021  B.A.T.M.A.N. contributors:
+/* Copyright (C) B.A.T.M.A.N. contributors:
  *
  * Andrew Lunn, Simon Wunderlich
  *
diff --git a/gpsd/alfred-gpsd.h b/gpsd/alfred-gpsd.h
index cea0e0c..3445bac 100644
--- a/gpsd/alfred-gpsd.h
+++ b/gpsd/alfred-gpsd.h
@@ -1,5 +1,5 @@
 /* SPDX-License-Identifier: GPL-2.0 */
-/* Copyright (C) 2013-2021  B.A.T.M.A.N. contributors:
+/* Copyright (C) B.A.T.M.A.N. contributors:
  *
  * Andrew Lunn, Simon Wunderlich
  *
diff --git a/hash.c b/hash.c
index eb7ff1a..006d7ef 100644
--- a/hash.c
+++ b/hash.c
@@ -1,5 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0
-/* Copyright (C) 2006-2021  B.A.T.M.A.N. contributors:
+/* Copyright (C) B.A.T.M.A.N. contributors:
  *
  * Simon Wunderlich, Marek Lindner
  *
diff --git a/hash.h b/hash.h
index 0ff887a..36d7c41 100644
--- a/hash.h
+++ b/hash.h
@@ -1,5 +1,5 @@
 /* SPDX-License-Identifier: GPL-2.0 */
-/* Copyright (C) 2006-2021  B.A.T.M.A.N. contributors:
+/* Copyright (C) B.A.T.M.A.N. contributors:
  *
  * Simon Wunderlich, Marek Lindner
  *
diff --git a/main.c b/main.c
index 37cc5eb..7b866cc 100644
--- a/main.c
+++ b/main.c
@@ -1,5 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0
-/* Copyright (C) 2012-2021  B.A.T.M.A.N. contributors:
+/* Copyright (C) B.A.T.M.A.N. contributors:
  *
  * Simon Wunderlich
  *
diff --git a/netlink.c b/netlink.c
index 5470b48..97a5936 100644
--- a/netlink.c
+++ b/netlink.c
@@ -1,5 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0
-/* Copyright (C) 2009-2021  B.A.T.M.A.N. contributors:
+/* Copyright (C) B.A.T.M.A.N. contributors:
  *
  * Marek Lindner <mareklindner@neomailbox.ch>, Andrew Lunn <andrew@lunn.=
ch>
  *
diff --git a/netlink.h b/netlink.h
index 74c32b5..45bff17 100644
--- a/netlink.h
+++ b/netlink.h
@@ -1,5 +1,5 @@
 /* SPDX-License-Identifier: GPL-2.0 */
-/* Copyright (C) 2009-2021  B.A.T.M.A.N. contributors:
+/* Copyright (C) B.A.T.M.A.N. contributors:
  *
  * Marek Lindner <mareklindner@neomailbox.ch>, Andrew Lunn <andrew@lunn.=
ch>
  *
diff --git a/netsock.c b/netsock.c
index 28beef1..367b207 100644
--- a/netsock.c
+++ b/netsock.c
@@ -1,5 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0
-/* Copyright (C) 2012-2021  B.A.T.M.A.N. contributors:
+/* Copyright (C) B.A.T.M.A.N. contributors:
  *
  * Simon Wunderlich
  *
diff --git a/packet.h b/packet.h
index 7e91c58..678f939 100644
--- a/packet.h
+++ b/packet.h
@@ -1,5 +1,5 @@
 /* SPDX-License-Identifier: MIT */
-/* Copyright (C) 2012-2021  B.A.T.M.A.N. contributors:
+/* Copyright (C) B.A.T.M.A.N. contributors:
  *
  * Simon Wunderlich, Sven Eckelmann
  *
diff --git a/recv.c b/recv.c
index c4ac7e4..8acad10 100644
--- a/recv.c
+++ b/recv.c
@@ -1,5 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0
-/* Copyright (C) 2012-2021  B.A.T.M.A.N. contributors:
+/* Copyright (C) B.A.T.M.A.N. contributors:
  *
  * Simon Wunderlich
  *
diff --git a/send.c b/send.c
index 5afe374..10094ba 100644
--- a/send.c
+++ b/send.c
@@ -1,5 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0
-/* Copyright (C) 2012-2021  B.A.T.M.A.N. contributors:
+/* Copyright (C) B.A.T.M.A.N. contributors:
  *
  * Simon Wunderlich
  *
diff --git a/server.c b/server.c
index 5ea6683..fc27246 100644
--- a/server.c
+++ b/server.c
@@ -1,5 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0
-/* Copyright (C) 2012-2021  B.A.T.M.A.N. contributors:
+/* Copyright (C) B.A.T.M.A.N. contributors:
  *
  * Simon Wunderlich
  *
diff --git a/unix_sock.c b/unix_sock.c
index b05b8a2..d9ad07b 100644
--- a/unix_sock.c
+++ b/unix_sock.c
@@ -1,5 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0
-/* Copyright (C) 2012-2021  B.A.T.M.A.N. contributors:
+/* Copyright (C) B.A.T.M.A.N. contributors:
  *
  * Simon Wunderlich
  *
diff --git a/util.c b/util.c
index c1ee1fa..42a625a 100644
--- a/util.c
+++ b/util.c
@@ -1,5 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0
-/* Copyright (C) 2012-2021  B.A.T.M.A.N. contributors:
+/* Copyright (C) B.A.T.M.A.N. contributors:
  *
  * Simon Wunderlich
  *
diff --git a/vis/Makefile b/vis/Makefile
index ab79775..84917ea 100755
--- a/vis/Makefile
+++ b/vis/Makefile
@@ -2,7 +2,7 @@
 # SPDX-License-Identifier: GPL-2.0
 # -*- makefile -*-
 #
-# Copyright (C) 2013-2021  B.A.T.M.A.N. contributors
+# Copyright (C) B.A.T.M.A.N. contributors
 #
 # License-Filename: LICENSES/preferred/GPL-2.0
=20
diff --git a/vis/vis.c b/vis/vis.c
index 3b1f37c..387d166 100644
--- a/vis/vis.c
+++ b/vis/vis.c
@@ -1,5 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0
-/* Copyright (C) 2013-2021  B.A.T.M.A.N. contributors:
+/* Copyright (C) B.A.T.M.A.N. contributors:
  *
  * Simon Wunderlich
  *
diff --git a/vis/vis.h b/vis/vis.h
index f96253a..5a6ef5b 100644
--- a/vis/vis.h
+++ b/vis/vis.h
@@ -1,5 +1,5 @@
 /* SPDX-License-Identifier: GPL-2.0 */
-/* Copyright (C) 2013-2021  B.A.T.M.A.N. contributors:
+/* Copyright (C) B.A.T.M.A.N. contributors:
  *
  * Simon Wunderlich
  *
--=20
2.30.0
