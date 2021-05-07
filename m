Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F3D2376976
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri,  7 May 2021 19:22:48 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 6661C80782;
	Fri,  7 May 2021 19:22:47 +0200 (CEST)
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 9B60C8078B
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri,  7 May 2021 19:22:43 +0200 (CEST)
Received: by mail-wm1-x32a.google.com with SMTP id g65so5672544wmg.2
        for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 07 May 2021 10:22:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=QuNNpm/02GWBjqtz+O16xdRwcWjMLRAmXRrxMGHa9ns=;
        b=DNYXZbwdWCxDyEzKk879tJk0DjcHC1tNj22Ch9NMBo6qU0ioFsJDKgNOxsn1ZWggSj
         ydiXrcTRwwJabQb7ae4tT7Osm9CRYdbEt/+W+vLJZQBX7ia96XP60OI6FGo8xeKBaBoQ
         whrgIBK68U7D+ItpHhqDH21hwX3ZjbRzAseUOGsAf4QXMSKx/cY3hFB+krkp1TnAN1D4
         xNgNZSjPrJ230cpxYsFwRt8radi+p4f/I5I3wd9WVs+z7tQ7WE1omBoQGV009lGmEleo
         heMCq+cwh39TbmWAd0R8raxgjk2hQmalZf61aC6xyd4xw5OxOZFnP7g8HPGR0OFycitf
         S39g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=QuNNpm/02GWBjqtz+O16xdRwcWjMLRAmXRrxMGHa9ns=;
        b=EIE5cxRR69qNSaVHHRDs6p3QsEv7Y8INBKNCkHHL5Lhclan7i7oFZywXQNkgezN1Eo
         scTPiLrwfdvtt1mPbIJORc6c/PX+wXUp2kDpHac5C4v0MxgiWZgPwr+6WuXvX3dLwmid
         CqSrnBwNJcV+MVxRHmsVX/sD3RR68rulebAwjVJNwzbsfGpkHE5JhNENusI9BtNUDcDf
         AMpTMtNCJ7C9dFPZkj13z+6J0zCI694C1yRQmXnnnQ57s/af5DXCokzL3v+bw8CvT4cq
         PFQXXJTjciqNWQC8aSjNjZ9xoBC7junpJcEgJOexPNzyBBxpkNrzizJ/oWChrw0hB37n
         oWPw==
X-Gm-Message-State: AOAM531w99PZnJrT0+3/nggXzH+tN6qFvxXVuSCoUd86VHqQO87kje98
	qUB2Yq8BpkX2sgzdT/V33DT53lDU9ZMC7EM/
X-Google-Smtp-Source: ABdhPJzmTnqcVuura/Zc5F+RPG0DSEepWQyvZERnSClf2MiTtp4sxkC7QVBiGAyrBaYucneDZNw9zg==
X-Received: by 2002:a1c:7e82:: with SMTP id z124mr22497856wmc.51.1620407686215;
        Fri, 07 May 2021 10:14:46 -0700 (PDT)
Received: from machine.fritz.box (p4fc0a3a3.dip0.t-ipconnect.de. [79.192.163.163])
        by smtp.googlemail.com with ESMTPSA id l12sm8897064wrm.76.2021.05.07.10.14.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 May 2021 10:14:45 -0700 (PDT)
