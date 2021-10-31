Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 63AAE4410FF
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 31 Oct 2021 22:30:29 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 5023F825E1;
	Sun, 31 Oct 2021 22:30:28 +0100 (CET)
Received: from mail.aperture-lab.de (mail.aperture-lab.de [116.203.183.178])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 2AE388077B
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 31 Oct 2021 22:30:25 +0100 (CET)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 29FE53E8B9;
	Sun, 31 Oct 2021 22:30:23 +0100 (CET)
From: =?UTF-8?q?Linus=20L=C3=BCssing?= <linus.luessing@c0d3.blue>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: [PATCHv2] batman-adv: allow netlink usage in unprivileged containers
Date: Sun, 31 Oct 2021 22:30:12 +0100
Message-Id: <20211031213012.2446-1-linus.luessing@c0d3.blue>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Last-TLS-Session-Version: TLSv1.3
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1635715825;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=xejtTuaAiWzHIuJEwJx7cBUEAkdAQy1WF1K4uyzQ01s=;
	b=y0BFIXS9a7EAvZ5p1tf15GFclFtzTN7npblErGv5NuiQzbCgZrlxlLgxXAl5F2ZDvJ8GTm
	a8iKbNofkadKK6RWpn/HkUhx6aRICvd+CquIauWowB8qDdM+xfRdhQ/NxC8mW1PEPDzA+/
	I4IpnL4Jqe8VL/pGMKyFMigBQsA+SC4=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=none (diktynna.open-mesh.org: domain of linus.luessing@c0d3.blue has no SPF policy when checking 116.203.183.178) smtp.mailfrom=linus.luessing@c0d3.blue;
	dmarc=none
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1635715825; a=rsa-sha256;
	cv=none;
	b=ZNhHbNMjGTo2S3pYbbs62Ym4ZYBF0U6jB8W0u/HbfPZhpljrpPDXtzpBzrtxtchB03jvSR
	G7WZSDfcl/uXnRMjVfnqfBrmE5y+7A5X3P/MwN+LqcwnQSilLUj7L7AoTpieQiwF+LljKS
	NF6gssCbf9KMrKUlzXhtfaNmSQFqNmg=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: 77TUMZETETX42A62CJRH2YCQJMJ5N7MB
X-Message-ID-Hash: 77TUMZETETX42A62CJRH2YCQJMJ5N7MB
X-MailFrom: linus.luessing@c0d3.blue
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: Tycho Andersen <tycho@tycho.pizza>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/77TUMZETETX42A62CJRH2YCQJMJ5N7MB/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

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
---

Changelog v2:
* updating Tycho Andersen's email in Cc as @canonical.com returned an
  "Undelivered Mail Returned to Sender"

Cc'ing Tycho Andersen as he introduced the GENL_UNS_ADMIN_PERM in the=20
following commit:

4a92602aa1cd ("openvswitch: allow management from inside user namespaces"=
)

 net/batman-adv/netlink.c | 30 +++++++++++++++---------------
 1 file changed, 15 insertions(+), 15 deletions(-)

diff --git a/net/batman-adv/netlink.c b/net/batman-adv/netlink.c
index 29276284..00875e1d 100644
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
2.31.0
