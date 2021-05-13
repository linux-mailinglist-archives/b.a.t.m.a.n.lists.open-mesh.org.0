Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 2727337F95C
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 13 May 2021 16:08:03 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id E813282F32;
	Thu, 13 May 2021 16:08:01 +0200 (CEST)
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com [IPv6:2a00:1450:4864:20::630])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 565C8809F3
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 13 May 2021 16:07:59 +0200 (CEST)
Received: by mail-ej1-x630.google.com with SMTP id b25so39983679eju.5
        for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 13 May 2021 07:07:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=wtAuKjcvI4XV5M67/OVX86oWn/5Psw6Q3W/5zt41k8k=;
        b=hqlD//yEIBB0yAQw7nSfLkWqus+Jo0xY4vhK4JGnJwPuHVmDmhR9dqh+NqhXXQrxIe
         YQi+Nb4MaAj2U8mYBkpmvWX9hKMf63UWtn6g+V0jKNp1YYNSd8u+jFMrpHUUeGvKbu9n
         VfLaduD1xpgUAzigxlnvv/C6TsQDe12w5R+PVV4rWypvv8dT8YD6SN21N80hkYatsut2
         +TIBTCWT+ddh35yLsdZbrSuXHlmc7+75FocvyGtT+A+ZU8/3W7BEHj/rSs76a3RA+PV5
         nWNXu9PtTanlLTOb9Jgg45iDTdbbL7KqpgnNssdQhhRhLr9kpKtzpKTl/k+31+BdPMve
         svOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=wtAuKjcvI4XV5M67/OVX86oWn/5Psw6Q3W/5zt41k8k=;
        b=bcmP/jvG/FqNKgeKiqPkW+X+hCBClxSjwecS0ZGJIVRFH9PV15eIXYXSO0yi4Udndw
         Zfx2wL0+DokZWq78+2TWihFVpQ1+9s0/Pf7NeFp4Plb9M6PJt74Rl5MIgxQ+moDmbEf1
         Xq9fXSWWdQYjDn7ZE632qpBTqVYvA2atnnKRMrr2ue+UjEIHG+GVEdu37kTT2mYVxhJc
         reIEQ58QWrgxc7i+34+MFQJFI42WXnqLC2XrNiPJAcGev3eViYge5dfvRO7ejsNpiIw/
         ACImpc1d7NXn5fGYMdHjburL1i9hMCKA65hHuUHJasPdMCVQUdhX+DINd5dqI4C0G28s
         CPSg==
X-Gm-Message-State: AOAM532Z66ZC2kkQx6pdzZAi2YFNMRS+mF7Te8miqNd/fll6blPaSl3V
	GOAgZfY/HTAkDIjZ89ptLwK5+mC5+qilhebadM8=
X-Google-Smtp-Source: ABdhPJxi/ZYpGiXPcEsYt7OWIy73zd175QH7qqURQdyk/ua/23Q14fGhd3lM2uUeMc+yzGlyIASk5A==
X-Received: by 2002:a17:907:7634:: with SMTP id jy20mr43823158ejc.553.1620914577941;
        Thu, 13 May 2021 07:02:57 -0700 (PDT)
Received: from machine.fritz.box (p4fc0a3a3.dip0.t-ipconnect.de. [79.192.163.163])
        by smtp.googlemail.com with ESMTPSA id by20sm1825055ejc.74.2021.05.13.07.02.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 May 2021 07:02:57 -0700 (PDT)
From: Alexander Sarmanow <asarmanow@gmail.com>
To: sven@narfation.org
Subject: [PATCH v3 2/2] batctl: genl_json: Add generic JSON interface
Date: Thu, 13 May 2021 16:02:34 +0200
Message-Id: <20210513140234.1624460-3-asarmanow@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210513140234.1624460-1-asarmanow@gmail.com>
References: <20210513140234.1624460-1-asarmanow@gmail.com>
MIME-Version: 1.0
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1620914879; a=rsa-sha256;
	cv=none;
	b=fm7h54Dh3ZWE4j0b32cnauxIi1nP1cF/XElKHVfDeah6ppopp3A25nIxq2hxIqKh2nxWqc
	GC1kn7bwMyMG9BVTpgmk8/BUlXO3a110ajw4pI+0WJN1Z6OQH+qpc0M+doE06WJGKnDlGV
	ujSiVGmlx0LBT8g13DqrTtiq2JvJm0A=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=gmail.com header.s=20161025 header.b="hqlD//yE";
	spf=pass (diktynna.open-mesh.org: domain of asarmanow@gmail.com designates 2a00:1450:4864:20::630 as permitted sender) smtp.mailfrom=asarmanow@gmail.com
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1620914879;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=wtAuKjcvI4XV5M67/OVX86oWn/5Psw6Q3W/5zt41k8k=;
	b=wiWpjsI/fyMpDPzPG3ulP6xpbAXimwGy53wV0IAr+SIUE94fNrB0tLcfs8jQT4BvYeV3cP
	lcpDdwyOwvVysDhyZVwAdir4cMKhzMQsgF0GVgIjqIaHX9lRKbgDGexYfK0x6cKQ2QJkQq
	JNO1/k4/jCuqq4ysTjNA5kn20D5vehk=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: 27SOHXCAC23NPKTLKWSEAN3BWYSB7BF6
