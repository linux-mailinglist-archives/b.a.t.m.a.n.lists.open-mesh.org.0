Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id C68B53797F8
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 10 May 2021 21:50:17 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 034D883F0D;
	Mon, 10 May 2021 21:50:13 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id C032583EF7
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 10 May 2021 21:50:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1620676205;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=VN+MPRJ7fMjIVLj4NsM00AvN3HI4JIxVNNQqnlydO0s=;
	b=dW50FmUa3fiGJpFwujZL4W3ZpYzcHihKEaGBT6fQTL25c1F5aIWu4n6U7VF4G1R43v9wig
	ZU9NMbpFr9Fsn9qS5lAqXLM2qKS+NlniYXqSYge0nQ46Vi9+S6Mtb5Z6fU9WZxaMd27zKl
	DsAulccvvpm5kMQO4r5SSQS2Hc+OSKE=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
Subject: [PATCH 3/6] batctl: interface: List using shared genl socket
Date: Mon, 10 May 2021 21:49:42 +0200
Message-Id: <20210510194945.103735-4-sven@narfation.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210510194945.103735-1-sven@narfation.org>
References: <20210510194945.103735-1-sven@narfation.org>
MIME-Version: 1.0
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1620676205; a=rsa-sha256;
	cv=none;
	b=JzIS0BW7hwBzdy8qZWn52R8BIDbEMn3+w3oIkPmkusVG38It7mu17PTlRY36HGvdfb7uAh
	/izv/8MRnlE0u4ciMlaPjtqWxZ66+5WrxneN7Ev08wcwtXhSkQcbtr3jlwQCefFWzeuqQx
	rUl++S7LbsAia0PLBbbX5In+f7Y+X8E=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=dW50FmUa;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1620676205;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=VN+MPRJ7fMjIVLj4NsM00AvN3HI4JIxVNNQqnlydO0s=;
	b=NSb/cfmvP0Y/rEElMCPzlRRss/2jtygeXLqSN0jupI8ZHYVtiMOsmEOyn0mFQzRtflNo8O
	TDt8VWC5XRzqz4gYlFnSahWm11esbeMvnL4wEqAP3AjHjDaayZ6KCjtbZLHbRIpD64R1Gf
	I1K2kDrNmFnYds8e1PY+o3BF25b6VC4=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: Y67ATKAPTWX3JI5SACCO4EBOG7CAIWZ7
X-Message-ID-Hash: Y67ATKAPTWX3JI5SACCO4EBOG7CAIWZ7
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/Y67ATKAPTWX3JI5SACCO4EBOG7CAIWZ7/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

The interface subcommand doesn't need to allocate a new netlink socket to
query the state of a single interface. But it can also not use the socket
which is automatically pre-configured by COMMAND_FLAG_NETLINK because the
(main sub)command might also be started for interfaces which might not
exist yet.

Instead use the shared functions to pre-allocate the necessary state
information when calling the "list" sub-subcommand.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 interface.c | 77 +++++++++++++++++++++--------------------------------
 1 file changed, 31 insertions(+), 46 deletions(-)

diff --git a/interface.c b/interface.c
index cf9c0c3..a96a328 100644
--- a/interface.c
+++ b/interface.c
@@ -62,65 +62,46 @@ static int get_iface_status_netlink_parse(struct nl_m=
sg *msg, void *arg)
=20
 	iface_status[IFACE_STATUS_LEN - 1] =3D '\0';
=20
-	return NL_STOP;
+	return NL_OK;
 }
