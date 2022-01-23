Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 45114497181
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 23 Jan 2022 13:39:54 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id EDAF082508;
	Sun, 23 Jan 2022 13:39:52 +0100 (CET)
Received: from dvalin.narfation.org (dvalin.narfation.org [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 7D4BF807DD
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 23 Jan 2022 13:39:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1642941589;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=7MjWG2BrKTtJiPqm6l/C8yIAEEx4gmEYww5hVW27ASo=;
	b=aSe3tUEaut3eU9WkXp4anfKeIfA8guxd4GxmulHGZfGxKvxeGlyhzq5HuZDHC9T0oEfOzi
	jOSC4zk6AJiWX5wLRaXK9RR3965BwUBZzjFq9lo8It4jqKRjn5MNUcq8RiXqM1C18p+UBW
	Mpj52GHB4ujzk/xCqdQINa1Wwcaa3x8=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
Subject: [PATCH] batman-adv: compat: Fix linux/build_bug.h include for Linux 4.9.297
Date: Sun, 23 Jan 2022 13:39:41 +0100
Message-Id: <20220123123941.132618-1-sven@narfation.org>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=aSe3tUEa;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1642941590; a=rsa-sha256;
	cv=none;
	b=cFNrNaufLcweEKIhSeIjwbteYj9guX3mQNo0W/rOVwA5MX/PeVeANqDVVzAsRPl7U/7hfT
	vXPWgmSX8bKwiImvdIQrYLIwPHgPiGW4GrNchUntRUxMqQMrD8RXOV6/4UPTpGHk7YXds2
	wpXEWo7fEQmS0RiGTTGAkbBWwKpcv70=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1642941590;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=7MjWG2BrKTtJiPqm6l/C8yIAEEx4gmEYww5hVW27ASo=;
	b=pu7VC6ilmuyeDmcxjSD+w4uFc3RAhylT3VDVqDsZrDXFwTKlaLT8rJkTz4xOeKp5lEEKGF
	j79YjBuG0vNNhp8mh6aLljYfB5erPAC4MIDACxZyIePkTXNhjJw6J+t/BHD41HDBNxvlYJ
	8gyHzSy2A9vqFtmeW+5sVKivBohgcA0=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: WGO4VIL3YE65T77YOAWQDNZ3V7R6QT3P
X-Message-ID-Hash: WGO4VIL3YE65T77YOAWQDNZ3V7R6QT3P
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/WGO4VIL3YE65T77YOAWQDNZ3V7R6QT3P/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Linux 4.9.297 doesn't provide BUILD_BUG_ON anymore in linux/bug.h also
identified itself with the version number 4.9.255 when decoding the
LINUX_VERSION_CODE. So we have to try to guess now if we need to include
linux/build_bug.h based on whether BUILD_BUG_ON is defined or not after
including linux/bug.h.

If not doing this, the build will fail with errors like:

  net/batman-adv/bat_algo.c:146:1: error: undefined identifier 'BUILD_BUG=
_ON_ZERO'
  net/batman-adv/bat_algo.c:146:1: error: undefined identifier 'BUILD_BUG=
_ON_ZERO'
  net/batman-adv/bat_algo.c:146:1: error: undefined identifier 'BUILD_BUG=
_ON_ZERO'
  net/batman-adv/bat_algo.c:146:1: error: undefined identifier 'BUILD_BUG=
_ON_ZERO'
  net/batman-adv/bat_algo.c:146:1: error: undefined identifier 'BUILD_BUG=
_ON_ZERO'
  net/batman-adv/bat_algo.c:146:1: error: undefined identifier 'BUILD_BUG=
_ON_ZERO'
  In file included from ./arch/x86/include/asm/cpufeatures.h:5,
                   from ./arch/x86/include/asm/cmpxchg.h:5,
                   from ./arch/x86/include/asm/atomic.h:7,
                   from ./include/linux/atomic.h:4,
                   from net/batman-adv/main.h:207,
                   from net/batman-adv/bat_algo.c:7:
  ./arch/x86/include/asm/qspinlock.h: In function =E2=80=98virt_spin_lock=
=E2=80=99:
  ./arch/x86/include/asm/required-features.h:104:29: error: implicit decl=
aration of function =E2=80=98BUILD_BUG_ON_ZERO=E2=80=99 [-Werror=3Dimplic=
it-function-declaration]

Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 compat-include/linux/build_bug.h | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/compat-include/linux/build_bug.h b/compat-include/linux/buil=
d_bug.h
index 0eecc688..1002431d 100644
--- a/compat-include/linux/build_bug.h
+++ b/compat-include/linux/build_bug.h
@@ -15,6 +15,17 @@
 #include_next <linux/build_bug.h>
 #else
 #include <linux/bug.h>
+
+/* Linux 4.9.297 doesn't provide BUILD_BUG_ON anymore in linux/bug.h
+ * also identified itself with the version number 4.9.255 when decoding =
the
+ * LINUX_VERSION_CODE. So we have to try to guess now if we need to incl=
ude
+ * linux/build_bug.h based on whether BUILD_BUG_ON is defined  or not af=
ter
+ * including linux/bug.h
+ */
+#ifndef BUILD_BUG_ON
+#include_next <linux/build_bug.h>
+#endif
+
 #endif
=20
 #endif /* _NET_BATMAN_ADV_COMPAT_LINUX_BUILD_BUG_H_ */
--=20
2.30.2
