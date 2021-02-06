Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 86E52311C1D
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat,  6 Feb 2021 09:21:11 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 5011483B0F;
	Sat,  6 Feb 2021 09:21:10 +0100 (CET)
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 2C46A80426
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sat,  6 Feb 2021 09:19:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1612599549;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=ZTFtTmykWqWRiQ9ndDXZPAZMbABR1UXqlj6TFsi7/xE=;
	b=2TZdlm+DVHJJfV3GtgGONs8dyOuWBXpwdDXyMb0/gOYbpaIP0RQLrJFif3TrB9ivrvqsuC
	8XM8U0+p8vmp6FRvzV4prex2xjAZJ37n7Nt1dnH4CRZkKRAVsODdiNV8GgvrpGAKa5OsFj
	5ktrSm00rm3LoRewrzwLV5Omq5wslZ8=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: [PATCH 1/3] batman-adv: Drop publication years from copyright info
Date: Sat,  6 Feb 2021 09:18:42 +0100
Message-Id: <20210206081844.7676-1-sven@narfation.org>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1612599550;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=ZTFtTmykWqWRiQ9ndDXZPAZMbABR1UXqlj6TFsi7/xE=;
	b=2cIN6VZz4mlZL+HogGmnCKczDEAt3yGWNYaUGvhG6cDY6lKeavQNziYWz+TXe2kBEwSXWy
	tEspju55Lm172HtZJ9nviwElY+Qm/v7aqIQgpshryNbS8EBzPYQ33UF2WF6C80VvNuPO3X
	J0w2dl00x1aSN50vhctVHnxQXRUYnQg=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1612599550; a=rsa-sha256;
	cv=none;
	b=OdgamTJbgIz70rE8mEe4r9xT6cd3al7YKVZqSfwYJWhuWrd8DD/ATYpthf2W27EVEZu3S2
	0eg+vaC6dj45Zrvm1dbZ1XU63izbTO14VowFXDWnQj88csABvTVZWFBH8HIfOzitRjMIww
	1OVsDHhoDwqCZT6DT5LLPBISPCDqkfY=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=2TZdlm+D;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org
Content-Transfer-Encoding: quoted-printable
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Hits: max-recipients
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-size; news-moderation; no-subject; suspicious-header
Message-ID-Hash: VQULNGJU3ZTR2INQP6NI3A7QBIMAQDDK
X-Message-ID-Hash: VQULNGJU3ZTR2INQP6NI3A7QBIMAQDDK
X-Mailman-Approved-At: Sat, 06 Feb 2021 08:21:08 +0100
CC: Antonio Quartulli <a@unstable.cc>, Edo Monticelli <montik@autistici.org>, Jeppe Ledet-Pedersen <jlp@satlab.com>, Marek Lindner <mareklindner@neomailbox.ch>, =?UTF-8?q?Martin=20Hundeb=C3=B8ll?= <martin@hundeboll.net>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/VQULNGJU3ZTR2INQP6NI3A7QBIMAQDDK/>
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
regarding the publishing year.

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
Cc: Antonio Quartulli <a@unstable.cc>
Cc: Edo Monticelli <montik@autistici.org>
Cc: Jeppe Ledet-Pedersen <jlp@satlab.com>
Cc: Linus L=C3=BCssing <linus.luessing@c0d3.blue>
Cc: Marek Lindner <mareklindner@neomailbox.ch>
Cc: Martin Hundeb=C3=B8ll <martin@hundeboll.net>
Cc: Matthias Schiffer <mschiffer@universe-factory.net>
Cc: Simon Wunderlich <sw@simonwunderlich.de>
Cc: Sven Eckelmann <sven@narfation.org>
---
 Makefile                               | 2 +-
 compat-include/linux/average.h         | 2 +-
 compat-include/linux/build_bug.h       | 2 +-
 compat-include/linux/cache.h           | 2 +-
 compat-include/linux/compiler.h        | 2 +-
 compat-include/linux/ethtool.h         | 2 +-
 compat-include/linux/if_bridge.h       | 2 +-
 compat-include/linux/igmp.h            | 2 +-
 compat-include/linux/minmax.h          | 2 +-
 compat-include/linux/netdevice.h       | 2 +-
 compat-include/linux/netlink.h         | 2 +-
 compat-include/linux/prandom.h         | 2 +-
 compat-include/linux/rcupdate.h        | 2 +-
 compat-include/linux/skbuff.h          | 2 +-
 compat-include/linux/stddef.h          | 2 +-
 compat-include/linux/timer.h           | 2 +-
 compat-include/linux/version.h         | 2 +-
 compat-include/net/addrconf.h          | 2 +-
 compat-include/net/cfg80211.h          | 2 +-
 compat-include/net/genetlink.h         | 2 +-
 compat.h                               | 2 +-
 gen-compat-autoconf.sh                 | 2 +-
 include/uapi/linux/batadv_packet.h     | 2 +-
 include/uapi/linux/batman_adv.h        | 2 +-
 net/batman-adv/Kconfig                 | 2 +-
 net/batman-adv/Makefile                | 2 +-
 net/batman-adv/bat_algo.c              | 2 +-
 net/batman-adv/bat_algo.h              | 2 +-
 net/batman-adv/bat_iv_ogm.c            | 2 +-
 net/batman-adv/bat_iv_ogm.h            | 2 +-
 net/batman-adv/bat_v.c                 | 2 +-
 net/batman-adv/bat_v.h                 | 2 +-
 net/batman-adv/bat_v_elp.c             | 2 +-
 net/batman-adv/bat_v_elp.h             | 2 +-
 net/batman-adv/bat_v_ogm.c             | 2 +-
 net/batman-adv/bat_v_ogm.h             | 2 +-
 net/batman-adv/bitarray.c              | 2 +-
 net/batman-adv/bitarray.h              | 2 +-
 net/batman-adv/bridge_loop_avoidance.c | 2 +-
 net/batman-adv/bridge_loop_avoidance.h | 2 +-
 net/batman-adv/distributed-arp-table.c | 2 +-
 net/batman-adv/distributed-arp-table.h | 2 +-
 net/batman-adv/fragmentation.c         | 2 +-
 net/batman-adv/fragmentation.h         | 2 +-
 net/batman-adv/gateway_client.c        | 2 +-
 net/batman-adv/gateway_client.h        | 2 +-
 net/batman-adv/gateway_common.c        | 2 +-
 net/batman-adv/gateway_common.h        | 2 +-
 net/batman-adv/hard-interface.c        | 2 +-
 net/batman-adv/hard-interface.h        | 2 +-
 net/batman-adv/hash.c                  | 2 +-
 net/batman-adv/hash.h                  | 2 +-
 net/batman-adv/log.c                   | 2 +-
 net/batman-adv/log.h                   | 2 +-
 net/batman-adv/main.c                  | 2 +-
 net/batman-adv/main.h                  | 2 +-
 net/batman-adv/multicast.c             | 2 +-
 net/batman-adv/multicast.h             | 2 +-
 net/batman-adv/netlink.c               | 2 +-
 net/batman-adv/netlink.h               | 2 +-
 net/batman-adv/network-coding.c        | 2 +-
 net/batman-adv/network-coding.h        | 2 +-
 net/batman-adv/originator.c            | 2 +-
 net/batman-adv/originator.h            | 2 +-
 net/batman-adv/routing.c               | 2 +-
 net/batman-adv/routing.h               | 2 +-
 net/batman-adv/send.c                  | 2 +-
 net/batman-adv/send.h                  | 2 +-
 net/batman-adv/soft-interface.c        | 2 +-
 net/batman-adv/soft-interface.h        | 2 +-
 net/batman-adv/tp_meter.c              | 2 +-
 net/batman-adv/tp_meter.h              | 2 +-
 net/batman-adv/trace.c                 | 2 +-
 net/batman-adv/trace.h                 | 2 +-
 net/batman-adv/translation-table.c     | 2 +-
 net/batman-adv/translation-table.h     | 2 +-
 net/batman-adv/tvlv.c                  | 2 +-
 net/batman-adv/tvlv.h                  | 2 +-
 net/batman-adv/types.h                 | 2 +-
 79 files changed, 79 insertions(+), 79 deletions(-)

