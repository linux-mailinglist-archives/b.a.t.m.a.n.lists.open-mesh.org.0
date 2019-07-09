Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [IPv6:2a01:4f8:141:3341:78:46:248:236])
	by mail.lfdr.de (Postfix) with ESMTPS id E174763A2B
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue,  9 Jul 2019 19:28:01 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 23EF2826E2;
	Tue,  9 Jul 2019 19:27:22 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org
 [IPv6:2a00:17d8:100::8b1])
 by open-mesh.org (Postfix) with ESMTPS id 30B6482540
 for <b.a.t.m.a.n@lists.open-mesh.org>; Tue,  9 Jul 2019 19:27:19 +0200 (CEST)
Received: from sven-desktop.home.narfation.org (unknown
 [IPv6:2a00:1ca0:1480:f9fc::4065])
 by dvalin.narfation.org (Postfix) with ESMTPSA id 7EE402018A;
 Tue,  9 Jul 2019 17:27:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
 s=20121; t=1562693235;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=2rvTpHl5ZTXfXcq6rdp2/OznwJdElLHPVHKn8WJR6R8=;
 b=DoaQeHD2k/bKjeG5g0jmLdESzcByB3B4JwSx4NMJzpo0mS3NI59591eiwa8QWJFIUDnrg9
 Z31dgLmh5m9dfdBhW/1qC7LaQ2FwXkXnkwdxlJU9ZVUA7AKozLsR/MpHsP2z+z2NeycZPa
 uPc/3MU4pci6Exlc2z90QFRVQXmCk9g=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: [PATCH v3 6/6] batctl: Allow to omit explicit prefix name
Date: Tue,  9 Jul 2019 19:26:51 +0200
Message-Id: <20190709172651.5869-7-sven@narfation.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190709172651.5869-1-sven@narfation.org>
References: <20190709172651.5869-1-sven@narfation.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org; 
 s=20121; t=1562693235;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=2rvTpHl5ZTXfXcq6rdp2/OznwJdElLHPVHKn8WJR6R8=;
 b=IyMSGo+kpmX0ndEypygi0Z1/7OxGBlCJeGHR3fTxqzNHdiTACHFWcnVqK3Gdjo5MrF4TEA
 YsTwqE6tY90QUJbkB4dhVrvcydn14iDydzaFBbCFg8hpd7VvCzkfdD2MGkgypHVh8m3ROz
 riC2dmUBzB2VuDRmUuhjb4nTV5FR6A0=
ARC-Seal: i=1; s=20121; d=narfation.org; t=1562693235; a=rsa-sha256; cv=none;
 b=sLqQLBmY0wJS7DGgq0bFDQyDpJwXiR84RjWTJOh+zGHo8cqa9C4XBqX9QLuLIe0t9IwW9r
 trIkZ4AIPbTpQxRvOuSQXUZfBeK9CCG+3gVauaGb5ZmNsDppQ8JQfr5Oo9utb9kwHB4rgQ
 LEV0wT8J1/h7O2LSUtt7kPUhFDw9l98=
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

batctl allows three types of netdev based prefixes

* meshif <netdev>
* vlan <vdev>
* hardif <netdev>

The first word is used to tell batctl that the netdev is expected to be of
a specific type and all further information should be parsed in context of
this specific type. This avoids ambiguity when parsing the command line
information.

But there are various situations when there is no ambiguity at all. For all
of them, following points are true:

* <netdev|vdev> exists
* <netdev|vdev> has not the name of any existing batctl subcommand
* <netdev|vdev> is not "vlan", "vid", "hardif" or "meshif"

In these situations, the first word can be omitted and batctl can guess the
type automatically.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 functions.c | 36 +++++++++++++++++++++++++++++++++---
 functions.h |  3 +++
 main.c      | 28 +++++++++++++++++++++++++++-
 3 files changed, 63 insertions(+), 4 deletions(-)

diff --git a/functions.c b/functions.c
index 4ffa86c..69d063e 100644
--- a/functions.c
+++ b/functions.c
@@ -1020,11 +1020,11 @@ int translate_hard_iface(struct state *state, const char *hardif)
 	return 0;
 }
 
