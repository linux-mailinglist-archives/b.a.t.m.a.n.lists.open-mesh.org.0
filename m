Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C07A311C20
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat,  6 Feb 2021 09:25:45 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 6B02D83C1C;
	Sat,  6 Feb 2021 09:25:40 +0100 (CET)
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 79D798075B
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sat,  6 Feb 2021 09:25:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1612599552;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Ra+1IZ753Z1V9W4ynYL1EY0oY/6nDrgKb2B9jMDx2eM=;
	b=f6csyzh5N8PwwSxkdMyhIxqXuKd0Ru8Rz/XzPwYfO6r0pYUF0BB17OuDOQdZ1YDbry2WcA
	YSreXElkKME0/BmH2K6PIOvuvvBuDK6+TDhJgYj3XIsNRonl8LPg6J1J9V1jt/Y/p1BD70
	gUbCv2coQLB3QtP0Wdcs6SvIDUK5aZU=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: [PATCH 2/3] batctl: Drop publication years from copyright info
Date: Sat,  6 Feb 2021 09:18:43 +0100
Message-Id: <20210206081844.7676-2-sven@narfation.org>
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
	bh=Ra+1IZ753Z1V9W4ynYL1EY0oY/6nDrgKb2B9jMDx2eM=;
	b=hpyTbZhVu1QB2wmX/V5GcaTWDQFTbDCkz/XgwFUpWeKRvyr4pgZt8wGPijDPQgZiKgsupk
	ccl4xoOYDPhS7Sz3jMS8KbwSjAJgLQ/DSd8n6q8u82et0KsQENBbm0PIy0PFrAsmmNZyW+
	tsH0ZL1P8WOGQb/GTqSdn8tRNFJynz8=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1612599936; a=rsa-sha256;
	cv=none;
	b=xVacGzKrtiMK02lT5bMkGqjt0HqbgPiYulMqKoFaSUGI4Z23RbmTwZEG6eyGFrlidSLBHD
	A+LHe2EsXceFcYBc2MdIzPpndS8p7VA+A6tT+L66roJ41ihnWnZVeqeZKpphhl3F/RP3gO
	WAO7md1Ca4+mHXj6/I1sAkkeSwq0bUI=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=f6csyzh5;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: WDNTKH24GCIYM2F6VMXMOR7FDVHX4A4Q
X-Message-ID-Hash: WDNTKH24GCIYM2F6VMXMOR7FDVHX4A4Q
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: Andreas Langer <an.langer@gmx.de>, Antonio Quartulli <a@unstable.cc>, Marek Lindner <mareklindner@neomailbox.ch>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/WDNTKH24GCIYM2F6VMXMOR7FDVHX4A4Q/>
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
Cc: Andreas Langer <an.langer@gmx.de>
Cc: Andrew Lunn <andrew@lunn.ch>
Cc: Antonio Quartulli <a@unstable.cc>
Cc: Marek Lindner <mareklindner@neomailbox.ch>
Cc: Matthias Schiffer <mschiffer@universe-factory.net>
Cc: Simon Wunderlich <sw@simonwunderlich.de>
---
 Makefile        | 2 +-
 allocate.h      | 2 +-
 bat-hosts.c     | 2 +-
 bat-hosts.h     | 2 +-
 batadv_packet.h | 2 +-
 batman_adv.h    | 2 +-
 bisect_iv.c     | 2 +-
 bisect_iv.h     | 2 +-
 debug.c         | 2 +-
 debug.h         | 2 +-
 functions.c     | 2 +-
 functions.h     | 2 +-
 genl.h          | 2 +-
 hash.c          | 2 +-
 hash.h          | 2 +-
 icmp_helper.c   | 2 +-
 icmp_helper.h   | 2 +-
 interface.c     | 2 +-
 interface.h     | 2 +-
 ioctl.c         | 2 +-
 ioctl.h         | 2 +-
 list.h          | 2 +-
 main.c          | 2 +-
 main.h          | 2 +-
 netlink.c       | 2 +-
 netlink.h       | 2 +-
 ping.c          | 2 +-
 ping.h          | 2 +-
 sys.c           | 2 +-
 sys.h           | 2 +-
 tcpdump.c       | 2 +-
 tcpdump.h       | 2 +-
 tp_meter.c      | 2 +-
 tp_meter.h      | 2 +-
 traceroute.c    | 2 +-
 traceroute.h    | 2 +-
 translate.c     | 2 +-
 translate.h     | 2 +-
 38 files changed, 38 insertions(+), 38 deletions(-)

