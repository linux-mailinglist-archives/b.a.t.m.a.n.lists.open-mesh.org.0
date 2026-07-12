Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id lbg3KgrhU2pJfwMAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 12 Jul 2026 20:46:34 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 28C28745A7E
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 12 Jul 2026 20:46:34 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=narfation.org header.s=20121 header.b=Nnbyp5H8;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 136.243.236.17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id C8D6C84083
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 12 Jul 2026 20:46:33 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1783881993;
 b=dHi2YzWbR+QoYcCotEl+HNybcl2iEAbuZ2zNicgFvV9Gi0PFsSv0J5cS9drb4wHe8Zm8d
 Q2kzGcB231/hz5+jtGPabpPOrejAVa08ytNZ9fS4P7js7W4BVRuD3T/mzaCM54UVEpXvPkH
 VIOSRo6ZBZ7+cupvIw8m2X7x+NZgmvk=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1783881993; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=/jod1urt9MgExeP/iRttWTlByc6CiEShCNM90+0AmT8=;
 b=l6SrsdbKM3w+7IUZUhccRy/8BNjEds3tmzDvnkw8GKTcuAz6/HJX+FUDmhL+XkYyr85UU
 bOk10Z8HOi4oyhUf+sF9FP72C6PHeUSMMLkC7k8z1gQtR9Yoc0ckYp/cfxbUoPrBNrJNP9f
 786BRT8aMnQ8m9t/pRaGlWKATabiDLM=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id 01D8E803DF
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 12 Jul 2026 20:46:09 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1783881980;
	b=llGo5Up7JzIQA2nS1RySLqZANiJy2/AzlPBETMfSZud0PuMNYRA2Bn4Zq1o7vLlqlLpOzz
	hyZ91tPAts9nX2y1lgVE3dA/6VW7CpzMuGIxUddE1JeawmGggM1dq3ndgr0T+nS7Xf7C6C
	YwH5Qg4FxruQtoAWA02ArD4UhpLrJBg=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1783881980;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=/jod1urt9MgExeP/iRttWTlByc6CiEShCNM90+0AmT8=;
	b=i8urDCLialw4IbQzWAcl+5aa/jZ8wYmUD42v7nhy+xhuokesjCpt3RxKtFplO0CJEDl0p6
	n05Hw6S+tu3cN7ZoOI2EII/a+US38uqWIq7Rt4s9RGtpugyfqbCVCsU3qL4IjI5g1i8vEf
	r6eo9PkA22YuiAnodID4Q5Xz7x+9Blg=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=Nnbyp5H8;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
Received: by dvalin.narfation.org (Postfix) id C784E1FD15;
	Sun, 12 Jul 2026 18:46:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1783881968;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=/jod1urt9MgExeP/iRttWTlByc6CiEShCNM90+0AmT8=;
	b=Nnbyp5H8e2OgGreGKy+dcovpcv7XDslln2QTts4KbAUgRybMZmKtZHIV41Z7GNLKCyOWXs
	PdFWiR//jmFx5/yB4Ad8ircMsNJipQZo8QZ/LYEwony6hKLEg06YoIrNk7ge6RLunNNiEz
	x/VagNc25iuP6ue9M2pXl5O5/z6Jsls=
From: Sven Eckelmann <sven@narfation.org>
Date: Sun, 12 Jul 2026 20:45:43 +0200
Subject: [PATCH] batctl: add subcommand to limit number of learned objects
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260712-limit-v1-1-618b113a9da0@narfation.org>
X-B4-Tracking: v=1; b=H4sIANbgU2oC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIzMDc0Mj3ZzM3MwSXXMzS4vURCOjNCNLCyWg2oKi1LTMCrA50bEQfnFpUlZ
 qcglIs1JtLQBUD/yTaQAAAA==
