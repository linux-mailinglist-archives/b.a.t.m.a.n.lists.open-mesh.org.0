Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 2459C37F9AA
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 13 May 2021 16:28:39 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 4AB9884075;
	Thu, 13 May 2021 16:28:37 +0200 (CEST)
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com [IPv6:2a00:1450:4864:20::631])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 48A9E8020F
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 13 May 2021 16:28:24 +0200 (CEST)
Received: by mail-ej1-x631.google.com with SMTP id l1so4137557ejb.6
        for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 13 May 2021 07:28:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ILXGc7pZPTVZdpBxMudBcnI0m+cQ8P0sZXkvqXOPXaM=;
        b=RgMj8a1vK1awUP+mBZv/0nK00LhPD7zuNR74c0IYKbX2Kb9Wywn/AjbzZKYfhlkjzA
         d8z1jR5MCgAryBpsSyAUmEkmsJWoGGXwGrmFo6BEne8VA+L2M95XE1GpObBzdZGCoIHa
         /kT+ggn7epmR5FFf3RApWhiJWtuCCgqxhOnPC/wdYWKqyUZkD9FqaeSOZOo/K2K6DrA0
         +71rs+L/xc5rQ41IY8LSpyjl7WValrodb8DiZ9ckle7wcXPEgscGaGmo+jo3YctJE60b
         lJ8EHEzNMYdZUR6VbXsFaQQjo6AclyVURJja8P36pfAhkb4NKbG0FXak7M/3JBA/hTDW
         Yy5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ILXGc7pZPTVZdpBxMudBcnI0m+cQ8P0sZXkvqXOPXaM=;
        b=ZzNISU1I7X2N3w8rSoCxkX8RhhD3Eq6VwnudjRX7XZE6Tm294POt924dQL2xrXcA9s
         6aW3SznW1uf2/S3gXtTUjnj4/e2RXvQ5m/GDOFjy4ifv9J0sdomi3MPuBEw3E6Eu/FCJ
         C2WOyPlkdj5R1AkLBuArgQ5ueC3xEuznRGgj4qFGOlS1xZEfpQ7vDsI7EgeScCPs92d2
         mQuf6z0AqivKbJSMmJLl4W7A3U7Dr0dslE6EydFs6MeyHaCK4NXx6KburS1u9PVEtubD
         wwmPxE8vz0Fsto1m7sDSFNKb2JDzdyqwB7O6P/Q041rTKCbt8SZg8+yUbC8lw4uWKdyv
         kRVQ==
X-Gm-Message-State: AOAM531zm2bsHBxOwbYgRj5JeXQhhiP2zd0Nkq7iXR87g6s0RnsqUo9K
	Jz0ZSvcA2JjcoBgPHlBlH9k=
X-Google-Smtp-Source: ABdhPJzI1CddQ99qc0Dbak6K+115l1cH/EAHhFDF2NC9pt2N5jCU5VSoD+Gj+1/sh69At+smJ+zIFQ==
X-Received: by 2002:a17:906:2ed0:: with SMTP id s16mr18609548eji.543.1620916103909;
        Thu, 13 May 2021 07:28:23 -0700 (PDT)
Received: from machine.fritz.box (p4fc0a3a3.dip0.t-ipconnect.de. [79.192.163.163])
        by smtp.googlemail.com with ESMTPSA id yw9sm1897153ejb.91.2021.05.13.07.28.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 May 2021 07:28:23 -0700 (PDT)
From: Alexander Sarmanow <asarmanow@gmail.com>
To: sven@narfation.org
Subject: [PATCH v3 3/4] batctl: transglobal_json: Add transglobal_json command
Date: Thu, 13 May 2021 16:28:11 +0200
Message-Id: <20210513142812.1707215-4-asarmanow@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210513142812.1707215-1-asarmanow@gmail.com>
References: <20210513142812.1707215-1-asarmanow@gmail.com>
MIME-Version: 1.0
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1620916104; a=rsa-sha256;
	cv=none;
	b=tRhk6lDPgzQ51uxnJFovyE2HGEqPTYVzrx3FBzzFN0H7XNIjf+ZReqehCXEekI9rURA34F
	n4naX9J5X3BppjGuLvNwALx8ixCcRnTHGYwAel56zg/yUG5wEW4RHcPvmCwchYd3LQvmNa
	9Il2qdauR2oaj8TFi61Chn+Xw9jSng8=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=gmail.com header.s=20161025 header.b=RgMj8a1v;
	spf=pass (diktynna.open-mesh.org: domain of asarmanow@gmail.com designates 2a00:1450:4864:20::631 as permitted sender) smtp.mailfrom=asarmanow@gmail.com
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1620916104;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=ILXGc7pZPTVZdpBxMudBcnI0m+cQ8P0sZXkvqXOPXaM=;
	b=G4K/q6kb0W5CQQ5mNz9kHcwN6z8hMXKR08uiJjEHPGKniIR6BruhofNapPqYtvCYy20Ff/
	a8ReUQ6tgvZH2x8HixagkQD+0ar5GFj1U5W2+RqzNyhCqv08AwzCQCJd2nd5VJSlbiqG6L
	XjtWMnN3j5yqvvotTWPsw+fQ/VZapFw=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: Y26I64RPZJ6SALRECZPMPIMZ3QFKYP54
