Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FD093797FA
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 10 May 2021 21:50:29 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 0DF4B83EFE;
	Mon, 10 May 2021 21:50:24 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 508DC83F05
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 10 May 2021 21:50:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1620676210;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=BAoIqsG4bnry3IAnq1kxS9sz4uVVKtoOc9Dlvbn7JyA=;
	b=qNIxY2UxBWufvT0STdeDLMoMM7L788FToFo0ujCYFg3ZcykZ2mOhx2s6mdMWjGZigv47pE
	1DQi8XnmLzgYdQ5qphgrZ7u/Ff2IZPSrLjrJ9nkcUOMPLbhx99q0RhakviI9hW2bvohyjv
	wxuGgSCR/mYq4n8BFatgqgkO6EW5KRk=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
Subject: [PATCH 5/6] batctl: Use common genl socket for netlink_query_common
Date: Mon, 10 May 2021 21:49:44 +0200
Message-Id: <20210510194945.103735-6-sven@narfation.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210510194945.103735-1-sven@narfation.org>
References: <20210510194945.103735-1-sven@narfation.org>
MIME-Version: 1.0
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1620676210; a=rsa-sha256;
	cv=none;
	b=zjBoOPT/NurSCMrMjPlbi/+iwlfYbcwslgiwCApSkJp674ybufDcD4xGAZhMYWMiDwvQVn
	nrJ8r6nqLQxOR6wPaADu1Bb9iLP4/VHPbF0nM3NK7eOb9mpSkzKlCec2sxOtibzx+5yDlZ
	PhGRqCIP7JvgVRFeWA8/yJTjAMSjsDY=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=qNIxY2Ux;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1620676210;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=BAoIqsG4bnry3IAnq1kxS9sz4uVVKtoOc9Dlvbn7JyA=;
	b=nDzgYE4Vc2/QZRbU9cCEYb0ajcY9oLrlCPWPP3nRzYEqGrfEkji9QR0GSZEW6AokRUX/Vt
	3UenyKj1LAYfGd2b1GcRVFHpzfL+gxtMRQbZR7MVlBLeg0eqDywj9EVc7v0OWmpjkBuKpC
	YJA05e6uL/C07ynTp/MKZ80tKoyOZG0=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: NUZM6AIVNVFDOYWQD3ZUUAOZ7DLDJUMV
X-Message-ID-Hash: NUZM6AIVNVFDOYWQD3ZUUAOZ7DLDJUMV
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/NUZM6AIVNVFDOYWQD3ZUUAOZ7DLDJUMV/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

All functions which use the netlink_query_common can be changed to provid=
e
the socket for batadv genl operations in the state object. Either by
manually calling netlink_create or by simply using the
COMMAND_FLAG_NETLINK.

This makes is unnecessary to allocate a new netlink socket and resolve th=
e
generic netlink family for each helper function call.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 functions.c    | 15 +++++-----
 functions.h    |  5 ++--
 gw_mode.c      |  3 +-
 icmp_helper.c  | 14 ++++-----
 icmp_helper.h  |  2 +-
 netlink.c      | 81 +++++++++++++++++++-------------------------------
 netlink.h      | 10 +++----
 ping.c         |  7 +++--
 routing_algo.c | 23 ++++++++++----
 traceroute.c   |  7 +++--
 translate.c    |  5 ++--
 11 files changed, 84 insertions(+), 88 deletions(-)

diff --git a/functions.c b/functions.c
index 0dbf2ed..617fc5b 100644
--- a/functions.c
+++ b/functions.c
@@ -171,7 +171,7 @@ int read_file(const char *full_path, int read_opt)
 	return res;
 }
=20
-struct ether_addr *translate_mac(const char *mesh_iface,
+struct ether_addr *translate_mac(struct state *state,
 				 const struct ether_addr *mac)
 {
 	struct ether_addr in_mac;
@@ -188,14 +188,16 @@ struct ether_addr *translate_mac(const char *mesh_i=
face,
 	if (!ether_addr_valid(in_mac.ether_addr_octet))
 		return mac_result;
=20
-	translate_mac_netlink(mesh_iface, &in_mac, mac_result);
+	translate_mac_netlink(state, &in_mac, mac_result);
=20
 	return mac_result;
 }
=20
-int get_algoname(const char *mesh_iface, char *algoname, size_t algoname=
_len)
+int get_algoname(struct state *state, unsigned int mesh_ifindex,
+		 char *algoname, size_t algoname_len)
 {
-	return get_algoname_netlink(mesh_iface, algoname, algoname_len);
+	return get_algoname_netlink(state, mesh_ifindex, algoname,
+				    algoname_len);
 }
=20
 static int resolve_l3addr(int ai_family, const char *asc, void *l3addr)
@@ -340,10 +342,7 @@ static int resolve_mac_from_parse(struct nl_msg *msg=
, void *arg)
 	}
=20
 err:
-	if (nl_arg->found)
-		return NL_STOP;
-	else
-		return NL_OK;
+	return NL_OK;
 }
