Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GAcXKdRcCWrZWgQAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 17 May 2026 08:14:44 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E61755F6BF
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 17 May 2026 08:14:43 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 95635859EB
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 17 May 2026 08:14:43 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1778998483;
 b=FPYBGU8R4QnRe+yE8i72/t7qEjUQT8LloR5cBGuuNffuyOMPZJW//YEMGo69pjmX1XtkN
 e052ZwI/OJHbtorfpB9L11JxKMXhcYYe719rbJHuJm//R0lDlI4YBWzLcVXCVblaXkH7G1a
 Vt8ZMF1V7N4D6Oy4+BWOgI/iEfK6YPg=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1778998483; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=kwZs3ogVE+I8w6qEpE+S3wVjdSDgmshAyzCIr1FEGLk=;
 b=TIqf8LObZSu9S7fvvOs2h33t2FDwVIqD2MjFzpr/cWSQ4fh6hRQLVQ7THG/Psu6byPoku
 +oDZPchfsKXqueBI7ituIuV+bG13+EyYFZDn+qHboOBxEv/6tXzMhpVdLjapYHGxBFsle4E
 J90IKrjjn9BscmYnosGhDOHnu4GDSfI=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass (Used From Domain Record) header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id 81AC384289
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 17 May 2026 08:14:10 +0200 (CEST)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1778998460;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=kwZs3ogVE+I8w6qEpE+S3wVjdSDgmshAyzCIr1FEGLk=;
	b=TGi37eNAJrh/GXQu8MuefcLNDA2MPFUJ/l+V5XWeK9OrhohflRltn+CbFmuoTUG89yol8r
	Imi0RpW+4eyaXApevHmw69DftHCerJI9CRSz6uZ23wzjnScuYQ8wL4zpdmx6wGAS39HP7c
	Z2SJj43YDZGWRZ0WuHb7MhgLZYH7cFk=
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1778998460;
	b=h4xoab0IGFNUcW3HgbhcwrBEdEcnBO3G0BpLvnJsArn1IlVA0wFipikYvGxDg9/JybmSTa
	M1n9IeIW7+kjeryZUrrLW1x9etU5mAFAfRZC2Om1HzjynfdHTs1o2TbJG27g+u5t7L9qnw
	/fkxGGrKzMsvy2lNS3Fu0kWgR9rkg3w=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=GIEL8joY;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
Received: by dvalin.narfation.org (Postfix) id A1B4C1FDD2;
	Sun, 17 May 2026 06:14:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1778998449;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=kwZs3ogVE+I8w6qEpE+S3wVjdSDgmshAyzCIr1FEGLk=;
	b=GIEL8joYc3b/wx5oPdUR+W3RiW61Walb3y4WaFStlI7XRzIWg3QkElJjCtm6ZTQCKpZwjJ
	RSTLzUdmtH3IQLEixihewhPjmdJFWc0uwowIhCE9UH2dyE5sFkG4HrpL96jwiIGiRYf9sw
	uKicAqJQiQZst5isx8BopXULSYh1b8E=
From: Sven Eckelmann <sven@narfation.org>
Date: Sun, 17 May 2026 08:14:03 +0200
Subject: [PATCH batadv v3] batman-adv: drop batman-adv specific version for
 in-tree module
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: 
 <20260517-no-upstream-version-bumps-v3-1-ca677593ea9b@narfation.org>
X-B4-Tracking: v=1; b=H4sIAKpcCWoC/42OQQ6CMBBFr2K6toa20IAr72FcTGEKNaGQtjQaw
 t0tdWNcGJd/8v77sxKPzqAn58NKHEbjzWRTEMcDaQewPVLTpUx4wWVRsYraiS6zDw5hpBHdzlO
 1jLOnCJwJYHXCgKT+7FCbR3ZfiYIAXSS3990v6o5t2MU7ORgfJvfMT0SW+T/2IqOMSgBRNrrGp
 mwuFpyGkIjT5Pq8FfmnTf6y8WRra5BKMxTIxbdt27YX+wCZnS4BAAA=
X-Change-ID: 20260515-no-upstream-version-bumps-ea213a18051a
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=7290; i=sven@narfation.org;
 h=from:subject:message-id; bh=m4uzioV+fbG+dnN5oECeQ7jVd3wVTTtMLkkarNKl/XU=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDFmcMWv7L9rsvHDolKx8wAHZ4x4fXL7XN2+aWfTDNuVaj
 Mq9zdrrOkpZGMS4GGTFFFn2XMk/v5n9rfznaR+PwsxhZQIZwsDFKQATqWRlZNgirV/Z80bF8dTt
 9ea7g0IUVp73KNG5NM92mo/zd0NnMS+G/07iomXsXM3cp5pTlTIvz2c9eSUicccu9SDr3tvzLlz
 cygEA
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: S2LB7CNFX7SEO6SITDKLVBCKHQRMBXYQ
X-Message-ID-Hash: S2LB7CNFX7SEO6SITDKLVBCKHQRMBXYQ
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; header-match-b.a.t.m.a.n.lists.open-mesh.org-0;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-1;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-2;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-3; emergency; member-moderation;
 nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size;
 news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.10
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/S2LB7CNFX7SEO6SITDKLVBCKHQRMBXYQ/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>
X-Rspamd-Queue-Id: 4E61755F6BF
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.01 / 15.00];
	ARC_ALLOW(-1.00)[open-mesh.org:s=20121:i=2];
	DMARC_POLICY_ALLOW(-0.50)[narfation.org,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[narfation.org:s=20121];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:24940, ipnet:2a01:4f8::/32, country:DE];
	TAGGED_RCPT(0.00)[b.a.t.m.a.n];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	R_SPF_NA(0.00)[no SPF record];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sven@narfation.org,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[narfation.org:email,narfation.org:mid,narfation.org:dkim,diktynna.open-mesh.org:helo,diktynna.open-mesh.org:rdns];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,b.a.t.m.a.n=lfdr.de];
	RCPT_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[narfation.org:+]