diff --git a/Makefile b/Makefile
index 4b417d5..8e56348 100755
--- a/Makefile
+++ b/Makefile
@@ -2,7 +2,7 @@
 # SPDX-License-Identifier: GPL-2.0
 # -*- makefile -*-
 #
-# Copyright (C) 2006-2018  B.A.T.M.A.N. contributors
+# Copyright (C) B.A.T.M.A.N. contributors
 #
 # This program is free software; you can redistribute it and/or
 # modify it under the terms of version 2 of the GNU General Public
diff --git a/allocate.h b/allocate.h
index cc4c283..7a5af4e 100644
--- a/allocate.h
+++ b/allocate.h
@@ -1,5 +1,5 @@
 /* SPDX-License-Identifier: GPL-2.0 */
-/* Copyright (C) 2009-2018  B.A.T.M.A.N. contributors:
+/* Copyright (C) B.A.T.M.A.N. contributors:
  *
  * Marek Lindner <mareklindner@neomailbox.ch>
  *
diff --git a/bat-hosts.c b/bat-hosts.c
index 02c4d81..ebd6525 100644
--- a/bat-hosts.c
+++ b/bat-hosts.c
@@ -1,5 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0
-/* Copyright (C) 2007-2018  B.A.T.M.A.N. contributors:
+/* Copyright (C) B.A.T.M.A.N. contributors:
  *
  * Andreas Langer <an.langer@gmx.de>, Marek Lindner <mareklindner@neomai=
lbox.ch>
  *
diff --git a/bat-hosts.h b/bat-hosts.h
index 20ac32d..8e6e075 100644
--- a/bat-hosts.h
+++ b/bat-hosts.h
@@ -1,5 +1,5 @@
 /* SPDX-License-Identifier: GPL-2.0 */
-/* Copyright (C) 2009-2018  B.A.T.M.A.N. contributors:
+/* Copyright (C) B.A.T.M.A.N. contributors:
  *
  * Marek Lindner <mareklindner@neomailbox.ch>
  *
diff --git a/batadv_packet.h b/batadv_packet.h
index 894d8d2..1f09349 100644
--- a/batadv_packet.h
+++ b/batadv_packet.h
@@ -1,5 +1,5 @@
 /* SPDX-License-Identifier: (GPL-2.0 WITH Linux-syscall-note) */
-/* Copyright (C) 2007-2018  B.A.T.M.A.N. contributors:
+/* Copyright (C) B.A.T.M.A.N. contributors:
  *
  * Marek Lindner, Simon Wunderlich
  *
diff --git a/batman_adv.h b/batman_adv.h
index 324a0e1..2546f44 100644
--- a/batman_adv.h
+++ b/batman_adv.h
@@ -1,5 +1,5 @@
 /* SPDX-License-Identifier: MIT */
-/* Copyright (C) 2016-2018  B.A.T.M.A.N. contributors:
+/* Copyright (C) B.A.T.M.A.N. contributors:
  *
  * Matthias Schiffer
  *
diff --git a/bisect_iv.c b/bisect_iv.c
index d71ceda..bd01294 100644
--- a/bisect_iv.c
+++ b/bisect_iv.c
@@ -1,5 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0
-/* Copyright (C) 2009-2018  B.A.T.M.A.N. contributors:
+/* Copyright (C) B.A.T.M.A.N. contributors:
  *
  * Marek Lindner <mareklindner@neomailbox.ch>
  *
diff --git a/bisect_iv.h b/bisect_iv.h
index 7932c2f..086ea5b 100644
--- a/bisect_iv.h
+++ b/bisect_iv.h
@@ -1,5 +1,5 @@
 /* SPDX-License-Identifier: GPL-2.0 */
-/* Copyright (C) 2009-2018  B.A.T.M.A.N. contributors:
+/* Copyright (C) B.A.T.M.A.N. contributors:
  *
  * Marek Lindner <mareklindner@neomailbox.ch>
  *
diff --git a/debug.c b/debug.c
index 63fb633..f304cb8 100644
--- a/debug.c
+++ b/debug.c
@@ -1,5 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0
-/* Copyright (C) 2009-2018  B.A.T.M.A.N. contributors:
+/* Copyright (C) B.A.T.M.A.N. contributors:
  *
  * Marek Lindner <mareklindner@neomailbox.ch>
  *
diff --git a/debug.h b/debug.h
index 9c57aa6..ae5c0c9 100644
--- a/debug.h
+++ b/debug.h
@@ -1,5 +1,5 @@
 /* SPDX-License-Identifier: GPL-2.0 */
