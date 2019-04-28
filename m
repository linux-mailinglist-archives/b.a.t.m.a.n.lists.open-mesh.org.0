Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [IPv6:2a01:4f8:141:3341:78:46:248:236])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D4C8B657
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 28 Apr 2019 20:28:25 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 1D78280851;
	Sun, 28 Apr 2019 20:28:17 +0200 (CEST)
Received: from v3-1039.vlinux.de (narfation.org [IPv6:2001:4d88:2000:7::2])
 by open-mesh.org (Postfix) with ESMTPS id 9CF5F80677
 for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 28 Apr 2019 20:28:14 +0200 (CEST)
Received: from sven-desktop.home.narfation.org (unknown
 [IPv6:2a00:1ca0:1480:f1fc::4065])
 by v3-1039.vlinux.de (Postfix) with ESMTPSA id DCC221100CF
 for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 28 Apr 2019 20:28:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
 s=20121; t=1556476094; h=from:from:sender:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:mime-version:mime-version:content-type:
 content-transfer-encoding:content-transfer-encoding:in-reply-to:
 references:openpgp:autocrypt; bh=w5L2VtquO4hVQTlrgkoge8grJQ3T6SgV9KCo4o7zzSU=; 
 b=Z9o55cwsBvUZiKg1QGUfemb+7SKnl7yWnQmPwKDfhzEY/d/HuiNI5J9pW5XuLBU7L4PD2B
 UgE7C2ai4vKRLNNXvFKwpld6xjKBozVTZrR1/A5LAZRwVgYkt20+1TXFfdTOR1jkygw8Sz
 VaJocNKljjn/oCuTNPA5HvXFvdlkegQ=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: [PATCH] batman-adv: genetlink: optionally validate strictly/dumps
Date: Sun, 28 Apr 2019 20:28:09 +0200
Message-Id: <20190428182809.2150-1-sven@narfation.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org; 
 s=20121; t=1556476094;
 h=from:from:sender:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:mime-version:mime-version:content-type:
 content-transfer-encoding:content-transfer-encoding:in-reply-to:
 references:openpgp:autocrypt;
 bh=w5L2VtquO4hVQTlrgkoge8grJQ3T6SgV9KCo4o7zzSU=;
 b=dWEwcO9jrUOLjKzY/cu9fejYRB5q7jn72UVam1hqXJKsnJJ3QqIRNOk87ZhAH66+qDxg6P
 RDz8iGO+18kZ7Vtl6aMGGWKt9Lme5IHxjzFkyO2W0jYkzwddONw5cq6umZ6ginm9BKhlq+
 +hCx1sT+N3HKYpxsNyDxwkIhT2VlnoU=
ARC-Seal: i=1; s=20121; d=narfation.org; t=1556476094; a=rsa-sha256; cv=none;
 b=DKf7vaPQpG/OwPHfPFYoB5PlgC871xRMli93t0Ijcz0DAoDVUZChZq8k9zC3rccV+Uoa7M
 sftC7CTt28efklRoBX03odCQyTHM41WAOEsZkvim6/YJhrWrjI2TMMpIKzwaPnx1cBDeHy
 g5Y6wQRi9xyB5nbJ1yiGTz0Gs92aqwY=
ARC-Authentication-Results: i=1; ORIGINATING;
 auth=pass smtp.auth=sven smtp.mailfrom=sven@narfation.org
X-BeenThere: b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 2.1.23
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
X-Spam: Yes

From: Johannes Berg <johannes.berg@intel.com>

Add options to strictly validate messages and dump messages,
sometimes perhaps validating dump messages non-strictly may
be required, so add an option for that as well.

Since none of this can really be applied to existing commands,
set the options everwhere using the following spatch:

    @@
    identifier ops;
    expression X;
    @@
    struct genl_ops ops[] = {
    ...,
     {
            .cmd = X,
    +       .validate = GENL_DONT_VALIDATE_STRICT | GENL_DONT_VALIDATE_DUMP,
            ...
     },
    ...
    };

For new commands one should just not copy the .validate 'opt-out'
flags and thus get strict validation.

Signed-off-by: Johannes Berg <johannes.berg@intel.com>
Signed-off-by: David S. Miller <davem@davemloft.net>
[sven@narfation.org: Add compat code]
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 compat-include/net/genetlink.h | 46 ++++++++++++++++++++++++++++++----
 net/batman-adv/netlink.c       | 18 +++++++++++++
 2 files changed, 59 insertions(+), 5 deletions(-)

