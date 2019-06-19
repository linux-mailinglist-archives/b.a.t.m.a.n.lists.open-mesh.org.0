Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [78.46.248.236])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FC954C196
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 19 Jun 2019 21:38:19 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 80A2A81A54;
	Wed, 19 Jun 2019 21:38:16 +0200 (CEST)
Received: from durin.narfation.org (durin.narfation.org [79.140.41.39])
 by open-mesh.org (Postfix) with ESMTPS id 348088060C
 for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 19 Jun 2019 21:38:14 +0200 (CEST)
Received: from sven-desktop.home.narfation.org (unknown
 [IPv6:2a00:1ca0:1480:f1fc::4065])
 by durin.narfation.org (Postfix) with ESMTPSA id 7E57511010D;
 Wed, 19 Jun 2019 21:38:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
 s=20121; t=1560973093;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=Q2vDs0O2eHmFruXEMrMZRtxOYj3Yvk1VUtFc6KrdHxc=;
 b=OdDOMMrDo0CEqwGrO49qT0atooaehcLBEi/m4Ckt63zn52WWT/a2lsolt/xhMgRqQ3KaQ4
 AlAa14uLSZBWW/C1WEbk9cFOvUBsSRONL/K+Mbw/GU826YUe89ajeoxtMQwrPe/hnc9tMg
 yCbwGjVFiVN9QLCEYDBKUlghd5Ogvas=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: [PATCH 1/2] alfred: vis: Use rtnl to query list of hardifs of meshif
Date: Wed, 19 Jun 2019 21:38:09 +0200
Message-Id: <20190619193810.16698-1-sven@narfation.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org; 
 s=20121; t=1560973093;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=Q2vDs0O2eHmFruXEMrMZRtxOYj3Yvk1VUtFc6KrdHxc=;
 b=uFjMsaaMRrX4CJQIFfixY/6xwgIEDr1QZp1bXy2uR8fRJszVAGF2qlzF2o5KDDopt4Lef3
 ybPTR6eV4DOmLBciqqjQaMjC7C4qzMvGOGyi4mUDmo0PiEUApbaw2YQkClzLFsBgujL7vV
 BG9+u8cwXRAqCDimtnbpP29hGCKexQ0=
ARC-Seal: i=1; s=20121; d=narfation.org; t=1560973093; a=rsa-sha256; cv=none;
 b=kBoXU4xEiZ/zK9QVLvy3xaBH2N8trC8kqbyuBlKrbuZuohVXOSn5Z62V9/mqccWknb2R7S
 aQA+S1N4qlOyikhLRl1xccYcCpV2A3rp1PPJwPMbuf7s6/9R4A0pLSZ3GWszQMpTKqyuu0
 zf5xnHTdiVrdjE1zy15cYp198kmBIm0=
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

The normal way of network related programs to query the state of interfaces
is to use the rtnetlink. Most of these data can also be queried via sysfs
but it is better to use the same way for both retrieving the list of
interfaces and modifying the list of interfaces.

Also the sysfs files are deprecated and cause warnings when access:

  batman_adv: [Deprecated]: batadv-vis (pid 832) Use of sysfs file "mesh_iface".
  Use batadv genl family instead

In worst case, the file doesn't even exist when batman-adv was compiled
without sysfs support.

Reported-by: Linus Lüssing <linus.luessing@c0d3.blue>
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 vis/vis.c | 170 +++++++++++++++++++++++++++++++++++++++---------------
 vis/vis.h |   1 -
 2 files changed, 123 insertions(+), 48 deletions(-)

diff --git a/vis/vis.c b/vis/vis.c
index beaeca1..37956b1 100644
--- a/vis/vis.c
+++ b/vis/vis.c
@@ -372,70 +372,146 @@ static void clear_lists(struct globals *globals)
 	}
 }
 
