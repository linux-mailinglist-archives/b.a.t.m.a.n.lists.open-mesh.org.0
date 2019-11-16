Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [IPv6:2a01:4f8:141:3341:78:46:248:236])
	by mail.lfdr.de (Postfix) with ESMTPS id EB31EFEB25
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 16 Nov 2019 08:38:10 +0100 (CET)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id EE129804DE;
	Sat, 16 Nov 2019 08:37:48 +0100 (CET)
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
 by open-mesh.org (Postfix) with ESMTPS id 4B5F88009F
 for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 16 Nov 2019 08:37:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
 s=20121; t=1573889349;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=Mruv46+0nwFeewGSxoIsAdaw8oZD2GeuBQR2zKB2Jzo=;
 b=BlwYqwxEGZ3pnENLk4TzTVeWa0pc9qXsmqJFr1dcrgwjHCtw9iS+4q7AOVLeNafaWSdeCh
 SwLNTzNjgVTacg3J/vxCN8HxXsZ5k3wtX2hJvKLmKZ+hV0Xasi90c+empapSnXz0HG8tm4
 6MX5C4ilZxd+rzS77D5n6O6QLB3adv0=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: [PATCH] batman-adv: Fix typo metAdata
Date: Sat, 16 Nov 2019 08:28:58 +0100
Message-Id: <20191116072858.25060-1-sven@narfation.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1573889860;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:dkim-signature;
 bh=Mruv46+0nwFeewGSxoIsAdaw8oZD2GeuBQR2zKB2Jzo=;
 b=UvFgljDbCqcoBObtDBDdMxevnvKIG0JoAU+Kn41SOrCUbQHYXAIVQHyLPVfosIhGmi6+fN
 iaHtVTRFCuHHlHWpNhrGoB7xEzGkDfkCdmhqZsMrE2E4X1NXZ6i0ZnV2SuRf/98oL2W9x0
 mlMKaCmMq4nty6By93diD3Xeo/bv6cw=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1573889860; a=rsa-sha256; cv=none;
 b=2izIxL21veOBp8uolTnRZ33W4Cj86ZA9GuEMQeTMo3CnhhLIiXsXwkozm5T5StBnHB73HY
 fPZat49QBtiyaWIaE6LgbrpBu/C7yeukA1LPgtheiBbtEjDASxYMFsHD+v0obsibcpHYeU
 NnYbqhghPtn0eWpn9Tkc6nt75f/cIt0=
ARC-Authentication-Results: i=1; open-mesh.org;
 dkim=pass header.d=narfation.org header.s=20121 header.b=BlwYqwxE;
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

Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 net/batman-adv/types.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/net/batman-adv/types.h b/net/batman-adv/types.h
index 47718a82eaf2..bdf9827b5f63 100644
--- a/net/batman-adv/types.h
+++ b/net/batman-adv/types.h
@@ -457,7 +457,7 @@ struct batadv_orig_node {
 	/**
 	 * @tt_lock: prevents from updating the table while reading it. Table
 	 *  update is made up by two operations (data structure update and
-	 *  metdata -CRC/TTVN-recalculation) and they have to be executed
+	 *  metadata -CRC/TTVN-recalculation) and they have to be executed
 	 *  atomically in order to avoid another thread to read the
 	 *  table/metadata between those.
 	 */
@@ -1011,7 +1011,7 @@ struct batadv_priv_tt {
 	/**
 	 * @commit_lock: prevents from executing a local TT commit while reading
 	 *  the local table. The local TT commit is made up by two operations
-	 *  (data structure update and metdata -CRC/TTVN- recalculation) and
+	 *  (data structure update and metadata -CRC/TTVN- recalculation) and
 	 *  they have to be executed atomically in order to avoid another thread
 	 *  to read the table/metadata between those.
 	 */
-- 
2.20.1