diff --git a/Makefile b/Makefile
index 545053b5..c29d6f5f 100644
--- a/Makefile
+++ b/Makefile
@@ -1,5 +1,5 @@
 # SPDX-License-Identifier: GPL-2.0
-# Copyright (C) 2007-2021  B.A.T.M.A.N. contributors:
+# Copyright (C) B.A.T.M.A.N. contributors:
 #
 # Marek Lindner, Simon Wunderlich
=20
diff --git a/compat-include/linux/average.h b/compat-include/linux/averag=
e.h
index a9bd0561..4881f467 100644
--- a/compat-include/linux/average.h
+++ b/compat-include/linux/average.h
@@ -1,5 +1,5 @@
 /* SPDX-License-Identifier: GPL-2.0 */
-/* Copyright (C) 2007-2021  B.A.T.M.A.N. contributors:
+/* Copyright (C) B.A.T.M.A.N. contributors:
  *
  * Marek Lindner, Simon Wunderlich
  *
diff --git a/compat-include/linux/build_bug.h b/compat-include/linux/buil=
d_bug.h
index 9cf28f04..0eecc688 100644
--- a/compat-include/linux/build_bug.h
+++ b/compat-include/linux/build_bug.h
@@ -1,5 +1,5 @@
 /* SPDX-License-Identifier: GPL-2.0 */
-/* Copyright (C) 2007-2021  B.A.T.M.A.N. contributors:
+/* Copyright (C) B.A.T.M.A.N. contributors:
  *
  * Marek Lindner, Simon Wunderlich
  *
diff --git a/compat-include/linux/cache.h b/compat-include/linux/cache.h
index ae0e62df..9d7efab5 100644
--- a/compat-include/linux/cache.h
+++ b/compat-include/linux/cache.h
@@ -1,5 +1,5 @@
 /* SPDX-License-Identifier: GPL-2.0 */
-/* Copyright (C) 2007-2021  B.A.T.M.A.N. contributors:
+/* Copyright (C) B.A.T.M.A.N. contributors:
  *
  * Marek Lindner, Simon Wunderlich
  *
diff --git a/compat-include/linux/compiler.h b/compat-include/linux/compi=
ler.h
index 4aa525a5..7175cef9 100644
--- a/compat-include/linux/compiler.h
+++ b/compat-include/linux/compiler.h
@@ -1,5 +1,5 @@
 /* SPDX-License-Identifier: GPL-2.0 */
-/* Copyright (C) 2007-2021  B.A.T.M.A.N. contributors:
+/* Copyright (C) B.A.T.M.A.N. contributors:
  *
  * Marek Lindner, Simon Wunderlich
  *
diff --git a/compat-include/linux/ethtool.h b/compat-include/linux/ethtoo=
l.h
index e9324da1..0a69fc16 100644
--- a/compat-include/linux/ethtool.h
+++ b/compat-include/linux/ethtool.h
@@ -1,5 +1,5 @@
 /* SPDX-License-Identifier: GPL-2.0 */
-/* Copyright (C) 2016-2021  B.A.T.M.A.N. contributors:
+/* Copyright (C) B.A.T.M.A.N. contributors:
  *
  * Antonio Quartulli
  *
diff --git a/compat-include/linux/if_bridge.h b/compat-include/linux/if_b=
ridge.h
index a0c53553..da00c8b0 100644
--- a/compat-include/linux/if_bridge.h
+++ b/compat-include/linux/if_bridge.h
@@ -1,5 +1,5 @@
 /* SPDX-License-Identifier: GPL-2.0 */
-/* Copyright (C) 2007-2021  B.A.T.M.A.N. contributors:
+/* Copyright (C) B.A.T.M.A.N. contributors:
  *
  * Marek Lindner, Simon Wunderlich
  *
diff --git a/compat-include/linux/igmp.h b/compat-include/linux/igmp.h
index 09dbac8b..ce21047e 100644
--- a/compat-include/linux/igmp.h
+++ b/compat-include/linux/igmp.h
@@ -1,5 +1,5 @@
 /* SPDX-License-Identifier: GPL-2.0 */