diff --git a/compat-include/net/genetlink.h b/compat-include/net/genetlink.h
index 7d17a705..fbfdb733 100644
--- a/compat-include/net/genetlink.h
+++ b/compat-include/net/genetlink.h
@@ -33,6 +33,25 @@ void batadv_genl_dump_check_consistent(struct netlink_callback *cb,
 
 #if LINUX_VERSION_CODE < KERNEL_VERSION(5, 2, 0)
 
+enum genl_validate_flags {
+	GENL_DONT_VALIDATE_STRICT		= BIT(0),
+	GENL_DONT_VALIDATE_DUMP			= BIT(1),
+	GENL_DONT_VALIDATE_DUMP_STRICT		= BIT(2),
+};
+
+struct batadv_genl_ops {
+	int		       (*doit)(struct sk_buff *skb,
+				       struct genl_info *info);
+	int		       (*start)(struct netlink_callback *cb);
+	int		       (*dumpit)(struct sk_buff *skb,
+					 struct netlink_callback *cb);
+	int		       (*done)(struct netlink_callback *cb);
+	u8			cmd;
+	u8			internal_flags;
+	u8			flags;
+	u8			validate;
+};
+
 struct batadv_genl_family {
 	/* data handled by the actual kernel */
 	struct genl_family family;
@@ -50,7 +69,7 @@ struct batadv_genl_family {
 			 struct genl_info *info);
         void (*post_doit)(const struct genl_ops *ops, struct sk_buff *skb,
 			  struct genl_info *info);
-	const struct genl_ops *ops;
+	const struct batadv_genl_ops *ops;
 	const struct genl_multicast_group *mcgrps;
 	unsigned int n_ops;
 	unsigned int n_mcgrps;
@@ -63,8 +82,6 @@ struct batadv_genl_family {
 	struct genl_ops *copy_ops;
 };
 
-#define genl_family batadv_genl_family
-
 static inline int batadv_genl_register_family(struct batadv_genl_family *family)
 {
 	struct genl_ops *ops;
@@ -82,12 +99,20 @@ static inline int batadv_genl_register_family(struct batadv_genl_family *family)
 	family->family.n_mcgrps = family->n_mcgrps;
 	family->family.module = family->module;
 
-	ops = kmemdup(family->ops, sizeof(*ops) * family->n_ops, GFP_KERNEL);
+	ops = kzalloc(sizeof(*ops) * family->n_ops, GFP_KERNEL);
 	if (!ops)
 		return -ENOMEM;
 
-	for (i = 0; i < family->family.n_ops; i++)
+	for (i = 0; i < family->family.n_ops; i++) {
+		ops[i].doit = family->ops[i].doit;
+		ops[i].start = family->ops[i].start;
+		ops[i].dumpit = family->ops[i].dumpit;
+		ops[i].done = family->ops[i].done;
+		ops[i].cmd = family->ops[i].cmd;
+		ops[i].internal_flags = family->ops[i].internal_flags;
+		ops[i].flags = family->ops[i].flags;
 		ops[i].policy = family->policy;
+	}
 
 	family->family.ops = ops;
 	family->copy_ops = ops;
@@ -95,6 +120,17 @@ static inline int batadv_genl_register_family(struct batadv_genl_family *family)
 	return genl_register_family(&family->family);
 }
 
+typedef struct genl_ops batadv_genl_ops_old;
+
+#define batadv_pre_doit(__x, __y, __z) \
+	batadv_pre_doit(const batadv_genl_ops_old *ops, __y, __z)
+
+#define batadv_post_doit(__x, __y, __z) \
+	batadv_post_doit(const batadv_genl_ops_old *ops, __y, __z)
+
+#define genl_ops batadv_genl_ops
+#define genl_family batadv_genl_family
+
 #define genl_register_family(family) \
 	batadv_genl_register_family((family))
 
diff --git a/net/batman-adv/netlink.c b/net/batman-adv/netlink.c
index e7907308..a67720fa 100644
--- a/net/batman-adv/netlink.c
+++ b/net/batman-adv/netlink.c
@@ -1343,29 +1343,34 @@ static void batadv_post_doit(const struct genl_ops *ops, struct sk_buff *skb,
 static const struct genl_ops batadv_netlink_ops[] = {
 	{
 		.cmd = BATADV_CMD_GET_MESH,
+		.validate = GENL_DONT_VALIDATE_STRICT | GENL_DONT_VALIDATE_DUMP,
 		/* can be retrieved by unprivileged users */
 		.doit = batadv_netlink_get_mesh,
 		.internal_flags = BATADV_FLAG_NEED_MESH,
 	},
 	{
 		.cmd = BATADV_CMD_TP_METER,
+		.validate = GENL_DONT_VALIDATE_STRICT | GENL_DONT_VALIDATE_DUMP,
 		.flags = GENL_ADMIN_PERM,
 		.doit = batadv_netlink_tp_meter_start,
 		.internal_flags = BATADV_FLAG_NEED_MESH,
 	},
 	{
 		.cmd = BATADV_CMD_TP_METER_CANCEL,
+		.validate = GENL_DONT_VALIDATE_STRICT | GENL_DONT_VALIDATE_DUMP,
 		.flags = GENL_ADMIN_PERM,
 		.doit = batadv_netlink_tp_meter_cancel,
 		.internal_flags = BATADV_FLAG_NEED_MESH,
 	},
 	{
 		.cmd = BATADV_CMD_GET_ROUTING_ALGOS,
+		.validate = GENL_DONT_VALIDATE_STRICT | GENL_DONT_VALIDATE_DUMP,
 		.flags = GENL_ADMIN_PERM,
 		.dumpit = batadv_algo_dump,
 	},
 	{
 		.cmd = BATADV_CMD_GET_HARDIF,
+		.validate = GENL_DONT_VALIDATE_STRICT | GENL_DONT_VALIDATE_DUMP,
 		/* can be retrieved by unprivileged users */
 		.dumpit = batadv_netlink_dump_hardif,
 		.doit = batadv_netlink_get_hardif,
@@ -1374,57 +1379,68 @@ static const struct genl_ops batadv_netlink_ops[] = {
 	},
 	{
 		.cmd = BATADV_CMD_GET_TRANSTABLE_LOCAL,
+		.validate = GENL_DONT_VALIDATE_STRICT | GENL_DONT_VALIDATE_DUMP,
 		.flags = GENL_ADMIN_PERM,
 		.dumpit = batadv_tt_local_dump,
 	},
 	{
 		.cmd = BATADV_CMD_GET_TRANSTABLE_GLOBAL,
+		.validate = GENL_DONT_VALIDATE_STRICT | GENL_DONT_VALIDATE_DUMP,
 		.flags = GENL_ADMIN_PERM,
 		.dumpit = batadv_tt_global_dump,
 	},
 	{
 		.cmd = BATADV_CMD_GET_ORIGINATORS,
+		.validate = GENL_DONT_VALIDATE_STRICT | GENL_DONT_VALIDATE_DUMP,
 		.flags = GENL_ADMIN_PERM,
 		.dumpit = batadv_orig_dump,
 	},
 	{
 		.cmd = BATADV_CMD_GET_NEIGHBORS,
+		.validate = GENL_DONT_VALIDATE_STRICT | GENL_DONT_VALIDATE_DUMP,
 		.flags = GENL_ADMIN_PERM,
 		.dumpit = batadv_hardif_neigh_dump,
 	},
 	{
 		.cmd = BATADV_CMD_GET_GATEWAYS,
+		.validate = GENL_DONT_VALIDATE_STRICT | GENL_DONT_VALIDATE_DUMP,
 		.flags = GENL_ADMIN_PERM,
 		.dumpit = batadv_gw_dump,
 	},
 	{
 		.cmd = BATADV_CMD_GET_BLA_CLAIM,
+		.validate = GENL_DONT_VALIDATE_STRICT | GENL_DONT_VALIDATE_DUMP,
 		.flags = GENL_ADMIN_PERM,
 		.dumpit = batadv_bla_claim_dump,
 	},
 	{
 		.cmd = BATADV_CMD_GET_BLA_BACKBONE,
+		.validate = GENL_DONT_VALIDATE_STRICT | GENL_DONT_VALIDATE_DUMP,
 		.flags = GENL_ADMIN_PERM,
 		.dumpit = batadv_bla_backbone_dump,
 	},
 	{
 		.cmd = BATADV_CMD_GET_DAT_CACHE,
+		.validate = GENL_DONT_VALIDATE_STRICT | GENL_DONT_VALIDATE_DUMP,
 		.flags = GENL_ADMIN_PERM,
 		.dumpit = batadv_dat_cache_dump,
 	},
 	{
 		.cmd = BATADV_CMD_GET_MCAST_FLAGS,
+		.validate = GENL_DONT_VALIDATE_STRICT | GENL_DONT_VALIDATE_DUMP,
 		.flags = GENL_ADMIN_PERM,
 		.dumpit = batadv_mcast_flags_dump,
 	},
 	{
 		.cmd = BATADV_CMD_SET_MESH,
+		.validate = GENL_DONT_VALIDATE_STRICT | GENL_DONT_VALIDATE_DUMP,
 		.flags = GENL_ADMIN_PERM,
 		.doit = batadv_netlink_set_mesh,
 		.internal_flags = BATADV_FLAG_NEED_MESH,
 	},
 	{
 		.cmd = BATADV_CMD_SET_HARDIF,
+		.validate = GENL_DONT_VALIDATE_STRICT | GENL_DONT_VALIDATE_DUMP,
 		.flags = GENL_ADMIN_PERM,
 		.doit = batadv_netlink_set_hardif,
 		.internal_flags = BATADV_FLAG_NEED_MESH |
@@ -1432,6 +1448,7 @@ static const struct genl_ops batadv_netlink_ops[] = {
 	},
 	{
 		.cmd = BATADV_CMD_GET_VLAN,
+		.validate = GENL_DONT_VALIDATE_STRICT | GENL_DONT_VALIDATE_DUMP,
 		/* can be retrieved by unprivileged users */
 		.doit = batadv_netlink_get_vlan,
 		.internal_flags = BATADV_FLAG_NEED_MESH |
@@ -1439,6 +1456,7 @@ static const struct genl_ops batadv_netlink_ops[] = {
 	},
 	{
 		.cmd = BATADV_CMD_SET_VLAN,
+		.validate = GENL_DONT_VALIDATE_STRICT | GENL_DONT_VALIDATE_DUMP,
 		.flags = GENL_ADMIN_PERM,
 		.doit = batadv_netlink_set_vlan,
 		.internal_flags = BATADV_FLAG_NEED_MESH |
-- 
2.20.1

