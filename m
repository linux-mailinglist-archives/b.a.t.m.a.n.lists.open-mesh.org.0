Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [IPv6:2a01:4f8:141:3341:78:46:248:236])
	by mail.lfdr.de (Postfix) with ESMTPS id DDCD615E35
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue,  7 May 2019 09:29:39 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id B4B648219F;
	Tue,  7 May 2019 09:29:36 +0200 (CEST)
Received: from mail.aperture-lab.de (mail.aperture-lab.de
 [IPv6:2a01:4f8:171:314c::100:a1])
 by open-mesh.org (Postfix) with ESMTPS id 2757181FF1
 for <b.a.t.m.a.n@lists.open-mesh.org>; Tue,  7 May 2019 09:29:33 +0200 (CEST)
From: =?UTF-8?q?Linus=20L=C3=BCssing?= <linus.luessing@c0d3.blue>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c0d3.blue; s=2018;
 t=1557214172; h=from:from:sender:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:in-reply-to:
 references:openpgp:autocrypt; bh=CMjMo36RGH3mP1ZyRs4K421+HfFDWGNsJzpnNLzIS7A=; 
 b=hy3+HPYrM3UW7a11b2IAfFeqYk/Cst/YGTQ/W46CVNVROmIykGyHPVq3rSNYvVX1QFNhnk
 zt6bnJ06UAh8JnoVJbDIDM35lGETc0U0doeS9+mQDSIRUUeybhlT3nFlVF6/wwXzNqw8Eq
 WFKm5PqUEunOBacVOFyaiCVXp4fOtu4mE5KIHgduOBiLh6E+QfI9689KQkCY5MfuXSZ0Fv
 0CTiyd7QfdAjZAnV4s1UqU2Xq5l6V9gETEqdsbbmP+f9b0U1D7EUGWT2SS9yLZWqKSDf72
 /wIjiymNiJhdy7jA00rfX3+5pzHPLVJg3apHm8JmGWwSZGMZ2raUjBS57KA5Og==
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: [PATCH v3] batctl: Add noflood_mark command
Date: Tue,  7 May 2019 09:29:30 +0200
Message-Id: <20190507072930.8221-1-linus.luessing@c0d3.blue>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=c0d3.blue;
 s=2018; t=1557214172; h=from:from:sender:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:in-reply-to:
 references:openpgp:autocrypt;
 bh=CMjMo36RGH3mP1ZyRs4K421+HfFDWGNsJzpnNLzIS7A=;
 b=rozLsKpt8NDTt5Maie+A8UdWr3SGtRxvCMdvFP1lnDdn8NwbLxnDKSO9nrBJIrnda5F76D
 vVfkM/Ww6In04AFGc4TD2miIURWnIH+cA7lqpQqiXZ+2DZUnsHYWOKtEgnQicqlRYsvZL5
 tb7gn7JPeHBxzOO9nY9R+JKHSiJcw0vX+S/zF7co/U0HN9c4lqI/KsmxxjXEFohqwhBhZS
 QvUyWmHWRjrvbm9uZAKzyf0s/iAKVbb8MSrpEFwF5hHqBEMRLrtU9KiT4QZPParzeG8q77
 YgtEczAK7kP+xtZke5FHipr5kbXJDuc4a1wheR9g89UlkUJtoROuzCNOoYGGAQ==
ARC-Seal: i=1; s=2018; d=c0d3.blue; t=1557214172; a=rsa-sha256; cv=none;
 b=iJluCpWMHc77RtV/ODNFZgzzoq8/cCE+0O1ycwM4H1IlMmBPTROLi/mkC2kLZHui1BPB5z
 IqbSHw2s2FOviRewnw4JEoFrbrmcB4jguq/1P50nPfoHeU1xq/uP64lFGBHSBuaSaU5sUt
 0ry9Zu7/oohcfGQIIKVVZfVkJlX5JdqUN8iBKF/CSXv6vT7uCuVx6eEoQBBL2gmxYqyadw
 tcuR5Us5xuzNfh0PjYb9sGUNFNODnwSteT2UJFUtuTDVnAi16q/3RkSrCXEIoAyCVKlyqz
 JxPw0ZBEUPLYHKX4eqvTZ/CFJWF5R0ZucjgbT3PV5MNBNgvJJEQxw/zfSPOOZQ==
ARC-Authentication-Results: i=1; ORIGINATING;
 auth=pass smtp.auth=linus.luessing@c0d3.blue
 smtp.mailfrom=linus.luessing@c0d3.blue
Authentication-Results: ORIGINATING;
 auth=pass smtp.auth=linus.luessing@c0d3.blue
 smtp.mailfrom=linus.luessing@c0d3.blue
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

Adds support for the new 'noflood_mark' setting in batman-adv.