-/* Copyright (C) 2009-2018  B.A.T.M.A.N. contributors:
+/* Copyright (C) B.A.T.M.A.N. contributors:
  *
  * Marek Lindner <mareklindner@neomailbox.ch>
  *
diff --git a/functions.c b/functions.c
index e0e9978..13552ef 100644
--- a/functions.c
+++ b/functions.c
@@ -1,5 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0
-/* Copyright (C) 2007-2018  B.A.T.M.A.N. contributors:
+/* Copyright (C) B.A.T.M.A.N. contributors:
  *
  * Andreas Langer <an.langer@gmx.de>, Marek Lindner <mareklindner@neomai=
lbox.ch>
  *
diff --git a/functions.h b/functions.h
index d3144d0..002cc2a 100644
--- a/functions.h
+++ b/functions.h
@@ -1,5 +1,5 @@
 /* SPDX-License-Identifier: GPL-2.0 */
-/* Copyright (C) 2007-2018  B.A.T.M.A.N. contributors:
+/* Copyright (C) B.A.T.M.A.N. contributors:
  *
  * Andreas Langer <an.langer@gmx.de>, Marek Lindner <mareklindner@neomai=
lbox.ch>
  *
diff --git a/genl.h b/genl.h
index a0f05ba..26fdb7b 100644
--- a/genl.h
+++ b/genl.h
@@ -1,5 +1,5 @@
 /* SPDX-License-Identifier: GPL-2.0 */
-/* Copyright (C) 2009-2018  B.A.T.M.A.N. contributors:
+/* Copyright (C) B.A.T.M.A.N. contributors:
  *
  * Marek Lindner <mareklindner@neomailbox.ch>
  *
diff --git a/hash.c b/hash.c
index e604634..1cba7a5 100644
--- a/hash.c
+++ b/hash.c
@@ -1,5 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0
-/* Copyright (C) 2006-2018  B.A.T.M.A.N. contributors:
+/* Copyright (C) B.A.T.M.A.N. contributors:
  *
  * Simon Wunderlich, Marek Lindner
  *
diff --git a/hash.h b/hash.h
index ceb1857..cb4b61d 100644
--- a/hash.h
+++ b/hash.h
@@ -1,5 +1,5 @@
 /* SPDX-License-Identifier: GPL-2.0 */
-/* Copyright (C) 2006-2018  B.A.T.M.A.N. contributors:
+/* Copyright (C) B.A.T.M.A.N. contributors:
  *
  * Simon Wunderlich, Marek Lindner
  *
diff --git a/icmp_helper.c b/icmp_helper.c
index 00c5229..f30988f 100644
--- a/icmp_helper.c
+++ b/icmp_helper.c
@@ -1,5 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0
-/* Copyright (C) 2007-2018  B.A.T.M.A.N. contributors:
+/* Copyright (C) B.A.T.M.A.N. contributors:
  *
  * Marek Lindner <mareklindner@neomailbox.ch>, Simon Wunderlich
  *
diff --git a/icmp_helper.h b/icmp_helper.h
index 8075655..2d1f622 100644
--- a/icmp_helper.h
+++ b/icmp_helper.h
@@ -1,5 +1,5 @@
 /* SPDX-License-Identifier: GPL-2.0 */
-/* Copyright (C) 2007-2018  B.A.T.M.A.N. contributors:
+/* Copyright (C) B.A.T.M.A.N. contributors:
  *
  * Andreas Langer <an.langer@gmx.de>, Marek Lindner <mareklindner@neomai=
lbox.ch>
  *
diff --git a/interface.c b/interface.c
index ac95641..599861e 100644
--- a/interface.c
+++ b/interface.c
@@ -1,5 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0
-/* Copyright (C) 2009-2018  B.A.T.M.A.N. contributors:
+/* Copyright (C) B.A.T.M.A.N. contributors:
  *
  * Marek Lindner <mareklindner@neomailbox.ch>
  *
diff --git a/interface.h b/interface.h
index 83ca129..ad38e3c 100644
--- a/interface.h
+++ b/interface.h
@@ -1,5 +1,5 @@
 /* SPDX-License-Identifier: GPL-2.0 */