X-Message-ID-Hash: Y26I64RPZJ6SALRECZPMPIMZ3QFKYP54
X-MailFrom: asarmanow@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: b.a.t.m.a.n@lists.open-mesh.org, Alexander Sarmanow <asarmanow@gmail.com>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/Y26I64RPZJ6SALRECZPMPIMZ3QFKYP54/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

This is the JSON analogue of the transglobal table. By using the
netlink_query_common function to query the available netlink attributes.

Signed-off-by: Alexander Sarmanow <asarmanow@gmail.com>
---
 Makefile           |  1 +
 README.rst         | 15 +++++++++
 man/batctl.8       |  3 ++
 transglobal_json.c | 81 ++++++++++++++++++++++++++++++++++++++++++++++
 4 files changed, 100 insertions(+)
 create mode 100644 transglobal_json.c

diff --git a/Makefile b/Makefile
index 874dc2f..cea3271 100755
--- a/Makefile
+++ b/Makefile
@@ -72,6 +72,7 @@ $(eval $(call add_command,throughput_override,y))
 $(eval $(call add_command,throughputmeter,y))
 $(eval $(call add_command,traceroute,y))
 $(eval $(call add_command,transglobal,y))
+$(eval $(call add_command,transglobal_json,y))
 $(eval $(call add_command,translate,y))
 $(eval $(call add_command,translocal,y))
=20
diff --git a/README.rst b/README.rst
index f0ce43a..905e313 100644
--- a/README.rst
+++ b/README.rst
@@ -687,6 +687,21 @@ Flags that mean:
 If any of the flags is not enabled, a '.' will substitute its symbol.
=20
=20
+batctl transglobal_json
+=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
+
+display the global translation JSON (analogue of the transglobal table)
+
+Usage::
+
+  batctl transglobal_json|tgj
+
+Example::
+
+  $ batctl translglobal_json
+  [{"orig_address":"fe:fe:00:00:01:01","tt_address":"33:33:00:00:00:01",=
"tt_ttvn":3,"last_ttvn":3,"crc32":1916279217,"tt_vid":0,"tt_flags":0,"bes=
t":true},{"orig_address":"fe:fe:00:00:01:02","tt_address":"33:33:00:00:00=
:02","tt_ttvn":3,"last_ttvn":3,"crc32":1916279217,"tt_vid":0,"tt_flags":0=
}]
+
+
 batctl dat_cache
 =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
=20
diff --git a/man/batctl.8 b/man/batctl.8
index 1130a81..97d5738 100644
--- a/man/batctl.8
+++ b/man/batctl.8
@@ -309,6 +309,9 @@ List of debug JSONs:
 .RS 10
 \- originators_json|oj
 .RE
+.RS 10
+\- transglobal_json|tgj
+.RE
 .RE
 .br
 .IP "[\fBmeshif <netdev>\fP] \fBtranslate\fP|\fBt\fP \fBMAC_address\fP|\=
fBbat\-host_name\fP|\fBhost_name\fP|\fBIP_address\fP"
diff --git a/transglobal_json.c b/transglobal_json.c
new file mode 100644
index 0000000..612ffb8
--- /dev/null
+++ b/transglobal_json.c
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
+static int transglobal_json_callback(struct nl_msg *msg, void *arg)
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
+	if (ghdr->cmd !=3D BATADV_CMD_GET_TRANSTABLE_GLOBAL)
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
+static int netlink_print_transglobal_json(struct state *state)
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
+				   BATADV_CMD_GET_TRANSTABLE_GLOBAL,
+				   transglobal_json_callback,
+				   NLM_F_DUMP, &json_opts.query_opts);
+	puts("]\n");
+
+	return ret;
+}
+
+static struct debug_json_data batctl_debug_json_transglobal =3D {
+	.netlink_fn =3D netlink_print_transglobal_json,
+};
+
+COMMAND_NAMED(DEBUGJSON, transglobal_json, "tgj", handle_debug_json,
+	      COMMAND_FLAG_MESH_IFACE | COMMAND_FLAG_NETLINK,
+	      &batctl_debug_json_transglobal, "");
--=20
2.25.1