-/* Copyright (C) 2007-2021  B.A.T.M.A.N. contributors:
+/* Copyright (C) B.A.T.M.A.N. contributors:
  *
  * Marek Lindner, Simon Wunderlich
  *
diff --git a/compat-include/linux/minmax.h b/compat-include/linux/minmax.=
h
index b8ea5e8a..9b7269e8 100644
--- a/compat-include/linux/minmax.h
+++ b/compat-include/linux/minmax.h
@@ -1,5 +1,5 @@
 /* SPDX-License-Identifier: GPL-2.0 */
-/* Copyright (C) 2007-2021  B.A.T.M.A.N. contributors:
+/* Copyright (C) B.A.T.M.A.N. contributors:
  *
  * Marek Lindner, Simon Wunderlich
  *
diff --git a/compat-include/linux/netdevice.h b/compat-include/linux/netd=
evice.h
index 41521705..d6342f94 100644
--- a/compat-include/linux/netdevice.h
+++ b/compat-include/linux/netdevice.h
@@ -1,5 +1,5 @@
 /* SPDX-License-Identifier: GPL-2.0 */
-/* Copyright (C) 2007-2021  B.A.T.M.A.N. contributors:
+/* Copyright (C) B.A.T.M.A.N. contributors:
  *
  * Marek Lindner, Simon Wunderlich
  *
diff --git a/compat-include/linux/netlink.h b/compat-include/linux/netlin=
k.h
index f1fbdd1e..ef6a0358 100644
--- a/compat-include/linux/netlink.h
+++ b/compat-include/linux/netlink.h
@@ -1,5 +1,5 @@
 /* SPDX-License-Identifier: GPL-2.0 */
-/* Copyright (C) 2007-2021  B.A.T.M.A.N. contributors:
+/* Copyright (C) B.A.T.M.A.N. contributors:
  *
  * Marek Lindner, Simon Wunderlich
  *
diff --git a/compat-include/linux/prandom.h b/compat-include/linux/prando=
m.h
index a6a448d3..7dd51ac7 100644
--- a/compat-include/linux/prandom.h
+++ b/compat-include/linux/prandom.h
@@ -1,5 +1,5 @@
 /* SPDX-License-Identifier: GPL-2.0 */
-/* Copyright (C) 2007-2021  B.A.T.M.A.N. contributors:
+/* Copyright (C) B.A.T.M.A.N. contributors:
  *
  * Marek Lindner, Simon Wunderlich
  *
diff --git a/compat-include/linux/rcupdate.h b/compat-include/linux/rcupd=
ate.h
index aa8c09f7..29bdccd0 100644
--- a/compat-include/linux/rcupdate.h
+++ b/compat-include/linux/rcupdate.h
@@ -1,5 +1,5 @@
 /* SPDX-License-Identifier: GPL-2.0 */
-/* Copyright (C) 2021  B.A.T.M.A.N. contributors:
+/* Copyright (C) B.A.T.M.A.N. contributors:
  *
  * Antonio Quartulli
  *
diff --git a/compat-include/linux/skbuff.h b/compat-include/linux/skbuff.=
h
index 4a7f2b39..4c04f165 100644
--- a/compat-include/linux/skbuff.h
+++ b/compat-include/linux/skbuff.h
@@ -1,5 +1,5 @@
 /* SPDX-License-Identifier: GPL-2.0 */
-/* Copyright (C) 2007-2021  B.A.T.M.A.N. contributors:
+/* Copyright (C) B.A.T.M.A.N. contributors:
  *
  * Marek Lindner, Simon Wunderlich
  *
diff --git a/compat-include/linux/stddef.h b/compat-include/linux/stddef.=
h
index e71fc78a..c4558f81 100644
--- a/compat-include/linux/stddef.h
+++ b/compat-include/linux/stddef.h
@@ -1,5 +1,5 @@
 /* SPDX-License-Identifier: GPL-2.0 */
-/* Copyright (C) 2007-2021  B.A.T.M.A.N. contributors:
+/* Copyright (C) B.A.T.M.A.N. contributors:
  *
  * Marek Lindner, Simon Wunderlich
  *
diff --git a/compat-include/linux/timer.h b/compat-include/linux/timer.h
index 56b310f5..36da61f7 100644
--- a/compat-include/linux/timer.h
+++ b/compat-include/linux/timer.h
@@ -1,5 +1,5 @@
 /* SPDX-License-Identifier: GPL-2.0 */
-/* Copyright (C) 2007-2021  B.A.T.M.A.N. contributors:
+/* Copyright (C) B.A.T.M.A.N. contributors:
  *
  * Marek Lindner, Simon Wunderlich
  *
diff --git a/compat-include/linux/version.h b/compat-include/linux/versio=
n.h
index 610fa05c..b6aefa36 100644
--- a/compat-include/linux/version.h
+++ b/compat-include/linux/version.h
@@ -1,5 +1,5 @@
 /* SPDX-License-Identifier: GPL-2.0 */
-/* Copyright (C) 2007-2021  B.A.T.M.A.N. contributors:
+/* Copyright (C) B.A.T.M.A.N. contributors:
  *
  * Marek Lindner, Simon Wunderlich
  *
diff --git a/compat-include/net/addrconf.h b/compat-include/net/addrconf.=
h
index ad64a9a6..30124124 100644
--- a/compat-include/net/addrconf.h
+++ b/compat-include/net/addrconf.h
@@ -1,5 +1,5 @@
 /* SPDX-License-Identifier: GPL-2.0 */
-/* Copyright (C) 2007-2021  B.A.T.M.A.N. contributors:
+/* Copyright (C) B.A.T.M.A.N. contributors:
  *
  * Marek Lindner, Simon Wunderlich
  *
diff --git a/compat-include/net/cfg80211.h b/compat-include/net/cfg80211.=
h
index ee8aee37..6b756007 100644
--- a/compat-include/net/cfg80211.h
+++ b/compat-include/net/cfg80211.h
@@ -1,5 +1,5 @@
 /* SPDX-License-Identifier: GPL-2.0 */
-/* Copyright (C) 2007-2021  B.A.T.M.A.N. contributors:
+/* Copyright (C) B.A.T.M.A.N. contributors:
  *
  * Marek Lindner, Simon Wunderlich
  *
diff --git a/compat-include/net/genetlink.h b/compat-include/net/genetlin=
k.h
index 3eab6a77..56a9ab22 100644
--- a/compat-include/net/genetlink.h
+++ b/compat-include/net/genetlink.h
@@ -1,5 +1,5 @@
 /* SPDX-License-Identifier: GPL-2.0 */
