Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FA121A6C97
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 13 Apr 2020 21:38:39 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 2F394807F2;
	Mon, 13 Apr 2020 21:38:38 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org
 [IPv6:2a00:17d8:100::8b1])
 by diktynna.open-mesh.org (Postfix) with ESMTPS id C6BAF80085
 for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 13 Apr 2020 21:38:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
 s=20121; t=1586806716;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=YYIg7rJBl2YNtlWTd/ecyKiiOuuy8GtBPgKQgMNmcTw=;
 b=XJges32X9DysZZ6e5NTeKGPIXDVG00i5zdHakKaTAj7Lw3pGBdSamf8WjnW+9JF+xnt77g
 fdi/Ob/3FWUL0d9PC9dPbHgC6G761a7/gNeHZrg8Fnh8h+f9fhDdS32h2B9qMGz+DreMgw
 8nJViMlRAChYRgHteUxEBoj3P/Dh6fM=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: [PATCH] batman-adv: Utilize prandom_u32_max for random [0, max) values
Date: Mon, 13 Apr 2020 21:37:24 +0200
Message-Id: <20200413193725.28182-1-sven@narfation.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1586806716;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:dkim-signature;
 bh=YYIg7rJBl2YNtlWTd/ecyKiiOuuy8GtBPgKQgMNmcTw=;
 b=qJycYVJuAVj9BIgVfRWvqQBqu29wFiK7zr6HeP0JTzyNAJZZEXXA9dMD7urJw0xmwD8u8p
 YQReVcdIdnWH7GNfjMMvQ5N14vfyHtYVJXnrrgEeCU4nBe7ATMMT8efBFf6/O9wi4NKZha
 C56UVKCUoDf8jOGs+SSdYmhkFUrdnHY=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1586806716; a=rsa-sha256; cv=none;
 b=WSp+uE14zI2jyUw8UPcw5vnzhyUerJZDq6zwdl2MqwA6x+C819a2jiW55qeFPKLZjY+2WD
 32tsjvGki5GJ+acQ8UzYF17oD6MigoBSqvpSfOFRmMbk/0epxEQfw9kH0M58A3WwHEuxhj
 SkjVO+yPzd11InwLckcfZl6TO+5I4jY=
ARC-Authentication-Results: i=1; diktynna.open-mesh.org;
 dkim=pass header.d=narfation.org header.s=20121 header.b=XJges32X;
 spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org
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

The kernel provides a function to create random values from 0 - (max-1)
since commit f337db64af05 ("random32: add prandom_u32_max and convert open
coded users"). Simply use this function to replace code sections which use
prandom_u32 and a handcrafted method to map it to the correct range.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 net/batman-adv/bat_iv_ogm.c | 4 ++--
 net/batman-adv/bat_v_elp.c  | 2 +-
 net/batman-adv/bat_v_ogm.c  | 4 ++--
 3 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/net/batman-adv/bat_iv_ogm.c b/net/batman-adv/bat_iv_ogm.c
index a7c8dd7a..e87f19c8 100644
--- a/net/batman-adv/bat_iv_ogm.c
+++ b/net/batman-adv/bat_iv_ogm.c
@@ -280,7 +280,7 @@ batadv_iv_ogm_emit_send_time(const struct batadv_priv *bat_priv)
 	unsigned int msecs;
 
 	msecs = atomic_read(&bat_priv->orig_interval) - BATADV_JITTER;
-	msecs += prandom_u32() % (2 * BATADV_JITTER);
+	msecs += prandom_u32_max(2 * BATADV_JITTER);
 
 	return jiffies + msecs_to_jiffies(msecs);
 }
@@ -288,7 +288,7 @@ batadv_iv_ogm_emit_send_time(const struct batadv_priv *bat_priv)
 /* when do we schedule a ogm packet to be sent */
 static unsigned long batadv_iv_ogm_fwd_send_time(void)
 {
-	return jiffies + msecs_to_jiffies(prandom_u32() % (BATADV_JITTER / 2));
+	return jiffies + msecs_to_jiffies(prandom_u32_max(BATADV_JITTER / 2));
 }
 
 /* apply hop penalty for a normal link */
diff --git a/net/batman-adv/bat_v_elp.c b/net/batman-adv/bat_v_elp.c
index 1e3172db..353e49c4 100644
--- a/net/batman-adv/bat_v_elp.c
+++ b/net/batman-adv/bat_v_elp.c
@@ -49,7 +49,7 @@ static void batadv_v_elp_start_timer(struct batadv_hard_iface *hard_iface)
 	unsigned int msecs;
 
 	msecs = atomic_read(&hard_iface->bat_v.elp_interval) - BATADV_JITTER;
-	msecs += prandom_u32() % (2 * BATADV_JITTER);
+	msecs += prandom_u32_max(2 * BATADV_JITTER);
 
 	queue_delayed_work(batadv_event_workqueue, &hard_iface->bat_v.elp_wq,
 			   msecs_to_jiffies(msecs));
diff --git a/net/batman-adv/bat_v_ogm.c b/net/batman-adv/bat_v_ogm.c
index 96946621..0959d32b 100644
--- a/net/batman-adv/bat_v_ogm.c
+++ b/net/batman-adv/bat_v_ogm.c
@@ -88,7 +88,7 @@ static void batadv_v_ogm_start_queue_timer(struct batadv_hard_iface *hard_iface)
 	unsigned int msecs = BATADV_MAX_AGGREGATION_MS * 1000;
 
 	/* msecs * [0.9, 1.1] */
-	msecs += prandom_u32() % (msecs / 5) - (msecs / 10);
+	msecs += prandom_u32_max(msecs / 5) - (msecs / 10);
 	queue_delayed_work(batadv_event_workqueue, &hard_iface->bat_v.aggr_wq,
 			   msecs_to_jiffies(msecs / 1000));
 }
@@ -107,7 +107,7 @@ static void batadv_v_ogm_start_timer(struct batadv_priv *bat_priv)
 		return;
 
 	msecs = atomic_read(&bat_priv->orig_interval) - BATADV_JITTER;
-	msecs += prandom_u32() % (2 * BATADV_JITTER);
+	msecs += prandom_u32_max(2 * BATADV_JITTER);
 	queue_delayed_work(batadv_event_workqueue, &bat_priv->bat_v.ogm_wq,
 			   msecs_to_jiffies(msecs));
 }
-- 
2.20.1