-static int register_interfaces(struct globals *globals)
+static int query_rtnl_link(int ifindex, nl_recvmsg_msg_cb_t func, void *arg)
 {
-	DIR *iface_base_dir;
-	struct dirent *iface_dir;
-	char *path_buff, *file_content;
-	char *content_newline;
+	struct ifinfomsg rt_hdr = {
+		.ifi_family = IFLA_UNSPEC,
+	};
+	struct nl_sock *sock;
+	struct nl_msg *msg;
+	struct nl_cb *cb;
+	int err = 0;
+	int ret;
 
-	path_buff = malloc(PATH_BUFF_LEN);
-	if (!path_buff) {
-		perror("Error - could not allocate path buffer");
-		goto err;
+	sock = nl_socket_alloc();
+	if (!sock)
+		return -ENOMEM;
+
+	ret = nl_connect(sock, NETLINK_ROUTE);
+	if (ret < 0) {
+		err = -ENOMEM;
+		goto err_free_sock;
 	}
 
-	iface_base_dir = opendir(SYS_IFACE_PATH);
-	if (!iface_base_dir) {
-		fprintf(stderr, "Error - the directory '%s' could not be read: %s\n",
-		       SYS_IFACE_PATH, strerror(errno));
-		fprintf(stderr, "Is the batman-adv module loaded and sysfs mounted ?\n");
-		goto err_buff;
+	cb = nl_cb_alloc(NL_CB_DEFAULT);
+	if (!cb) {
+		err = -ENOMEM;
+		goto err_free_sock;
 	}
 
-	while ((iface_dir = readdir(iface_base_dir)) != NULL) {
-		snprintf(path_buff, PATH_BUFF_LEN, SYS_MESH_IFACE_FMT, iface_dir->d_name);
-		file_content = read_file(path_buff);
-		if (!file_content)
-			continue;
+	nl_cb_set(cb, NL_CB_VALID, NL_CB_CUSTOM, func, arg);
 
-		if (file_content[strlen(file_content) - 1] == '\n')
-			file_content[strlen(file_content) - 1] = '\0';
+	msg = nlmsg_alloc_simple(RTM_GETLINK, NLM_F_REQUEST | NLM_F_DUMP);
+	if (!msg) {
+		err = -ENOMEM;
+		goto err_free_cb;
+	}
 
-		if (strcmp(file_content, "none") == 0)
-			goto free_line;
+	ret = nlmsg_append(msg, &rt_hdr, sizeof(rt_hdr), NLMSG_ALIGNTO);
+	if (ret < 0) {
+		err = -ENOMEM;
+		goto err_free_msg;
+	}
 
-		if (strcmp(file_content, globals->interface) != 0)
-			goto free_line;
+	ret = nla_put_u32(msg, IFLA_MASTER, ifindex);
+	if (ret < 0) {
+		err = -ENOMEM;
+		goto err_free_msg;
+	}
 
-		free(file_content);
-		file_content = NULL;
+	ret = nl_send_auto_complete(sock, msg);
+	if (ret < 0)
+		goto err_free_msg;
 
-		snprintf(path_buff, PATH_BUFF_LEN, SYS_IFACE_STATUS_FMT, iface_dir->d_name);
-		file_content = read_file(path_buff);
-		if (!file_content)
-			continue;
+	nl_recvmsgs(sock, cb);
 
-		content_newline = strstr(file_content, "\n");
-		if (content_newline)
-			*content_newline = '\0';
+err_free_msg:
+	nlmsg_free(msg);
+err_free_cb:
+	nl_cb_put(cb);
+err_free_sock:
+	nl_socket_free(sock);
 
-		if (strcmp(file_content, "active") == 0)
-			get_if_index_byname(globals, iface_dir->d_name);
+	return err;
+}
 
-free_line:
-		free(file_content);
-		file_content = NULL;
-	}
+struct register_interfaces_rtnl_arg {
+	struct globals *globals;
+	int ifindex;
+};
 
-	free(path_buff);
-	closedir(iface_base_dir);
-	return EXIT_SUCCESS;
+static struct nla_policy link_policy[IFLA_MAX + 1] = {
+	[IFLA_IFNAME] = { .type = NLA_STRING, .maxlen = IFNAMSIZ },
+	[IFLA_MASTER] = { .type = NLA_U32 },
+};
+
+static int register_interfaces_rtnl_parse(struct nl_msg *msg, void *arg)
+{
+	struct register_interfaces_rtnl_arg *register_arg = arg;
+	struct nlattr *attrs[IFLA_MAX + 1];
+	char path_buff[PATH_BUFF_LEN];
+	struct ifinfomsg *ifm;
+	char *content_newline;
+	char *file_content;
+	char *ifname;
+	int master;
+	int ret;
+
+	ifm = nlmsg_data(nlmsg_hdr(msg));
+	ret = nlmsg_parse(nlmsg_hdr(msg), sizeof(*ifm), attrs, IFLA_MAX,
+			  link_policy);
+	if (ret < 0)
+		goto err;
+
+	if (!attrs[IFLA_IFNAME])
+		goto err;
+
+	if (!attrs[IFLA_MASTER])
+		goto err;
+
+	ifname = nla_get_string(attrs[IFLA_IFNAME]);
+	master = nla_get_u32(attrs[IFLA_MASTER]);
+
+	/* required on older kernels which don't prefilter the results */
+	if (master != register_arg->ifindex)
+		goto err;
+
+	snprintf(path_buff, PATH_BUFF_LEN, SYS_IFACE_STATUS_FMT, ifname);
+	file_content = read_file(path_buff);
+	if (!file_content)
+		goto free_file;
+
+	content_newline = strstr(file_content, "\n");
+	if (content_newline)
+		*content_newline = '\0';
+
+	if (strcmp(file_content, "active") != 0)
+		goto err;
+
+	get_if_index_byname(register_arg->globals, ifname);
 
-err_buff:
-	free(path_buff);
+free_file:
+	free(file_content);
+	file_content = NULL;
 err:
-	return EXIT_FAILURE;
+	return NL_OK;
+}
+
+static int register_interfaces(struct globals *globals)
+{
+	struct register_interfaces_rtnl_arg register_arg = {
+		.globals = globals,
+	};
+
+	register_arg.ifindex = if_nametoindex(globals->interface);
+	if (!globals->interface)
+		return EXIT_FAILURE;
+
+
+	query_rtnl_link(register_arg.ifindex, register_interfaces_rtnl_parse,
+			&register_arg);
+
+	return EXIT_SUCCESS;
 }
 
 static const int parse_orig_list_mandatory[] = {
diff --git a/vis/vis.h b/vis/vis.h
index 178406c..36bdecc 100644
--- a/vis/vis.h
+++ b/vis/vis.h
@@ -25,7 +25,6 @@
 
 #define SYS_IFACE_PATH				"/sys/class/net"
 #define DEBUG_BATIF_PATH_FMT			"%s/batman_adv/%s"
-#define SYS_MESH_IFACE_FMT			SYS_IFACE_PATH"/%s/batman_adv/mesh_iface"
 #define SYS_IFACE_STATUS_FMT			SYS_IFACE_PATH"/%s/batman_adv/iface_status"
 
 
-- 
2.20.1

