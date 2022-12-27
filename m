Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 0101165681A
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 27 Dec 2022 09:03:09 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 95F91846CD;
	Tue, 27 Dec 2022 09:03:07 +0100 (CET)
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 3689784093
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 27 Dec 2022 09:03:05 +0100 (CET)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1672128185;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=BMT2JbbPoAqKheAaWApJvNJRtZjHJ0Ajfd6w9mlPgfU=;
	b=UfNRtfKNhp6WukU7CE+qo5lFj7d3ZPJkD/CinywV+OJa0u7hM25vDNfIrvxRYkS9jkSaWR
	Ra8s1LN+LaSQI1xYcYU6XeWOY8bKj/A4j2P0vQnloeyB0QHyCmnIEkPuEZe35Tg9zydsiY
	Fzj4fP0wJjeRWwvT3ProV8pZMe4w+14=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=QVsDXUG4;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1672128185; a=rsa-sha256;
	cv=none;
	b=xKN8MrXQjhQBi0JJpS4Wjkstc9r+Ng2fvRwkikQxHNZfy+0snVtq0Jh3WEIuVmF/XJ5+f7
	oD06kuRCg0Cy6yih4raSDw10jJND2XyQOamkovvKh5pL8Hy3fLg3QOV6LLyEvk0UY9rzTK
	LCtg2EcVvjoxjpHHR8GTZBoQUGQW53A=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1672128184;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=BMT2JbbPoAqKheAaWApJvNJRtZjHJ0Ajfd6w9mlPgfU=;
	b=QVsDXUG4/dR87vXi/OtMmc6dTgsa/QeQzVUIvo7vCJBX4Ze78EgA5sHPCK7fpklkKrEl8d
	MBKcZy8T4zhxLTxqjgYyd6aYbO8rZa9UEfQJxu7i6m2LaAThodcCBAb9DXUuC9+xDCG87v
	2W3IohDNPNF8fwm5iOdVCacDbY0cYk4=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
Subject: batman-adv: Drop prandom.h includes
Date: Tue, 27 Dec 2022 09:03:00 +0100
Message-Id: <20221227080301.516810-1-sven@narfation.org>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: Y33IHXIEAINWHG73CLW5RIMMBXBM3IIU
X-Message-ID-Hash: Y33IHXIEAINWHG73CLW5RIMMBXBM3IIU
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/Y33IHXIEAINWHG73CLW5RIMMBXBM3IIU/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

The commit a15d3f3c1c2a ("batman-adv: use get_random_u32_below() instead =
of
deprecated function") replaced the prandom.h function prandom_u32_max wit=
h
the random.h function get_random_u32_below. There is no need to still
include prandom.h.

Signed-off-by: Sven Eckelmann <sven@narfation.org>

diff --git a/compat-include/linux/prandom.h b/compat-include/linux/prando=
m.h
deleted file mode 100644
index dc227e61f95167a86432e862796db7905f7034c2..0000000000000000000000000=
000000000000000
--- a/compat-include/linux/prandom.h
+++ /dev/null
@@ -1,25 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0 */
-/* Copyright (C) B.A.T.M.A.N. contributors:
- *
- * Marek Lindner, Simon Wunderlich
- *
- * This file contains macros for maintaining compatibility with older ve=
rsions
- * of the Linux kernel.
- */
-
-#ifndef _NET_BATMAN_ADV_COMPAT_LINUX_PRANDOM_H_
-#define _NET_BATMAN_ADV_COMPAT_LINUX_PRANDOM_H_
-
-#include <linux/version.h>
-#if LINUX_VERSION_IS_GEQ(5, 8, 1) || \
-    (LINUX_VERSION_IS_GEQ(4, 9, 233) && LINUX_VERSION_IS_LESS(4, 10, 0))=
 || \
-    (LINUX_VERSION_IS_GEQ(4, 14, 193) && LINUX_VERSION_IS_LESS(4, 15, 0)=
) || \
-    (LINUX_VERSION_IS_GEQ(4, 19, 138) && LINUX_VERSION_IS_LESS(4, 20, 0)=
) || \
-    (LINUX_VERSION_IS_GEQ(5, 4, 57) && LINUX_VERSION_IS_LESS(5, 5, 0)) |=
| \
-    (LINUX_VERSION_IS_GEQ(5, 7, 14) && LINUX_VERSION_IS_LESS(5, 8, 0))
-#include_next <linux/prandom.h>
-#else
-#include <linux/random.h>
-#endif
-
-#endif /* _NET_BATMAN_ADV_COMPAT_LINUX_PRANDOM_H_ */
diff --git a/net/batman-adv/bat_iv_ogm.c b/net/batman-adv/bat_iv_ogm.c
index 114ee5da261f4410d207a76a357163aad6d1783f..828fb393ee94a31e8715b0b15=
7b4c39b6337b19d 100644
--- a/net/batman-adv/bat_iv_ogm.c
+++ b/net/batman-adv/bat_iv_ogm.c
@@ -27,7 +27,6 @@
 #include <linux/netdevice.h>
 #include <linux/netlink.h>
 #include <linux/pkt_sched.h>
-#include <linux/prandom.h>
 #include <linux/printk.h>
 #include <linux/random.h>
 #include <linux/rculist.h>
diff --git a/net/batman-adv/bat_v_elp.c b/net/batman-adv/bat_v_elp.c
index f9a58fb5442efc051e6f1bad6814f269752b7de7..acff565849ae91f4c0cf54d72=
99ed76ecb2c6ced 100644
--- a/net/batman-adv/bat_v_elp.c
+++ b/net/batman-adv/bat_v_elp.c
@@ -21,7 +21,6 @@
 #include <linux/minmax.h>
 #include <linux/netdevice.h>
 #include <linux/nl80211.h>
-#include <linux/prandom.h>
 #include <linux/random.h>
 #include <linux/rculist.h>
 #include <linux/rcupdate.h>
diff --git a/net/batman-adv/bat_v_ogm.c b/net/batman-adv/bat_v_ogm.c
index addfd8c4fe959e269b16e2f35b1299354ff4aea2..96e027364dddd30472fed8fe7=
e0a3aaa5cc8cda1 100644
--- a/net/batman-adv/bat_v_ogm.c
+++ b/net/batman-adv/bat_v_ogm.c
@@ -21,7 +21,6 @@
 #include <linux/minmax.h>
 #include <linux/mutex.h>
 #include <linux/netdevice.h>
-#include <linux/prandom.h>
 #include <linux/random.h>
 #include <linux/rculist.h>
 #include <linux/rcupdate.h>
diff --git a/net/batman-adv/network-coding.c b/net/batman-adv/network-cod=
ing.c
index bf29fba4dde5940ad03b6ed925257cdd825f57e4..5e1f422b3a94b119746a6b3b5=
cf64182951e8eb3 100644
--- a/net/batman-adv/network-coding.c
+++ b/net/batman-adv/network-coding.c
@@ -25,7 +25,6 @@
 #include <linux/lockdep.h>
 #include <linux/net.h>
 #include <linux/netdevice.h>
-#include <linux/prandom.h>
 #include <linux/printk.h>
 #include <linux/rculist.h>
 #include <linux/rcupdate.h>
