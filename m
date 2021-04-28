Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id A87EE36D5B4
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 28 Apr 2021 12:23:40 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 4B21F82229;
	Wed, 28 Apr 2021 12:23:39 +0200 (CEST)
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com [IPv6:2a00:1450:4864:20::532])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 589DA804B0
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 28 Apr 2021 12:23:36 +0200 (CEST)
Received: by mail-ed1-x532.google.com with SMTP id g10so5589997edb.0
        for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 28 Apr 2021 03:23:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=d6MgjkAPosh+76aed3YX9bibXokEvmxVCi7zRtWqFc0=;
        b=rwJwUd+Z5cBLTXq3MbRmCs0kHeq5MoiOfhyKWWpt4T98tHzojET1oGlZDz4YfLXcLK
         Od91ewEby35BdbzvdBogKPvp51YRDsH4HDhVIO6CHiDh632tfxTNZH9ybALi08xFaUJh
         FrF/lDnCBxaB1PT9gCyfM8HA9/HMnaUr715qgJqYbLrmutx0ihkWi5eICqFCbk9/NS2/
         h5CchEoMShXzoCmga95TBiM1+kFUEOn9N+3l6LGWgkPo1KAEHQB+APasgUpz8Ykhao+5
         u5vc4+5q2Z9ywBrSDvEXalzemrQ0BaHQHTrsgi56ASWir00wrIo/JOvi4SuJoS8t8kC/
         713A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=d6MgjkAPosh+76aed3YX9bibXokEvmxVCi7zRtWqFc0=;
        b=lne+fVhpN238bA2a0UR/cGd1reg9KnrYjNIKrD73FHMTm/JOXdwxsCu3SmSNckW5B0
         6Qx+tU+M6/wF5bLUdrcZYEb7nxqJCbetr0dgpuronHvdo1SS3eyzahXlPjg5g5sxklG5
         u/73qhMB99nn95ts/ebj/0ao5AEZxu+glk4x7NNxpn/qOrHZ8AaMav2tq/VwycMeapZL
         avCN4wxDB1RJhZWaG6dcLKIQjbmHHlcSxOF5LgjOhL6LAmCRv9PX4JC06EovCGLMJM+7
         c32wJe7eg1HEJdkHDnYQxQpNDZxglZ/dDh9aX6fabT/rTgJwQdZSEKzjcxs0DyEw3gkc
         QmYw==
X-Gm-Message-State: AOAM530wJ2VbMek15LtCuYmfmrhOelwoY0yXw///JVI+M0v6c6DsCEAK
	R4z5BVBfEhHFkfwXECuXX1bCMCa8mqS+v4VQ
X-Google-Smtp-Source: ABdhPJyA2+u+lZ6m37GZEnTVOO8gm93k1rnR/iXOQyAjIaruCUm0C6U5KT8OAPTgoqzVTX4SFyCfVg==
X-Received: by 2002:a17:906:1e0b:: with SMTP id g11mr28080333ejj.291.1619605000448;
        Wed, 28 Apr 2021 03:16:40 -0700 (PDT)
Received: from machine.fritz.box (p4fc0a3a3.dip0.t-ipconnect.de. [79.192.163.163])
        by smtp.googlemail.com with ESMTPSA id lx20sm1642283ejb.31.2021.04.28.03.16.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Apr 2021 03:16:40 -0700 (PDT)
From: Alexander Sarmanow <asarmanow@gmail.com>
To: sven@narfation.org
Subject: [PATCH] batctl: Add JSON debug support
Date: Wed, 28 Apr 2021 12:16:08 +0200
Message-Id: <20210428101608.3944861-1-asarmanow@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1619605416; a=rsa-sha256;
	cv=none;
	b=Qa32A70fUkt1Zjmgpd92ZoisPyzM0aXvpGTkSEKrP3asEetOzahrwvXsD94Wu0e7h472yl
	6TAopJbrXq1I6V6G8Kfleym1PMBVUreyZg2GgwuzGGJvuwOTlw2iW7Alh77eL8vmv7vxsy
	5Ib2GfSSvjPCjGHv7Uj0jpJVGqcfrIM=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=gmail.com header.s=20161025 header.b=rwJwUd+Z;
	spf=pass (diktynna.open-mesh.org: domain of asarmanow@gmail.com designates 2a00:1450:4864:20::532 as permitted sender) smtp.mailfrom=asarmanow@gmail.com
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1619605416;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=d6MgjkAPosh+76aed3YX9bibXokEvmxVCi7zRtWqFc0=;
	b=Les4DDIvHqfR3q2lK9uRiuicesm+HbW0DQgfd6Qq1ZotkrPHOzDVVGdsRLI3ZRlVKlGvma
	+pePl8XJn9yifGhuna6RwXOZecH0Whdh62X4drAwbidfNBUHimAgYC+dWeWNV1ZGmMw9Q3
	cgHPMR2k79f86ISqA8B9OrtX2hRyFPw=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: N2HCL63DX6IMY3A7TZZO4SJXTFDJBOFA
X-Message-ID-Hash: N2HCL63DX6IMY3A7TZZO4SJXTFDJBOFA
X-MailFrom: asarmanow@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: b.a.t.m.a.n@lists.open-mesh.org, Alexander Sarmanow <asarmanow@gmail.com>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/N2HCL63DX6IMY3A7TZZO4SJXTFDJBOFA/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

A JSON output of the debug tables is still missing. Corresponding JSON
output is added for originators, neighbors, translocal, transglobal and
interfaces tables. Same parameters of the debug tables can be used for
the JSON, except the "-w [interval]" (not useful). The table header is
implemented as a JSON equivalent and can be also optionally omitted.

Signed-off-by: Alexander Sarmanow <asarmanow@gmail.com>
---
 Makefile           |   5 ++
 backbonetable.c    |   2 +-
 claimtable.c       |   2 +-
 dat_cache.c        |   2 +-
 debug.c            |  15 +++-
 gateways.c         |   4 +-
 interfaces_json.c  | 167 +++++++++++++++++++++++++++++++++++++++++++++
 main.c             |  14 ++--
 main.h             |   3 +
 mcast_flags.c      |   4 +-
 neighbors.c        |   2 +-
 neighbors_json.c   | 109 +++++++++++++++++++++++++++++
 netlink.c          |  70 +++++++++++++++----
 netlink.h          |   9 ++-
 originators.c      |   4 +-
 originators_json.c | 154 +++++++++++++++++++++++++++++++++++++++++
 transglobal.c      |   2 +-
 transglobal_json.c | 146 +++++++++++++++++++++++++++++++++++++++
 translocal.c       |   2 +-
 translocal_json.c  | 139 +++++++++++++++++++++++++++++++++++++
 20 files changed, 823 insertions(+), 32 deletions(-)
 create mode 100644 interfaces_json.c
 create mode 100644 neighbors_json.c
 create mode 100644 originators_json.c
 create mode 100644 transglobal_json.c
 create mode 100644 translocal_json.c

diff --git a/Makefile b/Makefile
index 98bf695..84c5de6 100755
--- a/Makefile
+++ b/Makefile
@@ -71,6 +71,11 @@ $(eval $(call add_command,traceroute,y))
 $(eval $(call add_command,transglobal,y))
 $(eval $(call add_command,translate,y))
 $(eval $(call add_command,translocal,y))
