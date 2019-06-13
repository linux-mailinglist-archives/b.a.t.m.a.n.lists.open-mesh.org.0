Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [78.46.248.236])
	by mail.lfdr.de (Postfix) with ESMTPS id 5738644BD9
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 13 Jun 2019 21:12:54 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id D1CB98275F;
	Thu, 13 Jun 2019 21:12:32 +0200 (CEST)
Received: from durin.narfation.org (durin.narfation.org [79.140.41.39])
 by open-mesh.org (Postfix) with ESMTPS id BADF482757
 for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 13 Jun 2019 21:12:29 +0200 (CEST)
Received: from sven-desktop.home.narfation.org (unknown
 [IPv6:2a00:1ca0:1480:f1fc::4065])
 by durin.narfation.org (Postfix) with ESMTPSA id 4A68B1100B2;
 Thu, 13 Jun 2019 21:12:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
 s=20121; t=1560453148;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Po8vXg8bamfeMpjgCprnxcSb+7Zghs9W+LVeq8BZFLU=;
 b=FCvEaWH9XSarG6gP4c6bFJTOFZrot6uTSSXzz2eldoQ0QMPkcQmTlGvaqPozXIv4lt1Zih
 GQgAOC15AW3YD0Jb/2Dfv5VIU3JxZFY/7QVLYcn2tD8Lte/ebUFsd5x8fgXuhSIh5RIfqp
 YqdAJ71R+AVCqP63ZOpix1bv3Mgv3SY=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: [PATCH 2/4] batctl: Integrate hardif setting framework
Date: Thu, 13 Jun 2019 21:12:15 +0200
Message-Id: <20190613191217.28139-3-sven@narfation.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190613191217.28139-1-sven@narfation.org>
References: <20190613191217.28139-1-sven@narfation.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org; 
 s=20121; t=1560453148;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Po8vXg8bamfeMpjgCprnxcSb+7Zghs9W+LVeq8BZFLU=;
 b=iQkhXkMbR70WCdusJqzKlfCajRqxlGBsJoaoJsb3NMgN8D5JmRIxO2jIVSaO6zNl1exNtd
 euGsNYWsywHyRPeNDCQdR9qHm5Vj4sLtGCCn/Nx+F5pDXktltgMvOQvNSqc2NQkRS/3jtf
 LME8r6NjpN4/jNsTpNtlDnbql5aJjnU=
ARC-Seal: i=1; s=20121; d=narfation.org; t=1560453148; a=rsa-sha256; cv=none;
 b=RJvQlYEuRuMRfpcr82Jlf0QH5/IyaSwcJytdBHIsX6KJM73E4qt2xAjb4kNvNQ5HOhu78J
 1r2J2+jFPh3KAKx67Y3bS06BIgpLDvS+QSqcEhif7QVy1Ih5NA+GRQJOTsE3vICLS/DySp
 a3rjTQHjjvUCYFhT6AsviWPRknGrpGI=
ARC-Authentication-Results: i=1; ORIGINATING;
 auth=pass smtp.auth=sven smtp.mailfrom=sven@narfation.org
X-BeenThere: b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 2.1.23
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
List-Unsubscribe: <https://lists.open-mesh.org/mm/options/b.a.t.m.a.n>,
 <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=unsubscribe>
List-Archive: <http://lists.open-mesh.org/pipermail/b.a.t.m.a.n/>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Subscribe: <https://lists.open-mesh.org/mm/listinfo/b.a.t.m.a.n>,
 <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=subscribe>
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n@lists.open-mesh.org>
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

batctl currently supports settings which are either mesh interface or vlan
specific. But B.A.T.M.A.N. V introduced two additional settings which are
hard (slave) interface specific.

To support these, an additional command prefix called hardif is implemented
for some sysfs commands:

  $ batctl -m bat0 hardif eth0 ...

Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 main.c | 29 ++++++++++++++++++++++++++++-
 main.h |  3 +++
 sys.c  | 25 ++++++++++++++++++++-----
 sys.h  |  5 +++--
 4 files changed, 54 insertions(+), 8 deletions(-)

diff --git a/main.c b/main.c
index 6ca13ac..c806dbf 100644
--- a/main.c
+++ b/main.c
@@ -35,7 +35,8 @@ static void print_usage(void)
 		{
 			.label = "commands:\n",
 			.types = BIT(SUBCOMMAND) |
-				 BIT(SUBCOMMAND_VID),
+				 BIT(SUBCOMMAND_VID) |
+				 BIT(SUBCOMMAND_HIF),
 		},
 		{
 			.label = "debug tables:                                   \tdisplay the corresponding debug table\n",
@@ -51,6 +52,10 @@ static void print_usage(void)
 		"vid <vid> ",
 		NULL,
 	};
+	const char *hardif_prefixes[] = {
+		"hardif <netdev> ",
+		NULL,
+	};
 	const struct command **p;
 	const char **prefixes;
 	const char **prefix;
@@ -81,6 +86,9 @@ static void print_usage(void)
 			case SUBCOMMAND_VID:
 				prefixes = vlan_prefixes;
 				break;
+			case SUBCOMMAND_HIF:
+				prefixes = hardif_prefixes;
+				break;
 			default:
 				prefixes = default_prefixes;
 				break;
@@ -133,6 +141,12 @@ static const struct command *find_command(struct state *state, const char *name)
 		if (state->vid < 0 && cmd->type == SUBCOMMAND_VID)
 			continue;
 