-/* Copyright (C) 2009-2018  B.A.T.M.A.N. contributors:
+/* Copyright (C) B.A.T.M.A.N. contributors:
  *
  * Marek Lindner <mareklindner@neomailbox.ch>
  *
diff --git a/ioctl.c b/ioctl.c
index 6f9a056..18a40eb 100644
--- a/ioctl.c
+++ b/ioctl.c
@@ -1,5 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0
-/* Copyright (C) 2012-2018  B.A.T.M.A.N. contributors:
+/* Copyright (C) B.A.T.M.A.N. contributors:
  *
  * Marek Lindner <mareklindner@neomailbox.ch>
  *
diff --git a/ioctl.h b/ioctl.h
index 1b216c0..4f0fb78 100644
--- a/ioctl.h
+++ b/ioctl.h
@@ -1,5 +1,5 @@
 /* SPDX-License-Identifier: GPL-2.0 */
-/* Copyright (C) 2012-2018  B.A.T.M.A.N. contributors:
+/* Copyright (C) B.A.T.M.A.N. contributors:
  *
  * Marek Lindner <mareklindner@neomailbox.ch>
  *
diff --git a/list.h b/list.h
index 4e8f28f..5e23fa7 100644
--- a/list.h
+++ b/list.h
@@ -1,7 +1,7 @@
 /* SPDX-License-Identifier: MIT */
 /* Minimal Linux-like double-linked list helper functions
  *
- * Copyright (c) 2012-2018, Sven Eckelmann <sven@narfation.org>
+ * Copyright (c) Sven Eckelmann <sven@narfation.org>
  *
  * Permission is hereby granted, free of charge, to any person obtaining=
 a copy
  * of this software and associated documentation files (the "Software"),=
 to deal
diff --git a/main.c b/main.c
index d5504e0..14344f7 100644
--- a/main.c
+++ b/main.c
@@ -1,5 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0
-/* Copyright (C) 2007-2018  B.A.T.M.A.N. contributors:
+/* Copyright (C) B.A.T.M.A.N. contributors:
  *
  * Andreas Langer <an.langer@gmx.de>, Marek Lindner <mareklindner@neomai=
lbox.ch>
  *
diff --git a/main.h b/main.h
index 486c8bf..944c4fb 100644
--- a/main.h
+++ b/main.h
@@ -1,5 +1,5 @@
 /* SPDX-License-Identifier: GPL-2.0 */
-/* Copyright (C) 2007-2018  B.A.T.M.A.N. contributors:
+/* Copyright (C) B.A.T.M.A.N. contributors:
  *
  * Andreas Langer <an.langer@gmx.de>, Marek Lindner <mareklindner@neomai=
lbox.ch>
  *
diff --git a/netlink.c b/netlink.c
index f0fd1d9..e5dd739 100644
--- a/netlink.c
+++ b/netlink.c
@@ -1,5 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0
-/* Copyright (C) 2009-2018  B.A.T.M.A.N. contributors:
+/* Copyright (C) B.A.T.M.A.N. contributors:
  *
  * Marek Lindner <mareklindner@neomailbox.ch>, Andrew Lunn <andrew@lunn.=
ch>
  *
diff --git a/netlink.h b/netlink.h
index 089e25e..1fa4c3f 100644
--- a/netlink.h
+++ b/netlink.h
@@ -1,5 +1,5 @@
 /* SPDX-License-Identifier: GPL-2.0 */
-/* Copyright (C) 2009-2018  B.A.T.M.A.N. contributors:
+/* Copyright (C) B.A.T.M.A.N. contributors:
  *
  * Marek Lindner <mareklindner@neomailbox.ch>, Andrew Lunn <andrew@lunn.=
ch>
  *
diff --git a/ping.c b/ping.c
index dc88e22..e825e7a 100644
--- a/ping.c
+++ b/ping.c
@@ -1,5 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0
-/* Copyright (C) 2007-2018  B.A.T.M.A.N. contributors:
+/* Copyright (C) B.A.T.M.A.N. contributors:
  *
  * Andreas Langer <an.langer@gmx.de>, Marek Lindner <mareklindner@neomai=
lbox.ch>
  *
diff --git a/ping.h b/ping.h
index f09ffb2..0f5d38f 100644
--- a/ping.h
+++ b/ping.h
@@ -1,5 +1,5 @@
 /* SPDX-License-Identifier: GPL-2.0 */
