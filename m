Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [IPv6:2a01:4f8:141:3341:78:46:248:236])
	by mail.lfdr.de (Postfix) with ESMTPS id B06074B331
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 19 Jun 2019 09:38:07 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 0920B818CF;
	Wed, 19 Jun 2019 09:38:01 +0200 (CEST)
Received: from durin.narfation.org (durin.narfation.org
 [IPv6:2001:4d88:2000:7::2])
 by open-mesh.org (Postfix) with ESMTPS id 19CE881228
 for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 19 Jun 2019 09:37:58 +0200 (CEST)
Received: from sven-desktop.home.narfation.org
 (p200300C59703E2FE00000000000003ED.dip0.t-ipconnect.de
 [IPv6:2003:c5:9703:e2fe::3ed])
 by durin.narfation.org (Postfix) with ESMTPSA id BA9E811010D;
 Wed, 19 Jun 2019 09:37:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
 s=20121; t=1560929877;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=yvKJpqrgfATENkAgwvgKHxGc95ojR48Xa0eXWwW/XWI=;
 b=e3TH8Kiu03gKZsz48Ur5tyIfQkl4OBJbHFt4rlDaO5US7W9lcxZI0vewZjPDygNow9ra2N
 +fZSbm093dbcF5DdQQhbCUWjZEjzaPWndevftflLbjqHe4wS8oQVHGPCmF4qjdcPvX/zHV
 BwGbzlcxRiORRkkgWobnRsO3TBstAsg=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: [PATCH] batctl: Prefer netlink hardif status retrieval over sysfs
Date: Wed, 19 Jun 2019 09:37:50 +0200
Message-Id: <20190619073750.19810-1-sven@narfation.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org; 
 s=20121; t=1560929877;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=yvKJpqrgfATENkAgwvgKHxGc95ojR48Xa0eXWwW/XWI=;
 b=VPmUOkk0S8Wd+gLJl9osDG6SdIkXcg/0uLnI15ey6yWJpgXODiYWdDi1igcrLgN8lmXzD9
 5EUgXuTtS7KAHVYafUgac30FRh5kxzEgEeEtUJg7E1S+d4w3c+Y91D7BD2hWD8GmYmHeNB
 uIpiOeIG0MVK1+b4wUuv8Bbt2UeemPA=
ARC-Seal: i=1; s=20121; d=narfation.org; t=1560929877; a=rsa-sha256; cv=none;
 b=vggIeo41DI44briwIRU1okk/PF0NfkwQxe5E67iYrkF74ywsf2fJYeDvpdZi7OZ1imFIuT
 CsI65PMnChXzbhUgRqrhMWFubK1sfNF+phSejZpj2DqrnWicLO1e3zTPhRDfI+RZKlah0J
 SJPkMmC1EbymdI94SPuoCpr1SG9CSyc=
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

The sysfs code in batman-adv was changed to print a deprecated warning when
sysfs files are accessed. The `batctl if` call would therefore cause
warnings like this in the kernel log:

  batman_adv: [Deprecated]: batctl (pid 18540) Use of sysfs file "iface_status".
  Use batadv genl family instead

It is now appropriate to try the generic netlink BATADV_CMD_GET_HARDIF
request first to get the status of the interface before falling back to
sysfs.

Reported-by: Linus Lüssing <linus.luessing@c0d3.blue>
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 interface.c | 29 ++++++++++++++++++-----------
 1 file changed, 18 insertions(+), 11 deletions(-)

diff --git a/interface.c b/interface.c
index 5ff25a7..0a694c9 100644
--- a/interface.c
+++ b/interface.c
@@ -67,18 +67,18 @@ static int get_iface_status_netlink_parse(struct nl_msg *msg, void *arg)
 static char *get_iface_status_netlink(unsigned int meshif, unsigned int hardif,
 				      char *iface_status)
 {
+	char *ret_status = NULL;
 	struct nl_sock *sock;
 	struct nl_msg *msg;
 	int batadv_family;
 	struct nl_cb *cb;
 	int ret;
 
-	strncpy(iface_status, "<error reading status>\n", IFACE_STATUS_LEN);
-	iface_status[IFACE_STATUS_LEN - 1] = '\0';
+	iface_status[0] = '\0';
 
 	sock = nl_socket_alloc();
 	if (!sock)
-		return iface_status;
+		return NULL;
 
 	ret = genl_connect(sock);
 	if (ret < 0)
@@ -111,6 +111,9 @@ static char *get_iface_status_netlink(unsigned int meshif, unsigned int hardif,
 
 	nl_recvmsgs(sock, cb);
 
+	if (strlen(iface_status) > 0)
+		ret_status = iface_status;
+
 err_free_msg:
 	nlmsg_free(msg);
 err_free_cb:
@@ -118,7 +121,7 @@ static char *get_iface_status_netlink(unsigned int meshif, unsigned int hardif,
 err_free_sock:
 	nl_socket_free(sock);
 
-	return iface_status;
+	return ret_status;
 }
 
 static struct nla_policy link_policy[IFLA_MAX + 1] = {
@@ -161,13 +164,17 @@ static int print_interfaces_rtnl_parse(struct nl_msg *msg, void *arg)
 	if (master != print_arg->ifindex)
 		goto err;
 
-	snprintf(path_buff, sizeof(path_buff), SYS_IFACE_STATUS_FMT, ifname);
-	ret = read_file("", path_buff, USE_READ_BUFF | SILENCE_ERRORS, 0, 0, 0);
-	if (ret != EXIT_SUCCESS)
-		status = get_iface_status_netlink(master, ifm->ifi_index,
-						  iface_status);
-	else
-		status = line_ptr;
+	status = get_iface_status_netlink(master, ifm->ifi_index, iface_status);
+	if (!status) {
+		snprintf(path_buff, sizeof(path_buff), SYS_IFACE_STATUS_FMT,
+			 ifname);
+		ret = read_file("", path_buff, USE_READ_BUFF | SILENCE_ERRORS,
+				0, 0, 0);
+		if (ret != EXIT_SUCCESS)
+			status = "<error reading status>\n";
+		else
+			status = line_ptr;
+	}
 
 	printf("%s: %s", ifname, status);
 
-- 
2.20.1