X-Message-ID-Hash: 27SOHXCAC23NPKTLKWSEAN3BWYSB7BF6
X-MailFrom: asarmanow@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: b.a.t.m.a.n@lists.open-mesh.org, Alexander Sarmanow <asarmanow@gmail.com>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/27SOHXCAC23NPKTLKWSEAN3BWYSB7BF6/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

To print JSON strings in a generic way a second nla_policy is used, with
a name (dict key) and a callback function for each entry corresponding
to its formats.
There are multiple callback functions created, depending on the NLA
type.

Signed-off-by: Alexander Sarmanow <asarmanow@gmail.com>
---
 Makefile    |   1 +
 genl_json.c | 359 ++++++++++++++++++++++++++++++++++++++++++++++++++++
 genl_json.h |  24 ++++
 netlink.h   |   6 +
 4 files changed, 390 insertions(+)
 create mode 100644 genl_json.c
 create mode 100644 genl_json.h

diff --git a/Makefile b/Makefile
index 98bf695..cee4f0c 100755
--- a/Makefile
+++ b/Makefile
@@ -16,6 +16,7 @@ obj-y +=3D bat-hosts.o
 obj-y +=3D debug.o
 obj-y +=3D functions.o
 obj-y +=3D genl.o
+obj-y +=3D genl_json.o
 obj-y +=3D hash.o
 obj-y +=3D icmp_helper.o
 obj-y +=3D main.o
diff --git a/genl_json.c b/genl_json.c
new file mode 100644
index 0000000..cff54d8
--- /dev/null
+++ b/genl_json.c
@@ -0,0 +1,359 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/* Copyright (C) B.A.T.M.A.N. contributors:
+ *
+ * Alexander Sarmanow <asarmanow@gmail.com>
+ *
+ * License-Filename: LICENSES/preferred/GPL-2.0
+ */
+
+#include <stdbool.h>
+#include <stdio.h>
+#include <ctype.h>
+#include <netlink/netlink.h>
+#include <netlink/attr.h>
+
+#include "genl_json.h"
+#include "batman_adv.h"
+#include "netlink.h"
+#include "main.h"
+
+static void nljson_print_str(struct nlattr *attrs[], int idx)
+{
+	const char *value;
+
+	value =3D nla_get_string(attrs[idx]);
+
+	putc('"', stdout);
+	sanitize_string(value);
+	putc('"', stdout);
+}
+
+static void nljson_print_uint8_t(struct nlattr *attrs[], int idx)
+{
+	uint8_t value =3D nla_get_u8(attrs[idx]);
+
+	printf("%u", value);
+}
+
+static void nljson_print_uint16_t(struct nlattr *attrs[], int idx)
+{
+	uint16_t value =3D nla_get_u16(attrs[idx]);
+
+	printf("%u", value);
+}
+
+static void nljson_print_uint32_t(struct nlattr *attrs[], int idx)
+{
+	uint32_t value =3D nla_get_u32(attrs[idx]);
+
+	printf("%u", value);
+}
+
+static void nljson_print_uint64_t(struct nlattr *attrs[], int idx)
+{
+	uint64_t value =3D nla_get_u64(attrs[idx]);
+
+	printf("%llu", value);
+}
+
+static void nljson_print_mac(struct nlattr *attrs[], int idx)
+{
+	uint8_t *value =3D nla_data(attrs[idx]);
+
+	printf("\"%02x:%02x:%02x:%02x:%02x:%02x\"",
+		value[0], value[1], value[2], value[3], value[4], value[5]);
+}
+
+static void nljson_print_flag(struct nlattr *attrs[], int idx)
+{
+	if (nla_get_flag(attrs[idx]))
+		printf("true");
+}
+
+void sanitize_string(const char *str)
+{
+	while (*str) {
+		if (*str =3D=3D '"' || *str =3D=3D '\\') {
+			putchar('\\');
+			putchar(*str);
+		} else if (*str =3D=3D '\\') {
+			printf("\\\\");
+		} else if (!isprint(*str)) {
+			printf("\\x%02x", *str);
+		} else {
+			printf("%c", *str);
+		}
+		str++;
+	}
+}
+
+void netlink_print_json_entries(struct nlattr *attrs[], struct json_opts=
 *json_opts)
