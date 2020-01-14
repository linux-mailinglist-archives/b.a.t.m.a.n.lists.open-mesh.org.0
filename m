Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [78.46.248.236])
	by mail.lfdr.de (Postfix) with ESMTPS id F35D013AC40
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 14 Jan 2020 15:25:19 +0100 (CET)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 53ADE809FD;
	Tue, 14 Jan 2020 15:24:13 +0100 (CET)
Received: from simonwunderlich.de (packetmixer.de
 [IPv6:2001:4d88:2000:24::c0de])
 by open-mesh.org (Postfix) with ESMTPS id 6581D803D6
 for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 14 Jan 2020 15:23:54 +0100 (CET)
Received: from kero.packetmixer.de
 (p200300C5970F1B0095082C17D9AE8553.dip0.t-ipconnect.de
 [IPv6:2003:c5:970f:1b00:9508:2c17:d9ae:8553])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by simonwunderlich.de (Postfix) with ESMTPSA id 24B9F62070;
 Tue, 14 Jan 2020 15:23:54 +0100 (CET)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: davem@davemloft.net
Subject: [PATCH 5/7] batman-adv: Annotate bitwise integer pointer casts
Date: Tue, 14 Jan 2020 15:23:49 +0100
Message-Id: <20200114142351.26622-6-sw@simonwunderlich.de>
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
 bh=2ofdi6+XZokVMMlC3qt2WQILGeIsiFSnL+UUaiOBHYo=;
 b=HaYQVTe+V6I8aQpTrB7BL5kRVeoXpU5S1IPyfSsNyBP9r+IJCGkptTtsf/qcNosmixltql
 3VwISuwhfloukD4Ny/ryuIs/6pBF9ubXlo+NHDT5hxyL0Py9U9BGCOeGX46r0ey85/pjZP
 v6+g4PFmsRU6Br61l1al7sTOGhsNbJ8=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1579011834; a=rsa-sha256; cv=none;
 b=pTk82GGGmo4Hzos0xId1c2J+dTWpT41fj1IW3g5sQ2L7vKfXcCWOd8feJ3BvDDfaNx1ifx
 92La+14nPGnNoipEX1xktJ3spYU90MC5efHkQzQitIwjammCpZdSQPEK4lh2bbj3PxzVV+
 wbRjY3vPw6rvXnjBFM+9FOIWLeT/TE8=
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

The sparse commit 6002ded74587 ("add a flag to warn on casts to/from
bitwise pointers") introduced a check for non-direct casts from/to
restricted datatypes (when -Wbitwise-pointer is enabled).

This triggered various warnings in batman-adv when some (already big
endian) buffer content was casted to/from the corresponding big endian
integer data types. But these were correct and can therefore be marked with
__force to signalize sparse an intended cast from/to a bitwise type.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
---
 net/batman-adv/bridge_loop_avoidance.c | 2 +-
 net/batman-adv/distributed-arp-table.c | 8 +++++---
 2 files changed, 6 insertions(+), 4 deletions(-)

diff --git a/net/batman-adv/bridge_loop_avoidance.c b/net/batman-adv/bridge_loop_avoidance.c
index 663a53b6d36e..0eff33580f95 100644
--- a/net/batman-adv/bridge_loop_avoidance.c
+++ b/net/batman-adv/bridge_loop_avoidance.c
@@ -844,7 +844,7 @@ static bool batadv_handle_announce(struct batadv_priv *bat_priv, u8 *an_addr,
 
 	/* handle as ANNOUNCE frame */
 	backbone_gw->lasttime = jiffies;
-	crc = ntohs(*((__be16 *)(&an_addr[4])));
+	crc = ntohs(*((__force __be16 *)(&an_addr[4])));
 
 	batadv_dbg(BATADV_DBG_BLA, bat_priv,
 		   "%s(): ANNOUNCE vid %d (sent by %pM)... CRC = %#.4x\n",
diff --git a/net/batman-adv/distributed-arp-table.c b/net/batman-adv/distributed-arp-table.c
index b0af3a11d406..5004e38fe792 100644
--- a/net/batman-adv/distributed-arp-table.c
+++ b/net/batman-adv/distributed-arp-table.c
@@ -246,7 +246,7 @@ static u8 *batadv_arp_hw_src(struct sk_buff *skb, int hdr_size)
  */
 static __be32 batadv_arp_ip_src(struct sk_buff *skb, int hdr_size)
 {
-	return *(__be32 *)(batadv_arp_hw_src(skb, hdr_size) + ETH_ALEN);
+	return *(__force __be32 *)(batadv_arp_hw_src(skb, hdr_size) + ETH_ALEN);
 }
 
 /**
@@ -270,7 +270,9 @@ static u8 *batadv_arp_hw_dst(struct sk_buff *skb, int hdr_size)
  */
 static __be32 batadv_arp_ip_dst(struct sk_buff *skb, int hdr_size)
 {
-	return *(__be32 *)(batadv_arp_hw_src(skb, hdr_size) + ETH_ALEN * 2 + 4);
+	u8 *dst = batadv_arp_hw_src(skb, hdr_size) + ETH_ALEN * 2 + 4;
+
+	return *(__force __be32 *)dst;
 }
 
 /**
@@ -287,7 +289,7 @@ static u32 batadv_hash_dat(const void *data, u32 size)
 	const unsigned char *key;
 	u32 i;
 
-	key = (const unsigned char *)&dat->ip;
+	key = (__force const unsigned char *)&dat->ip;
 	for (i = 0; i < sizeof(dat->ip); i++) {
 		hash += key[i];
 		hash += (hash << 10);
-- 
2.20.1