Signed-off-by: Linus Lüssing <linus.luessing@c0d3.blue>
---
Changelog v3:
* changed command from a noflood tri-state option
  to a value/mask one similar to the isolation mark
* noflood.c -> noflood_mark.c

Changelog v2:
* added noflood.c
---
 Makefile       |   1 +
 README.rst     |  15 ++++++
 batman_adv.h   |  12 +++++
 man/batctl.8   |  23 ++++++++
 noflood_mark.c | 141 +++++++++++++++++++++++++++++++++++++++++++++++++
 5 files changed, 192 insertions(+)
 create mode 100644 noflood_mark.c

diff --git a/Makefile b/Makefile
index b7bd545..18f874c 100755
--- a/Makefile
+++ b/Makefile
@@ -60,6 +60,7 @@ $(eval $(call add_command,multicast_mode,y))
 $(eval $(call add_command,nc_nodes,y))
 $(eval $(call add_command,neighbors,y))
 $(eval $(call add_command,network_coding,y))
+$(eval $(call add_command,noflood_mark,y))
 $(eval $(call add_command,orig_interval,y))
 $(eval $(call add_command,originators,y))
 $(eval $(call add_command,ping,y))
diff --git a/README.rst b/README.rst
index bc54412..c025c30 100644
--- a/README.rst
+++ b/README.rst
@@ -549,6 +549,21 @@ Usage::
 * Example 4: ``batctl mark 0x0f``
 
 
+batctl noflood_mark
+=======================
+
+display or modify noflood_mark setting
+
+Usage::
+
+  batctl noflood_mark|nf $value[/0x$mask]
+
+* Example 1: ``batctl nf 0x00000001/0xffffffff``
+* Example 2: ``batctl nf 0x00040000/0xffff0000``
+* Example 3: ``batctl nf 16``
+* Example 4: ``batctl nf 0x0f``
+
+
 batctl translocal
 =================
 
