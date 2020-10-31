Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id A64D82A19B7
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 31 Oct 2020 19:41:10 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 1774080781;
	Sat, 31 Oct 2020 19:41:10 +0100 (CET)
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id AC72A80F6A
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 31 Oct 2020 19:41:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1604169662;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=PwM/wzMy/0LBLyt5LFSAfj0cRWdoyO8k52qT3o2HEXY=;
	b=VZQV3zZ+Iv1ir4mG4P45+O48ayIWmJnM42X8X1jACaSF1V1UvEIL10hyHnssYzqRCW4feM
	LyXSW6ie6Fqm2lWP2dYJ3NQcrR2BfeUhLKQbqAfjDqHUi+/dsrtse3R8MsSNpGwNZuy7Xv
	8z5/x8OpwyauUv0X49JTZzsAYQ+8mzc=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
Subject: [PATCH 3/3] batctl: Drop deprecated sysfs support
Date: Sat, 31 Oct 2020 19:40:50 +0100
Message-Id: <20201031184051.118630-3-sven@narfation.org>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201031184051.118630-1-sven@narfation.org>
References: <20201031184051.118630-1-sven@narfation.org>
MIME-Version: 1.0
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1604169662; a=rsa-sha256;
	cv=none;
	b=jBuJGe1Wg1i9nFlZGRXrbTkcD2OcMZlkKu1hmXSnoPXZkWMxvl5FEJHR4AKJFHJItA756v
	3d1mjPxzyX+Ch6arIuqiqMpSwxPDgvS3gKGvVA4Ht16ZQTsYzQst3EhxVRtgRr6aZLD5zL
	h0TPRddCZL9YTfBuKTXLA9xRINePC4w=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=VZQV3zZ+;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1604169662;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=PwM/wzMy/0LBLyt5LFSAfj0cRWdoyO8k52qT3o2HEXY=;
	b=DsTSXUto12q5A6dVXikQ7lkDN93x+hYYYmcl33E0zBMzD391uym+umAoEEsCE6qKnNcdVT
	ZV8zifWViqIdRyzHlYGowJmCT4FmpxZo2p6NKxiuLnii7s9Cww7zUuQbWMcR1MqKpNgqGU
	rjT88swiT8Xqi5yCD6WWRq8VpB/pqsc=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: 2MUWXHENSKLUL5NMT2JDAWV67IJ4AHL5
X-Message-ID-Hash: 2MUWXHENSKLUL5NMT2JDAWV67IJ4AHL5
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/2MUWXHENSKLUL5NMT2JDAWV67IJ4AHL5/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

The sysfs support is disabled by default in batman-adv since a while and
will be removed in 2021. The generic netlink interface should be used
instead.

The batctl support for it should be removed with the same release as the
removal in batman-adv.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 aggregation.c           |   1 -
 ap_isolation.c          |   1 -
 bonding.c               |   1 -
 bridge_loop_avoidance.c |   1 -
 distributed_arp_table.c |   1 -
 elp_interval.c          |   1 -
 fragmentation.c         |   1 -
 functions.c             | 183 ++--------------------------------------
 functions.h             |   5 +-
 gw_mode.c               | 111 +++---------------------
 hop_penalty.c           |   2 -
 interface.c             |  15 +---
 isolation_mark.c        |   1 -
 loglevel.c              |  44 +++-------
 main.c                  |   7 +-
 multicast_fanout.c      |   1 -
 multicast_forceflood.c  |   1 -
 multicast_mode.c        |   1 -
 network_coding.c        |   1 -
 orig_interval.c         |   1 -
 routing_algo.c          |  38 ++++++---
 sys.c                   |  90 +++-----------------
 sys.h                   |   9 --
 throughput_override.c   |   1 -
 24 files changed, 71 insertions(+), 447 deletions(-)

diff --git a/aggregation.c b/aggregation.c
index 11327d3..5d06471 100644
--- a/aggregation.c
+++ b/aggregation.c
@@ -48,7 +48,6 @@ static int set_aggregated_ogms(struct state *state)
 }
=20
 static struct settings_data batctl_settings_aggregation =3D {
-	.sysfs_name =3D "aggregated_ogms",
 	.data =3D &aggregated_ogms,
 	.parse =3D parse_simple_boolean,
 	.netlink_get =3D get_aggregated_ogms,
diff --git a/ap_isolation.c b/ap_isolation.c
index df19072..80627e6 100644
--- a/ap_isolation.c
+++ b/ap_isolation.c
@@ -70,7 +70,6 @@ static int set_ap_isolation(struct state *state)
 }
=20
 static struct settings_data batctl_settings_ap_isolation =3D {
-	.sysfs_name =3D "ap_isolation",
 	.data =3D &ap_isolation,
 	.parse =3D parse_simple_boolean,
 	.netlink_get =3D get_ap_isolation,
diff --git a/bonding.c b/bonding.c
index db0782c..ee4d314 100644
--- a/bonding.c
+++ b/bonding.c
@@ -47,7 +47,6 @@ static int set_bonding(struct state *state)
 }
=20
 static struct settings_data batctl_settings_bonding =3D {
-	.sysfs_name =3D "bonding",
 	.data =3D &bonding,
 	.parse =3D parse_simple_boolean,
 	.netlink_get =3D get_bonding,
diff --git a/bridge_loop_avoidance.c b/bridge_loop_avoidance.c
index 6572f6a..3525a3e 100644
--- a/bridge_loop_avoidance.c
+++ b/bridge_loop_avoidance.c
@@ -48,7 +48,6 @@ static int set_bridge_loop_avoidance(struct state *stat=
e)
 }