=20
-static char *get_iface_status_netlink(unsigned int meshif, unsigned int =
hardif,
+static char *get_iface_status_netlink(struct state *state, unsigned int =
hardif,
 				      char *iface_status)
 {
 	char *ret_status =3D NULL;
-	struct nl_sock *sock;
 	struct nl_msg *msg;
-	int batadv_family;
-	struct nl_cb *cb;
 	int ret;
=20
 	iface_status[0] =3D '\0';
=20
-	sock =3D nl_socket_alloc();
-	if (!sock)
-		return NULL;
-
-	ret =3D genl_connect(sock);
-	if (ret < 0)
-		goto err_free_sock;
-
-	batadv_family =3D genl_ctrl_resolve(sock, BATADV_NL_NAME);
-	if (batadv_family < 0)
-		goto err_free_sock;
-
-	cb =3D nl_cb_alloc(NL_CB_DEFAULT);
-	if (!cb)
-		goto err_free_sock;
-
-	nl_cb_set(cb, NL_CB_VALID, NL_CB_CUSTOM, get_iface_status_netlink_parse=
,
+	nl_cb_set(state->cb, NL_CB_VALID, NL_CB_CUSTOM, get_iface_status_netlin=
k_parse,
 		iface_status);
=20
 	msg =3D nlmsg_alloc();
 	if (!msg)
-		goto err_free_cb;
+		return NULL;
=20
-	genlmsg_put(msg, NL_AUTO_PID, NL_AUTO_SEQ, batadv_family,
+	genlmsg_put(msg, NL_AUTO_PID, NL_AUTO_SEQ, state->batadv_family,
 		    0, 0, BATADV_CMD_GET_HARDIF, 1);
=20
-	nla_put_u32(msg, BATADV_ATTR_MESH_IFINDEX, meshif);
+	nla_put_u32(msg, BATADV_ATTR_MESH_IFINDEX, state->mesh_ifindex);
 	nla_put_u32(msg, BATADV_ATTR_HARD_IFINDEX, hardif);
=20
-	ret =3D nl_send_auto_complete(sock, msg);
+	ret =3D nl_send_auto_complete(state->sock, msg);
+	if (ret < 0)
+		goto err_free_msg;
+
+	ret =3D nl_recvmsgs(state->sock, state->cb);
 	if (ret < 0)
 		goto err_free_msg;
=20
-	nl_recvmsgs(sock, cb);
+	nl_wait_for_ack(state->sock);
=20
 	if (strlen(iface_status) > 0)
 		ret_status =3D iface_status;
=20
 err_free_msg:
 	nlmsg_free(msg);
-err_free_cb:
-	nl_cb_put(cb);
-err_free_sock:
-	nl_socket_free(sock);
=20
 	return ret_status;
 }
@@ -130,20 +111,16 @@ static struct nla_policy link_policy[IFLA_MAX + 1] =
=3D {
 	[IFLA_MASTER] =3D { .type =3D NLA_U32 },
 };
=20
-struct print_interfaces_rtnl_arg {
-	int ifindex;
-};
-
 static int print_interfaces_rtnl_parse(struct nl_msg *msg, void *arg)
 {
-	struct print_interfaces_rtnl_arg *print_arg =3D arg;
 	char iface_status[IFACE_STATUS_LEN];
 	struct nlattr *attrs[IFLA_MAX + 1];
+	struct state *state =3D arg;
 	struct ifinfomsg *ifm;
+	unsigned int master;
 	char *ifname;
 	int ret;
 	const char *status;
-	int master;
=20
 	ifm =3D nlmsg_data(nlmsg_hdr(msg));
 	ret =3D nlmsg_parse(nlmsg_hdr(msg), sizeof(*ifm), attrs, IFLA_MAX,
@@ -161,10 +138,10 @@ static int print_interfaces_rtnl_parse(struct nl_ms=
g *msg, void *arg)
 	master =3D nla_get_u32(attrs[IFLA_MASTER]);
=20
 	/* required on older kernels which don't prefilter the results */
-	if (master !=3D print_arg->ifindex)
+	if (master !=3D state->mesh_ifindex)
 		goto err;
=20
-	status =3D get_iface_status_netlink(master, ifm->ifi_index, iface_statu=
s);
+	status =3D get_iface_status_netlink(state, ifm->ifi_index, iface_status=
);
 	if (!status)
 		status =3D "<error reading status>\n";
=20
@@ -174,21 +151,29 @@ static int print_interfaces_rtnl_parse(struct nl_ms=
g *msg, void *arg)
 	return NL_OK;
 }
=20
-static int print_interfaces(char *mesh_iface)
+static int print_interfaces(struct state *state)
 {
-	struct print_interfaces_rtnl_arg print_arg;
+	int ret;
=20
 	if (!file_exists(module_ver_path)) {
 		fprintf(stderr, "Error - batman-adv module has not been loaded\n");
 		return EXIT_FAILURE;
 	}
=20
-	print_arg.ifindex =3D if_nametoindex(mesh_iface);
-	if (!print_arg.ifindex)
+	/* duplicated code here from the main() because interface doesn't alway=
s
+	 * need COMMAND_FLAG_MESH_IFACE and COMMAND_FLAG_NETLINK
+	 */
+	if (check_mesh_iface(state))
 		return EXIT_FAILURE;
=20
-	query_rtnl_link(print_arg.ifindex, print_interfaces_rtnl_parse,
-			&print_arg);
+	ret =3D netlink_create(state);
+	if (ret < 0)
+		return EXIT_FAILURE;
+
+	query_rtnl_link(state->mesh_ifindex, print_interfaces_rtnl_parse,
+			state);
+
+	netlink_destroy(state);
=20
 	return EXIT_SUCCESS;
 }
@@ -452,7 +437,7 @@ static int interface(struct state *state, int argc, c=
har **argv)
 	rest_argv =3D &argv[optind];
=20
 	if (rest_argc =3D=3D 0)
-		return print_interfaces(state->mesh_iface);
+		return print_interfaces(state);
=20
 	check_root_or_die("batctl interface");
=20
--=20
2.30.2
