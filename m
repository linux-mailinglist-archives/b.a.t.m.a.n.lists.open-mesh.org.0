Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 985F5483570
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon,  3 Jan 2022 18:18:02 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 2AE9584070;
	Mon,  3 Jan 2022 18:17:59 +0100 (CET)
Received: from simonwunderlich.de (simonwunderlich.de [IPv6:2a01:4f8:c17:e8c0::1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 73FDE8250E
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon,  3 Jan 2022 18:17:52 +0100 (CET)
Received: from kero.packetmixer.de (p200300c597476fC09aF9daD664F33736.dip0.t-ipconnect.de [IPv6:2003:c5:9747:6fc0:9af9:dad6:64f3:3736])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by simonwunderlich.de (Postfix) with ESMTPSA id 3576EFA1C2;
	Mon,  3 Jan 2022 18:17:52 +0100 (CET)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: kuba@kernel.org,
	davem@davemloft.net
Subject: [PATCH 2/3] batman-adv: allow netlink usage in unprivileged containers
Date: Mon,  3 Jan 2022 18:17:21 +0100
Message-Id: <20220103171722.1126109-3-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220103171722.1126109-1-sw@simonwunderlich.de>
References: <20220103171722.1126109-1-sw@simonwunderlich.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates 2a01:4f8:c17:e8c0::1 as permitted sender) smtp.mailfrom=sw@simonwunderlich.de;
	dmarc=none
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1641230272; a=rsa-sha256;
	cv=none;
	b=CuhdiQjjyBi/EHIH0XD9MOmveRJSKHSaZu5NrSHl9AG0yU2bjbOJaJV+bInTzzqtmSMcDY
	nENVt8as20VMwUi8iFnFaXvA7TD/c8joh2n/MXAiK2JE0z+4WJC9FfxuITFIoDj6hFcO23
	8hqOZXBa5ulHNTVczFtyv6wT9E4HJU8=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1641230272;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Z0MSgiq41/HXKHfGdXNTc8KoIjaeMQwa5xFGq+k8JSc=;
	b=YEsa+dfVlPwEAxqBB1+NhTFnJNCTMou9wK4wMotB4RqrO8EzogVhl5yLC4vP9kX++Rs/7b
	kZl8EN0R9N1Tn7lrFMaqNOmAiP3QWmokWn7J/qpcxv3S5AOmwhEB8EjalzEDlsOG/xnzcC
	Lkh4QVCMIn3Wuq4HgOEZ/xrHQj6nm2E=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: HHOJS66OT2KFMLAZJTVGZJD2I5AJI252
X-Message-ID-Hash: HHOJS66OT2KFMLAZJTVGZJD2I5AJI252
X-MailFrom: sw@simonwunderlich.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org, Tycho Andersen <tycho@tycho.pizza>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/HHOJS66OT2KFMLAZJTVGZJD2I5AJI252/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

From: Linus L=C3=BCssing <linus.luessing@c0d3.blue>

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
---
 net/batman-adv/netlink.c | 30 +++++++++++++++---------------
 1 file changed, 15 insertions(+), 15 deletions(-)

diff --git a/net/batman-adv/netlink.c b/net/batman-adv/netlink.c
index 29276284d281..00875e1d8c44 100644
--- a/net/batman-adv/netlink.c
+++ b/net/batman-adv/netlink.c
@@ -1368,21 +1368,21 @@ static const struct genl_small_ops batadv_netlink=
_ops[] =3D {
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
@@ -1397,68 +1397,68 @@ static const struct genl_small_ops batadv_netlink=
_ops[] =3D {
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
@@ -1474,7 +1474,7 @@ static const struct genl_small_ops batadv_netlink_o=
ps[] =3D {
 	{
 		.cmd =3D BATADV_CMD_SET_VLAN,
 		.validate =3D GENL_DONT_VALIDATE_STRICT | GENL_DONT_VALIDATE_DUMP,
-		.flags =3D GENL_ADMIN_PERM,
+		.flags =3D GENL_UNS_ADMIN_PERM,
 		.doit =3D batadv_netlink_set_vlan,
 		.internal_flags =3D BATADV_FLAG_NEED_MESH |
 				  BATADV_FLAG_NEED_VLAN,
--=20
2.30.2
