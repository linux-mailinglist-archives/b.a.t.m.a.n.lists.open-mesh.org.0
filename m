Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id CF53637F9A7
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 13 May 2021 16:28:29 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 14E4284037;
	Thu, 13 May 2021 16:28:26 +0200 (CEST)
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com [IPv6:2a00:1450:4864:20::636])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 277A68020F
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 13 May 2021 16:28:23 +0200 (CEST)
Received: by mail-ej1-x636.google.com with SMTP id b25so40082767eju.5
        for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 13 May 2021 07:28:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=I4axOVpVYWIanTOId1MFNV4mjMtkoG3LGpmN0oXzQcg=;
        b=b3fcNPZZqR+ZFQ1Av0vF0RvIXOy492Sd6GLhfthuK08h4aY2JkLt6heWK567KA8n6o
         RziaE1hY4AhVhZYKgdAwVCkEHfSkOfGiiUWQO/8n9GRZF5gt9vBHi6Feu0hY15wnqHMj
         g/Ov/804ob87DBRZKOjg+Gf0JVepDMkyQ0B9t2d5mmEYzFiedC138hvLHqLdeYokO5IV
         jx+yuhW/E4Pbo5Cx9iz43KvgoSdBXK7/iG53SIFZzDBsYKq8Yd3BEOxAeHSAeXbRNsT9
         v+dgfiY8ezYPuEASE/4QKoVytSmkvxkUbGyWX7wfqu6EtXXfcloSndR40m5c3H8CebfA
         Z25g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=I4axOVpVYWIanTOId1MFNV4mjMtkoG3LGpmN0oXzQcg=;
        b=eRTqPlXtrJrhKRU73yq7Q97slCq1ORLCwyUCtxFgGYeZBFB7Q13+DbCoTyzPeUlcsb
         9NX6UAgD8AwGy217DuYVute/MH2tZWgR/kMUJpXSYdygEQxcxvb6yAW+tGO36+QLXUOl
         esyzQttSQSNxF1GjOiK4u22T9Nj3qApIPMQPMM6h0e7GT8pxf18cZqtiesv2S1RwhIaA
         aYgyTkdJKwuCJ5gRDvX8gcXwWYbSi3D+bi92RpOe1a3GWNbrsMMPyJ6h2EDk/YPqsS4f
         xfTdCOfYMzAA1s/xY0ztZamdyFNKdPOXbu//0r+wQpU8EHCXvUAe1IOCNBDN6YT6gb5P
         sQBA==
X-Gm-Message-State: AOAM530YvHOXHiLY01J+hYWuS7GO1sSvUJzLylufytr8HFzGhqmtdwyg
	MVxMb+jjqvdZBk/WZs/iZRM=
X-Google-Smtp-Source: ABdhPJzGeSt+onnpVaAJ9R/cjifQovM9QpYFofvZG5fk/cpVBer8wXXM6RMRl4grZkzNiL1jSoKycQ==
X-Received: by 2002:a17:906:84d:: with SMTP id f13mr650745ejd.451.1620916102781;
        Thu, 13 May 2021 07:28:22 -0700 (PDT)
Received: from machine.fritz.box (p4fc0a3a3.dip0.t-ipconnect.de. [79.192.163.163])
        by smtp.googlemail.com with ESMTPSA id yw9sm1897153ejb.91.2021.05.13.07.28.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 May 2021 07:28:22 -0700 (PDT)
From: Alexander Sarmanow <asarmanow@gmail.com>
To: sven@narfation.org
Subject: [PATCH v3 1/4] batctl: originators_json: Add originators_json command
Date: Thu, 13 May 2021 16:28:09 +0200
Message-Id: <20210513142812.1707215-2-asarmanow@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210513142812.1707215-1-asarmanow@gmail.com>
References: <20210513142812.1707215-1-asarmanow@gmail.com>
MIME-Version: 1.0
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1620916103; a=rsa-sha256;
	cv=none;
	b=iqzk15+GlkuhX/a8wEuAq4L49XtPEfgF51V23s9ZOD9sdy4941bGX+vGS/wxjtGYcdAqmW
	lid/0wtKE4Wny/RJqkeK8gd6pBzQtBmWUO2F8viKa0qAKOqVWwaaSsqCYFc69ST+T6AWEz
	WxdGOXVT/5ROo0hOXjnmBw6rtyFt5VY=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=gmail.com header.s=20161025 header.b=b3fcNPZZ;
	spf=pass (diktynna.open-mesh.org: domain of asarmanow@gmail.com designates 2a00:1450:4864:20::636 as permitted sender) smtp.mailfrom=asarmanow@gmail.com
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1620916103;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=I4axOVpVYWIanTOId1MFNV4mjMtkoG3LGpmN0oXzQcg=;
	b=JCMoeMpiGSCke08dXyY/HKVllY9inZYuL/YR9aNcubD2Mi7mZRJL0UoVuA385BuvBvCXW/
	Zroe/dBZUqiqMoIcAR1FjsdztJELv79Zy5S65VBt2JiFPTHZMk0YvxL7smqWHtJmOHUiBQ
	T9Df6nKTWjc9q9wukgjM3E2lvLtdszU=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: 64HBMJGIGI5K6O7PQWGXHMQ6MPI6QA5M
