Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [IPv6:2a01:4f8:141:3341:78:46:248:236])
	by mail.lfdr.de (Postfix) with ESMTPS id A8EA510C849
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 28 Nov 2019 12:58:59 +0100 (CET)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id F023D819A9;
	Thu, 28 Nov 2019 12:57:45 +0100 (CET)
Received: from dvalin.narfation.org (dvalin.narfation.org
 [IPv6:2a00:17d8:100::8b1])
 by open-mesh.org (Postfix) with ESMTPS id 9A1B4800FC
 for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 28 Nov 2019 12:56:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
 s=20121; t=1574942169;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=SY8YinyWkZoES+wKiYpSx+mWymhCny8U8uHWjzMpGkU=;
 b=p8/gSg4K/Kt4tBlROeMq9iwkMEjj9xryQSMLezW+jS8LLzPogaGbz2zQNK6+WIgc89WHE0
 QCR1uzZOjqfwqpekGSAs2+mhE0v09RpcQsBttk49Bcgiv8B+7MfF+I48knljX6l6jET6av
 CFZ5lk9VhzCx82AhPVu/mGAoDwhXnJw=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: [PATCH] batman-adv: Annotate bitwise integer pointer casts
Date: Thu, 28 Nov 2019 12:55:58 +0100
Message-Id: <20191128115558.9435-1-sven@narfation.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

The sparse commit 6002ded74587 ("add a flag to warn on casts to/from
bitwise pointers") introduced a check for non-direct casts from/to
restricted datatypes (when -Wbitwise-pointer is enabled).

This triggered various warnings in batman-adv when some (already big
endian) buffer content was casted to/from the corresponding big endian
integer data types. But these were correct and can therefore be marked with
__force to signalize sparse an intended cast from/to a bitwise type.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 net/batman-adv/bridge_loop_avoidance.c | 2 +-
 net/batman-adv/distributed-arp-table.c | 8 +++++---
 2 files changed, 6 insertions(+), 4 deletions(-)

diff --git a/net/batman-adv/bridge_loop_avoidance.c b/net/batman-adv/bridge_loop_avoidance.c
index 663a53b6..0eff3358 100644
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
index b0af3a11..5004e38f 100644
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

