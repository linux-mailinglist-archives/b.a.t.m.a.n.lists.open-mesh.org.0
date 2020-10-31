Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 609AE2A19B2
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 31 Oct 2020 19:40:59 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 25D8E80CC8;
	Sat, 31 Oct 2020 19:40:58 +0100 (CET)
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 2C822802DD
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 31 Oct 2020 19:40:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1604169654;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=5yKYoGJ11hjrOs6NSySyS2f/u3AoQDqq1+soJA3BDsY=;
	b=dRvkiEMCi1GNn/dHVEGRGtzPUBRdDJUpK7k2iLOQmxDRugX+NdyqyXCEmuF29Fm85ys36m
	vLxCFdcv6RPYuKTcuVVVfEym9lPgJov3zIwCnSrSVkq+rT0b6bOU+W0C3j4JsiyEWOmIg0
	P+jSuOuL+2H2Lmp2KerTI0HMv4VcSOI=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
Subject: [PATCH 1/3] batctl: Switch active routing algo list to netlink
Date: Sat, 31 Oct 2020 19:40:48 +0100
Message-Id: <20201031184051.118630-1-sven@narfation.org>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1604169656; a=rsa-sha256;
	cv=none;
	b=L3YC2zosuyCaKzc5OXpuC8DdhI/kpxMXceV3GzzMmTMVGclpA31spWMzgKA8N3bN/GKSc2
	PmnWHrpp67ADO3XrqIfRPcVZLTtoBaoSfpU0Cfn5uIKnMMN6AH+DD79r5TYTHR5yJ+vIn/
	lFvPuK3OFbpVjLwuB2tff3waxzrcbQQ=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=dRvkiEMC;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1604169656;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=5yKYoGJ11hjrOs6NSySyS2f/u3AoQDqq1+soJA3BDsY=;
	b=asQ9CAEWZZw4y0Be+WcxhmT8y9yrVmguJvy9GKbYhfvQMUe33AY2b9kJKJjtldzUDyA7Wh
	72vnJy6nnYUurwAkrZwo2oOCR1MeJ7EsXuR8s1SySJ3J6GmeRefNdS9kJrha6IlJF/Zw8v
	9ck7LL3FZnYxQPr7rSbKs/bbVL2v6k8=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: QQJPWNBYTTUMY46GFF2TDPWCWQH5JK4J
X-Message-ID-Hash: QQJPWNBYTTUMY46GFF2TDPWCWQH5JK4J
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/QQJPWNBYTTUMY46GFF2TDPWCWQH5JK4J/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

The sysfs support is disabled by default in batman-adv since a while and
will be removed in 2021. The generic netlink interface should be used
instead. But the list of active routing algorithms was only available whe=
n
batman-adv was build with sysfs support.

Instead of walking through (not existing) sysfs entries, query the list o=
f
batadv interfaces via rtnl and use the already existing helpers to get th=
e
routing algorithm.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 routing_algo.c | 172 +++++++++++++++++++++++++++++++++++--------------
 1 file changed, 122 insertions(+), 50 deletions(-)

diff --git a/routing_algo.c b/routing_algo.c
index 7171c52..5fa360b 100644
--- a/routing_algo.c
+++ b/routing_algo.c
@@ -6,7 +6,6 @@
  * License-Filename: LICENSES/preferred/GPL-2.0
  */
=20
-#include <dirent.h>
 #include <errno.h>
 #include <getopt.h>
 #include <netinet/if_ether.h>
@@ -159,14 +158,130 @@ static int print_routing_algos(void)
 	return err;
 }