X-Rspamd-Action: no action

Bumping the version number on the first pull request after each merge
window was deemed inappropriate for an in-tree component. The version
number carries little meaningful information in the context of the Linux
kernel release model, where stable and distribution might all carry
slightly different patches (without any change to the batman-adv version).

Instead, expose a UTS_RELEASE-based string to consumers of the netlink
and ethtool interfaces. But keep it in a separate file to avoid whole
batman-adv recompilations when generated/utsrelease.h is recreated.

The out-of-tree batman-adv package is unaffected by this change.

Link: https://lore.kernel.org/r/20210203163302.13e8a2a7@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com
Link: https://lore.kernel.org/r/YnfjtpuAaH+Zkf9S@unreal
Link: https://lore.kernel.org/r/Y9faTA0rNSXg%2FsLD@nanopsycho
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
Changes in v3:
- move version logic to separate file to avoid rebuild with each kernel
  commit
- document why MODULE_VERSION is still used
- drop RFC prefix
- Link to v2: https://patch.msgid.link/20260516-no-upstream-version-bumps-v2-1-c8a6bf1e3e23@narfation.org

Changes in v2:
- commit message: UTS_RELASE not UTC_RELEASE
- drop the MODULE_VERSION part because batctl was not actually ready to
  work without it (seems I never prepaqred the changes when we were talking
  about it many years)
- Link to v1: https://patch.msgid.link/20260515-no-upstream-version-bumps-v1-1-6aa349f8e949@narfation.org
---
 Makefile                        |  2 +-
 net/batman-adv/Makefile         |  1 +
 net/batman-adv/main.c           |  4 ++--
 net/batman-adv/main.h           |  4 ----
 net/batman-adv/mesh-interface.c |  3 ++-
 net/batman-adv/netlink.c        |  3 ++-
 net/batman-adv/version.c        | 27 +++++++++++++++++++++++++++
 net/batman-adv/version.h        |  8 ++++++++
 8 files changed, 43 insertions(+), 9 deletions(-)

diff --git a/Makefile b/Makefile
index ae3fd885..38b1b97d 100644
--- a/Makefile
+++ b/Makefile
@@ -40,7 +40,7 @@ NOSTDINC_FLAGS += \
 	$(CFLAGS)
 
 ifneq ($(REVISION),)
-NOSTDINC_FLAGS += -DBATADV_SOURCE_VERSION=\"$(REVISION)\"
+export CFLAGS_version.o := -DBATADV_SOURCE_VERSION=\"$(REVISION)\"
 endif
 
 obj-y += net/batman-adv/
diff --git a/net/batman-adv/Makefile b/net/batman-adv/Makefile
index d3c4d414..5d7456f1 100644
--- a/net/batman-adv/Makefile
+++ b/net/batman-adv/Makefile
@@ -30,5 +30,6 @@ batman-adv-$(CONFIG_BATMAN_ADV_TRACING) += trace.o
 batman-adv-y += tp_meter.o
 batman-adv-y += translation-table.o
 batman-adv-y += tvlv.o
+batman-adv-y += version.o
 
 CFLAGS_trace.o := -I$(src)
diff --git a/net/batman-adv/main.c b/net/batman-adv/main.c
index 2baf8e2c..a3993a83 100644
--- a/net/batman-adv/main.c
+++ b/net/batman-adv/main.c
@@ -57,6 +57,7 @@
 #include "send.h"
 #include "tp_meter.h"
 #include "translation-table.h"
