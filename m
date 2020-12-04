Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FB4B2CF143
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri,  4 Dec 2020 16:55:16 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 0877381A3E;
	Fri,  4 Dec 2020 16:55:10 +0100 (CET)
Received: from simonwunderlich.de (simonwunderlich.de [79.140.42.25])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 7EE85803EB
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri,  4 Dec 2020 16:55:07 +0100 (CET)
Received: from kero.packetmixer.de (p200300c59716c1e0c1b6a3b925be22c4.dip0.t-ipconnect.de [IPv6:2003:c5:9716:c1e0:c1b6:a3b9:25be:22c4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by simonwunderlich.de (Postfix) with ESMTPSA id 9EA3F174061;
	Fri,  4 Dec 2020 16:46:33 +0100 (CET)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: davem@davemloft.net,
	kuba@kernel.org
Subject: [PATCH 2/8] batman-adv: Add new include for min/max helpers
Date: Fri,  4 Dec 2020 16:46:25 +0100
Message-Id: <20201204154631.21063-3-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201204154631.21063-1-sw@simonwunderlich.de>
References: <20201204154631.21063-1-sw@simonwunderlich.de>
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1607097307;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=CRAgfEbwqZvZ6oQCw7XHd9W2hUrKzxTS2rh/TBTgaXg=;
	b=1PeJG3IdP5Ce4jx1fW0bG+adZ3YWimWrSuSgLzL+Fu0pCfG6klWo5lHlVZwWQ2uBCqTC0w
	GmK9rt5603qiBetqsu71qg7g2FJd5x5cqkzb2e2PwanhqsW+nZJ5/r0B5pZF6GIVZPc1PC
	fi56P2evlSem5HNmVuD7ESTDcBwtTMo=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1607097307; a=rsa-sha256;
	cv=none;
	b=aF5RctPYNw5+48OBOu2/O2cQzsJrFOvlQOUHQ2fj+LvFoaeDrPmoR0rzO2WoUrwmFPhh6X
	kuxoY17eVAWA225EiPPhAIbqt5f3HhDDjdz2kvKLp/vUvez3oTyrTlYfTI8StN2YQrWe/H
	fSRRMudjqlY8+TASX98Kx7LcTzB8asA=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates 79.140.42.25 as permitted sender) smtp.mailfrom=sw@simonwunderlich.de
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: 4P4X6JPV4GOWP2L2REPV7V7YOINJKNVZ
X-Message-ID-Hash: 4P4X6JPV4GOWP2L2REPV7V7YOINJKNVZ
X-MailFrom: sw@simonwunderlich.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/4P4X6JPV4GOWP2L2REPV7V7YOINJKNVZ/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

From: Sven Eckelmann <sven@narfation.org>

The commit b296a6d53339 ("kernel.h: split out min()/max() et al. helpers"=
)
moved the min/max helper functionality from kernel.h to minmax.h. Adjust
the kernel code accordingly to avoid fragile indirect includes.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
---
 net/batman-adv/bat_v.c          | 1 +
 net/batman-adv/bat_v_elp.c      | 1 +
 net/batman-adv/bat_v_ogm.c      | 1 +
 net/batman-adv/fragmentation.c  | 2 +-
 net/batman-adv/hard-interface.c | 1 +
 net/batman-adv/icmp_socket.c    | 1 +
 net/batman-adv/main.c           | 1 +
 net/batman-adv/netlink.c        | 1 +
 net/batman-adv/tp_meter.c       | 1 +
 9 files changed, 9 insertions(+), 1 deletion(-)

diff --git a/net/batman-adv/bat_v.c b/net/batman-adv/bat_v.c
index 0ecaf1bb0068..e91d2c0720c4 100644
--- a/net/batman-adv/bat_v.c
+++ b/net/batman-adv/bat_v.c
@@ -16,6 +16,7 @@
 #include <linux/kernel.h>
 #include <linux/kref.h>
 #include <linux/list.h>
+#include <linux/minmax.h>
 #include <linux/netdevice.h>
 #include <linux/netlink.h>
 #include <linux/rculist.h>
diff --git a/net/batman-adv/bat_v_elp.c b/net/batman-adv/bat_v_elp.c
index 79a7dfc32e76..0512ea6cd818 100644
--- a/net/batman-adv/bat_v_elp.c
+++ b/net/batman-adv/bat_v_elp.c
@@ -18,6 +18,7 @@
 #include <linux/jiffies.h>
 #include <linux/kernel.h>
 #include <linux/kref.h>
+#include <linux/minmax.h>
 #include <linux/netdevice.h>
 #include <linux/nl80211.h>
 #include <linux/prandom.h>
diff --git a/net/batman-adv/bat_v_ogm.c b/net/batman-adv/bat_v_ogm.c
index 8c1148fc73d7..798d659855d0 100644
--- a/net/batman-adv/bat_v_ogm.c
+++ b/net/batman-adv/bat_v_ogm.c
@@ -18,6 +18,7 @@
 #include <linux/kref.h>
 #include <linux/list.h>
 #include <linux/lockdep.h>
+#include <linux/minmax.h>
 #include <linux/mutex.h>
 #include <linux/netdevice.h>
 #include <linux/prandom.h>
diff --git a/net/batman-adv/fragmentation.c b/net/batman-adv/fragmentatio=
n.c
index 1f1f5b0873b2..59ebd73125bf 100644
--- a/net/batman-adv/fragmentation.c
+++ b/net/batman-adv/fragmentation.c
@@ -14,8 +14,8 @@
 #include <linux/gfp.h>
 #include <linux/if_ether.h>
 #include <linux/jiffies.h>
-#include <linux/kernel.h>
 #include <linux/lockdep.h>
+#include <linux/minmax.h>
 #include <linux/netdevice.h>
 #include <linux/skbuff.h>
 #include <linux/slab.h>
diff --git a/net/batman-adv/hard-interface.c b/net/batman-adv/hard-interf=
ace.c
index 33904595fc56..3838a6165c5e 100644
--- a/net/batman-adv/hard-interface.c
+++ b/net/batman-adv/hard-interface.c
@@ -18,6 +18,7 @@
 #include <linux/kref.h>
 #include <linux/limits.h>
 #include <linux/list.h>
+#include <linux/minmax.h>
 #include <linux/mutex.h>
 #include <linux/netdevice.h>
 #include <linux/printk.h>
diff --git a/net/batman-adv/icmp_socket.c b/net/batman-adv/icmp_socket.c
index 8bdabc03b0b2..56de4bf21aa5 100644
--- a/net/batman-adv/icmp_socket.c
+++ b/net/batman-adv/icmp_socket.c
@@ -20,6 +20,7 @@
 #include <linux/if_ether.h>
 #include <linux/kernel.h>
 #include <linux/list.h>
+#include <linux/minmax.h>
 #include <linux/module.h>
 #include <linux/netdevice.h>
 #include <linux/pkt_sched.h>
diff --git a/net/batman-adv/main.c b/net/batman-adv/main.c
index 70fee9b42e25..293c62edd9ed 100644
--- a/net/batman-adv/main.c
+++ b/net/batman-adv/main.c
@@ -23,6 +23,7 @@
 #include <linux/kobject.h>
 #include <linux/kref.h>
 #include <linux/list.h>
+#include <linux/minmax.h>
 #include <linux/module.h>
 #include <linux/netdevice.h>
 #include <linux/printk.h>
diff --git a/net/batman-adv/netlink.c b/net/batman-adv/netlink.c
index c7a55647b520..97bcf149633d 100644
--- a/net/batman-adv/netlink.c
+++ b/net/batman-adv/netlink.c
@@ -23,6 +23,7 @@
 #include <linux/kernel.h>
 #include <linux/limits.h>
 #include <linux/list.h>
+#include <linux/minmax.h>
 #include <linux/netdevice.h>
 #include <linux/netlink.h>
 #include <linux/printk.h>
diff --git a/net/batman-adv/tp_meter.c b/net/batman-adv/tp_meter.c
index db7e3774825b..d4e10005df6c 100644
--- a/net/batman-adv/tp_meter.c
+++ b/net/batman-adv/tp_meter.c
@@ -23,6 +23,7 @@
 #include <linux/kthread.h>
 #include <linux/limits.h>
 #include <linux/list.h>
+#include <linux/minmax.h>
 #include <linux/netdevice.h>
 #include <linux/param.h>
 #include <linux/printk.h>
--=20
2.20.1
