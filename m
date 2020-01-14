Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [IPv6:2a01:4f8:141:3341:78:46:248:236])
	by mail.lfdr.de (Postfix) with ESMTPS id DCD1013AC3C
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 14 Jan 2020 15:24:36 +0100 (CET)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id A555B8072E;
	Tue, 14 Jan 2020 15:24:03 +0100 (CET)
Received: from simonwunderlich.de (packetmixer.de
 [IPv6:2001:4d88:2000:24::c0de])
 by open-mesh.org (Postfix) with ESMTPS id 48FEE800E2
 for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 14 Jan 2020 15:23:53 +0100 (CET)
Received: from kero.packetmixer.de
 (p200300C5970F1B0095082C17D9AE8553.dip0.t-ipconnect.de
 [IPv6:2003:c5:970f:1b00:9508:2c17:d9ae:8553])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by simonwunderlich.de (Postfix) with ESMTPSA id ED8146206C;
 Tue, 14 Jan 2020 15:23:52 +0100 (CET)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: davem@davemloft.net
Subject: [PATCH 2/7] batman-adv: Strip dots from variable macro kerneldoc
Date: Tue, 14 Jan 2020 15:23:46 +0100
Message-Id: <20200114142351.26622-3-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200114142351.26622-1-sw@simonwunderlich.de>
References: <20200114142351.26622-1-sw@simonwunderlich.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1579011833;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=esP2LVKdpJz9TyY3rhnZMYrQJGCA0jTqH/Z2pHuFkjk=;
 b=r3FSHyuQ/4qsycDG8u43qAV8c8oVl5SOpCr8NzHaMgM99HC8BeWzHJx5aouVh6jlk7QesY
 WjiZKR/lsxWpvXeoM81MNlyYJSIMa21eWISvT/Anb+AjfVmbSNVZ32XUlDH7ywLJVruzXh
 b3lQwTn6aS7att1YTmjewo3Kz7NbZuQ=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1579011833; a=rsa-sha256; cv=none;
 b=zjQ1W8FuPXw/NAoaGAgOZEuBthN4PmLSJyKL8wWa68cd3PCz6mKDaQB0YBsZ5vCOLUWBPd
 2KVJw9s+/nSY6PUDio4VMn5ICUrkRWnRMW6a7BQevYKAU8TXHoAp56KmGHT0SH0vwKqPVL
 ia7jV5UfyAOJBYzato8JylKeGXQfiZQ=
ARC-Authentication-Results: i=1; open-mesh.org; dkim=none;
 spf=pass (open-mesh.org: domain of sw@simonwunderlich.de designates
 2001:4d88:2000:24::c0de as permitted sender)
 smtp.mailfrom=sw@simonwunderlich.de
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
Cc: netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

From: Sven Eckelmann <sven@narfation.org>

The commit 43756e347f21 ("scripts/kernel-doc: Add support for named
variable macro arguments") changed the handling of variable macro
parameters. The three dots of the argument must no longer be added to the
kernel doc. The support for the old format is scheduled to be removed in
the future.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
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

