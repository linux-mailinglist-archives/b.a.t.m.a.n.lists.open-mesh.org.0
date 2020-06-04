Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DE631EEB4E
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu,  4 Jun 2020 21:44:02 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 6633D81DAC;
	Thu,  4 Jun 2020 21:44:01 +0200 (CEST)
Received: from mail.aperture-lab.de (mail.aperture-lab.de [IPv6:2a01:4f8:171:314c::100:a1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 895EB8010C
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu,  4 Jun 2020 21:43:59 +0200 (CEST)
From: =?UTF-8?q?Linus=20L=C3=BCssing?= <linus.luessing@c0d3.blue>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c0d3.blue; s=2018;
	t=1591299839;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=PdCRGR9HxLrJHd3E7rRRjik4l7Eeux4pDRy+Q8GQoi8=;
	b=YxXiG86GBA/RixKqJfrXCoSBIwE2/WyVMpHqF+mnmK/ZXLPQ6A2TWJ7GIfIdgTaVLQokg/
	m9wQFm4lKifIWuSAjLYrycGNlbaCnR0lkbGEprWzLyOeqZ2+tf1RhNmm7lvoNkMcX5Rb0v
	eNWFlW7MI6cD8XcrOP2YD7mbxaH5GoLlYufurEk+QcF1GnSw17+haXZxIh/QUDYaoQgJHA
	ib1ni+hi/I792F5JL97OAY5P9DWSGUPt++t9sdJHvELD7yExcczSpjyPS/w34Eu+W2hoPV
	DpT4wS+HVkAF63v/zyJwh3skFVaZqz7OKhGkBY5clun4JdfsUFj0nedGdzZ7sg==
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: =?UTF-8?q?Linus=20L=C3=BCssing?= <linus.luessing@c0d3.blue>
Subject: [PATCH v2] batctl: Add per interface hop penalty command
Date: Thu,  4 Jun 2020 21:43:53 +0200
Message-Id: <20200604194353.2656-1-linus.luessing@c0d3.blue>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=linus.luessing@c0d3.blue smtp.mailfrom=linus.luessing@c0d3.blue
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1591299839;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=PdCRGR9HxLrJHd3E7rRRjik4l7Eeux4pDRy+Q8GQoi8=;
	b=wcckAevdeT4p7EMT136U5RKlBGtxfNx8xfkHskCvHtmWG8YpNeiES9THyFwZZvF4YZ+eWr
	kH/OKZJFt0K9fOLQkqQrqsNOnhNDM5aQa3FKFZOv8u+zzuWNnzoMvDabX0Fp/ztfCk5jOa
	rXS/8pg7t0/UNWfMFyI24ZVx46s/MnM=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1591299839; a=rsa-sha256;
	cv=none;
	b=XXFNJMJgQlUU91zLcHQLAkAqmWu/DqkB+GcywK8kuDP5PILvHeqstRXXwdj3YOjuwGji0j
	XSNb2pyN46SyK3S6r9QYnRnt7RSsG82WHWgqK6SUp0+ZZ4LrCZKqOzJBbu6o2O3dq4Az6F
	Y0L0ziH3+l2Jp3SZwV8MQzkHSjBKylE=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none (invalid DKIM record) header.d=c0d3.blue header.s=2018 header.b=YxXiG86G;
	spf=none (diktynna.open-mesh.org: domain of linus.luessing@c0d3.blue has no SPF policy when checking 2a01:4f8:171:314c::100:a1) smtp.mailfrom=linus.luessing@c0d3.blue
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: OLERLJ6VSWZL5IIPPIL52X7DP2GDFOY7
X-Message-ID-Hash: OLERLJ6VSWZL5IIPPIL52X7DP2GDFOY7
X-MailFrom: linus.luessing@c0d3.blue
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/OLERLJ6VSWZL5IIPPIL52X7DP2GDFOY7/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

This patch extends the hop penalty setting to be configurable not only
on a node scope but also on a per hard interface basis.

Signed-off-by: Linus L=C3=BCssing <linus.luessing@c0d3.blue>
---
 README.rst    |  7 ++++++-
 event.c       |  4 ++++
 hop_penalty.c | 47 +++++++++++++++++++++++++++++++++++++++++++++++
 man/batctl.8  |  4 ++++
 4 files changed, 61 insertions(+), 1 deletion(-)

diff --git a/README.rst b/README.rst
index 128f539..4830347 100644
--- a/README.rst
+++ b/README.rst
@@ -562,8 +562,13 @@ Usage::
=20
 Example::
=20
-  $ batctl penalty
+  $ batctl hop_penalty
   30
+  $ batctl hardif eth0 hop_penalty
+  0
+  $ batctl hardif eth0 hop_penalty 50
+  $ batctl hardif eth0 hop_penalty
+  50
=20
=20
 batctl isolation_mark
diff --git a/event.c b/event.c
index cebb803..3fbc6cc 100644
--- a/event.c
+++ b/event.c
@@ -317,6 +317,10 @@ static void event_parse_set_hardif(struct nlattr **a=
ttrs)
=20
 	printf("%s (%s): set hardif:\n", meshif_name, hardif_name);
=20
+	if (attrs[BATADV_ATTR_HOP_PENALTY])
+		printf("* hop_penalty %u\n",
+		       nla_get_u8(attrs[BATADV_ATTR_HOP_PENALTY]));
+
 	if (attrs[BATADV_ATTR_ELP_INTERVAL])
 		printf("* elp_interval %u ms\n",
 		       nla_get_u32(attrs[BATADV_ATTR_ELP_INTERVAL]));
diff --git a/hop_penalty.c b/hop_penalty.c
index 1f8f1db..5f1aabc 100644
--- a/hop_penalty.c
+++ b/hop_penalty.c
@@ -70,6 +70,22 @@ static int get_hop_penalty(struct state *state)
 				  NULL, print_hop_penalty);
 }
