Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id B9D3437696A
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri,  7 May 2021 19:20:51 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 68CBE80701;
	Fri,  7 May 2021 19:20:50 +0200 (CEST)
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 1CD5C8026B
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri,  7 May 2021 19:20:46 +0200 (CEST)
Received: by mail-wm1-x32b.google.com with SMTP id s82so5661573wmf.3
        for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 07 May 2021 10:20:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=+pTRqh5MTjtsbALCsfMCgXFpMgKxXlX9vWz/DxIsKzI=;
        b=jPL6717ifOx3q+RZZUhxM1wiTApIlcePAvmH/k6XsRRyJYpTzSN+0TjLXAQ/fU8KGW
         IqgLUfwjdYHpQ4kwJTCl6vZGIseoimVN2VyHd6c9myAIvzyUm2+vdTKJkwxy3qOkxMtR
         ZAH4cYb1uhmQZao1HhaIhoti7JowP7ux3Ogo84jZPRdUNe611DlYARLZWLEfJqNulR8E
         D/D2mSCuM67+4fz96oNOIQR3YViHHkeACyICxY6o/dqUWPqYjDRh4l43kbjDJljrTSxZ
         IMEgTSpiI98/DujQy4kQlfvssxs58MD9Tz+k5jxuRwCc8H5p4/fvL4G4l46VzRGDHJLe
         Sw7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=+pTRqh5MTjtsbALCsfMCgXFpMgKxXlX9vWz/DxIsKzI=;
        b=Jl0YkUWwdz3fmPJjnZ8MCqkrkjP+ZmwEc3TCgqNGs0P7yDKKn2cn9/ov0MNdPNJuaj
         sEMaL7PYoAM2iK9DNbIx7WfgecCz7cNmV9DpvZsZLPYmKJQted/ELEwFlX6M4R9F3NmX
         KVRMLTfcdk0NJh0eN0kwq1+5npKzohSgt/XZP7bWEDqSZ9QubsqV7RNzxEYkmMfPSPmF
         ZZhPtAwq7+4rfN+jx6VjnCgaoUotKrujc3SjDr1vghKfIesbemwqkuSbNKMwKHIMLa+b
         IK7mU21oSH0qMff0/0Hc6a8w5YIexmffhG/4OTa0fNccKgJIliMN60vavB0L1riUqonT
         TLTg==
X-Gm-Message-State: AOAM533GunR9vXgVp9/4szfVsossAp2nnE0F0IaOWTXSJ+hRzJ+uhcaE
	1LjHFHnoPe/bU24C4MM92+DQy6273vsiNR11
X-Google-Smtp-Source: ABdhPJzgr9pT4GDtO/JpfDSIQ+jOPM8TokiXCDLqPv5fyHW1GzyETYkdrnSJKQexOXA+IlazXVDhCQ==
X-Received: by 2002:a05:600c:2994:: with SMTP id r20mr22242909wmd.37.1620407664405;
        Fri, 07 May 2021 10:14:24 -0700 (PDT)
Received: from machine.fritz.box (p4fc0a3a3.dip0.t-ipconnect.de. [79.192.163.163])
        by smtp.googlemail.com with ESMTPSA id y14sm9572321wrr.82.2021.05.07.10.14.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 May 2021 10:14:23 -0700 (PDT)
