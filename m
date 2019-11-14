Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [IPv6:2a01:4f8:141:3341:78:46:248:236])
	by mail.lfdr.de (Postfix) with ESMTPS id 40125FD041
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 14 Nov 2019 22:22:43 +0100 (CET)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 77E0F8079F;
	Thu, 14 Nov 2019 22:22:33 +0100 (CET)
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
 by open-mesh.org (Postfix) with ESMTPS id 1819B8020F
 for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 14 Nov 2019 22:22:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
 s=20121; t=1573765970;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=DJa/1g+/Hy/hC7MjFNgGZ7SyApRX0av5FutGQROzsmE=;
 b=ZB3nYESMsN+gLVVj//bo140eResCVr8PJZVxjMQ8gsZz40/jnXrvOzRSbIUhXyrOeBJ+xh
 GF+P7NxrJpx/lpX00FqChwbCciwrF6MisVdD/Tb02L4+iNiS/8lU/k9L8ExmLeVO4biqHh
 fh/53K93IeamYpFiFdDvPK8nf85YfQs=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: [PATCH] batman-adv: Strip dots from variable macro kerneldoc
Date: Thu, 14 Nov 2019 22:12:37 +0100
Message-Id: <20191114211237.19063-1-sven@narfation.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1573766549;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:dkim-signature;
 bh=DJa/1g+/Hy/hC7MjFNgGZ7SyApRX0av5FutGQROzsmE=;
 b=gu46HpWP5AvmWMEsHzqX6fhJ6hPieEYwhF4jDGXnXAX94B0VZvzzy42rKu5CHxk5gcw4fm
 LwscUqrCxEHiBGJyUo8ertMmMsLLBei1B8QgW+FWCYnUW42l/buETiUCwR1cu+ezOTzdCL
 piOzUoQI13ngXBOEaX2NPavtW1rlbno=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1573766549; a=rsa-sha256; cv=none;
 b=XR/bA2j5sQ9r2Smhv/0JigbACRFP+hPerPax8vpUGSOU2tP/ZM06Ayks25HgKsBL3WUDl1
 /CjENykHfQ16wQC9jk6wHQ1ZMpCfAEOU4Qytgy/RDciW+fac1QhUBMRDIV/ydCmMkX+aMw
 +7cAsBD6yT45nQnm9gcpcvrrjC9n3cU=
ARC-Authentication-Results: i=1; open-mesh.org;
 dkim=pass header.d=narfation.org header.s=20121 header.b=ZB3nYESM;
 spf=pass (open-mesh.org: domain of sven@narfation.org designates 213.160.73.56
 as permitted sender) smtp.mailfrom=sven@narfation.org
X-BeenThere: b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 2.1.29
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

The commit 43756e347f21 ("scripts/kernel-doc: Add support for named
variable macro arguments") changed the handling of variable macro
parameters. The three dots of the argument must no longer be added to the
kernel doc. The support for the old format is scheduled to be removed in
the future.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 net/batman-adv/log.h | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/net/batman-adv/log.h b/net/batman-adv/log.h
index 741cfa3719ff..41fd900121c5 100644
--- a/net/batman-adv/log.h
+++ b/net/batman-adv/log.h
@@ -74,7 +74,7 @@ __printf(2, 3);
  * @bat_priv: the bat priv with all the soft interface information
  * @ratelimited: whether output should be rate limited
  * @fmt: format string
- * @arg...: variable arguments
+ * @arg: variable arguments
  */
 #define _batadv_dbg(type, bat_priv, ratelimited, fmt, arg...)		\
 	do {								\
@@ -98,7 +98,7 @@ static inline void _batadv_dbg(int type __always_unused,
  * batadv_dbg() - Store debug output without ratelimiting
  * @type: type of debug message
  * @bat_priv: the bat priv with all the soft interface information
- * @arg...: format string and variable arguments
+ * @arg: format string and variable arguments
  */
 #define batadv_dbg(type, bat_priv, arg...) \
 	_batadv_dbg(type, bat_priv, 0, ## arg)
@@ -107,7 +107,7 @@ static inline void _batadv_dbg(int type __always_unused,
  * batadv_dbg_ratelimited() - Store debug output with ratelimiting
  * @type: type of debug message
  * @bat_priv: the bat priv with all the soft interface information
- * @arg...: format string and variable arguments
+ * @arg: format string and variable arguments
  */
 #define batadv_dbg_ratelimited(type, bat_priv, arg...) \
 	_batadv_dbg(type, bat_priv, 1, ## arg)
@@ -116,7 +116,7 @@ static inline void _batadv_dbg(int type __always_unused,
  * batadv_info() - Store message in debug buffer and print it to kmsg buffer
  * @net_dev: the soft interface net device
  * @fmt: format string
- * @arg...: variable arguments
+ * @arg: variable arguments
  */
 #define batadv_info(net_dev, fmt, arg...)				\
 	do {								\
@@ -130,7 +130,7 @@ static inline void _batadv_dbg(int type __always_unused,
  * batadv_err() - Store error in debug buffer and print it to kmsg buffer
  * @net_dev: the soft interface net device
  * @fmt: format string
- * @arg...: variable arguments
+ * @arg: variable arguments
  */
 #define batadv_err(net_dev, fmt, arg...)				\
 	do {								\
-- 
2.20.1

