Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id B04EC2A19B3
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 31 Oct 2020 19:41:02 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id D186380D42;
	Sat, 31 Oct 2020 19:41:01 +0100 (CET)
Received: from dvalin.narfation.org (dvalin.narfation.org [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id DC1A780E2F
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 31 Oct 2020 19:40:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1604169659;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=hPRLEmURpsTwI9DPd6YtsFsou2pO89CCqQJuV2GAJeg=;
	b=zgf4pZGHqngNsMPOzEmmvrd8dSr9NfCt8cqOLwym/4RLn2latzYzCtRCBxQdL6slMyVELU
	Kwok2+PfjOwnWc6PwFumo3PPBLpZAjqmrBYsS43y0aiCRdIjgHwrtjgfO7C8gFoMCGE5yE
	HKGstq62reKtLYro+0DpwOsPfudeEBg=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
Subject: [PATCH 2/3] batctl: Drop deprecated debugfs support
Date: Sat, 31 Oct 2020 19:40:49 +0100
Message-Id: <20201031184051.118630-2-sven@narfation.org>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201031184051.118630-1-sven@narfation.org>
References: <20201031184051.118630-1-sven@narfation.org>
MIME-Version: 1.0
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1604169659; a=rsa-sha256;
	cv=none;
	b=lNVHDO833fv6j3E6V+mOs2iL6H0amCX+6i0YUoPk8Iy527EAxfHWOMjWwue4zpx/6oR9Tb
	37GvLZMriFnV3zTHEfKDPPsBfdzfYXeFWaEzOKZaSWbnOBrdlPJfV85Oh5qo1biS58MHFt
	Dz0nbcptr2Vew38v8TPdOhwZ31ikotM=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=zgf4pZGH;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1604169659;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=hPRLEmURpsTwI9DPd6YtsFsou2pO89CCqQJuV2GAJeg=;
	b=HvIdMbqOoL7P1b+YItl5tIv+78AHgQHW6aDg0rBgXhDaVVhi5237S2KvEpMoPpU16b4LWm
	wRr8mJD6DaJ8GNJnYXe7XCzleocxONEHom9rnTgvr8fX/gCMyuyax2Nn4Z2OZG8TB36ECw
	ml5qwH+6fJWe5VWqVhPIBtjGPt+8F04=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: B5WTHLU4XD4OMSEAFBO2JCR6NVCNPIRN
X-Message-ID-Hash: B5WTHLU4XD4OMSEAFBO2JCR6NVCNPIRN
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/B5WTHLU4XD4OMSEAFBO2JCR6NVCNPIRN/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

The debugfs support is disabled by default in batman-adv since a while an=
d
will be removed in 2021. The generic netlink interface should be used
instead.

The batctl support for it should be removed with the same release as the
removal in batman-adv.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 Makefile          |   2 -
 README.rst        |  10 ++--
 backbonetable.c   |   2 -
 claimtable.c      |   2 -
 dat_cache.c       |   2 -
 debug.c           |  27 +--------
 debug.h           |  11 ----
 debugfs.c         | 140 ----------------------------------------------
 debugfs.h         |  25 ---------
 functions.c       | 130 +++---------------------------------------
 functions.h       |   3 +-
 gateways.c        |   2 -
 gw_mode.c         |   6 +-
 icmp_helper.c     |   1 -
 interface.c       |   3 +-
 loglevel.c        |   2 +-
 main.c            |   2 +-
 man/batctl.8      |   7 +--
 mcast_flags.c     |   2 -
 nc_nodes.c        |  18 ------
 neighbors.c       |   2 -
 originators.c     |   2 -
 routing_algo.c    |  20 +------
 sys.c             |   2 +-
 throughputmeter.c |   1 -
 transglobal.c     |   2 -
 translocal.c      |   2 -
 27 files changed, 25 insertions(+), 403 deletions(-)
 delete mode 100644 debugfs.c
 delete mode 100644 debugfs.h
 delete mode 100644 nc_nodes.c

diff --git a/Makefile b/Makefile
index 780c2c0..71fdf88 100755
--- a/Makefile
+++ b/Makefile
@@ -13,7 +13,6 @@ export CONFIG_BATCTL_BISECT=3Dn
 BINARY_NAME =3D batctl
=20
 obj-y +=3D bat-hosts.o
-obj-y +=3D debugfs.o
 obj-y +=3D debug.o
 obj-y +=3D functions.o
 obj-y +=3D genl.o
@@ -58,7 +57,6 @@ $(eval $(call add_command,mcast_flags,y))
 $(eval $(call add_command,multicast_fanout,y))
 $(eval $(call add_command,multicast_forceflood,y))
 $(eval $(call add_command,multicast_mode,y))
-$(eval $(call add_command,nc_nodes,y))
 $(eval $(call add_command,neighbors,y))
 $(eval $(call add_command,network_coding,y))
 $(eval $(call add_command,orig_interval,y))
diff --git a/README.rst b/README.rst
index 4830347..9c55ad5 100644
--- a/README.rst
+++ b/README.rst
@@ -18,11 +18,11 @@ settings.
 How does it work ?
 =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
=20
-batctl uses the debugfs/batman_adv/bat0/socket device provided by the B.=
A.T.M.A.N.
-advanced kernel module to inject custom icmp packets into the data flow.=
 That's why
-ping and traceroute work almost like their IP based counterparts. Tcpdum=
p was
-designed because B.A.T.M.A.N. advanced encapsulates all traffic within b=
atman
-packets, so that the normal tcpdump would not recognize the packets.
+batctl uses the raw packet sockets to inject custom icmp packets into th=
e data
+flow. That's why ping and traceroute work almost like their IP based
+counterparts. Tcpdump was designed because B.A.T.M.A.N. advanced encapsu=
lates
+all traffic within batman packets, so that the normal tcpdump would not
+recognize the packets.
=20
=20
 The bat-hosts file
diff --git a/backbonetable.c b/backbonetable.c
index 4774edf..84667c4 100644
--- a/backbonetable.c
+++ b/backbonetable.c
@@ -102,8 +102,6 @@ static int netlink_print_bla_backbone(struct state *s=
tate, char *orig_iface,
 }
=20
 static struct debug_table_data batctl_debug_table_backbonetable =3D {
-	.debugfs_name =3D DEBUG_BACKBONETABLE,
-	.header_lines =3D 2,
 	.netlink_fn =3D netlink_print_bla_backbone,
 };
=20
diff --git a/claimtable.c b/claimtable.c
index c4664d4..c41d9c3 100644
--- a/claimtable.c
+++ b/claimtable.c
@@ -107,8 +107,6 @@ static int netlink_print_bla_claim(struct state *stat=
e, char *orig_iface,
 }
=20
 static struct debug_table_data batctl_debug_table_claimtable =3D {
-	.debugfs_name =3D DEBUG_CLAIMTABLE,
-	.header_lines =3D 2,
 	.netlink_fn =3D netlink_print_bla_claim,
 };
=20
diff --git a/dat_cache.c b/dat_cache.c
index a2fee2a..1549c3d 100644
--- a/dat_cache.c
+++ b/dat_cache.c
@@ -123,8 +123,6 @@ static int netlink_print_dat_cache(struct state *stat=
e, char *orig_iface,
 }
=20
 static struct debug_table_data batctl_debug_table_dat_cache =3D {
-	.debugfs_name =3D DEBUG_DAT_CACHE,
-	.header_lines =3D 2,
 	.netlink_fn =3D netlink_print_dat_cache,
 };
=20
diff --git a/debug.c b/debug.c
index 66ddc3b..55520cb 100644
--- a/debug.c
+++ b/debug.c
@@ -13,7 +13,6 @@
 #include <errno.h>
=20
 #include "debug.h"
-#include "debugfs.h"
 #include "functions.h"
 #include "netlink.h"
 #include "sys.h"
@@ -47,8 +46,6 @@ int handle_debug_table(struct state *state, int argc, c=
har **argv)
 {
 	struct debug_table_data *debug_table =3D state->cmd->arg;
 	int optchar, read_opt =3D USE_BAT_HOSTS;
-	char full_path[MAX_PATH+1];
-	char *debugfs_mnt;
 	char *orig_iface =3D NULL;
 	float orig_timeout =3D 0.0f;
 	float watch_interval =3D 1;
@@ -147,25 +144,7 @@ int handle_debug_table(struct state *state, int argc=
, char **argv)
 		return EXIT_FAILURE;
 	}
=20
-	debugfs_mnt =3D debugfs_mount(NULL);
-	if (!debugfs_mnt) {
-		fprintf(stderr, "Error - can't mount or find debugfs\n");
-		return EXIT_FAILURE;
-	}
-
-	if (debug_table->netlink_fn) {
-		err =3D debug_table->netlink_fn(state , orig_iface, read_opt,
-					      orig_timeout, watch_interval);
-		if (err !=3D -EOPNOTSUPP)
-			return err;
-	}
-
-	if (orig_iface)
-		debugfs_make_path(DEBUG_BATIF_PATH_FMT "/", orig_iface, full_path, siz=
eof(full_path));
-	else
-		debugfs_make_path(DEBUG_BATIF_PATH_FMT "/", state->mesh_iface, full_pa=
th, sizeof(full_path));
-
-	return read_file(full_path, debug_table->debugfs_name,
-			 read_opt, orig_timeout, watch_interval,
-			 debug_table->header_lines);
+	err =3D debug_table->netlink_fn(state , orig_iface, read_opt,
+				      orig_timeout, watch_interval);
+	return err;
 }
diff --git a/debug.h b/debug.h
index 9d0bb92..f849d19 100644
--- a/debug.h
+++ b/debug.h
@@ -12,18 +12,7 @@
 #include <stddef.h>
 #include "main.h"
=20
-#define DEBUG_BATIF_PATH_FMT "%s/batman_adv/%s"
-#define DEBUG_TRANSTABLE_GLOBAL "transtable_global"
-#define DEBUG_BACKBONETABLE "bla_backbone_table"
-#define DEBUG_CLAIMTABLE "bla_claim_table"
-#define DEBUG_DAT_CACHE "dat_cache"
-#define DEBUG_NC_NODES "nc_nodes"
-#define DEBUG_MCAST_FLAGS "mcast_flags"
-#define DEBUG_ROUTING_ALGOS "routing_algos"
-
 struct debug_table_data {
-	const char *debugfs_name;
-	size_t header_lines;
 	int (*netlink_fn)(struct state *state, char *hard_iface, int read_opt,
 			 float orig_timeout, float watch_interval);
 	unsigned int option_unicast_only:1;
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
diff --git a/functions.c b/functions.c
index 3223472..651fb1d 100644
--- a/functions.c
+++ b/functions.c
@@ -43,7 +43,6 @@
 #include "bat-hosts.h"
 #include "sys.h"
 #include "debug.h"
-#include "debugfs.h"
 #include "netlink.h"
=20
 #define PATH_BUFF_LEN 400
@@ -140,14 +139,6 @@ static void file_open_problem_dbg(const char *dir, c=
onst char *full_path)
 	fprintf(stderr, "Consult the README if you wish to learn more about com=
piling options into batman-adv.\n");
 }
=20
-static int str_is_mcast_addr(char *addr)
-{
-	struct ether_addr *mac_addr =3D ether_aton(addr);
-
-	return !mac_addr ? 0 :
-		mac_addr->ether_addr_octet[0] & 0x01;
-}
-
 static bool ether_addr_valid(const uint8_t *addr)
 {
 	/* no multicast address */
@@ -171,67 +162,28 @@ static void print_inv_bool(char *line)
 		printf("%s", line);
 }
=20
-int read_file(const char *dir, const char *fname, int read_opt,
-	      float orig_timeout, float watch_interval, size_t header_lines)
+int read_file(const char *dir, const char *fname, int read_opt)
 {
-	struct ether_addr *mac_addr;
-	struct bat_host *bat_host;
 	int res =3D EXIT_FAILURE;
-	float last_seen;
-	char full_path[500], *buff_ptr, *space_ptr, extra_char;
+	char full_path[500];
 	size_t len =3D 0;
 	FILE *fp =3D NULL;
-	size_t line;
-
-	if (read_opt & USE_BAT_HOSTS)
-		bat_hosts_init(read_opt);
=20
 	snprintf(full_path, sizeof(full_path), "%s%s", dir, fname);
=20
-open:
-	line =3D 0;
 	fp =3D fopen(full_path, "r");
-
 	if (!fp) {
 		if (!(read_opt & SILENCE_ERRORS))
 			file_open_problem_dbg(dir, full_path);
=20
-		goto out;
+		return res;
 	}
=20
-	if (read_opt & CLR_CONT_READ)
-		/* clear screen, set cursor back to 0,0 */
-		printf("\033[2J\033[0;0f");
-
-read:
 	while (getline(&line_ptr, &len, fp) !=3D -1) {
-		if (line++ < header_lines && read_opt & SKIP_HEADER)
-			continue;
-
 		/* the buffer will be handled elsewhere */
 		if (read_opt & USE_READ_BUFF)
 			break;
=20
-		/* skip timed out originators */
-		if (read_opt & NO_OLD_ORIGS)
-			if (sscanf(line_ptr, "%*s %f", &last_seen)
-			    && (last_seen > orig_timeout))
-				continue;
-
-		/* translation table: skip multicast */
-		if (line > header_lines &&
-		    read_opt & UNICAST_ONLY &&
-		    strlen(line_ptr) > strlen(" * xx:xx:xx:") &&
-		    str_is_mcast_addr(line_ptr+3))
-			continue;
-
-		/* translation table: skip unicast */
-		if (line > header_lines &&
-		    read_opt & MULTICAST_ONLY &&
-		    strlen(line_ptr) > strlen(" * xx:xx:xx:") &&
-		    !str_is_mcast_addr(line_ptr+3))
-			continue;
-
 		if (!(read_opt & USE_BAT_HOSTS)) {
 			if (read_opt & INVERSE_BOOL)
 				print_inv_bool(line_ptr);
@@ -241,81 +193,13 @@ int read_file(const char *dir, const char *fname, i=
nt read_opt,
 			continue;
 		}
=20
-		/* replace mac addresses with bat host names */
-		buff_ptr =3D line_ptr;
-
-		while ((space_ptr =3D strchr(buff_ptr, ' ')) !=3D NULL) {
-
-			*space_ptr =3D '\0';
-			extra_char =3D '\0';
-
-			if (strlen(buff_ptr) =3D=3D ETH_STR_LEN + 1) {
-				extra_char =3D buff_ptr[ETH_STR_LEN];
-				switch (extra_char) {
-				case ',':
-				case ')':
-					buff_ptr[ETH_STR_LEN] =3D '\0';
-					break;
-				default:
-					extra_char =3D '\0';
-					break;
-				}
-			}
-
-			if (strlen(buff_ptr) !=3D ETH_STR_LEN)
-				goto print_plain_buff;
-
-			mac_addr =3D ether_aton(buff_ptr);
-
-			if (!mac_addr)
-				goto print_plain_buff;
-
-			bat_host =3D bat_hosts_find_by_mac((char *)mac_addr);
-
-			if (!bat_host)
-				goto print_plain_buff;
-
-			/* keep table format */
-			printf("%17s", bat_host->name);
-
-			goto written;
-
-print_plain_buff:
-			printf("%s", buff_ptr);
-
-written:
-			if (extra_char !=3D '\0')
-				printf("%c", extra_char);
-
-			printf(" ");
-			buff_ptr =3D space_ptr + 1;
-		}
-
-		printf("%s", buff_ptr);
-	}
-
-	if (read_opt & CONT_READ) {
-		usleep(1000000 * watch_interval);
-		goto read;
-	}
-
-	if (read_opt & CLR_CONT_READ) {
-		if (fp)
-			fclose(fp);
-		usleep(1000000 * watch_interval);
-		goto open;
+		printf("%s", line_ptr);
 	}
=20
 	if (line_ptr)
 		res =3D EXIT_SUCCESS;
=20
-out:
-	if (fp)
-		fclose(fp);
-
-	if (read_opt & USE_BAT_HOSTS)
-		bat_hosts_free();
-
+	fclose(fp);
 	return res;
 }
=20
@@ -391,7 +275,7 @@ int get_algoname(const char *mesh_iface, char *algona=
me, size_t algoname_len)
 	}
=20
 	snprintf(path_buff, PATH_BUFF_LEN, SYS_ROUTING_ALGO_FMT, mesh_iface);
-	ret =3D read_file("", path_buff, USE_READ_BUFF | SILENCE_ERRORS, 0, 0, =
0);
+	ret =3D read_file("", path_buff, USE_READ_BUFF | SILENCE_ERRORS);
 	if (ret !=3D EXIT_SUCCESS) {
 		ret =3D -ENOENT;
 		goto free_path_buf;
@@ -1129,7 +1013,7 @@ static int check_mesh_iface_ownership_sysfs(struct =
state *state,
=20
 	/* check if this device actually belongs to the mesh interface */
 	snprintf(path_buff, sizeof(path_buff), SYS_MESH_IFACE_FMT, hard_iface);
-	res =3D read_file("", path_buff, USE_READ_BUFF | SILENCE_ERRORS, 0, 0, =
0);
+	res =3D read_file("", path_buff, USE_READ_BUFF | SILENCE_ERRORS);
 	if (res !=3D EXIT_SUCCESS) {
 		fprintf(stderr, "Error - the directory '%s' could not be read: %s\n",
 			path_buff, strerror(errno));
diff --git a/functions.h b/functions.h
index b2180e8..f63c438 100644
--- a/functions.h
+++ b/functions.h
@@ -43,8 +43,7 @@ char *ether_ntoa_long(const struct ether_addr *addr);
 char *get_name_by_macaddr(struct ether_addr *mac_addr, int read_opt);
 char *get_name_by_macstr(char *mac_str, int read_opt);
 int file_exists(const char *fpath);
-int read_file(const char *dir, const char *path, int read_opt,
-	      float orig_timeout, float watch_interval, size_t header_lines);
+int read_file(const char *dir, const char *path, int read_opt);
 int write_file(const char *dir, const char *fname, const char *arg1,
 	       const char *arg2);
 struct ether_addr *translate_mac(const char *mesh_iface,
diff --git a/gateways.c b/gateways.c
index 2db4b17..31979a2 100644
--- a/gateways.c
+++ b/gateways.c
@@ -145,8 +145,6 @@ static int netlink_print_gateways(struct state *state=
, char *orig_iface,
 }
=20
 static struct debug_table_data batctl_debug_table_gateways =3D {
-	.debugfs_name =3D "gateways",
-	.header_lines =3D 1,
 	.netlink_fn =3D netlink_print_gateways,
 };
=20
diff --git a/gw_mode.c b/gw_mode.c
index beaa83f..72b5fbf 100644
--- a/gw_mode.c
+++ b/gw_mode.c
@@ -266,7 +266,7 @@ static int gw_read_setting(struct state *state, const=
 char *path_buff)
 		return EXIT_SUCCESS;
=20
 	/* fallback to sysfs */
-	res =3D read_file(path_buff, SYS_GW_MODE, USE_READ_BUFF, 0, 0, 0);
+	res =3D read_file(path_buff, SYS_GW_MODE, USE_READ_BUFF);
 	if (res !=3D EXIT_SUCCESS)
 		goto out;
=20
@@ -285,10 +285,10 @@ static int gw_read_setting(struct state *state, con=
st char *path_buff)
=20
 	switch (gw_mode) {
 	case BATADV_GW_MODE_CLIENT:
-		res =3D read_file(path_buff, SYS_GW_SEL, USE_READ_BUFF, 0, 0, 0);
+		res =3D read_file(path_buff, SYS_GW_SEL, USE_READ_BUFF);
 		break;
 	case BATADV_GW_MODE_SERVER:
-		res =3D read_file(path_buff, SYS_GW_BW, USE_READ_BUFF, 0, 0, 0);
+		res =3D read_file(path_buff, SYS_GW_BW, USE_READ_BUFF);
 		break;
 	default:
 		printf("off\n");
diff --git a/icmp_helper.c b/icmp_helper.c
index 0ce2d17..a167e2a 100644
--- a/icmp_helper.c
+++ b/icmp_helper.c
@@ -28,7 +28,6 @@
=20
 #include "batadv_packet.h"
 #include "debug.h"
-#include "debugfs.h"
 #include "functions.h"
 #include "list.h"
 #include "netlink.h"
diff --git a/interface.c b/interface.c
index d0d9435..34381de 100644
--- a/interface.c
+++ b/interface.c
@@ -168,8 +168,7 @@ static int print_interfaces_rtnl_parse(struct nl_msg =
*msg, void *arg)
 	if (!status) {
 		snprintf(path_buff, sizeof(path_buff), SYS_IFACE_STATUS_FMT,
 			 ifname);
-		ret =3D read_file("", path_buff, USE_READ_BUFF | SILENCE_ERRORS,
-				0, 0, 0);
+		ret =3D read_file("", path_buff, USE_READ_BUFF | SILENCE_ERRORS);
 		if (ret !=3D EXIT_SUCCESS)
 			status =3D "<error reading status>\n";
 		else
diff --git a/loglevel.c b/loglevel.c
index 69f1855..1e4b690 100644
--- a/loglevel.c
+++ b/loglevel.c
@@ -96,7 +96,7 @@ static int log_level_read_setting(struct state *state, =
const char *path_buff)
 	if (res >=3D 0)
 		return EXIT_SUCCESS;
=20
-	res =3D read_file(path_buff, SYS_LOG_LEVEL, USE_READ_BUFF, 0, 0, 0);
+	res =3D read_file(path_buff, SYS_LOG_LEVEL, USE_READ_BUFF);
 	if (res !=3D EXIT_SUCCESS)
 		return res;
=20
diff --git a/main.c b/main.c
index f6337d6..6ea589a 100644
--- a/main.c
+++ b/main.c
@@ -123,7 +123,7 @@ static void version(void)
=20
 	printf("batctl %s [batman-adv: ", SOURCE_VERSION);
=20
-	ret =3D read_file("", module_ver_path, USE_READ_BUFF | SILENCE_ERRORS, =
0, 0, 0);
+	ret =3D read_file("", module_ver_path, USE_READ_BUFF | SILENCE_ERRORS);
 	if ((line_ptr) && (line_ptr[strlen(line_ptr) - 1] =3D=3D '\n'))
 		line_ptr[strlen(line_ptr) - 1] =3D '\0';
=20
diff --git a/man/batctl.8 b/man/batctl.8
index 1737e17..012741c 100644
--- a/man/batctl.8
+++ b/man/batctl.8
@@ -241,9 +241,7 @@ Example 3: 16 or 0x0F
 .I \fBdebug tables:
 .IP
 The batman-adv kernel module comes with a variety of debug tables contai=
ning various information about the state of the mesh
-seen by each individual node. These tables are exported via debugfs and =
easily accessible via batctl. You will need debugfs
-support compiled into your kernel and preferably have mounted the debugf=
s to a well-known mountpoint. If debugfs is not
-mounted batctl will attempt to do this step for you.
+seen by each individual node.
=20
 All of the debug tables support the following options:
 .RS 10
@@ -290,9 +288,6 @@ List of debug tables:
 \- dat_cache|dc (compile time option)
 .RE
 .RS 10
-\- nc_nodes|nn (compile time option)
-.RE
-.RS 10
 \- mcast_flags|mf (compile time option)
 .RE
 .RE
diff --git a/mcast_flags.c b/mcast_flags.c
index 363b6e8..63a2c50 100644
--- a/mcast_flags.c
+++ b/mcast_flags.c
@@ -154,8 +154,6 @@ static int netlink_print_mcast_flags(struct state *st=
ate, char *orig_iface,
 }
=20
 static struct debug_table_data batctl_debug_table_mcast_flags =3D {
-	.debugfs_name =3D DEBUG_MCAST_FLAGS,
-	.header_lines =3D 6,
 	.netlink_fn =3D netlink_print_mcast_flags,
 };
=20
diff --git a/nc_nodes.c b/nc_nodes.c
deleted file mode 100644
index be4e804..0000000
--- a/nc_nodes.c
+++ /dev/null
@@ -1,18 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0
-/* Copyright (C) 2009-2020  B.A.T.M.A.N. contributors:
- *
- * Marek Lindner <mareklindner@neomailbox.ch>
- *
- * License-Filename: LICENSES/preferred/GPL-2.0
- */
-
-#include "debug.h"
-#include "main.h"
-
-static struct debug_table_data batctl_debug_table_nc_nodes =3D {
-	.debugfs_name =3D DEBUG_NC_NODES,
-	.header_lines =3D 0,
-};
-
-COMMAND_NAMED(DEBUGTABLE, nc_nodes, "nn", handle_debug_table,
-	      COMMAND_FLAG_MESH_IFACE, &batctl_debug_table_nc_nodes, "");
diff --git a/neighbors.c b/neighbors.c
index dc6913a..afc65de 100644
--- a/neighbors.c
+++ b/neighbors.c
@@ -118,8 +118,6 @@ static int netlink_print_neighbors(struct state *stat=
e, char *orig_iface,
 }
=20
 static struct debug_table_data batctl_debug_table_neighbors =3D {
-	.debugfs_name =3D "neighbors",
-	.header_lines =3D 2,
 	.netlink_fn =3D netlink_print_neighbors,
 };
=20
diff --git a/originators.c b/originators.c
index f9bf21d..793743a 100644
--- a/originators.c
+++ b/originators.c
@@ -196,8 +196,6 @@ static int netlink_print_originators(struct state *st=
ate, char *orig_iface,
 }
=20
 static struct debug_table_data batctl_debug_table_originators =3D {
-	.debugfs_name =3D "originators",
-	.header_lines =3D 2,
 	.netlink_fn =3D netlink_print_originators,
 	.option_timeout_interval =3D 1,
 	.option_orig_iface =3D 1,
diff --git a/routing_algo.c b/routing_algo.c
index 5fa360b..0f2e1bb 100644
--- a/routing_algo.c
+++ b/routing_algo.c
@@ -19,7 +19,6 @@
 #include "batadv_packet.h"
 #include "batman_adv.h"
 #include "debug.h"
-#include "debugfs.h"
 #include "functions.h"
 #include "main.h"
 #include "netlink.h"
@@ -133,28 +132,11 @@ static int netlink_print_routing_algos(void)
 	return last_err;
 }
=20
-static int debug_print_routing_algos(void)
-{
-	char full_path[MAX_PATH+1];
-	char *debugfs_mnt;
-
-	debugfs_mnt =3D debugfs_mount(NULL);
-	if (!debugfs_mnt) {
-		fprintf(stderr, "Error - can't mount or find debugfs\n");
-		return -1;
-	}
-
-	debugfs_make_path(DEBUG_BATIF_PATH_FMT, "", full_path, sizeof(full_path=
));
-	return read_file(full_path, DEBUG_ROUTING_ALGOS, 0, 0, 0, 0);
-}
-
 static int print_routing_algos(void)
 {
 	int err;
=20
 	err =3D netlink_print_routing_algos();
-	if (err =3D=3D -EOPNOTSUPP)
-		err =3D debug_print_routing_algos();
 	return err;
 }
=20
@@ -303,7 +285,7 @@ static int routing_algo(struct state *state __maybe_u=
nused, int argc, char **arg
=20
 	print_ra_interfaces();
=20
-	res =3D read_file("", SYS_SELECTED_RA_PATH, USE_READ_BUFF, 0, 0, 0);
+	res =3D read_file("", SYS_SELECTED_RA_PATH, USE_READ_BUFF);
 	if (res !=3D EXIT_SUCCESS)
 		return EXIT_FAILURE;
=20
diff --git a/sys.c b/sys.c
index c76ad15..7668a72 100644
--- a/sys.c
+++ b/sys.c
@@ -208,7 +208,7 @@ static int sys_read_setting(struct state *state, cons=
t char *path_buff,
 		if (state->cmd->flags & COMMAND_FLAG_INVERSE)
 			read_opt |=3D INVERSE_BOOL;
=20
-		res =3D read_file(path_buff, sysfs_name, read_opt, 0, 0, 0);
+		res =3D read_file(path_buff, sysfs_name, read_opt);
 	}
=20
 	return res;
diff --git a/throughputmeter.c b/throughputmeter.c
index 0ec5c31..4a233d5 100644
--- a/throughputmeter.c
+++ b/throughputmeter.c
@@ -32,7 +32,6 @@
 #include "functions.h"
 #include "genl.h"
 #include "netlink.h"
-#include "debugfs.h"
=20
 static struct ether_addr *dst_mac;
 static char *tp_mesh_iface;
diff --git a/transglobal.c b/transglobal.c
index 3b23792..5aede41 100644
--- a/transglobal.c
+++ b/transglobal.c
@@ -136,8 +136,6 @@ static int netlink_print_transglobal(struct state *st=
ate, char *orig_iface,
 }
=20
 static struct debug_table_data batctl_debug_table_transglobal =3D {
-	.debugfs_name =3D "transtable_global",
-	.header_lines =3D 2,
 	.netlink_fn =3D netlink_print_transglobal,
 	.option_unicast_only =3D 1,
 	.option_multicast_only =3D 1,
diff --git a/translocal.c b/translocal.c
index 59c00c2..45e884c 100644
--- a/translocal.c
+++ b/translocal.c
@@ -132,8 +132,6 @@ static int netlink_print_translocal(struct state *sta=
te, char *orig_iface,
 }
=20
 static struct debug_table_data batctl_debug_table_translocal =3D {
-	.debugfs_name =3D "transtable_local",
-	.header_lines =3D 2,
 	.netlink_fn =3D netlink_print_translocal,
 	.option_unicast_only =3D 1,
 	.option_multicast_only =3D 1,
--=20
2.28.0