=20
 static struct ether_addr *resolve_mac_from_cache(int ai_family,
diff --git a/functions.h b/functions.h
index 3bb66f6..860d9f4 100644
--- a/functions.h
+++ b/functions.h
@@ -44,7 +44,7 @@ char *get_name_by_macaddr(struct ether_addr *mac_addr, =
int read_opt);
 char *get_name_by_macstr(char *mac_str, int read_opt);
 int file_exists(const char *fpath);
 int read_file(const char *full_path, int read_opt);
-struct ether_addr *translate_mac(const char *mesh_iface,
+struct ether_addr *translate_mac(struct state *state,
 				 const struct ether_addr *mac);
 struct ether_addr *resolve_mac(const char *asc);
 int query_rtnl_link(int ifindex, nl_recvmsg_msg_cb_t func, void *arg);
@@ -54,7 +54,8 @@ int translate_vlan_iface(struct state *state, const cha=
r *vlandev);
 int translate_vid(struct state *state, const char *vidstr);
 int translate_hard_iface(struct state *state, const char *hardif);
 int guess_netdev_type(const char *netdev, enum selector_prefix *type);
-int get_algoname(const char *mesh_iface, char *algoname, size_t algoname=
_len);
+int get_algoname(struct state *state, unsigned int mesh_ifindex,
+		 char *algoname, size_t algoname_len);
 int check_mesh_iface(struct state *state);
 int check_mesh_iface_ownership(struct state *state, char *hard_iface);
=20
diff --git a/gw_mode.c b/gw_mode.c
index 0bc99e2..93f255c 100644
--- a/gw_mode.c
+++ b/gw_mode.c
@@ -46,7 +46,8 @@ static bool is_throughput_select_class(struct state *st=
ate)
 	char algoname[32];
 	int ret;
=20
-	ret =3D get_algoname(state->mesh_iface, algoname, sizeof(algoname));
+	ret =3D get_algoname(state, state->mesh_ifindex, algoname,
+			   sizeof(algoname));
=20
 	/* no algo name -> assume that it is a pre-B.A.T.M.A.N. V version */
 	if (ret < 0)
diff --git a/icmp_helper.c b/icmp_helper.c
index 3aa49c0..cbb6122 100644
--- a/icmp_helper.c
+++ b/icmp_helper.c
@@ -314,13 +314,11 @@ static void icmp_interface_sweep(void)
 	}
 }
=20
-static int icmp_interface_update(const char *mesh_iface)
+static int icmp_interface_update(struct state *state)
 {
 	struct icmp_interface_update_arg update_arg;
=20
-	update_arg.ifindex =3D if_nametoindex(mesh_iface);
-	if (!update_arg.ifindex)
-		return -errno;
+	update_arg.ifindex =3D state->mesh_ifindex;
=20
 	/* unmark current interface - will be marked again by query */
 	icmp_interface_unmark();
@@ -331,7 +329,7 @@ static int icmp_interface_update(const char *mesh_ifa=
ce)
 	/* remove old interfaces */
 	icmp_interface_sweep();
=20
-	get_primarymac_netlink(mesh_iface, primary_mac);
+	get_primarymac_netlink(state, primary_mac);
=20
 	return 0;
 }
@@ -355,7 +353,7 @@ static int icmp_interface_send(struct batadv_icmp_hea=
der *icmp_packet,
 	return (int)writev(iface->sock, vector, 2);
 }
