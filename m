Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 8624E378CB8
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 10 May 2021 15:25:05 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 56A2183EB2;
	Mon, 10 May 2021 15:25:04 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id C2F11807D5
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 10 May 2021 15:25:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1620653102;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=UZLYPzEXZ0XknsHSP7cPKepj/bny5Nj2oUpoQiOhKuE=;
	b=2RteIlB/6RCxO7eYFvomygLLSG3gkMBLKkvVrAqQZkOclpr+n7vJkg+Vbc/eNjUq9sVrwo
	O9GI5mpbn1l+7oCVAQ4Hd9xZu8U/hMyedu4NcnUPsO1iZMBDlYtNAw4ciZc4a2YvLY0HCn
	FQThAQKac7SvNakZP1IaxeTavqEW8Uw=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
Subject: [PATCH] batctl: Realign netlink_policy array
Date: Mon, 10 May 2021 15:24:59 +0200
Message-Id: <20210510132459.43795-1-sven@narfation.org>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1620653102; a=rsa-sha256;
	cv=none;
	b=MxEvLTvZpKVYvtl1XGLUyufGYerkAwUUpONkA0KovBjD3CWIJqdrzRJuY72FbQTuA6AC2a
	2y0sQP/TQUINyc5fmVOvZV5L6nbvbHy7LaI9yUBffO/pollnx5hmcRjimCnyDwAxaxd7r4
	jGNPqtGBssFUo6p1kvnKynFiSeOY3Vs=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b="2RteIlB/";
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1620653102;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=UZLYPzEXZ0XknsHSP7cPKepj/bny5Nj2oUpoQiOhKuE=;
	b=nBYlVfXc8PAQY3vjIcr3GtJ+Cf4PHc9KTgJuwJHu2AfXyPS+1LDxd9nHqiBmqP/u9tXMMt
	WmKth9FNrJCetO4k733PCigFfG4I+G7gtiQ+iiwkgLLu679aWsU4aPYlFV8SNnEImEMHj3
	ctg2Ksdr9CgcnQqvAGjxRs6DRvP0hNs=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: EYQBFU5O7E3KKRG2YVPLRGHHN3OFIPYP
X-Message-ID-Hash: EYQBFU5O7E3KKRG2YVPLRGHHN3OFIPYP
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/EYQBFU5O7E3KKRG2YVPLRGHHN3OFIPYP/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

The netlink_policy contains an array of structures with several members i=
n
it. But the initialization of the entries of this array was not aligned
like any other initialization in the batctl code - instead it was tried t=
o
have everything on the same same line. This resulted in rather long lines
and could result in larger commits which just try to realign the whole
table when a new entry with a long identifier was added.

Just realign the array to better match the rest of the code.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 netlink.c | 280 ++++++++++++++++++++++++++++++++++++++----------------
 1 file changed, 200 insertions(+), 80 deletions(-)

diff --git a/netlink.c b/netlink.c
index 31c9b01..e0e1e28 100644
--- a/netlink.c
+++ b/netlink.c
@@ -34,86 +34,206 @@ struct nlquery_opts {
 };