From: Alexander Sarmanow <asarmanow@gmail.com>
To: sven@narfation.org
Subject: [PATCH v2 2/2] batctl: Add JSON debug commands
Date: Fri,  7 May 2021 19:14:35 +0200
Message-Id: <20210507171435.370648-1-asarmanow@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1620408163; a=rsa-sha256;
	cv=none;
	b=28o/PUkG1HMF34Z+MSk36cjCCTKNCtLxHDCCcl+RTQVGVZ1piMa2vvMqBPnj6mV8w6XfA9
	5i+zJxOYKtRjuunAuGhYB48qOQMK+o1kjZlWNprAGY2RUWkxyObH/2xlFzt5oPqyujjFc+
	4T+BhJYTxeh2JrrBQHhSlaAvm1JlC/k=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=gmail.com header.s=20161025 header.b=DNYXZbwd;
	spf=pass (diktynna.open-mesh.org: domain of asarmanow@gmail.com designates 2a00:1450:4864:20::32a as permitted sender) smtp.mailfrom=asarmanow@gmail.com
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1620408163;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=QuNNpm/02GWBjqtz+O16xdRwcWjMLRAmXRrxMGHa9ns=;
	b=lX4hkyzDdcakQcnYYQWYgZOYIYm4Z67Ly6dIs3twEYJk1ARrShql4O63QSPA/DF8/v/TsD
	YQSwVgvFRINbBqcIzQJgj9ZLJMLtqWtRx2U119DMnsdBRXeRoxxjV28YnkiJLum4Lzmaf/
	1VMcWZpdgrZrse5BLdWphJRmhceDnRI=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: CRDNONPIS7U7KALMQGV43OG4T6RE52HK
X-Message-ID-Hash: CRDNONPIS7U7KALMQGV43OG4T6RE52HK
X-MailFrom: asarmanow@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: b.a.t.m.a.n@lists.open-mesh.org, Alexander Sarmanow <asarmanow@gmail.com>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/CRDNONPIS7U7KALMQGV43OG4T6RE52HK/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

According to part 1 of this patch following commands will be added to
the JSON debug: meshinfo_json, originators_json, neighbors_json,
translocal_json, transglobal_json.

Signed-off-by: Alexander Sarmanow <asarmanow@gmail.com>
---
 Makefile           |   5 ++
 gateways.c         |   2 +-
 main.c             |  14 +++--
 main.h             |   1 +
 mcast_flags.c      |   2 +-
 meshinfo_json.c    | 139 +++++++++++++++++++++++++++++++++++++++++++++
 neighbors_json.c   |  89 +++++++++++++++++++++++++++++
 netlink.c          |  39 ++++++++-----
 netlink.h          |   2 +-
 originators.c      |   2 +-
 originators_json.c | 107 ++++++++++++++++++++++++++++++++++
 transglobal_json.c | 109 +++++++++++++++++++++++++++++++++++
 translocal_json.c  | 102 +++++++++++++++++++++++++++++++++
 13 files changed, 592 insertions(+), 21 deletions(-)
 create mode 100644 meshinfo_json.c
 create mode 100644 neighbors_json.c
 create mode 100644 originators_json.c
 create mode 100644 transglobal_json.c
 create mode 100644 translocal_json.c

diff --git a/Makefile b/Makefile
index 98bf695..0f85561 100755
--- a/Makefile
+++ b/Makefile
@@ -54,13 +54,16 @@ $(eval $(call add_command,interface,y))
 $(eval $(call add_command,isolation_mark,y))
 $(eval $(call add_command,loglevel,y))
 $(eval $(call add_command,mcast_flags,y))
+$(eval $(call add_command,meshinfo_json,y))
 $(eval $(call add_command,multicast_fanout,y))
 $(eval $(call add_command,multicast_forceflood,y))
 $(eval $(call add_command,multicast_mode,y))
 $(eval $(call add_command,neighbors,y))
+$(eval $(call add_command,neighbors_json,y))
 $(eval $(call add_command,network_coding,y))
 $(eval $(call add_command,orig_interval,y))
 $(eval $(call add_command,originators,y))
+$(eval $(call add_command,originators_json,y))
 $(eval $(call add_command,ping,y))
 $(eval $(call add_command,routing_algo,y))
 $(eval $(call add_command,statistics,y))
@@ -69,8 +72,10 @@ $(eval $(call add_command,throughput_override,y))
 $(eval $(call add_command,throughputmeter,y))
 $(eval $(call add_command,traceroute,y))
 $(eval $(call add_command,transglobal,y))
+$(eval $(call add_command,transglobal_json,y))
 $(eval $(call add_command,translate,y))
 $(eval $(call add_command,translocal,y))
