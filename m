Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [IPv6:2a01:4f8:141:3341:78:46:248:236])
	by mail.lfdr.de (Postfix) with ESMTPS id CB42013AC3F
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 14 Jan 2020 15:25:08 +0100 (CET)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 16A34803AF;
	Tue, 14 Jan 2020 15:24:10 +0100 (CET)
Received: from simonwunderlich.de (packetmixer.de
 [IPv6:2001:4d88:2000:24::c0de])
 by open-mesh.org (Postfix) with ESMTPS id 02BB2800E2
 for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 14 Jan 2020 15:23:54 +0100 (CET)
Received: from kero.packetmixer.de
 (p200300C5970F1B0095082C17D9AE8553.dip0.t-ipconnect.de
 [IPv6:2003:c5:970f:1b00:9508:2c17:d9ae:8553])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by simonwunderlich.de (Postfix) with ESMTPSA id BE9726206F;
 Tue, 14 Jan 2020 15:23:53 +0100 (CET)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: davem@davemloft.net
Subject: [PATCH 4/7] batman-adv: ELP - use wifi tx bitrate as fallback
 throughput
Date: Tue, 14 Jan 2020 15:23:48 +0100
Message-Id: <20200114142351.26622-5-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200114142351.26622-1-sw@simonwunderlich.de>
References: <20200114142351.26622-1-sw@simonwunderlich.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1579011834;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=3HLAi45LF8RErqM47tmR1PEhHb4Cq/sbGaWPcYkakA0=;
 b=m5WazvHJj8lsx2lkh3nsNN2i2+lQqu2upxK0Ogh1Q2nv89pNUQPWbC1M5vaD4X2qr9Zuz/
 W5tt1sINAYjlLTtyecoMbZETgJXmwI5bqHGesHXkZont7DrWTKlvwZeTLH6IVs17kEGLbo
 Z4tPATF+mEhU+C1PQa3NnWFJe7Y4v/Q=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1579011834; a=rsa-sha256; cv=none;
 b=x7LFioQOecAftZ3yAa77MZrxzn4X/e4DVyhVU9gGvpybOZs1OeAQtXs+cCNv/QN5Edh2lS
 imfZDme1JLRL0TbPJhigeys3FRso2bvXnp+fNax81I53Pkdu4ICDQ/ppBaUMN/2pOeJzPM
 1KppgYL4WgHDMnoIXusQeJ4V9q4f5Ps=
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
Cc: Marek Lindner <mareklindner@neomailbox.ch>, netdev@vger.kernel.org,
 b.a.t.m.a.n@lists.open-mesh.org
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

From: René Treffer <treffer@measite.de>

Some wifi drivers (e.g. ath10k) provide per-station rx/tx values but no
estimated throughput. Setting a better estimate than the default 1 MBit
makes these devices work well with B.A.T.M.A.N. V.

Signed-off-by: René Treffer <treffer@measite.de>
Signed-off-by: Marek Lindner <mareklindner@neomailbox.ch>
Signed-off-by: Sven Eckelmann <sven@narfation.org>
Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
---
 net/batman-adv/bat_v_elp.c | 13 ++++++++++---
 1 file changed, 10 insertions(+), 3 deletions(-)

diff --git a/net/batman-adv/bat_v_elp.c b/net/batman-adv/bat_v_elp.c
index 2614a9caee00..6536e8cc53a0 100644
--- a/net/batman-adv/bat_v_elp.c
+++ b/net/batman-adv/bat_v_elp.c
@@ -107,10 +107,17 @@ static u32 batadv_v_elp_get_throughput(struct batadv_hardif_neigh_node *neigh)
 		}
 		if (ret)
 			goto default_throughput;
-		if (!(sinfo.filled & BIT(NL80211_STA_INFO_EXPECTED_THROUGHPUT)))
-			goto default_throughput;
 
-		return sinfo.expected_throughput / 100;
+		if (sinfo.filled & BIT(NL80211_STA_INFO_EXPECTED_THROUGHPUT))
+			return sinfo.expected_throughput / 100;
+
+		/* try to estimate the expected throughput based on reported tx
+		 * rates
+		 */
+		if (sinfo.filled & BIT(NL80211_STA_INFO_TX_BITRATE))
+			return cfg80211_calculate_bitrate(&sinfo.txrate) / 3;
+
+		goto default_throughput;
 	}
 
 	/* if not a wifi interface, check if this device provides data via
-- 
2.20.1

