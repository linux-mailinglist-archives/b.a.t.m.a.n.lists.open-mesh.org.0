Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D024482AD3
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun,  2 Jan 2022 12:32:10 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id E6E7883E7A;
	Sun,  2 Jan 2022 12:32:09 +0100 (CET)
Received: from s2.neomailbox.net (s2.neomailbox.net [5.148.176.60])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id E887883E8B
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun,  2 Jan 2022 12:32:06 +0100 (CET)
From: Marek Lindner <mareklindner@neomailbox.ch>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: [PATCH 2/4] alfred: Allow operating without any interface specified
Date: Sun,  2 Jan 2022 12:31:34 +0100
Message-Id: <20220102113136.470299-2-mareklindner@neomailbox.ch>
In-Reply-To: <20220102113136.470299-1-mareklindner@neomailbox.ch>
References: <3748133.vRqKQLy7FI@rousseau>
 <20220102113136.470299-1-mareklindner@neomailbox.ch>
MIME-Version: 1.0
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of mareklindner@neomailbox.ch designates 5.148.176.60 as permitted sender) smtp.mailfrom=mareklindner@neomailbox.ch;
	dmarc=none
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1641123127; a=rsa-sha256;
	cv=none;
	b=lUOAOUgh4SujOiOsIjI0T398jfch9d+UGpCdYHxKbAVt+1u/SuBalQ9DOtxR5yh7/iE03i
	1DEIVP+Qc0b4fOzXnr9GAqcMFApJQl/6rGRS8nPSRjRpStF2wb9Um/aSGLES4oYVQPSGjX
	TyHG00RetmwXFnzW/oX002QbC05mS0E=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1641123127;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=CJZLnxR5yxGwTxDBbxc6v6ppVbyEExquS8yjEheveQM=;
	b=ZbAKlQw6ZPd+WQXqQBgE81ju1xtuTS8WI0xJlRFIsbGs4EgS2PMiG2a//3e3jzXmnXIDFJ
	XkUOq4/aUuXu/h7FKeL2isf7fgS6Cn0iXlGaaubLZbE4fpysFqziAOXYJFsX/oIhR81xCF
	Qqsr7RFsA2I8MkTQ92blrJgQicguH9E=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: 67UQP5BSN3HUSE2AA4MXBZTHKPL6TYR4
X-Message-ID-Hash: 67UQP5BSN3HUSE2AA4MXBZTHKPL6TYR4
X-MailFrom: mareklindner@neomailbox.ch
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: Marek Lindner <mareklindner@neomailbox.ch>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/67UQP5BSN3HUSE2AA4MXBZTHKPL6TYR4/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

The '-i' commandline parameter to specify interface names
no longer is mandatory. Specifying interface 'none' or
sending a 'none' interface string within the
ALFRED_CHANGE_INTERFACE unix socket command disables
all interfaces operations at runtime.

Signed-off-by: Marek Lindner <mareklindner@neomailbox.ch>
---
 README.rst   |  6 +++++-
 alfred.h     |  1 -
 man/alfred.8 |  6 +++++-
 netsock.c    | 23 ++++-------------------
 server.c     | 12 ------------
 5 files changed, 14 insertions(+), 34 deletions(-)

diff --git a/README.rst b/README.rst
index 33200e4..7f44db6 100644
--- a/README.rst
+++ b/README.rst
@@ -82,7 +82,8 @@ documentation how to configure alfred in this case. In =
any event, you can
 still run alfred from the command line. The relevant options are (for a =
full
 list of options, run alfred -h):
=20
-  -i, --interface             specify the interface to listen on
+  -i, --interface             specify the interface to listen on. use 'n=
one'
+                              to disable interface operations
   -b                          specify the batman-adv interface configure=
d on
                               the system (default: bat0). use 'none' to =
disable
                               the batman-adv based best server selection
@@ -90,6 +91,9 @@ list of options, run alfred -h):
                               accepts data from secondaries and syncs it=
 with
                               other primaries
=20
+The interface option '-i' is optional. If interface 'none' is specified,=
 the
+alfred daemon will not communicate with other alfred instances on the
+network unless the interface list is modified at runtime via the unix so=
cket.
 The -b option is optional, and only needed if you run alfred on a batman=
-adv
 interface not called bat0, or if you don't use batman-adv at all
 (use '-b none'). In this case, alfred will still work but will not be ab=