=20
 struct nla_policy batadv_netlink_policy[NUM_BATADV_ATTR] =3D {
-	[BATADV_ATTR_VERSION]			=3D { .type =3D NLA_STRING },
-	[BATADV_ATTR_ALGO_NAME]			=3D { .type =3D NLA_STRING },
-	[BATADV_ATTR_MESH_IFINDEX]		=3D { .type =3D NLA_U32 },
-	[BATADV_ATTR_MESH_IFNAME]		=3D { .type =3D NLA_STRING,
-						    .maxlen =3D IFNAMSIZ },
-	[BATADV_ATTR_MESH_ADDRESS]		=3D { .type =3D NLA_UNSPEC,
-						    .minlen =3D ETH_ALEN,
-						    .maxlen =3D ETH_ALEN },
-	[BATADV_ATTR_HARD_IFINDEX]		=3D { .type =3D NLA_U32 },
-	[BATADV_ATTR_HARD_IFNAME]		=3D { .type =3D NLA_STRING,
-						    .maxlen =3D IFNAMSIZ },
-	[BATADV_ATTR_HARD_ADDRESS]		=3D { .type =3D NLA_UNSPEC,
-						    .minlen =3D ETH_ALEN,
-						    .maxlen =3D ETH_ALEN },
-	[BATADV_ATTR_ORIG_ADDRESS]		=3D { .type =3D NLA_UNSPEC,
-						    .minlen =3D ETH_ALEN,
-						    .maxlen =3D ETH_ALEN },
-	[BATADV_ATTR_TPMETER_RESULT]		=3D { .type =3D NLA_U8 },
-	[BATADV_ATTR_TPMETER_TEST_TIME]		=3D { .type =3D NLA_U32 },
-	[BATADV_ATTR_TPMETER_BYTES]		=3D { .type =3D NLA_U64 },
-	[BATADV_ATTR_TPMETER_COOKIE]		=3D { .type =3D NLA_U32 },
-	[BATADV_ATTR_PAD]			=3D { .type =3D NLA_UNSPEC },
-	[BATADV_ATTR_ACTIVE]			=3D { .type =3D NLA_FLAG },
-	[BATADV_ATTR_TT_ADDRESS]		=3D { .type =3D NLA_UNSPEC,
-						    .minlen =3D ETH_ALEN,
-						    .maxlen =3D ETH_ALEN },
-	[BATADV_ATTR_TT_TTVN]			=3D { .type =3D NLA_U8 },
-	[BATADV_ATTR_TT_LAST_TTVN]		=3D { .type =3D NLA_U8 },
-	[BATADV_ATTR_TT_CRC32]			=3D { .type =3D NLA_U32 },
-	[BATADV_ATTR_TT_VID]			=3D { .type =3D NLA_U16 },
-	[BATADV_ATTR_TT_FLAGS]			=3D { .type =3D NLA_U32 },
-	[BATADV_ATTR_FLAG_BEST]			=3D { .type =3D NLA_FLAG },
-	[BATADV_ATTR_LAST_SEEN_MSECS]		=3D { .type =3D NLA_U32 },
-	[BATADV_ATTR_NEIGH_ADDRESS]		=3D { .type =3D NLA_UNSPEC,
-						    .minlen =3D ETH_ALEN,
-						    .maxlen =3D ETH_ALEN },
-	[BATADV_ATTR_TQ]			=3D { .type =3D NLA_U8 },
-	[BATADV_ATTR_THROUGHPUT]		=3D { .type =3D NLA_U32 },
-	[BATADV_ATTR_BANDWIDTH_UP]		=3D { .type =3D NLA_U32 },
-	[BATADV_ATTR_BANDWIDTH_DOWN]		=3D { .type =3D NLA_U32 },
-	[BATADV_ATTR_ROUTER]			=3D { .type =3D NLA_UNSPEC,
-						    .minlen =3D ETH_ALEN,
-						    .maxlen =3D ETH_ALEN },
-	[BATADV_ATTR_BLA_OWN]			=3D { .type =3D NLA_FLAG },
-	[BATADV_ATTR_BLA_ADDRESS]		=3D { .type =3D NLA_UNSPEC,
-						    .minlen =3D ETH_ALEN,
-						    .maxlen =3D ETH_ALEN },
-	[BATADV_ATTR_BLA_VID]			=3D { .type =3D NLA_U16 },
-	[BATADV_ATTR_BLA_BACKBONE]		=3D { .type =3D NLA_UNSPEC,
-						    .minlen =3D ETH_ALEN,
-						    .maxlen =3D ETH_ALEN },
-	[BATADV_ATTR_BLA_CRC]			=3D { .type =3D NLA_U16 },
-	[BATADV_ATTR_DAT_CACHE_IP4ADDRESS]	=3D { .type =3D NLA_U32 },
-	[BATADV_ATTR_DAT_CACHE_HWADDRESS]	=3D { .type =3D NLA_UNSPEC,
-						    .minlen =3D ETH_ALEN,
-						    .maxlen =3D ETH_ALEN },
-	[BATADV_ATTR_DAT_CACHE_VID]		=3D { .type =3D NLA_U16 },
-	[BATADV_ATTR_MCAST_FLAGS]		=3D { .type =3D NLA_U32 },
-	[BATADV_ATTR_MCAST_FLAGS_PRIV]		=3D { .type =3D NLA_U32 },
-	[BATADV_ATTR_VLANID]			=3D { .type =3D NLA_U16 },
-	[BATADV_ATTR_AGGREGATED_OGMS_ENABLED]	=3D { .type =3D NLA_U8 },
-	[BATADV_ATTR_AP_ISOLATION_ENABLED]	=3D { .type =3D NLA_U8 },
-	[BATADV_ATTR_ISOLATION_MARK]		=3D { .type =3D NLA_U32 },
-	[BATADV_ATTR_ISOLATION_MASK]		=3D { .type =3D NLA_U32 },
-	[BATADV_ATTR_BONDING_ENABLED]		=3D { .type =3D NLA_U8 },
-	[BATADV_ATTR_BRIDGE_LOOP_AVOIDANCE_ENABLED]	=3D { .type =3D NLA_U8 },
-	[BATADV_ATTR_DISTRIBUTED_ARP_TABLE_ENABLED]	=3D { .type =3D NLA_U8 },
-	[BATADV_ATTR_FRAGMENTATION_ENABLED]	=3D { .type =3D NLA_U8 },
-	[BATADV_ATTR_GW_BANDWIDTH_DOWN]		=3D { .type =3D NLA_U32 },
-	[BATADV_ATTR_GW_BANDWIDTH_UP]		=3D { .type =3D NLA_U32 },
-	[BATADV_ATTR_GW_MODE]			=3D { .type =3D NLA_U8 },
-	[BATADV_ATTR_GW_SEL_CLASS]		=3D { .type =3D NLA_U32 },
-	[BATADV_ATTR_HOP_PENALTY]		=3D { .type =3D NLA_U8 },
-	[BATADV_ATTR_LOG_LEVEL]			=3D { .type =3D NLA_U32 },
-	[BATADV_ATTR_MULTICAST_FORCEFLOOD_ENABLED]	=3D { .type =3D NLA_U8 },
-	[BATADV_ATTR_MULTICAST_FANOUT]		=3D { .type =3D NLA_U32 },
-	[BATADV_ATTR_NETWORK_CODING_ENABLED]	=3D { .type =3D NLA_U8 },
-	[BATADV_ATTR_ORIG_INTERVAL]		=3D { .type =3D NLA_U32 },
-	[BATADV_ATTR_ELP_INTERVAL]		=3D { .type =3D NLA_U32 },
-	[BATADV_ATTR_THROUGHPUT_OVERRIDE]	=3D { .type =3D NLA_U32 },
+	[BATADV_ATTR_VERSION] =3D {
+		.type =3D NLA_STRING,
+	},
+	[BATADV_ATTR_ALGO_NAME] =3D {
+		.type =3D NLA_STRING,
+	},
+	[BATADV_ATTR_MESH_IFINDEX] =3D {
+		.type =3D NLA_U32,
+	},
+	[BATADV_ATTR_MESH_IFNAME] =3D {
+		.type =3D NLA_STRING,
+		.maxlen =3D IFNAMSIZ,
+	},
+	[BATADV_ATTR_MESH_ADDRESS] =3D {
+		.type =3D NLA_UNSPEC,
+		.minlen =3D ETH_ALEN,
+		.maxlen =3D ETH_ALEN,
+	},
+	[BATADV_ATTR_HARD_IFINDEX] =3D {
+		.type =3D NLA_U32,
+	},
+	[BATADV_ATTR_HARD_IFNAME] =3D {
+		.type =3D NLA_STRING,
+		.maxlen =3D IFNAMSIZ,
+	},
+	[BATADV_ATTR_HARD_ADDRESS] =3D {
+		.type =3D NLA_UNSPEC,
+		.minlen =3D ETH_ALEN,
+		.maxlen =3D ETH_ALEN,
+	},
+	[BATADV_ATTR_ORIG_ADDRESS] =3D {
+		.type =3D NLA_UNSPEC,
+		.minlen =3D ETH_ALEN,
+		.maxlen =3D ETH_ALEN,
+	},
+	[BATADV_ATTR_TPMETER_RESULT] =3D {
+		.type =3D NLA_U8,
+	},
+	[BATADV_ATTR_TPMETER_TEST_TIME] =3D {
+		.type =3D NLA_U32,
+	},
+	[BATADV_ATTR_TPMETER_BYTES] =3D {
+		.type =3D NLA_U64,
+	},
+	[BATADV_ATTR_TPMETER_COOKIE] =3D {
+		.type =3D NLA_U32,
+	},
+	[BATADV_ATTR_PAD] =3D {
+		.type =3D NLA_UNSPEC,
+	},
+	[BATADV_ATTR_ACTIVE] =3D {
+		.type =3D NLA_FLAG,
+	},
+	[BATADV_ATTR_TT_ADDRESS] =3D {
+		.type =3D NLA_UNSPEC,
+		.minlen =3D ETH_ALEN,
+		.maxlen =3D ETH_ALEN,
+	},
+	[BATADV_ATTR_TT_TTVN] =3D {
+		.type =3D NLA_U8,
+	},
+	[BATADV_ATTR_TT_LAST_TTVN] =3D {
+		.type =3D NLA_U8,
+	},
+	[BATADV_ATTR_TT_CRC32] =3D {
+		.type =3D NLA_U32,
+	},
+	[BATADV_ATTR_TT_VID] =3D {
+		.type =3D NLA_U16,
+	},
+	[BATADV_ATTR_TT_FLAGS] =3D {
+		.type =3D NLA_U32,
+	},
+	[BATADV_ATTR_FLAG_BEST] =3D {
+		.type =3D NLA_FLAG,
+	},
+	[BATADV_ATTR_LAST_SEEN_MSECS] =3D {
+		.type =3D NLA_U32,
+	},
+	[BATADV_ATTR_NEIGH_ADDRESS] =3D {
+		.type =3D NLA_UNSPEC,
+		.minlen =3D ETH_ALEN,
+		.maxlen =3D ETH_ALEN,
+	},
+	[BATADV_ATTR_TQ] =3D {
+		.type =3D NLA_U8,
+	},
+	[BATADV_ATTR_THROUGHPUT] =3D {
+		.type =3D NLA_U32,
+	},
+	[BATADV_ATTR_BANDWIDTH_UP] =3D {
+		.type =3D NLA_U32,
+	},
+	[BATADV_ATTR_BANDWIDTH_DOWN] =3D {
+		.type =3D NLA_U32,
+	},
+	[BATADV_ATTR_ROUTER] =3D {
+		.type =3D NLA_UNSPEC,
+		.minlen =3D ETH_ALEN,
+		.maxlen =3D ETH_ALEN,
+	},
+	[BATADV_ATTR_BLA_OWN] =3D {
+		.type =3D NLA_FLAG,
+	},
+	[BATADV_ATTR_BLA_ADDRESS] =3D {
+		.type =3D NLA_UNSPEC,
+		.minlen =3D ETH_ALEN,
+		.maxlen =3D ETH_ALEN,
+	},
+	[BATADV_ATTR_BLA_VID] =3D {
+		.type =3D NLA_U16,
+	},
+	[BATADV_ATTR_BLA_BACKBONE] =3D {
+		.type =3D NLA_UNSPEC,
+		.minlen =3D ETH_ALEN,
+		.maxlen =3D ETH_ALEN,
+	},
+	[BATADV_ATTR_BLA_CRC] =3D {
+		.type =3D NLA_U16,
+	},
+	[BATADV_ATTR_DAT_CACHE_IP4ADDRESS] =3D {
+		.type =3D NLA_U32,
+	},
+	[BATADV_ATTR_DAT_CACHE_HWADDRESS] =3D {
+		.type =3D NLA_UNSPEC,
+		.minlen =3D ETH_ALEN,
+		.maxlen =3D ETH_ALEN,
+	},
+	[BATADV_ATTR_DAT_CACHE_VID] =3D {
+		.type =3D NLA_U16,
+	},
+	[BATADV_ATTR_MCAST_FLAGS] =3D {
+		.type =3D NLA_U32,
+	},
+	[BATADV_ATTR_MCAST_FLAGS_PRIV] =3D {
+		.type =3D NLA_U32,
+	},
+	[BATADV_ATTR_VLANID] =3D {
+		.type =3D NLA_U16,
+	},
+	[BATADV_ATTR_AGGREGATED_OGMS_ENABLED] =3D {
+		.type =3D NLA_U8,
+	},
+	[BATADV_ATTR_AP_ISOLATION_ENABLED] =3D {
+		.type =3D NLA_U8,
+	},
+	[BATADV_ATTR_ISOLATION_MARK] =3D {
+		.type =3D NLA_U32,
+	},
+	[BATADV_ATTR_ISOLATION_MASK] =3D {
+		.type =3D NLA_U32,
+	},
+	[BATADV_ATTR_BONDING_ENABLED] =3D {
+		.type =3D NLA_U8,
+	},
+	[BATADV_ATTR_BRIDGE_LOOP_AVOIDANCE_ENABLED] =3D {
+		.type =3D NLA_U8,
+	},
+	[BATADV_ATTR_DISTRIBUTED_ARP_TABLE_ENABLED] =3D {
+		.type =3D NLA_U8,
+	},
+	[BATADV_ATTR_FRAGMENTATION_ENABLED] =3D {
+		.type =3D NLA_U8,
+	},
+	[BATADV_ATTR_GW_BANDWIDTH_DOWN] =3D {
+		.type =3D NLA_U32,
+	},
+	[BATADV_ATTR_GW_BANDWIDTH_UP] =3D {
+		.type =3D NLA_U32,
+	},
+	[BATADV_ATTR_GW_MODE] =3D {
+		.type =3D NLA_U8,
+	},
+	[BATADV_ATTR_GW_SEL_CLASS] =3D {
+		.type =3D NLA_U32,
+	},
+	[BATADV_ATTR_HOP_PENALTY] =3D {
+		.type =3D NLA_U8,
+	},
+	[BATADV_ATTR_LOG_LEVEL] =3D {
+		.type =3D NLA_U32,
+	},
+	[BATADV_ATTR_MULTICAST_FORCEFLOOD_ENABLED] =3D {
+		.type =3D NLA_U8,
+	},
+	[BATADV_ATTR_NETWORK_CODING_ENABLED] =3D {
+		.type =3D NLA_U8,
+	},
+	[BATADV_ATTR_ORIG_INTERVAL] =3D {
+		.type =3D NLA_U32,
+	},
+	[BATADV_ATTR_ELP_INTERVAL] =3D {
+		.type =3D NLA_U32,
+	},
+	[BATADV_ATTR_THROUGHPUT_OVERRIDE] =3D {
+		.type =3D NLA_U32,
+	},
+	[BATADV_ATTR_MULTICAST_FANOUT] =3D {
+		.type =3D NLA_U32,
+	},
 };
=20
 int netlink_create(struct state *state)
--=20
2.30.2