=20
+static struct nla_policy link_policy[IFLA_MAX + 1] =3D {
+	[IFLA_IFNAME] =3D { .type =3D NLA_STRING, .maxlen =3D IFNAMSIZ },
+};
+
+struct print_ra_interfaces_rtnl_arg {
+	uint8_t header_shown:1;
+};
+
+static int print_ra_interfaces_rtnl_parse(struct nl_msg *msg, void *arg)
+{
+	struct print_ra_interfaces_rtnl_arg *print_arg =3D arg;
+	struct nlattr *attrs[IFLA_MAX + 1];
+	char algoname[256];
+	struct ifinfomsg *ifm;
+	char *mesh_iface;
+	int ret;
+
+	ifm =3D nlmsg_data(nlmsg_hdr(msg));
+	ret =3D nlmsg_parse(nlmsg_hdr(msg), sizeof(*ifm), attrs, IFLA_MAX,
+			  link_policy);
+	if (ret < 0)
+		goto err;
+
+	if (!attrs[IFLA_IFNAME])
+		goto err;
+
+	mesh_iface =3D nla_get_string(attrs[IFLA_IFNAME]);
+
+	ret =3D get_algoname_netlink(mesh_iface, algoname, sizeof(algoname));
+	if (ret < 0)
+		goto err;
+
+	if(!print_arg->header_shown) {
+		print_arg->header_shown =3D true;
+		printf("Active routing protocol configuration:\n");
+	}
+
+	printf(" * %s: %s\n", mesh_iface, algoname);
+
+err:
+	return NL_OK;
+}
+
+static int print_ra_interfaces(void)
+{
+	struct print_ra_interfaces_rtnl_arg print_arg =3D {};
+
+	struct ifinfomsg rt_hdr =3D {
+		.ifi_family =3D IFLA_UNSPEC,
+	};
+	struct nlattr *linkinfo;
+	struct nl_sock *sock;
+	struct nl_msg *msg;
+	struct nl_cb *cb;
+	int err =3D 0;
+	int ret;
+
+	sock =3D nl_socket_alloc();
+	if (!sock)
+		return -ENOMEM;
+
+	ret =3D nl_connect(sock, NETLINK_ROUTE);
+	if (ret < 0) {
+		err =3D -ENOMEM;
+		goto err_free_sock;
+	}
+
+	cb =3D nl_cb_alloc(NL_CB_DEFAULT);
+	if (!cb) {
+		err =3D -ENOMEM;
+		goto err_free_sock;
+	}
+
+	nl_cb_set(cb, NL_CB_VALID, NL_CB_CUSTOM, print_ra_interfaces_rtnl_parse=
,
+		 &print_arg);
+
+	msg =3D nlmsg_alloc_simple(RTM_GETLINK, NLM_F_REQUEST | NLM_F_DUMP);
+	if (!msg) {
+		err =3D -ENOMEM;
+		goto err_free_cb;
+	}
+
+	ret =3D nlmsg_append(msg, &rt_hdr, sizeof(rt_hdr), NLMSG_ALIGNTO);
+	if (ret < 0) {
+		err =3D -ENOMEM;
+		goto err_free_msg;
+	}
+
+	linkinfo =3D nla_nest_start(msg, IFLA_LINKINFO);
+	if (!linkinfo) {
+		err =3D -ENOMEM;
+		goto err_free_msg;
+	}
+
+	ret =3D nla_put_string(msg, IFLA_INFO_KIND, "batadv");
+	if (ret < 0) {
+		err =3D -ENOMEM;
+		goto err_free_msg;
+	}
+	nla_nest_end(msg, linkinfo);
+
+	ret =3D nl_send_auto_complete(sock, msg);
+	if (ret < 0)
+		goto err_free_msg;
+
+	nl_recvmsgs(sock, cb);
+
+	if (print_arg.header_shown)
+		printf("\n");
+
+err_free_msg:
+	nlmsg_free(msg);
+err_free_cb:
+	nl_cb_put(cb);
+err_free_sock:
+	nl_socket_free(sock);
+
+	return err;
+}
+
 static int routing_algo(struct state *state __maybe_unused, int argc, ch=
ar **argv)
 {
-	DIR *iface_base_dir;
-	struct dirent *iface_dir;
 	int optchar;
-	char *path_buff;
 	int res =3D EXIT_FAILURE;
-	int first_iface =3D 1;
=20
 	while ((optchar =3D getopt(argc, argv, "h")) !=3D -1) {
 		switch (optchar) {
@@ -183,48 +298,10 @@ static int routing_algo(struct state *state __maybe=
_unused, int argc, char **arg
=20
 	if (argc =3D=3D 2) {
 		res =3D write_file(SYS_SELECTED_RA_PATH, "", argv[1], NULL);
-		goto out;
-	}
-
-	path_buff =3D malloc(PATH_BUFF_LEN);
-	if (!path_buff) {
-		fprintf(stderr, "Error - could not allocate path buffer: out of memory=
 ?\n");
-		goto out;
-	}
-
-	iface_base_dir =3D opendir(SYS_IFACE_PATH);
-	if (!iface_base_dir) {
-		fprintf(stderr, "Error - the directory '%s' could not be read: %s\n",
-			SYS_IFACE_PATH, strerror(errno));
-		fprintf(stderr, "Is the batman-adv module loaded and sysfs mounted ?\n=
");
-		goto free_buff;
-	}
-
-	while ((iface_dir =3D readdir(iface_base_dir)) !=3D NULL) {
-		snprintf(path_buff, PATH_BUFF_LEN, SYS_ROUTING_ALGO_FMT, iface_dir->d_=
name);
-		res =3D read_file("", path_buff, USE_READ_BUFF | SILENCE_ERRORS, 0, 0,=
 0);
-		if (res !=3D EXIT_SUCCESS)
-			continue;
-
-		if (line_ptr[strlen(line_ptr) - 1] =3D=3D '\n')
-			line_ptr[strlen(line_ptr) - 1] =3D '\0';
-
-		if (first_iface) {
-			first_iface =3D 0;
-			printf("Active routing protocol configuration:\n");
-		}
-
-		printf(" * %s: %s\n", iface_dir->d_name, line_ptr);
-
-		free(line_ptr);
-		line_ptr =3D NULL;
+		return EXIT_FAILURE;
 	}
=20
-	closedir(iface_base_dir);
-	free(path_buff);
-
-	if (!first_iface)
-		printf("\n");
+	print_ra_interfaces();
=20
 	res =3D read_file("", SYS_SELECTED_RA_PATH, USE_READ_BUFF, 0, 0, 0);
 	if (res !=3D EXIT_SUCCESS)
@@ -237,11 +314,6 @@ static int routing_algo(struct state *state __maybe_=
unused, int argc, char **arg
=20
 	print_routing_algos();
 	return EXIT_SUCCESS;
-
-free_buff:
-	free(path_buff);
-out:
-	return res;
 }
=20
 COMMAND(SUBCOMMAND, routing_algo, "ra", 0, NULL,
--=20
2.28.0
