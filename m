Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C855250207
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 24 Aug 2020 18:28:08 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 068B7804B0;
	Mon, 24 Aug 2020 18:28:02 +0200 (CEST)
Received: from simonwunderlich.de (simonwunderlich.de [79.140.42.25])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 062C280017
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 24 Aug 2020 18:27:48 +0200 (CEST)
Received: from kero.packetmixer.de (p200300c5970d68d0e0160e8a82c5fd76.dip0.t-ipconnect.de [IPv6:2003:c5:970d:68d0:e016:e8a:82c5:fd76])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by simonwunderlich.de (Postfix) with ESMTPSA id C864862075;
	Mon, 24 Aug 2020 18:27:47 +0200 (CEST)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: davem@davemloft.net
Subject: [PATCH 5/5] batman-adv: Migrate to linux/prandom.h
Date: Mon, 24 Aug 2020 18:27:41 +0200
Message-Id: <20200824162741.880-6-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200824162741.880-1-sw@simonwunderlich.de>
References: <20200824162741.880-1-sw@simonwunderlich.de>
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1598286468;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=2SC7eKWQxvZnGkJaovczPf3tWn5boSoC8RMW+LGtO50=;
	b=gtadoouSo1TnQO2Cv0Nu951WC2HDyxrFfhOIX3dHZ/NIv7x78bciRRz+7mzwxMezA6wBe7
	NDJ80wWwif/ld0+MvCFtO4f/pCaV5fLrJtf+mGXE/cariVLmP63AdlxkUGy/yHOYDYO4JF
	obHhNpl1xJXjfukYySRaMx0f1vEZDAU=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1598286468; a=rsa-sha256;
	cv=none;
	b=rA9rM0Hgg5qxtCASjwgpq83JD/uwcLs7Lqnkp/r7BI5ULd9/L4o6nJoY4b0iZA8FArL1XV
	3PGRCqabkkVkWySGe3RYGOGxHkYgu3D+HOgru4Wim0VabUmOCgrtIhz8HbKHTCPiR1UQDE
	tGoYB3smgrwJOWt04V1br/sCaJTPxOs=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates 79.140.42.25 as permitted sender) smtp.mailfrom=sw@simonwunderlich.de
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: YOJDUMSY4DZPTMOGRON2KI5ZHJTHXXSX
X-Message-ID-Hash: YOJDUMSY4DZPTMOGRON2KI5ZHJTHXXSX
X-MailFrom: sw@simonwunderlich.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/YOJDUMSY4DZPTMOGRON2KI5ZHJTHXXSX/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

From: Sven Eckelmann <sven@narfation.org>

The commit c0842fbc1b18 ("random32: move the pseudo-random 32-bit
definitions to prandom.h") introduced a new header for the pseudo random
functions from (previously) linux/random.h. One future goal of the
prandom.h change is to make code to switch just the new header file and t=
o
avoid the implicit include. This would allow the removal of the implicit
include from random.h

Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 net/batman-adv/bat_iv_ogm.c     | 1 +
 net/batman-adv/bat_v_elp.c      | 1 +
 net/batman-adv/bat_v_ogm.c      | 1 +
 net/batman-adv/network-coding.c | 2 +-
 4 files changed, 4 insertions(+), 1 deletion(-)

diff --git a/net/batman-adv/bat_iv_ogm.c b/net/batman-adv/bat_iv_ogm.c
index a4faf5f904d9..206d0b424712 100644
--- a/net/batman-adv/bat_iv_ogm.c
+++ b/net/batman-adv/bat_iv_ogm.c
@@ -27,6 +27,7 @@
 #include <linux/netdevice.h>
 #include <linux/netlink.h>
 #include <linux/pkt_sched.h>
+#include <linux/prandom.h>
 #include <linux/printk.h>
 #include <linux/random.h>
 #include <linux/rculist.h>
diff --git a/net/batman-adv/bat_v_elp.c b/net/batman-adv/bat_v_elp.c
index d35aca0e969a..79a7dfc32e76 100644
--- a/net/batman-adv/bat_v_elp.c
+++ b/net/batman-adv/bat_v_elp.c
@@ -20,6 +20,7 @@
 #include <linux/kref.h>
 #include <linux/netdevice.h>
 #include <linux/nl80211.h>
+#include <linux/prandom.h>
 #include <linux/random.h>
 #include <linux/rculist.h>
 #include <linux/rcupdate.h>
diff --git a/net/batman-adv/bat_v_ogm.c b/net/batman-adv/bat_v_ogm.c
index 0f8495b9eeb1..11c3f98ba938 100644
--- a/net/batman-adv/bat_v_ogm.c
+++ b/net/batman-adv/bat_v_ogm.c
@@ -20,6 +20,7 @@
 #include <linux/lockdep.h>
 #include <linux/mutex.h>
 #include <linux/netdevice.h>
+#include <linux/prandom.h>
 #include <linux/random.h>
 #include <linux/rculist.h>
 #include <linux/rcupdate.h>
diff --git a/net/batman-adv/network-coding.c b/net/batman-adv/network-cod=
ing.c
index 64619b7a3a77..61ddd6d709a0 100644
--- a/net/batman-adv/network-coding.c
+++ b/net/batman-adv/network-coding.c
@@ -26,8 +26,8 @@
 #include <linux/lockdep.h>
 #include <linux/net.h>
 #include <linux/netdevice.h>
+#include <linux/prandom.h>
 #include <linux/printk.h>
-#include <linux/random.h>
 #include <linux/rculist.h>
 #include <linux/rcupdate.h>
 #include <linux/seq_file.h>
--=20
2.20.1
