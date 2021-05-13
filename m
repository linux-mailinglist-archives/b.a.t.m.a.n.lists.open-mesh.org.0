Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 35EC837F9A9
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 13 May 2021 16:28:33 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id AF7838405B;
	Thu, 13 May 2021 16:28:31 +0200 (CEST)
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com [IPv6:2a00:1450:4864:20::52f])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id A99118020F
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 13 May 2021 16:28:23 +0200 (CEST)
Received: by mail-ed1-x52f.google.com with SMTP id a25so7068021edr.12
        for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 13 May 2021 07:28:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Xez61dVHRMEfg8cBr1awaJNs+vP6eEeF+XXQIUs2ahw=;
        b=KM/DEE4mNT1RplLxjtP8YSO4fIm2/YOvYgC4AtKV/55kPBblJz3g3agr1tauvbOSN9
         WfiSzDy8zvIkMBSwCSXmX7DFmpm+g212pVE4suXwDu6Bmqh7lnG2aIRqUMlelpBonW2c
         38pV/ogXHbL9luBVWRKX30zLy92YXlLDKjWlrroOdMQ2EJDCeEOSh+ealqZl4HOkWNIk
         hf/np9UDTWjG+aWSga10CqFFq0gPh8lRa0ESQFum4mCsjVIHZ3OdvtOF64nmrO+tfUyb
         5jKPKuc/miztd0s9UKHX7XF9FJ/LGhPJ24LFY8YRjd38UOs8BBN95gGqUcxleNcQAdeq
         2EPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Xez61dVHRMEfg8cBr1awaJNs+vP6eEeF+XXQIUs2ahw=;
        b=ActQgo3v5iN3Fl+FDkKhTZSf6u+0GDA0gfssze5WLEm5TVZQQdSidmJ88KML72hne/
         02w2O42xMXJC9OeVJiYDe0sQWjuY32VbPijshoFe7oA9gpfoDySccxcokCiORZ7A0BKF
         2zCkByT5PRNsvgL3gL4WPllwUP+8GpXwowjHp8roTvak59Xg+PdXUhXCQy+kCb+QSpmI
         06yPUeERowfzSMMJvup/aTne+P3uRSYZPIRw1O004WOBPa2BByCy2ZFf5nYwu9VdCTED
         vZFqb6TxZVPDXVZv5YArBNOhzAuJrpcQWBVo0QQdHi6OpvmKmtry9xZkR/vsOUZ719ix
         NhwQ==
X-Gm-Message-State: AOAM530v4XK4IeEK8B0KKEsBYcpBLaCRT1C3mosZ1FOdWKaNH5iIfeGV
	mi4M22jQIggwTVYrUn4mraw=
X-Google-Smtp-Source: ABdhPJzuRNvqEswR0Eb84ebcjsVfkQ0BfgOHGgHYU/2mOjmPmrAXiDdA5HXK+EHdTvvpxGzZ7iOxqA==
X-Received: by 2002:a50:eb47:: with SMTP id z7mr51393102edp.68.1620916103301;
        Thu, 13 May 2021 07:28:23 -0700 (PDT)
Received: from machine.fritz.box (p4fc0a3a3.dip0.t-ipconnect.de. [79.192.163.163])
        by smtp.googlemail.com with ESMTPSA id yw9sm1897153ejb.91.2021.05.13.07.28.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 May 2021 07:28:23 -0700 (PDT)
From: Alexander Sarmanow <asarmanow@gmail.com>
To: sven@narfation.org
Subject: [PATCH v3 2/4] batctl: neighbors_json: Add neighbors_json command
Date: Thu, 13 May 2021 16:28:10 +0200
Message-Id: <20210513142812.1707215-3-asarmanow@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210513142812.1707215-1-asarmanow@gmail.com>
References: <20210513142812.1707215-1-asarmanow@gmail.com>
MIME-Version: 1.0
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1620916103; a=rsa-sha256;
	cv=none;
	b=ipkfOBVuiCWUBlJh9KIObIn9A1Od3sxOSt/Q3n8uNDfmOfGCYs9ln/QIDiC29szIGstVkK
	7BT+xK6YXWqw8g+0fPC3JlKgWoIq345O7h7ZDdIbCsFABhsFNqcz4kUuzASTLZEJOTy4YR
	WS31q0n2pkZeaRphCaBPZOMIFMxwD9s=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=gmail.com header.s=20161025 header.b="KM/DEE4m";
	spf=pass (diktynna.open-mesh.org: domain of asarmanow@gmail.com designates 2a00:1450:4864:20::52f as permitted sender) smtp.mailfrom=asarmanow@gmail.com
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1620916103;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=Xez61dVHRMEfg8cBr1awaJNs+vP6eEeF+XXQIUs2ahw=;
	b=tOOBUADmXlm1uhJW6wLZ2GAQUW3e0c8zZT33aHK/FKWjl2jOtetqzF4jWBzf3Ozx+vFGKr
	+mSZzoksolAoPooDEDjqEfhsXzeINe2lCBBLvyN1Q94Pw1ydvEzvnOvA0YcmFKr5WkqMND
	zBvVEbKcSHraAkZxvuQ94b3tufYnUMQ=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: TR5UEMQJYY4FGRYWZ2E2EPM32ULFYFNN
X-Message-ID-Hash: TR5UEMQJYY4FGRYWZ2E2EPM32ULFYFNN
X-MailFrom: asarmanow@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: b.a.t.m.a.n@lists.open-mesh.org, Alexander Sarmanow <asarmanow@gmail.com>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/TR5UEMQJYY4FGRYWZ2E2EPM32ULFYFNN/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