=20
 static struct settings_data batctl_settings_bridge_loop_avoidance =3D {
-	.sysfs_name =3D "bridge_loop_avoidance",
 	.data =3D &bridge_loop_avoidance,
 	.parse =3D parse_simple_boolean,
 	.netlink_get =3D get_bridge_loop_avoidance,
diff --git a/distributed_arp_table.c b/distributed_arp_table.c
index 4e244ef..1bccba1 100644
--- a/distributed_arp_table.c
+++ b/distributed_arp_table.c
@@ -48,7 +48,6 @@ static int set_distributed_arp_table(struct state *stat=
e)
 }
=20
 static struct settings_data batctl_settings_distributed_arp_table =3D {
-	.sysfs_name =3D "distributed_arp_table",
 	.data =3D &distributed_arp_table,
 	.parse =3D parse_simple_boolean,
 	.netlink_get =3D get_distributed_arp_table,
diff --git a/elp_interval.c b/elp_interval.c
index f551b1f..f4312e7 100644
--- a/elp_interval.c
+++ b/elp_interval.c
@@ -98,7 +98,6 @@ static int set_elp_interval(struct state *state)
 }
=20
 static struct settings_data batctl_settings_elp_interval =3D {
-	.sysfs_name =3D "elp_interval",
 	.data =3D &elp_interval,
 	.parse =3D parse_elp_interval,
 	.netlink_get =3D get_elp_interval,
diff --git a/fragmentation.c b/fragmentation.c
index a8cb1e6..65e4356 100644
--- a/fragmentation.c
+++ b/fragmentation.c
@@ -48,7 +48,6 @@ static int set_fragmentation(struct state *state)
 }
=20
 static struct settings_data batctl_settings_fragmentation =3D {
-	.sysfs_name =3D "fragmentation",
 	.data =3D &fragmentation,
 	.parse =3D parse_simple_boolean,
 	.netlink_get =3D get_fragmentation,
diff --git a/functions.c b/functions.c
index 651fb1d..4df1815 100644
--- a/functions.c
+++ b/functions.c
@@ -117,18 +117,8 @@ int file_exists(const char *fpath)
 	return stat(fpath, &st) =3D=3D 0;
 }
