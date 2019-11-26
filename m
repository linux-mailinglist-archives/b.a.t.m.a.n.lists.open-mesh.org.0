Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [78.46.248.236])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FDAC1097D0
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 26 Nov 2019 03:28:24 +0100 (CET)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 481898063B;
	Tue, 26 Nov 2019 03:28:16 +0100 (CET)
Received: from s2.neomailbox.net (s2.neomailbox.net [5.148.176.60])
 by open-mesh.org (Postfix) with ESMTPS id AD25C800A6
 for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 26 Nov 2019 03:28:09 +0100 (CET)
From: Marek Lindner <mareklindner@neomailbox.ch>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: [PATCH] batman-adv: ELP - use wifi tx bitrate as fallback throughput
Date: Tue, 26 Nov 2019 10:27:38 +0800
Message-Id: <20191126022738.29214-1-mareklindner@neomailbox.ch>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1574735290;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=ZniTxe4WJpRQUMwl8azakqGBnczUN9JsgEi7iHM4IW8=;
 b=U7VGGaGlzF5qn6DdGVzJlC/6mfpxrCm+8CjjBV2ciHGoG4AzHT+qq5Hby5It+bwEZSqRXQ
 2p7RnhlJFlfYn93qCBZYS/aqcscSqiHc66CHDv+UmvWmcIfAQj48l86AZxDEYC/4J0qDO2
 Dk8KVnEJ2ccPHR12KpKA4Gs19I6KT2Y=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1574735290; a=rsa-sha256; cv=none;
 b=tbbVZEXVUpkq5bxZjaCzhsvhIy8xQbKCJpDO2+FccU/52hevLFF4bbQGI+iy8R4TPgq8KG
 ccR75EZYwNAwbMUv1UonWNf1Q+rJ2QM0iQCdCIdhmJoTgcxh9r8saZOBzrmhsgIGTIKgd/
 5nrTkpGsLO6VzBP8lUtULaHLNl5EFEk=
ARC-Authentication-Results: i=1; open-mesh.org; dkim=none;
 spf=pass (open-mesh.org: domain of mareklindner@neomailbox.ch designates
 5.148.176.60 as permitted sender) smtp.mailfrom=mareklindner@neomailbox.ch
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
Cc: Marek Lindner <mareklindner@neomailbox.ch>
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

From: René Treffer <treffer@measite.de>

Some wifi drivers (e.g. ath10k) provide per-station rx/tx values but no
estimated throughput. Setting a better estimate than the default 1 MBit
makes these devices work well with B.A.T.M.A.N. V.

Signed-off-by: René Treffer <treffer@measite.de>
Signed-off-by: Marek Lindner <mareklindner@neomailbox.ch>
---
 net/batman-adv/bat_v_elp.c | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/net/batman-adv/bat_v_elp.c b/net/batman-adv/bat_v_elp.c
index 2614a9ca..1e852d4b 100644
--- a/net/batman-adv/bat_v_elp.c
+++ b/net/batman-adv/bat_v_elp.c
@@ -107,10 +107,15 @@ static u32 batadv_v_elp_get_throughput(struct batadv_hardif_neigh_node *neigh)
 		}
 		if (ret)
 			goto default_throughput;
-		if (!(sinfo.filled & BIT(NL80211_STA_INFO_EXPECTED_THROUGHPUT)))
-			goto default_throughput;
 
-		return sinfo.expected_throughput / 100;
+		if (sinfo.filled & BIT(NL80211_STA_INFO_EXPECTED_THROUGHPUT))
+			return sinfo.expected_throughput / 100;
+
+		/* try to estimate en expected throughput based on reported tx rates */
+		if (sinfo.filled & BIT(NL80211_STA_INFO_TX_BITRATE))
+			return cfg80211_calculate_bitrate(&sinfo.txrate) / 3;
+
+		goto default_throughput;
 	}
 
 	/* if not a wifi interface, check if this device provides data via
-- 
2.23.0