+$(eval $(call add_command,translocal_json,y))
=20
 MANPAGE =3D man/batctl.8
=20
diff --git a/gateways.c b/gateways.c
index 867c882..3704c99 100644
--- a/gateways.c
+++ b/gateways.c
@@ -123,7 +123,7 @@ static int netlink_print_gateways(struct state *state=
, char *orig_iface,
 	/* only parse routing algorithm name */
 	last_err =3D -EINVAL;
 	info_header =3D netlink_get_info(state->mesh_ifindex,
-				       BATADV_CMD_GET_ORIGINATORS, NULL);
+				       BATADV_CMD_GET_ORIGINATORS, NULL, 0);
 	free(info_header);
=20
 	if (strlen(algo_name_buf) =3D=3D 0)
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
index b1ff050..2efd136 100644
--- a/main.h
+++ b/main.h
@@ -71,6 +71,7 @@ enum command_type {
 	SUBCOMMAND_VID,
 	SUBCOMMAND_HIF,
 	DEBUGTABLE,
+	DEBUGJSON,
 };
=20
 struct state {
diff --git a/mcast_flags.c b/mcast_flags.c
index cb6e89d..87fb077 100644
--- a/mcast_flags.c
+++ b/mcast_flags.c
@@ -105,7 +105,7 @@ static int netlink_print_mcast_flags(struct state *st=
ate, char *orig_iface,
=20
 	/* only parse own multicast flags */
 	info_header =3D netlink_get_info(state->mesh_ifindex,
-				       BATADV_CMD_GET_MCAST_FLAGS, NULL);
+				       BATADV_CMD_GET_MCAST_FLAGS, NULL, 0);
 	free(info_header);
=20
 	if (mcast_flags =3D=3D -EOPNOTSUPP || mcast_flags_priv =3D=3D -EOPNOTSU=
PP)
diff --git a/meshinfo_json.c b/meshinfo_json.c
new file mode 100644
index 0000000..8c6f675
--- /dev/null
+++ b/meshinfo_json.c
@@ -0,0 +1,139 @@
+// SPDX-License-Identifier: GPL-2.0
+/* Copyright (C) B.A.T.M.A.N. contributors:
+ *
+ * Alexander Sarmanow <asarmanow@gmail.com>
+ *
+ * License-Filename: LICENSES/preferred/GPL-2.0
+ */
+
+#include <errno.h>
+#include <netlink/netlink.h>
+#include <netlink/genl/genl.h>
+#include <netlink/genl/ctrl.h>
+#include <stdio.h>
+#include <stdlib.h>
+#include <stdint.h>
+
+#include "batman_adv.h"
+#include "debug.h"
+#include "main.h"
+#include "netlink.h"
+
+static const int info_mandatory[] =3D {
+	BATADV_ATTR_MESH_IFINDEX,
+	BATADV_ATTR_MESH_IFNAME,
+};
+
+static int meshinfo_callback(struct nl_msg *msg, void *arg)
+{
+	struct print_opts *opts =3D arg;
+	struct nlattr *attrs[BATADV_ATTR_MAX+1];
+	struct nlmsghdr *nlh =3D nlmsg_hdr(msg);
+	struct genlmsghdr *ghdr;
+	int selected_attrs[10] =3D { BATADV_ATTR_MESH_IFNAME,
+				   BATADV_ATTR_MESH_ADDRESS,
+				   BATADV_ATTR_HARD_IFNAME,
+				   BATADV_ATTR_VERSION,
+				   BATADV_ATTR_ALGO_NAME,
+				   BATADV_ATTR_HARD_ADDRESS,
+				   BATADV_ATTR_TT_TTVN };
+
+	if (!genlmsg_valid_hdr(nlh, 0)) {
+		fputs("Received invalid data from kernel.\n", stderr);
+		exit(1);
+	}
+
+	ghdr =3D nlmsg_data(nlh);
+
+	if (ghdr->cmd !=3D BATADV_CMD_GET_MESH_INFO)
+		return NL_OK;
+	if (nla_parse(attrs, BATADV_ATTR_MAX, genlmsg_attrdata(ghdr, 0),
+		      genlmsg_len(ghdr), batadv_netlink_policy)) {
+		fputs("Received invalid data from kernel.\n", stderr);
+		exit(1);
+	}
+
+	if (missing_mandatory_attrs(attrs, info_mandatory,
+				    ARRAY_SIZE(info_mandatory))) {
+		fputs("Missing attributes from kernel\n", stderr);
+		exit(1);
+	}
+
+	netlink_print_json_entries(attrs, selected_attrs,
+				   ARRAY_SIZE(selected_attrs), opts);
+	opts->is_first =3D 0;
+
+	return NL_OK;
+}
+
+static int netlink_print_meshinfo_json(struct state *state, char *orig_i=
face,
+				       int read_opts, float orig_timeout,
+				       float watch_interval)
+{
+	(void) orig_iface;
+	(void) orig_timeout;
+	(void) watch_interval;
+       	(void) read_opts;
+	struct nl_sock *sock;
+	struct nl_msg *msg;
+	struct nl_cb *cb;
+	struct print_opts opts =3D {
+		.is_json =3D 1,
+		.is_first =3D 1,
+	};
+	int family;
+
+	if (!state->sock) {
+		last_err =3D -EOPNOTSUPP;
+		return last_err;
+	}
+
+	sock =3D nl_socket_alloc();
+	if (!sock)
+		return -1;
+
+	genl_connect(sock);
+
+	family =3D genl_ctrl_resolve(sock, BATADV_NL_NAME);
+	if (family < 0) {
+		nl_socket_free(sock);
+		return -1;
+	}
+
+	msg =3D nlmsg_alloc();
+	if (!msg) {
+		nl_socket_free(sock);
+		return -1;
+	}
+
+	genlmsg_put(msg, NL_AUTO_PID, NL_AUTO_SEQ, family, 0, 0,
+		    BATADV_CMD_GET_MESH_INFO, 1);
+
+	nla_put_u32(msg, BATADV_ATTR_MESH_IFINDEX, state->mesh_ifindex);
+
+	nl_send_auto_complete(sock, msg);
+
+	nlmsg_free(msg);
+
+	cb =3D nl_cb_alloc(NL_CB_DEFAULT);
+	if (!cb)
+		goto err_free_sock;
+
+	nl_cb_set(cb, NL_CB_VALID, NL_CB_CUSTOM, meshinfo_callback, &opts);
+	nl_cb_err(cb, NL_CB_CUSTOM, netlink_print_error, NULL);
+
+	nl_recvmsgs(sock, cb);
+
+err_free_sock:
+	nl_socket_free(sock);
+
+	return 0;
+}
+
+static struct debug_table_data batctl_debug_json_meshinfo =3D {
+	.netlink_fn =3D netlink_print_meshinfo_json,
+};
+
+COMMAND_NAMED(DEBUGJSON, meshinfo_json, "mij", handle_debug_table,
+	      COMMAND_FLAG_MESH_IFACE | COMMAND_FLAG_NETLINK,
+	      &batctl_debug_json_meshinfo, "");
diff --git a/neighbors_json.c b/neighbors_json.c
new file mode 100644
index 0000000..5182e47
--- /dev/null
+++ b/neighbors_json.c
@@ -0,0 +1,89 @@
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
+static int neighbors_json_callback(struct nl_msg *msg, void *arg)
+{
+	struct nlattr *attrs[BATADV_ATTR_MAX+1];
+	struct nlmsghdr *nlh =3D nlmsg_hdr(msg);
+	struct print_opts *opts =3D arg;
+	struct genlmsghdr *ghdr;
+	int selected_attrs[4] =3D { BATADV_ATTR_NEIGH_ADDRESS,
+				  BATADV_ATTR_HARD_IFINDEX,
+				  BATADV_ATTR_LAST_SEEN_MSECS,
+				  BATADV_ATTR_THROUGHPUT };
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
+	netlink_print_json_entries(attrs, selected_attrs,
+				   ARRAY_SIZE(selected_attrs), opts);
+	opts->is_first =3D 0;
+
+	return NL_OK;
+}
+
+static int netlink_print_neighbors_json(struct state *state, char *orig_=
iface,
+					int read_opts, float orig_timeout,
+					float watch_interval)
+{
+	return netlink_print_common(state, orig_iface, read_opts,
+				    orig_timeout, watch_interval, NULL,
+				    BATADV_CMD_GET_NEIGHBORS,
+				    neighbors_json_callback, true);
+}
+
+static struct debug_table_data batctl_debug_json_neighbors =3D {
+	.netlink_fn =3D netlink_print_neighbors_json,
+};
+
+COMMAND_NAMED(DEBUGJSON, neighbors_json, "nj", handle_debug_table,
+	      COMMAND_FLAG_MESH_IFACE | COMMAND_FLAG_NETLINK,
+	      &batctl_debug_json_neighbors, "");
diff --git a/netlink.c b/netlink.c
index 26ae5ef..db44d82 100644
--- a/netlink.c
+++ b/netlink.c
@@ -363,17 +363,21 @@ static int info_callback(struct nl_msg *msg, void *=
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
-		if (ret < 0)
-			opts->remaining_header =3D NULL;
+		if (!opts->is_json) {
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
+
+			if (ret < 0)
+				opts->remaining_header =3D NULL;
+		}
=20
 		if (extra_info)
 			free(extra_info);
@@ -387,7 +391,8 @@ static int info_callback(struct nl_msg *msg, void *ar=
g)
 	return NL_STOP;
 }
=20
-char *netlink_get_info(int ifindex, uint8_t nl_cmd, const char *header)
+char *netlink_get_info(int ifindex, uint8_t nl_cmd, const char *header,
+		       uint8_t is_json)
 {
 	struct nl_sock *sock;
 	struct nl_msg *msg;
@@ -398,6 +403,7 @@ char *netlink_get_info(int ifindex, uint8_t nl_cmd, c=
onst char *header)
 		.nl_cmd =3D nl_cmd,
 		.remaining_header =3D NULL,
 		.static_header =3D header,
+		.is_json =3D is_json,
 	};
=20
 	sock =3D nl_socket_alloc();
@@ -494,6 +500,9 @@ int netlink_print_common(struct state *state, char *o=
rig_iface, int read_opt,
 		}
 	}
