Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F5033797FD
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 10 May 2021 21:50:35 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 20FC483F1B;
	Mon, 10 May 2021 21:50:30 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id AF27883F08
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 10 May 2021 21:50:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1620676212;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Zc1xvYKb8T/GA+yVgTO8B6BvarKC16QmgXHx4yXc/+c=;
	b=lCA3Ne6yy/otl7qz86BWO9RFlCaptlFIsyb8pwalljmhiwTe65VpGhYXnGzvsa3KE2saO0
	Eo3fNQ08c4odaQlZweckJLqVzZfpyznxJOZwkOqO1h+kiA9k0xxRjE8XqoR9YYTaiKhBPW
	b92mePe9PCxkBndXcTWwRZQ5YsosL5M=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
Subject: [PATCH 6/6] batctl: routing_algo: List using shared genl socket
Date: Mon, 10 May 2021 21:49:45 +0200
Message-Id: <20210510194945.103735-7-sven@narfation.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210510194945.103735-1-sven@narfation.org>
References: <20210510194945.103735-1-sven@narfation.org>
MIME-Version: 1.0
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1620676212; a=rsa-sha256;
	cv=none;
	b=PAUs6qTggJk5dil2h+Klrc35bMb2KQDHjqTN933yw/UurfNrwYU0/lXP0Miig5BhrUllN6
	3GMiqTMrUSebLwV9rLAdgV2y3+s/80Tufobq2fIuBBwZJ9N/Pn+aC2yBsu01TfCYHGSeoK
	Yz1zB+etijs921yUn+gfMNbhvcj24Cw=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=lCA3Ne6y;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1620676212;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=Zc1xvYKb8T/GA+yVgTO8B6BvarKC16QmgXHx4yXc/+c=;
	b=uxPjJ3+E3I2QZ+Ww6296dnvzcRLP7a3TiGwNSWqKfOAW79sM5P/oFX6qZNUMajvuyrMx2a
	wXKDXwSgSO56V4U61TFAdxqYcAWapygVD2HbAqKdZ7d+E8/njYRPV5IubFgLXZssnCKam2
	nRqQqaHufGB1rbLlBXpUodIWoQzb70k=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: 5X7PA6PEYBTDH4SE3UG6XZAWQCIJMIRX
X-Message-ID-Hash: 5X7PA6PEYBTDH4SE3UG6XZAWQCIJMIRX
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/5X7PA6PEYBTDH4SE3UG6XZAWQCIJMIRX/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

The interface subcommand doesn't need to allocate a new netlink socket to
get the list of interfaces. There is already a netlink socket available
which was used to query the routing algorithm of each interface.
Just use this batadv genl socket to also dump the list of all available
routing algorithms.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 routing_algo.c | 53 ++++++++++++++++----------------------------------
 1 file changed, 17 insertions(+), 36 deletions(-)

diff --git a/routing_algo.c b/routing_algo.c
index 8fb4fab..0adf32f 100644
--- a/routing_algo.c
+++ b/routing_algo.c
@@ -79,58 +79,35 @@ static int routing_algos_callback(struct nl_msg *msg,=
 void *arg __maybe_unused)
 	return NL_OK;
 }
=20
-static int print_routing_algos(void)
+static int print_routing_algos(struct state *state)
 {
-	struct nl_sock *sock;
 	struct nl_msg *msg;
 	struct nl_cb *cb;
-	int family;
 	struct print_opts opts =3D {
 		.callback =3D routing_algos_callback,
 	};
=20
-	sock =3D nl_socket_alloc();
-	if (!sock)
-		return -ENOMEM;
-
-	genl_connect(sock);
-
-	family =3D genl_ctrl_resolve(sock, BATADV_NL_NAME);
-	if (family < 0) {
-		last_err =3D -EOPNOTSUPP;
-		goto err_free_sock;
-	}
-
 	msg =3D nlmsg_alloc();
-	if (!msg) {
-		last_err =3D -ENOMEM;
-		goto err_free_sock;
-	}
-
-	genlmsg_put(msg, NL_AUTO_PID, NL_AUTO_SEQ, family, 0, NLM_F_DUMP,
-		    BATADV_CMD_GET_ROUTING_ALGOS, 1);
-
-	nl_send_auto_complete(sock, msg);
+	if (!msg)
+		return -ENOMEM;
=20
+	genlmsg_put(msg, NL_AUTO_PID, NL_AUTO_SEQ, state->batadv_family, 0,
+		    NLM_F_DUMP, BATADV_CMD_GET_ROUTING_ALGOS, 1);
+	nl_send_auto_complete(state->sock, msg);
 	nlmsg_free(msg);
=20
 	opts.remaining_header =3D strdup("Available routing algorithms:\n");
=20
 	cb =3D nl_cb_alloc(NL_CB_DEFAULT);
-	if (!cb) {
-		last_err =3D -ENOMEM;
-		goto err_free_sock;
-	}
+	if (!cb)
+		return -ENOMEM;
=20
 	nl_cb_set(cb, NL_CB_VALID, NL_CB_CUSTOM, netlink_print_common_cb,
 		  &opts);
 	nl_cb_set(cb, NL_CB_FINISH, NL_CB_CUSTOM, netlink_stop_callback, NULL);
 	nl_cb_err(cb, NL_CB_CUSTOM, netlink_print_error, NULL);
=20
-	nl_recvmsgs(sock, cb);
-
-err_free_sock:
-	nl_socket_free(sock);
+	nl_recvmsgs(state->sock, cb);
=20
 	if (!last_err)
 		netlink_print_remaining_header(&opts);
@@ -316,19 +293,23 @@ static int routing_algo(struct state *state, int ar=
gc, char **argv)
 		return EXIT_FAILURE;
=20
 	print_ra_interfaces(state);
-	netlink_destroy(state);
=20
 	res =3D read_file(SYS_SELECTED_RA_PATH, USE_READ_BUFF);
 	if (res !=3D EXIT_SUCCESS)
-		return EXIT_FAILURE;
+		goto err_free_netlink;
=20
 	printf("Selected routing algorithm (used when next batX interface is cr=
eated):\n");
 	printf(" =3D> %s\n", line_ptr);
 	free(line_ptr);
 	line_ptr =3D NULL;
=20
-	print_routing_algos();
-	return EXIT_SUCCESS;
+	print_routing_algos(state);
+	res =3D EXIT_SUCCESS;
+
+err_free_netlink:
+	netlink_destroy(state);
+
+	return res;
 }
=20
 COMMAND(SUBCOMMAND, routing_algo, "ra", 0, NULL,
--=20
2.30.2
