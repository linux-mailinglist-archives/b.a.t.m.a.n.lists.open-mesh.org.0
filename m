Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [IPv6:2a01:4f8:141:3341:78:46:248:236])
	by mail.lfdr.de (Postfix) with ESMTPS id 84F8611A66F
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 11 Dec 2019 10:02:22 +0100 (CET)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 6A3FD80701;
	Wed, 11 Dec 2019 10:02:13 +0100 (CET)
Received: from dvalin.narfation.org (dvalin.narfation.org
 [IPv6:2a00:17d8:100::8b1])
 by open-mesh.org (Postfix) with ESMTPS id 4AF248008A
 for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 11 Dec 2019 10:02:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
 s=20121; t=1576054340;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=eS1ESEHkgt0TspG/HNCJvgtGOYD42d+5SWU6OgQ4rDY=;
 b=pD+hYiijlDvToz+P32p81AMbfF+hDKKQjD1qSpgbl5OUfdfHT5FiqAahwpMSzQWsCM/Ro5
 5Db0GfFznNfNjB9gJtzDsxAmRLdA5acMMpscXnaeYdGhYo7soFhuBamMjeKuyfjgK37dMv
 NeiFy5cB0R+2/hVF0w/Pn0wdRS39RN8=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: [PATCH] batman-adv: Replace FIELD_SIZEOF with sizeof_field
Date: Wed, 11 Dec 2019 09:52:17 +0100
Message-Id: <20191211085217.7878-1-sven@narfation.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1576054924;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:dkim-signature;
 bh=eS1ESEHkgt0TspG/HNCJvgtGOYD42d+5SWU6OgQ4rDY=;
 b=mkh2RbZVI/x5DnvRtb6aDkKrI9NQeS9v4beODAiO9nWn4uuttI4OTthLwpzOgJJluM9Vtw
 zPCG/1TKfS2UwpY8mBqXHou5oXGqvvKWLe5oFdYyU3/5Xi370gmOZXRvbpDbRsHh5TAQnA
 V3VWwCN1c+piO75DbJBhxqojV1VUHg0=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1576054924; a=rsa-sha256; cv=none;
 b=kKhGRfMffrKDqXYcWZEn236J2G9HxrNI9j0Tw36GEY/+VxuHZ7HRwd4pAEwCNROmzcc1S/
 83JrP6tJLt0Oz17qGEXUxrCT/0ZKaZb8ML/I7+SfzMS2XgpCNnwc0O9N3+9VxaTivNHM/C
 YUFz6zOqTvqox1C0Ni4auQ7nI6aBl1c=
ARC-Authentication-Results: i=1; open-mesh.org;
 dkim=pass header.d=narfation.org header.s=20121 header.b=pD+hYiij;
 spf=pass (open-mesh.org: domain of sven@narfation.org designates
 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org
X-BeenThere: b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
List-Unsubscribe: <https://lists.open-mesh.org/mm/options/b.a.t.m.a.n>,
 <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=unsubscribe>
List-Archive: <http://lists.open-mesh.org/pipermail/b.a.t.m.a.n/>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Subscribe: <https://lists.open-mesh.org/mm/listinfo/b.a.t.m.a.n>,
 <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=subscribe>
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n@lists.open-mesh.org>
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

The prefered way of getting the size of a member of a struct is the common
macro sizeof_field from stddef.h and not the FIELD_SIZEOF (with multiple
definitions).

Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 compat-include/linux/stddef.h | 24 ++++++++++++++++++++++++
 net/batman-adv/main.c         |  2 +-
 2 files changed, 25 insertions(+), 1 deletion(-)
 create mode 100644 compat-include/linux/stddef.h

diff --git a/compat-include/linux/stddef.h b/compat-include/linux/stddef.h
new file mode 100644
index 00000000..dd18840e
--- /dev/null
+++ b/compat-include/linux/stddef.h
@@ -0,0 +1,24 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/* Copyright (C) 2007-2019  B.A.T.M.A.N. contributors:
+ *
+ * Marek Lindner, Simon Wunderlich
+ *
+ * This file contains macros for maintaining compatibility with older versions
+ * of the Linux kernel.
+ */
+
+#ifndef _NET_BATMAN_ADV_COMPAT_LINUX_STDDEF_H_
+#define _NET_BATMAN_ADV_COMPAT_LINUX_STDDEF_H_
+
+#include <linux/version.h>
+#include_next <linux/stddef.h>
+
+#if LINUX_VERSION_CODE < KERNEL_VERSION(4, 16, 0)
+
+#ifndef sizeof_field
+#define sizeof_field(TYPE, MEMBER) sizeof((((TYPE *)0)->MEMBER))
+#endif
+
+#endif /* < KERNEL_VERSION(4, 16, 0) */
+
+#endif	/* _NET_BATMAN_ADV_COMPAT_LINUX_STDDEF_H_ */
diff --git a/net/batman-adv/main.c b/net/batman-adv/main.c
index 4a89177d..4811ec65 100644
--- a/net/batman-adv/main.c
+++ b/net/batman-adv/main.c
@@ -548,7 +548,7 @@ static void batadv_recv_handler_init(void)
 	BUILD_BUG_ON(sizeof(struct batadv_tvlv_tt_change) != 12);
 	BUILD_BUG_ON(sizeof(struct batadv_tvlv_roam_adv) != 8);
 
-	i = FIELD_SIZEOF(struct sk_buff, cb);
+	i = sizeof_field(struct sk_buff, cb);
 	BUILD_BUG_ON(sizeof(struct batadv_skb_cb) > i);
 
 	/* broadcast packet */
-- 
2.20.1