-/* Copyright (C) 2007-2021  B.A.T.M.A.N. contributors:
+/* Copyright (C) B.A.T.M.A.N. contributors:
  *
  * Marek Lindner, Simon Wunderlich
  *
diff --git a/compat.h b/compat.h
index 55cd93ec..86e68d83 100644
--- a/compat.h
+++ b/compat.h
@@ -1,5 +1,5 @@
 /* SPDX-License-Identifier: GPL-2.0 */
-/* Copyright (C) 2007-2021  B.A.T.M.A.N. contributors:
+/* Copyright (C) B.A.T.M.A.N. contributors:
  *
  * Marek Lindner, Simon Wunderlich
  */
diff --git a/gen-compat-autoconf.sh b/gen-compat-autoconf.sh
index 35fbf0bd..3b9fc31f 100755
--- a/gen-compat-autoconf.sh
+++ b/gen-compat-autoconf.sh
@@ -1,6 +1,6 @@
 #! /bin/sh
 # SPDX-License-Identifier: GPL-2.0
-# Copyright (C) 2007-2021  B.A.T.M.A.N. contributors:
+# Copyright (C) B.A.T.M.A.N. contributors:
 #
 # Marek Lindner, Simon Wunderlich
=20
diff --git a/include/uapi/linux/batadv_packet.h b/include/uapi/linux/bata=
dv_packet.h
index 67b773ea..ea4692c3 100644
--- a/include/uapi/linux/batadv_packet.h
+++ b/include/uapi/linux/batadv_packet.h
@@ -1,5 +1,5 @@
 /* SPDX-License-Identifier: (GPL-2.0 WITH Linux-syscall-note) */
-/* Copyright (C) 2007-2021  B.A.T.M.A.N. contributors:
+/* Copyright (C) B.A.T.M.A.N. contributors:
  *
  * Marek Lindner, Simon Wunderlich
  */
diff --git a/include/uapi/linux/batman_adv.h b/include/uapi/linux/batman_=
adv.h
index 27d35e7f..35dc016c 100644
--- a/include/uapi/linux/batman_adv.h
+++ b/include/uapi/linux/batman_adv.h
@@ -1,5 +1,5 @@
 /* SPDX-License-Identifier: MIT */
-/* Copyright (C) 2016-2021  B.A.T.M.A.N. contributors:
+/* Copyright (C) B.A.T.M.A.N. contributors:
  *
  * Matthias Schiffer
  */
diff --git a/net/batman-adv/Kconfig b/net/batman-adv/Kconfig
index 09cc8360..860a0786 100644
--- a/net/batman-adv/Kconfig
+++ b/net/batman-adv/Kconfig
@@ -1,5 +1,5 @@
 # SPDX-License-Identifier: GPL-2.0
-# Copyright (C) 2007-2021  B.A.T.M.A.N. contributors:
+# Copyright (C) B.A.T.M.A.N. contributors:
 #
 # Marek Lindner, Simon Wunderlich
=20
diff --git a/net/batman-adv/Makefile b/net/batman-adv/Makefile
index c5071737..3bd0760c 100644
--- a/net/batman-adv/Makefile
+++ b/net/batman-adv/Makefile
@@ -1,5 +1,5 @@
 # SPDX-License-Identifier: GPL-2.0
-# Copyright (C) 2007-2021  B.A.T.M.A.N. contributors:
+# Copyright (C) B.A.T.M.A.N. contributors:
 #
 # Marek Lindner, Simon Wunderlich
=20
diff --git a/net/batman-adv/bat_algo.c b/net/batman-adv/bat_algo.c
index 8b66a57a..4eee53d1 100644
--- a/net/batman-adv/bat_algo.c
+++ b/net/batman-adv/bat_algo.c
@@ -1,5 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0
-/* Copyright (C) 2007-2021  B.A.T.M.A.N. contributors:
+/* Copyright (C) B.A.T.M.A.N. contributors:
  *
  * Marek Lindner, Simon Wunderlich
  */
diff --git a/net/batman-adv/bat_algo.h b/net/batman-adv/bat_algo.h
index 4073fa7e..2c486374 100644
--- a/net/batman-adv/bat_algo.h
+++ b/net/batman-adv/bat_algo.h
@@ -1,5 +1,5 @@
 /* SPDX-License-Identifier: GPL-2.0 */
-/* Copyright (C) 2011-2021  B.A.T.M.A.N. contributors:
+/* Copyright (C) B.A.T.M.A.N. contributors:
  *
  * Marek Lindner, Linus L=C3=BCssing
  */
diff --git a/net/batman-adv/bat_iv_ogm.c b/net/batman-adv/bat_iv_ogm.c
index 4c583eec..a5e313cd 100644
--- a/net/batman-adv/bat_iv_ogm.c
+++ b/net/batman-adv/bat_iv_ogm.c
@@ -1,5 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0
-/* Copyright (C) 2007-2021  B.A.T.M.A.N. contributors:
+/* Copyright (C) B.A.T.M.A.N. contributors:
  *
  * Marek Lindner, Simon Wunderlich
  */
diff --git a/net/batman-adv/bat_iv_ogm.h b/net/batman-adv/bat_iv_ogm.h
index b6e7f322..04b01bd6 100644
--- a/net/batman-adv/bat_iv_ogm.h
+++ b/net/batman-adv/bat_iv_ogm.h
@@ -1,5 +1,5 @@
 /* SPDX-License-Identifier: GPL-2.0 */
-/* Copyright (C) 2007-2021  B.A.T.M.A.N. contributors:
+/* Copyright (C) B.A.T.M.A.N. contributors:
  *
  * Marek Lindner, Simon Wunderlich
  */
diff --git a/net/batman-adv/bat_v.c b/net/batman-adv/bat_v.c
index 089b3e50..e1ca2b8c 100644
--- a/net/batman-adv/bat_v.c
+++ b/net/batman-adv/bat_v.c
@@ -1,5 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0
-/* Copyright (C) 2013-2021  B.A.T.M.A.N. contributors:
+/* Copyright (C) B.A.T.M.A.N. contributors:
  *
  * Linus L=C3=BCssing, Marek Lindner
  */