-/* Copyright (C) 2009-2018  B.A.T.M.A.N. contributors:
+/* Copyright (C) B.A.T.M.A.N. contributors:
  *
  * Marek Lindner <mareklindner@neomailbox.ch>
  *
diff --git a/sys.c b/sys.c
index e0c2073..8bb2e6e 100644
--- a/sys.c
+++ b/sys.c
@@ -1,5 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0
-/* Copyright (C) 2009-2018  B.A.T.M.A.N. contributors:
+/* Copyright (C) B.A.T.M.A.N. contributors:
  *
  * Marek Lindner <mareklindner@neomailbox.ch>
  *
diff --git a/sys.h b/sys.h
index 95b2a1e..b6935de 100644
--- a/sys.h
+++ b/sys.h
@@ -1,5 +1,5 @@
 /* SPDX-License-Identifier: GPL-2.0 */
-/* Copyright (C) 2009-2018  B.A.T.M.A.N. contributors:
+/* Copyright (C) B.A.T.M.A.N. contributors:
  *
  * Marek Lindner <mareklindner@neomailbox.ch>
  *
diff --git a/tcpdump.c b/tcpdump.c
index 22847ae..5ee1a75 100644
--- a/tcpdump.c
+++ b/tcpdump.c
@@ -1,5 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0
-/* Copyright (C) 2007-2018  B.A.T.M.A.N. contributors:
+/* Copyright (C) B.A.T.M.A.N. contributors:
  *
  * Andreas Langer <an.langer@gmx.de>
  *
diff --git a/tcpdump.h b/tcpdump.h
index f73211b..0cc95e1 100644
--- a/tcpdump.h
+++ b/tcpdump.h
@@ -1,5 +1,5 @@
 /* SPDX-License-Identifier: GPL-2.0 */
-/* Copyright (C) 2007-2018  B.A.T.M.A.N. contributors:
+/* Copyright (C) B.A.T.M.A.N. contributors:
  *
  * Andreas Langer <an.langer@gmx.de>, Marek Lindner <mareklindner@neomai=
lbox.ch>
  *
diff --git a/tp_meter.c b/tp_meter.c
index 403c884..a803740 100644
--- a/tp_meter.c
+++ b/tp_meter.c
@@ -1,5 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0
-/* Copyright (C) 2013-2018  B.A.T.M.A.N. contributors:
+/* Copyright (C) B.A.T.M.A.N. contributors:
  *
  * Antonio Quartulli <a@unstable.cc>
  *
diff --git a/tp_meter.h b/tp_meter.h
index 72006ba..8456d22 100644
--- a/tp_meter.h
+++ b/tp_meter.h
@@ -1,5 +1,5 @@
 /* SPDX-License-Identifier: GPL-2.0 */
-/* Copyright (C) 2013-2018  B.A.T.M.A.N. contributors:
+/* Copyright (C) B.A.T.M.A.N. contributors:
  *
  * Antonio Quartulli <a@unstable.cc>
  *
diff --git a/traceroute.c b/traceroute.c
index ba7e27d..64eb3a4 100644
--- a/traceroute.c
+++ b/traceroute.c
@@ -1,5 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0
-/* Copyright (C) 2007-2018  B.A.T.M.A.N. contributors:
+/* Copyright (C) B.A.T.M.A.N. contributors:
  *
  * Andreas Langer <an.langer@gmx.de>, Marek Lindner <mareklindner@neomai=
lbox.ch>
  *
diff --git a/traceroute.h b/traceroute.h
index ffe0252..146df08 100644
--- a/traceroute.h
+++ b/traceroute.h
@@ -1,5 +1,5 @@
 /* SPDX-License-Identifier: GPL-2.0 */
-/* Copyright (C) 2009-2018  B.A.T.M.A.N. contributors:
+/* Copyright (C) B.A.T.M.A.N. contributors:
  *
  * Marek Lindner <mareklindner@neomailbox.ch>
  *
diff --git a/translate.c b/translate.c
index 9059f20..f95c9ba 100644
--- a/translate.c
+++ b/translate.c
@@ -1,5 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0
-/* Copyright (C) 2007-2018  B.A.T.M.A.N. contributors:
+/* Copyright (C) B.A.T.M.A.N. contributors:
  *
  * Andreas Langer <an.langer@gmx.de>, Marek Lindner <mareklindner@neomai=
lbox.ch>
  *
diff --git a/translate.h b/translate.h
index 8155827..02e26bc 100644
--- a/translate.h
+++ b/translate.h
@@ -1,5 +1,5 @@
 /* SPDX-License-Identifier: GPL-2.0 */
-/* Copyright (C) 2009-2018  B.A.T.M.A.N. contributors:
+/* Copyright (C) B.A.T.M.A.N. contributors:
  *
  * Marek Lindner <mareklindner@neomailbox.ch>
  *
--=20
2.30.0