-static int check_mesh_iface_netlink(struct state *state)
+static int check_mesh_iface_netlink(unsigned int ifindex)
 {
 	struct rtnl_link_iface_data link_data;
 
-	query_rtnl_link_single(state->mesh_ifindex, &link_data);
+	query_rtnl_link_single(ifindex, &link_data);
 	if (!link_data.kind_found)
 		return -1;
 
@@ -1034,6 +1034,36 @@ static int check_mesh_iface_netlink(struct state *state)
 	return 0;
 }
 
+int guess_netdev_type(const char *netdev, enum selector_prefix *type)
+{
+	struct rtnl_link_iface_data link_data;
+	unsigned int netdev_ifindex;
+
+	netdev_ifindex = if_nametoindex(netdev);
+	if (netdev_ifindex == 0)
+		return -ENODEV;
+
+	query_rtnl_link_single(netdev_ifindex, &link_data);
+
+	if (link_data.kind_found && strcmp(link_data.kind, "batadv") == 0) {
+		*type = SP_MESHIF;
+		return 0;
+	}
+
+	if (link_data.master_found &&
+	    check_mesh_iface_netlink(link_data.master) >= 0) {
+		*type = SP_HARDIF;
+		return 0;
+	}
+
+	if (link_data.kind_found && strcmp(link_data.kind, "vlan") == 0) {
+		*type = SP_VLAN;
+		return 0;
+	}
+
+	return -EINVAL;
+}
+
 static int check_mesh_iface_sysfs(struct state *state)
 {
 	char path_buff[PATH_BUFF_LEN];
@@ -1060,7 +1090,7 @@ int check_mesh_iface(struct state *state)
 	if (state->mesh_ifindex == 0)
 		return -1;
 
-	ret = check_mesh_iface_netlink(state);
+	ret = check_mesh_iface_netlink(state->mesh_ifindex);
 	if (ret == 0)
 		return ret;
 
diff --git a/functions.h b/functions.h
index 0a08870..31806d4 100644
--- a/functions.h
+++ b/functions.h
@@ -16,6 +16,8 @@
 #include <stddef.h>
 #include <stdint.h>
 
+#include "main.h"
+
 /**
  * enum batadv_bandwidth_units - bandwidth unit types
  */
@@ -54,6 +56,7 @@ int translate_mesh_iface_vlan(struct state *state, const char *vlandev);
 int translate_vlan_iface(struct state *state, const char *vlandev);
 int translate_vid(struct state *state, const char *vidstr);
 int translate_hard_iface(struct state *state, const char *hardif);
+int guess_netdev_type(const char *netdev, enum selector_prefix *type);
 int get_algoname(const char *mesh_iface, char *algoname, size_t algoname_len);
 int check_mesh_iface(struct state *state);
 int check_mesh_iface_ownership(struct state *state, char *hard_iface);
diff --git a/main.c b/main.c
index f7e1c5e..974d551 100644
--- a/main.c
+++ b/main.c
@@ -204,6 +204,32 @@ static int detect_selector_prefix(int argc, char *argv[],
 	return 0;
 }
 
+static int guess_selector_prefix(int argc, char *argv[],
+				 enum selector_prefix *selector)
+{
+	int ret;
+
+	/* check if there is a direct hit with full prefix */
+	ret = detect_selector_prefix(argc, argv, selector);
+	if (ret > 0)
+		return ret;
+
+	/* not enough remaining arguments to detect anything */
+	if (argc < 1)
+		return -EINVAL;
+
+	/* don't try to parse subcommand names as network interface */
+	if (find_command_by_types(0xffffffff, argv[0]))
+		return -EEXIST;
+
+	/* check if it is a netdev - and if it exists, try to guess what kind */
+	ret = guess_netdev_type(argv[0], selector);
+	if (ret < 0)
+		return ret;
+
+	return 1;
+}
+
 static int parse_meshif_args(struct state *state, int argc, char *argv[])
 {
 	enum selector_prefix selector;
@@ -211,7 +237,7 @@ static int parse_meshif_args(struct state *state, int argc, char *argv[])
 	char *dev_arg;
 	int ret;
 
-	parsed_args = detect_selector_prefix(argc, argv, &selector);
+	parsed_args = guess_selector_prefix(argc, argv, &selector);
 	if (parsed_args < 1)
 		goto fallback_meshif_vlan;
 
-- 
2.20.1