diff --git a/net/batman-adv/bat_v.h b/net/batman-adv/bat_v.h
index bc07ae6a..964431f4 100644
--- a/net/batman-adv/bat_v.h
+++ b/net/batman-adv/bat_v.h
@@ -1,5 +1,5 @@
 /* SPDX-License-Identifier: GPL-2.0 */
-/* Copyright (C) 2011-2021  B.A.T.M.A.N. contributors:
+/* Copyright (C) B.A.T.M.A.N. contributors:
  *
  * Marek Lindner, Linus L=C3=BCssing
  */
diff --git a/net/batman-adv/bat_v_elp.c b/net/batman-adv/bat_v_elp.c
index 3f01881b..423c2d17 100644
--- a/net/batman-adv/bat_v_elp.c
+++ b/net/batman-adv/bat_v_elp.c
@@ -1,5 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0
-/* Copyright (C) 2011-2021  B.A.T.M.A.N. contributors:
+/* Copyright (C) B.A.T.M.A.N. contributors:
  *
  * Linus L=C3=BCssing, Marek Lindner
  */
diff --git a/net/batman-adv/bat_v_elp.h b/net/batman-adv/bat_v_elp.h
index 5c678079..9e274019 100644
--- a/net/batman-adv/bat_v_elp.h
+++ b/net/batman-adv/bat_v_elp.h
@@ -1,5 +1,5 @@
 /* SPDX-License-Identifier: GPL-2.0 */
-/* Copyright (C) 2013-2021  B.A.T.M.A.N. contributors:
+/* Copyright (C) B.A.T.M.A.N. contributors:
  *
  * Linus L=C3=BCssing, Marek Lindner
  */
diff --git a/net/batman-adv/bat_v_ogm.c b/net/batman-adv/bat_v_ogm.c
index 20d7928c..a0a9636d 100644
--- a/net/batman-adv/bat_v_ogm.c
+++ b/net/batman-adv/bat_v_ogm.c
@@ -1,5 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0
-/* Copyright (C) 2013-2021  B.A.T.M.A.N. contributors:
+/* Copyright (C) B.A.T.M.A.N. contributors:
  *
  * Antonio Quartulli
  */
diff --git a/net/batman-adv/bat_v_ogm.h b/net/batman-adv/bat_v_ogm.h
index a509004f..edeffede 100644
--- a/net/batman-adv/bat_v_ogm.h
+++ b/net/batman-adv/bat_v_ogm.h
@@ -1,5 +1,5 @@
 /* SPDX-License-Identifier: GPL-2.0 */
-/* Copyright (C) 2013-2021  B.A.T.M.A.N. contributors:
+/* Copyright (C) B.A.T.M.A.N. contributors:
  *
  * Antonio Quartulli
  */
diff --git a/net/batman-adv/bitarray.c b/net/batman-adv/bitarray.c
index 27be6cae..649c41f3 100644
--- a/net/batman-adv/bitarray.c
+++ b/net/batman-adv/bitarray.c
@@ -1,5 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0
-/* Copyright (C) 2006-2021  B.A.T.M.A.N. contributors:
+/* Copyright (C) B.A.T.M.A.N. contributors:
  *
  * Simon Wunderlich, Marek Lindner
  */
diff --git a/net/batman-adv/bitarray.h b/net/batman-adv/bitarray.h
index 704afafa..37f7ae41 100644
--- a/net/batman-adv/bitarray.h
+++ b/net/batman-adv/bitarray.h
@@ -1,5 +1,5 @@
 /* SPDX-License-Identifier: GPL-2.0 */
-/* Copyright (C) 2006-2021  B.A.T.M.A.N. contributors:
+/* Copyright (C) B.A.T.M.A.N. contributors:
  *
  * Simon Wunderlich, Marek Lindner
  */
diff --git a/net/batman-adv/bridge_loop_avoidance.c b/net/batman-adv/brid=
ge_loop_avoidance.c
index d4184bfb..360bdbf4 100644
--- a/net/batman-adv/bridge_loop_avoidance.c
+++ b/net/batman-adv/bridge_loop_avoidance.c
@@ -1,5 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0
-/* Copyright (C) 2011-2021  B.A.T.M.A.N. contributors:
+/* Copyright (C) B.A.T.M.A.N. contributors:
  *
  * Simon Wunderlich
  */
diff --git a/net/batman-adv/bridge_loop_avoidance.h b/net/batman-adv/brid=
ge_loop_avoidance.h
index 73f01206..5c22955b 100644
--- a/net/batman-adv/bridge_loop_avoidance.h
+++ b/net/batman-adv/bridge_loop_avoidance.h
@@ -1,5 +1,5 @@
 /* SPDX-License-Identifier: GPL-2.0 */
-/* Copyright (C) 2011-2021  B.A.T.M.A.N. contributors:
+/* Copyright (C) B.A.T.M.A.N. contributors:
  *
  * Simon Wunderlich
  */
diff --git a/net/batman-adv/distributed-arp-table.c b/net/batman-adv/dist=
ributed-arp-table.c
index fcabd6b1..8c95a11a 100644
--- a/net/batman-adv/distributed-arp-table.c
+++ b/net/batman-adv/distributed-arp-table.c
@@ -1,5 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0
-/* Copyright (C) 2011-2021  B.A.T.M.A.N. contributors:
+/* Copyright (C) B.A.T.M.A.N. contributors:
  *
  * Antonio Quartulli
  */
diff --git a/net/batman-adv/distributed-arp-table.h b/net/batman-adv/dist=
ributed-arp-table.h
index efa2a0d0..bed7f3d2 100644
--- a/net/batman-adv/distributed-arp-table.h
+++ b/net/batman-adv/distributed-arp-table.h
@@ -1,5 +1,5 @@
 /* SPDX-License-Identifier: GPL-2.0 */
-/* Copyright (C) 2011-2021  B.A.T.M.A.N. contributors:
+/* Copyright (C) B.A.T.M.A.N. contributors:
  *
  * Antonio Quartulli
  */
