Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [78.46.248.236])
	by mail.lfdr.de (Postfix) with ESMTPS id 26A7A4C197
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 19 Jun 2019 21:38:28 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id C441A81C33;
	Wed, 19 Jun 2019 21:38:22 +0200 (CEST)
Received: from durin.narfation.org (durin.narfation.org [79.140.41.39])
 by open-mesh.org (Postfix) with ESMTPS id A009181B29
 for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 19 Jun 2019 21:38:19 +0200 (CEST)
Received: from sven-desktop.home.narfation.org (unknown
 [IPv6:2a00:1ca0:1480:f1fc::4065])
 by durin.narfation.org (Postfix) with ESMTPSA id D9BDE11010D;
 Wed, 19 Jun 2019 21:38:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
 s=20121; t=1560973099;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=77ID1N5s8oEaEDGAk2m7PcuX3ZPavN66/Lg1zwjTNg8=;
 b=noWowgbuywCyOh7v+cWVOv3bWznsQKHyju4kA98rHhTCMBFtiOB8s2Np3iyNOhG4pY0QBW
 ByvxuYstkiv9KicaZdKlyX0t7NKseFiy7+73xHuOOJsPd1VvYNXnOUIYHr35g2TiBXhBjp
 ASO1/uRTWPaByYx0jCrNu5uHgS8Dg1s=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: [PATCH 2/2] alfred: vis: Retrieve hardif status via generic netlink
Date: Wed, 19 Jun 2019 21:38:10 +0200
Message-Id: <20190619193810.16698-2-sven@narfation.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190619193810.16698-1-sven@narfation.org>
References: <20190619193810.16698-1-sven@narfation.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org; 
 s=20121; t=1560973099;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=77ID1N5s8oEaEDGAk2m7PcuX3ZPavN66/Lg1zwjTNg8=;
 b=yJWzX0gAJjweTt9YQ0BnT11T0a9bQ09rDdCcl4YGEgBhHgoxEXdrcmlioR75P8V+W+7H5C
 P/gEM6rAb7Hz2lEhaI3/Hqc4g3o5x8JHNOOsvWL5Bf+F814+e/SRcS3qifI/mtpdPG6H1a
 GibnY9amPMZFmeXvjVfmwGQstfvj770=
ARC-Seal: i=1; s=20121; d=narfation.org; t=1560973099; a=rsa-sha256; cv=none;
 b=UHhOLhzIon/NtYQRYTl7wLD4trwCbTPLxeCVD/p63PgsnfBv3Q0GsZfAvxzPwHVsavEqa+
 Cs9US5a4gkP4Nn3B54MVBLpHTUnXy3Zv6uRzniJ9gR4OD6gfqpapxO5Ok5ctnx3abk4T50
 q3lWfKQeqOIS43eK9ZJVaB+74j2dpOM=
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

The batman-adv kernel module can now be compiled without support for sysfs.
But the batadv-vis interface retriever can only get the status via the per
hardif sysfs file iface_status. To still have some information, use
BATADV_CMD_GET_HARDIF to retrieve the status and fall back to sysfs when
the status could not retrieved via generic netlink.

This also solved the warning about deprecated sysfs file access

  batman_adv: [Deprecated]: batadv-vis (pid 1365) Use of sysfs file "iface_status".
  Use batadv genl family instead

Reported-by: Linus Lüssing <linus.luessing@c0d3.blue>
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 vis/vis.c | 144 ++++++++++++++++++++++++++++++++++++++++++++++++------
 1 file changed, 128 insertions(+), 16 deletions(-)

diff --git a/vis/vis.c b/vis/vis.c
index 37956b1..9474563 100644
--- a/vis/vis.c
+++ b/vis/vis.c
@@ -27,6 +27,8 @@
 #include "netlink.h"
 #include "debugfs.h"
 
+#define IFACE_STATUS_LEN 256
+
 static struct globals vis_globals;
 
 struct vis_netlink_opts {
@@ -435,6 +437,131 @@ err_free_sock:
 	return err;
 }
 