diff --git a/batman_adv.h b/batman_adv.h
index 67f4636..6fabb7a 100644
--- a/batman_adv.h
+++ b/batman_adv.h
@@ -480,6 +480,18 @@ enum batadv_nl_attrs {
 	 */
 	BATADV_ATTR_MULTICAST_FANOUT,
 
+	/**
+	 * @BATADV_ATTR_NOFLOOD_MARK: the noflood mark which allows to tag
+	 *  frames which should never be broadcast flooded through the mesh.
+	 */
+	BATADV_ATTR_NOFLOOD_MARK,
+
+	/**
+	 * @BATADV_ATTR_NOFLOOD_MASK: the noflood (bit)mask which allows to tag
+	 *  frames which should never be broadcast flooded through the mesh.
+	 */
+	BATADV_ATTR_NOFLOOD_MASK,
+
 	/* add attributes above here, update the policy in netlink.c */
 
 	/**
diff --git a/man/batctl.8 b/man/batctl.8
index 0b43031..4173137 100644
--- a/man/batctl.8
+++ b/man/batctl.8
@@ -116,6 +116,29 @@ If no parameter is given the current multicast fanout setting is displayed. Othe
 the multicast fanout. The multicast fanout defines the maximum number of packet copies that may be generated for a
 multicast-to-unicast conversion. Once this limit is exceeded distribution will fall back to broadcast.
 .br
+.IP "\fBnoflood_mark\fP|\fBnf\fP"
+If no parameter is given the current noflood mark value is displayed.
+Otherwise the parameter is used to set or unset the noflood mark. The
+noflood mark allows to prevent broadcast flooding of a frame which
+was previously tagged via netfilter for instance. batman-adv will
+then only forward a frame into the mesh if destined to a limited
+number of destination nodes and drop the frame otherwise.
+.br
+The input is supposed to be of the form $value/$mask, where $value can be any
+32bit long integer (expressed in decimal or hex base) and $mask is a generic
+bitmask (expressed in hex base) that selects the bits to take into consideration
+from $value. It is also possible to enter the input using only $value and in
+this case the full bitmask is used by default.
+
+.br
+.br
+Example 1: 0x00000001/0xffffffff
+.br
+Example 2: 0x00040000/0xffff0000
+.br
+Example 3: 16 or 0x0F
+.br
+.br
 .IP "\fBloglevel\fP|\fBll\fP [\fBlevel\fP[ \fBlevel\fP[ \fBlevel\fP]] \fB...\fP]"
 If no parameter is given the current log level settings are displayed otherwise the parameter(s) is/are used to set the log
 level. Level 'none' disables all verbose logging. Level 'batman' enables messages related to routing / flooding / broadcasting.
diff --git a/noflood_mark.c b/noflood_mark.c
new file mode 100644
index 0000000..e89205c
--- /dev/null
+++ b/noflood_mark.c
@@ -0,0 +1,141 @@
+// SPDX-License-Identifier: GPL-2.0
+/* Copyright (C) 2009-2019  B.A.T.M.A.N. contributors:
+ *
+ * Antonio Quartulli <a@unstable.cc>
+ * Linus Lüssing <linus.luessing@c0d3.blue>
+ *
+ * License-Filename: LICENSES/preferred/GPL-2.0
+ */
+
+#include <errno.h>
+#include <stddef.h>
+#include <stdint.h>
+#include <string.h>
+
+#include "main.h"
+#include "sys.h"
+
+static struct noflood_mark_data {
+	uint32_t noflood_mark;
+	uint32_t noflood_mask;
+} noflood_mark;
+
+static int parse_noflood_mark(struct state *state, int argc, char *argv[])
+{
+	struct settings_data *settings = state->cmd->arg;
+	struct noflood_mark_data *data = settings->data;
+	char *mask_ptr;
+	char buff[256];
+	uint32_t mark;
+	uint32_t mask;
+	char *endptr;
+
+	if (argc != 2) {
+		fprintf(stderr, "Error - incorrect number of arguments (expected 1)\n");
+		return -EINVAL;
+	}
+
+	strncpy(buff, argv[1], sizeof(buff));
+	buff[sizeof(buff) - 1] = '\0';
+
+	/* parse the mask if it has been specified, otherwise assume the mask is
+	 * the biggest possible
+	 */
+	mask = 0xFFFFFFFF;
+	mask_ptr = strchr(buff, '/');
+	if (mask_ptr) {
+		*mask_ptr = '\0';
+		mask_ptr++;
+
+		/* the mask must be entered in hex base as it is going to be a
+		 * bitmask and not a prefix length
+		 */
+		mask = strtoul(mask_ptr, &endptr, 16);
+		if (!endptr || *endptr != '\0')
+			goto inval_format;
+	}
+
+	/* the mark can be entered in any base */
+	mark = strtoul(buff, &endptr, 0);
+	if (!endptr || *endptr != '\0')
+		goto inval_format;
+
+	data->noflood_mask = mask;
+	/* erase bits not covered by the mask */
+	data->noflood_mark = mark & mask;
+
+	return 0;
+
+inval_format:
+	fprintf(stderr, "Error - incorrect number of arguments (expected 1)\n");
+	fprintf(stderr, "The following formats for mark(/mask) are allowed:\n");
+	fprintf(stderr, " * 0x12345678\n");
+	fprintf(stderr, " * 0x12345678/0xabcdef09\n");
+	return -EINVAL;
+}
+
+static int print_noflood_mark(struct nl_msg *msg, void *arg)
+{
+	struct nlattr *attrs[BATADV_ATTR_MAX + 1];
+	struct nlmsghdr *nlh = nlmsg_hdr(msg);
+	struct genlmsghdr *ghdr;
+	int *result = arg;
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
+	if (!attrs[BATADV_ATTR_NOFLOOD_MARK] ||
+	    !attrs[BATADV_ATTR_NOFLOOD_MASK])
+		return NL_OK;
+
+	printf("0x%08x/0x%08x\n",
+	       nla_get_u32(attrs[BATADV_ATTR_NOFLOOD_MARK]),
+	       nla_get_u32(attrs[BATADV_ATTR_NOFLOOD_MASK]));
+
+	*result = 0;
+	return NL_STOP;
+}
+
+static int get_noflood_mark(struct state *state)
+{
+	return sys_simple_nlquery(state, BATADV_CMD_GET_MESH,
+				  NULL, print_noflood_mark);
+}
+
+static int set_attrs_noflood_mark(struct nl_msg *msg, void *arg)
+{
+	struct state *state = arg;
+	struct settings_data *settings = state->cmd->arg;
+	struct noflood_mark_data *data = settings->data;
+
+	nla_put_u32(msg, BATADV_ATTR_NOFLOOD_MARK, data->noflood_mark);
+	nla_put_u32(msg, BATADV_ATTR_NOFLOOD_MASK, data->noflood_mask);
+
+	return 0;
+}
+
+static int set_noflood_mark(struct state *state)
+{
+	return sys_simple_nlquery(state, BATADV_CMD_SET_MESH,
+				  set_attrs_noflood_mark, NULL);
+}
+
+static struct settings_data batctl_settings_noflood_mark = {
+	.sysfs_name = NULL,
+	.data = &noflood_mark,
+	.parse = parse_noflood_mark,
+	.netlink_get = get_noflood_mark,
+	.netlink_set = set_noflood_mark,
+};
+
+COMMAND_NAMED(SUBCOMMAND, noflood_mark, "nf", handle_sys_setting,
+	      COMMAND_FLAG_MESH_IFACE | COMMAND_FLAG_NETLINK,
+	      &batctl_settings_noflood_mark,
+	      "[mark]            \tdisplay or modify noflood_mark setting");
-- 
2.20.1

