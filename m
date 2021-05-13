Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id B4C3537F9AB
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 13 May 2021 16:28:45 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 717F183F94;
	Thu, 13 May 2021 16:28:44 +0200 (CEST)
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com [IPv6:2a00:1450:4864:20::630])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id CE89A8020F
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 13 May 2021 16:28:24 +0200 (CEST)
Received: by mail-ej1-x630.google.com with SMTP id t4so40217074ejo.0
        for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 13 May 2021 07:28:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=C+dA3hagLUs4SR61xOx/n4A1X2egaRMHDIiaSHU6wDw=;
        b=VznyQErJKoL7b7Byk6LDYKpV2et41a61CX2zZDtcB1F1b5MSJ2QV0iopMWus3Cz06y
         4VXaNEDh0IA/Cyw/nueqRPsqOLhHTab7UpIwDnJrj6WSe0wq1VDn1QeHRpz2edL8wf6k
         PAdBEoaNPsDmnHmAAkdV9spTse92s4SZe455aPap3hxf/MagKFbj5RDt6yQjjfFBPMyF
         dOU7VC3FSFPM9Esw3qBhs6HMZhpDKRdctHJpyxVioNaENEMpW6Mv1HD3rDTWVNYJ79kk
         7/RyQmj4s1+gBtnPD9UD63WQbAnjGybDoDpGLPVNqZITSJi5ksXuC1pGFGafTWWAIvsC
         n5kA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=C+dA3hagLUs4SR61xOx/n4A1X2egaRMHDIiaSHU6wDw=;
        b=hvQjLfiXUvzCYSpTLw3e7zgEkCZntWQuqS2YFNg+G/mEhLdk/R6AEnbVwfFAYNCe6x
         /IxO9SgNfEDcRhX54csX84HBY0kd0u2ut0pZ14RWUqE1eiGcNfOCZP+sSTYD/OnhFvOC
         4/fIABFqxMp1ZQl0P7wUnMXqSFJYgiWj0jeXZRMRG5sX8c013NDgXZ+vpkiLxCqV7ePk
         MHX2g7Xrw3Zps9PgZNwOHKfHbCPNVObPc1ZtZNaxAPHo9fcU20TrPbbllLQlWlXcw/xl
         5au+HZpclW+6gzrafX1WVLQEMm+hQuNfAduFF4yFUNXFpwS5/BpBq6J2WyDagvO2o0tf
         8TtQ==
X-Gm-Message-State: AOAM533WUxYWqP0hHfI8MyK765IyLhIg7pIWd+T9NxfmkPkg2kzSR323
	Vz/3dg6O9K8XYVqvf9Q/TACsgOGZ+FPVlg4Z6Ns=
X-Google-Smtp-Source: ABdhPJw+xlSASsGT+3cjdiVN3MxYpq8L0A2QAxUF2MV7UJCR7pjrY82S39+KDxbvkAtRT1NMnZhrZA==
X-Received: by 2002:a17:906:8a51:: with SMTP id gx17mr43642888ejc.549.1620916104416;
        Thu, 13 May 2021 07:28:24 -0700 (PDT)
Received: from machine.fritz.box (p4fc0a3a3.dip0.t-ipconnect.de. [79.192.163.163])
        by smtp.googlemail.com with ESMTPSA id yw9sm1897153ejb.91.2021.05.13.07.28.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 May 2021 07:28:24 -0700 (PDT)
From: Alexander Sarmanow <asarmanow@gmail.com>
To: sven@narfation.org
Subject: [PATCH v3 4/4] batctl: translocal_json: Add translocal_json command
Date: Thu, 13 May 2021 16:28:12 +0200
Message-Id: <20210513142812.1707215-5-asarmanow@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210513142812.1707215-1-asarmanow@gmail.com>
References: <20210513142812.1707215-1-asarmanow@gmail.com>
MIME-Version: 1.0
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1620916104; a=rsa-sha256;
	cv=none;
	b=uuppWZSeKqAn0wvkDU5kMTjWFMsuHH7+CmML8iJZm67TRrDnhENjP0oNSU80iAYFHatWtu
	ECfqfxG8WmOmo8WsWRydEAT17O428O+dBwPk9GiLPRaoW/AD8kW8Y7weTOfQOIBAVF1AWz
	TIgbUOdJ3Oma5myr/UxFvIhYpOzMfGg=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=gmail.com header.s=20161025 header.b=VznyQErJ;
	spf=pass (diktynna.open-mesh.org: domain of asarmanow@gmail.com designates 2a00:1450:4864:20::630 as permitted sender) smtp.mailfrom=asarmanow@gmail.com
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1620916104;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=C+dA3hagLUs4SR61xOx/n4A1X2egaRMHDIiaSHU6wDw=;
	b=gkJJTKoof/78M+/0ytnwNYcl0MBx5WDmRF/lzpqLEzkn1YklbhTOFPYYsztcV76Ryjesva
	w4Va+pG4nj6mpn9dB4o2iig+vD4NXNfJJORaqSGIN39Yk9iIn2remKvGtVv2itEEfiEuTQ
	g6u51pzgJVu1EMAGRX6n+vd1Ed+XVWo=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: A6IJVEOEM6TLZZ2BNQUAJDF5HEO5IPIP