From: Alexander Sarmanow <asarmanow@gmail.com>
To: sven@narfation.org
Subject: [PATCH v2 1/2] batctl: Add generic JSON interface
Date: Fri,  7 May 2021 19:14:14 +0200
Message-Id: <20210507171414.369399-1-asarmanow@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1620408047; a=rsa-sha256;
	cv=none;
	b=OcoryFzVS3Fnr5opKaafA1fTqMBZCbNRWOnPQQ6C/DLl/k1VMIAo5yOnLQ5a1QotPfRs5N
	SoyNC0YinLk9dD4UljDR4rvM5YF2EyYmUM5r7ExV49Ns/PekXb4exYwhDsFAxfdU0oNE6j
	3ycTaqOtnhqxp/u5KTRwmQMsRkCfGow=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=gmail.com header.s=20161025 header.b=jPL6717i;
	spf=pass (diktynna.open-mesh.org: domain of asarmanow@gmail.com designates 2a00:1450:4864:20::32b as permitted sender) smtp.mailfrom=asarmanow@gmail.com
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1620408047;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=+pTRqh5MTjtsbALCsfMCgXFpMgKxXlX9vWz/DxIsKzI=;
	b=FWRf/+oqH+14sD4eqbgftxvoX4E36IykhgyGrAQ8f+B3Y7vzvcvKAsm4fkK0hqDlL6VkZs
	M53GC84mXVEy+2Hegd1lZju7KgqwNn54kGEvBD6jY156JPd5LB9SAlKbk9hZFrw3mXralM
	eeQsNo/zOajLv/9f+UPxZvQCf1SXa9c=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: UK7VM2EYAVUYDO3T5ZWIDPYBD2UJSCC5
X-Message-ID-Hash: UK7VM2EYAVUYDO3T5ZWIDPYBD2UJSCC5
X-MailFrom: asarmanow@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: b.a.t.m.a.n@lists.open-mesh.org, Alexander Sarmanow <asarmanow@gmail.com>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/UK7VM2EYAVUYDO3T5ZWIDPYBD2UJSCC5/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

To print JSON strings in a generic way a second nla_policy is used, with
a name (dict key) and a callback function for each entry corresponding
to its formats.
There are multiple callback functions created, most of them are straight
forward. The nljson_print_ttflags() needed more logic behind it, because
of its dependency with the last_seen_msecs entry and whether local or
global table is requested.

Signed-off-by: Alexander Sarmanow <asarmanow@gmail.com>
---
 backbonetable.c |   2 +-
 claimtable.c    |   2 +-
 dat_cache.c     |   2 +-
 gateways.c      |   2 +-
 main.h          |   2 +
 mcast_flags.c   |   2 +-
 neighbors.c     |   2 +-
 netlink.c       | 282 +++++++++++++++++++++++++++++++++++++++++++++++-
 netlink.h       |  37 ++++++-
 originators.c   |   2 +-
 transglobal.c   |   2 +-
 translocal.c    |   2 +-
 12 files changed, 328 insertions(+), 11 deletions(-)

diff --git a/backbonetable.c b/backbonetable.c
index 17fbd1d..11cec32 100644
--- a/backbonetable.c
+++ b/backbonetable.c
@@ -98,7 +98,7 @@ static int netlink_print_bla_backbone(struct state *sta=
te, char *orig_iface,
 				    orig_timeout, watch_interval,
 				    "Originator           VID   last seen (CRC   )\n",
 				    BATADV_CMD_GET_BLA_BACKBONE,
-				    bla_backbone_callback);
+				    bla_backbone_callback, 0);
 }
=20
 static struct debug_table_data batctl_debug_table_backbonetable =3D {
diff --git a/claimtable.c b/claimtable.c
index b6bf9f5..0bf017d 100644
--- a/claimtable.c
+++ b/claimtable.c
@@ -103,7 +103,7 @@ static int netlink_print_bla_claim(struct state *stat=
e, char *orig_iface,
 				    orig_timeout, watch_interval,
 				    "Client               VID      Originator        [o] (CRC   )\n"=
,
 				    BATADV_CMD_GET_BLA_CLAIM,
-				    bla_claim_callback);
+				    bla_claim_callback, 0);
 }
=20
 static struct debug_table_data batctl_debug_table_claimtable =3D {
diff --git a/dat_cache.c b/dat_cache.c
index 8d47171..109e553 100644
--- a/dat_cache.c
+++ b/dat_cache.c
@@ -116,7 +116,7 @@ static int netlink_print_dat_cache(struct state *stat=
e, char *orig_iface,
 	ret =3D netlink_print_common(state, orig_iface, read_opts,
 				   orig_timeout, watch_interval, header,
 				   BATADV_CMD_GET_DAT_CACHE,
-				   dat_cache_callback);
+				   dat_cache_callback, 0);
=20
 	free(header);
 	return ret;
diff --git a/gateways.c b/gateways.c
index 7625bd8..867c882 100644
--- a/gateways.c
+++ b/gateways.c
@@ -141,7 +141,7 @@ static int netlink_print_gateways(struct state *state=
, char *orig_iface,
 				    orig_timeout, watch_interval,
 				    header,
 				    BATADV_CMD_GET_GATEWAYS,
-				    gateways_callback);
+				    gateways_callback, 0);
 }
