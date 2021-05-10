Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id EF7513797F7
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 10 May 2021 21:50:12 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id C463A83EF8;
	Mon, 10 May 2021 21:50:05 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id A09C983EEE
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 10 May 2021 21:50:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1620676203;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=psqDd5CfKc2pkgMJdJrlCTThkAAM5r94HlTFLovhNis=;
	b=BPLcdpQsnHg6o46xiIcSke8y0IgFRcqjjCqVU/fRRj95Fi/xmwIEfJSUV3WIwnlCNYerNL
	s0M0lL/3Nhg3mBXqPJwwS0jmFwpYhLuS5k4Bgo1XMI0u/zvEBAE6bFQHxrgABb0NwsaSnU
	V37Zzd+2cGLPRLgdKw+9I5z816v4ylU=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
Subject: [PATCH 2/6] batctl: throughputmeter: Use global genl socket
Date: Mon, 10 May 2021 21:49:41 +0200
Message-Id: <20210510194945.103735-3-sven@narfation.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210510194945.103735-1-sven@narfation.org>
References: <20210510194945.103735-1-sven@narfation.org>
MIME-Version: 1.0
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1620676203; a=rsa-sha256;
	cv=none;
	b=Y7Nxn8nu/mw3i55YZkqGkHRAh/bqU6FP65cgNn5E+o3UNEQdVxfC74a0Hy6kgORpf0Vs8j
	HRREcEFIUaKrg16uisN+syE1q0bCcvHEKehItWDmHDnQ1zCO7vQwCzFIfAtB4IAMlEm9kc
	43L4omQphNSKU+PSIZGcirfCDhhwAro=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=BPLcdpQs;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1620676203;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=psqDd5CfKc2pkgMJdJrlCTThkAAM5r94HlTFLovhNis=;
	b=peYC7pc57CB8L3xQYWjKXvN+GdkYmbOltRFeI4wsJ8hjdeG4BtIawA4Dboau2nJRhJx208
	K3lXFx6X8uxnI4agApMuEygf0mc2T+PqfSu1nZnXWFQDbXz5+EoitBUC14vLCWcPfDalLR
	RIIqvqwgyBJcT0DR3fOrzkwETUAtfBg=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: VNUUWCPJ2XWJUV2Y4BA7FD4JGAONHX7O
X-Message-ID-Hash: VNUUWCPJ2XWJUV2Y4BA7FD4JGAONHX7O
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/VNUUWCPJ2XWJUV2Y4BA7FD4JGAONHX7O/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

The batctl framework can take care of creating the netlink socket and
gathering the data for a mesh interface. It is not necessary to duplicate
all the code to create, setup and destroy the batadv genl socket for a
standard socket.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 throughputmeter.c | 105 ++++++++++------------------------------------
 1 file changed, 21 insertions(+), 84 deletions(-)

diff --git a/throughputmeter.c b/throughputmeter.c
index f50f521..7f89651 100644
--- a/throughputmeter.c
+++ b/throughputmeter.c
@@ -34,7 +34,7 @@
 #include "netlink.h"
=20
 static struct ether_addr *dst_mac;
-static char *tp_mesh_iface;
+static struct state *tp_state;
=20
 struct tp_result {
 	int error;
@@ -151,62 +151,34 @@ static int tp_meter_cookie_callback(struct nl_msg *=
msg, void *arg)
 	return NL_OK;
 }
