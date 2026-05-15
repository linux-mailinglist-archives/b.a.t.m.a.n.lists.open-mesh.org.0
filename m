Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UIhgA1/VBmomoQIAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 15 May 2026 10:12:15 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id DC01454B199
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 15 May 2026 10:12:10 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 1536785367
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 15 May 2026 10:12:10 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1778832730;
 b=gTQYss7KKFkXjKXBSpMVuN5PA173Q8911HZEoGPEHQ4isNdkN5lA2gnIe9/P4hAlbfEHq
 EgYWWuKE/aME9SvjwKrGi6wCcggugZFF0wJtwZGE7RlvMFs1S5UcihglQo4Opo9PFpe4rNF
 Vwu3ZlJPjReIx2h6ufb6mNUvpTtBYTY=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1778832730; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=jV/cwCYbnUhkCZkOtgnH9jR+yFAAXWUXv0Eu2H49SBU=;
 b=f/sWwvUABPXa88BSkCi1TLg716kFskVhVZl6mziE3kv9945JZGxY18i4ZwWaFuxDxPs1n
 uxza9+PS3n/fif+8cH6O41BFAvJEMqtBBfak0Ofcr+w1TO4JtUV4c9LphFOuUma/KjElO/M
 kGkhKfbLUljapkq2Jaw+KGDlt5ftV/Y=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass (Used From Domain Record) header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org
 [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id 8B8B882727
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 15 May 2026 10:00:17 +0200 (CEST)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1778832019;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=jV/cwCYbnUhkCZkOtgnH9jR+yFAAXWUXv0Eu2H49SBU=;
	b=TQSQ913UWMr58MMQRNvWKIiw7jGycfLFVdlLCoLjt3tfhxdaJHTy+yZrLlGhD7g1ToJ7Sw
	k2h0yb2w/2wttcBRcouZJ/oNKC802RYGiMmyTSN2ncf4o0PZtnbFntK0TcEszDBpeeNYXB
	M6C7XTqfOoL+V+WdU4Y1sfdvW7YAPh0=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=wT2zxSbM;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1778832019;
	b=WdMf+F7dy+aUpi7fWe21vpxMGnO1IaTRDwaDGKoOKs9gZu+QErXbWtQoka0C2hOEqrr9VO
	BJY2C/cBcF1Fl4Lit8iJ8cBaYNPBUjMkjd5yQgu1TzWzkfF3CNG2eYYnrGF88bN3rMSlEO
	4Ds0LeMVt5XZOPOVXDAnJvPH4cRwM4g=
Received: by dvalin.narfation.org (Postfix) id 8D70820C4F;
	Fri, 15 May 2026 08:00:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1778832012;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=jV/cwCYbnUhkCZkOtgnH9jR+yFAAXWUXv0Eu2H49SBU=;
	b=wT2zxSbMJkK1XRokXd7q0WL0pZ83lmi7vSplbhxThd/NFypVdUaLeiZ0UZL7s/Db5wMldG
	LQopzqyCNvixEYNuPLCcLyJoeXIclec9LSTpCoubnhfXwYiHjscCh2d7VPDMMzhD/bEYgj
	RAxqTzk8oRb3AsTRZlz7ZSLmlg/GNAU=
From: Sven Eckelmann <sven@narfation.org>
Date: Fri, 15 May 2026 10:00:00 +0200
Subject: [PATCH RFC batadv] batman-adv: drop batman-adv specific version
 for in-tree module
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: 
 <20260515-no-upstream-version-bumps-v1-1-6aa349f8e949@narfation.org>
X-B4-Tracking: v=1; b=H4sIAH/SBmoC/yWMwQrCMBBEf6Xs2YUmUhGvgh/gVTxs2lUjNA27S
 RBK/91EjzPz5q2gLJ4VTt0KwsWrX0INZtfB+KLwZPRTzWB7e+gHM2BYMEdNwjRjYWk8ujxHRSZ
 r9mSOFSOo/yj88J+f+wbXy7l1jhJNBe7/WbN785iaH7btC4SZJT2MAAAA
X-Change-ID: 20260515-no-upstream-version-bumps-ea213a18051a
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=3916; i=sven@narfation.org;
 h=from:subject:message-id; bh=9ucb7azKJEhzsTYm02LPU9dOfbPkutDxQ9vpRUe7qrg=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDFlsl9rOeT275fNigoDjbcUVzHqu6xblOc74P3Phike35
 F2nrd3P0VHKwiDGxSArpsiy50r++c3sb+U/T/t4FGYOKxPIEAYuTgGYCMtdhj+cMxYaXBM88Hmm
 Q7CWgNjH2cUcV9/dTn54zX3mn18b3IQCGBlOP/t091fYleqn2zv2HHqR+XlPX8Sq4y3fKuZvSL8
 YvaaICwA=
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: VP7JXQ777RWYLMFJBHFFRONC57I5BH43
X-Message-ID-Hash: VP7JXQ777RWYLMFJBHFFRONC57I5BH43
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/VP7JXQ777RWYLMFJBHFFRONC57I5BH43/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>
X-Rspamd-Queue-Id: DC01454B199
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[simonwunderlich.de:email,narfation.org:email,narfation.org:mid,narfation.org:dkim];
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

Instead, expose a UTC_RELEASE-based string to consumers of the netlink
and ethtool interfaces.

The out-of-tree batman-adv package is unaffected by this change.

Link: https://lore.kernel.org/r/20200104195131.16577-3-info@metux.net
Link: https://lore.kernel.org/r/20201202124959.29209-2-info@metux.net
Link: https://lore.kernel.org/r/20210203163302.13e8a2a7@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com
Link: https://lore.kernel.org/r/YnfjtpuAaH+Zkf9S@unreal
Link: https://lore.kernel.org/r/Y9faTA0rNSXg%2FsLD@nanopsycho
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 .gitignore              | 2 ++
 Makefile                | 2 ++
 compat-sources/Makefile | 3 +++
 compat-sources/compat.c | 7 +++++++
 net/batman-adv/main.c   | 1 -
 net/batman-adv/main.h   | 9 +++++++++
 6 files changed, 23 insertions(+), 1 deletion(-)

diff --git a/.gitignore b/.gitignore
index fdacbf29..1fa30c6b 100644
--- a/.gitignore
+++ b/.gitignore
@@ -8,6 +8,8 @@
 /compat-sources/**/*.o
 /modules.order
 /Module.symvers
+/..module-common.o.cmd
+/.module-common.o
 /net/batman-adv/batman-adv.ko
 /net/batman-adv/.batman-adv.ko.cmd
 /net/batman-adv/batman-adv.mod.c
diff --git a/Makefile b/Makefile
index ae3fd885..017165c6 100644
--- a/Makefile
+++ b/Makefile
@@ -39,6 +39,8 @@ NOSTDINC_FLAGS += \
 	-include $(PWD)/compat.h \
 	$(CFLAGS)
 
+include $(PWD)/compat-sources/Makefile
+
 ifneq ($(REVISION),)
 NOSTDINC_FLAGS += -DBATADV_SOURCE_VERSION=\"$(REVISION)\"
 endif
diff --git a/compat-sources/Makefile b/compat-sources/Makefile
new file mode 100644
index 00000000..daf80deb
--- /dev/null
+++ b/compat-sources/Makefile
@@ -0,0 +1,3 @@
+# SPDX-License-Identifier: GPL-2.0
+
+batman-adv-y += ../../compat-sources/compat.o
diff --git a/compat-sources/compat.c b/compat-sources/compat.c
new file mode 100644
index 00000000..4aa5fcb8
--- /dev/null
+++ b/compat-sources/compat.c
@@ -0,0 +1,7 @@
+// SPDX-License-Identifier: GPL-2.0
+
+#include <linux/module.h>
+
+#include "../net/batman-adv/main.h"
+
+MODULE_VERSION(BATADV_SOURCE_VERSION);
diff --git a/net/batman-adv/main.c b/net/batman-adv/main.c
index 2baf8e2c..5d27175a 100644
--- a/net/batman-adv/main.c
+++ b/net/batman-adv/main.c
@@ -696,6 +696,5 @@ MODULE_LICENSE("GPL");
 
 MODULE_AUTHOR(BATADV_DRIVER_AUTHOR);
 MODULE_DESCRIPTION(BATADV_DRIVER_DESC);
-MODULE_VERSION(BATADV_SOURCE_VERSION);
 MODULE_ALIAS_RTNL_LINK("batadv");
 MODULE_ALIAS_GENL_FAMILY(BATADV_NL_NAME);
diff --git a/net/batman-adv/main.h b/net/batman-adv/main.h
index 465d26d8..7f722425 100644
--- a/net/batman-adv/main.h
+++ b/net/batman-adv/main.h
@@ -7,15 +7,24 @@
 #ifndef _NET_BATMAN_ADV_MAIN_H_
 #define _NET_BATMAN_ADV_MAIN_H_
 
+#include <generated/utsrelease.h>
+
 #define BATADV_DRIVER_AUTHOR "Marek Lindner <marek.lindner@mailbox.org>, " \
 			     "Simon Wunderlich <sw@simonwunderlich.de>"
 #define BATADV_DRIVER_DESC   "B.A.T.M.A.N. advanced"
 #define BATADV_DRIVER_DEVICE "batman-adv"
 
+#ifdef CONFIG_BATMAN_ADV_IN_TREE // UGLY_HACK_NEW
+#define BATADV_SOURCE_VERSION "linux-" UTS_RELEASE
+#else // UGLY_HACK_OLD
+
+/* prefer version provided by Makefile */
 #ifndef BATADV_SOURCE_VERSION
 #define BATADV_SOURCE_VERSION "2026.2"
 #endif
 
+#endif // UGLY_HACK_STOP
+
 /* B.A.T.M.A.N. parameters */
 
 #define BATADV_TQ_MAX_VALUE 255

---
base-commit: 7700c90cbd12d04b8aabb62fe031ce6b31d6a4d9
change-id: 20260515-no-upstream-version-bumps-ea213a18051a

Best regards,
--  
Sven Eckelmann <sven@narfation.org>