+		if (state->hif > 0 && cmd->type != SUBCOMMAND_HIF)
+			continue;
+
+		if (state->hif == 0 && cmd->type == SUBCOMMAND_HIF)
+			continue;
+
 		if (strcmp(cmd->name, name) == 0)
 			return cmd;
 
@@ -180,6 +194,18 @@ static int parse_dev_args(struct state *state, int argc, char *argv[])
 		state->arg_iface = argv[1];
 		translate_mesh_iface(state);
 
+		return 2;
+	} else if (strcmp(argv[0], "hardif") == 0) {
+		state->hif = if_nametoindex(argv[1]);
+		if (state->hif == 0) {
+			fprintf(stderr, "Error - hard interface not found\n");
+			return -ENODEV;
+		}
+
+		snprintf(state->hard_iface, sizeof(state->hard_iface), "%s",
+			 argv[1]);
+
+		translate_mesh_iface(state);
 		return 2;
 	} else {
 		/* parse vlan as part of -m parameter */
@@ -193,6 +219,7 @@ int main(int argc, char **argv)
 	const struct command *cmd;
 	struct state state = {
 		.arg_iface = mesh_dfl_iface,
+		.hif = 0,
 		.cmd = NULL,
 	};
 	int dev_arguments;
diff --git a/main.h b/main.h
index 1d95261..a27d848 100644
--- a/main.h
+++ b/main.h
@@ -59,6 +59,7 @@ enum command_flags {
 enum command_type {
 	SUBCOMMAND,
 	SUBCOMMAND_VID,
+	SUBCOMMAND_HIF,
 	DEBUGTABLE,
 };
 
@@ -66,6 +67,8 @@ struct state {
 	char *arg_iface;
 	char mesh_iface[IF_NAMESIZE];
 	unsigned int mesh_ifindex;
+	char hard_iface[IF_NAMESIZE];
+	unsigned int hif;
 	int vid;
 	const struct command *cmd;
 
diff --git a/sys.c b/sys.c
index f19719c..fd34b2f 100644
--- a/sys.c
+++ b/sys.c
@@ -150,6 +150,10 @@ static void settings_usage(struct state *state)
 		"vid <vid> ",
 		NULL,
 	};
+	const char *hardif_prefixes[] = {
+		"hardif <netdev> ",
+		NULL,
+	};
 	const char *linestart = "Usage:";
 	const char **prefixes;
 	const char **prefix;
@@ -158,6 +162,9 @@ static void settings_usage(struct state *state)
 	case SUBCOMMAND_VID:
 		prefixes = vlan_prefixes;
 		break;
+	case SUBCOMMAND_HIF:
+		prefixes = hardif_prefixes;
+		break;
 	default:
 		prefixes = default_prefixes;
 		break;
@@ -259,15 +266,23 @@ int handle_sys_setting(struct state *state, int argc, char **argv)
 		return EXIT_FAILURE;
 	}
 
-	/* if the specified interface is a VLAN then change the path to point
-	 * to the proper "vlan%{vid}" subfolder in the sysfs tree.
-	 */
-	if (state->vid >= 0)
+	if (state->hif > 0) {
+		/* if a hard interface was specified then change the path to
+		 * point to the proper ${hardif}/batman-adv path in the sysfs
+		 * tree.
+		 */
+		snprintf(path_buff, PATH_BUFF_LEN, SYS_HARDIF_PATH,
+			 state->hard_iface);
+	} else if (state->vid >= 0) {
+		/* if the specified interface is a VLAN then change the path to
+		 * point to the proper "vlan%{vid}" subfolder in the sysfs tree.
+		 */
 		snprintf(path_buff, PATH_BUFF_LEN, SYS_VLAN_PATH,
 			 state->mesh_iface, state->vid);
-	else
+	} else {
 		snprintf(path_buff, PATH_BUFF_LEN, SYS_BATIF_PATH_FMT,
 			 state->mesh_iface);
+	}
 
 	if (argc == 1) {
 		res = sys_read_setting(state, path_buff, settings->sysfs_name);
diff --git a/sys.h b/sys.h
index d4f2fcf..b6f0f90 100644
--- a/sys.h
+++ b/sys.h
@@ -21,8 +21,9 @@
 #define SYS_BATIF_PATH_FMT	"/sys/class/net/%s/mesh/"
 #define SYS_IFACE_PATH		"/sys/class/net"
 #define SYS_IFACE_DIR		SYS_IFACE_PATH"/%s/"
-#define SYS_MESH_IFACE_FMT	SYS_IFACE_PATH"/%s/batman_adv/mesh_iface"
-#define SYS_IFACE_STATUS_FMT	SYS_IFACE_PATH"/%s/batman_adv/iface_status"
+#define SYS_HARDIF_PATH		SYS_IFACE_DIR "batman_adv/"
+#define SYS_MESH_IFACE_FMT	SYS_HARDIF_PATH "mesh_iface"
+#define SYS_IFACE_STATUS_FMT	SYS_HARDIF_PATH "iface_status"
 #define SYS_VLAN_PATH		SYS_IFACE_PATH"/%s/mesh/vlan%d/"
 #define SYS_ROUTING_ALGO_FMT	SYS_IFACE_PATH"/%s/mesh/routing_algo"
 #define VLAN_ID_MAX_LEN		4
-- 
2.20.1