This is the JSON analogue of the neighbors table. By using the
netlink_query_common function to query the available netlink attributes.

Signed-off-by: Alexander Sarmanow <asarmanow@gmail.com>
---
 Makefile         |  1 +
 README.rst       | 15 +++++++++
 man/batctl.8     |  3 ++
 neighbors_json.c | 82 ++++++++++++++++++++++++++++++++++++++++++++++++
 4 files changed, 101 insertions(+)
 create mode 100644 neighbors_json.c

diff --git a/Makefile b/Makefile
index 9dfcfde..874dc2f 100755
--- a/Makefile
+++ b/Makefile
@@ -59,6 +59,7 @@ $(eval $(call add_command,multicast_fanout,y))
 $(eval $(call add_command,multicast_forceflood,y))
 $(eval $(call add_command,multicast_mode,y))
 $(eval $(call add_command,neighbors,y))
+$(eval $(call add_command,neighbors_json,y))
 $(eval $(call add_command,network_coding,y))
 $(eval $(call add_command,orig_interval,y))
 $(eval $(call add_command,originators,y))
diff --git a/README.rst b/README.rst
index c884bb3..f0ce43a 100644
--- a/README.rst
+++ b/README.rst
@@ -371,6 +371,21 @@ Example::
   [{"hard_ifindex":7,"orig_address":"fe:fe:00:00:01:01","best":true,"las=
t_seen_msecs":700,"neigh_address":"fe:fe:00:00:02:01","tq":119},{"hard_if=
index":2,"orig_address":"fe:fe:00:00:03:01","best":true,"last_seen_msecs"=
:1040,"neigh_address":"fe:fe:00:00:02:01","tq":116},{"hard_ifindex":7,"or=
ig_address":"fe:fe:00:00:04:01","best":true,"last_seen_msecs":700,"neigh_=
address":"fe:fe:00:00:02:01","tq":119},{"hard_ifindex":2,"orig_address":"=
fe:fe:00:00:05:01","best":true,"last_seen_msecs":270,"neigh_address":"fe:=
fe:00:00:02:01","tq":140},{"hard_ifindex":2,"orig_address":"fe:fe:00:00:0=
6:01","best":true,"last_seen_msecs":770,"neigh_address":"fe:fe:00:00:02:0=
1","tq":91}]
=20
=20
+batctl neighbors_json
+=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
+
+display the Neighbors JSON (analogue of the neighbors table)
+
+Usage::
+
+  batctl neighbors_json
+
+Example::
+
+  $ batctl neighbors_json|nj
+  [{"hard_ifindex":2,"last_seen_msecs":650,"neigh_address":"fe:fe:00:00:=
01:01"},{"hard_ifindex":2,"last_seen_msecs":650,"neigh_address":"fe:fe:00=
:00:01:02"}]
+
+
 batctl interface
 =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
=20
diff --git a/man/batctl.8 b/man/batctl.8
index 155791d..1130a81 100644
--- a/man/batctl.8
+++ b/man/batctl.8
@@ -304,6 +304,9 @@ seen by each individual node.
 .RS 7
 List of debug JSONs:
 .RS 10
+\- neighbors_json|nj
+.RE
+.RS 10
 \- originators_json|oj
 .RE
 .RE
diff --git a/neighbors_json.c b/neighbors_json.c
new file mode 100644
index 0000000..7051c63
--- /dev/null
+++ b/neighbors_json.c
@@ -0,0 +1,82 @@
+// SPDX-License-Identifier: GPL-2.0
+/* Copyright (C) B.A.T.M.A.N. contributors:
+ *
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
+#include "batman_adv.h"
+#include "debug.h"
+#include "main.h"
+#include "netlink.h"
+#include "genl_json.h"
+
+static int neighbors_json_callback(struct nl_msg *msg, void *arg)
+{
+	struct nlattr *attrs[BATADV_ATTR_MAX+1];
+	struct nlmsghdr *nlh =3D nlmsg_hdr(msg);
+	struct nlquery_opts *query_opts =3D arg;
+	struct json_opts *json_opts;
+	struct genlmsghdr *ghdr;
+
+	json_opts =3D container_of(query_opts, struct json_opts, query_opts);
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
+	netlink_print_json_entries(attrs, json_opts);
+	json_opts->is_first =3D 0;
+
+	return NL_OK;
+}
+
+static int netlink_print_neighbors_json(struct state *state)
+{
+	int ret;
+	struct json_opts json_opts =3D {
+		.is_first =3D 1,
+		.query_opts =3D {
+			.err =3D 0,
+		},
+	};
+
+	putc('[', stdout);
+	ret =3D netlink_query_common(state, state->mesh_ifindex,
+				   BATADV_CMD_GET_NEIGHBORS,
+				   neighbors_json_callback,
+				   NLM_F_DUMP, &json_opts.query_opts);
+	puts("]\n");
+
+	return ret;
+}
+
+static struct debug_json_data batctl_debug_json_neighbors =3D {
+	.netlink_fn =3D netlink_print_neighbors_json,
+};
+
+COMMAND_NAMED(DEBUGJSON, neighbors_json, "nj", handle_debug_json,
+	      COMMAND_FLAG_MESH_IFACE | COMMAND_FLAG_NETLINK,
+	      &batctl_debug_json_neighbors, "");
--=20
2.25.1
