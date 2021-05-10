Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F7B53797F9
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 10 May 2021 21:50:22 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 8592A83EFB;
	Mon, 10 May 2021 21:50:18 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 1B18283F04
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 10 May 2021 21:50:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1620676207;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=hLmpyPsSHzJzUzjHVMXhtNHQZn4CajYaAmk+MU/usaw=;
	b=CZop7RnEVCbSJ9zVun/70xwLka11qzBeYlBHAKCK18xdDNmla4x+Kxn20+1igDBf/fyTel
	7Sr9rStPCs6ed3FaxauLrrIhRevj8KLiI+L14KbXqqMXJdhvRIwdHFTiSPekEvEBY9BPVO
	chGODOfdoA0WwDgNsioIZARQmg/opmE=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
Subject: [PATCH 4/6] batctl: Get meshif info using shared genl socket
Date: Mon, 10 May 2021 21:49:43 +0200
Message-Id: <20210510194945.103735-5-sven@narfation.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210510194945.103735-1-sven@narfation.org>
References: <20210510194945.103735-1-sven@narfation.org>
MIME-Version: 1.0
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1620676208; a=rsa-sha256;
	cv=none;
	b=aKJCWxoKud6VEzpivI5oCXcrXpFaEOfj3WdvVkcmWL515VoarLr7MEuoO1k2jDdaw1pQUN
	VljFhm0Mw3OBWgoVoDClbFFhZlw1g4CZKvzxjS2oCZ/OQwX43l5mycUUFVXsX1T7oU4uh7
	1LJbrXh6ww2AdNshrB6xv23nIov8pag=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=CZop7RnE;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1620676208;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=hLmpyPsSHzJzUzjHVMXhtNHQZn4CajYaAmk+MU/usaw=;
	b=bpzIV1e8Qc+H145CrovOxnSg85fZA8lpnTugze/L7QzYGMGRecjFOx7DFRB/Bog1CXw2ZW
	yB5lkOkqbbDgNk4Z7eOueHXQ9eIcjGcInxV+cKaIJM/YbuQG9sQWg3Isp/fYatSNbzaPyJ
	xTvtZAWYYQ8+RCd+CKObWTXjA6nDRic=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: TPRVYAPOOSRVQ34PKCUOYXI44CUAMR32
X-Message-ID-Hash: TPRVYAPOOSRVQ34PKCUOYXI44CUAMR32
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/TPRVYAPOOSRVQ34PKCUOYXI44CUAMR32/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

All subcommands which are using the netlink_get_info helper are already
creating state object with batadv genl socket. It is not necessary to
create a new one just to request data from the kernel.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 gateways.c    |  3 +--
 mcast_flags.c |  3 +--
 netlink.c     | 40 +++++++++++++---------------------------
 netlink.h     |  2 +-
 originators.c |  3 +--
 5 files changed, 17 insertions(+), 34 deletions(-)

diff --git a/gateways.c b/gateways.c
index 7625bd8..bdd6795 100644
--- a/gateways.c
+++ b/gateways.c
@@ -122,8 +122,7 @@ static int netlink_print_gateways(struct state *state=
, char *orig_iface,
=20
 	/* only parse routing algorithm name */
 	last_err =3D -EINVAL;
-	info_header =3D netlink_get_info(state->mesh_ifindex,
-				       BATADV_CMD_GET_ORIGINATORS, NULL);
+	info_header =3D netlink_get_info(state, BATADV_CMD_GET_ORIGINATORS, NUL=
L);
 	free(info_header);
=20
 	if (strlen(algo_name_buf) =3D=3D 0)
diff --git a/mcast_flags.c b/mcast_flags.c
index 721f549..44344e0 100644
--- a/mcast_flags.c
+++ b/mcast_flags.c
@@ -104,8 +104,7 @@ static int netlink_print_mcast_flags(struct state *st=
ate, char *orig_iface,
 	int ret;
=20
 	/* only parse own multicast flags */
-	info_header =3D netlink_get_info(state->mesh_ifindex,
-				       BATADV_CMD_GET_MCAST_FLAGS, NULL);
+	info_header =3D netlink_get_info(state, BATADV_CMD_GET_MCAST_FLAGS, NUL=
L);
 	free(info_header);
=20
 	if (mcast_flags =3D=3D -EOPNOTSUPP || mcast_flags_priv =3D=3D -EOPNOTSU=
PP)
diff --git a/netlink.c b/netlink.c
index 31c9b01..e3a7b7c 100644
--- a/netlink.c
+++ b/netlink.c
@@ -339,60 +339,46 @@ static int info_callback(struct nl_msg *msg, void *=
arg)
 			opts->remaining_header =3D NULL;
 	}
=20
-	return NL_STOP;
+	return NL_OK;
 }