+static int get_iface_status_netlink_parse(struct nl_msg *msg, void *arg)
+{
+	struct nlattr *attrs[NUM_BATADV_ATTR];
+	struct nlmsghdr *nlh = nlmsg_hdr(msg);
+	char *iface_status = arg;
+	struct genlmsghdr *ghdr;
+
+	if (!genlmsg_valid_hdr(nlh, 0))
+		return NL_OK;
+
+	ghdr = nlmsg_data(nlh);
+	if (ghdr->cmd != BATADV_CMD_GET_HARDIF)
+		return NL_OK;
+
+	if (nla_parse(attrs, BATADV_ATTR_MAX, genlmsg_attrdata(ghdr, 0),
+		      genlmsg_len(ghdr), batadv_netlink_policy))
+		return NL_OK;
+
+	if (attrs[BATADV_ATTR_ACTIVE])
+		strncpy(iface_status, "active\n", IFACE_STATUS_LEN);
+	else
+		strncpy(iface_status, "inactive\n", IFACE_STATUS_LEN);
+
+	iface_status[IFACE_STATUS_LEN - 1] = '\0';
+
+	return NL_STOP;
+}
+
+static char *get_iface_status_netlink(unsigned int meshif, unsigned int hardif,
+				      char *iface_status)
+{
+	char *ret_status = NULL;
+	struct nl_sock *sock;
+	struct nl_msg *msg;
+	int batadv_family;
+	struct nl_cb *cb;
+	int ret;
+
+	iface_status[0] = '\0';
+
+	sock = nl_socket_alloc();
+	if (!sock)
+		return NULL;
+
+	ret = genl_connect(sock);
+	if (ret < 0)
+		goto err_free_sock;
+
+	batadv_family = genl_ctrl_resolve(sock, BATADV_NL_NAME);
+	if (batadv_family < 0)
+		goto err_free_sock;
+
+	cb = nl_cb_alloc(NL_CB_DEFAULT);
+	if (!cb)
+		goto err_free_sock;
+
+	nl_cb_set(cb, NL_CB_VALID, NL_CB_CUSTOM, get_iface_status_netlink_parse,
+		iface_status);
+
+	msg = nlmsg_alloc();
+	if (!msg)
+		goto err_free_cb;
+
+	genlmsg_put(msg, NL_AUTO_PID, NL_AUTO_SEQ, batadv_family,
+		    0, 0, BATADV_CMD_GET_HARDIF, 1);
+
+	nla_put_u32(msg, BATADV_ATTR_MESH_IFINDEX, meshif);
+	nla_put_u32(msg, BATADV_ATTR_HARD_IFINDEX, hardif);
+
+	ret = nl_send_auto_complete(sock, msg);
+	if (ret < 0)
+		goto err_free_msg;
+
+	nl_recvmsgs(sock, cb);
+
+	if (strlen(iface_status) > 0)
+		ret_status = iface_status;
+
+err_free_msg:
+	nlmsg_free(msg);
+err_free_cb:
+	nl_cb_put(cb);
+err_free_sock:
+	nl_socket_free(sock);
+
+	return ret_status;
+}
+
+static bool interface_active(unsigned int meshif, unsigned int hardif,
+			     const char *ifname)
+{
+	char iface_status[IFACE_STATUS_LEN];
+	char path_buff[PATH_BUFF_LEN];
+	char *file_content = NULL;
+	char *content_newline;
+	bool active = false;
+	char *status;
+
+	status = get_iface_status_netlink(meshif, hardif, iface_status);
+	if (!status) {
+		snprintf(path_buff, sizeof(path_buff), SYS_IFACE_STATUS_FMT,
+			 ifname);
+		file_content = read_file(path_buff);
+		if (!file_content)
+			return false;
+
+		status = file_content;
+	}
+
+	content_newline = strstr(status, "\n");
+	if (content_newline)
+		*content_newline = '\0';
+
+	if (strcmp(status, "active") != 0)
+		goto free_file;
+
+	active = true;
+
+free_file:
+	free(file_content);
+	file_content = NULL;
+
+	return active;
+}
+
 struct register_interfaces_rtnl_arg {
 	struct globals *globals;
 	int ifindex;
@@ -449,10 +576,7 @@ static int register_interfaces_rtnl_parse(struct nl_msg *msg, void *arg)
 {
 	struct register_interfaces_rtnl_arg *register_arg = arg;
 	struct nlattr *attrs[IFLA_MAX + 1];
-	char path_buff[PATH_BUFF_LEN];
 	struct ifinfomsg *ifm;
-	char *content_newline;
-	char *file_content;
 	char *ifname;
 	int master;
 	int ret;
@@ -476,23 +600,11 @@ static int register_interfaces_rtnl_parse(struct nl_msg *msg, void *arg)
 	if (master != register_arg->ifindex)
 		goto err;
 
-	snprintf(path_buff, PATH_BUFF_LEN, SYS_IFACE_STATUS_FMT, ifname);
-	file_content = read_file(path_buff);
-	if (!file_content)
-		goto free_file;
-
-	content_newline = strstr(file_content, "\n");
-	if (content_newline)
-		*content_newline = '\0';
-
-	if (strcmp(file_content, "active") != 0)
+	if (!interface_active(master, ifm->ifi_index, ifname))
 		goto err;
 
 	get_if_index_byname(register_arg->globals, ifname);
 
-free_file:
-	free(file_content);
-	file_content = NULL;
 err:
 	return NL_OK;
 }
-- 
2.20.1

