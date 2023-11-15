Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D1DD7ECA30
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 15 Nov 2023 19:04:00 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id DBA8283E82
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 15 Nov 2023 19:03:59 +0100 (CET)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1700071439;
 b=sYR5idMC0TBsRBFgtqENMgeUwXZjdPKGA1n0lmRRouqUCTuB8y0/33UtWC4360JfS282x
 1xucqAR80i0MZIzRiKHmO6ZpD/TJr5p/+qRCClIbTMPsej4RjwdlIC5uoTakme0N357+BTG
 v1i88OHS0SzIcNn2y4DZNurf3auXpak=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1700071439; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=ZlGN4p1NgeH4LVqGwmmV6hihxrAd908wrI0eyUy9Ebc=;
 b=xuj0mt+Q7F3M+KP2+D4ae2fH+qYpHB5llf44X8wPb/qG5Zjx52hOppLj2SCz6uyV+tEW+
 gD/cqEjdlkbqMVgAPmEapIyHeRz4/27fIuqYBLb2c9oUgR1zmS2GrGmt3Bz0Q1It7GLTS8d
 JUFIWS421ADx1NtIPIvnkfeiKpNVb9I=
ARC-Authentication-Results: i=2; open-mesh.org; dkim=fail;
  arc=pass;
  dmarc=fail (Used From Domain Record) header.from=simonwunderlich.de
 policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=fail; arc=pass;
 dmarc=fail (Used From Domain Record) header.from=simonwunderlich.de
 policy.dmarc=none
Received: from mail.simonwunderlich.de (mail.simonwunderlich.de [23.88.38.48])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id B914883D32
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 15 Nov 2023 18:59:48 +0100 (CET)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1700071188;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ZlGN4p1NgeH4LVqGwmmV6hihxrAd908wrI0eyUy9Ebc=;
	b=NO2oUUSNRGoKro47XRqie+YKXcvW8FSyyCGWkpSGW1JPhP0/ea8maBsIidUuia7ppeYY3I
	dFu0vdwb7hhPefypgLEfP3AVfVLsK28xIzC9yx7oQpVgCgYgwHg2SdKR/yV4o/9P313w9I
	toH94705ixNWbSXTk6ZXDXDwwErHzxM=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	dmarc=pass (policy=none) header.from=simonwunderlich.de;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates
 23.88.38.48 as permitted sender) smtp.mailfrom=sw@simonwunderlich.de
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1700071188; a=rsa-sha256;
	cv=none;
	b=pQtJHb6VjhrY5cgCcj0YsQSWwxa+4HwFpKIi5io+zmAFV8vBrnZwJB4rz1QA8XhDBMJYsA
	hy/wtFlrygIj0jtPRJ15TAQRICP6XRaGq8UAtBmvYNM9jzH9jGmP8lpX9RPIPxOF+5cNtS
	Fl68VaXqqvebg09HYDXDituCEz3sJ98=
Received: from kero.packetmixer.de
 (p200300fa2706340047Bd8a14b9C54dbb.dip0.t-ipconnect.de
 [IPv6:2003:fa:2706:3400:47bd:8a14:b9c5:4dbb])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits)
 server-digest SHA256)
	(No client certificate requested)
	by mail.simonwunderlich.de (Postfix) with ESMTPSA id C51C4FB602;
	Wed, 15 Nov 2023 18:59:47 +0100 (CET)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: kuba@kernel.org,
	davem@davemloft.net
Cc: netdev@vger.kernel.org,
	b.a.t.m.a.n@lists.open-mesh.org,
	Sven Eckelmann <sven@narfation.org>,
	Simon Wunderlich <sw@simonwunderlich.de>