=20
-char *netlink_get_info(int ifindex, uint8_t nl_cmd, const char *header)
+char *netlink_get_info(struct state *state, uint8_t nl_cmd, const char *=
header)
 {
-	struct nl_sock *sock;
 	struct nl_msg *msg;
 	struct nl_cb *cb;
-	int family;
 	struct print_opts opts =3D {
 		.read_opt =3D 0,
 		.nl_cmd =3D nl_cmd,
 		.remaining_header =3D NULL,
 		.static_header =3D header,
 	};
-
-	sock =3D nl_socket_alloc();
-	if (!sock)
-		return NULL;
-
-	genl_connect(sock);
-
-	family =3D genl_ctrl_resolve(sock, BATADV_NL_NAME);
-	if (family < 0) {
-		nl_socket_free(sock);
-		return NULL;
-	}
+	int ret;
=20
 	msg =3D nlmsg_alloc();
-	if (!msg) {
-		nl_socket_free(sock);
+	if (!msg)
 		return NULL;
-	}
=20
-	genlmsg_put(msg, NL_AUTO_PID, NL_AUTO_SEQ, family, 0, 0,
+	genlmsg_put(msg, NL_AUTO_PID, NL_AUTO_SEQ, state->batadv_family, 0, 0,
 		    BATADV_CMD_GET_MESH_INFO, 1);
=20
-	nla_put_u32(msg, BATADV_ATTR_MESH_IFINDEX, ifindex);
+	nla_put_u32(msg, BATADV_ATTR_MESH_IFINDEX, state->mesh_ifindex);
=20
-	nl_send_auto_complete(sock, msg);
+	nl_send_auto_complete(state->sock, msg);
=20
 	nlmsg_free(msg);
=20
 	cb =3D nl_cb_alloc(NL_CB_DEFAULT);
 	if (!cb)
-		goto err_free_sock;
+		return NULL;
=20
 	nl_cb_set(cb, NL_CB_VALID, NL_CB_CUSTOM, info_callback, &opts);
 	nl_cb_err(cb, NL_CB_CUSTOM, netlink_print_error, NULL);
=20
-	nl_recvmsgs(sock, cb);
+	ret =3D nl_recvmsgs(state->sock, cb);
+	if (ret < 0)
+		return opts.remaining_header;
=20
-err_free_sock:
-	nl_socket_free(sock);
+	nl_wait_for_ack(state->sock);
=20
 	return opts.remaining_header;
 }
@@ -458,7 +444,7 @@ int netlink_print_common(struct state *state, char *o=
rig_iface, int read_opt,
 			printf("\033[2J\033[0;0f");
=20
 		if (!(read_opt & SKIP_HEADER))
-			opts.remaining_header =3D netlink_get_info(state->mesh_ifindex,
+			opts.remaining_header =3D netlink_get_info(state,
 								 nl_cmd,
 								 header);
=20
diff --git a/netlink.h b/netlink.h
index 4ee2f39..48a2a23 100644
--- a/netlink.h
+++ b/netlink.h
@@ -30,7 +30,7 @@ struct ether_addr;
 int netlink_create(struct state *state);
 void netlink_destroy(struct state *state);
=20
-char *netlink_get_info(int ifindex, uint8_t nl_cmd, const char *header);
+char *netlink_get_info(struct state *state, uint8_t nl_cmd, const char *=
header);
 int translate_mac_netlink(const char *mesh_iface, const struct ether_add=
r *mac,
 			  struct ether_addr *mac_out);
 int get_nexthop_netlink(const char *mesh_iface, const struct ether_addr =
*mac,
diff --git a/originators.c b/originators.c
index 8a29dd7..a8b313e 100644
--- a/originators.c
+++ b/originators.c
@@ -174,8 +174,7 @@ static int netlink_print_originators(struct state *st=
ate, char *orig_iface,
=20
 	/* only parse routing algorithm name */
 	last_err =3D -EINVAL;
-	info_header =3D netlink_get_info(state->mesh_ifindex,
-				       BATADV_CMD_GET_ORIGINATORS, NULL);
+	info_header =3D netlink_get_info(state, BATADV_CMD_GET_ORIGINATORS, NUL=
L);
 	free(info_header);
=20
 	if (strlen(algo_name_buf) =3D=3D 0)
--=20
2.30.2