diff --git a/net/batman-adv/fragmentation.c b/net/batman-adv/fragmentatio=
n.c
index 89344632..a5d9d800 100644
--- a/net/batman-adv/fragmentation.c
+++ b/net/batman-adv/fragmentation.c
@@ -1,5 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0
-/* Copyright (C) 2013-2021  B.A.T.M.A.N. contributors:
+/* Copyright (C) B.A.T.M.A.N. contributors:
  *
  * Martin Hundeb=C3=B8ll <martin@hundeboll.net>
  */
diff --git a/net/batman-adv/fragmentation.h b/net/batman-adv/fragmentatio=
n.h
index 86d6b856..dbf0871f 100644
--- a/net/batman-adv/fragmentation.h
+++ b/net/batman-adv/fragmentation.h
@@ -1,5 +1,5 @@
 /* SPDX-License-Identifier: GPL-2.0 */
-/* Copyright (C) 2013-2021  B.A.T.M.A.N. contributors:
+/* Copyright (C) B.A.T.M.A.N. contributors:
  *
  * Martin Hundeb=C3=B8ll <martin@hundeboll.net>
  */
diff --git a/net/batman-adv/gateway_client.c b/net/batman-adv/gateway_cli=
ent.c
index 2ebfe62d..007f2827 100644
--- a/net/batman-adv/gateway_client.c
+++ b/net/batman-adv/gateway_client.c
@@ -1,5 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0
-/* Copyright (C) 2009-2021  B.A.T.M.A.N. contributors:
+/* Copyright (C) B.A.T.M.A.N. contributors:
  *
  * Marek Lindner
  */
diff --git a/net/batman-adv/gateway_client.h b/net/batman-adv/gateway_cli=
ent.h
index 5c8c0b92..2ae5846e 100644
--- a/net/batman-adv/gateway_client.h
+++ b/net/batman-adv/gateway_client.h
@@ -1,5 +1,5 @@
 /* SPDX-License-Identifier: GPL-2.0 */
-/* Copyright (C) 2009-2021  B.A.T.M.A.N. contributors:
+/* Copyright (C) B.A.T.M.A.N. contributors:
  *
  * Marek Lindner
  */
diff --git a/net/batman-adv/gateway_common.c b/net/batman-adv/gateway_com=
mon.c
index 7208b7ad..fdde305a 100644
--- a/net/batman-adv/gateway_common.c
+++ b/net/batman-adv/gateway_common.c
@@ -1,5 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0
-/* Copyright (C) 2009-2021  B.A.T.M.A.N. contributors:
+/* Copyright (C) B.A.T.M.A.N. contributors:
  *
  * Marek Lindner
  */
diff --git a/net/batman-adv/gateway_common.h b/net/batman-adv/gateway_com=
mon.h
index 9ccf195a..87c37f90 100644
--- a/net/batman-adv/gateway_common.h
+++ b/net/batman-adv/gateway_common.h
@@ -1,5 +1,5 @@
 /* SPDX-License-Identifier: GPL-2.0 */
-/* Copyright (C) 2009-2021  B.A.T.M.A.N. contributors:
+/* Copyright (C) B.A.T.M.A.N. contributors:
  *
  * Marek Lindner
  */
diff --git a/net/batman-adv/hard-interface.c b/net/batman-adv/hard-interf=
ace.c
index 6e3c7a6c..4a6a25d5 100644
--- a/net/batman-adv/hard-interface.c
+++ b/net/batman-adv/hard-interface.c
@@ -1,5 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0
-/* Copyright (C) 2007-2021  B.A.T.M.A.N. contributors:
+/* Copyright (C) B.A.T.M.A.N. contributors:
  *
  * Marek Lindner, Simon Wunderlich
  */
diff --git a/net/batman-adv/hard-interface.h b/net/batman-adv/hard-interf=
ace.h
index bfaf4f88..83d11b46 100644
--- a/net/batman-adv/hard-interface.h
+++ b/net/batman-adv/hard-interface.h
@@ -1,5 +1,5 @@
 /* SPDX-License-Identifier: GPL-2.0 */
-/* Copyright (C) 2007-2021  B.A.T.M.A.N. contributors:
+/* Copyright (C) B.A.T.M.A.N. contributors:
  *
  * Marek Lindner, Simon Wunderlich
  */
diff --git a/net/batman-adv/hash.c b/net/batman-adv/hash.c
index 1bcfdcf4..8016e619 100644
--- a/net/batman-adv/hash.c
+++ b/net/batman-adv/hash.c
@@ -1,5 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0
-/* Copyright (C) 2006-2021  B.A.T.M.A.N. contributors:
+/* Copyright (C) B.A.T.M.A.N. contributors:
  *
  * Simon Wunderlich, Marek Lindner
  */
diff --git a/net/batman-adv/hash.h b/net/batman-adv/hash.h
index 276b3080..46696759 100644
--- a/net/batman-adv/hash.h
+++ b/net/batman-adv/hash.h
@@ -1,5 +1,5 @@
 /* SPDX-License-Identifier: GPL-2.0 */
-/* Copyright (C) 2006-2021  B.A.T.M.A.N. contributors:
+/* Copyright (C) B.A.T.M.A.N. contributors:
  *
  * Simon Wunderlich, Marek Lindner
  */
diff --git a/net/batman-adv/log.c b/net/batman-adv/log.c
index 7db20058..f0e5d142 100644
--- a/net/batman-adv/log.c
+++ b/net/batman-adv/log.c
@@ -1,5 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0
-/* Copyright (C) 2010-2021  B.A.T.M.A.N. contributors:
+/* Copyright (C) B.A.T.M.A.N. contributors:
  *
  * Marek Lindner
  */
diff --git a/net/batman-adv/log.h b/net/batman-adv/log.h
index 1f50296d..6717c965 100644
--- a/net/batman-adv/log.h
+++ b/net/batman-adv/log.h
@@ -1,5 +1,5 @@
 /* SPDX-License-Identifier: GPL-2.0 */
-/* Copyright (C) 2007-2021  B.A.T.M.A.N. contributors:
+/* Copyright (C) B.A.T.M.A.N. contributors:
  *
  * Marek Lindner, Simon Wunderlich
  */