=20
-static void file_open_problem_dbg(const char *dir, const char *full_path=
)
+static void file_open_problem_dbg(const char *full_path)
 {
-	struct stat st;
-
-	if (strstr(dir, "/sys/")) {
-		if (stat("/sys/", &st) !=3D 0) {
-			fprintf(stderr, "Error - the folder '/sys/' was not found on the syst=
em\n");
-			fprintf(stderr, "Please make sure that the sys filesystem is properly=
 mounted\n");
-			return;
-		}
-	}
-
 	if (!file_exists(module_ver_path)) {
 		fprintf(stderr, "Error - batman-adv module has not been loaded\n");
 		return;
@@ -152,29 +142,16 @@ static bool ether_addr_valid(const uint8_t *addr)
 	return true;
 }
=20
-static void print_inv_bool(char *line)
-{
-	if (!strncmp("enabled", line, strlen("enabled")))
-		printf("disabled\n");
-	else if (!strncmp("disabled", line, strlen("disabled")))
-		printf("enabled\n");
-	else
-		printf("%s", line);
-}
-
-int read_file(const char *dir, const char *fname, int read_opt)
+int read_file(const char *full_path, int read_opt)
 {
 	int res =3D EXIT_FAILURE;
-	char full_path[500];
 	size_t len =3D 0;
 	FILE *fp =3D NULL;
=20
-	snprintf(full_path, sizeof(full_path), "%s%s", dir, fname);
-
 	fp =3D fopen(full_path, "r");
 	if (!fp) {
 		if (!(read_opt & SILENCE_ERRORS))
-			file_open_problem_dbg(dir, full_path);
+			file_open_problem_dbg(full_path);
=20
 		return res;
 	}
@@ -184,15 +161,6 @@ int read_file(const char *dir, const char *fname, in=
t read_opt)
 		if (read_opt & USE_READ_BUFF)
 			break;
=20
-		if (!(read_opt & USE_BAT_HOSTS)) {
-			if (read_opt & INVERSE_BOOL)
-				print_inv_bool(line_ptr);
-			else
-				printf("%s", line_ptr);
-
-			continue;
-		}
-
 		printf("%s", line_ptr);
 	}
=20
@@ -203,40 +171,6 @@ int read_file(const char *dir, const char *fname, in=
t read_opt)
 	return res;
 }
=20
-int write_file(const char *dir, const char *fname, const char *arg1,
-	       const char *arg2)
-{
-	int fd =3D -1, res =3D EXIT_FAILURE;
-	char full_path[500];
-	ssize_t write_len;
-
-	snprintf(full_path, sizeof(full_path), "%s%s", dir, fname);
-
-	fd =3D open(full_path, O_WRONLY);
-
-	if (fd < 0) {
-		file_open_problem_dbg(dir, full_path);
-		goto out;
-	}
-
-	if (arg2)
-		write_len =3D dprintf(fd, "%s %s", arg1, arg2);
-	else
-		write_len =3D write(fd, arg1, strlen(arg1) + 1);
-
-	if (write_len < 0) {
-		fprintf(stderr, "Error - can't write to file '%s': %s\n", full_path, s=
trerror(errno));
-		goto out;
-	}
-
-	res =3D EXIT_SUCCESS;
-
-out:
-	if (fd >=3D 0)
-		close(fd);
-	return res;
-}
-
 struct ether_addr *translate_mac(const char *mesh_iface,
 				 const struct ether_addr *mac)
 {
@@ -261,40 +195,7 @@ struct ether_addr *translate_mac(const char *mesh_if=
ace,
=20
 int get_algoname(const char *mesh_iface, char *algoname, size_t algoname=
_len)
 {
-	char *path_buff;
-	int ret;
-
-	ret =3D get_algoname_netlink(mesh_iface, algoname, algoname_len);
-	if (ret !=3D -EOPNOTSUPP)
-		return ret;
-
-	path_buff =3D malloc(PATH_BUFF_LEN);
-	if (!path_buff) {
-		fprintf(stderr, "Error - could not allocate path buffer: out of memory=
 ?\n");
-		return -ENOMEM;
-	}
-
-	snprintf(path_buff, PATH_BUFF_LEN, SYS_ROUTING_ALGO_FMT, mesh_iface);
-	ret =3D read_file("", path_buff, USE_READ_BUFF | SILENCE_ERRORS);
-	if (ret !=3D EXIT_SUCCESS) {
-		ret =3D -ENOENT;
-		goto free_path_buf;
-	}
-
-	if (line_ptr[strlen(line_ptr) - 1] =3D=3D '\n')
-		line_ptr[strlen(line_ptr) - 1] =3D '\0';
-
-	strncpy(algoname, line_ptr, algoname_len);
-	if (algoname_len > 0)
-		algoname[algoname_len - 1] =3D '\0';
-
-free_path_buf:
-	free(path_buff);
-
-	free(line_ptr);
-	line_ptr =3D NULL;
-
-	return ret;
+	return get_algoname_netlink(mesh_iface, algoname, algoname_len);
 }
=20
 static int resolve_l3addr(int ai_family, const char *asc, void *l3addr)
@@ -948,45 +849,16 @@ int guess_netdev_type(const char *netdev, enum sele=
ctor_prefix *type)
 	return -EINVAL;
 }
=20
-static int check_mesh_iface_sysfs(struct state *state)
-{
-	char path_buff[PATH_BUFF_LEN];
-	DIR *dir;
-
-	/* try to open the mesh sys directory */
-	snprintf(path_buff, PATH_BUFF_LEN, SYS_BATIF_PATH_FMT,
-		 state->mesh_iface);
-
-	dir =3D opendir(path_buff);
-	if (!dir)
-		return -1;
-
-	closedir(dir);
-
-	return 0;
-}
-
 int check_mesh_iface(struct state *state)
 {
-	int ret;
-
 	state->mesh_ifindex =3D if_nametoindex(state->mesh_iface);
 	if (state->mesh_ifindex =3D=3D 0)
 		return -1;
=20
-	ret =3D check_mesh_iface_netlink(state->mesh_ifindex);
-	if (ret =3D=3D 0)
-		return ret;
-
-	ret =3D check_mesh_iface_sysfs(state);
-	if (ret =3D=3D 0)
-		return ret;
-
-	return -1;
+	return check_mesh_iface_netlink(state->mesh_ifindex);
 }
=20
-static int check_mesh_iface_ownership_netlink(struct state *state,
-					      char *hard_iface)
+int check_mesh_iface_ownership(struct state *state, char *hard_iface)
 {
 	struct rtnl_link_iface_data link_data;
 	unsigned int hardif_index;
@@ -1005,49 +877,6 @@ static int check_mesh_iface_ownership_netlink(struc=
t state *state,
 	return EXIT_SUCCESS;
 }
=20
-static int check_mesh_iface_ownership_sysfs(struct state *state,
-					    char *hard_iface)
-{
-	char path_buff[PATH_BUFF_LEN];
-	int res;
-
-	/* check if this device actually belongs to the mesh interface */
-	snprintf(path_buff, sizeof(path_buff), SYS_MESH_IFACE_FMT, hard_iface);
-	res =3D read_file("", path_buff, USE_READ_BUFF | SILENCE_ERRORS);
-	if (res !=3D EXIT_SUCCESS) {
-		fprintf(stderr, "Error - the directory '%s' could not be read: %s\n",
-			path_buff, strerror(errno));
-		fprintf(stderr, "Is the batman-adv module loaded and sysfs mounted ?\n=
");
-		return EXIT_FAILURE;
-	}
-
-	if (line_ptr[strlen(line_ptr) - 1] =3D=3D '\n')
-		line_ptr[strlen(line_ptr) - 1] =3D '\0';
-
-	if (strcmp(line_ptr, state->mesh_iface) !=3D 0) {
-		fprintf(stderr, "Error - interface %s is part of batman network %s, no=
t %s\n",
-			hard_iface, line_ptr, state->mesh_iface);
-		return EXIT_FAILURE;
-	}
-
-	return EXIT_SUCCESS;
-}
-
-int check_mesh_iface_ownership(struct state *state, char *hard_iface)
-{
-	int ret;
-
-	ret =3D check_mesh_iface_ownership_netlink(state, hard_iface);
-	if (ret =3D=3D EXIT_SUCCESS)
-		return EXIT_SUCCESS;
-
-	ret =3D check_mesh_iface_ownership_sysfs(state, hard_iface);
-	if (ret =3D=3D EXIT_SUCCESS)
-		return ret;
-
-	return EXIT_FAILURE;
-}
-
 static int get_random_bytes_syscall(void *buf __maybe_unused,
 				    size_t buflen __maybe_unused)
 {
diff --git a/functions.h b/functions.h
index f63c438..923e593 100644
--- a/functions.h
+++ b/functions.h
@@ -43,9 +43,7 @@ char *ether_ntoa_long(const struct ether_addr *addr);
 char *get_name_by_macaddr(struct ether_addr *mac_addr, int read_opt);
 char *get_name_by_macstr(char *mac_str, int read_opt);
 int file_exists(const char *fpath);
-int read_file(const char *dir, const char *path, int read_opt);
-int write_file(const char *dir, const char *fname, const char *arg1,
-	       const char *arg2);
+int read_file(const char *full_path, int read_opt);
 struct ether_addr *translate_mac(const char *mesh_iface,
 				 const struct ether_addr *mac);
 struct ether_addr *resolve_mac(const char *asc);
@@ -81,7 +79,6 @@ enum {
 	SKIP_HEADER =3D 0x100,
 	UNICAST_ONLY =3D 0x200,
 	MULTICAST_ONLY =3D 0x400,
-	INVERSE_BOOL =3D 0x800,
 };
=20
 #endif
diff --git a/gw_mode.c b/gw_mode.c
index 72b5fbf..e48b78d 100644
--- a/gw_mode.c
+++ b/gw_mode.c
@@ -254,105 +254,31 @@ static int set_gw(struct state *state)
 				  NULL);
 }
=20
-static int gw_read_setting(struct state *state, const char *path_buff)
+static int gw_read_setting(struct state *state)
 {
-	enum batadv_gw_modes gw_mode;
 	int res;
=20
 	res =3D get_gw(state);
-	if (res < 0 && res !=3D -EOPNOTSUPP)
+	if (res < 0)
 		return EXIT_FAILURE;
-	if (res >=3D 0)
-		return EXIT_SUCCESS;
-
-	/* fallback to sysfs */
-	res =3D read_file(path_buff, SYS_GW_MODE, USE_READ_BUFF);
-	if (res !=3D EXIT_SUCCESS)
-		goto out;
-
-	if (line_ptr[strlen(line_ptr) - 1] =3D=3D '\n')
-		line_ptr[strlen(line_ptr) - 1] =3D '\0';
-
-	if (strcmp(line_ptr, "client") =3D=3D 0)
-		gw_mode =3D BATADV_GW_MODE_CLIENT;
-	else if (strcmp(line_ptr, "server") =3D=3D 0)
-		gw_mode =3D BATADV_GW_MODE_SERVER;
 	else
-		gw_mode =3D BATADV_GW_MODE_OFF;
-
-	free(line_ptr);
-	line_ptr =3D NULL;
-
-	switch (gw_mode) {
-	case BATADV_GW_MODE_CLIENT:
-		res =3D read_file(path_buff, SYS_GW_SEL, USE_READ_BUFF);
-		break;
-	case BATADV_GW_MODE_SERVER:
-		res =3D read_file(path_buff, SYS_GW_BW, USE_READ_BUFF);
-		break;
-	default:
-		printf("off\n");
-		goto out;
-	}
-
-	if (res !=3D EXIT_SUCCESS)
-		goto out;
-
-	if (line_ptr[strlen(line_ptr) - 1] =3D=3D '\n')
-		line_ptr[strlen(line_ptr) - 1] =3D '\0';
-
-	switch (gw_mode) {
-	case BATADV_GW_MODE_CLIENT:
-		printf("client (selection class: %s)\n", line_ptr);
-		break;
-	case BATADV_GW_MODE_SERVER:
-		printf("server (announced bw: %s)\n", line_ptr);
-		break;
-	default:
-		goto out;
-	}
-
-out:
-	free(line_ptr);
-	line_ptr =3D NULL;
-
-	return res;
+		return EXIT_SUCCESS;
 }
=20
-static int gw_write_setting(struct state *state, const char *path_buff,
-			    int argc, char *argv[])
+static int gw_write_setting(struct state *state)
 {
 	int res =3D EXIT_FAILURE;
=20
 	res =3D set_gw(state);
-	if (res < 0 && res !=3D -EOPNOTSUPP)
+	if (res < 0)
 		return EXIT_FAILURE;
-	if (res >=3D 0)
+	else
 		return EXIT_SUCCESS;
-
-	/* sysfs fallback */
-	res =3D write_file(path_buff, SYS_GW_MODE, argv[1], NULL);
-	if (res !=3D EXIT_SUCCESS)
-		return res;
-
-	if (argc > 2) {
-		switch (gw_globals.mode) {
-		case BATADV_GW_MODE_CLIENT:
-			res =3D write_file(path_buff, SYS_GW_SEL, argv[2], NULL);
-			break;
-		case BATADV_GW_MODE_SERVER:
-			res =3D write_file(path_buff, SYS_GW_BW, argv[2], NULL);
-			break;
-		}
-	}
-
-	return res;
 }
=20
 static int gw_mode(struct state *state, int argc, char **argv)
 {
 	int optchar, res =3D EXIT_FAILURE;
-	char *path_buff;
=20
 	while ((optchar =3D getopt(argc, argv, "h")) !=3D -1) {
 		switch (optchar) {
@@ -365,31 +291,16 @@ static int gw_mode(struct state *state, int argc, c=
har **argv)
 		}
 	}
=20
-	path_buff =3D malloc(PATH_BUFF_LEN);
-	if (!path_buff) {
-		fprintf(stderr, "Error - could not allocate path buffer: out of memory=
 ?\n");
-		return EXIT_FAILURE;
-	}
-
-	snprintf(path_buff, PATH_BUFF_LEN, SYS_BATIF_PATH_FMT, state->mesh_ifac=
e);
-
-	if (argc =3D=3D 1) {
-		res =3D gw_read_setting(state, path_buff);
-		goto out;
-	}
+	if (argc =3D=3D 1)
+		return gw_read_setting(state);
=20
 	check_root_or_die("batctl gw_mode");
=20
 	res =3D parse_gw(state, argc, argv);
-	if (res < 0) {
-		res =3D EXIT_FAILURE;
-		goto out;
-	}
+	if (res < 0)
+		return EXIT_FAILURE;
=20
-	res =3D gw_write_setting(state, path_buff, argc, argv);
-out:
-	free(path_buff);
-	return res;
+	return gw_write_setting(state);
 }
=20
 COMMAND(SUBCOMMAND_MIF, gw_mode, "gw",
diff --git a/hop_penalty.c b/hop_penalty.c
index 5f1aabc..7430381 100644
--- a/hop_penalty.c
+++ b/hop_penalty.c
@@ -122,7 +122,6 @@ static int set_hop_penalty_if(struct state *state)
 }
=20
 static struct settings_data batctl_settings_hop_penalty =3D {
-	.sysfs_name =3D "hop_penalty",
 	.data =3D &hop_penalty,
 	.parse =3D parse_hop_penalty,
 	.netlink_get =3D get_hop_penalty,
@@ -130,7 +129,6 @@ static struct settings_data batctl_settings_hop_penal=
ty =3D {
 };
=20
 static struct settings_data batctl_settings_hop_penalty_if =3D {
-	.sysfs_name =3D NULL,
 	.data =3D &hop_penalty,
 	.parse =3D parse_hop_penalty,
 	.netlink_get =3D get_hop_penalty_if,
diff --git a/interface.c b/interface.c
index 34381de..8775c59 100644
--- a/interface.c
+++ b/interface.c
@@ -138,7 +138,6 @@ static int print_interfaces_rtnl_parse(struct nl_msg =
*msg, void *arg)
 	struct print_interfaces_rtnl_arg *print_arg =3D arg;
 	char iface_status[IFACE_STATUS_LEN];
 	struct nlattr *attrs[IFLA_MAX + 1];
-	char path_buff[PATH_BUFF_LEN];
 	struct ifinfomsg *ifm;
 	char *ifname;
 	int ret;
@@ -165,21 +164,11 @@ static int print_interfaces_rtnl_parse(struct nl_ms=
g *msg, void *arg)
 		goto err;
=20
 	status =3D get_iface_status_netlink(master, ifm->ifi_index, iface_statu=
s);
-	if (!status) {
-		snprintf(path_buff, sizeof(path_buff), SYS_IFACE_STATUS_FMT,
-			 ifname);
-		ret =3D read_file("", path_buff, USE_READ_BUFF | SILENCE_ERRORS);
-		if (ret !=3D EXIT_SUCCESS)
-			status =3D "<error reading status>\n";
-		else
-			status =3D line_ptr;
-	}
+	if (!status)
+		status =3D "<error reading status>\n";
=20
 	printf("%s: %s", ifname, status);
=20
-	free(line_ptr);
-	line_ptr =3D NULL;
-
 err:
 	return NL_OK;
 }
diff --git a/isolation_mark.c b/isolation_mark.c
index 0865de3..b0048f3 100644
--- a/isolation_mark.c
+++ b/isolation_mark.c
@@ -127,7 +127,6 @@ static int set_isolation_mark(struct state *state)
 }
=20
 static struct settings_data batctl_settings_isolation_mark =3D {
-	.sysfs_name =3D "isolation_mark",
 	.data =3D &isolation_mark,
 	.parse =3D parse_isolation_mark,
 	.netlink_get =3D get_isolation_mark,
diff --git a/loglevel.c b/loglevel.c
index 1e4b690..af7349d 100644
--- a/loglevel.c
+++ b/loglevel.c
@@ -86,44 +86,31 @@ static int set_log_level(struct state *state)
 				  set_attrs_log_level, NULL);
 }
=20
-static int log_level_read_setting(struct state *state, const char *path_=
buff)
+static int log_level_read_setting(struct state *state)
 {
 	int res;
=20
 	res =3D get_log_level(state);
-	if (res < 0 && res !=3D -EOPNOTSUPP)
+	if (res < 0)
 		return EXIT_FAILURE;
-	if (res >=3D 0)
+	else
 		return EXIT_SUCCESS;
-
-	res =3D read_file(path_buff, SYS_LOG_LEVEL, USE_READ_BUFF);
-	if (res !=3D EXIT_SUCCESS)
-		return res;
-
-	log_level_globals.log_level =3D strtol(line_ptr, (char **) NULL, 10);
-
-	return res;
 }
=20
-static int log_level_write_setting(struct state *state, const char *path=
_buff)
+static int log_level_write_setting(struct state *state)
 {
 	int res;
-	char str[4];
=20
 	res =3D set_log_level(state);
-	if (res < 0 && res !=3D -EOPNOTSUPP)
+	if (res < 0)
 		return EXIT_FAILURE;
-	if (res >=3D 0)
+	else
 		return EXIT_SUCCESS;
-
-	snprintf(str, sizeof(str), "%i", log_level_globals.log_level);
-	return write_file(path_buff, SYS_LOG_LEVEL, str, NULL);
 }
=20
 static int loglevel(struct state *state, int argc, char **argv)
 {
 	int optchar, res =3D EXIT_FAILURE;
-	char *path_buff;
 	int i;
=20
 	log_level_globals.log_level =3D 0;
@@ -139,14 +126,6 @@ static int loglevel(struct state *state, int argc, c=
har **argv)
 		}
 	}
=20
-	path_buff =3D malloc(PATH_BUFF_LEN);
-	if (!path_buff) {
-		fprintf(stderr, "Error - could not allocate path buffer: out of memory=
 ?\n");
-		return EXIT_FAILURE;
-	}
-
-	snprintf(path_buff, PATH_BUFF_LEN, SYS_BATIF_PATH_FMT, state->mesh_ifac=
e);
-
 	if (argc !=3D 1) {
 		check_root_or_die("batctl loglevel");
=20
@@ -175,17 +154,16 @@ static int loglevel(struct state *state, int argc, =
char **argv)
 				log_level_globals.log_level |=3D BIT(7);
 			else {
 				log_level_usage();
-				goto out;
+				return EXIT_FAILURE;
 			}
 		}
=20
-		log_level_write_setting(state, path_buff);
-		goto out;
+		return log_level_write_setting(state);
 	}
=20
-	res =3D log_level_read_setting(state, path_buff);
+	res =3D log_level_read_setting(state);
 	if (res !=3D EXIT_SUCCESS)
-		goto out;
+		return res;
=20
 	printf("[%c] %s (%s)\n", (!log_level_globals.log_level) ? 'x' : ' ',
 	       "all debug output disabled", "none");
@@ -207,8 +185,6 @@ static int loglevel(struct state *state, int argc, ch=
ar **argv)
 	printf("[%c] %s (%s)\n", (log_level_globals.log_level & BIT(7)) ? 'x' :=
 ' ',
 	       "messages related to throughput meter", "tp");
=20
-out:
-	free(path_buff);
 	return res;
 }
=20
diff --git a/main.c b/main.c
index 6ea589a..54be6fb 100644
--- a/main.c
+++ b/main.c
@@ -123,7 +123,7 @@ static void version(void)
=20
 	printf("batctl %s [batman-adv: ", SOURCE_VERSION);
=20
-	ret =3D read_file("", module_ver_path, USE_READ_BUFF | SILENCE_ERRORS);
+	ret =3D read_file(module_ver_path, USE_READ_BUFF | SILENCE_ERRORS);
 	if ((line_ptr) && (line_ptr[strlen(line_ptr) - 1] =3D=3D '\n'))
 		line_ptr[strlen(line_ptr) - 1] =3D '\0';
=20
@@ -397,10 +397,7 @@ int main(int argc, char **argv)
=20
 	if (cmd->flags & COMMAND_FLAG_NETLINK) {
 		ret =3D netlink_create(&state);
-		if (ret < 0 && ret !=3D -EOPNOTSUPP) {
-			/* TODO handle -EOPNOTSUPP as error when fallbacks were
-			 * removed
-			 */
+		if (ret < 0) {
 			fprintf(stderr,
 				"Error - failed to connect to batadv\n");
 			exit(EXIT_FAILURE);
diff --git a/multicast_fanout.c b/multicast_fanout.c
index dcc4fc6..b43ff10 100644
--- a/multicast_fanout.c
+++ b/multicast_fanout.c
@@ -88,7 +88,6 @@ static int set_multicast_fanout(struct state *state)
 }
=20
 static struct settings_data batctl_settings_multicast_fanout =3D {
-	.sysfs_name =3D NULL,
 	.data =3D &multicast_fanout,
 	.parse =3D parse_multicast_fanout,
 	.netlink_get =3D get_multicast_fanout,
diff --git a/multicast_forceflood.c b/multicast_forceflood.c
index a33149f..e02ab9d 100644
--- a/multicast_forceflood.c
+++ b/multicast_forceflood.c
@@ -68,7 +68,6 @@ static int set_multicast_forceflood(struct state *state=
)
 }
=20
 static struct settings_data batctl_settings_multicast_forceflood =3D {
-	.sysfs_name =3D "multicast_mode",
 	.data =3D &multicast_forceflood,
 	.parse =3D parse_simple_boolean,
 	.netlink_get =3D get_multicast_forceflood,
diff --git a/multicast_mode.c b/multicast_mode.c
index a46cfc9..f837998 100644
--- a/multicast_mode.c
+++ b/multicast_mode.c
@@ -68,7 +68,6 @@ static int set_multicast_mode(struct state *state)
 }
=20
 static struct settings_data batctl_settings_multicast_mode =3D {
-	.sysfs_name =3D "multicast_mode",
 	.data =3D &multicast_mode,
 	.parse =3D parse_simple_boolean,
 	.netlink_get =3D get_multicast_mode,
diff --git a/network_coding.c b/network_coding.c
index a733c6b..9868e54 100644
--- a/network_coding.c
+++ b/network_coding.c
@@ -48,7 +48,6 @@ static int set_network_coding(struct state *state)
 }
=20
 static struct settings_data batctl_settings_network_coding =3D {
-	.sysfs_name =3D "network_coding",
 	.data =3D &network_coding,
 	.parse =3D parse_simple_boolean,
 	.netlink_get =3D get_network_coding,
diff --git a/orig_interval.c b/orig_interval.c
index 25e67e5..2cdad1a 100644
--- a/orig_interval.c
+++ b/orig_interval.c
@@ -88,7 +88,6 @@ static int set_orig_interval(struct state *state)
 }
=20
 static struct settings_data batctl_settings_orig_interval =3D {
-	.sysfs_name =3D "orig_interval",
 	.data =3D &orig_interval,
 	.parse =3D parse_orig_interval,
 	.netlink_get =3D get_orig_interval,
diff --git a/routing_algo.c b/routing_algo.c
index 0f2e1bb..27458ff 100644
--- a/routing_algo.c
+++ b/routing_algo.c
@@ -7,6 +7,7 @@
  */
=20
 #include <errno.h>
+#include <fcntl.h>
 #include <getopt.h>
 #include <netinet/if_ether.h>
 #include <netlink/netlink.h>
@@ -15,6 +16,9 @@
 #include <stdio.h>
 #include <stdlib.h>
 #include <string.h>
+#include <sys/stat.h>
+#include <sys/types.h>
+#include <unistd.h>
=20
 #include "batadv_packet.h"
 #include "batman_adv.h"
@@ -73,7 +77,7 @@ static int routing_algos_callback(struct nl_msg *msg, v=
oid *arg __maybe_unused)
 	return NL_OK;
 }
=20
-static int netlink_print_routing_algos(void)
+static int print_routing_algos(void)
 {
 	struct nl_sock *sock;
 	struct nl_msg *msg;
@@ -132,12 +136,28 @@ static int netlink_print_routing_algos(void)
 	return last_err;
 }
=20
-static int print_routing_algos(void)
+static int write_default_ra(const char *full_path, const char *arg1)
 {
-	int err;
+	ssize_t write_len;
+	int fd =3D -1;
=20
-	err =3D netlink_print_routing_algos();
-	return err;
+	fd =3D open(full_path, O_WRONLY);
+	if (fd < 0) {
+		fprintf(stderr, "Error - can't open file '%s': %s\n", full_path,
+			strerror(errno));
+
+		return EXIT_FAILURE;
+	}
+
+	write_len =3D write(fd, arg1, strlen(arg1) + 1);
+	close(fd);
+	if (write_len < 0) {
+		fprintf(stderr, "Error - can't write to file '%s': %s\n",
+			full_path, strerror(errno));
+		return EXIT_FAILURE;
+	}
+
+	return EXIT_SUCCESS;
 }
=20
 static struct nla_policy link_policy[IFLA_MAX + 1] =3D {
@@ -278,14 +298,12 @@ static int routing_algo(struct state *state __maybe=
_unused, int argc, char **arg
=20
 	check_root_or_die("batctl routing_algo");
=20
-	if (argc =3D=3D 2) {
-		res =3D write_file(SYS_SELECTED_RA_PATH, "", argv[1], NULL);
-		return EXIT_FAILURE;
-	}
+	if (argc =3D=3D 2)
+		return write_default_ra(SYS_SELECTED_RA_PATH, argv[1]);
=20
 	print_ra_interfaces();
=20
-	res =3D read_file("", SYS_SELECTED_RA_PATH, USE_READ_BUFF);
+	res =3D read_file(SYS_SELECTED_RA_PATH, USE_READ_BUFF);
 	if (res !=3D EXIT_SUCCESS)
 		return EXIT_FAILURE;
=20
diff --git a/sys.c b/sys.c
index 7668a72..cde5002 100644
--- a/sys.c
+++ b/sys.c
@@ -189,63 +189,35 @@ static void settings_usage(struct state *state)
 	fprintf(stderr, " \t -h print this help\n");
 }
=20
-static int sys_read_setting(struct state *state, const char *path_buff,
-			    const char *sysfs_name)
+static int sys_read_setting(struct state *state)
 {
 	struct settings_data *settings =3D state->cmd->arg;
 	int res =3D EXIT_FAILURE;
-	int read_opt =3D NO_FLAGS;
=20
 	if (settings->netlink_get) {
 		res =3D settings->netlink_get(state);
-		if (res < 0 && res !=3D -EOPNOTSUPP)
+		if (res < 0)
 			return EXIT_FAILURE;
-		if (res >=3D 0)
+		else
 			return EXIT_SUCCESS;
 	}
=20
-	if (sysfs_name) {
-		if (state->cmd->flags & COMMAND_FLAG_INVERSE)
-			read_opt |=3D INVERSE_BOOL;
-
-		res =3D read_file(path_buff, sysfs_name, read_opt);
-	}
-
 	return res;
 }
=20
-static int sys_write_setting(struct state *state, const char *path_buff,
-			    const char *sysfs_name, int argc, char **argv)
+static int sys_write_setting(struct state *state)
 {
 	struct settings_data *settings =3D state->cmd->arg;
 	int res =3D EXIT_FAILURE;
-	char *argv1 =3D argv[1];
=20
 	if (settings->netlink_set) {
 		res =3D settings->netlink_set(state);
-		if (res < 0 && res !=3D -EOPNOTSUPP)
+		if (res < 0)
 			return EXIT_FAILURE;
-		if (res >=3D 0)
+		else
 			return EXIT_SUCCESS;
 	}
=20
-	if (sysfs_name) {
-		if (state->cmd->flags & COMMAND_FLAG_INVERSE) {
-			if (!strncmp("0", argv[1], strlen("0")) ||
-			    !strncmp("disable", argv[1], strlen("disable")) ||
-			    !strncmp("disabled", argv[1], strlen("disabled"))) {
-				argv1 =3D "enabled";
-			} else if (!strncmp("1", argv[1], strlen("1")) ||
-				   !strncmp("enable", argv[1], strlen("enable")) ||
-				   !strncmp("enabled", argv[1], strlen("enabled"))) {
-				argv1 =3D "disabled";
-			}
-		}
-
-		res =3D write_file(path_buff, sysfs_name,
-				 argv1, argc > 2 ? argv[2] : NULL);
-	}
-
 	return res;
 }
=20
@@ -253,7 +225,6 @@ int handle_sys_setting(struct state *state, int argc,=
 char **argv)
 {
 	struct settings_data *settings =3D state->cmd->arg;
 	int optchar, res =3D EXIT_FAILURE;
-	char *path_buff;
=20
 	while ((optchar =3D getopt(argc, argv, "h")) !=3D -1) {
 		switch (optchar) {
@@ -266,55 +237,16 @@ int handle_sys_setting(struct state *state, int arg=
c, char **argv)
 		}
 	}
=20
-	/* prepare the classic path */
-	path_buff =3D malloc(PATH_BUFF_LEN);
-	if (!path_buff) {
-		fprintf(stderr, "Error - could not allocate path buffer: out of memory=
 ?\n");
-		return EXIT_FAILURE;
-	}
-
-	switch (state->selector) {
-	case SP_NONE_OR_MESHIF:
-	case SP_MESHIF:
-		snprintf(path_buff, PATH_BUFF_LEN, SYS_BATIF_PATH_FMT,
-			 state->mesh_iface);
-		break;
-	case SP_VLAN:
-		/* if the specified interface is a VLAN then change the path to
-		 * point to the proper "vlan%{vid}" subfolder in the sysfs tree.
-		 */
-		snprintf(path_buff, PATH_BUFF_LEN, SYS_VLAN_PATH,
-			 state->mesh_iface, state->vid);
-		break;
-	case SP_HARDIF:
-		/* if a hard interface was specified then change the path to
-		 * point to the proper ${hardif}/batman-adv path in the sysfs
-		 * tree.
-		 */
-		snprintf(path_buff, PATH_BUFF_LEN, SYS_HARDIF_PATH,
-			 state->hard_iface);
-		break;
-	}
-
-	if (argc =3D=3D 1) {
-		res =3D sys_read_setting(state, path_buff, settings->sysfs_name);
-		goto out;
-	}
+	if (argc =3D=3D 1)
+		return sys_read_setting(state);
=20
 	check_root_or_die("batctl");
=20
 	if (settings->parse) {
 		res =3D settings->parse(state, argc, argv);
-		if (res < 0) {
-			res =3D EXIT_FAILURE;
-			goto out;
-		}
+		if (res < 0)
+			return EXIT_FAILURE;
 	}
=20
-	res =3D sys_write_setting(state, path_buff, settings->sysfs_name, argc,
-				argv);
-
-out:
-	free(path_buff);
-	return res;
+	return sys_write_setting(state);
 }
diff --git a/sys.h b/sys.h
index b4e4bca..ac7781f 100644
--- a/sys.h
+++ b/sys.h
@@ -18,18 +18,9 @@
 #include "batman_adv.h"
 #include "netlink.h"
=20
-#define SYS_BATIF_PATH_FMT	"/sys/class/net/%s/mesh/"
-#define SYS_IFACE_PATH		"/sys/class/net"
-#define SYS_IFACE_DIR		SYS_IFACE_PATH"/%s/"
-#define SYS_HARDIF_PATH		SYS_IFACE_DIR "batman_adv/"
-#define SYS_MESH_IFACE_FMT	SYS_HARDIF_PATH "mesh_iface"
-#define SYS_IFACE_STATUS_FMT	SYS_HARDIF_PATH "iface_status"
-#define SYS_VLAN_PATH		SYS_IFACE_PATH"/%s/mesh/vlan%d/"
-#define SYS_ROUTING_ALGO_FMT	SYS_IFACE_PATH"/%s/mesh/routing_algo"
 #define VLAN_ID_MAX_LEN		4
=20
 struct settings_data {
-	const char *sysfs_name;
 	void *data;
 	int (*parse)(struct state *state, int argc, char *argv[]);
 	int (*netlink_get)(struct state *state);
diff --git a/throughput_override.c b/throughput_override.c
index 13b5dce..f42d9de 100644
--- a/throughput_override.c
+++ b/throughput_override.c
@@ -101,7 +101,6 @@ static int set_throughput_override(struct state *stat=
e)
 }
=20
 static struct settings_data batctl_settings_throughput_override =3D {
-	.sysfs_name =3D "throughput_override",
 	.data =3D &throughput_override,
 	.parse =3D parse_throughput_override,
 	.netlink_get =3D get_throughput_override,
--=20
2.28.0