=20
+static int get_attrs_hop_penalty_if(struct nl_msg *msg, void *arg)
+{
+	struct state *state =3D arg;
+
+	nla_put_u32(msg, BATADV_ATTR_HARD_IFINDEX, state->hif);
+
+	return 0;
+}
+
+static int get_hop_penalty_if(struct state *state)
+{
+	return sys_simple_nlquery(state, BATADV_CMD_GET_HARDIF,
+				  get_attrs_hop_penalty_if,
+				  print_hop_penalty);
+}
+
 static int set_attrs_hop_penalty(struct nl_msg *msg, void *arg)
 {
 	struct state *state =3D arg;
@@ -87,6 +103,24 @@ static int set_hop_penalty(struct state *state)
 				  set_attrs_hop_penalty, NULL);
 }
=20
+static int set_attrs_hop_penalty_if(struct nl_msg *msg, void *arg)
+{
+	struct state *state =3D arg;
+	struct settings_data *settings =3D state->cmd->arg;
+	struct hop_penalty_data *data =3D settings->data;
+
+	nla_put_u32(msg, BATADV_ATTR_HARD_IFINDEX, state->hif);
+	nla_put_u8(msg, BATADV_ATTR_HOP_PENALTY, data->hop_penalty);
+
+	return 0;
+}
+
+static int set_hop_penalty_if(struct state *state)
+{
+	return sys_simple_nlquery(state, BATADV_CMD_SET_HARDIF,
+				  set_attrs_hop_penalty_if, NULL);
+}
+
 static struct settings_data batctl_settings_hop_penalty =3D {
 	.sysfs_name =3D "hop_penalty",
 	.data =3D &hop_penalty,
@@ -95,7 +129,20 @@ static struct settings_data batctl_settings_hop_penal=
ty =3D {
 	.netlink_set =3D set_hop_penalty,
 };
=20
+static struct settings_data batctl_settings_hop_penalty_if =3D {
+	.sysfs_name =3D NULL,
+	.data =3D &hop_penalty,
+	.parse =3D parse_hop_penalty,
+	.netlink_get =3D get_hop_penalty_if,
+	.netlink_set =3D set_hop_penalty_if,
+};
+
 COMMAND_NAMED(SUBCOMMAND_MIF, hop_penalty, "hp", handle_sys_setting,
 	      COMMAND_FLAG_MESH_IFACE | COMMAND_FLAG_NETLINK,
 	      &batctl_settings_hop_penalty,
 	      "[penalty]         \tdisplay or modify hop_penalty setting");
+
+COMMAND_NAMED(SUBCOMMAND_HIF, hop_penalty, "hp", handle_sys_setting,
+	      COMMAND_FLAG_MESH_IFACE | COMMAND_FLAG_NETLINK,
+	      &batctl_settings_hop_penalty_if,
+	      "[penalty]         \tdisplay or modify hop_penalty setting");
diff --git a/man/batctl.8 b/man/batctl.8
index 6e75cdd..d4d5fe5 100644
--- a/man/batctl.8
+++ b/man/batctl.8
@@ -109,6 +109,10 @@ disable fragmentation.
 If no parameter is given the current hop penalty setting is displayed. O=
therwise the parameter is used to set the
 hop penalty. The penalty is can be 0-255 (255 sets originator message's =
TQ to zero when forwarded by this hop).
 .br
+.IP "[\fBhardif <hardif>\fP] \fBhop_penalty\fP|\fBhp\fP [\fBpenalty\fP]"
+If no parameter is given the current hop penalty setting of the hard int=
erface is displayed. Otherwise the parameter is used to set the
+hop penalty. The penalty can be 0-255 (255 sets originator message's TQ =
to zero when forwarded over this interface).
+.br
 .IP "[\fBmeshif <netdev>\fP] \fBnetwork_coding\fP|\fBnc\fP [\fB0\fP|\fB1=
\fP]"
 If no parameter is given the current network coding mode setting is disp=
layed. Otherwise the parameter is used to enable or
 disable network coding.
--=20
2.27.0.rc2