X-Message-ID-Hash: 64HBMJGIGI5K6O7PQWGXHMQ6MPI6QA5M
X-MailFrom: asarmanow@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: b.a.t.m.a.n@lists.open-mesh.org, Alexander Sarmanow <asarmanow@gmail.com>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/64HBMJGIGI5K6O7PQWGXHMQ6MPI6QA5M/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

This is the JSON analogue of the originators table. By using the
netlink_query_common function to query the available netlink attributes.

Signed-off-by: Alexander Sarmanow <asarmanow@gmail.com>
---
 Makefile           |  1 +
 README.rst         | 15 +++++++++
 man/batctl.8       |  3 ++
 originators_json.c | 84 ++++++++++++++++++++++++++++++++++++++++++++++
 4 files changed, 103 insertions(+)
 create mode 100644 originators_json.c

diff --git a/Makefile b/Makefile
index cee4f0c..9dfcfde 100755
--- a/Makefile
+++ b/Makefile
@@ -62,6 +62,7 @@ $(eval $(call add_command,neighbors,y))
 $(eval $(call add_command,network_coding,y))
 $(eval $(call add_command,orig_interval,y))
 $(eval $(call add_command,originators,y))
+$(eval $(call add_command,originators_json,y))
 $(eval $(call add_command,ping,y))
 $(eval $(call add_command,routing_algo,y))
 $(eval $(call add_command,statistics,y))
diff --git a/README.rst b/README.rst
index 9c55ad5..c884bb3 100644
--- a/README.rst
+++ b/README.rst
@@ -356,6 +356,21 @@ Example::
   fe:f0:00:00:01:01    0.510s   (255) fe:f0:00:00:01:01 [      eth0]: fe=
:f1:00:00:01:01 (240) fe:f0:00:00:01:01 (255)
=20
=20
+batctl originators_json
+=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
+
+Check the Originators JSON (it's a JSON analogue of the Originators tabl=
e)
+
+Usage::
+
+  batctl originators_json|oj
+
+Example::
+
+  $ batctl originators_json
+  [{"hard_ifindex":7,"orig_address":"fe:fe:00:00:01:01","best":true,"las=
t_seen_msecs":700,"neigh_address":"fe:fe:00:00:02:01","tq":119},{"hard_if=
index":2,"orig_address":"fe:fe:00:00:03:01","best":true,"last_seen_msecs"=
:1040,"neigh_address":"fe:fe:00:00:02:01","tq":116},{"hard_ifindex":7,"or=
ig_address":"fe:fe:00:00:04:01","best":true,"last_seen_msecs":700,"neigh_=
address":"fe:fe:00:00:02:01","tq":119},{"hard_ifindex":2,"orig_address":"=
fe:fe:00:00:05:01","best":true,"last_seen_msecs":270,"neigh_address":"fe:=
fe:00:00:02:01","tq":140},{"hard_ifindex":2,"orig_address":"fe:fe:00:00:0=
6:01","best":true,"last_seen_msecs":770,"neigh_address":"fe:fe:00:00:02:0=
1","tq":91}]
+
+
 batctl interface
 =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
=20
diff --git a/man/batctl.8 b/man/batctl.8
index b2abedc..155791d 100644
--- a/man/batctl.8
+++ b/man/batctl.8
@@ -303,6 +303,9 @@ seen by each individual node.
=20
 .RS 7
 List of debug JSONs:
+.RS 10
+\- originators_json|oj
+.RE
 .RE
 .br
 .IP "[\fBmeshif <netdev>\fP] \fBtranslate\fP|\fBt\fP \fBMAC_address\fP|\=
fBbat\-host_name\fP|\fBhost_name\fP|\fBIP_address\fP"
diff --git a/originators_json.c b/originators_json.c
new file mode 100644
index 0000000..fc71098
--- /dev/null
+++ b/originators_json.c
@@ -0,0 +1,84 @@
+// SPDX-License-Identifier: GPL-2.0
+/* Copyright (C) B.A.T.M.A.N. contributors:
+ *
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
+#include "batman_adv.h"
+#include "debug.h"
+#include "main.h"
+#include "netlink.h"
+#include "genl_json.h"
+
+static int originators_json_callback(struct nl_msg *msg, void *arg)
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
+	if (ghdr->cmd !=3D BATADV_CMD_GET_ORIGINATORS)
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
+static int netlink_print_originators_json(struct state *state)
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
+				   BATADV_CMD_GET_ORIGINATORS,
+				   originators_json_callback,
+				   NLM_F_DUMP, &json_opts.query_opts);
+	puts("]\n");
+
+	return ret;
+}
+
+static struct debug_json_data batctl_debug_json_originators =3D {
+	.netlink_fn =3D netlink_print_originators_json,
+};
+
+COMMAND_NAMED(DEBUGJSON, originators_json, "oj", handle_debug_json,
+	      COMMAND_FLAG_MESH_IFACE | COMMAND_FLAG_NETLINK,
+	      &batctl_debug_json_originators, "");
--=20
2.25.1