X-Message-ID-Hash: A6IJVEOEM6TLZZ2BNQUAJDF5HEO5IPIP
X-MailFrom: asarmanow@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: b.a.t.m.a.n@lists.open-mesh.org, Alexander Sarmanow <asarmanow@gmail.com>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/A6IJVEOEM6TLZZ2BNQUAJDF5HEO5IPIP/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

This is the JSON analogue of the translocal table. By using the
netlink_query_common function to query the available netlink attributes.

Signed-off-by: Alexander Sarmanow <asarmanow@gmail.com>
---
 Makefile          |  1 +
 README.rst        | 15 +++++++++
 man/batctl.8      |  3 ++
 translocal_json.c | 81 +++++++++++++++++++++++++++++++++++++++++++++++
 4 files changed, 100 insertions(+)
 create mode 100644 translocal_json.c

diff --git a/Makefile b/Makefile
index cea3271..8afbdbe 100755
--- a/Makefile
+++ b/Makefile
@@ -75,6 +75,7 @@ $(eval $(call add_command,transglobal,y))
 $(eval $(call add_command,transglobal_json,y))
 $(eval $(call add_command,translate,y))
 $(eval $(call add_command,translocal,y))
+$(eval $(call add_command,translocal_json,y))
=20
 MANPAGE =3D man/batctl.8
=20
diff --git a/README.rst b/README.rst
index 905e313..065c0ab 100644
--- a/README.rst
+++ b/README.rst
@@ -651,6 +651,21 @@ W/Wireless:
 If any of the flags is not enabled, a '.' will substitute its symbol.
=20
=20
+batctl translocal_json
+=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
+
+display the local translation JSON (analogue of the translocal table)
+
+Usage::
+
+  batctl translocal_json|tlj
+
+Example::
+
+  $ batctl translocal_json
+  [{"tt_address":"33:33:00:00:00:01","crc32":2147984693,"tt_vid":0,"tt_f=
lags":256},{"tt_address":"33:33:00:00:00:01","crc32":2147984693,"tt_vid":=
0,"tt_flags":256},{"tt_address":"11:11:00:00:00:03","crc32":2147984693,"t=
t_vid":0,"tt_flags":256}]
+
+
 batctl transglobal
 =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
=20
diff --git a/man/batctl.8 b/man/batctl.8
index 97d5738..2b8a975 100644
--- a/man/batctl.8
+++ b/man/batctl.8
@@ -310,6 +310,9 @@ List of debug JSONs:
 \- originators_json|oj
 .RE
 .RS 10
+\- translocal_json|tlj
+.RE
+.RS 10
 \- transglobal_json|tgj
 .RE
 .RE
diff --git a/translocal_json.c b/translocal_json.c
new file mode 100644
index 0000000..38b64a0
--- /dev/null
+++ b/translocal_json.c
@@ -0,0 +1,81 @@
+// SPDX-License-Identifier: GPL-2.0
+/* Copyright (C) B.A.T.M.A.N. contributors:
+ *
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
+#include "batman_adv.h"
+#include "debug.h"
+#include "main.h"
+#include "netlink.h"
+#include "genl_json.h"
+
+static int translocal_json_callback(struct nl_msg *msg, void *arg)
+{
+	struct nlquery_opts *query_opts =3D arg;
+	struct json_opts *json_opts;
+	struct nlattr *attrs[BATADV_ATTR_MAX+1];
+	struct nlmsghdr *nlh =3D nlmsg_hdr(msg);
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
+	if (ghdr->cmd !=3D BATADV_CMD_GET_TRANSTABLE_LOCAL)
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
+static int netlink_print_translocal_json(struct state *state)
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
+				   BATADV_CMD_GET_TRANSTABLE_LOCAL,
+				   translocal_json_callback,
+				   NLM_F_DUMP, &json_opts.query_opts);
+	puts("]\n");
+
+	return ret;
+}
+
+static struct debug_json_data batctl_debug_json_translocal =3D {
+	.netlink_fn =3D netlink_print_translocal_json,
+};
+
+COMMAND_NAMED(DEBUGJSON, translocal_json, "tlj", handle_debug_json,
+	      COMMAND_FLAG_MESH_IFACE | COMMAND_FLAG_NETLINK,
+	      &batctl_debug_json_translocal, "");
--=20
2.25.1