le to
diff --git a/alfred.h b/alfred.h
index d844261..57d7daf 100644
--- a/alfred.h
+++ b/alfred.h
@@ -182,7 +182,6 @@ int unix_sock_req_data_finish(struct globals *globals=
,
 /* vis.c */
 int vis_update_data(struct globals *globals);
 /* netsock.c */
-int netsock_open_all(struct globals *globals);
 size_t netsocket_count_interfaces(struct globals *globals);
 void netsock_close_all(struct globals *globals);
 int netsock_set_interfaces(struct globals *globals, char *interfaces);
diff --git a/man/alfred.8 b/man/alfred.8
index 18e008e..ff9b315 100644
--- a/man/alfred.8
+++ b/man/alfred.8
@@ -95,12 +95,16 @@ Change the alfred server to use the new \fBinterface\=
fP(s)
 .SH SERVER OPTIONS
 .TP
 \fB\-i\fP, \fB\-\-interface\fP \fIiface\fP
-Specify the interface (or comma separated list of interfaces) to listen =
on
+Specify the interface (or comma separated list of interfaces) to listen =
on.
+Use 'none' to disable interface operations.
 .TP
 \fB\-b\fP \fIbatmanif\fP
 Specify the batman-adv interface configured on the system (default: bat0=
).
 Use 'none' to disable the batman-adv based best server selection.
=20
+The interface option \fB\-i\fP is optional. If interface 'none' is speci=
fied, the
+alfred daemon will not communicate with other alfred instances on the
+network unless the interface list is modified at runtime via the unix so=
cket.
 The \fB\-b\fP option is optional, and only needed if you run alfred on a
 batman-adv interface not called bat0, or if you don't use batman-adv at =
all
 (use '\fB\-b\fP none'). In this case, alfred will still work but will no=
t be
diff --git a/netsock.c b/netsock.c
index 84b0ec3..7bc49b4 100644
--- a/netsock.c
+++ b/netsock.c
@@ -116,6 +116,10 @@ int netsock_set_interfaces(struct globals *globals, =
char *interfaces)
=20
 	netsock_close_all(globals);
=20
+	/* interface 'none' disables all interface operations */
+	if (strcmp(interfaces, "none") =3D=3D 0)
+		return 0;
+
 	input =3D interfaces;
 	while ((token =3D strtok_r(input, ",", &saveptr))) {
 		input =3D NULL;
@@ -452,25 +456,6 @@ err:
 	return -1;
 }
=20
-int netsock_open_all(struct globals *globals)
-{
-	int num_socks =3D 0;
-	int ret;
-	struct interface *interface;
-
-	list_for_each_entry(interface, &globals->interfaces, list) {
-		if (globals->ipv4mode)
-			ret =3D netsock_open4(interface);
-		else
-			ret =3D netsock_open(interface);
-
-		if (ret >=3D 0)
-			num_socks++;
-	}
-
-	return num_socks;
-}
-
 size_t netsocket_count_interfaces(struct globals *globals)
 {
 	struct interface *interface;
diff --git a/server.c b/server.c
index 85bf453..39206bf 100644
--- a/server.c
+++ b/server.c
@@ -372,7 +372,6 @@ int alfred_server(struct globals *globals)
 	struct timespec last_check, now, tv;
 	fd_set fds, errfds;
 	size_t num_interfaces;
-	int num_socks;
=20
 	if (create_hashes(globals))
 		return -1;
@@ -380,11 +379,6 @@ int alfred_server(struct globals *globals)
 	if (unix_sock_open_daemon(globals))
 		return -1;
=20
-	if (list_empty(&globals->interfaces)) {
-		fprintf(stderr, "Can't start server: interface missing\n");
-		return -1;
-	}
-
 	if (strcmp(globals->mesh_iface, "none") !=3D 0 &&
 	    batadv_interface_check(globals->mesh_iface) < 0 &&
 	    !globals->force) {
@@ -393,12 +387,6 @@ int alfred_server(struct globals *globals)
 		return -1;
 	}
=20
-	num_socks =3D netsock_open_all(globals);
-	if (num_socks <=3D 0 && !globals->force) {
-		fprintf(stderr, "Failed to open interfaces\n");
-		return -1;
-	}
-
 	num_interfaces =3D netsocket_count_interfaces(globals);
 	if (num_interfaces > 1 && globals->opmode =3D=3D OPMODE_SECONDARY) {
 		fprintf(stderr, "More than one interface specified in secondary mode\n=
");
--=20
2.32.0.rc0