+{
+	bool first_valid_attr =3D true;
+	int i;
+
+	if (!json_opts->is_first)
+		printf(",");
+
+	printf("{");
+	for (i =3D 0; i < BATADV_ATTR_MAX + 1; i++) {
+		if (!attrs[i])
+			continue;
+
+		if (!batadv_netlink_policy_json[i].cb)
+			continue;
+
+		if (!first_valid_attr)
+			printf(",");
+
+		putc('"', stdout);
+		sanitize_string(batadv_netlink_policy_json[i].name);
+		printf("\":");
+		batadv_netlink_policy_json[i].cb(attrs, i);
+
+		first_valid_attr =3D false;
+	}
+	printf("}");
+}
+
+
+struct nla_policy_json batadv_netlink_policy_json[NUM_BATADV_ATTR] =3D {
+	[BATADV_ATTR_VERSION] =3D {
+		.name =3D "version",
+		.cb =3D nljson_print_str,
+	},
+	[BATADV_ATTR_ALGO_NAME] =3D {
+		.name =3D "algo_name",
+		.cb =3D nljson_print_str,
+	},
+	[BATADV_ATTR_MESH_IFINDEX] =3D {
+		.name =3D "mesh_ifindex",
+		.cb =3D nljson_print_uint32_t,
+	},
+	[BATADV_ATTR_MESH_IFNAME] =3D {
+		.name =3D "mesh_ifname",
+		.cb =3D nljson_print_str,
+	},
+	[BATADV_ATTR_MESH_ADDRESS] =3D {
+		.name =3D "mesh_address",
+		.cb =3D nljson_print_mac,
+	},
+	[BATADV_ATTR_HARD_IFINDEX] =3D {
+		.name =3D "hard_ifindex",
+		.cb =3D nljson_print_uint32_t,
+	},
+	[BATADV_ATTR_HARD_IFNAME] =3D {
+		.name =3D "hard_ifname",
+		.cb =3D nljson_print_str,
+	},
+	[BATADV_ATTR_HARD_ADDRESS] =3D {
+		.name =3D "hard_address",
+		.cb =3D nljson_print_mac,
+	},
+	[BATADV_ATTR_ORIG_ADDRESS] =3D {
+		.name =3D "orig_address",
+		.cb =3D nljson_print_mac,
+	},
+	[BATADV_ATTR_TPMETER_RESULT] =3D {
+		.name =3D "tpmeter_result",
+		.cb =3D nljson_print_uint8_t,
+	},
+	[BATADV_ATTR_TPMETER_TEST_TIME] =3D {
+		.name =3D "tpmeter_test_time",
+		.cb =3D nljson_print_uint32_t,
+	},
+	[BATADV_ATTR_TPMETER_BYTES] =3D {
+		.name =3D "tpmeter_bytes",
+		.cb =3D nljson_print_uint64_t
+	},
+	[BATADV_ATTR_TPMETER_COOKIE] =3D {
+		.name =3D "tpmeter_cookie",
+		.cb =3D nljson_print_uint32_t,
+	},
+	[BATADV_ATTR_PAD] =3D {
+		.name =3D "pad",
+	},
+	[BATADV_ATTR_ACTIVE] =3D {
+		.name =3D "active",
+		.cb =3D nljson_print_flag,
+	},
+	[BATADV_ATTR_TT_ADDRESS] =3D {
+		.name =3D "tt_address",
+		.cb =3D nljson_print_mac,
+	},
+	[BATADV_ATTR_TT_TTVN] =3D {
+		.name =3D "tt_ttvn",
+		.cb =3D nljson_print_uint8_t,
+	},
+	[BATADV_ATTR_TT_LAST_TTVN] =3D {
+		.name =3D "last_ttvn",
+		.cb =3D nljson_print_uint8_t,
+	},
+	[BATADV_ATTR_TT_CRC32] =3D {
+		.name =3D "crc32",
+		.cb =3D nljson_print_uint32_t,
+	},
+	[BATADV_ATTR_TT_VID] =3D {
+		.name =3D "tt_vid",
+		.cb =3D nljson_print_uint16_t,
+	},
+	[BATADV_ATTR_TT_FLAGS] =3D {
+		.name =3D "tt_flags",
+		.cb =3D nljson_print_uint32_t,
+	},
+	[BATADV_ATTR_FLAG_BEST] =3D {
+		.name =3D "best",
+		.cb =3D nljson_print_flag,
+	},
+	[BATADV_ATTR_LAST_SEEN_MSECS] =3D {
+		.name =3D "last_seen_msecs",
+		.cb =3D nljson_print_uint32_t,
+	},
+	[BATADV_ATTR_NEIGH_ADDRESS] =3D {
+		.name =3D "neigh_address",
+		.cb =3D nljson_print_mac,
+	},
+	[BATADV_ATTR_TQ] =3D {
+		.name =3D "tq",
+		.cb =3D nljson_print_uint8_t,
+	},
+	[BATADV_ATTR_THROUGHPUT] =3D {
+		.name =3D "throughput",
+		.cb =3D nljson_print_uint32_t,
+	},
+	[BATADV_ATTR_BANDWIDTH_UP] =3D {
+		.name =3D "bandwidth_up",
+		.cb =3D nljson_print_uint32_t,
+	},
+	[BATADV_ATTR_BANDWIDTH_DOWN] =3D {
+		.name =3D "bandwidth_down",
+		.cb =3D nljson_print_uint32_t,
+	},
+	[BATADV_ATTR_ROUTER] =3D {
+		.name =3D "router",
+		.cb =3D nljson_print_mac,
+	},
+	[BATADV_ATTR_BLA_OWN] =3D {
+		.name =3D "bla_own",
+		.cb =3D nljson_print_flag,
+	},
+	[BATADV_ATTR_BLA_ADDRESS] =3D {
+		.name =3D "bla_address",
+		.cb =3D nljson_print_mac,
+	},
+	[BATADV_ATTR_BLA_VID] =3D {
+		.name =3D "bla_vid",
+		.cb =3D nljson_print_uint16_t,
+	},
+	[BATADV_ATTR_BLA_BACKBONE] =3D {
+		.name =3D "bla_backbone",
+		.cb =3D nljson_print_mac,
+	},
+	[BATADV_ATTR_BLA_CRC] =3D {
+		.name =3D "bla_crc",
+		.cb =3D nljson_print_uint16_t,
+	},
+	[BATADV_ATTR_DAT_CACHE_IP4ADDRESS] =3D {
+		.name =3D "dat_cache_ip4_address",
+	},
+	[BATADV_ATTR_DAT_CACHE_HWADDRESS] =3D {
+		.name =3D "dat_cache_hw_address",
+		.cb =3D nljson_print_mac,
+	},
+	[BATADV_ATTR_DAT_CACHE_VID] =3D {
+		.name =3D "dat_cache_vid",
+		.cb =3D nljson_print_uint16_t,
+	},
+	[BATADV_ATTR_MCAST_FLAGS] =3D {
+		.name =3D "mcast_flags",
+		.cb =3D nljson_print_uint32_t,
+	},
+	[BATADV_ATTR_MCAST_FLAGS_PRIV] =3D {
+		.name =3D "mcast_flags_priv",
+		.cb =3D nljson_print_uint32_t,
+	},
+	[BATADV_ATTR_VLANID] =3D {
+		.name =3D "vlan_id",
+		.cb =3D nljson_print_uint16_t,
+	},
+	[BATADV_ATTR_AGGREGATED_OGMS_ENABLED] =3D {
+		.name =3D "aggregated_ogms_enabled",
+		.cb =3D nljson_print_uint8_t,
+	},
+	[BATADV_ATTR_AP_ISOLATION_ENABLED] =3D {
+		.name =3D "ap_isolation_enabled",
+		.cb =3D nljson_print_uint8_t,
+	},
+	[BATADV_ATTR_ISOLATION_MARK] =3D {
+		.name =3D "isolation_mark",
+		.cb =3D nljson_print_uint32_t,
+	},
+	[BATADV_ATTR_ISOLATION_MASK] =3D {
+		.name =3D "isolation_mask",
+		.cb =3D nljson_print_uint32_t,
+	},
+	[BATADV_ATTR_BONDING_ENABLED] =3D {
+		.name =3D "bonding_enabled",
+		.cb =3D nljson_print_uint8_t,
+	},
+	[BATADV_ATTR_BRIDGE_LOOP_AVOIDANCE_ENABLED] =3D {
+		.name =3D "bridge_loop_avoidance_enabled",
+		.cb =3D nljson_print_uint8_t,
+	},
+	[BATADV_ATTR_DISTRIBUTED_ARP_TABLE_ENABLED] =3D {
+		.name =3D "distributed_arp_table_enabled",
+		.cb =3D nljson_print_uint8_t,
+	},
+	[BATADV_ATTR_FRAGMENTATION_ENABLED] =3D {
+		.name =3D "fragmented_enabled",
+		.cb =3D nljson_print_uint8_t,
+	},
+	[BATADV_ATTR_GW_BANDWIDTH_DOWN] =3D {
+		.name =3D "bandwidth_down",
+		.cb =3D nljson_print_uint32_t,
+	},
+	[BATADV_ATTR_GW_BANDWIDTH_UP] =3D {
+		.name =3D "bandwidth_up",
+		.cb =3D nljson_print_uint32_t,
+	},
+	[BATADV_ATTR_GW_MODE] =3D {
+		.name =3D "gw_mode",
+		.cb =3D nljson_print_uint8_t,
+	},
+	[BATADV_ATTR_GW_SEL_CLASS] =3D {
+		.name =3D "gw_sel_class",
+		.cb =3D nljson_print_uint32_t,
+	},
+	[BATADV_ATTR_HOP_PENALTY] =3D {
+		.name =3D "hop_penalty",
+		.cb =3D nljson_print_uint8_t,
+	},
+	[BATADV_ATTR_LOG_LEVEL] =3D {
+		.name =3D "log_level",
+		.cb =3D nljson_print_uint32_t,
+	},
+	[BATADV_ATTR_MULTICAST_FORCEFLOOD_ENABLED] =3D {
+		.name =3D "multicast_forceflood_enabled",
+		.cb =3D nljson_print_uint8_t,
+	},
+	[BATADV_ATTR_NETWORK_CODING_ENABLED] =3D {
+		.name =3D "network_coding_enabled",
+		.cb =3D nljson_print_uint8_t,
+	},
+	[BATADV_ATTR_ORIG_INTERVAL] =3D {
+		.name =3D "orig_interval",
+		.cb =3D nljson_print_uint32_t,
+	},
+	[BATADV_ATTR_ELP_INTERVAL] =3D {
+		.name =3D "elp_interval",
+		.cb =3D nljson_print_uint32_t,
+	},
+	[BATADV_ATTR_THROUGHPUT_OVERRIDE] =3D {
+		.name =3D "throughput_override",
+		.cb =3D nljson_print_uint32_t,
+	},
+	[BATADV_ATTR_MULTICAST_FANOUT] =3D {
+		.name =3D "multicast_fanout",
+		.cb =3D nljson_print_uint32_t,
+	},
+};
diff --git a/genl_json.h b/genl_json.h
new file mode 100644
index 0000000..0336b40
--- /dev/null
+++ b/genl_json.h
@@ -0,0 +1,24 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/* Copyright (C) B.A.T.M.A.N. contributors:
+ *
+ * Alexander Sarmanow <asarmanow@gmail.com>
+ *
+ * License-Filename: LICENSES/preferred/GPL-2.0
+ */
+
+#ifndef _BATCTL_GENLJSON_H
+#define _BATCTL_GENLJSON_H
+
+#include <stdint.h>
+
+#include "netlink.h"
+
+struct json_opts {
+	uint8_t is_first;
+	struct nlquery_opts query_opts;
+};
+
+void netlink_print_json_entries(struct nlattr *attrs[], struct json_opts=
 *json_opts);
+void sanitize_string(const char *str);
+
+#endif /* _BATCTL_GENLJSON_H */
diff --git a/netlink.h b/netlink.h
index c93f500..d96935a 100644
--- a/netlink.h
+++ b/netlink.h
@@ -29,6 +29,11 @@ struct nlquery_opts {
 	int err;
 };
=20
+struct nla_policy_json {
+	const char *name;
+	void (*cb)(struct nlattr *attrs[], int idx);
+};
+
 struct ether_addr;
=20
 int netlink_create(struct state *state);
@@ -44,6 +49,7 @@ int get_algoname_netlink(struct state *state, unsigned =
int mesh_ifindex,
 			 char *algoname, size_t algoname_len);
=20
 extern struct nla_policy batadv_netlink_policy[];
+extern struct nla_policy_json batadv_netlink_policy_json[];
=20
 int missing_mandatory_attrs(struct nlattr *attrs[], const int mandatory[=
],
 			    int num);
--=20
2.25.1