=20
-static int tp_meter_start(char *mesh_iface, struct ether_addr *dst_mac,
+
+static int tp_meter_start(struct state *state, struct ether_addr *dst_ma=
c,
 			  uint32_t time, struct tp_cookie *cookie)
 {
-	struct nl_sock *sock;
 	struct nl_msg *msg;
 	struct nl_cb *cb;
-	int ifindex;
-	int family;
-	int ret;
 	int err =3D 0;
=20
-	sock =3D nl_socket_alloc();
-	if (!sock)
-		return -ENOMEM;
-
-	ret =3D genl_connect(sock);
-	if (ret < 0) {
-		err =3D -EOPNOTSUPP;
-		goto out;
-	}
-
-	family =3D genl_ctrl_resolve(sock, BATADV_NL_NAME);
-	if (family < 0) {
-		err =3D -EOPNOTSUPP;
-		goto out;
-	}
-
-	ifindex =3D if_nametoindex(mesh_iface);
-	if (!ifindex) {
-		fprintf(stderr, "Interface %s is unknown\n", mesh_iface);
-		err =3D -ENODEV;
-		goto out;
-	}
-
 	cb =3D nl_cb_alloc(NL_CB_DEFAULT);
 	nl_cb_set(cb, NL_CB_VALID, NL_CB_CUSTOM, tp_meter_cookie_callback,
 		  cookie);
 	nl_cb_err(cb, NL_CB_CUSTOM, tpmeter_nl_print_error, cookie);
=20
 	msg =3D nlmsg_alloc();
-	if (!msg) {
-		err =3D -ENOMEM;
-		goto out;
-	}
+	if (!msg)
+		return -ENOMEM;
=20
-	genlmsg_put(msg, NL_AUTO_PID, NL_AUTO_SEQ, family, 0,
+	genlmsg_put(msg, NL_AUTO_PID, NL_AUTO_SEQ, state->batadv_family, 0,
 		    0, BATADV_CMD_TP_METER, 1);
=20
-	nla_put_u32(msg, BATADV_ATTR_MESH_IFINDEX, ifindex);
+	nla_put_u32(msg, BATADV_ATTR_MESH_IFINDEX, state->mesh_ifindex);
 	nla_put(msg, BATADV_ATTR_ORIG_ADDRESS, ETH_ALEN, dst_mac);
 	nla_put_u32(msg, BATADV_ATTR_TPMETER_TEST_TIME, time);
=20
-	nl_send_auto_complete(sock, msg);
+	nl_send_auto_complete(state->sock, msg);
 	nlmsg_free(msg);
=20
-	nl_recvmsgs(sock, cb);
+	nl_recvmsgs(state->sock, cb);
=20
 	nl_cb_put(cb);
=20
@@ -215,9 +187,6 @@ static int tp_meter_start(char *mesh_iface, struct et=
her_addr *dst_mac,
 	else if (!cookie->found)
 		err=3D -EINVAL;
=20
-out:
-	nl_socket_free(sock);
-
 	return err;
 }
=20
@@ -251,57 +220,24 @@ static int tp_recv_result(struct nl_sock *sock, str=
uct tp_result *result)
 	return err;
 }
=20
-static int tp_meter_stop(char *mesh_iface, struct ether_addr *dst_mac)
+static int tp_meter_stop(struct state *state, struct ether_addr *dst_mac=
)
 {
-	struct nl_sock *sock;
 	struct nl_msg *msg;
-	int ifindex;
-	int family;
-	int ret;
-	int err =3D 0;
-
-	sock =3D nl_socket_alloc();
-	if (!sock)
-		return -ENOMEM;
-
-	ret =3D genl_connect(sock);
-	if (ret < 0) {
-		err =3D -EOPNOTSUPP;
-		goto out;
-	}
-
-	family =3D genl_ctrl_resolve(sock, BATADV_NL_NAME);
-	if (family < 0) {
-		err =3D -EOPNOTSUPP;
-		goto out;
-	}
-
-	ifindex =3D if_nametoindex(mesh_iface);
-	if (!ifindex) {
-		fprintf(stderr, "Interface %s is unknown\n", mesh_iface);
-		err =3D -ENODEV;
-		goto out;
-	}
=20
 	msg =3D nlmsg_alloc();
-	if (!msg) {
-		err =3D -ENOMEM;
-		goto out;
-	}
+	if (!msg)
+		return -ENOMEM;
=20
-	genlmsg_put(msg, NL_AUTO_PID, NL_AUTO_SEQ, family, 0,
+	genlmsg_put(msg, NL_AUTO_PID, NL_AUTO_SEQ, state->batadv_family, 0,
 		    0, BATADV_CMD_TP_METER_CANCEL, 1);
=20
-	nla_put_u32(msg, BATADV_ATTR_MESH_IFINDEX, ifindex);
+	nla_put_u32(msg, BATADV_ATTR_MESH_IFINDEX, state->mesh_ifindex);
 	nla_put(msg, BATADV_ATTR_ORIG_ADDRESS, ETH_ALEN, dst_mac);
=20
-	nl_send_auto_complete(sock, msg);
+	nl_send_auto_complete(state->sock, msg);
 	nlmsg_free(msg);
=20
-out:
-	nl_socket_free(sock);
-
-	return err;
+	return 0;
 }
=20
 static struct nl_sock *tp_prepare_listening_sock(void)
@@ -358,7 +294,7 @@ void tp_sig_handler(int sig)
 	case SIGINT:
 	case SIGTERM:
 		fflush(stdout);
-		tp_meter_stop(tp_mesh_iface, dst_mac);
+		tp_meter_stop(tp_state, dst_mac);
 		break;
 	default:
 		break;
@@ -443,7 +379,7 @@ static int throughputmeter(struct state *state, int a=
rgc, char **argv)
 		dst_string =3D ether_ntoa_long(dst_mac);
=20
 	/* for sighandler */
-	tp_mesh_iface =3D state->mesh_iface;
+	tp_state =3D state;
 	signal(SIGINT, tp_sig_handler);
 	signal(SIGTERM, tp_sig_handler);
=20
@@ -451,7 +387,7 @@ static int throughputmeter(struct state *state, int a=
rgc, char **argv)
 	if (!listen_sock)
 		goto out;
=20
-	ret =3D tp_meter_start(state->mesh_iface, dst_mac, time, &cookie);
+	ret =3D tp_meter_start(state, dst_mac, time, &cookie);
 	if (ret < 0) {
 		printf("Failed to send tp_meter request to kernel: %d\n", ret);
 		goto out;
@@ -529,5 +465,6 @@ static int throughputmeter(struct state *state, int a=
rgc, char **argv)
 	return ret;
 }
=20
-COMMAND(SUBCOMMAND_MIF, throughputmeter, "tp", COMMAND_FLAG_MESH_IFACE, =
NULL,
+COMMAND(SUBCOMMAND_MIF, throughputmeter, "tp",
+	COMMAND_FLAG_MESH_IFACE | COMMAND_FLAG_NETLINK, NULL,
 	"<destination>     \tstart a throughput measurement");
--=20
2.30.2