diff --git a/net/batman-adv/main.c b/net/batman-adv/main.c
index e3eadd64..e48f7ac8 100644
--- a/net/batman-adv/main.c
+++ b/net/batman-adv/main.c
@@ -1,5 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0
-/* Copyright (C) 2007-2021  B.A.T.M.A.N. contributors:
+/* Copyright (C) B.A.T.M.A.N. contributors:
  *
  * Marek Lindner, Simon Wunderlich
  */
diff --git a/net/batman-adv/main.h b/net/batman-adv/main.h
index 1360eb09..8f0102b7 100644
--- a/net/batman-adv/main.h
+++ b/net/batman-adv/main.h
@@ -1,5 +1,5 @@
 /* SPDX-License-Identifier: GPL-2.0 */
-/* Copyright (C) 2007-2021  B.A.T.M.A.N. contributors:
+/* Copyright (C) B.A.T.M.A.N. contributors:
  *
  * Marek Lindner, Simon Wunderlich
  */
diff --git a/net/batman-adv/multicast.c b/net/batman-adv/multicast.c
index ad216c42..28166402 100644
--- a/net/batman-adv/multicast.c
+++ b/net/batman-adv/multicast.c
@@ -1,5 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0
-/* Copyright (C) 2014-2021  B.A.T.M.A.N. contributors:
+/* Copyright (C) B.A.T.M.A.N. contributors:
  *
  * Linus L=C3=BCssing
  */
diff --git a/net/batman-adv/multicast.h b/net/batman-adv/multicast.h
index d13efd4b..9fee5da0 100644
--- a/net/batman-adv/multicast.h
+++ b/net/batman-adv/multicast.h
@@ -1,5 +1,5 @@
 /* SPDX-License-Identifier: GPL-2.0 */
-/* Copyright (C) 2014-2021  B.A.T.M.A.N. contributors:
+/* Copyright (C) B.A.T.M.A.N. contributors:
  *
  * Linus L=C3=BCssing
  */
diff --git a/net/batman-adv/netlink.c b/net/batman-adv/netlink.c
index c80527b8..f317d206 100644
--- a/net/batman-adv/netlink.c
+++ b/net/batman-adv/netlink.c
@@ -1,5 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0
-/* Copyright (C) 2016-2021  B.A.T.M.A.N. contributors:
+/* Copyright (C) B.A.T.M.A.N. contributors:
  *
  * Matthias Schiffer
  */
diff --git a/net/batman-adv/netlink.h b/net/batman-adv/netlink.h
index 48455ac2..48102cc7 100644
--- a/net/batman-adv/netlink.h
+++ b/net/batman-adv/netlink.h
@@ -1,5 +1,5 @@
 /* SPDX-License-Identifier: GPL-2.0 */
-/* Copyright (C) 2016-2021  B.A.T.M.A.N. contributors:
+/* Copyright (C) B.A.T.M.A.N. contributors:
  *
  * Matthias Schiffer
  */
diff --git a/net/batman-adv/network-coding.c b/net/batman-adv/network-cod=
ing.c
index 24f76101..4bb76b43 100644
--- a/net/batman-adv/network-coding.c
+++ b/net/batman-adv/network-coding.c
@@ -1,5 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0
-/* Copyright (C) 2012-2021  B.A.T.M.A.N. contributors:
+/* Copyright (C) B.A.T.M.A.N. contributors:
  *
  * Martin Hundeb=C3=B8ll, Jeppe Ledet-Pedersen
  */
diff --git a/net/batman-adv/network-coding.h b/net/batman-adv/network-cod=
ing.h
index e7f87d32..368cc313 100644
--- a/net/batman-adv/network-coding.h
+++ b/net/batman-adv/network-coding.h
@@ -1,5 +1,5 @@
 /* SPDX-License-Identifier: GPL-2.0 */
-/* Copyright (C) 2012-2021  B.A.T.M.A.N. contributors:
+/* Copyright (C) B.A.T.M.A.N. contributors:
  *
  * Martin Hundeb=C3=B8ll, Jeppe Ledet-Pedersen
  */
diff --git a/net/batman-adv/originator.c b/net/batman-adv/originator.c
index 88496f4e..da724944 100644
--- a/net/batman-adv/originator.c
+++ b/net/batman-adv/originator.c
@@ -1,5 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0
-/* Copyright (C) 2009-2021  B.A.T.M.A.N. contributors:
+/* Copyright (C) B.A.T.M.A.N. contributors:
  *
  * Marek Lindner, Simon Wunderlich
  */
diff --git a/net/batman-adv/originator.h b/net/batman-adv/originator.h
index 620d02f7..805be87d 100644
--- a/net/batman-adv/originator.h
+++ b/net/batman-adv/originator.h
@@ -1,5 +1,5 @@
 /* SPDX-License-Identifier: GPL-2.0 */
-/* Copyright (C) 2007-2021  B.A.T.M.A.N. contributors:
+/* Copyright (C) B.A.T.M.A.N. contributors:
  *
  * Marek Lindner, Simon Wunderlich
  */
diff --git a/net/batman-adv/routing.c b/net/batman-adv/routing.c
index 7cc6a549..40f5cffd 100644
--- a/net/batman-adv/routing.c
+++ b/net/batman-adv/routing.c
@@ -1,5 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0
-/* Copyright (C) 2007-2021  B.A.T.M.A.N. contributors:
+/* Copyright (C) B.A.T.M.A.N. contributors:
  *
  * Marek Lindner, Simon Wunderlich
  */
diff --git a/net/batman-adv/routing.h b/net/batman-adv/routing.h
index 24238091..5f387786 100644
--- a/net/batman-adv/routing.h
+++ b/net/batman-adv/routing.h
@@ -1,5 +1,5 @@
 /* SPDX-License-Identifier: GPL-2.0 */
-/* Copyright (C) 2007-2021  B.A.T.M.A.N. contributors:
+/* Copyright (C) B.A.T.M.A.N. contributors:
  *
  * Marek Lindner, Simon Wunderlich
  */
diff --git a/net/batman-adv/send.c b/net/batman-adv/send.c
index 990e5854..157abe92 100644
--- a/net/batman-adv/send.c
+++ b/net/batman-adv/send.c
@@ -1,5 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0
-/* Copyright (C) 2007-2021  B.A.T.M.A.N. contributors:
+/* Copyright (C) B.A.T.M.A.N. contributors:
  *
  * Marek Lindner, Simon Wunderlich
  */