Subject: [PATCH 5/6] batman-adv: Switch to linux/sprintf.h
Date: Wed, 15 Nov 2023 18:59:31 +0100
Message-Id: <20231115175932.127605-6-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231115175932.127605-1-sw@simonwunderlich.de>
References: <20231115175932.127605-1-sw@simonwunderlich.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Message-ID-Hash: HKZSSLK5C2RJP4MSMYAHVTU5BKL5E5EN
X-Message-ID-Hash: HKZSSLK5C2RJP4MSMYAHVTU5BKL5E5EN
X-MailFrom: sw@simonwunderlich.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency;
 loop; banned-address; member-moderation;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-0;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-1;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-2; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.8
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/HKZSSLK5C2RJP4MSMYAHVTU5BKL5E5EN/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

From: Sven Eckelmann <sven@narfation.org>

The commit 39ced19b9e60 ("lib/vsprintf: split out sprintf() and friends")
introduced a new header for the sprintf related functions which were
previously exposed via linux/kernel.h.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
---
 net/batman-adv/bridge_loop_avoidance.c | 2 +-
 net/batman-adv/gateway_client.c        | 2 +-
 net/batman-adv/main.c                  | 1 +
 net/batman-adv/multicast.c             | 2 +-
 4 files changed, 4 insertions(+), 3 deletions(-)

diff --git a/net/batman-adv/bridge_loop_avoidance.c b/net/batman-adv/bridge_loop_avoidance.c
index 37ce6cfb3520..5f46ca3d4bb8 100644
--- a/net/batman-adv/bridge_loop_avoidance.c
+++ b/net/batman-adv/bridge_loop_avoidance.c
@@ -20,7 +20,6 @@
 #include <linux/if_vlan.h>
 #include <linux/jhash.h>
 #include <linux/jiffies.h>
-#include <linux/kernel.h>
 #include <linux/kref.h>
 #include <linux/list.h>
 #include <linux/lockdep.h>
@@ -31,6 +30,7 @@
 #include <linux/skbuff.h>
 #include <linux/slab.h>
 #include <linux/spinlock.h>
+#include <linux/sprintf.h>
 #include <linux/stddef.h>
 #include <linux/string.h>
 #include <linux/workqueue.h>
diff --git a/net/batman-adv/gateway_client.c b/net/batman-adv/gateway_client.c
index d26124bc27e1..0ddd8b4b3f4c 100644
--- a/net/batman-adv/gateway_client.c
+++ b/net/batman-adv/gateway_client.c
@@ -18,7 +18,6 @@
 #include <linux/in.h>
 #include <linux/ip.h>
 #include <linux/ipv6.h>
-#include <linux/kernel.h>
 #include <linux/kref.h>
 #include <linux/list.h>
 #include <linux/lockdep.h>
@@ -29,6 +28,7 @@
 #include <linux/skbuff.h>
 #include <linux/slab.h>
 #include <linux/spinlock.h>
+#include <linux/sprintf.h>
 #include <linux/stddef.h>
 #include <linux/udp.h>
 #include <net/sock.h>
diff --git a/net/batman-adv/main.c b/net/batman-adv/main.c
index 50b2bf2b748c..e8c25583a127 100644
--- a/net/batman-adv/main.c
+++ b/net/batman-adv/main.c
@@ -33,6 +33,7 @@
 #include <linux/skbuff.h>
 #include <linux/slab.h>
 #include <linux/spinlock.h>
+#include <linux/sprintf.h>
 #include <linux/stddef.h>
 #include <linux/string.h>
 #include <linux/workqueue.h>
diff --git a/net/batman-adv/multicast.c b/net/batman-adv/multicast.c
index 62288afdad49..d982daea8329 100644
--- a/net/batman-adv/multicast.c
+++ b/net/batman-adv/multicast.c
@@ -25,7 +25,6 @@
 #include <linux/ip.h>
 #include <linux/ipv6.h>
 #include <linux/jiffies.h>
-#include <linux/kernel.h>
 #include <linux/list.h>
 #include <linux/lockdep.h>
 #include <linux/netdevice.h>
@@ -36,6 +35,7 @@
 #include <linux/skbuff.h>
 #include <linux/slab.h>
 #include <linux/spinlock.h>
+#include <linux/sprintf.h>
 #include <linux/stddef.h>
 #include <linux/string.h>
 #include <linux/types.h>
-- 
2.39.2

