Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 07F0231C2D7
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 15 Feb 2021 21:10:24 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 0E96083D72;
	Mon, 15 Feb 2021 21:10:14 +0100 (CET)
Received: from dvalin.narfation.org (dvalin.narfation.org [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id B367982FE3
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 15 Feb 2021 21:10:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1613419341;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=VJGucoXsKrx/eAdThUHsXzS13r6UIHVzZSU8BwedkzI=;
	b=FHKOeDBUSpFd1wHWlJx0b8x3Ov02Kn6/xCGfVLE6hPuNBc/xieeV8Jh7UvUSFPmEtguml1
	wS1gDsmb0UbI0eIrGrgWqgJX+cQOjvPZBYCPkbxbBYI/95ZAaV309Ab7PZqtStL7UHLyHs
	UTaNP8olorVSOBqyFgwr/Ij2XnuINbo=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
Subject: [PATCH 4/4] alfred: Allow start of server without valid interface
Date: Mon, 15 Feb 2021 21:01:26 +0100
Message-Id: <20210215200126.140253-4-sven@narfation.org>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210215200126.140253-1-sven@narfation.org>
References: <20210215200126.140253-1-sven@narfation.org>
MIME-Version: 1.0
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=FHKOeDBU;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1613419804;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=VJGucoXsKrx/eAdThUHsXzS13r6UIHVzZSU8BwedkzI=;
	b=Vom4VDxEErYTJ5l7T87mP+HYyR2gOLl9wo0tXs/Wwlmco/qx2OqXbxhKkRR/g4hQAEAgvb
	tsFVTa49WU9VaoyP+sT6btBjK4TwQSELpZBytTT+ynwHowCwipLStlXYrZy4G7tWwSSjNB
	iuY82VWOaBrhqxmQcu8QI3Y9IgFvYH8=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1613419804; a=rsa-sha256;
	cv=none;
	b=dGX1Xma+akYMQo/AjIzlQP26AHqSGgBfMiiyT4vGYSueRCz+yH0yO4z5gPt9y/oH5kyS2x
	5ryJE6gl1IDHcWOTxutP8FxM8PBNzS5h6APqbfW8ujOlNLui2jAYQujPbrSIXlN5hmXpBP
	p4c8jJfs5rvEJcYG2HthlM30zqZgB8o=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: EWBGCC6UPUD4EPVGO3BCJJ3QQI6RGQLE
X-Message-ID-Hash: EWBGCC6UPUD4EPVGO3BCJJ3QQI6RGQLE
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/EWBGCC6UPUD4EPVGO3BCJJ3QQI6RGQLE/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

The alfred server always needs interfaces to operate on. But these
interfaces might not exist at the moment when the daemon process is
started. This caused an error and stopped the process.

But alfred is able to deal with interfaces which disappeared at runtime b=
ut
existed at startup. To force a similar behavior for the alfred startup, t=
he
parameter "--force" or "-f" is introduced.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 alfred.h     | 1 +
 main.c       | 7 ++++++-
 man/alfred.8 | 3 +++
 server.c     | 5 +++--
 4 files changed, 13 insertions(+), 3 deletions(-)

diff --git a/alfred.h b/alfred.h
index c64ff17..ac08253 100644
--- a/alfred.h
+++ b/alfred.h
@@ -117,6 +117,7 @@ struct globals {
 	int clientmode_version;
 	uint8_t verbose:1;
 	uint8_t ipv4mode:1;
+	uint8_t force:1;
=20
 	int unix_sock;
 	const char *unix_path;
diff --git a/main.c b/main.c
index f25b6cc..e190d42 100644
--- a/main.c
+++ b/main.c
@@ -164,6 +164,7 @@ static struct globals *alfred_init(int argc, char *ar=
gv[])
 		{"version",		no_argument,		NULL,	'v'},
 		{"verbose",		no_argument,		NULL,	'd'},
 		{"sync-period",		required_argument,	NULL,	'p'},
+		{"force",		no_argument,		NULL,	'f'},
 		{NULL,			0,			NULL,	0},
 	};
=20
@@ -184,6 +185,7 @@ static struct globals *alfred_init(int argc, char *ar=
gv[])
 	globals->unix_path =3D ALFRED_SOCK_PATH_DEFAULT;
 	globals->verbose =3D false;
 	globals->ipv4mode =3D false;
+	globals->force =3D false;
 	globals->update_command =3D NULL;
 	globals->sync_period.tv_sec =3D ALFRED_INTERVAL;
 	globals->sync_period.tv_nsec =3D 0;
@@ -191,7 +193,7 @@ static struct globals *alfred_init(int argc, char *ar=
gv[])
=20
 	time_random_seed();
=20
-	while ((opt =3D getopt_long(argc, argv, "ms:r:hi:b:vV:M:I:u:dc:p:4:", l=
ong_options,
+	while ((opt =3D getopt_long(argc, argv, "ms:r:hi:b:vV:M:I:u:dc:p:4:f", =
long_options,
 				  &opt_ind)) !=3D -1) {
 		switch (opt) {
 		case 'r':
@@ -273,6 +275,9 @@ static struct globals *alfred_init(int argc, char *ar=
gv[])
 			inet_pton(AF_INET, optarg, &alfred_mcast.ipv4);
 			printf(" ** IPv4 Multicast Mode: %x\n", alfred_mcast.ipv4.s_addr);
 			break;
+		case 'f':
+			globals->force =3D true;
+			break;
 		case 'h':
 		default:
 			alfred_usage();
diff --git a/man/alfred.8 b/man/alfred.8
index 25591be..e965db8 100644
--- a/man/alfred.8
+++ b/man/alfred.8
@@ -72,6 +72,9 @@ Collect data from the network and prints it on the netw=
ork
 \fB\-d\fP, \fB\-\-verbose\fP
 Show extra information in the data output
 .TP
+\fB\-d\fP, \fB\-\-force\fP
+Start server even when batman-adv or interface(s) are not yet available.
+.TP
 \fB\-V\fP, \fB\-\-req\-version\fP \fIversion\fP
 Specify the data version set for \fB\-s\fP
=20
diff --git a/server.c b/server.c
index eb2bc8a..b4925e7 100644
--- a/server.c
+++ b/server.c
@@ -386,14 +386,15 @@ int alfred_server(struct globals *globals)
 	}
=20
 	if (strcmp(globals->mesh_iface, "none") !=3D 0 &&
-	    batadv_interface_check(globals->mesh_iface) < 0) {
+	    batadv_interface_check(globals->mesh_iface) < 0 &&
+	    !globals->force) {
 		fprintf(stderr, "Can't start server: batman-adv interface %s not found=
\n",
 			globals->mesh_iface);
 		return -1;
 	}
=20
 	num_socks =3D netsock_open_all(globals);
-	if (num_socks <=3D 0) {
+	if (num_socks <=3D 0 && !globals->force) {
 		fprintf(stderr, "Failed to open interfaces\n");
 		return -1;
 	}
--=20
2.30.0