diff --git a/net/batman-adv/send.h b/net/batman-adv/send.h
index 27c45eec..2b0daf8b 100644
--- a/net/batman-adv/send.h
+++ b/net/batman-adv/send.h
@@ -1,5 +1,5 @@
 /* SPDX-License-Identifier: GPL-2.0 */
-/* Copyright (C) 2007-2021  B.A.T.M.A.N. contributors:
+/* Copyright (C) B.A.T.M.A.N. contributors:
  *
  * Marek Lindner, Simon Wunderlich
  */
diff --git a/net/batman-adv/soft-interface.c b/net/batman-adv/soft-interf=
ace.c
index 7395a545..6b8181bc 100644
--- a/net/batman-adv/soft-interface.c
+++ b/net/batman-adv/soft-interface.c
@@ -1,5 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0
-/* Copyright (C) 2007-2021  B.A.T.M.A.N. contributors:
+/* Copyright (C) B.A.T.M.A.N. contributors:
  *
  * Marek Lindner, Simon Wunderlich
  */
diff --git a/net/batman-adv/soft-interface.h b/net/batman-adv/soft-interf=
ace.h
index 34d4f583..38b0ad18 100644
--- a/net/batman-adv/soft-interface.h
+++ b/net/batman-adv/soft-interface.h
@@ -1,5 +1,5 @@
 /* SPDX-License-Identifier: GPL-2.0 */
-/* Copyright (C) 2007-2021  B.A.T.M.A.N. contributors:
+/* Copyright (C) B.A.T.M.A.N. contributors:
  *
  * Marek Lindner
  */
diff --git a/net/batman-adv/tp_meter.c b/net/batman-adv/tp_meter.c
index 72ec4aab..789c8517 100644
--- a/net/batman-adv/tp_meter.c
+++ b/net/batman-adv/tp_meter.c
@@ -1,5 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0
-/* Copyright (C) 2012-2021  B.A.T.M.A.N. contributors:
+/* Copyright (C) B.A.T.M.A.N. contributors:
  *
  * Edo Monticelli, Antonio Quartulli
  */
diff --git a/net/batman-adv/tp_meter.h b/net/batman-adv/tp_meter.h
index 0b7904bd..f0046d36 100644
--- a/net/batman-adv/tp_meter.h
+++ b/net/batman-adv/tp_meter.h
@@ -1,5 +1,5 @@
 /* SPDX-License-Identifier: GPL-2.0 */
-/* Copyright (C) 2012-2021  B.A.T.M.A.N. contributors:
+/* Copyright (C) B.A.T.M.A.N. contributors:
  *
  * Edo Monticelli, Antonio Quartulli
  */
diff --git a/net/batman-adv/trace.c b/net/batman-adv/trace.c
index b2452822..ec8b9519 100644
--- a/net/batman-adv/trace.c
+++ b/net/batman-adv/trace.c
@@ -1,5 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0
-/* Copyright (C) 2010-2021  B.A.T.M.A.N. contributors:
+/* Copyright (C) B.A.T.M.A.N. contributors:
  *
  * Sven Eckelmann
  */
diff --git a/net/batman-adv/trace.h b/net/batman-adv/trace.h
index bd5e4525..d673ebdd 100644
--- a/net/batman-adv/trace.h
+++ b/net/batman-adv/trace.h
@@ -1,5 +1,5 @@
 /* SPDX-License-Identifier: GPL-2.0 */
-/* Copyright (C) 2010-2021  B.A.T.M.A.N. contributors:
+/* Copyright (C) B.A.T.M.A.N. contributors:
  *
  * Sven Eckelmann
  */
diff --git a/net/batman-adv/translation-table.c b/net/batman-adv/translat=
ion-table.c
index badf1439..f8761281 100644
--- a/net/batman-adv/translation-table.c
+++ b/net/batman-adv/translation-table.c
@@ -1,5 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0
-/* Copyright (C) 2007-2021  B.A.T.M.A.N. contributors:
+/* Copyright (C) B.A.T.M.A.N. contributors:
  *
  * Marek Lindner, Simon Wunderlich, Antonio Quartulli
  */
diff --git a/net/batman-adv/translation-table.h b/net/batman-adv/translat=
ion-table.h
index 913c4455..e1285904 100644
--- a/net/batman-adv/translation-table.h
+++ b/net/batman-adv/translation-table.h
@@ -1,5 +1,5 @@
 /* SPDX-License-Identifier: GPL-2.0 */
-/* Copyright (C) 2007-2021  B.A.T.M.A.N. contributors:
+/* Copyright (C) B.A.T.M.A.N. contributors:
  *
  * Marek Lindner, Simon Wunderlich, Antonio Quartulli
  */
diff --git a/net/batman-adv/tvlv.c b/net/batman-adv/tvlv.c
index 7de7dd72..253f5a33 100644
--- a/net/batman-adv/tvlv.c
+++ b/net/batman-adv/tvlv.c
@@ -1,5 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0
-/* Copyright (C) 2007-2021  B.A.T.M.A.N. contributors:
+/* Copyright (C) B.A.T.M.A.N. contributors:
  *
  * Marek Lindner, Simon Wunderlich
  */
diff --git a/net/batman-adv/tvlv.h b/net/batman-adv/tvlv.h
index 4c3265d3..54f2a356 100644
--- a/net/batman-adv/tvlv.h
+++ b/net/batman-adv/tvlv.h
@@ -1,5 +1,5 @@
 /* SPDX-License-Identifier: GPL-2.0 */
-/* Copyright (C) 2007-2021  B.A.T.M.A.N. contributors:
+/* Copyright (C) B.A.T.M.A.N. contributors:
  *
  * Marek Lindner, Simon Wunderlich
  */
diff --git a/net/batman-adv/types.h b/net/batman-adv/types.h
index aae7366b..7c0b475c 100644
--- a/net/batman-adv/types.h
+++ b/net/batman-adv/types.h
@@ -1,5 +1,5 @@
 /* SPDX-License-Identifier: GPL-2.0 */
-/* Copyright (C) 2007-2021  B.A.T.M.A.N. contributors:
+/* Copyright (C) B.A.T.M.A.N. contributors:
  *
  * Marek Lindner, Simon Wunderlich
  */
--=20
2.30.0
