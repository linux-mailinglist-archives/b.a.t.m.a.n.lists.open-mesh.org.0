Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [78.46.248.236])
	by mail.lfdr.de (Postfix) with ESMTPS id 331A713AC3D
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 14 Jan 2020 15:24:56 +0100 (CET)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id EAEAB8090B;
	Tue, 14 Jan 2020 15:24:05 +0100 (CET)
Received: from simonwunderlich.de (packetmixer.de
 [IPv6:2001:4d88:2000:24::c0de])
 by open-mesh.org (Postfix) with ESMTPS id A3911803AF
 for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 14 Jan 2020 15:23:53 +0100 (CET)
Received: from kero.packetmixer.de
 (p200300C5970F1B0095082C17D9AE8553.dip0.t-ipconnect.de
 [IPv6:2003:c5:970f:1b00:9508:2c17:d9ae:8553])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by simonwunderlich.de (Postfix) with ESMTPSA id 5F8A96206D;
 Tue, 14 Jan 2020 15:23:53 +0100 (CET)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: davem@davemloft.net
Subject: [PATCH 3/7] batman-adv: Fix typo metAdata
Date: Tue, 14 Jan 2020 15:23:47 +0100
Message-Id: <20200114142351.26622-4-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200114142351.26622-1-sw@simonwunderlich.de>
References: <20200114142351.26622-1-sw@simonwunderlich.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1579011834;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=KRQ6CPJrVQFXw9Pql5ZozFRlz2tTgWDbs2MRhsVbi0s=;
 b=pLTT2JiJCuO1LUIopSZ0ZGzq9YPOvzQ/AgIr5CfodSSd3UbwtH+zCkXwRO7WU0Vf/fIxAp
 UwdQuXurqKh4Ghf5dMSYGPHkb41+2ryd+oxKrk6Pz9me6/ukUSzjpLQT2KB1J1E9C6BDG7
 xqsLQkoh0lca9XAFubV7Om6Tk/5VwaE=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1579011834; a=rsa-sha256; cv=none;
 b=RoX3ff0+g+SgE6jx2bSYOZ+G99WGnP64Gj5u9+RhkGQEng7VRp/FQDq6R0mlz1cAtGpPzZ
 bNVo90w4iRQf2g8NmjVPyZuQOZkdZVS20/cearnv/W5s1DlvRQ++e17lqi4bXkbN1hWoY+
 DLGuo1SQfdbDC+nxsmA4oJ4rOaRT+nc=
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

Signed-off-by: Sven Eckelmann <sven@narfation.org>
Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
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

