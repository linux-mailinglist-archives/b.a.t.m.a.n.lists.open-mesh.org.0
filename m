Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [78.46.248.236])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A1841A936
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 11 May 2019 21:17:24 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id DB57282528;
	Sat, 11 May 2019 21:17:15 +0200 (CEST)
Received: from v3-1039.vlinux.de (narfation.org [79.140.41.39])
 by open-mesh.org (Postfix) with ESMTPS id AF1F480A40
 for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 11 May 2019 21:17:12 +0200 (CEST)
Received: from sven-desktop.home.narfation.org (unknown
 [IPv6:2a00:1ca0:1480:f1fc::4065])
 by v3-1039.vlinux.de (Postfix) with ESMTPSA id 4DA1D1100D9
 for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 11 May 2019 21:17:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
 s=20121; t=1557602232; h=from:from:sender:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:mime-version:mime-version:content-type:
 content-transfer-encoding:content-transfer-encoding:in-reply-to:
 references:openpgp:autocrypt; bh=wzF0i17ZNNy23DJWAnHD/h+UtkFRIQ6VT2xsjmfPKoE=; 
 b=LmQHVLwdq5hooJ7w4QA8bqcnb6yM2EACWu6k17dRVCGDIg+iaZtZnpaUXsfQ7er9OPEiCR
 lqLPsxzeQprYHyQAD/Ez7z12ytI9VHEJ2XyBUOvmzdDyOzptZpjNDUNYnU0WpeKPyARKSY
 IAItdXGFgSg8fPETf14xGXagz0T615Y=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: [PATCH] batman-adv: convert stream-like files from nonseekable_open
 -> stream_open
Date: Sat, 11 May 2019 21:17:09 +0200
Message-Id: <20190511191709.15673-1-sven@narfation.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org; 
 s=20121; t=1557602232;
 h=from:from:sender:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:mime-version:mime-version:content-type:
 content-transfer-encoding:content-transfer-encoding:in-reply-to:
 references:openpgp:autocrypt;
 bh=wzF0i17ZNNy23DJWAnHD/h+UtkFRIQ6VT2xsjmfPKoE=;
 b=OjjBqyjYO5DqB/TwACC+pJRNHRvLLk7OZ7GQ4KHrtaY9WssG3deW+7BVMvnfBu0I4RRHuN
 kgZ23PqLMsoCIpnWJfH+VqxgF/i/3KhWgIIFcU0da21Hs+xJ+HR+tc0uxPoGH5zvop4jH6
 gZKobzD+FtwsYxG2RwYypVDIy5hZynI=
ARC-Seal: i=1; s=20121; d=narfation.org; t=1557602232; a=rsa-sha256; cv=none;
 b=VXi0SVfpD9p63txnY6qlXinEM9rH6kjl1KySXGDlrjSZezIhObRIDrQEjJUioj6JzcXpBH
 X74U+HRQ366o8rr/FWGzYYJMrqHZtUOUhgVB5nLvNWVAxCrVZcxKFOZPU+hxeqiQdXG5nC
 ZKOPR1VKdmeco8qEayJ6zyWwhJXfX0o=
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

From: Kirill Smelkov <kirr@nexedi.com>

Using scripts/coccinelle/api/stream_open.cocci added in 10dce8af3422
("fs: stream_open - opener for stream-like files so that read and write
can run simultaneously without deadlock"), search and convert to
stream_open all in-kernel nonseekable_open users for which read and
write actually do not depend on ppos and where there is no other methods
in file_operations which assume @offset access.

I've verified each generated change manually - that it is correct to convert -
and each other nonseekable_open instance left - that it is either not correct
to convert there, or that it is not converted due to current stream_open.cocci
limitations.

One can also recheck/review the patch via generating it with explanation comments included via

	$ make coccicheck MODE=patch COCCI=scripts/coccinelle/api/stream_open.cocci SPFLAGS="-D explain"

Signed-off-by: Kirill Smelkov <kirr@nexedi.com>
[sven@narfation.org: added compat code]
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
This change is already upstream
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/patch/?id=c5bf68fe0c86a5835bd2e6aead1c49976360753f
---
 compat-include/linux/fs.h    | 11 +++++++++++
 net/batman-adv/icmp_socket.c |  2 +-
 net/batman-adv/log.c         |  2 +-
 3 files changed, 13 insertions(+), 2 deletions(-)

diff --git a/compat-include/linux/fs.h b/compat-include/linux/fs.h
index c52e0e8e..480722f0 100644
--- a/compat-include/linux/fs.h
+++ b/compat-include/linux/fs.h
@@ -31,4 +31,15 @@ static inline struct dentry *batadv_file_dentry(const struct file *file)
 
 #endif /* < KERNEL_VERSION(4, 6, 0) */
 
+#if LINUX_VERSION_CODE < KERNEL_VERSION(5, 2, 0)
+
+static inline int batadv_stream_open(struct inode *inode, struct file *filp)
+{
+	return nonseekable_open(inode, filp);
+}
+
+#define stream_open batadv_stream_open
+
+#endif /* < KERNEL_VERSION(5, 2, 0) */
+
 #endif	/* _NET_BATMAN_ADV_COMPAT_LINUX_FS_H_ */
diff --git a/net/batman-adv/icmp_socket.c b/net/batman-adv/icmp_socket.c
index de81b5ec..0a91c866 100644
--- a/net/batman-adv/icmp_socket.c
+++ b/net/batman-adv/icmp_socket.c
@@ -65,7 +65,7 @@ static int batadv_socket_open(struct inode *inode, struct file *file)
 
 	batadv_debugfs_deprecated(file, "");
 
-	nonseekable_open(inode, file);
+	stream_open(inode, file);
 
 	socket_client = kmalloc(sizeof(*socket_client), GFP_KERNEL);
 	if (!socket_client) {
diff --git a/net/batman-adv/log.c b/net/batman-adv/log.c
index 60ce11e1..f79ebd5b 100644
--- a/net/batman-adv/log.c
+++ b/net/batman-adv/log.c
@@ -90,7 +90,7 @@ static int batadv_log_open(struct inode *inode, struct file *file)
 	batadv_debugfs_deprecated(file,
 				  "Use tracepoint batadv:batadv_dbg instead\n");
 
-	nonseekable_open(inode, file);
+	stream_open(inode, file);
 	file->private_data = inode->i_private;
 	return 0;
 }
-- 
2.20.1

