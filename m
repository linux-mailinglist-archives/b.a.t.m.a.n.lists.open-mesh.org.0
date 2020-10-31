Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id C6B142A1901
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 31 Oct 2020 18:39:18 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 8080280E10;
	Sat, 31 Oct 2020 18:39:18 +0100 (CET)
Received: from dvalin.narfation.org (dvalin.narfation.org [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id D00DD80172
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 31 Oct 2020 18:39:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1604165956;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=QTdW6y0+jSzMVUtAZdYelBmBx3w/Hq+zbYeHlpVHWcE=;
	b=tchf9pVszfc7+JX2fuwtWGhXNANEFwYEW+m2hrtYOhrfcVolZ6S/582pyVIZeJxMdR69kp
	RnUjitggUxPOkM+wWoMKT4gF1V0v63yrzz1Q4zymMvvzSNYkbpJRGI/c6RWv39oh6ZxiYN
	INKujDp86VD2pfmxjJHCZuvPCgc0XcI=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
Subject: [PATCH 1/2] alfred: Drop deprecated debugfs support
Date: Sat, 31 Oct 2020 18:39:11 +0100
Message-Id: <20201031173912.108591-1-sven@narfation.org>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1604165956; a=rsa-sha256;
	cv=none;
	b=tWS+CRPPoQ+lMYD/8czZn/0vAYr1Ji4FSEA00hkDltX4BsVZCTU3wNdD6+AgB3SV1fgogE
	2KkmfcV3rt6repvFrYBV9fPnv1Di6KY/ijNKw5UF4LFsfnToYXFgYcxcoVC/+9lrbLn7MI
	W2G/VczIJtxlgVENDSNKB+Zip40+Cp8=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=tchf9pVs;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1604165956;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=QTdW6y0+jSzMVUtAZdYelBmBx3w/Hq+zbYeHlpVHWcE=;
	b=mFguEK/dTIdlIN5xS6xE7X3XZJQQTk4alYQvXH/nsuCGvlleIcL6Qyr9UwQSIFZY+wBjqi
	9guR4QFJr3HH1vr4xxJxmoeom5fDc8G1hke9VSRcZ/esFGNcZZs9ko5hoNCmqOFTL/AzLP
	nCY5Gp/G5tb1gmQq91Oyd/aK6ecy678=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: UD4TNOVIJEUUUPKP6B4D3O7THR6QY3KN
X-Message-ID-Hash: UD4TNOVIJEUUUPKP6B4D3O7THR6QY3KN
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/UD4TNOVIJEUUUPKP6B4D3O7THR6QY3KN/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

The debugfs support is disabled by default in batman-adv since a while an=
d
will be removed in 2021. The generic netlink interface should be used
instead.

The alfred support for it should be removed with the same release as the
removal in batman-adv.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 Makefile       |   1 -
 README.rst     |   7 +-
 batadv_query.c | 204 +------------------------------------------------
 debugfs.c      | 140 ---------------------------------
 debugfs.h      |  25 ------
 main.c         |   4 -
 vis/Makefile   |   1 -
 vis/debugfs.c  |   1 -
 vis/debugfs.h  |   1 -
 vis/vis.c      | 167 +---------------------------------------
 vis/vis.h      |   1 -
 11 files changed, 5 insertions(+), 547 deletions(-)
 delete mode 100644 debugfs.c
 delete mode 100644 debugfs.h
 delete mode 120000 vis/debugfs.c
 delete mode 120000 vis/debugfs.h

diff --git a/Makefile b/Makefile
index 2bfe18c..6268cb9 100755
--- a/Makefile
+++ b/Makefile
@@ -11,7 +11,6 @@ BINARY_NAME =3D alfred
 OBJ +=3D batadv_query.o
 OBJ +=3D batadv_querynl.o
 OBJ +=3D client.o
-OBJ +=3D debugfs.o
 OBJ +=3D hash.o
 OBJ +=3D main.o
 OBJ +=3D netlink.o
diff --git a/README.rst b/README.rst
index bf5fb05..2bc2119 100644
--- a/README.rst
+++ b/README.rst
@@ -290,7 +290,7 @@ Operations requiring special capabilities:
=20
 * bind to device
 * creating the unix socket
-* accessing the debugfs filesystem
+* accessing the netlink interface
=20
 The first operation can still be executed when the admin grants the spec=
ial
 capability CAP_NET_RAW+CAP_NET_ADMIN to anyone executing the alfred bina=
ry.
@@ -300,11 +300,6 @@ directory which can be accessed by the user::
   $ sudo setcap cap_net_admin,cap_net_raw+ep alfred
   $ ./alfred -u alfred.sock -i eth0
=20
-The user running alfred must still be in a group which is allowed to acc=
ess
-/sys/kernel/debugfs to correctly choose best neighbors for communication=
.
-It is possible (but not recommended) to disable the neighbor
-selection/prioritization using the parameter '-b none'.
-
=20
 License
 =3D=3D=3D=3D=3D=3D=3D
diff --git a/batadv_query.c b/batadv_query.c
index f758b42..66d3452 100644
--- a/batadv_query.c
+++ b/batadv_query.c
@@ -22,11 +22,6 @@
 #include <sys/types.h>
=20
 #include "batadv_querynl.h"
-#include "debugfs.h"
-
-#define DEBUG_BATIF_PATH_FMT "%s/batman_adv/%s"
-#define DEBUG_TRANSTABLE_GLOBAL "transtable_global"
-#define DEBUG_ORIGINATORS "originators"
=20
 static int enable_net_admin_capability(int enable)
 {
@@ -135,36 +130,6 @@ int ipv4_to_mac(struct interface *interface,
 	return 0;
 }
=20
-static int batadv_interface_check_debugfs(const char *mesh_iface)
-{
-	char full_path[MAX_PATH + 1];
-	FILE *f;
-
-	debugfs_make_path(DEBUG_BATIF_PATH_FMT "/" DEBUG_TRANSTABLE_GLOBAL,
-			  mesh_iface, full_path, sizeof(full_path));
-	f =3D fopen(full_path, "r");
-	if (!f) {
-		fprintf(stderr,
-			"Could not find %s for interface %s. Make sure it is a valid batman-a=
dv soft-interface\n",
-			DEBUG_TRANSTABLE_GLOBAL, mesh_iface);
-		return -1;
-	}
-	fclose(f);
-
-	debugfs_make_path(DEBUG_BATIF_PATH_FMT "/" DEBUG_ORIGINATORS,
-			  mesh_iface, full_path, sizeof(full_path));
-	f =3D fopen(full_path, "r");
-	if (!f) {
-		fprintf(stderr,
-			"Could not find %s for interface %s. Make sure it is a valid batman-a=
dv soft-interface\n",
-			DEBUG_ORIGINATORS, mesh_iface);
-		return -1;
-	}
-	fclose(f);
-
-	return 0;
-}
-
 int batadv_interface_check(const char *mesh_iface)
 {
 	int ret;
@@ -173,86 +138,9 @@ int batadv_interface_check(const char *mesh_iface)
 	ret =3D batadv_interface_check_netlink(mesh_iface);
 	enable_net_admin_capability(0);
=20
-	if (ret =3D=3D -EOPNOTSUPP)
-		ret =3D batadv_interface_check_debugfs(mesh_iface);
-
 	return ret;
 }
=20
-static int translate_mac_debugfs(const char *mesh_iface,
-				 struct hashtable_t *tg_hash)
-{
-	enum {
-		tg_start,
-		tg_mac,
-		tg_via,
-		tg_originator,
-	} pos;
-	char full_path[MAX_PATH+1];
-	struct ether_addr *mac_tmp;
-	struct ether_addr mac;
-	FILE *f =3D NULL;
-	size_t len =3D 0;
-	char *line =3D NULL;
-	char *input, *saveptr, *token;
-	int line_invalid;
-
-	debugfs_make_path(DEBUG_BATIF_PATH_FMT "/" DEBUG_TRANSTABLE_GLOBAL,
-			  mesh_iface, full_path, sizeof(full_path));
-
-	f =3D fopen(full_path, "r");
-	if (!f)
-		return -EOPNOTSUPP;
-
-	while (getline(&line, &len, f) !=3D -1) {
-		line_invalid =3D 0;
-		pos =3D tg_start;
-		input =3D line;
-
-		while ((token =3D strtok_r(input, " \t", &saveptr))) {
-			input =3D NULL;
-
-			switch (pos) {
-			case tg_start:
-				if (strcmp(token, "*") !=3D 0)
-					line_invalid =3D 1;
-				else
-					pos =3D tg_mac;
-				break;
-			case tg_mac:
-				mac_tmp =3D ether_aton(token);
-				if (!mac_tmp) {
-					line_invalid =3D 1;
-				} else {
-					memcpy(&mac, mac_tmp, sizeof(mac));
-					pos =3D tg_via;
-				}
-				break;
-			case tg_via:
-				if (strcmp(token, "via") =3D=3D 0)
-					pos =3D tg_originator;
-				break;
-			case tg_originator:
-				mac_tmp =3D ether_aton(token);
-				if (!mac_tmp)
-					line_invalid =3D 1;
-				else
-					tg_hash_add(tg_hash, &mac, mac_tmp);
-				break;
-			}
-
-			if (line_invalid)
-				break;
-		}
-	}
-
-	if (f)
-		fclose(f);
-	free(line);
-
-	return 0;
-}
-
 static int tg_compare(void *d1, void *d2)
 {
 	struct tg_entry *s1 =3D d1, *s2 =3D d2;
@@ -285,19 +173,15 @@ static int tg_choose(void *d1, int size)
 struct hashtable_t *tg_hash_new(const char *mesh_iface)
 {
 	struct hashtable_t *tg_hash;
-	int ret;
=20
 	tg_hash =3D hash_new(64, tg_compare, tg_choose);
 	if (!tg_hash)
 		return NULL;
=20
 	enable_net_admin_capability(1);
-	ret =3D translate_mac_netlink(mesh_iface, tg_hash);
+	translate_mac_netlink(mesh_iface, tg_hash);
 	enable_net_admin_capability(0);
=20
-	if (ret =3D=3D -EOPNOTSUPP)
-		translate_mac_debugfs(mesh_iface, tg_hash);
-
 	return tg_hash;
 }
=20
@@ -341,86 +225,6 @@ struct ether_addr *translate_mac(struct hashtable_t =
*tg_hash,
 	return &found->originator;
 }
=20
-static int get_tq_debugfs(const char *mesh_iface, struct hashtable_t *or=
ig_hash)
-{
-	enum {
-		orig_mac,
-		orig_lastseen,
-		orig_tqstart,
-		orig_tqvalue,
-	} pos;
-	char full_path[MAX_PATH + 1];
-	struct ether_addr *mac_tmp;
-	FILE *f =3D NULL;
-	size_t len =3D 0;
-	char *line =3D NULL;
-	char *input, *saveptr, *token;
-	int line_invalid;
-	uint8_t tq;
-
-	debugfs_make_path(DEBUG_BATIF_PATH_FMT "/" DEBUG_ORIGINATORS,
-			  mesh_iface, full_path, sizeof(full_path));
-
-	f =3D fopen(full_path, "r");
-	if (!f)
-		return -EOPNOTSUPP;
-
-	while (getline(&line, &len, f) !=3D -1) {
-		line_invalid =3D 0;
-		pos =3D orig_mac;
-		input =3D line;
-
-		while ((token =3D strtok_r(input, " \t", &saveptr))) {
-			input =3D NULL;
-
-			switch (pos) {
-			case orig_mac:
-				mac_tmp =3D ether_aton(token);
-				if (!mac_tmp)
-					line_invalid =3D 1;
-				else
-					pos =3D orig_lastseen;
-				break;
-			case orig_lastseen:
-				pos =3D orig_tqstart;
-				break;
-			case orig_tqstart:
-				if (strlen(token) =3D=3D 0) {
-					line_invalid =3D 1;
-					break;
-				} else if (token[0] !=3D '(') {
-					line_invalid =3D 1;
-					break;
-				} else if (strlen(token) =3D=3D 1) {
-					pos =3D orig_tqvalue;
-					break;
-				}
-
-				token++;
-				/* fall through */
-			case orig_tqvalue:
-				if (token[strlen(token) - 1] !=3D ')') {
-					line_invalid =3D 1;
-				} else {
-					token[strlen(token) - 1] =3D '\0';
-					tq =3D strtol(token, NULL, 10);
-					orig_hash_add(orig_hash, mac_tmp, tq);
-				}
-				break;
-			}
-
-			if (line_invalid)
-				break;
-		}
-	}
-
-	if (f)
-		fclose(f);
-	free(line);
-
-	return 0;
-}
-
 static int orig_compare(void *d1, void *d2)
 {
 	struct orig_entry *s1 =3D d1, *s2 =3D d2;
@@ -453,19 +257,15 @@ static int orig_choose(void *d1, int size)
 struct hashtable_t *orig_hash_new(const char *mesh_iface)
 {
 	struct hashtable_t *orig_hash;
-	int ret;
=20
 	orig_hash =3D hash_new(64, orig_compare, orig_choose);
 	if (!orig_hash)
 		return NULL;
=20
 	enable_net_admin_capability(1);
-	ret =3D get_tq_netlink(mesh_iface, orig_hash);
+	get_tq_netlink(mesh_iface, orig_hash);
 	enable_net_admin_capability(0);
=20
-	if (ret =3D=3D -EOPNOTSUPP)
-		get_tq_debugfs(mesh_iface, orig_hash);
-
 	return orig_hash;
 }
=20
diff --git a/debugfs.c b/debugfs.c
deleted file mode 100644
index 5a71d65..0000000
--- a/debugfs.c
+++ /dev/null
@@ -1,140 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0
-/* Copyright (C) 2009 Clark Williams <williams@redhat.com>
- * Copyright (C) 2009 Xiao Guangrong <xiaoguangrong@cn.fujitsu.com>
- *
- * License-Filename: LICENSES/preferred/GPL-2.0
- */
-
-#include "debugfs.h"
-#include <errno.h>
-#include <stdio.h>
-#include <string.h>
-#include <sys/mount.h>
-#include <sys/stat.h>
-#include <sys/statfs.h>
-
-#ifndef DEBUGFS_MAGIC
-#define DEBUGFS_MAGIC          0x64626720
-#endif
-
-static int debugfs_premounted;
-static char debugfs_mountpoint[MAX_PATH+1];
-
-static const char *debugfs_find_mountpoint(void);
-static int debugfs_valid_mountpoint(const char *debugfs);
-
-static const char *debugfs_known_mountpoints[] =3D {
-	"/sys/kernel/debug/",
-	"/debug/",
-	NULL,
-};
-
-/* construct a full path to a debugfs element */
-int debugfs_make_path(const char *fmt, const char *mesh_iface, char *buf=
fer,
-		      int size)
-{
-	if (strlen(debugfs_mountpoint) =3D=3D 0) {
-		buffer[0] =3D '\0';
-		return -1;
-	}
-
-	return snprintf(buffer, size, fmt, debugfs_mountpoint, mesh_iface);
-}
-
-static int debugfs_found;
-
-/* find the path to the mounted debugfs */
-static const char *debugfs_find_mountpoint(void)
-{
-	const char **ptr;
-	char type[100];
-	FILE *fp;
-
-	if (debugfs_found)
-		return (const char *)debugfs_mountpoint;
-
-	ptr =3D debugfs_known_mountpoints;
-	while (*ptr) {
-		if (debugfs_valid_mountpoint(*ptr) =3D=3D 0) {
-			debugfs_found =3D 1;
-			strncpy(debugfs_mountpoint, *ptr,
-				sizeof(debugfs_mountpoint));
-			debugfs_mountpoint[sizeof(debugfs_mountpoint) - 1] =3D 0;
-			return debugfs_mountpoint;
-		}
-		ptr++;
-	}
-
-	/* give up and parse /proc/mounts */
-	fp =3D fopen("/proc/mounts", "r");
-	if (fp =3D=3D NULL) {
-		perror("Error - can't open /proc/mounts for read");
-		return NULL;
-	}
-
-	while (fscanf(fp, "%*s %"
-		      STR(MAX_PATH)
-		      "s %99s %*s %*d %*d\n",
-		      debugfs_mountpoint, type) =3D=3D 2) {
-		if (strcmp(type, "debugfs") =3D=3D 0)
-			break;
-	}
-	fclose(fp);
-
-	if (strcmp(type, "debugfs") !=3D 0)
-		return NULL;
-
-	debugfs_found =3D 1;
-
-	return debugfs_mountpoint;
-}
-
-/* verify that a mountpoint is actually a debugfs instance */
-
-static int debugfs_valid_mountpoint(const char *debugfs)
-{
-	struct statfs st_fs;
-
-	if (statfs(debugfs, &st_fs) < 0)
-		return -ENOENT;
-	else if (st_fs.f_type !=3D (long) DEBUGFS_MAGIC)
-		return -ENOENT;
-
-	return 0;
-}
-
-
-int debugfs_valid_entry(const char *path)
-{
-	struct stat st;
-
-	if (stat(path, &st))
-		return -errno;
-
-	return 0;
-}
-
-/* mount the debugfs somewhere if it's not mounted */
-
-char *debugfs_mount(const char *mountpoint)
-{
-	/* see if it's already mounted */
-	if (debugfs_find_mountpoint()) {
-		debugfs_premounted =3D 1;
-		return debugfs_mountpoint;
-	}
-
-	/* if not mounted and no argument */
-	if (mountpoint =3D=3D NULL)
-		mountpoint =3D "/sys/kernel/debug";
-
-	if (mount(NULL, mountpoint, "debugfs", 0, NULL) < 0)
-		return NULL;
-
-	/* save the mountpoint */
-	strncpy(debugfs_mountpoint, mountpoint, sizeof(debugfs_mountpoint));
-	debugfs_mountpoint[sizeof(debugfs_mountpoint) - 1] =3D '\0';
-	debugfs_found =3D 1;
-
-	return debugfs_mountpoint;
-}
diff --git a/debugfs.h b/debugfs.h
deleted file mode 100644
index 61384f9..0000000
--- a/debugfs.h
+++ /dev/null
@@ -1,25 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0 */
-/* Copyright (C) 2009 Clark Williams <williams@redhat.com>
- * Copyright (C) 2009 Xiao Guangrong <xiaoguangrong@cn.fujitsu.com>
- *
- * License-Filename: LICENSES/preferred/GPL-2.0
- */
-
-#ifndef __DEBUGFS_H__
-#define __DEBUGFS_H__
-
-#ifndef MAX_PATH
-# define MAX_PATH 256
-#endif
-
-#ifndef STR
-# define _STR(x) #x
-# define STR(x) _STR(x)
-#endif
-
-extern int debugfs_valid_entry(const char *path);
-extern char *debugfs_mount(const char *mountpoint);
-extern int debugfs_make_path(const char *fmt, const char *mesh_iface,
-			     char *buffer, int size);
-
-#endif /* __DEBUGFS_H__ */
diff --git a/main.c b/main.c
index b498d1e..5ae8187 100644
--- a/main.c
+++ b/main.c
@@ -18,7 +18,6 @@
 #include <unistd.h>
 #endif
 #include "alfred.h"
-#include "debugfs.h"
 #include "packet.h"
 #include "list.h"
=20
@@ -167,9 +166,6 @@ static struct globals *alfred_init(int argc, char *ar=
gv[])
 		{NULL,			0,			NULL,	0},
 	};
=20
-	/* We need full capabilities to mount debugfs, so do that now */
-	debugfs_mount(NULL);
-
 	ret =3D reduce_capabilities();
 	if (ret < 0)
 		return NULL;
diff --git a/vis/Makefile b/vis/Makefile
index cfd0921..50c8efb 100755
--- a/vis/Makefile
+++ b/vis/Makefile
@@ -8,7 +8,6 @@
=20
 # batadv-vis build
 BINARY_NAME =3D batadv-vis
-OBJ +=3D debugfs.o
 OBJ +=3D netlink.o
 OBJ +=3D vis.o
 MANPAGE =3D man/batadv-vis.8
diff --git a/vis/debugfs.c b/vis/debugfs.c
deleted file mode 120000
index 45fb24d..0000000
--- a/vis/debugfs.c
+++ /dev/null
@@ -1 +0,0 @@
-../debugfs.c
\ No newline at end of file
diff --git a/vis/debugfs.h b/vis/debugfs.h
deleted file mode 120000
index 094e733..0000000
--- a/vis/debugfs.h
+++ /dev/null
@@ -1 +0,0 @@
-../debugfs.h
\ No newline at end of file
diff --git a/vis/vis.c b/vis/vis.c
index 17e067e..b62359c 100644
--- a/vis/vis.c
+++ b/vis/vis.c
@@ -26,7 +26,6 @@
=20
 #include "batman_adv.h"
 #include "netlink.h"
-#include "debugfs.h"
=20
 #define IFACE_STATUS_LEN 256
=20
@@ -78,25 +77,6 @@ static char *mac_to_str(uint8_t *mac)
 	return macstr;
 }
=20
-static uint8_t *str_to_mac(char *str)
-{
-	static uint8_t mac[ETH_ALEN];
-	int ret;
-
-	if (!str)
-		return NULL;
-
-	ret =3D sscanf(str,
-		"%02hhX:%02hhX:%02hhX:%02hhX:%02hhX:%02hhX",
-		&mac[0], &mac[1], &mac[2],
-		&mac[3], &mac[4], &mac[5]);
-=09
-	if (ret !=3D 6)
-		return NULL;
-=09
-	return mac;
-}
-
 static int get_if_mac(char *ifname, uint8_t *mac)
 {
 	struct ifreq ifr;
@@ -274,7 +254,7 @@ static int parse_transtable_local_netlink_cb(struct n=
l_msg *msg, void *arg)
 	return NL_OK;
 }
=20
-static int parse_transtable_local_netlink(struct globals *globals)
+static int parse_transtable_local(struct globals *globals)
 {
 	struct vis_netlink_opts opts =3D {
 		.globals =3D globals,
@@ -294,69 +274,6 @@ static int parse_transtable_local_netlink(struct glo=
bals *globals)
 	return 0;
 }
=20
-static int parse_transtable_local_debugfs(struct globals *globals)
-{
-	char *fbuf;
-	char *lptr, *tptr;
-	char *temp1, *temp2;
-	int lnum, tnum;
-	uint8_t *mac;
-	struct vis_list_entry *v_entry;
-	char path[1024];
-
-	debugfs_make_path(DEBUG_BATIF_PATH_FMT "/" "transtable_local", globals-=
>interface, path, sizeof(path));
-	path[sizeof(path) - 1] =3D 0;
-
-	fbuf =3D read_file(path);
-	if (!fbuf)
-		return -1;
-
-	for (lptr =3D fbuf, lnum =3D 0; ; lptr =3D NULL, lnum++) {
-		lptr =3D strtok_r(lptr, "\n", &temp1);
-		if (!lptr)
-			break;
-
-		if (lnum < 1)
-			continue;
-
-		for (tptr =3D lptr, tnum =3D 0;; tptr =3D NULL, tnum++) {
-			tptr =3D strtok_r(tptr, "\t ", &temp2);
-			if (!tptr)
-				break;
-			if (tnum =3D=3D 1) {
-				v_entry =3D malloc(sizeof(*v_entry));
-				if (!v_entry)
-					continue;
-
-				mac =3D str_to_mac(tptr);
-				if (!mac) {
-					free(v_entry);
-					continue;
-				}
-
-				memcpy(v_entry->v.mac, mac, ETH_ALEN);
-				v_entry->v.ifindex =3D 255;
-				v_entry->v.qual =3D 0;
-				list_add_tail(&v_entry->list, &globals->entry_list);
-			}
-		}
-	}
-	free(fbuf);
-
-	return 0;
-}
-
-static int parse_transtable_local(struct globals *globals)
-{
-	int ret;
-
-	ret =3D parse_transtable_local_netlink(globals);
-	if (ret !=3D -EOPNOTSUPP)
-		return ret;
-
-	return parse_transtable_local_debugfs(globals);
-}
-
 static void clear_lists(struct globals *globals)
 {
 	struct vis_list_entry *v_entry, *v_entry_safe;
@@ -693,7 +610,7 @@ static int parse_orig_list_netlink_cb(struct nl_msg *=
msg, void *arg)
 	return NL_OK;
 }
=20
-static int parse_orig_list_netlink(struct globals *globals)
+static int parse_orig_list(struct globals *globals)
 {
 	struct vis_netlink_opts opts =3D {
 		.globals =3D globals,
@@ -712,84 +629,6 @@ static int parse_orig_list_netlink(struct globals *g=
lobals)
 	return 0;
 }
=20
-static int parse_orig_list_debugfs(struct globals *globals)
-{
-	char *fbuf;
-	char *lptr, *tptr;
-	char *temp1, *temp2;
-	char *dest, *tq, *neigh, *iface;
-	int lnum, tnum, ifindex, tq_val;
-	uint8_t *mac;
-	char path[1024];
-	struct vis_list_entry *v_entry;
-
-	debugfs_make_path(DEBUG_BATIF_PATH_FMT "/" "originators", globals->inte=
rface, path, sizeof(path));
-	fbuf =3D read_file(path);
-	if (!fbuf)
-		return -1;
-
-	for (lptr =3D fbuf, lnum =3D 0; ; lptr =3D NULL, lnum++) {
-		lptr =3D strtok_r(lptr, "\n", &temp1);
-		if (!lptr)
-			break;
-		if (lnum < 2)
-			continue;
-
-		for (tptr =3D lptr, tnum =3D 0;; tptr =3D NULL, tnum++) {
-			tptr =3D strtok_r(tptr, "\t []()", &temp2);
-			if (!tptr)
-				break;
-			switch (tnum) {
-			case 0: dest =3D tptr; break;
-			case 2: tq =3D tptr; break;
-			case 3: neigh =3D tptr; break;
-			case 4: iface =3D tptr; break;
-			default: break;
-			}
-		}
-		if (tnum > 4) {
-			if (strcmp(dest, neigh) =3D=3D 0) {
-				tq_val =3D strtol(tq, NULL, 10);
-				if (tq_val < 1 || tq_val > 255)
-					continue;
-
-				mac =3D str_to_mac(dest);
-				if (!mac)
-					continue;
-
-				ifindex =3D get_if_index_byname(globals, iface);
-				if (ifindex < 0)
-					continue;
-
-				v_entry =3D malloc(sizeof(*v_entry));
-				if (!v_entry)
-					continue;
-
-				memcpy(v_entry->v.mac, mac, ETH_ALEN);
-				v_entry->v.ifindex =3D ifindex;
-				v_entry->v.qual =3D tq_val;
-				list_add_tail(&v_entry->list, &globals->entry_list);
-			=09
-			}
-		}
-
-	}
-	free(fbuf);
-
-	return 0;
-}
-
-static int parse_orig_list(struct globals *globals)
-{
-	int ret;
-
-	ret =3D parse_orig_list_netlink(globals);
-	if (ret !=3D -EOPNOTSUPP)
-		return ret;
-
-	return parse_orig_list_debugfs(globals);
-}
-
 static int vis_publish_data(struct globals *globals)
 {
 	int len, ret;
@@ -1296,8 +1135,6 @@ static struct globals *vis_init(int argc, char *arg=
v[])
=20
 static int vis_server(struct globals *globals)
 {
-	debugfs_mount(NULL);
-
 	globals->push =3D (struct alfred_push_data_v0 *) globals->buf;
 	globals->vis_data =3D (struct vis_v1 *) (globals->buf + sizeof(*globals=
->push) + sizeof(struct alfred_data));
=20
diff --git a/vis/vis.h b/vis/vis.h
index 43d2974..bed6615 100644
--- a/vis/vis.h
+++ b/vis/vis.h
@@ -24,7 +24,6 @@
 #define UPDATE_INTERVAL				10
=20
 #define SYS_IFACE_PATH				"/sys/class/net"
-#define DEBUG_BATIF_PATH_FMT			"%s/batman_adv/%s"
 #define SYS_IFACE_STATUS_FMT			SYS_IFACE_PATH"/%s/batman_adv/iface_statu=
s"
=20
=20
--=20
2.28.0