X-Change-ID: 20260712-limit-7698ea22f298
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=12491; i=sven@narfation.org;
 h=from:subject:message-id; bh=XUy/9NOWeP02vFllEqiRAB/Ye5M78wUU7JeJo1g7shE=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDFnBD25Mvf9n68UKkcNTvxhsOap77rLd0WW/a+s2SK15a
 fjJf+mW6I5SFgYxLgZZMUWWPVfyz29mfyv/edrHozBzWJlAhjBwcQrARGZcYfink3CqfPKXzOhd
 syJkjKJmuiSefam67vYR47zP4qVslcrdjAzP12q+Zyo0aOSSMNhj5hy2M2q+Wn7H6dZQ4evn34R
 x/GcCAA==
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: O4F4PDY5MDRQRWD5ASFLFEH54LKGL3CE
X-Message-ID-Hash: O4F4PDY5MDRQRWD5ASFLFEH54LKGL3CE
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/O4F4PDY5MDRQRWD5ASFLFEH54LKGL3CE/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.01 / 15.00];
	ARC_ALLOW(-1.00)[open-mesh.org:s=20121:i=2];
	DMARC_POLICY_ALLOW(-0.50)[narfation.org,none];
	R_DKIM_ALLOW(-0.20)[narfation.org:s=20121];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS(0.00)[m:b.a.t.m.a.n@lists.open-mesh.org,m:sven@narfation.org,s:lists@lfdr.de];
	RCPT_COUNT_TWO(0.00)[2];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sven@narfation.org,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	TAGGED_FROM(0.00)[lists,b.a.t.m.a.n=lfdr.de];
	R_SPF_NA(0.00)[no SPF record];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sven@narfation.org,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[narfation.org:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:24940, ipnet:136.243.0.0/16, country:DE];
	TAGGED_RCPT(0.00)[b.a.t.m.a.n];
	DBL_BLOCKED_OPENRESOLVER(0.00)[narfation.org:from_mime,narfation.org:email,narfation.org:mid,narfation.org:dkim,lists.open-mesh.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 28C28745A7E

A malicious actor connected to the mesh network or the client interface
could cause batman-adv to learn more and more objects (originators,
neighbors, (Distributed) ARP table entries, bridge loop avoidance
backbones/claims, ...). For each learned object, memory is used by
batman-adv. The malicious actor could trigger an out-of-memory situation or
cause slow-downs.

The limit subcommand can be used to configure limits for these
automatically learned objects or to read the out the available object
types.

If no parameter is given the current limits for remote learned objects are
displayed. Otherwise the parameters are interpreted as pairs of limit name
and value and are used to set the given limits. Limits which are not
specified as parameter are left unmodified. A limit of 0 disables the limit
for this object type.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 Makefile     |   1 +
 README.rst   |  31 +++++++++++
 batman_adv.h |  30 ++++++++++
 event.c      |  20 +++++++
 genl_json.c  |  20 +++++++
 limit.c      | 176 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 man/batctl.8 |   7 +++
 netlink.c    |  15 +++++
 8 files changed, 300 insertions(+)

diff --git a/Makefile b/Makefile
index a1cde20..3c4e8a3 100755
--- a/Makefile
+++ b/Makefile
@@ -59,6 +59,7 @@ $(eval $(call add_command,hardifs_json,y))
 $(eval $(call add_command,hop_penalty,y))
 $(eval $(call add_command,interface,y))
 $(eval $(call add_command,isolation_mark,y))
+$(eval $(call add_command,limit,y))
 $(eval $(call add_command,loglevel,y))
 $(eval $(call add_command,mcast_flags,y))
 $(eval $(call add_command,mcast_flags_json,y))
diff --git a/README.rst b/README.rst
index d3cfe0e..fe22534 100644
--- a/README.rst
+++ b/README.rst
@@ -626,6 +626,37 @@ Usage::
 * Example 4: ``batctl mark 0x0f``
 
 
+batctl limit
+------------
+
+display or modify the limits for remote learned objects
+
+If no parameter is given the current limits are displayed. Otherwise the
+parameters are interpreted as pairs of limit name and value and are used
+to set the given limits. Limits which are not specified as parameter are
+left unmodified. A limit of 0 disables the limit for this object type.
+
+Usage::
+
+  batctl limit|lt [limit value]...
+
+Example::
+
+  $ batctl limit
+  neighbors: 0
+  originators: 0
+  dat: 0
+  bla_backbones: 0
+  bla_claims: 0
+  $ batctl limit neighbors 64 originators 128
+  $ batctl limit
+  neighbors: 64
+  originators: 128
+  dat: 0
+  bla_backbones: 0
+  bla_claims: 0
+
+
 batctl loglevel
 ---------------
 
diff --git a/batman_adv.h b/batman_adv.h
index 936bcac..94ef2af 100644
--- a/batman_adv.h
+++ b/batman_adv.h
@@ -481,6 +481,36 @@ enum batadv_nl_attrs {
 	 */
 	BATADV_ATTR_MULTICAST_FANOUT,
 
+	/**
+	 * @BATADV_ATTR_NEIGH_MAX_LEARNED: defines the maximum number of neighbors
+	 * which can be learned in parallel
+	 */
+	BATADV_ATTR_NEIGH_MAX_LEARNED,
+
+	/**
+	 * @BATADV_ATTR_ORIG_MAX_LEARNED: defines the maximum number of originator
+	 * which can be learned in parallel
+	 */
+	BATADV_ATTR_ORIG_MAX_LEARNED,
+
+	/**
+	 * @BATADV_ATTR_DAT_MAX_LEARNED: defines the maximum number of DAT entries
+	 * which can be learned in parallel
+	 */
+	BATADV_ATTR_DAT_MAX_LEARNED,
+
+	/**
+	 * @BATADV_ATTR_BLA_BACKBONE_MAX_LEARNED: defines the maximum number of BLA backbones
+	 * which can be learned in parallel
+	 */
+	BATADV_ATTR_BLA_BACKBONE_MAX_LEARNED,
+
+	/**
+	 * @BATADV_ATTR_BLA_CLAIM_MAX_LEARNED: defines the maximum number of BLA claim
+	 * which can be learned in parallel
+	 */
+	BATADV_ATTR_BLA_CLAIM_MAX_LEARNED,
+
 	/* add attributes above here, update the policy in netlink.c */
 
 	/**
diff --git a/event.c b/event.c
index 4a1085d..af25c11 100644
--- a/event.c
+++ b/event.c
@@ -205,10 +205,22 @@ static void event_parse_set_mesh(struct nlattr **attrs, const char *prefix)
 		printf("* bonding %s\n",
 		       u8_to_boolstr(attrs[BATADV_ATTR_BONDING_ENABLED]));
 
+	if (attrs[BATADV_ATTR_BLA_BACKBONE_MAX_LEARNED])
+		printf("* bla_backbone_max_learned %u\n",
+		       nla_get_u32(attrs[BATADV_ATTR_BLA_BACKBONE_MAX_LEARNED]));
+
+	if (attrs[BATADV_ATTR_BLA_CLAIM_MAX_LEARNED])
+		printf("* bla_claim_max_learned %u\n",
+		       nla_get_u32(attrs[BATADV_ATTR_BLA_CLAIM_MAX_LEARNED]));
+
 	if (attrs[BATADV_ATTR_BRIDGE_LOOP_AVOIDANCE_ENABLED])
 		printf("* bridge_loop_avoidance %s\n",
 		       u8_to_boolstr(attrs[BATADV_ATTR_BRIDGE_LOOP_AVOIDANCE_ENABLED]));
 
+	if (attrs[BATADV_ATTR_DAT_MAX_LEARNED])
+		printf("* dat_max_learned %u\n",
+		       nla_get_u32(attrs[BATADV_ATTR_DAT_MAX_LEARNED]));
+
 	if (attrs[BATADV_ATTR_DISTRIBUTED_ARP_TABLE_ENABLED])
 		printf("* distributed_arp_table %s\n",
 		       u8_to_boolstr(attrs[BATADV_ATTR_DISTRIBUTED_ARP_TABLE_ENABLED]));
@@ -282,9 +294,17 @@ static void event_parse_set_mesh(struct nlattr **attrs, const char *prefix)
 		printf("* multicast_forceflood %s\n",
 		       u8_to_boolstr(attrs[BATADV_ATTR_MULTICAST_FORCEFLOOD_ENABLED]));
 
+	if (attrs[BATADV_ATTR_NEIGH_MAX_LEARNED])
+		printf("* neigh_max_learned %u\n",
+		       nla_get_u32(attrs[BATADV_ATTR_NEIGH_MAX_LEARNED]));
+
 	if (attrs[BATADV_ATTR_ORIG_INTERVAL])
 		printf("* orig_interval %u ms\n",
 		       nla_get_u32(attrs[BATADV_ATTR_ORIG_INTERVAL]));
+
+	if (attrs[BATADV_ATTR_ORIG_MAX_LEARNED])
+		printf("* orig_max_learned %u\n",
+		       nla_get_u32(attrs[BATADV_ATTR_ORIG_MAX_LEARNED]));
 }
 
 static void event_parse_set_hardif(struct nlattr **attrs, const char *prefix)
diff --git a/genl_json.c b/genl_json.c
index c3ef83a..ec34b57 100644
--- a/genl_json.c
+++ b/genl_json.c
@@ -461,6 +461,26 @@ static const struct nla_policy_json batadv_genl_json[NUM_BATADV_ATTR] = {
 		.name = "multicast_fanout",
 		.cb = nljson_print_uint32,
 	},
+	[BATADV_ATTR_NEIGH_MAX_LEARNED] = {
+		.name = "neigh_max_learned",
+		.cb = nljson_print_uint32,
+	},
+	[BATADV_ATTR_ORIG_MAX_LEARNED] = {
+		.name = "orig_max_learned",
+		.cb = nljson_print_uint32,
+	},
+	[BATADV_ATTR_DAT_MAX_LEARNED] = {
+		.name = "dat_max_learned",
+		.cb = nljson_print_uint32,
+	},
+	[BATADV_ATTR_BLA_BACKBONE_MAX_LEARNED] = {
+		.name = "bla_backbone_max_learned",
+		.cb = nljson_print_uint32,
+	},
+	[BATADV_ATTR_BLA_CLAIM_MAX_LEARNED] = {
+		.name = "bla_claim_max_learned",
+		.cb = nljson_print_uint32,
+	},
 };
 
 void netlink_print_json_entries(struct nlattr *attrs[], struct json_opts *json_opts)
diff --git a/limit.c b/limit.c
new file mode 100644
index 0000000..6643d1f
--- /dev/null
+++ b/limit.c
@@ -0,0 +1,176 @@
+// SPDX-License-Identifier: GPL-2.0
+/* Copyright (C) B.A.T.M.A.N. contributors
+ *
+ * License-Filename: LICENSES/preferred/GPL-2.0
+ */
+
+#include <errno.h>
+#include <stdbool.h>
+#include <stddef.h>
+#include <stdint.h>
+#include <stdio.h>
+#include <stdlib.h>
+#include <string.h>
+
+#include "main.h"
+#include "sys.h"
+
+struct limit_setting {
+	const char *name;
+	enum batadv_nl_attrs attr;
+	bool set:1;
+	uint32_t value;
+};
+
+static struct limit_setting limit_settings[] = {
+	{
+		.name = "neighbors",
+		.attr = BATADV_ATTR_NEIGH_MAX_LEARNED,
+	},
+	{
+		.name = "originators",
+		.attr = BATADV_ATTR_ORIG_MAX_LEARNED,
+	},
+	{
+		.name = "dat",
+		.attr = BATADV_ATTR_DAT_MAX_LEARNED,
+	},
+	{
+		.name = "bla_backbones",
+		.attr = BATADV_ATTR_BLA_BACKBONE_MAX_LEARNED,
+	},
+	{
+		.name = "bla_claims",
+		.attr = BATADV_ATTR_BLA_CLAIM_MAX_LEARNED,
+	},
+};
+
+static struct limit_setting *parse_limit_name(const char *name)
+{
+	struct limit_setting *setting;
+	size_t i;
+
+	for (i = 0; i < ARRAY_SIZE(limit_settings); i++) {
+		setting = &limit_settings[i];
+
+		if (strcmp(setting->name, name) != 0)
+			continue;
+
+		return setting;
+	}
+
+	return NULL;
+}
+
+static int parse_limit(struct state *state __maybe_unused, int argc,
+		       char *argv[])
+{
+	struct limit_setting *setting;
+	unsigned long value;
+	char *endptr;
+	int i;
+
+	if ((argc - 1) % 2 != 0) {
+		fprintf(stderr,
+			"Error - arguments must be pairs of limit name and value\n");
+		return -EINVAL;
+	}
+
+	for (i = 1; i < argc; i += 2) {
+		setting = parse_limit_name(argv[i]);
+		if (!setting) {
+			fprintf(stderr, "Error - unknown limit name: %s\n",
+				argv[i]);
+			return -EINVAL;
+		}
+
+		value = strtoul(argv[i + 1], &endptr, 0);
+		if (!endptr || *endptr != '\0' || endptr == argv[i + 1] ||
+		    value > UINT32_MAX) {
+			fprintf(stderr,
+				"Error - the supplied argument is invalid: %s\n",
+				argv[i + 1]);
+			return -EINVAL;
+		}
+
+		setting->value = value;
+		setting->set = true;
+	}
+
+	return 0;
+}
+
+static int print_limit(struct nl_msg *msg, void *arg)
+{
+	struct nlattr *attrs[BATADV_ATTR_MAX + 1];
+	struct nlmsghdr *nlh = nlmsg_hdr(msg);
+	const struct limit_setting *setting;
+	struct genlmsghdr *ghdr;
+	int *result = arg;
+	size_t i;
+
+	if (!genlmsg_valid_hdr(nlh, 0))
+		return NL_OK;
+
+	ghdr = nlmsg_data(nlh);
+
+	if (nla_parse(attrs, BATADV_ATTR_MAX, genlmsg_attrdata(ghdr, 0),
+		      genlmsg_len(ghdr), batadv_netlink_policy)) {
+		return NL_OK;
+	}
+
+	for (i = 0; i < ARRAY_SIZE(limit_settings); i++) {
+		setting = &limit_settings[i];
+
+		if (!attrs[setting->attr])
+			continue;
+
+		printf("%s: %u\n", setting->name,
+		       nla_get_u32(attrs[setting->attr]));
+
+		*result = 0;
+	}
+
+	return NL_STOP;
+}
+
+static int get_limit(struct state *state)
+{
+	return sys_simple_nlquery(state, BATADV_CMD_GET_MESH, NULL,
+				  print_limit);
+}
+
+static int set_attrs_limit(struct nl_msg *msg, void *arg __maybe_unused)
+{
+	const struct limit_setting *setting;
+	size_t i;
+
+	for (i = 0; i < ARRAY_SIZE(limit_settings); i++) {
+		setting = &limit_settings[i];
+
+		if (!setting->set)
+			continue;
+
+		nla_put_u32(msg, setting->attr, setting->value);
+	}
+
+	return 0;
+}
+
+static int set_limit(struct state *state)
+{
+	return sys_simple_nlquery(state, BATADV_CMD_SET_MESH, set_attrs_limit,
+				  NULL);
+}
+
+static struct settings_data batctl_settings_limit = {
+	.data = &limit_settings,
+	.parse = parse_limit,
+	.netlink_get = get_limit,
+	.netlink_set = set_limit,
+};
+
+COMMAND_NAMED(SUBCOMMAND_MIF, limit, "lt", handle_sys_setting,
+	      COMMAND_FLAG_MESH_IFACE | COMMAND_FLAG_NETLINK,
+	      &batctl_settings_limit,
+	      "[limit value ...] \tdisplay or modify the limits for remote learned objects");
diff --git a/man/batctl.8 b/man/batctl.8
index c0f3aa0..356ead7 100644
--- a/man/batctl.8
+++ b/man/batctl.8
@@ -321,6 +321,13 @@ Example 2: 0x00040000/0xffff0000
 Example 3: 16 or 0x0F
 .br
 .TP
+[\fBmeshif\fP \fInetdev\fP] \fBlimit\fP|\fBlt\fP [\fIlimit\fP \fIvalue\fP ...]
+If no parameter is given the current limits for remote learned objects are displayed. Otherwise the parameters are
+interpreted as pairs of limit name and value and are used to set the given limits. Limits which are not specified as
+parameter are left unmodified. A limit of 0 disables the limit for this object type. Valid limit names are
+\fBneighbors\fP, \fBoriginators\fP, \fBdat\fP, \fBbla_backbones\fP and
+\fBbla_claims\fP.
+.TP
 [\fBmeshif\fP \fInetdev\fP] \fBloglevel\fP|\fBll\fP [\fIlevel\fP ...]
 If no parameter is given the current log level settings are displayed otherwise the parameter(s) is/are used to set the log
 level. Level 'none' disables all verbose logging. Level 'batman' enables messages related to routing / flooding / broadcasting.
diff --git a/netlink.c b/netlink.c
index 8198533..043efc4 100644
--- a/netlink.c
+++ b/netlink.c
@@ -227,6 +227,21 @@ struct nla_policy batadv_netlink_policy[NUM_BATADV_ATTR] = {
 	[BATADV_ATTR_MULTICAST_FANOUT] = {
 		.type = NLA_U32,
 	},
+	[BATADV_ATTR_NEIGH_MAX_LEARNED] = {
+		.type = NLA_U32,
+	},
+	[BATADV_ATTR_ORIG_MAX_LEARNED] = {
+		.type = NLA_U32,
+	},
+	[BATADV_ATTR_DAT_MAX_LEARNED] = {
+		.type = NLA_U32,
+	},
+	[BATADV_ATTR_BLA_BACKBONE_MAX_LEARNED] = {
+		.type = NLA_U32,
+	},
+	[BATADV_ATTR_BLA_CLAIM_MAX_LEARNED] = {
+		.type = NLA_U32,
+	},
 };
 
 int netlink_create(struct state *state)

---
base-commit: 48c3e05b3d7f3a135e2d8c3460f0f4d0411cf58e
change-id: 20260712-limit-7698ea22f298

Best regards,
--  
Sven Eckelmann <sven@narfation.org>