=20
+	if (is_json)
+		printf("[");
+
 	bat_hosts_init(read_opt);
=20
 	nl_cb_set(state->cb, NL_CB_VALID, NL_CB_CUSTOM, netlink_print_common_cb=
, &opts);
@@ -508,7 +517,8 @@ int netlink_print_common(struct state *state, char *o=
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
@@ -529,6 +539,9 @@ int netlink_print_common(struct state *state, char *o=
rig_iface, int read_opt,
 		last_err =3D 0;
 		nl_recvmsgs(state->sock, state->cb);
=20
+		if (is_json)
+			printf("]");
+
 		/* the header should still be printed when no entry was received */
 		if (!last_err)
 			netlink_print_remaining_header(&opts);
diff --git a/netlink.h b/netlink.h
index c766741..47390fc 100644
--- a/netlink.h
+++ b/netlink.h
@@ -44,7 +44,7 @@ struct ether_addr;
 int netlink_create(struct state *state);
 void netlink_destroy(struct state *state);
=20
-char *netlink_get_info(int ifindex, uint8_t nl_cmd, const char *header);
+char *netlink_get_info(int ifindex, uint8_t nl_cmd, const char *header, =
uint8_t is_json);
 int translate_mac_netlink(const char *mesh_iface, const struct ether_add=
r *mac,
 			  struct ether_addr *mac_out);
 int get_nexthop_netlink(const char *mesh_iface, const struct ether_addr =
*mac,
diff --git a/originators.c b/originators.c
index 674656c..c3af740 100644
--- a/originators.c
+++ b/originators.c
@@ -175,7 +175,7 @@ static int netlink_print_originators(struct state *st=
ate, char *orig_iface,
 	/* only parse routing algorithm name */
 	last_err =3D -EINVAL;
 	info_header =3D netlink_get_info(state->mesh_ifindex,
-				       BATADV_CMD_GET_ORIGINATORS, NULL);
+				       BATADV_CMD_GET_ORIGINATORS, NULL, 0);
 	free(info_header);
=20
 	if (strlen(algo_name_buf) =3D=3D 0)
diff --git a/originators_json.c b/originators_json.c
new file mode 100644
index 0000000..91dcb44
--- /dev/null
+++ b/originators_json.c
@@ -0,0 +1,107 @@
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
+static int originators_json_callback(struct nl_msg *msg, void *arg)
+{
+	struct nlattr *attrs[BATADV_ATTR_MAX+1];
+	struct nlmsghdr *nlh =3D nlmsg_hdr(msg);
+	int last_seen_msecs;
+	struct print_opts *opts =3D arg;
+	struct genlmsghdr *ghdr;
+	float last_seen;
+	int selected_attrs[6] =3D { BATADV_ATTR_ORIG_ADDRESS,
+				  BATADV_ATTR_NEIGH_ADDRESS,
+				  BATADV_ATTR_HARD_IFINDEX,
+				  BATADV_ATTR_LAST_SEEN_MSECS,
+				  BATADV_ATTR_THROUGHPUT,
+				  BATADV_ATTR_TQ };
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
+	last_seen_msecs =3D nla_get_u32(attrs[BATADV_ATTR_LAST_SEEN_MSECS]);
+	last_seen =3D (float)last_seen_msecs / 1000.0;
+
+	/* skip timed out originators */
+	if (opts->read_opt & NO_OLD_ORIGS)
+		if (last_seen > opts->orig_timeout)
+			return NL_OK;
+
+	netlink_print_json_entries(attrs, selected_attrs,
+				   ARRAY_SIZE(selected_attrs), opts);
+	opts->is_first =3D 0;
+
+	return NL_OK;
+}
+
+static int netlink_print_originators_json(struct state *state, char *ori=
g_iface,
+					  int read_opts, float orig_timeout,
+					  float watch_interval)
+{
+	return netlink_print_common(state, orig_iface, read_opts,
+				    orig_timeout, watch_interval, NULL,
+				    BATADV_CMD_GET_ORIGINATORS,
+				    originators_json_callback, 1);
+}
+
+static struct debug_table_data batctl_debug_json_originators =3D {
+	.netlink_fn =3D netlink_print_originators_json,
+	.option_timeout_interval =3D 1,
+	.option_orig_iface =3D 1,
+};
+
+COMMAND_NAMED(DEBUGJSON, originators_json, "oj", handle_debug_table,
+	      COMMAND_FLAG_MESH_IFACE | COMMAND_FLAG_NETLINK,
+	      &batctl_debug_json_originators, "");
diff --git a/transglobal_json.c b/transglobal_json.c
new file mode 100644
index 0000000..faff8ec
--- /dev/null
+++ b/transglobal_json.c
@@ -0,0 +1,109 @@
+// SPDX-License-Identifier: GPL-2.0
+/* Copyright (C) B.A.T.M.A.N. contributors:
+ *
+ * Andrew Lunn <andrew(a)lunn.ch&gt;
+ * Sven Eckelmann <sven(a)narfation.org&gt;
+ * Alexander Sarmanow <asarmanow(a)gmail.com&gt;
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
+static int transglobal_json_callback(struct nl_msg *msg, void *arg)
+{
+	struct nlattr *attrs[BATADV_ATTR_MAX+1];
+	struct nlmsghdr *nlh =3D nlmsg_hdr(msg);
+	struct print_opts *opts =3D arg;
+	struct genlmsghdr *ghdr;
+	uint8_t *addr;
+	int selected_attrs[8] =3D { BATADV_ATTR_TT_ADDRESS,
+				  BATADV_ATTR_ORIG_ADDRESS,
+			      	  BATADV_ATTR_TT_VID,
+			      	  BATADV_ATTR_TT_TTVN,
+			      	  BATADV_ATTR_TT_LAST_TTVN,
+			      	  BATADV_ATTR_TT_CRC32,
+			      	  BATADV_ATTR_TT_FLAGS,
+			      	  BATADV_ATTR_FLAG_BEST };
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
+
+	if (opts->read_opt & MULTICAST_ONLY && !(addr[0] & 0x01))
+		return NL_OK;
+
+	if (opts->read_opt & UNICAST_ONLY && (addr[0] & 0x01))
+		return NL_OK;
+
+	netlink_print_json_entries(attrs, selected_attrs,
+				   ARRAY_SIZE(selected_attrs), opts);
+	opts->is_first =3D 0;
+
+
+	return NL_OK;
+}
+
+static int netlink_print_transglobal_json(struct state *state, char *ori=
g_iface,
+					  int read_opts, float orig_timeout,
+					  float watch_interval)
+{
+	return netlink_print_common(state, orig_iface, read_opts,
+				    orig_timeout, watch_interval, NULL,
+				    BATADV_CMD_GET_TRANSTABLE_GLOBAL,
+				    transglobal_json_callback, true);
+}
+
+static struct debug_table_data batctl_debug_json_transglobal =3D {
+	.netlink_fn =3D netlink_print_transglobal_json,
+	.option_unicast_only =3D 1,
+	.option_multicast_only =3D 1,
+};
+
+COMMAND_NAMED(DEBUGJSON, transglobal_json, "tgj", handle_debug_table,
+	      COMMAND_FLAG_MESH_IFACE | COMMAND_FLAG_NETLINK,
+	      &batctl_debug_json_transglobal, "");
diff --git a/translocal_json.c b/translocal_json.c
new file mode 100644
index 0000000..e78150e
--- /dev/null
+++ b/translocal_json.c
@@ -0,0 +1,102 @@
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
+static int translocal_json_callback(struct nl_msg *msg, void *arg)
+{
+	struct nlattr *attrs[BATADV_ATTR_MAX+1];
+	struct nlmsghdr *nlh =3D nlmsg_hdr(msg);
+	struct print_opts *opts =3D arg;
+	struct genlmsghdr *ghdr;
+	uint8_t *addr;
+	int selected_attrs[5] =3D { BATADV_ATTR_TT_ADDRESS,
+				  BATADV_ATTR_TT_VID,
+				  BATADV_ATTR_TT_CRC32,
+				  BATADV_ATTR_TT_FLAGS,
+				  BATADV_ATTR_LAST_SEEN_MSECS };
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
+
+	if (opts->read_opt & MULTICAST_ONLY && !(addr[0] & 0x01))
+		return NL_OK;
+
+	if (opts->read_opt & UNICAST_ONLY && (addr[0] & 0x01))
+		return NL_OK;
+
+	netlink_print_json_entries(attrs, selected_attrs,
+				   ARRAY_SIZE(selected_attrs), opts);
+	opts->is_first =3D 0;
+
+	return NL_OK;
+}
+
+static int netlink_print_translocal_json(struct state *state, char *orig=
_iface,
+					 int read_opts, float orig_timeout,
+					 float watch_interval)
+{
+	return netlink_print_common(state, orig_iface, read_opts,
+				    orig_timeout, watch_interval, NULL,
+				    BATADV_CMD_GET_TRANSTABLE_LOCAL,
+				    translocal_json_callback, 1);
+}
+
+static struct debug_table_data batctl_debug_json_translocal =3D {
+	.netlink_fn =3D netlink_print_translocal_json,
+	.option_unicast_only =3D 1,
+	.option_multicast_only =3D 1,
+};
+
+COMMAND_NAMED(DEBUGJSON, translocal_json, "tlj", handle_debug_table,
+	      COMMAND_FLAG_MESH_IFACE | COMMAND_FLAG_NETLINK,
+	      &batctl_debug_json_translocal, "");
--=20
2.25.1
