Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 007C131C2D4
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 15 Feb 2021 21:10:09 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 8C6E98039C;
	Mon, 15 Feb 2021 21:10:07 +0100 (CET)
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 997148039C
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 15 Feb 2021 21:10:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1613419339;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ElSEHzDZqh/x46o9bSoCGe0yAyutISQuhGI6RqRmMyM=;
	b=PkVNHbil8wNGeh7itpaBlwhPquJ9JHf4g/hYfdsC8KFn3Z1UymJyssc9GPV/MY7sFvVeuX
	b1l1RiodxIqiIn9DP5Bdp5kI8HQjOXvKrNWVkoaf5SceXEPQVdxwDhCssCPGMzR8XiqSA8
	PH4rQiP5AfXBK8mW/Qid0Wa3kFeYMyI=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
Subject: [PATCH 3/4] alfred: Save global mode flags in bitfield
Date: Mon, 15 Feb 2021 21:01:25 +0100
Message-Id: <20210215200126.140253-3-sven@narfation.org>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210215200126.140253-1-sven@narfation.org>
References: <20210215200126.140253-1-sven@narfation.org>
MIME-Version: 1.0
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=PkVNHbil;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1613419804;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=ElSEHzDZqh/x46o9bSoCGe0yAyutISQuhGI6RqRmMyM=;
	b=igjouaaUTLxeeNBtjsZANmmXxwYvNMxEQV0isyDPso5CR/f/M9ErF/8g/LLLK8Efky6k5Q
	mh7Emve4YvkiUlqaeYBx268DpgC9DaQ7qsOBb1O12Q1Nv3mPrgQOLe7ERnhEbZrYFTvedg
	ptwO7FP09+qRnJK4l7XC7My8rQXWt/A=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1613419804; a=rsa-sha256;
	cv=none;
	b=SIAGYUvXwWmy7f/4rhH+jcDT+4EyCM2QLPaOi5zCP/6LQS1qM3KMNS2X8txYHoSLGCY+YA
	W4oTdBr86zGS6l+2pdQX4lIEfX4glsruRo0QrKBCuHUTRxiyEGyB+AjafUYv1deDE3nxdc
	teEj6M1n/JdcUxIl+MObSzo5N6VNu70=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: LQCMENSFDDN4TRQZTVDLMIJ6JNRWF5DU
X-Message-ID-Hash: LQCMENSFDDN4TRQZTVDLMIJ6JNRWF5DU
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/LQCMENSFDDN4TRQZTVDLMIJ6JNRWF5DU/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

The verbose and ipv4mode entries in the globals structure is only used to
save a boolean information. So just use a bit in a bitfield to store this
information instead of a full int.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 alfred.h | 4 ++--
 main.c   | 9 +++++----
 2 files changed, 7 insertions(+), 6 deletions(-)

diff --git a/alfred.h b/alfred.h
index 7d6b0b3..c64ff17 100644
--- a/alfred.h
+++ b/alfred.h
@@ -115,8 +115,8 @@ struct globals {
 	enum clientmode clientmode;
 	int clientmode_arg;
 	int clientmode_version;
-	int verbose;
-	int ipv4mode;
+	uint8_t verbose:1;
+	uint8_t ipv4mode:1;
=20
 	int unix_sock;
 	const char *unix_path;
diff --git a/main.c b/main.c
index 7b866cc..f25b6cc 100644
--- a/main.c
+++ b/main.c
@@ -9,6 +9,7 @@
 #include <arpa/inet.h>
 #include <getopt.h>
 #include <signal.h>
+#include <stdbool.h>
 #include <stdio.h>
 #include <stdlib.h>
 #include <string.h>
@@ -181,8 +182,8 @@ static struct globals *alfred_init(int argc, char *ar=
gv[])
 	globals->clientmode_version =3D 0;
 	globals->mesh_iface =3D "bat0";
 	globals->unix_path =3D ALFRED_SOCK_PATH_DEFAULT;
-	globals->verbose =3D 0;
-	globals->ipv4mode =3D 0;
+	globals->verbose =3D false;
+	globals->ipv4mode =3D false;
 	globals->update_command =3D NULL;
 	globals->sync_period.tv_sec =3D ALFRED_INTERVAL;
 	globals->sync_period.tv_nsec =3D 0;
@@ -252,7 +253,7 @@ static struct globals *alfred_init(int argc, char *ar=
gv[])
 			globals->unix_path =3D optarg;
 			break;
 		case 'd':
-			globals->verbose++;
+			globals->verbose =3D true;
 			break;
 		case 'c':
 			globals->update_command =3D optarg;
@@ -268,7 +269,7 @@ static struct globals *alfred_init(int argc, char *ar=
gv[])
 			printf(" ** Setting sync interval to: %.9f seconds (%ld.%09ld)\n", sy=
nc_period, globals->sync_period.tv_sec, globals->sync_period.tv_nsec);
 			break;
 		case '4':
-			globals->ipv4mode =3D 1;
+			globals->ipv4mode =3D true;
 			inet_pton(AF_INET, optarg, &alfred_mcast.ipv4);
 			printf(" ** IPv4 Multicast Mode: %x\n", alfred_mcast.ipv4.s_addr);
 			break;
--=20
2.30.0
