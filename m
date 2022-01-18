Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 52523491824
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 18 Jan 2022 03:44:53 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 3D863825DA;
	Tue, 18 Jan 2022 03:44:52 +0100 (CET)
Received: from ams.source.kernel.org (ams.source.kernel.org [IPv6:2604:1380:4601:e00::1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id BD5A781DD5
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 18 Jan 2022 03:44:49 +0100 (CET)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 50413B81239;
	Tue, 18 Jan 2022 02:44:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CA476C36AEB;
	Tue, 18 Jan 2022 02:44:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1642473888;
	bh=J50OZHN0zvd2GM4+rHZ4BtCzAMe4iStWevzL2oEi4hY=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=SNG4+y2v9oauG8Prlidiv8+aOZEGFYX7LT3oyq0tOYNMBEUHF2ulvplxnjM/HKoOr
	 h8wWhvKNETznR4EwgTlSlGQGxu49wS2xO4WOV9Aw9Ri20oL8zz3E9WIht5BZZ6r5ME
	 Iibit9vUkrFrc1nf65cno9M1nJkIbC7N1CDAJBliPzTa2wa5R1r7ZFUER2qvkqhc3Z
	 Grndgt6fOnpo8oqTcbVLctq3/JylcMDgCOoKLWru5VfGFLj/nunj/56neuKc9BST0G
	 0Gu1cQhCV/6NX49m1FyJfOb9L1xrolSYrso1sm7M1bOprESxPwhkWVDO6NwoTlDO5s
	 8FPlTPfhsCUcw==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.4 08/73] batman-adv: allow netlink usage in unprivileged containers
Date: Mon, 17 Jan 2022 21:43:27 -0500
Message-Id: <20220118024432.1952028-8-sashal@kernel.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220118024432.1952028-1-sashal@kernel.org>
References: <20220118024432.1952028-1-sashal@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-stable: review
X-Patchwork-Hint: Ignore
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=SNG4+y2v;
	dmarc=pass (policy=none) header.from=kernel.org;
	spf=pass (diktynna.open-mesh.org: domain of sashal@kernel.org designates 2604:1380:4601:e00::1 as permitted sender) smtp.mailfrom=sashal@kernel.org
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1642473889; a=rsa-sha256;
	cv=none;
	b=fjfuTn0krO4xYdZ4robOaVLut+aS5x/6himWeNVEaoIg8kt/xO8V5Aluxu+Do96P7UKaVQ
	oxyywatFrLXdRwyXeRIIf6GvAxYwsGpBPmKlMdWVy2CETdSOMfoXSloBRi4C1IbtwoohAE
	dIYKKEH4XfgH5CxJcI8Mpmul/qt6fUk=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1642473889;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=hr2pVoJqj8hXa3GWpzJDQG8yuQry2y4ic9KqZmaAIhg=;
	b=lvdUdMZ1JeuomywARkI8un+GAW2OR8ngu58y8Vg71N2eaprPXGg3Zg+24vBg8S7QRTyOpz
	7KZu6ylB7BZd+xXuwGGvHlYJKHf1CK3co9DTduoeEvDZuzmZDikqt4Dqe+zy6ZXbm5WgTh
	AgXnZUqcDUW1dZiP1jfJdzdP9emqGWE=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: Y67NGHTGVSC7JOERCH5QK7D2ZC4ZLECJ
X-Message-ID-Hash: Y67NGHTGVSC7JOERCH5QK7D2ZC4ZLECJ
X-MailFrom: sashal@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
CC: Tycho Andersen <tycho@tycho.pizza>, Sasha Levin <sashal@kernel.org>, mareklindner@neomailbox.ch, a@unstable.cc, davem@davemloft.net, kuba@kernel.org, b.a.t.m.a.n@lists.open-mesh.org, netdev@vger.kernel.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/Y67NGHTGVSC7JOERCH5QK7D2ZC4ZLECJ/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

From: Linus L=C3=BCssing <linus.luessing@c0d3.blue>

[ Upstream commit 9057d6c23e7388ee9d037fccc9a7bc8557ce277b ]

Currently, creating a batman-adv interface in an unprivileged LXD
container and attaching secondary interfaces to it with "ip" or "batctl"
works fine. However all batctl debug and configuration commands
fail:

  root@container:~# batctl originators
  Error received: Operation not permitted
  root@container:~# batctl orig_interval
  1000
  root@container:~# batctl orig_interval 2000
  root@container:~# batctl orig_interval
  1000

To fix this change the generic netlink permissions from GENL_ADMIN_PERM
to GENL_UNS_ADMIN_PERM. This way a batman-adv interface is fully
maintainable as root from within a user namespace, from an unprivileged
container.

All except one batman-adv netlink setting are per interface and do not
leak information or change settings from the host system and are
therefore save to retrieve or modify as root from within an unprivileged
container.

"batctl routing_algo" / BATADV_CMD_GET_ROUTING_ALGOS is the only
exception: It provides the batman-adv kernel module wide default routing
algorithm. However it is read-only from netlink and an unprivileged
container is still not allowed to modify
/sys/module/batman_adv/parameters/routing_algo. Instead it is advised to
use the newly introduced "batctl if create routing_algo RA_NAME" /
IFLA_BATADV_ALGO_NAME to set the routing algorithm on interface
creation, which already works fine in an unprivileged container.

Cc: Tycho Andersen <tycho@tycho.pizza>
Signed-off-by: Linus L=C3=BCssing <linus.luessing@c0d3.blue>
Signed-off-by: Sven Eckelmann <sven@narfation.org>
Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 net/batman-adv/netlink.c | 30 +++++++++++++++---------------
 1 file changed, 15 insertions(+), 15 deletions(-)

diff --git a/net/batman-adv/netlink.c b/net/batman-adv/netlink.c
index 7e052d6f759b6..e59c5aa27ee0b 100644
--- a/net/batman-adv/netlink.c
+++ b/net/batman-adv/netlink.c
@@ -1351,21 +1351,21 @@ static const struct genl_ops batadv_netlink_ops[]=
 =3D {
 	{
 		.cmd =3D BATADV_CMD_TP_METER,
 		.validate =3D GENL_DONT_VALIDATE_STRICT | GENL_DONT_VALIDATE_DUMP,
-		.flags =3D GENL_ADMIN_PERM,
+		.flags =3D GENL_UNS_ADMIN_PERM,
 		.doit =3D batadv_netlink_tp_meter_start,
 		.internal_flags =3D BATADV_FLAG_NEED_MESH,
 	},
 	{
 		.cmd =3D BATADV_CMD_TP_METER_CANCEL,
 		.validate =3D GENL_DONT_VALIDATE_STRICT | GENL_DONT_VALIDATE_DUMP,
-		.flags =3D GENL_ADMIN_PERM,
+		.flags =3D GENL_UNS_ADMIN_PERM,
 		.doit =3D batadv_netlink_tp_meter_cancel,
 		.internal_flags =3D BATADV_FLAG_NEED_MESH,
 	},
 	{
 		.cmd =3D BATADV_CMD_GET_ROUTING_ALGOS,
 		.validate =3D GENL_DONT_VALIDATE_STRICT | GENL_DONT_VALIDATE_DUMP,
-		.flags =3D GENL_ADMIN_PERM,
+		.flags =3D GENL_UNS_ADMIN_PERM,
 		.dumpit =3D batadv_algo_dump,
 	},
 	{
@@ -1380,68 +1380,68 @@ static const struct genl_ops batadv_netlink_ops[]=
 =3D {
 	{
 		.cmd =3D BATADV_CMD_GET_TRANSTABLE_LOCAL,
 		.validate =3D GENL_DONT_VALIDATE_STRICT | GENL_DONT_VALIDATE_DUMP,
-		.flags =3D GENL_ADMIN_PERM,
+		.flags =3D GENL_UNS_ADMIN_PERM,
 		.dumpit =3D batadv_tt_local_dump,
 	},
 	{
 		.cmd =3D BATADV_CMD_GET_TRANSTABLE_GLOBAL,
 		.validate =3D GENL_DONT_VALIDATE_STRICT | GENL_DONT_VALIDATE_DUMP,
-		.flags =3D GENL_ADMIN_PERM,
+		.flags =3D GENL_UNS_ADMIN_PERM,
 		.dumpit =3D batadv_tt_global_dump,
 	},
 	{
 		.cmd =3D BATADV_CMD_GET_ORIGINATORS,
 		.validate =3D GENL_DONT_VALIDATE_STRICT | GENL_DONT_VALIDATE_DUMP,
-		.flags =3D GENL_ADMIN_PERM,
+		.flags =3D GENL_UNS_ADMIN_PERM,
 		.dumpit =3D batadv_orig_dump,
 	},
 	{
 		.cmd =3D BATADV_CMD_GET_NEIGHBORS,
 		.validate =3D GENL_DONT_VALIDATE_STRICT | GENL_DONT_VALIDATE_DUMP,
-		.flags =3D GENL_ADMIN_PERM,
+		.flags =3D GENL_UNS_ADMIN_PERM,
 		.dumpit =3D batadv_hardif_neigh_dump,
 	},
 	{
 		.cmd =3D BATADV_CMD_GET_GATEWAYS,
 		.validate =3D GENL_DONT_VALIDATE_STRICT | GENL_DONT_VALIDATE_DUMP,
-		.flags =3D GENL_ADMIN_PERM,
+		.flags =3D GENL_UNS_ADMIN_PERM,
 		.dumpit =3D batadv_gw_dump,
 	},
 	{
 		.cmd =3D BATADV_CMD_GET_BLA_CLAIM,
 		.validate =3D GENL_DONT_VALIDATE_STRICT | GENL_DONT_VALIDATE_DUMP,
-		.flags =3D GENL_ADMIN_PERM,
+		.flags =3D GENL_UNS_ADMIN_PERM,
 		.dumpit =3D batadv_bla_claim_dump,
 	},
 	{
 		.cmd =3D BATADV_CMD_GET_BLA_BACKBONE,
 		.validate =3D GENL_DONT_VALIDATE_STRICT | GENL_DONT_VALIDATE_DUMP,
-		.flags =3D GENL_ADMIN_PERM,
+		.flags =3D GENL_UNS_ADMIN_PERM,
 		.dumpit =3D batadv_bla_backbone_dump,
 	},
 	{
 		.cmd =3D BATADV_CMD_GET_DAT_CACHE,
 		.validate =3D GENL_DONT_VALIDATE_STRICT | GENL_DONT_VALIDATE_DUMP,
-		.flags =3D GENL_ADMIN_PERM,
+		.flags =3D GENL_UNS_ADMIN_PERM,
 		.dumpit =3D batadv_dat_cache_dump,
 	},
 	{
 		.cmd =3D BATADV_CMD_GET_MCAST_FLAGS,
 		.validate =3D GENL_DONT_VALIDATE_STRICT | GENL_DONT_VALIDATE_DUMP,
-		.flags =3D GENL_ADMIN_PERM,
+		.flags =3D GENL_UNS_ADMIN_PERM,
 		.dumpit =3D batadv_mcast_flags_dump,
 	},
 	{
 		.cmd =3D BATADV_CMD_SET_MESH,
 		.validate =3D GENL_DONT_VALIDATE_STRICT | GENL_DONT_VALIDATE_DUMP,
-		.flags =3D GENL_ADMIN_PERM,
+		.flags =3D GENL_UNS_ADMIN_PERM,
 		.doit =3D batadv_netlink_set_mesh,
 		.internal_flags =3D BATADV_FLAG_NEED_MESH,
 	},
 	{
 		.cmd =3D BATADV_CMD_SET_HARDIF,
 		.validate =3D GENL_DONT_VALIDATE_STRICT | GENL_DONT_VALIDATE_DUMP,
-		.flags =3D GENL_ADMIN_PERM,
+		.flags =3D GENL_UNS_ADMIN_PERM,
 		.doit =3D batadv_netlink_set_hardif,
 		.internal_flags =3D BATADV_FLAG_NEED_MESH |
 				  BATADV_FLAG_NEED_HARDIF,
@@ -1457,7 +1457,7 @@ static const struct genl_ops batadv_netlink_ops[] =3D=
 {
 	{
 		.cmd =3D BATADV_CMD_SET_VLAN,
 		.validate =3D GENL_DONT_VALIDATE_STRICT | GENL_DONT_VALIDATE_DUMP,
-		.flags =3D GENL_ADMIN_PERM,
+		.flags =3D GENL_UNS_ADMIN_PERM,
 		.doit =3D batadv_netlink_set_vlan,
 		.internal_flags =3D BATADV_FLAG_NEED_MESH |
 				  BATADV_FLAG_NEED_VLAN,
--=20
2.34.1
