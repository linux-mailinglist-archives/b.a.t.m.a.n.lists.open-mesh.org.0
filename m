Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 025AE7ECA31
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 15 Nov 2023 19:04:40 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id D120E83D4A
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 15 Nov 2023 19:04:39 +0100 (CET)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1700071479;
 b=cqMnk4irkBCKltwC+Xyl6eCy4LO2M8y1QLG1fIj78xGar5aBvnycxYsNdM7YkHXMtMx7P
 SKwz6Id+BZ5vLl5pbEH/pmWoNUg/hlfUz/IsEtzfxMRPn5IS5HOefehrSPsQBn6Gvj6cW5Y
 9vVBcvB0MVsX3AkyO5pdE0m0FwUGog4=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1700071479; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=YXIRNjcVNCfCXfIyVroFnOGCglfMH78XSKSBMhJWceM=;
 b=1T7nSbZsZWid1t7XVop0G3uajhOFf5ga+xmjFouuPp4O8oRaCWQdxbxEeUmCHaAUOu+3z
 f6W5k4sWwvH11xmtXPx4oYIlpHaMsrnyRKsgVbbk+rJc7T+Tali99TrhHMQ2Ies47d7DKn1
 /yb+1db0k1/7n1sgfkfFsSXyelZ9zhI=
ARC-Authentication-Results: i=2; open-mesh.org; dkim=fail;
  arc=pass;
  dmarc=fail (Used From Domain Record) header.from=simonwunderlich.de
 policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=fail; arc=pass;
 dmarc=fail (Used From Domain Record) header.from=simonwunderlich.de
 policy.dmarc=none
Received: from mail.simonwunderlich.de (mail.simonwunderlich.de
 [IPv6:2a01:4f8:c17:e8c0::1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 405FB83D32
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 15 Nov 2023 18:59:49 +0100 (CET)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1700071190;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=YXIRNjcVNCfCXfIyVroFnOGCglfMH78XSKSBMhJWceM=;
	b=MBmez8MB06HdAiUadkOXH7xic6qScYO2MEhE8mFBt3aKb7T3dyFsHmEjlaXCGblwxDV155
	5Sj35578d1Pr3mRwdDriUDA01BG4pO7TLUvuw5eCwg142EeIGGgPJCa0xLELUO6tK5uoJG
	ADVaDnZYHZg6Zk3yYWLxMAOcAjfWAFo=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	dmarc=pass (policy=none) header.from=simonwunderlich.de;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates
 2a01:4f8:c17:e8c0::1 as permitted sender) smtp.mailfrom=sw@simonwunderlich.de
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1700071190; a=rsa-sha256;
	cv=none;
	b=Bu71Klsbsa//p9jval+jjGYd44jodFRWMTE7AvAStsXWxmi5QX9n/Gt6Ql779juQvmEdrq
	+DOrQB3V8Sg5WBlimke3/83AQgJck6uDLFT45e2hrKuE4mMyqwrFYO2cBpErN4C9txfgVp
	Tpn3dktqXglcn5VXs2i3pq6E1ylMQCM=
Received: from kero.packetmixer.de
 (p200300FA2706340047BD8a14B9c54dBB.dip0.t-ipconnect.de
 [IPv6:2003:fa:2706:3400:47bd:8a14:b9c5:4dbb])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits)
 server-digest SHA256)
	(No client certificate requested)
	by mail.simonwunderlich.de (Postfix) with ESMTPSA id 08D8BFB606;
	Wed, 15 Nov 2023 18:59:49 +0100 (CET)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: kuba@kernel.org,
	davem@davemloft.net
Cc: netdev@vger.kernel.org,
	b.a.t.m.a.n@lists.open-mesh.org,
	Sven Eckelmann <sven@narfation.org>,
	Simon Wunderlich <sw@simonwunderlich.de>
Subject: [PATCH 6/6] batman-adv: Switch to linux/array_size.h
Date: Wed, 15 Nov 2023 18:59:32 +0100
Message-Id: <20231115175932.127605-7-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231115175932.127605-1-sw@simonwunderlich.de>
References: <20231115175932.127605-1-sw@simonwunderlich.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Message-ID-Hash: 5C462VJRDBTPSHZPRQLXJ2LNQAL4LKMK
X-Message-ID-Hash: 5C462VJRDBTPSHZPRQLXJ2LNQAL4LKMK
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/5C462VJRDBTPSHZPRQLXJ2LNQAL4LKMK/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

From: Sven Eckelmann <sven@narfation.org>

The commit 3cd39bc3b11b ("kernel.h: Move ARRAY_SIZE() to a separate
header") introduced a new header for the ARRAY_SIZE macro which was
previously exposed via linux/kernel.h.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
---
 net/batman-adv/main.c    | 2 +-
 net/batman-adv/netlink.c | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/net/batman-adv/main.c b/net/batman-adv/main.c
index e8c25583a127..5fc754b0b3f7 100644
--- a/net/batman-adv/main.c
+++ b/net/batman-adv/main.c
@@ -6,6 +6,7 @@
 
 #include "main.h"
 
+#include <linux/array_size.h>
 #include <linux/atomic.h>
 #include <linux/build_bug.h>
 #include <linux/byteorder/generic.h>
@@ -20,7 +21,6 @@
 #include <linux/init.h>
 #include <linux/ip.h>
 #include <linux/ipv6.h>
-#include <linux/kernel.h>
 #include <linux/kobject.h>
 #include <linux/kref.h>
 #include <linux/list.h>
diff --git a/net/batman-adv/netlink.c b/net/batman-adv/netlink.c
index 0c64d81a7761..1f7ed9d4f6fd 100644
--- a/net/batman-adv/netlink.c
+++ b/net/batman-adv/netlink.c
@@ -7,6 +7,7 @@
 #include "netlink.h"
 #include "main.h"
 
+#include <linux/array_size.h>
 #include <linux/atomic.h>
 #include <linux/bitops.h>
 #include <linux/bug.h>
@@ -20,7 +21,6 @@
 #include <linux/if_ether.h>
 #include <linux/if_vlan.h>
 #include <linux/init.h>
-#include <linux/kernel.h>
 #include <linux/limits.h>
 #include <linux/list.h>
 #include <linux/minmax.h>
-- 
2.39.2

