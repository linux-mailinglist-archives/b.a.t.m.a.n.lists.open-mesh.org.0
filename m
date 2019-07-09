Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [78.46.248.236])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C14763A26
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue,  9 Jul 2019 19:27:27 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id AC5178222E;
	Tue,  9 Jul 2019 19:27:07 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org
 [IPv6:2a00:17d8:100::8b1])
 by open-mesh.org (Postfix) with ESMTPS id 385EA81F33
 for <b.a.t.m.a.n@lists.open-mesh.org>; Tue,  9 Jul 2019 19:27:04 +0200 (CEST)
Received: from sven-desktop.home.narfation.org (unknown
 [IPv6:2a00:1ca0:1480:f9fc::4065])
 by dvalin.narfation.org (Postfix) with ESMTPSA id CCA981FDB9;
 Tue,  9 Jul 2019 17:27:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
 s=20121; t=1562693223;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=i9qeESC+Ot1hRXjY6eYceEgf+kaDpZTA8PPigfx0uxg=;
 b=sTDdBrT/WVjVB95Hxz+/pFB11MBWtEOVPYDaJEHPtSbLNPaTQ+twlZDBTIyiF0tw6wvC5X
 GV1FNBXVKGA8LIGXfIFeppXzeUfAivulrVuY9y3qFAKYFz0a1FN7vPr518FFAkJxfu9xuR
 yqhcOrudhKGRrmlhx7IPPe+L5CjIw9g=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: [PATCH v3 2/6] batctl: Integrate hardif setting framework
Date: Tue,  9 Jul 2019 19:26:47 +0200
Message-Id: <20190709172651.5869-3-sven@narfation.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190709172651.5869-1-sven@narfation.org>
References: <20190709172651.5869-1-sven@narfation.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org; 
 s=20121; t=1562693223;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=i9qeESC+Ot1hRXjY6eYceEgf+kaDpZTA8PPigfx0uxg=;
 b=GHLIkaQTrexrASYwiENY7k4s2da9VQizFUobRYXRe34ZJPcHW4i3TeULn2UCc5Mbp+alCa
 DQEuB9Mr7l6YbeH3Mfnz7LKy0uBV4KPRHYM6AGdLRtOLyQNoNlGsQO6j+teE760TnJUyzy
 ML/PLsaDTJdk228Xj774ci7VzglqrcQ=
ARC-Seal: i=1; s=20121; d=narfation.org; t=1562693223; a=rsa-sha256; cv=none;
 b=ZaUKmlLnzc3Bu5desBMpsCxvj5t+COpSBs8+2pnKLO3gVt6OURq1NYLfW6MU4gN/cbDyiC
 UXKv0zpdIMApehbzihAx6eOrQLOd55Vcwf6XgoMzuugwq8Rs45jTPFODUrX3HKQddGXlCB
 GnzpdO4Oy2JXQhCqFhn1bJ9aXp+R1FU=
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

  $ batctl hardif eth0 ...

Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 functions.c | 22 ++++++++++++++++++++++
 functions.h |  1 +
 main.c      | 26 +++++++++++++++++++++++++-
 main.h      |  8 +++++++-
 sys.c       | 15 +++++++++++++++
 sys.h       |  5 +++--
 6 files changed, 73 insertions(+), 4 deletions(-)

diff --git a/functions.c b/functions.c
index 61ea487..4ffa86c 100644
--- a/functions.c
+++ b/functions.c
@@ -998,6 +998,28 @@ int translate_vid(struct state *state, const char *vidstr)
 	return 0;
 }
 