=20
 static struct debug_table_data batctl_debug_table_gateways =3D {
diff --git a/main.h b/main.h
index 81b7a27..b1ff050 100644
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
diff --git a/mcast_flags.c b/mcast_flags.c
index 721f549..cb6e89d 100644
--- a/mcast_flags.c
+++ b/mcast_flags.c
@@ -147,7 +147,7 @@ static int netlink_print_mcast_flags(struct state *st=
ate, char *orig_iface,
 	ret =3D netlink_print_common(state, orig_iface, read_opts,
 				   orig_timeout, watch_interval, header,
 				   BATADV_CMD_GET_MCAST_FLAGS,
-				   mcast_flags_callback);
+				   mcast_flags_callback, 0);
=20
 	free(header);
 	return ret;
diff --git a/neighbors.c b/neighbors.c
index af76d0f..2a50e78 100644
--- a/neighbors.c
+++ b/neighbors.c
@@ -114,7 +114,7 @@ static int netlink_print_neighbors(struct state *stat=
e, char *orig_iface,
 				    orig_timeout, watch_interval,
 				    "IF             Neighbor              last-seen\n",
 				    BATADV_CMD_GET_NEIGHBORS,
-				    neighbors_callback);
+				    neighbors_callback, 0);
 }
=20
 static struct debug_table_data batctl_debug_table_neighbors =3D {
diff --git a/netlink.c b/netlink.c
index 31c9b01..26ae5ef 100644
--- a/netlink.c
+++ b/netlink.c
@@ -13,6 +13,7 @@
 #include <stdio.h>
 #include <string.h>
 #include <unistd.h>
+#include <ctype.h>
 #include <errno.h>
 #include <net/ethernet.h>
 #include <net/if.h>
@@ -116,6 +117,50 @@ struct nla_policy batadv_netlink_policy[NUM_BATADV_A=
TTR] =3D {
 	[BATADV_ATTR_THROUGHPUT_OVERRIDE]	=3D { .type =3D NLA_U32 },
 };
=20
+struct nla_policy_json batadv_netlink_policy_json[NUM_BATADV_ATTR] =3D {
+	[BATADV_ATTR_VERSION]			=3D { .name =3D "version",
+						    .cb =3D nljson_print_str },
+	[BATADV_ATTR_ALGO_NAME]			=3D { .name =3D "algo",
+						    .cb =3D nljson_print_str },
+	[BATADV_ATTR_MESH_IFINDEX]		=3D { .name =3D "mesh_if_idx",
+						    .cb =3D nljson_print_ifname_by_ifindex },
+	[BATADV_ATTR_MESH_IFNAME]		=3D { .name =3D "mesh_if",
+						    .cb =3D nljson_print_str },
+	[BATADV_ATTR_MESH_ADDRESS]		=3D { .name =3D "mesh_address",
+						    .cb =3D nljson_print_mac},
+	[BATADV_ATTR_ORIG_ADDRESS]		=3D { .name =3D "originator",
+						    .cb =3D nljson_print_mac },
+	[BATADV_ATTR_HARD_IFINDEX]		=3D { .name =3D "hard_if_idx",
+						    .cb =3D nljson_print_ifname_by_ifindex },
+	[BATADV_ATTR_HARD_IFNAME]		=3D { .name =3D "hard_if",
+						    .cb =3D nljson_print_str },
+	[BATADV_ATTR_HARD_ADDRESS]		=3D { .name =3D "hard_addr",
+						    .cb =3D nljson_print_mac },
+	[BATADV_ATTR_TT_ADDRESS]		=3D { .name =3D "client",
+						    .cb =3D nljson_print_mac },
+	[BATADV_ATTR_TT_TTVN]			=3D { .name =3D "ttvn",
+						    .cb =3D nljson_print_uint8_t },
+	[BATADV_ATTR_TT_LAST_TTVN]		=3D { .name =3D "last_ttvn",
+						    .cb =3D nljson_print_uint8_t },
+	[BATADV_ATTR_TT_CRC32]			=3D { .name =3D "crc32",
+						    .cb =3D nljson_print_crc32 },
+	[BATADV_ATTR_TT_VID]			=3D { .name =3D "vid",
+						    .cb =3D nljson_print_vid },
+	[BATADV_ATTR_TT_FLAGS]			=3D { .name =3D "flags",
+						    .cb =3D nljson_print_ttflags },
+	[BATADV_ATTR_FLAG_BEST]			=3D { .name =3D "best",
+						    .cb =3D nljson_print_bool},
+	[BATADV_ATTR_LAST_SEEN_MSECS]		=3D { .name =3D "last_seen",
+						    .cb =3D nljson_print_int},
+	[BATADV_ATTR_NEIGH_ADDRESS]		=3D { .name =3D "neighbor",
+						    .cb =3D nljson_print_mac },
+	[BATADV_ATTR_TQ]			=3D { .name =3D "tq",
+						    .cb =3D nljson_print_uint8_t },
+	[BATADV_ATTR_THROUGHPUT]		=3D { .name =3D "throughput",
+						    .cb =3D nljson_print_unsigned },
+	[BATADV_ATTR_BLA_CRC]			=3D { .name =3D "bla_crc",},
+};
+
 int netlink_create(struct state *state)
 {
 	int ret;
@@ -419,7 +464,7 @@ int netlink_print_common_cb(struct nl_msg *msg, void =
*arg)
 int netlink_print_common(struct state *state, char *orig_iface, int read=
_opt,
 			 float orig_timeout, float watch_interval,
 			 const char *header, uint8_t nl_cmd,
-			 nl_recvmsg_msg_cb_t callback)
+			 nl_recvmsg_msg_cb_t callback, uint8_t is_json)
 {
 	struct print_opts opts =3D {
 		.read_opt =3D read_opt,
@@ -427,6 +472,9 @@ int netlink_print_common(struct state *state, char *o=
rig_iface, int read_opt,
 		.watch_interval =3D watch_interval,
 		.remaining_header =3D NULL,
 		.callback =3D callback,
+		.nl_cmd =3D nl_cmd,
+		.is_json =3D is_json,
+		.is_first =3D 1,
 	};
 	int hardifindex =3D 0;
 	struct nl_msg *msg;
@@ -495,6 +543,238 @@ int netlink_print_common(struct state *state, char =
*orig_iface, int read_opt,
 	return last_err;
 }
=20
+void netlink_print_json_entries(struct nlattr *attrs[], int selected_att=
rs[],
+				int arr_len, struct print_opts *opts)
+{
+	const char *name;
+	uint8_t first_valid_attr =3D 1;
+	int idx, i;
+	struct json_opts json_opts =3D {
+		.use_alt_int_val =3D 0,
+		.alt_int_val =3D 0,
+	};
+
+
+	if (!opts->is_first)
+		printf(",");
+
+	for (i =3D 0; i < arr_len; i++) {
+		idx =3D selected_attrs[i];
+
+		if (attrs[idx] && batadv_netlink_policy_json[idx].cb) {
+			if (!first_valid_attr)
+				printf(",");
+			else
+				printf("{");
+
+			create_json_print_string(batadv_netlink_policy_json[idx].name,
+						 &name);
+			sanitize_string(name, strlen(name));
+			printf(":");
+			batadv_netlink_policy_json[idx].cb(&json_opts, opts,
+							   attrs, idx);
+
+			first_valid_attr =3D 0;
+		}
+	}
+	if (!first_valid_attr)
+		printf("}");
+}
+
+void nljson_print_str(struct json_opts *json_opts, struct print_opts *op=
ts,
+		      struct nlattr *attrs[], int idx)
+{
+	(void) json_opts;
+	(void) opts;
+	const char *value;
+	const char *value_print;
+
+	value =3D nla_get_string(attrs[idx]);
+
+	create_json_print_string(value, &value_print);
+	sanitize_string(value_print, strlen(value_print));
+}
+
+void nljson_print_ifname_by_ifindex(struct json_opts *json_opts,
+				    struct print_opts *opts, struct nlattr *attrs[],
+				    int idx)
+{
+	(void) opts;
+	(void) json_opts;
+	char value[IF_NAMESIZE];
+	const char *value_buf;
+
+	if (!if_indextoname(nla_get_u32(attrs[idx]), value))
+		value[0] =3D '\0';
+
+	create_json_print_string(value, &value_buf);
+	sanitize_string(value_buf, strlen(value_buf));
+}
+
+void nljson_print_int(struct json_opts *json_opts, struct print_opts *op=
ts,
+		      struct nlattr *attrs[], int idx)
+{
+	(void) opts;
+	int value;
+
+	if (json_opts->use_alt_int_val) {
+		json_opts->use_alt_int_val =3D 0;
+		value =3D json_opts->alt_int_val;
+	} else {
+		value =3D nla_get_u32(attrs[idx]);
+	}
+
+	printf("%d", value);
+}
+
+void nljson_print_unsigned(struct json_opts *json_opts, struct print_opt=
s *opts,
+			   struct nlattr *attrs[], int idx)
+{
+	(void) json_opts;
+	(void) opts;
+	unsigned value =3D nla_get_u32(attrs[idx]);
+	printf("%u", value);
+}
+
+void nljson_print_uint8_t(struct json_opts *json_opts, struct print_opts=
 *opts,
+			  struct nlattr *attrs[], int idx)
+{
+	(void) json_opts;
+	(void) opts;
+	uint8_t value =3D nla_get_u8(attrs[idx]);
+	printf("%u", value);
+}
+
+void nljson_print_mac(struct json_opts *json_opts, struct print_opts *op=
ts,
+		      struct nlattr *attrs[], int idx)
+{
+	(void) json_opts;
+	(void) opts;
+	uint8_t *value =3D nla_data(attrs[idx]);
+	printf("\"%02x:%02x:%02x:%02x:%02x:%02x\"",
+		value[0], value[1], value[2], value[3], value[4], value[5]);
+}
+
+void nljson_print_bool(struct json_opts *json_opts, struct print_opts *o=
pts,
+		       struct nlattr *attrs[], int idx)
+{
+	(void) json_opts;
+	(void) opts;
+	bool value =3D nla_get_flag(attrs[idx]);
+	printf("%s", BOOL_STRING(value));
+}
+
+void nljson_print_vid(struct json_opts *json_opts, struct print_opts *op=
ts,
+		      struct nlattr *attrs[], int idx)
+{
+	(void) json_opts;
+	(void) opts;
+	int16_t value =3D nla_get_u16(attrs[idx]);
+	printf("%i", BATADV_PRINT_VID(value));
+}
+
+void nljson_print_crc32(struct json_opts *json_opts, struct print_opts *=
opts,
+		      struct nlattr *attrs[], int idx)
+{
+	(void) json_opts;
+	(void) opts;
+	int32_t value =3D nla_get_u32(attrs[idx]);
+	printf("\"0x%.8x\"", value);
+}
+
+void nljson_print_ttflags(struct json_opts *json_opts, struct print_opts=
 *opts,
+			  struct nlattr *attrs[], int idx)
+{
+	const char *key_ls;
+	uint32_t flags;
+	char r, n, x, w, i, p, t;
+
+	flags =3D nla_get_u32(attrs[idx]);
+
+	r =3D '.', p =3D '.', n =3D '.', x =3D '.', w =3D '.', i =3D '.', t =3D=
 '.';
+
+	if (opts->nl_cmd =3D=3D BATADV_CMD_GET_TRANSTABLE_LOCAL) {
+		// last_seen =3D 0 when flags are set
+		json_opts->use_alt_int_val =3D 0;
+		json_opts->alt_int_val =3D 0;
+
+		if (flags & BATADV_TT_CLIENT_ROAM)
+			r =3D 'R';
+		if (flags & BATADV_TT_CLIENT_NEW)
+			n =3D 'N';
+		if (flags & BATADV_TT_CLIENT_PENDING)
+			x =3D 'X';
+		if (flags & BATADV_TT_CLIENT_WIFI)
+			w =3D 'W';
+		if (flags & BATADV_TT_CLIENT_ISOLA)
+			i =3D 'I';
+		if (flags & BATADV_TT_CLIENT_NOPURGE)  {
+			p =3D 'P';
+		} else {
+			if (!attrs[BATADV_ATTR_LAST_SEEN_MSECS]) {
+				fputs("Received invalid data from kernel.\n", stderr);
+				exit(1);
+			}
+			goto print_local_table;
+		}
+
+		json_opts->use_alt_int_val =3D 1;
+		goto print_local_table;
+	} else {
+		if (flags & BATADV_TT_CLIENT_ROAM)
+			r =3D 'R';
+		if (flags & BATADV_TT_CLIENT_WIFI)
+			w =3D 'W';
+		if (flags & BATADV_TT_CLIENT_ISOLA)
+			i =3D 'I';
+		if (flags & BATADV_TT_CLIENT_TEMP)
+			t =3D 'T';
+
+		goto print_global_table;
+	}
+
+print_local_table:
+	printf("\"%c%c%c%c%c%c\"", r, n, x, w, i, p);
+
+	printf(",");
+	create_json_print_string(batadv_netlink_policy_json[BATADV_ATTR_LAST_SE=
EN_MSECS].name,
+				 &key_ls);
+	sanitize_string(key_ls, strlen(key_ls));
+	printf(":");
+	nljson_print_int(json_opts, opts, attrs, BATADV_ATTR_LAST_SEEN_MSECS);
+
+	return;
+
+print_global_table:
+	printf("\"%c%c%c%c\"", r, w, i, t);
+}
+
+void create_json_print_string(const char *str, const char **str_ret)
+{
+	size_t needed =3D snprintf(NULL, 0, "\"%s\"", str);
+	char  *str_buf =3D malloc(needed+1);
+
+	sprintf(str_buf, "\"%s\"", str);
+
+	*str_ret =3D str_buf;
+}
+
+void sanitize_string(const char *str, int str_len)
+{
+	int i;
+
+	for (i =3D 0; i < str_len; i++) {
+		if (str[i] =3D=3D '"')
+			printf("\"");
+		else if (str[i] =3D=3D '\\')
+			printf("\\\\");
+		else if (!isprint(str[i]))
+			printf("\\x%02x", str[i]);
+		else
+			printf("%c", str[i]);
+	}
+}
+
 static int nlquery_error_cb(struct sockaddr_nl *nla __maybe_unused,
 			    struct nlmsgerr *nlerr, void *arg)
 {
diff --git a/netlink.h b/netlink.h
index 4ee2f39..c766741 100644
--- a/netlink.h
+++ b/netlink.h
@@ -21,8 +21,22 @@ struct print_opts {
 	float watch_interval;
 	nl_recvmsg_msg_cb_t callback;
 	char *remaining_header;
+	char *remaining_entry;
 	const char *static_header;
 	uint8_t nl_cmd;
+	uint8_t is_json;
+	uint8_t is_first;
+};
+
+struct json_opts {
+	uint8_t use_alt_int_val;
+	int alt_int_val;
+};
+
+struct nla_policy_json {
+	const char *name;
+	void (*cb)(struct json_opts *json_opts, struct print_opts *opts,
+		   struct nlattr *attrs[], int idx);
 };
=20
 struct ether_addr;
@@ -40,13 +54,14 @@ int get_algoname_netlink(const char *mesh_iface, char=
 *algoname,
 			 size_t algoname_len);
=20
 extern struct nla_policy batadv_netlink_policy[];
+extern struct nla_policy_json batadv_netlink_policy_json[];
=20
 int missing_mandatory_attrs(struct nlattr *attrs[], const int mandatory[=
],
 			    int num);
 int netlink_print_common(struct state *state, char *orig_iface, int read=
_opt,
 			 float orig_timeout, float watch_interval,
 			 const char *header, uint8_t nl_cmd,
-			 nl_recvmsg_msg_cb_t callback);
+			 nl_recvmsg_msg_cb_t callback, uint8_t is_json);
=20
 int netlink_print_common_cb(struct nl_msg *msg, void *arg);
 int netlink_stop_callback(struct nl_msg *msg, void *arg);
@@ -54,6 +69,26 @@ int netlink_print_error(struct sockaddr_nl *nla, struc=
t nlmsgerr *nlerr,
 			void *arg);
 void netlink_print_remaining_header(struct print_opts *opts);
=20
+void netlink_print_json_entries(struct nlattr *attrs[], int selected_att=
rs[],
+				int arr_len, struct print_opts *opts);
+void netlink_print_json_entry(struct nlattr *attrs[], int idx);
+void nljson_print_str(struct json_opts *json_opts, struct print_opts *op=
ts, struct nlattr *attrs[], int idx);
+void nljson_print_ifname_by_ifindex(struct json_opts *json_opts, struct =
print_opts *opts,
+				    struct nlattr *attrs[], int idx);
+void nljson_print_int(struct json_opts *json_opts, struct print_opts *op=
ts, struct nlattr *attrs[], int idx);
+void nljson_print_unsigned(struct json_opts *json_opts, struct print_opt=
s *opts, struct nlattr *attrs[],
+			   int idx);
+void nljson_print_uint8_t(struct json_opts *json_opts, struct print_opts=
 *opts, struct nlattr *attrs[],
+			  int idx);
+void nljson_print_vid(struct json_opts *json_opts, struct print_opts *op=
ts, struct nlattr *attrs[], int idx);
+void nljson_print_crc32(struct json_opts *json_opts, struct print_opts *=
opts, struct nlattr *attrs[], int idx);
+void nljson_print_mac(struct json_opts *json_opts, struct print_opts *op=
ts, struct nlattr *attrs[], int idx);
+void nljson_print_bool(struct json_opts *json_opts, struct print_opts *o=
pts, struct nlattr *attrs[], int idx);
+void nljson_print_ttflags(struct json_opts *json_opts, struct print_opts=
 *opts, struct nlattr *attrs[],
+			  int idx);
+void create_json_print_string(const char *str, const char **str_ret);
+void sanitize_string(const char *str, int str_len);
+
 extern char algo_name_buf[256];
 extern int last_err;
 extern int64_t mcast_flags;
diff --git a/originators.c b/originators.c
index 8a29dd7..674656c 100644
--- a/originators.c
+++ b/originators.c
@@ -192,7 +192,7 @@ static int netlink_print_originators(struct state *st=
ate, char *orig_iface,
 	return netlink_print_common(state, orig_iface, read_opts,
 				    orig_timeout, watch_interval, header,
 				    BATADV_CMD_GET_ORIGINATORS,
-				    originators_callback);
+				    originators_callback, 0);
 }
=20
 static struct debug_table_data batctl_debug_table_originators =3D {
diff --git a/transglobal.c b/transglobal.c
index 4eae95d..c9312c0 100644
--- a/transglobal.c
+++ b/transglobal.c
@@ -132,7 +132,7 @@ static int netlink_print_transglobal(struct state *st=
ate, char *orig_iface,
 				    orig_timeout, watch_interval,
 				    "   Client             VID Flags Last ttvn     Via        ttvn  =
(CRC       )\n",
 				    BATADV_CMD_GET_TRANSTABLE_GLOBAL,
-				    transglobal_callback);
+				    transglobal_callback, 0);
 }
=20
 static struct debug_table_data batctl_debug_table_transglobal =3D {
diff --git a/translocal.c b/translocal.c
index a3ad3da..7753010 100644
--- a/translocal.c
+++ b/translocal.c
@@ -128,7 +128,7 @@ static int netlink_print_translocal(struct state *sta=
te, char *orig_iface,
 				    orig_timeout, watch_interval,
 				    "Client             VID Flags    Last seen (CRC       )\n",
 				    BATADV_CMD_GET_TRANSTABLE_LOCAL,
-				    translocal_callback);
+				    translocal_callback, 0);
 }
=20
 static struct debug_table_data batctl_debug_table_translocal =3D {
--=20
2.25.1
