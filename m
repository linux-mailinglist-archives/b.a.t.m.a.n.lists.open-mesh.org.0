Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 22E399727A5
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 10 Sep 2024 05:27:31 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id C565E83CE9
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 10 Sep 2024 05:27:30 +0200 (CEST)
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1725938850;
 b=bBmegoAsG7/a3+f7OI54pL73pWrP+0cokgN70VgG4nurTtsJUGtVD3zzrUnz/JzaBibLn
 Y3HWlsNJb6iI2xEPpEwt0jNbc1kOvU1lmOwOzZQ2A5mUbsx/ax3KzclPCUq99M3nApYkLwX
 4mJgbRunx4UVhwQkYn1i0lMq5t40Mb8=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1725938850; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=m9dnPvxFUCKk1B5gpFXiYuQhJDTW5JtOINzkFWOO9Po=;
 b=3rka87EI5Ir16m2nWpT9fgUfd/nc1UNhtptcoqzzY85AVE3BxZEpjcKrhJ1QHQld/A2yv
 /R5e4TxOw1mpJ1BpUAjEznFQOfuZMauP2BEOjXzl1ii7ZVqLnkepc7vn+34M9tOmSi+BstW
 tV94x72iieQgnETMCq7Q1QAI6H+8i80=
ARC-Authentication-Results: i=1; open-mesh.org; dkim=fail;
  arc=none (Message is not ARC signed);
  dmarc=fail (Used From Domain Record) header.from=gmail.com
 policy.dmarc=quarantine
Authentication-Results: open-mesh.org; dkim=fail;
 arc=none (Message is not ARC signed);
 dmarc=fail (Used From Domain Record) header.from=gmail.com
 policy.dmarc=quarantine
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 049CA80F2D
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 10 Sep 2024 05:27:14 +0200 (CEST)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: [PATCH v2] batctl: Dynamically select header format in
 netlink_print_neighbors
From: noahbpeterson1997@gmail.com
To: b.a.t.m.a.n@lists.open-mesh.org
Date: Tue, 10 Sep 2024 03:27:14 -0000
Message-ID: <172593883400.1027.14861329029277869493@diktynna.open-mesh.org>
User-Agent: HyperKitty on https://lists.open-mesh.org/
Message-ID-Hash: YDDKAJNBI4CXWY4AWTLIZZ7BSGA573TJ
X-Message-ID-Hash: YDDKAJNBI4CXWY4AWTLIZZ7BSGA573TJ
X-MailFrom: noahbpeterson1997@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency;
 loop; banned-address; member-moderation;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-0;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-1;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-2; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.8
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/YDDKAJNBI4CXWY4AWTLIZZ7BSGA573TJ/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

The netlink_print_neighbors() function previously used a static header format, which did not account for variations between the neighbor list output from different BATMAN routing algorithms (BATMAN_IV vs. BATMAN_V).

This patch introduces a dynamic header selection mechanism that adjusts the output format based on the active routing algorithm:
- For BATMAN_IV, the header is set to "IF             Neighbor              last-seen".
- For BATMAN_V, it changes to "         Neighbor   last-seen      speed           IF".

This change ensures that the table header output in `batctl n` is accurate for both BATMAN routing algorithms.
Signed-off-by: Noah Peterson <noahbpeterson1997@gmail.com>
---
 neighbors.c | 22 +++++++++++++++++++++-
 1 file changed, 21 insertions(+), 1 deletion(-)
diff --git a/neighbors.c b/neighbors.c
index 3102b0e..f34952b 100644
--- a/neighbors.c
+++ b/neighbors.c
@@ -6,6 +6,7 @@
  * License-Filename: LICENSES/preferred/GPL-2.0
  */
 
+#include <errno.h>
 #include <net/if.h>
 #include <netinet/if_ether.h>
 #include <netlink/netlink.h>
@@ -119,9 +120,28 @@ static int netlink_print_neighbors(struct state *state, char *orig_iface,
 				   int read_opts, float orig_timeout,
 				   float watch_interval)
 {
+	char *header = NULL;
+	char *info_header;
+
+	/* only parse routing algorithm name */
+	last_err = -EINVAL;
+	info_header = netlink_get_info(state, BATADV_CMD_GET_ORIGINATORS, NULL);
+	free(info_header);
+
+	if (strlen(algo_name_buf) == 0)
+		return last_err;
+
+	if (!strcmp("BATMAN_IV", algo_name_buf))
+		header = "IF             Neighbor              last-seen\n";
+	if (!strcmp("BATMAN_V", algo_name_buf))
+		header = "         Neighbor   last-seen      speed           IF\n";
+
+	if (!header)
+		return -EINVAL;
+
 	return netlink_print_common(state, orig_iface, read_opts,
 				    orig_timeout, watch_interval,
-				    "IF             Neighbor              last-seen\n",
+				    header,
 				    BATADV_CMD_GET_NEIGHBORS,
 				    neighbors_callback);
 }