+int translate_hard_iface(struct state *state, const char *hardif)
+{
+	struct rtnl_link_iface_data link_data;
+	unsigned int arg_ifindex;
+
+	arg_ifindex = if_nametoindex(hardif);
+	if (arg_ifindex == 0)
+		return -ENODEV;
+
+	query_rtnl_link_single(arg_ifindex, &link_data);
+	if (!link_data.master_found)
+		return -ENOLINK;
+
+	if (!if_indextoname(link_data.master, state->mesh_iface))
+		return -ENOLINK;
+
+	state->hif = arg_ifindex;
+	state->selector = SP_HARDIF;
+
+	return 0;
+}
+
 static int check_mesh_iface_netlink(struct state *state)
 {
 	struct rtnl_link_iface_data link_data;
diff --git a/functions.h b/functions.h
index 7474c40..0a08870 100644
--- a/functions.h
+++ b/functions.h
@@ -53,6 +53,7 @@ int netlink_simple_request(struct nl_msg *msg);
 int translate_mesh_iface_vlan(struct state *state, const char *vlandev);
 int translate_vlan_iface(struct state *state, const char *vlandev);
 int translate_vid(struct state *state, const char *vidstr);
+int translate_hard_iface(struct state *state, const char *hardif);
 int get_algoname(const char *mesh_iface, char *algoname, size_t algoname_len);
 int check_mesh_iface(struct state *state);
 int check_mesh_iface_ownership(struct state *state, char *hard_iface);
diff --git a/main.c b/main.c
index 3090877..3b3a16f 100644
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
@@ -153,6 +161,9 @@ static const struct command *find_command(struct state *state, const char *name)
 	case SP_VLAN:
 		types = BIT(SUBCOMMAND_VID);
 		break;
+	case SP_HARDIF:
+		types = BIT(SUBCOMMAND_HIF);
+		break;
 	default:
 		return NULL;
 	}
@@ -171,6 +182,9 @@ static int detect_selector_prefix(int argc, char *argv[],
 	if (strcmp(argv[0], "vlan") == 0) {
 		*selector = SP_VLAN;
 		return 2;
+	} else if (strcmp(argv[0], "hardif") == 0) {
+		*selector = SP_HARDIF;
+		return 2;
 	}
 
 	return 0;
@@ -197,7 +211,17 @@ static int parse_meshif_args(struct state *state, int argc, char *argv[])
 				dev_arg, strerror(-ret));
 			return ret;
 		}
+		return parsed_args;
+	case SP_HARDIF:
+		ret = translate_hard_iface(state, dev_arg);
+		if (ret < 0) {
+			fprintf(stderr, "Error - invalid hardif %s: %s\n",
+				dev_arg, strerror(-ret));
+			return ret;
+		}
 
+		snprintf(state->hard_iface, sizeof(state->hard_iface), "%s",
+			 dev_arg);
 		return parsed_args;
 	case SP_NONE_OR_MESHIF:
 		/* not allowed - see detect_selector_prefix */
diff --git a/main.h b/main.h
index 846efed..e3a95b5 100644
--- a/main.h
+++ b/main.h
@@ -59,11 +59,13 @@ enum command_flags {
 enum selector_prefix {
 	SP_NONE_OR_MESHIF,
 	SP_VLAN,
+	SP_HARDIF,
 };
 
 enum command_type {
 	SUBCOMMAND,
 	SUBCOMMAND_VID,
+	SUBCOMMAND_HIF,
 	DEBUGTABLE,
 };
 
@@ -72,7 +74,11 @@ struct state {
 	enum selector_prefix selector;
 	char mesh_iface[IF_NAMESIZE];
 	unsigned int mesh_ifindex;
-	int vid;
+	char hard_iface[IF_NAMESIZE];
+	union {
+		unsigned int hif;
+		int vid;
+	};
 	const struct command *cmd;
 
 	struct nl_sock *sock;
diff --git a/sys.c b/sys.c
index 61a314d..b9555ee 100644
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
@@ -271,6 +278,14 @@ int handle_sys_setting(struct state *state, int argc, char **argv)
 		snprintf(path_buff, PATH_BUFF_LEN, SYS_VLAN_PATH,
 			 state->mesh_iface, state->vid);
 		break;
+	case SP_HARDIF:
+		/* if a hard interface was specified then change the path to
+		 * point to the proper ${hardif}/batman-adv path in the sysfs
+		 * tree.
+		 */
+		snprintf(path_buff, PATH_BUFF_LEN, SYS_HARDIF_PATH,
+			 state->hard_iface);
+		break;
 	}
 
 	if (argc == 1) {
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