+#include "version.h"
 
 /* List manipulations on hardif_list have to be rtnl_lock()'ed,
  * list traversals just rcu-locked
@@ -118,7 +119,7 @@ static int __init batadv_init(void)
 	batadv_netlink_register();
 
 	pr_info("B.A.T.M.A.N. advanced %s (compatibility version %i) loaded\n",
-		BATADV_SOURCE_VERSION, BATADV_COMPAT_VERSION);
+		batadv_version, BATADV_COMPAT_VERSION);
 
 	return 0;
 
@@ -696,6 +697,5 @@ MODULE_LICENSE("GPL");
 
 MODULE_AUTHOR(BATADV_DRIVER_AUTHOR);
 MODULE_DESCRIPTION(BATADV_DRIVER_DESC);
-MODULE_VERSION(BATADV_SOURCE_VERSION);
 MODULE_ALIAS_RTNL_LINK("batadv");
 MODULE_ALIAS_GENL_FAMILY(BATADV_NL_NAME);
diff --git a/net/batman-adv/main.h b/net/batman-adv/main.h
index 465d26d8..f68fc8b7 100644
--- a/net/batman-adv/main.h
+++ b/net/batman-adv/main.h
@@ -12,10 +12,6 @@
 #define BATADV_DRIVER_DESC   "B.A.T.M.A.N. advanced"
 #define BATADV_DRIVER_DEVICE "batman-adv"
 
-#ifndef BATADV_SOURCE_VERSION
-#define BATADV_SOURCE_VERSION "2026.2"
-#endif
-
 /* B.A.T.M.A.N. parameters */
 
 #define BATADV_TQ_MAX_VALUE 255
diff --git a/net/batman-adv/mesh-interface.c b/net/batman-adv/mesh-interface.c
index 50c26037..ad906780 100644
--- a/net/batman-adv/mesh-interface.c
+++ b/net/batman-adv/mesh-interface.c
@@ -49,6 +49,7 @@
 #include "multicast.h"
 #include "send.h"
 #include "translation-table.h"
+#include "version.h"
 
 /**
  * batadv_skb_head_push() - Increase header size and move (push) head pointer
@@ -891,7 +892,7 @@ static void batadv_get_drvinfo(struct net_device *dev,
 			       struct ethtool_drvinfo *info)
 {
 	strscpy(info->driver, "B.A.T.M.A.N. advanced", sizeof(info->driver));
-	strscpy(info->version, BATADV_SOURCE_VERSION, sizeof(info->version));
+	strscpy(info->version, batadv_version, sizeof(info->version));
 	strscpy(info->fw_version, "N/A", sizeof(info->fw_version));
 	strscpy(info->bus_info, "batman", sizeof(info->bus_info));
 }
diff --git a/net/batman-adv/netlink.c b/net/batman-adv/netlink.c
index e52f44e7..b20c340d 100644
--- a/net/batman-adv/netlink.c
+++ b/net/batman-adv/netlink.c
@@ -47,6 +47,7 @@
 #include "originator.h"
 #include "tp_meter.h"
 #include "translation-table.h"
+#include "version.h"
 
 struct genl_family batadv_netlink_family;
 
@@ -233,7 +234,7 @@ static int batadv_netlink_mesh_fill(struct sk_buff *msg,
 	if (!hdr)
 		return -ENOBUFS;
 
-	if (nla_put_string(msg, BATADV_ATTR_VERSION, BATADV_SOURCE_VERSION) ||
+	if (nla_put_string(msg, BATADV_ATTR_VERSION, batadv_version) ||
 	    nla_put_string(msg, BATADV_ATTR_ALGO_NAME,
 			   bat_priv->algo_ops->name) ||
 	    nla_put_u32(msg, BATADV_ATTR_MESH_IFINDEX, mesh_iface->ifindex) ||
diff --git a/net/batman-adv/version.c b/net/batman-adv/version.c
new file mode 100644
index 00000000..33a0962b
--- /dev/null
+++ b/net/batman-adv/version.c
@@ -0,0 +1,27 @@
+// SPDX-License-Identifier: GPL-2.0
+
+#include "version.h"
+
+#include <generated/utsrelease.h>
+#include <linux/module.h>
+
+#ifdef CONFIG_BATMAN_ADV_IN_TREE // UGLY_HACK_NEW
+#define BATADV_SOURCE_VERSION "linux-" UTS_RELEASE
+#else // UGLY_HACK_OLD
+
+/* prefer version provided by Makefile */
+#ifndef BATADV_SOURCE_VERSION
+#define BATADV_SOURCE_VERSION "2026.2"
+#endif
+
+#endif // UGLY_HACK_STOP
+
+const char *batadv_version = BATADV_SOURCE_VERSION;
+
+/* WARNING userspace tools like batctl were relying on
+ * /sys/module/batman_adv/version to check if the module was loaded. If it
+ * isn't present, they usually error out before finishing setup of the batadv
+ * interface. It should be kept until it is unlikely that there are active
+ * installations of these "broken" versions of these tools with recent kernels.
+ */
+MODULE_VERSION(BATADV_SOURCE_VERSION);
diff --git a/net/batman-adv/version.h b/net/batman-adv/version.h
new file mode 100644
index 00000000..d8af91f3
--- /dev/null
+++ b/net/batman-adv/version.h
@@ -0,0 +1,8 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+
+#ifndef _NET_BATMAN_ADV_VERSION_H_
+#define _NET_BATMAN_ADV_VERSION_H_
+
+extern const char *batadv_version;
+
+#endif /* _NET_BATMAN_ADV_VERSION_H_ */

---
base-commit: 7700c90cbd12d04b8aabb62fe031ce6b31d6a4d9
change-id: 20260515-no-upstream-version-bumps-ea213a18051a

Best regards,
--  
Sven Eckelmann <sven@narfation.org>