+$(eval $(call add_command,originators_json,y))
+$(eval $(call add_command,neighbors_json,y))
+$(eval $(call add_command,translocal_json,y))
+$(eval $(call add_command,transglobal_json,y))
+$(eval $(call add_command,interfaces_json,y))
=20
 MANPAGE =3D man/batctl.8
=20
diff --git a/backbonetable.c b/backbonetable.c
index 17fbd1d..714ae55 100644
--- a/backbonetable.c
+++ b/backbonetable.c
@@ -98,7 +98,7 @@ static int netlink_print_bla_backbone(struct state *sta=
te, char *orig_iface,
 				    orig_timeout, watch_interval,
 				    "Originator           VID   last seen (CRC   )\n",
 				    BATADV_CMD_GET_BLA_BACKBONE,
-				    bla_backbone_callback);
+				    bla_backbone_callback, false);
 }
=20
 static struct debug_table_data batctl_debug_table_backbonetable =3D {
diff --git a/claimtable.c b/claimtable.c
index b6bf9f5..a1c3868 100644
--- a/claimtable.c
+++ b/claimtable.c
@@ -103,7 +103,7 @@ static int netlink_print_bla_claim(struct state *stat=
e, char *orig_iface,
 				    orig_timeout, watch_interval,
 				    "Client               VID      Originator        [o] (CRC   )\n"=
,
 				    BATADV_CMD_GET_BLA_CLAIM,
-				    bla_claim_callback);
+				    bla_claim_callback, false);
 }