=20
-int icmp_interface_write(const char *mesh_iface,
+int icmp_interface_write(struct state *state,
 			 struct batadv_icmp_header *icmp_packet, size_t len)
 {
 	struct batadv_icmp_packet_rr *icmp_packet_rr;
@@ -380,7 +378,7 @@ int icmp_interface_write(const char *mesh_iface,
 	if (icmp_packet->msg_type !=3D BATADV_ECHO_REQUEST)
 		return -EINVAL;
=20
-	icmp_interface_update(mesh_iface);
+	icmp_interface_update(state);
=20
 	if (list_empty(&interface_list))
 		return -EFAULT;
@@ -388,7 +386,7 @@ int icmp_interface_write(const char *mesh_iface,
 	/* find best neighbor */
 	memcpy(&mac, icmp_packet->dst, ETH_ALEN);
=20
-	ret =3D get_nexthop_netlink(mesh_iface, &mac, nexthop, ifname);
+	ret =3D get_nexthop_netlink(state, &mac, nexthop, ifname);
 	if (ret < 0)
 		goto dst_unreachable;
=20
diff --git a/icmp_helper.h b/icmp_helper.h
index 6f84d34..5eed55e 100644
--- a/icmp_helper.h
+++ b/icmp_helper.h
@@ -35,7 +35,7 @@ struct icmp_interface {
 };
=20
 int icmp_interfaces_init(void);
-int icmp_interface_write(const char *mesh_iface,
+int icmp_interface_write(struct state *state,
 			 struct batadv_icmp_header *icmp_packet, size_t len);
 void icmp_interfaces_clean(void);
 ssize_t icmp_interface_read(struct batadv_icmp_header *icmp_packet, size=
_t len,
diff --git a/netlink.c b/netlink.c
index e3a7b7c..b8bca30 100644
--- a/netlink.c
+++ b/netlink.c
@@ -503,46 +503,20 @@ static int nlquery_stop_cb(struct nl_msg *msg, void=
 *arg)
 	return NL_STOP;
 }
=20
-static int netlink_query_common(const char *mesh_iface, uint8_t nl_cmd,
+static int netlink_query_common(struct state *state,
+				unsigned int mesh_ifindex, uint8_t nl_cmd,
 				nl_recvmsg_msg_cb_t callback, int flags,
 				struct nlquery_opts *query_opts)
 {
-	struct nl_sock *sock;
 	struct nl_msg *msg;
 	struct nl_cb *cb;
-	int ifindex;
-	int family;
 	int ret;
=20
 	query_opts->err =3D 0;
=20
-	sock =3D nl_socket_alloc();
-	if (!sock)
-		return -ENOMEM;
-
-	ret =3D genl_connect(sock);
-	if (ret < 0) {
-		query_opts->err =3D ret;
-		goto err_free_sock;
-	}
-
-	family =3D genl_ctrl_resolve(sock, BATADV_NL_NAME);
-	if (family < 0) {
-		query_opts->err =3D -EOPNOTSUPP;
-		goto err_free_sock;
-	}
-
-	ifindex =3D if_nametoindex(mesh_iface);
-	if (!ifindex) {
-		query_opts->err =3D -ENODEV;
-		goto err_free_sock;
-	}
-
 	cb =3D nl_cb_alloc(NL_CB_DEFAULT);
-	if (!cb) {
-		query_opts->err =3D -ENOMEM;
-		goto err_free_sock;
-	}
+	if (!cb)
+		return -ENOMEM;
=20
 	nl_cb_set(cb, NL_CB_VALID, NL_CB_CUSTOM, callback, query_opts);
 	nl_cb_set(cb, NL_CB_FINISH, NL_CB_CUSTOM, nlquery_stop_cb, query_opts);
@@ -554,19 +528,24 @@ static int netlink_query_common(const char *mesh_if=
ace, uint8_t nl_cmd,
 		goto err_free_cb;
 	}
=20
-	genlmsg_put(msg, NL_AUTO_PID, NL_AUTO_SEQ, family, 0, flags,
-		    nl_cmd, 1);
+	genlmsg_put(msg, NL_AUTO_PID, NL_AUTO_SEQ, state->batadv_family, 0,
+		    flags, nl_cmd, 1);
=20
-	nla_put_u32(msg, BATADV_ATTR_MESH_IFINDEX, ifindex);
-	nl_send_auto_complete(sock, msg);
+	nla_put_u32(msg, BATADV_ATTR_MESH_IFINDEX, mesh_ifindex);
+	nl_send_auto_complete(state->sock, msg);
 	nlmsg_free(msg);
=20
-	nl_recvmsgs(sock, cb);
+	ret =3D nl_recvmsgs(state->sock, cb);
+	if (ret < 0) {
+		query_opts->err =3D ret;
+		goto err_free_cb;
+	}
+
+	if (!(flags & NLM_F_DUMP))
+		nl_wait_for_ack(state->sock);
=20
 err_free_cb:
 	nl_cb_put(cb);
-err_free_sock:
-	nl_socket_free(sock);
=20
 	return query_opts->err;
 }
@@ -625,10 +604,10 @@ static int translate_mac_netlink_cb(struct nl_msg *=
msg, void *arg)
 	opts->found =3D true;
 	opts->query_opts.err =3D 0;
=20
-	return NL_STOP;
+	return NL_OK;
 }
=20
-int translate_mac_netlink(const char *mesh_iface, const struct ether_add=
r *mac,
+int translate_mac_netlink(struct state *state, const struct ether_addr *=
mac,
 			  struct ether_addr *mac_out)
 {
 	struct translate_mac_netlink_opts opts =3D {
@@ -641,7 +620,7 @@ int translate_mac_netlink(const char *mesh_iface, con=
st struct ether_addr *mac,
=20
 	memcpy(&opts.mac, mac, ETH_ALEN);
=20
-	ret =3D netlink_query_common(mesh_iface,
+	ret =3D netlink_query_common(state, state->mesh_ifindex,
 				   BATADV_CMD_GET_TRANSTABLE_GLOBAL,
 			           translate_mac_netlink_cb, NLM_F_DUMP,
 				   &opts.query_opts);
@@ -721,10 +700,10 @@ static int get_nexthop_netlink_cb(struct nl_msg *ms=
g, void *arg)
 	opts->found =3D true;
 	opts->query_opts.err =3D 0;
=20
-	return NL_STOP;
+	return NL_OK;
 }
=20
-int get_nexthop_netlink(const char *mesh_iface, const struct ether_addr =
*mac,
+int get_nexthop_netlink(struct state *state, const struct ether_addr *ma=
c,
 			uint8_t *nexthop, char *ifname)
 {
 	struct get_nexthop_netlink_opts opts =3D {
@@ -740,7 +719,8 @@ int get_nexthop_netlink(const char *mesh_iface, const=
 struct ether_addr *mac,
 	opts.nexthop =3D nexthop;
 	opts.ifname =3D ifname;
=20
-	ret =3D netlink_query_common(mesh_iface,  BATADV_CMD_GET_ORIGINATORS,
+	ret =3D netlink_query_common(state, state->mesh_ifindex,
+				   BATADV_CMD_GET_ORIGINATORS,
 			           get_nexthop_netlink_cb, NLM_F_DUMP,
 				   &opts.query_opts);
 	if (ret < 0)
@@ -799,10 +779,10 @@ static int get_primarymac_netlink_cb(struct nl_msg =
*msg, void *arg)
 	opts->found =3D true;
 	opts->query_opts.err =3D 0;
=20
-	return NL_STOP;
+	return NL_OK;
 }
=20
-int get_primarymac_netlink(const char *mesh_iface, uint8_t *primarymac)
+int get_primarymac_netlink(struct state *state, uint8_t *primarymac)
 {
 	struct get_primarymac_netlink_opts opts =3D {
 		.primarymac =3D 0,
@@ -815,7 +795,8 @@ int get_primarymac_netlink(const char *mesh_iface, ui=
nt8_t *primarymac)
=20
 	opts.primarymac =3D primarymac;
=20
-	ret =3D netlink_query_common(mesh_iface, BATADV_CMD_GET_MESH_INFO,
+	ret =3D netlink_query_common(state, state->mesh_ifindex,
+				   BATADV_CMD_GET_MESH_INFO,
 			           get_primarymac_netlink_cb, 0,
 				   &opts.query_opts);
 	if (ret < 0)
@@ -875,11 +856,11 @@ static int get_algoname_netlink_cb(struct nl_msg *m=
sg, void *arg)
 	opts->found =3D true;
 	opts->query_opts.err =3D 0;
=20
-	return NL_STOP;
+	return NL_OK;
 }
=20
-int get_algoname_netlink(const char *mesh_iface, char *algoname,
-			 size_t algoname_len)
+int get_algoname_netlink(struct state *state, unsigned int mesh_ifindex,
+			 char *algoname, size_t algoname_len)
 {
 	struct get_algoname_netlink_opts opts =3D {
 		.algoname =3D algoname,
@@ -891,7 +872,7 @@ int get_algoname_netlink(const char *mesh_iface, char=
 *algoname,
 	};
 	int ret;
=20
-	ret =3D netlink_query_common(mesh_iface, BATADV_CMD_GET_MESH,
+	ret =3D netlink_query_common(state, mesh_ifindex, BATADV_CMD_GET_MESH,
 			           get_algoname_netlink_cb, 0,
 				   &opts.query_opts);
 	if (ret < 0)
diff --git a/netlink.h b/netlink.h
index 48a2a23..2cc5862 100644
--- a/netlink.h
+++ b/netlink.h
@@ -31,13 +31,13 @@ int netlink_create(struct state *state);
 void netlink_destroy(struct state *state);
=20
 char *netlink_get_info(struct state *state, uint8_t nl_cmd, const char *=
header);
-int translate_mac_netlink(const char *mesh_iface, const struct ether_add=
r *mac,
+int translate_mac_netlink(struct state *state, const struct ether_addr *=
mac,
 			  struct ether_addr *mac_out);
-int get_nexthop_netlink(const char *mesh_iface, const struct ether_addr =
*mac,
+int get_nexthop_netlink(struct state *state, const struct ether_addr *ma=
c,
 			uint8_t *nexthop, char *ifname);
-int get_primarymac_netlink(const char *mesh_iface, uint8_t *primarymac);
-int get_algoname_netlink(const char *mesh_iface, char *algoname,
-			 size_t algoname_len);
+int get_primarymac_netlink(struct state *state, uint8_t *primarymac);
+int get_algoname_netlink(struct state *state, unsigned int mesh_ifindex,
+			 char *algoname, size_t algoname_len);
=20
 extern struct nla_policy batadv_netlink_policy[];
=20
diff --git a/ping.c b/ping.c
index a9f0913..7565dcd 100644
--- a/ping.c
+++ b/ping.c
@@ -136,7 +136,7 @@ static int ping(struct state *state, int argc, char *=
*argv)
 	}
=20
 	if (!disable_translate_mac)
-		dst_mac =3D translate_mac(state->mesh_iface, dst_mac);
+		dst_mac =3D translate_mac(state, dst_mac);
=20
 	mac_string =3D ether_ntoa_long(dst_mac);
 	signal(SIGINT, sig_handler);
@@ -177,7 +177,7 @@ static int ping(struct state *state, int argc, char *=
*argv)
=20
 		icmp_packet_out.seqno =3D htons(++seq_counter);
=20
-		res =3D icmp_interface_write(state->mesh_iface,
+		res =3D icmp_interface_write(state,
 					   (struct batadv_icmp_header *)&icmp_packet_out,
 					   packet_len);
 		if (res < 0) {
@@ -323,5 +323,6 @@ static int ping(struct state *state, int argc, char *=
*argv)
 	return ret;
 }
=20
-COMMAND(SUBCOMMAND_MIF, ping, "p", COMMAND_FLAG_MESH_IFACE, NULL,
+COMMAND(SUBCOMMAND_MIF, ping, "p",
+	COMMAND_FLAG_MESH_IFACE | COMMAND_FLAG_NETLINK, NULL,
 	"<destination>     \tping another batman adv host via layer 2");
diff --git a/routing_algo.c b/routing_algo.c
index 01376bc..8fb4fab 100644
--- a/routing_algo.c
+++ b/routing_algo.c
@@ -168,6 +168,7 @@ static struct nla_policy link_policy[IFLA_MAX + 1] =3D=
 {
=20
 struct print_ra_interfaces_rtnl_arg {
 	uint8_t header_shown:1;
+	struct state *state;
 };
=20
 static int print_ra_interfaces_rtnl_parse(struct nl_msg *msg, void *arg)
@@ -190,7 +191,8 @@ static int print_ra_interfaces_rtnl_parse(struct nl_m=
sg *msg, void *arg)
=20
 	mesh_iface =3D nla_get_string(attrs[IFLA_IFNAME]);
=20
-	ret =3D get_algoname_netlink(mesh_iface, algoname, sizeof(algoname));
+	ret =3D get_algoname_netlink(print_arg->state, ifm->ifi_index, algoname=
,
+				   sizeof(algoname));
 	if (ret < 0)
 		goto err;
=20
@@ -205,9 +207,11 @@ static int print_ra_interfaces_rtnl_parse(struct nl_=
msg *msg, void *arg)
 	return NL_OK;
 }
=20
-static int print_ra_interfaces(void)
+static int print_ra_interfaces(struct state *state)
 {
-	struct print_ra_interfaces_rtnl_arg print_arg =3D {};
+	struct print_ra_interfaces_rtnl_arg print_arg =3D {
+		.state =3D state,
+	};
=20
 	struct ifinfomsg rt_hdr =3D {
 		.ifi_family =3D IFLA_UNSPEC,
@@ -282,10 +286,11 @@ static int print_ra_interfaces(void)
 	return err;
 }
=20
-static int routing_algo(struct state *state __maybe_unused, int argc, ch=
ar **argv)
+static int routing_algo(struct state *state, int argc, char **argv)
 {
 	int optchar;
 	int res =3D EXIT_FAILURE;
+	int ret;
=20
 	while ((optchar =3D getopt(argc, argv, "h")) !=3D -1) {
 		switch (optchar) {
@@ -303,7 +308,15 @@ static int routing_algo(struct state *state __maybe_=
unused, int argc, char **arg
 	if (argc =3D=3D 2)
 		return write_default_ra(SYS_SELECTED_RA_PATH, argv[1]);
=20
-	print_ra_interfaces();
+	/* duplicated code here from the main() because interface doesn't alway=
s
+	 * need COMMAND_FLAG_MESH_IFACE and COMMAND_FLAG_NETLINK
+	 */
+	ret =3D netlink_create(state);
+	if (ret < 0)
+		return EXIT_FAILURE;
+
+	print_ra_interfaces(state);
+	netlink_destroy(state);
=20
 	res =3D read_file(SYS_SELECTED_RA_PATH, USE_READ_BUFF);
 	if (res !=3D EXIT_SUCCESS)
diff --git a/traceroute.c b/traceroute.c
index 517962f..40e1e8f 100644
--- a/traceroute.c
+++ b/traceroute.c
@@ -97,7 +97,7 @@ static int traceroute(struct state *state, int argc, ch=
ar **argv)
 	}
=20
 	if (!disable_translate_mac)
-		dst_mac =3D translate_mac(state->mesh_iface, dst_mac);
+		dst_mac =3D translate_mac(state, dst_mac);
=20
 	mac_string =3D ether_ntoa_long(dst_mac);
=20
@@ -124,7 +124,7 @@ static int traceroute(struct state *state, int argc, =
char **argv)
 			icmp_packet_out.seqno =3D htons(++seq_counter);
 			time_delta[i] =3D 0.0;
=20
-			res =3D icmp_interface_write(state->mesh_iface,
+			res =3D icmp_interface_write(state,
 					   (struct batadv_icmp_header *)&icmp_packet_out,
 					   sizeof(icmp_packet_out));
 			if (res < 0) {
@@ -209,5 +209,6 @@ static int traceroute(struct state *state, int argc, =
char **argv)
 	return ret;
 }
=20
-COMMAND(SUBCOMMAND_MIF, traceroute, "tr", COMMAND_FLAG_MESH_IFACE, NULL,
+COMMAND(SUBCOMMAND_MIF, traceroute, "tr",
+	COMMAND_FLAG_MESH_IFACE | COMMAND_FLAG_NETLINK, NULL,
 	"<destination>     \ttraceroute another batman adv host via layer 2");
diff --git a/translate.c b/translate.c
index 6eef476..92451c9 100644
--- a/translate.c
+++ b/translate.c
@@ -50,7 +50,7 @@ static int translate(struct state *state, int argc, cha=
r **argv)
 		}
 	}
=20
-	dst_mac =3D translate_mac(state->mesh_iface, dst_mac);
+	dst_mac =3D translate_mac(state, dst_mac);
 	if (dst_mac) {
 		mac_string =3D ether_ntoa_long(dst_mac);
 		printf("%s\n", mac_string);
@@ -64,5 +64,6 @@ static int translate(struct state *state, int argc, cha=
r **argv)
 	return ret;
 }
=20
-COMMAND(SUBCOMMAND_MIF, translate, "t", COMMAND_FLAG_MESH_IFACE, NULL,
+COMMAND(SUBCOMMAND_MIF, translate, "t",
+	COMMAND_FLAG_MESH_IFACE | COMMAND_FLAG_NETLINK, NULL,
 	"<destination>     \ttranslate a destination to the originator responsi=
ble for it");
--=20
2.30.2