=20
 static struct debug_table_data batctl_debug_table_claimtable =3D {
diff --git a/dat_cache.c b/dat_cache.c
index 8d47171..15a212b 100644
--- a/dat_cache.c
+++ b/dat_cache.c
@@ -116,7 +116,7 @@ static int netlink_print_dat_cache(struct state *stat=
e, char *orig_iface,
 	ret =3D netlink_print_common(state, orig_iface, read_opts,
 				   orig_timeout, watch_interval, header,
 				   BATADV_CMD_GET_DAT_CACHE,
-				   dat_cache_callback);
+				   dat_cache_callback, false);
=20
 	free(header);
 	return ret;
diff --git a/debug.c b/debug.c
index 458c137..5d5024e 100644
--- a/debug.c
+++ b/debug.c
@@ -27,7 +27,9 @@ static void debug_table_usage(struct state *state)
 	fprintf(stderr, " \t -h print this help\n");
 	fprintf(stderr, " \t -n don't replace mac addresses with bat-host names=
\n");
 	fprintf(stderr, " \t -H don't show the header\n");
-	fprintf(stderr, " \t -w [interval] watch mode - refresh the table conti=
nuously\n");
+
+	if (state->cmd->type !=3D DEBUGJSON)
+		fprintf(stderr, " \t -w [interval] watch mode - refresh the table cont=
inuously\n");
=20
 	if (debug_table->option_timeout_interval)
 		fprintf(stderr, " \t -t timeout interval - don't print originators not=
 seen for x.y seconds \n");
@@ -60,6 +62,12 @@ int handle_debug_table(struct state *state, int argc, =
char **argv)
 			read_opt &=3D ~USE_BAT_HOSTS;
 			break;
 		case 'w':
+			if (state->cmd->type =3D=3D DEBUGJSON) {
+				fprintf(stderr, "Error - unrecognised option '-%c'\n", optchar);
+				debug_table_usage(state);
+				return EXIT_FAILURE;
+			}
+
 			read_opt |=3D CLR_CONT_READ;
 			if (optarg[0] =3D=3D '-') {
 				optind--;
@@ -123,6 +131,11 @@ int handle_debug_table(struct state *state, int argc=
, char **argv)
 			} else if (optopt =3D=3D 'i') {
 				fprintf(stderr, "Error - option '-i' needs an interface as argument\=
n");
 			} else if (optopt =3D=3D 'w') {
+				if (state->cmd->type =3D=3D DEBUGJSON) {
+					fprintf(stderr, "Error - unrecognised option '-w'\n");
+					debug_table_usage(state);
+					return EXIT_FAILURE;
+				}
 				read_opt |=3D CLR_CONT_READ;
 				break;
 			}
diff --git a/gateways.c b/gateways.c
index 7625bd8..4bfa1ed 100644
--- a/gateways.c
+++ b/gateways.c
@@ -123,7 +123,7 @@ static int netlink_print_gateways(struct state *state=
, char *orig_iface,
 	/* only parse routing algorithm name */
 	last_err =3D -EINVAL;
 	info_header =3D netlink_get_info(state->mesh_ifindex,
-				       BATADV_CMD_GET_ORIGINATORS, NULL);
+				       BATADV_CMD_GET_ORIGINATORS, NULL, false);
 	free(info_header);
=20
 	if (strlen(algo_name_buf) =3D=3D 0)
@@ -141,7 +141,7 @@ static int netlink_print_gateways(struct state *state=
, char *orig_iface,
 				    orig_timeout, watch_interval,
 				    header,
 				    BATADV_CMD_GET_GATEWAYS,
-				    gateways_callback);
+				    gateways_callback, false);
 }
=20
 static struct debug_table_data batctl_debug_table_gateways =3D {
diff --git a/interfaces_json.c b/interfaces_json.c
new file mode 100644
index 0000000..65cde95
--- /dev/null
+++ b/interfaces_json.c
@@ -0,0 +1,167 @@
+// SPDX-License-Identifier: GPL-2.0
+/* Copyright (C) B.A.T.M.A.N. contributors:
+ *
+ * Marek Lindner <mareklindner@neomailbox.ch>
+ * Alexander Sarmanow <asarmanow@gmail.com>
+ *
+ * License-Filename: LICENSES/preferred/GPL-2.0
+ */
+
+#include <unistd.h>
+#include <stdio.h>
+#include <stdbool.h>
+#include <stdlib.h>
+#include <string.h>
+#include <errno.h>
+#include <dirent.h>
+#include <net/if.h>
+#include <linux/if_link.h>
+#include <linux/rtnetlink.h>
+#include <netlink/netlink.h>
+#include <netlink/msg.h>
+#include <netlink/attr.h>
+
+#include "main.h"
+#include "sys.h"
+#include "functions.h"
+#include "debug.h"
+
+#define IFACE_STATUS_LEN 256
+
+static int get_iface_status_netlink_parse(struct nl_msg *msg, void *arg)
+{
+	struct nlattr *attrs[NUM_BATADV_ATTR];
+	struct nlmsghdr *nlh =3D nlmsg_hdr(msg);
+	char *iface_status =3D arg;
+	struct genlmsghdr *ghdr;
+
+	if (!genlmsg_valid_hdr(nlh, 0))
+		return NL_OK;
+
+	ghdr =3D nlmsg_data(nlh);
+	if (ghdr->cmd !=3D BATADV_CMD_GET_HARDIF)
+		return NL_OK;
+
+	if (nla_parse(attrs, BATADV_ATTR_MAX, genlmsg_attrdata(ghdr, 0),
+		      genlmsg_len(ghdr), batadv_netlink_policy))
+		return NL_OK;
+
+	if (attrs[BATADV_ATTR_ACTIVE])
+		strncpy(iface_status, "active", IFACE_STATUS_LEN);
+	else
+		strncpy(iface_status, "inactive", IFACE_STATUS_LEN);
+
+	iface_status[IFACE_STATUS_LEN - 1] =3D '\0';
+
+	return NL_STOP;
+}
+
+static char *get_iface_status_netlink(unsigned int meshif, unsigned int =
hardif,
+				      char *iface_status)
+{
+	char *ret_status =3D NULL;
+	struct nl_sock *sock;
+	struct nl_msg *msg;
+	int batadv_family;
+	struct nl_cb *cb;
+	int ret;
+
+	iface_status[0] =3D '\0';
+
+	sock =3D nl_socket_alloc();
+	if (!sock)
+		return NULL;
+
+	ret =3D genl_connect(sock);
+	if (ret < 0)
+		goto err_free_sock;
+
+	batadv_family =3D genl_ctrl_resolve(sock, BATADV_NL_NAME);
+	if (batadv_family < 0)
+		goto err_free_sock;
+
+	cb =3D nl_cb_alloc(NL_CB_DEFAULT);
+	if (!cb)
+		goto err_free_sock;
+
+	nl_cb_set(cb, NL_CB_VALID, NL_CB_CUSTOM, get_iface_status_netlink_parse=
,
+		iface_status);
+
+	msg =3D nlmsg_alloc();
+	if (!msg)
+		goto err_free_cb;
+
+	genlmsg_put(msg, NL_AUTO_PID, NL_AUTO_SEQ, batadv_family,
+		    0, 0, BATADV_CMD_GET_HARDIF, 1);
+
+	nla_put_u32(msg, BATADV_ATTR_MESH_IFINDEX, meshif);
+	nla_put_u32(msg, BATADV_ATTR_HARD_IFINDEX, hardif);
+
+	ret =3D nl_send_auto_complete(sock, msg);
+	if (ret < 0)
+		goto err_free_msg;
+
+	nl_recvmsgs(sock, cb);
+
+	if (strlen(iface_status) > 0)
+		ret_status =3D iface_status;
+
+err_free_msg:
+	nlmsg_free(msg);
+err_free_cb:
+	nl_cb_put(cb);
+err_free_sock:
+	nl_socket_free(sock);
+
+	return ret_status;
+}
+
+static int interfaces_callback(struct nl_msg *msg, void *arg)
+{
+	struct nlattr *attrs[BATADV_ATTR_MAX+1];
+	struct nlmsghdr *nlh =3D nlmsg_hdr(msg);
+	struct print_opts *opts =3D arg;
+	struct genlmsghdr *ghdr;
+	char iface_status[IFACE_STATUS_LEN];
+	const char *status;
+	char *ifname;
+	int ifindex;
+	int master;
+
+	ghdr =3D nlmsg_data(nlh);
+
+	if (nla_parse(attrs, BATADV_ATTR_MAX, genlmsg_attrdata(ghdr, 0),
+	    genlmsg_len(ghdr), batadv_netlink_policy)) {
+		fputs("Received invalid data from kernel.\n", stderr);
+		exit(1);
+	}
+
+	ifname =3D nla_data(attrs[BATADV_ATTR_HARD_IFNAME]);
+	master =3D nla_get_u32(attrs[BATADV_ATTR_MESH_IFINDEX]);
+	ifindex =3D nla_get_u32(attrs[BATADV_ATTR_HARD_IFINDEX]);
+
+	status =3D get_iface_status_netlink(master, ifindex, iface_status);
+	if (!status)
+		status =3D "<error reading status>\n";
+
+	printf("{\"%s\":\"%s\"}", ifname, status);
+
+	return NL_OK;
+}
+
+static int netlink_print_interfaces_json(struct state *state, char *orig=
_iface,
+					 int read_opts, float orig_timeout,
+					 float watch_interval)
+{
+	return netlink_print_common(state, orig_iface, read_opts, orig_timeout,
+				    watch_interval, NULL, BATADV_CMD_GET_HARDIF,
+				    interfaces_callback, true);
+}
+
+static struct debug_table_data batctl_debug_table_interfaces =3D {
+	.netlink_fn =3D netlink_print_interfaces_json,
+};
+
+COMMAND_NAMED(DEBUGJSON, interfaces_json, "ifj", handle_debug_table,
+	      COMMAND_FLAG_MESH_IFACE | COMMAND_FLAG_NETLINK,
+	      &batctl_debug_table_interfaces, "");
diff --git a/main.c b/main.c
index d9b63f3..1371bc0 100644
--- a/main.c
+++ b/main.c
@@ -43,6 +43,10 @@ static void print_usage(void)
 			.label =3D "debug tables:                                   \tdisplay=
 the corresponding debug table\n",
 			.types =3D BIT(DEBUGTABLE),
 		},
+		{
+			.label =3D "debug JSONs:                                   \tdisplay =
the corresponding debug JSON\n",
+			.types =3D BIT(DEBUGJSON),
+		},
 	};
 	const char *default_prefixes[] =3D {
 		"",
@@ -67,9 +71,9 @@ static void print_usage(void)
 	char buf[64];
 	size_t i;
=20
-	fprintf(stderr, "Usage: batctl [options] command|debug table [parameter=
s]\n");
+	fprintf(stderr, "Usage: batctl [options] command|debug table|debug json=
 [parameters]\n");
 	fprintf(stderr, "options:\n");
-	fprintf(stderr, " \t-h print this help (or 'batctl <command|debug table=
> -h' for the parameter help)\n");
+	fprintf(stderr, " \t-h print this help (or 'batctl <command|debug table=
|debug json> -h' for the parameter help)\n");
 	fprintf(stderr, " \t-v print version\n");
=20
 	for (i =3D 0; i < sizeof(type) / sizeof(*type); i++) {
@@ -87,6 +91,7 @@ static void print_usage(void)
 				continue;
=20
 			switch (cmd->type) {
+			case DEBUGJSON:
 			case DEBUGTABLE:
 			case SUBCOMMAND_MIF:
 				prefixes =3D meshif_prefixes;
@@ -167,7 +172,8 @@ static const struct command *find_command(struct stat=
e *state, const char *name)
 		/* fall through */
 	case SP_MESHIF:
 		types |=3D BIT(SUBCOMMAND_MIF) |
-			 BIT(DEBUGTABLE);
+			 BIT(DEBUGTABLE)     |
+			 BIT(DEBUGJSON);
 		break;
 	case SP_VLAN:
 		types =3D BIT(SUBCOMMAND_VID);
@@ -380,7 +386,7 @@ int main(int argc, char **argv)
 	cmd =3D find_command(&state, argv[0]);
 	if (!cmd) {
 		fprintf(stderr,
-			"Error - no valid command or debug table specified: %s\n",
+			"Error - no valid command or debug table/JSON specified: %s\n",
 			argv[0]);
 		goto err;
 	}
diff --git a/main.h b/main.h
index 81b7a27..2efd136 100644
--- a/main.h
+++ b/main.h
@@ -44,6 +44,8 @@ extern char module_ver_path[];
=20
 #define ARRAY_SIZE(x) (sizeof(x) / sizeof(*(x)))
=20
+#define BOOL_STRING(x) (x ? "true" : "false")
+
 #ifndef container_of
 #define container_of(ptr, type, member) __extension__ ({ \
 	const __typeof__(((type *)0)->member) *__pmember =3D (ptr); \
@@ -69,6 +71,7 @@ enum command_type {
 	SUBCOMMAND_VID,
 	SUBCOMMAND_HIF,
 	DEBUGTABLE,
+	DEBUGJSON,
 };
=20
 struct state {
diff --git a/mcast_flags.c b/mcast_flags.c
index 721f549..6fc2780 100644
--- a/mcast_flags.c
+++ b/mcast_flags.c
@@ -105,7 +105,7 @@ static int netlink_print_mcast_flags(struct state *st=
ate, char *orig_iface,
=20
 	/* only parse own multicast flags */
 	info_header =3D netlink_get_info(state->mesh_ifindex,
-				       BATADV_CMD_GET_MCAST_FLAGS, NULL);
+				       BATADV_CMD_GET_MCAST_FLAGS, NULL, false);
 	free(info_header);
=20
 	if (mcast_flags =3D=3D -EOPNOTSUPP || mcast_flags_priv =3D=3D -EOPNOTSU=
PP)
@@ -147,7 +147,7 @@ static int netlink_print_mcast_flags(struct state *st=
ate, char *orig_iface,
 	ret =3D netlink_print_common(state, orig_iface, read_opts,
 				   orig_timeout, watch_interval, header,
 				   BATADV_CMD_GET_MCAST_FLAGS,
-				   mcast_flags_callback);
+				   mcast_flags_callback, false);
=20
 	free(header);
 	return ret;
diff --git a/neighbors.c b/neighbors.c
index af76d0f..a54045b 100644
--- a/neighbors.c
+++ b/neighbors.c
@@ -114,7 +114,7 @@ static int netlink_print_neighbors(struct state *stat=
e, char *orig_iface,
 				    orig_timeout, watch_interval,
 				    "IF             Neighbor              last-seen\n",
 				    BATADV_CMD_GET_NEIGHBORS,
-				    neighbors_callback);
+				    neighbors_callback, false);
 }
=20
 static struct debug_table_data batctl_debug_table_neighbors =3D {
diff --git a/neighbors_json.c b/neighbors_json.c
new file mode 100644
index 0000000..d89dc7a
--- /dev/null
+++ b/neighbors_json.c
@@ -0,0 +1,109 @@
+// SPDX-License-Identifier: GPL-2.0
+/* Copyright (C) B.A.T.M.A.N. contributors:
+ *
+ * Andrew Lunn <andrew@lunn.ch>
+ * Alexander Sarmanow <asarmanow@gmail.com>
+ *
+ * License-Filename: LICENSES/preferred/GPL-2.0
+ */
+
+#include <net/if.h>
+#include <netinet/if_ether.h>
+#include <netlink/netlink.h>
+#include <netlink/genl/genl.h>
+#include <netlink/genl/ctrl.h>
+#include <stdio.h>
+#include <stdlib.h>
+#include <stdint.h>
+
+#include "batadv_packet.h"
+#include "batman_adv.h"
+#include "bat-hosts.h"
+#include "debug.h"
+#include "functions.h"
+#include "main.h"
+#include "netlink.h"
+
+static const int neighbors_mandatory[] =3D {
+	BATADV_ATTR_NEIGH_ADDRESS,
+	BATADV_ATTR_HARD_IFINDEX,
+	BATADV_ATTR_LAST_SEEN_MSECS,
+};
+
+static int neighbors_callback(struct nl_msg *msg, void *arg)
+{
+	unsigned throughput_kbits;
+	struct nlattr *attrs[BATADV_ATTR_MAX+1];
+	struct nlmsghdr *nlh =3D nlmsg_hdr(msg);
+	int last_seen_msecs;
+	struct print_opts *opts =3D arg;
+	struct bat_host *bat_host;
+	char ifname[IF_NAMESIZE];
+	struct genlmsghdr *ghdr;
+	uint8_t *neigh;
+
+	if (!genlmsg_valid_hdr(nlh, 0)) {
+		fputs("Received invalid data from kernel.\n", stderr);
+		exit(1);
+	}
+
+	ghdr =3D nlmsg_data(nlh);
+
+	if (ghdr->cmd !=3D BATADV_CMD_GET_NEIGHBORS)
+		return NL_OK;
+
+	if (nla_parse(attrs, BATADV_ATTR_MAX, genlmsg_attrdata(ghdr, 0),
+		      genlmsg_len(ghdr), batadv_netlink_policy)) {
+		fputs("Received invalid data from kernel.\n", stderr);
+		exit(1);
+	}
+
+	if (missing_mandatory_attrs(attrs, neighbors_mandatory,
+				    ARRAY_SIZE(neighbors_mandatory))) {
+		fputs("Missing attributes from kernel\n", stderr);
+		exit(1);
+	}
+
+	neigh =3D nla_data(attrs[BATADV_ATTR_NEIGH_ADDRESS]);
+	bat_host =3D bat_hosts_find_by_mac((char *)neigh);
+
+	if (!if_indextoname(nla_get_u32(attrs[BATADV_ATTR_HARD_IFINDEX]),
+			    ifname))
+		ifname[0] =3D '\0';
+
+	last_seen_msecs =3D nla_get_u32(attrs[BATADV_ATTR_LAST_SEEN_MSECS]);
+
+	if (!(opts->read_opt & USE_BAT_HOSTS) || !bat_host)
+		printf("{\"neighbor\":\"%02x:%02x:%02x:%02x:%02x:%02x\",",
+			neigh[0], neigh[1], neigh[2],
+			neigh[3], neigh[4], neigh[5]);
+	else
+		printf("{\"neighbor\":\"%s\",", bat_host->name);
+
+	if (attrs[BATADV_ATTR_THROUGHPUT]) {
+		throughput_kbits =3D nla_get_u32(attrs[BATADV_ATTR_THROUGHPUT]);
+		printf("\"throughput_kbits\":%u,", throughput_kbits);
+	}
+
+	printf("\"last_seen\":%d,\"ifname\":\"%s\"}", last_seen_msecs, ifname);
+
+	return NL_OK;
+}
+
+static int netlink_print_neighbors_json(struct state *state, char *orig_=
iface,
+				   int read_opts, float orig_timeout,
+				   float watch_interval)
+{
+	return netlink_print_common(state, orig_iface, read_opts,
+				    orig_timeout, watch_interval, NULL,
+				    BATADV_CMD_GET_NEIGHBORS,
+				    neighbors_callback, true);
+}
+
+static struct debug_table_data batctl_debug_table_neighbors =3D {
+	.netlink_fn =3D netlink_print_neighbors_json,
+};
+
+COMMAND_NAMED(DEBUGJSON, neighbors_json, "nj", handle_debug_table,
+	      COMMAND_FLAG_MESH_IFACE | COMMAND_FLAG_NETLINK,
+	      &batctl_debug_table_neighbors, "");
diff --git a/netlink.c b/netlink.c
index 31c9b01..f42643e 100644
--- a/netlink.c
+++ b/netlink.c
@@ -318,15 +318,29 @@ static int info_callback(struct nl_msg *msg, void *=
arg)
 		else
 			extra_header =3D "";
=20
-		ret =3D asprintf(&opts->remaining_header,
-			       "[B.A.T.M.A.N. adv %s, MainIF/MAC: %s/%02x:%02x:%02x:%02x:%02x=
:%02x (%s/%02x:%02x:%02x:%02x:%02x:%02x %s)%s]\n%s",
-			       version, primary_if,
-			       primary_mac[0], primary_mac[1], primary_mac[2],
-			       primary_mac[3], primary_mac[4], primary_mac[5],
-			       mesh_name,
-			       mesh_mac[0], mesh_mac[1], mesh_mac[2],
-			       mesh_mac[3], mesh_mac[4], mesh_mac[5],
-			       algo_name, extra_info, extra_header);
+		if (opts->is_json) {
+			ret =3D asprintf(&opts->remaining_header,
+				       "{\"version\":\"%s\",\"main_if\":\"%s\",\"main_mac\":\"%02x:%=
02x:%02x:%02x:%02x:%02x\",\"mesh_if\":\"%s\",\"mesh_mac\":\"%02x:%02x:%02=
x:%02x:%02x:%02x\",\"algo_name\":\"%s\",\"extra_info\":\"%s\",\"data\":["=
,
+				       version, primary_if,
+				       primary_mac[0], primary_mac[1],
+				       primary_mac[2], primary_mac[3],
+				       primary_mac[4], primary_mac[5],
+				       mesh_name,
+				       mesh_mac[0], mesh_mac[1], mesh_mac[2],
+				       mesh_mac[3], mesh_mac[4], mesh_mac[5],
+				       algo_name, extra_info);
+		} else {
+			ret =3D asprintf(&opts->remaining_header,
+				       "[B.A.T.M.A.N. adv %s, MainIF/MAC: %s/%02x:%02x:%02x:%02x:%02=
x:%02x (%s/%02x:%02x:%02x:%02x:%02x:%02x %s)%s]\n%s",
+				       version, primary_if,
+				       primary_mac[0], primary_mac[1],
+				       primary_mac[2], primary_mac[3],
+				       primary_mac[4], primary_mac[5],
+				       mesh_name,
+				       mesh_mac[0], mesh_mac[1], mesh_mac[2],
+				       mesh_mac[3], mesh_mac[4], mesh_mac[5],
+				       algo_name, extra_info, extra_header);
+		}
 		if (ret < 0)
 			opts->remaining_header =3D NULL;
=20
@@ -342,7 +356,8 @@ static int info_callback(struct nl_msg *msg, void *ar=
g)
 	return NL_STOP;
 }
=20
-char *netlink_get_info(int ifindex, uint8_t nl_cmd, const char *header)
+char *netlink_get_info(int ifindex, uint8_t nl_cmd, const char *header,
+		       bool is_json)
 {
 	struct nl_sock *sock;
 	struct nl_msg *msg;
@@ -353,6 +368,7 @@ char *netlink_get_info(int ifindex, uint8_t nl_cmd, c=
onst char *header)
 		.nl_cmd =3D nl_cmd,
 		.remaining_header =3D NULL,
 		.static_header =3D header,
+		.is_json =3D is_json,
 	};
=20
 	sock =3D nl_socket_alloc();
@@ -399,12 +415,34 @@ char *netlink_get_info(int ifindex, uint8_t nl_cmd,=
 const char *header)
=20
 void netlink_print_remaining_header(struct print_opts *opts)
 {
-	if (!opts->remaining_header)
+	if (!opts->remaining_header) {
+		if (!opts->is_json)
+			return;
+
+		if (opts->is_first)
+			fputs("[", stdout);
+		if (opts->is_last) {
+			if (!(opts->read_opt & SKIP_HEADER))
+				fputs("]}\n", stdout);
+			else
+				fputs("]\n", stdout);
+		}
+		if (!opts->is_first && !opts->is_last)
+			fputs(",", stdout);
+
+		opts->is_first =3D false;
+
 		return;
+	}
=20
 	fputs(opts->remaining_header, stdout);
 	free(opts->remaining_header);
 	opts->remaining_header =3D NULL;
+
+	opts->is_first =3D false;
+
+	if (opts->is_last && opts->is_json)
+		fputs("]}\n", stdout);
 }
=20
 int netlink_print_common_cb(struct nl_msg *msg, void *arg)
@@ -419,7 +457,7 @@ int netlink_print_common_cb(struct nl_msg *msg, void =
*arg)
 int netlink_print_common(struct state *state, char *orig_iface, int read=
_opt,
 			 float orig_timeout, float watch_interval,
 			 const char *header, uint8_t nl_cmd,
-			 nl_recvmsg_msg_cb_t callback)
+			 nl_recvmsg_msg_cb_t callback, bool is_json)
 {
 	struct print_opts opts =3D {
 		.read_opt =3D read_opt,
@@ -427,6 +465,9 @@ int netlink_print_common(struct state *state, char *o=
rig_iface, int read_opt,
 		.watch_interval =3D watch_interval,
 		.remaining_header =3D NULL,
 		.callback =3D callback,
+		.is_json =3D is_json,
+		.is_first =3D true,
+		.is_last =3D false,
 	};
 	int hardifindex =3D 0;
 	struct nl_msg *msg;
@@ -460,7 +501,8 @@ int netlink_print_common(struct state *state, char *o=
rig_iface, int read_opt,
 		if (!(read_opt & SKIP_HEADER))
 			opts.remaining_header =3D netlink_get_info(state->mesh_ifindex,
 								 nl_cmd,
-								 header);
+								 header,
+								 is_json);
=20
 		msg =3D nlmsg_alloc();
 		if (!msg)
@@ -481,6 +523,8 @@ int netlink_print_common(struct state *state, char *o=
rig_iface, int read_opt,
 		last_err =3D 0;
 		nl_recvmsgs(state->sock, state->cb);
=20
+		opts.is_last =3D true;
+
 		/* the header should still be printed when no entry was received */
 		if (!last_err)
 			netlink_print_remaining_header(&opts);
diff --git a/netlink.h b/netlink.h
index 4ee2f39..b7adade 100644
--- a/netlink.h
+++ b/netlink.h
@@ -12,6 +12,7 @@
 #include <netlink/genl/genl.h>
 #include <netlink/genl/ctrl.h>
 #include <stdint.h>
+#include <stdbool.h>
=20
 struct state;
=20
@@ -21,8 +22,12 @@ struct print_opts {
 	float watch_interval;
 	nl_recvmsg_msg_cb_t callback;
 	char *remaining_header;
+	char *remaining_entry;
 	const char *static_header;
 	uint8_t nl_cmd;
+	bool is_json;
+	bool is_first;
+	bool is_last;
 };
=20
 struct ether_addr;
@@ -30,7 +35,7 @@ struct ether_addr;
 int netlink_create(struct state *state);
 void netlink_destroy(struct state *state);
=20
-char *netlink_get_info(int ifindex, uint8_t nl_cmd, const char *header);
+char *netlink_get_info(int ifindex, uint8_t nl_cmd, const char *header, =
bool is_json);
 int translate_mac_netlink(const char *mesh_iface, const struct ether_add=
r *mac,
 			  struct ether_addr *mac_out);
 int get_nexthop_netlink(const char *mesh_iface, const struct ether_addr =
*mac,
@@ -46,7 +51,7 @@ int missing_mandatory_attrs(struct nlattr *attrs[], con=
st int mandatory[],
 int netlink_print_common(struct state *state, char *orig_iface, int read=
_opt,
 			 float orig_timeout, float watch_interval,
 			 const char *header, uint8_t nl_cmd,
-			 nl_recvmsg_msg_cb_t callback);
+			 nl_recvmsg_msg_cb_t callback, bool is_json);
=20
 int netlink_print_common_cb(struct nl_msg *msg, void *arg);
 int netlink_stop_callback(struct nl_msg *msg, void *arg);
diff --git a/originators.c b/originators.c
index 8a29dd7..4acf2d0 100644
--- a/originators.c
+++ b/originators.c
@@ -175,7 +175,7 @@ static int netlink_print_originators(struct state *st=
ate, char *orig_iface,
 	/* only parse routing algorithm name */
 	last_err =3D -EINVAL;
 	info_header =3D netlink_get_info(state->mesh_ifindex,
-				       BATADV_CMD_GET_ORIGINATORS, NULL);
+				       BATADV_CMD_GET_ORIGINATORS, NULL, false);
 	free(info_header);
=20
 	if (strlen(algo_name_buf) =3D=3D 0)
@@ -192,7 +192,7 @@ static int netlink_print_originators(struct state *st=
ate, char *orig_iface,
 	return netlink_print_common(state, orig_iface, read_opts,
 				    orig_timeout, watch_interval, header,
 				    BATADV_CMD_GET_ORIGINATORS,
-				    originators_callback);
+				    originators_callback, false);
 }
=20
 static struct debug_table_data batctl_debug_table_originators =3D {
diff --git a/originators_json.c b/originators_json.c
new file mode 100644
index 0000000..d0caec3
--- /dev/null
+++ b/originators_json.c
@@ -0,0 +1,154 @@
+// SPDX-License-Identifier: GPL-2.0
+/* Copyright (C) B.A.T.M.A.N. contributors:
+ *
+ * Andrew Lunn <andrew@lunn.ch>
+ * Sven Eckelmann <sven@narfation.org>
+ * Alexander Sarmanow <asarmanow@gmail.com>
+ *
+ * License-Filename: LICENSES/preferred/GPL-2.0
+ */
+
+#include <errno.h>
+#include <net/if.h>
+#include <netinet/if_ether.h>
+#include <netlink/netlink.h>
+#include <netlink/genl/genl.h>
+#include <netlink/genl/ctrl.h>
+#include <stdio.h>
+#include <stdlib.h>
+#include <stdint.h>
+#include <string.h>
+
+#include "batadv_packet.h"
+#include "batman_adv.h"
+#include "bat-hosts.h"
+#include "debug.h"
+#include "functions.h"
+#include "main.h"
+#include "netlink.h"
+
+static const int originators_mandatory[] =3D {
+	BATADV_ATTR_ORIG_ADDRESS,
+	BATADV_ATTR_NEIGH_ADDRESS,
+	BATADV_ATTR_HARD_IFINDEX,
+	BATADV_ATTR_LAST_SEEN_MSECS,
+};
+
+static int originators_callback(struct nl_msg *msg, void *arg)
+{
+	unsigned throughput_kbits;
+	struct nlattr *attrs[BATADV_ATTR_MAX+1];
+	struct nlmsghdr *nlh =3D nlmsg_hdr(msg);
+	int last_seen_msecs;
+	struct print_opts *opts =3D arg;
+	struct bat_host *bat_host;
+	struct genlmsghdr *ghdr;
+	char ifname[IF_NAMESIZE];
+	float last_seen;
+	uint8_t *neigh;
+	uint8_t *orig;
+	bool c =3D false;
+	uint8_t tq;
+
+	if (!genlmsg_valid_hdr(nlh, 0)) {
+		fputs("Received invalid data from kernel.\n", stderr);
+		exit(1);
+	}
+
+	ghdr =3D nlmsg_data(nlh);
+
+	if (ghdr->cmd !=3D BATADV_CMD_GET_ORIGINATORS)
+		return NL_OK;
+
+	if (nla_parse(attrs, BATADV_ATTR_MAX, genlmsg_attrdata(ghdr, 0),
+		      genlmsg_len(ghdr), batadv_netlink_policy)) {
+		fputs("Received invalid data from kernel.\n", stderr);
+		exit(1);
+	}
+
+	if (missing_mandatory_attrs(attrs, originators_mandatory,
+				       ARRAY_SIZE(originators_mandatory))) {
+		fputs("Missing attributes from kernel\n", stderr);
+		exit(1);
+	}
+
+	orig =3D nla_data(attrs[BATADV_ATTR_ORIG_ADDRESS]);
+	neigh =3D nla_data(attrs[BATADV_ATTR_NEIGH_ADDRESS]);
+
+	if (!if_indextoname(nla_get_u32(attrs[BATADV_ATTR_HARD_IFINDEX]),
+			    ifname))
+		ifname[0] =3D '\0';
+
+	if (attrs[BATADV_ATTR_FLAG_BEST])
+		c =3D true;
+
+	last_seen_msecs =3D nla_get_u32(attrs[BATADV_ATTR_LAST_SEEN_MSECS]);
+	last_seen =3D (float)last_seen_msecs / 1000.0;
+
+	/* skip timed out originators */
+	if (opts->read_opt & NO_OLD_ORIGS)
+		if (last_seen > opts->orig_timeout)
+			return NL_OK;
+
+	printf("{\"best\":%s,", BOOL_STRING(c));
+
+	if (!(opts->read_opt & USE_BAT_HOSTS)) {
+		printf("\"originator\":\"%02x:%02x:%02x:%02x:%02x:%02x\",",
+			orig[0], orig[1], orig[2],
+			orig[3], orig[4], orig[5]);
+		printf("\"next_hop\":\"%02x:%02x:%02x:%02x:%02x:%02x\",",
+			neigh[0], neigh[1], neigh[2],
+			neigh[3], neigh[4], neigh[5]);
+	} else {
+		bat_host =3D bat_hosts_find_by_mac((char *)orig);
+		if (bat_host) {
+			printf("\"originator\":\"%s\",",
+				bat_host->name);
+		} else {
+			printf("\"originator\":\"%02x:%02x:%02x:%02x:%02x:%02x\",",
+				orig[0], orig[1], orig[2],
+				orig[3], orig[4], orig[5]);
+		}
+		bat_host =3D bat_hosts_find_by_mac((char *)neigh);
+		if (bat_host)
+			printf("\"next_hop\":\"%s\",",
+				bat_host->name);
+		else
+			printf("\"next_hop\":\"%02x:%02x:%02x:%02x:%02x:%02x\",",
+				neigh[0], neigh[1], neigh[2],
+				neigh[3], neigh[4], neigh[5]);
+	}
+	if (attrs[BATADV_ATTR_THROUGHPUT]) {
+		throughput_kbits =3D nla_get_u32(attrs[BATADV_ATTR_THROUGHPUT]);
+		printf("\"throughput_kbits\":%u,", throughput_kbits);
+	}
+	if (attrs[BATADV_ATTR_TQ]) {
+		tq =3D nla_get_u8(attrs[BATADV_ATTR_TQ]);
+		printf("\"tq\":%i,", tq);
+	}
+
+	printf("\"last_seen\":%d,\"outgoing_iface\":\"%s\"}",
+		last_seen_msecs, ifname);
+
+	return NL_OK;
+}
+
+static int netlink_print_originators_json(struct state *state, char *ori=
g_iface,
+				     int read_opts, float orig_timeout,
+				     float watch_interval)
+{
+	return netlink_print_common(state, orig_iface, read_opts,
+				    orig_timeout, watch_interval, NULL,
+				    BATADV_CMD_GET_ORIGINATORS,
+				    originators_callback, true);
+}
+
+static struct debug_table_data batctl_debug_table_originators =3D {
+	.netlink_fn =3D netlink_print_originators_json,
+	.option_timeout_interval =3D 1,
+	.option_orig_iface =3D 1,
+};
+
+COMMAND_NAMED(DEBUGJSON, originators_json, "oj", handle_debug_table,
+	      COMMAND_FLAG_MESH_IFACE | COMMAND_FLAG_NETLINK,
+	      &batctl_debug_table_originators, "");
diff --git a/transglobal.c b/transglobal.c
index 4eae95d..abe0339 100644
--- a/transglobal.c
+++ b/transglobal.c
@@ -132,7 +132,7 @@ static int netlink_print_transglobal(struct state *st=
ate, char *orig_iface,
 				    orig_timeout, watch_interval,
 				    "   Client             VID Flags Last ttvn     Via        ttvn  =
(CRC       )\n",
 				    BATADV_CMD_GET_TRANSTABLE_GLOBAL,
-				    transglobal_callback);
+				    transglobal_callback, false);
 }
=20
 static struct debug_table_data batctl_debug_table_transglobal =3D {
diff --git a/transglobal_json.c b/transglobal_json.c
new file mode 100644
index 0000000..a687f57
--- /dev/null
+++ b/transglobal_json.c
@@ -0,0 +1,146 @@
+// SPDX-License-Identifier: GPL-2.0
+/* Copyright (C) B.A.T.M.A.N. contributors:
+ *
+ * Andrew Lunn <andrew@lunn.ch>
+ * Sven Eckelmann <sven@narfation.org>
+ * Alexander Sarmanow <asarmanow@gmail.com>
+ *
+ * License-Filename: LICENSES/preferred/GPL-2.0
+ */
+
+#include <netinet/if_ether.h>
+#include <netlink/netlink.h>
+#include <netlink/genl/genl.h>
+#include <netlink/genl/ctrl.h>
+#include <stdio.h>
+#include <stdlib.h>
+#include <stdint.h>
+
+#include "batadv_packet.h"
+#include "batman_adv.h"
+#include "bat-hosts.h"
+#include "debug.h"
+#include "functions.h"
+#include "main.h"
+#include "netlink.h"
+
+static const int transglobal_mandatory[] =3D {
+	BATADV_ATTR_TT_ADDRESS,
+	BATADV_ATTR_ORIG_ADDRESS,
+	BATADV_ATTR_TT_VID,
+	BATADV_ATTR_TT_TTVN,
+	BATADV_ATTR_TT_LAST_TTVN,
+	BATADV_ATTR_TT_CRC32,
+	BATADV_ATTR_TT_FLAGS,
+};
+
+static int transglobal_callback(struct nl_msg *msg, void *arg)
+{
+	struct nlattr *attrs[BATADV_ATTR_MAX+1];
+	struct nlmsghdr *nlh =3D nlmsg_hdr(msg);
+	struct print_opts *opts =3D arg;
+	struct bat_host *bat_host;
+	struct genlmsghdr *ghdr;
+	char c, r, w, i, t;
+	uint8_t last_ttvn;
+	uint32_t crc32;
+	uint32_t flags;
+	uint8_t *addr;
+	uint8_t *orig;
+	uint8_t ttvn;
+	int16_t vid;
+
+	if (!genlmsg_valid_hdr(nlh, 0)) {
+		fputs("Received invalid data from kernel.\n", stderr);
+		exit(1);
+	}
+
+	ghdr =3D nlmsg_data(nlh);
+
+	if (ghdr->cmd !=3D BATADV_CMD_GET_TRANSTABLE_GLOBAL)
+		return NL_OK;
+
+	if (nla_parse(attrs, BATADV_ATTR_MAX, genlmsg_attrdata(ghdr, 0),
+		      genlmsg_len(ghdr), batadv_netlink_policy)) {
+		fputs("Received invalid data from kernel.\n", stderr);
+		exit(1);
+	}
+
+	if (missing_mandatory_attrs(attrs, transglobal_mandatory,
+				    ARRAY_SIZE(transglobal_mandatory))) {
+		fputs("Missing attributes from kernel\n", stderr);
+		exit(1);
+	}
+
+	addr =3D nla_data(attrs[BATADV_ATTR_TT_ADDRESS]);
+	orig =3D nla_data(attrs[BATADV_ATTR_ORIG_ADDRESS]);
+	vid =3D nla_get_u16(attrs[BATADV_ATTR_TT_VID]);
+	ttvn =3D nla_get_u8(attrs[BATADV_ATTR_TT_TTVN]);
+	last_ttvn =3D nla_get_u8(attrs[BATADV_ATTR_TT_LAST_TTVN]);
+	crc32 =3D nla_get_u32(attrs[BATADV_ATTR_TT_CRC32]);
+	flags =3D nla_get_u32(attrs[BATADV_ATTR_TT_FLAGS]);
+
+	if (opts->read_opt & MULTICAST_ONLY && !(addr[0] & 0x01))
+		return NL_OK;
+
+	if (opts->read_opt & UNICAST_ONLY && (addr[0] & 0x01))
+		return NL_OK;
+
+	c =3D false, r =3D false, w =3D false, i =3D false, t =3D false;
+	if (attrs[BATADV_ATTR_FLAG_BEST])
+		c =3D true;
+	if (flags & BATADV_TT_CLIENT_ROAM)
+		r =3D true;
+	if (flags & BATADV_TT_CLIENT_WIFI)
+		w =3D true;
+	if (flags & BATADV_TT_CLIENT_ISOLA)
+		i =3D true;
+	if (flags & BATADV_TT_CLIENT_TEMP)
+		t =3D true;
+
+	printf("{\"best\":%s,", BOOL_STRING(c));
+
+	bat_host =3D bat_hosts_find_by_mac((char *)addr);
+	if (!(opts->read_opt & USE_BAT_HOSTS) || !bat_host)
+		printf("\"client\":\"%02x:%02x:%02x:%02x:%02x:%02x\",",
+		       addr[0], addr[1], addr[2],
+		       addr[3], addr[4], addr[5]);
+	else
+		printf("\"client\":\"%s\",", bat_host->name);
+
+	printf("\"vid\":%i,\"flag_r\":%s,\"flag_w\":%s,\"flag_i\":%s,\"flag_t\"=
:%s,\"ttvn\":%u,",
+		BATADV_PRINT_VID(vid), BOOL_STRING(r), BOOL_STRING(w),
+		BOOL_STRING(i), BOOL_STRING(t), ttvn);
+
+	bat_host =3D bat_hosts_find_by_mac((char *)orig);
+	if (!(opts->read_opt & USE_BAT_HOSTS) || !bat_host)
+		printf("\"orig\":\"%02x:%02x:%02x:%02x:%02x:%02x\",",
+		       orig[0], orig[1], orig[2],
+		       orig[3], orig[4], orig[5]);
+	else
+		printf("\"orig\":\"%s\",", bat_host->name);
+
+	printf("\"last_ttvn\":%u,\"crc\":\"0x%.8x\"}", last_ttvn, crc32);
+
+	return NL_OK;
+}
+
+static int netlink_print_transglobal_json(struct state *state, char *ori=
g_iface,
+				     int read_opts, float orig_timeout,
+				     float watch_interval)
+{
+	return netlink_print_common(state, orig_iface, read_opts,
+				    orig_timeout, watch_interval, NULL,
+				    BATADV_CMD_GET_TRANSTABLE_GLOBAL,
+				    transglobal_callback, true);
+}
+
+static struct debug_table_data batctl_debug_table_transglobal =3D {
+	.netlink_fn =3D netlink_print_transglobal_json,
+	.option_unicast_only =3D 1,
+	.option_multicast_only =3D 1,
+};
+
+COMMAND_NAMED(DEBUGJSON, transglobal_json, "tgj", handle_debug_table,
+	      COMMAND_FLAG_MESH_IFACE | COMMAND_FLAG_NETLINK,
+	      &batctl_debug_table_transglobal, "");
diff --git a/translocal.c b/translocal.c
index a3ad3da..d72125c 100644
--- a/translocal.c
+++ b/translocal.c
@@ -128,7 +128,7 @@ static int netlink_print_translocal(struct state *sta=
te, char *orig_iface,
 				    orig_timeout, watch_interval,
 				    "Client             VID Flags    Last seen (CRC       )\n",
 				    BATADV_CMD_GET_TRANSTABLE_LOCAL,
-				    translocal_callback);
+				    translocal_callback, false);
 }
=20
 static struct debug_table_data batctl_debug_table_translocal =3D {
diff --git a/translocal_json.c b/translocal_json.c
new file mode 100644
index 0000000..ad2ff46
--- /dev/null
+++ b/translocal_json.c
@@ -0,0 +1,139 @@
+// SPDX-License-Identifier: GPL-2.0
+/* Copyright (C) B.A.T.M.A.N. contributors:
+ *
+ * Andrew Lunn <andrew@lunn.ch>
+ * Sven Eckelmann <sven@narfation.org>
+ * Alexander Sarmanow <asarmanow@gmail.com>
+ *
+ * License-Filename: LICENSES/preferred/GPL-2.0
+ */
+
+#include <netinet/if_ether.h>
+#include <netlink/netlink.h>
+#include <netlink/genl/genl.h>
+#include <netlink/genl/ctrl.h>
+#include <stdio.h>
+#include <stdlib.h>
+#include <stdint.h>
+
+#include "batadv_packet.h"
+#include "batman_adv.h"
+#include "bat-hosts.h"
+#include "debug.h"
+#include "functions.h"
+#include "main.h"
+#include "netlink.h"
+
+static const int translocal_mandatory[] =3D {
+	BATADV_ATTR_TT_ADDRESS,
+	BATADV_ATTR_TT_VID,
+	BATADV_ATTR_TT_CRC32,
+	BATADV_ATTR_TT_FLAGS,
+};
+
+static int translocal_callback(struct nl_msg *msg, void *arg)
+{
+	int last_seen_msecs =3D 0;
+	struct nlattr *attrs[BATADV_ATTR_MAX+1];
+	struct nlmsghdr *nlh =3D nlmsg_hdr(msg);
+	struct print_opts *opts =3D arg;
+	struct bat_host *bat_host;
+	struct genlmsghdr *ghdr;
+	char r, p, n, x, w, i;
+	uint8_t *addr;
+	int16_t vid;
+	uint32_t crc32;
+	uint32_t flags;
+
+	if (!genlmsg_valid_hdr(nlh, 0)) {
+		fputs("Received invalid data from kernel.\n", stderr);
+		exit(1);
+	}
+
+	ghdr =3D nlmsg_data(nlh);
+
+	if (ghdr->cmd !=3D BATADV_CMD_GET_TRANSTABLE_LOCAL)
+		return NL_OK;
+
+	if (nla_parse(attrs, BATADV_ATTR_MAX, genlmsg_attrdata(ghdr, 0),
+		      genlmsg_len(ghdr), batadv_netlink_policy)) {
+		fputs("Received invalid data from kernel.\n", stderr);
+		exit(1);
+	}
+
+	if (missing_mandatory_attrs(attrs, translocal_mandatory,
+				    ARRAY_SIZE(translocal_mandatory))) {
+		fputs("Missing attributes from kernel\n", stderr);
+		exit(1);
+	}
+
+	addr =3D nla_data(attrs[BATADV_ATTR_TT_ADDRESS]);
+	vid =3D nla_get_u16(attrs[BATADV_ATTR_TT_VID]);
+	crc32 =3D nla_get_u32(attrs[BATADV_ATTR_TT_CRC32]);
+	flags =3D nla_get_u32(attrs[BATADV_ATTR_TT_FLAGS]);
+	last_seen_msecs =3D 0;
+
+	if (opts->read_opt & MULTICAST_ONLY && !(addr[0] & 0x01))
+		return NL_OK;
+
+	if (opts->read_opt & UNICAST_ONLY && (addr[0] & 0x01))
+		return NL_OK;
+
+	r =3D false, p =3D false, n =3D false, x =3D false, w =3D false, i =3D =
false;
+	if (flags & BATADV_TT_CLIENT_ROAM)
+		r =3D true;
+	if (flags & BATADV_TT_CLIENT_NEW)
+		n =3D true;
+	if (flags & BATADV_TT_CLIENT_PENDING)
+		x =3D true;
+	if (flags & BATADV_TT_CLIENT_WIFI)
+		w =3D true;
+	if (flags & BATADV_TT_CLIENT_ISOLA)
+		i =3D true;
+
+	if (flags & BATADV_TT_CLIENT_NOPURGE)  {
+		p =3D true;
+	} else {
+		if (!attrs[BATADV_ATTR_LAST_SEEN_MSECS]) {
+			fputs("Received invalid data from kernel.\n", stderr);
+			exit(1);
+		}
+
+		last_seen_msecs =3D nla_get_u32(
+			attrs[BATADV_ATTR_LAST_SEEN_MSECS]);
+	}
+
+	bat_host =3D bat_hosts_find_by_mac((char *)addr);
+	if (!(opts->read_opt & USE_BAT_HOSTS) || !bat_host)
+		printf("{\"client\":\"%02x:%02x:%02x:%02x:%02x:%02x\",",
+			addr[0], addr[1], addr[2], addr[3], addr[4], addr[5]);
+	else
+		printf("{\"client\":\"%s\",", bat_host->name);
+
+	printf("\"vid\":%i,\"flag_r\":%s,\"flag_n\":%s,\"flag_x\":%s,\"flag_w\"=
:%s,\"flag_i\":%s,\"flag_p\":%s,\"last_seen\":%d,\"crc\":\"0x%.8x\"}",
+		BATADV_PRINT_VID(vid), BOOL_STRING(r), BOOL_STRING(n),
+		BOOL_STRING(x), BOOL_STRING(w), BOOL_STRING(i), BOOL_STRING(p),
+		last_seen_msecs, crc32);
+
+	return NL_OK;
+}
+
+static int netlink_print_translocal_json(struct state *state, char *orig=
_iface,
+				    int read_opts, float orig_timeout,
+				    float watch_interval)
+{
+	return netlink_print_common(state, orig_iface, read_opts,
+				    orig_timeout, watch_interval, NULL,
+				    BATADV_CMD_GET_TRANSTABLE_LOCAL,
+				    translocal_callback, true);
+}
+
+static struct debug_table_data batctl_debug_table_translocal =3D {
+	.netlink_fn =3D netlink_print_translocal_json,
+	.option_unicast_only =3D 1,
+	.option_multicast_only =3D 1,
+};
+
+COMMAND_NAMED(DEBUGJSON, translocal_json, "tlj", handle_debug_table,
+	      COMMAND_FLAG_MESH_IFACE | COMMAND_FLAG_NETLINK,
+	      &batctl_debug_table_translocal, "");
--=20
2.25.1
