Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [78.46.248.236])
	by mail.lfdr.de (Postfix) with ESMTPS id B5A1FEAB24
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 31 Oct 2019 08:53:11 +0100 (CET)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 1B1598087D;
	Thu, 31 Oct 2019 08:53:01 +0100 (CET)
Received: from smtp.smtpout.orange.fr (smtp10.smtpout.orange.fr
 [80.12.242.132]) by open-mesh.org (Postfix) with ESMTP id 27F2F800A1
 for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 31 Oct 2019 08:50:43 +0100 (CET)
Received: from localhost.localdomain ([93.23.12.90]) by mwinf5d87 with ME
 id L7j9210091waAWt037j9B8; Thu, 31 Oct 2019 08:43:12 +0100
X-ME-Helo: localhost.localdomain
X-ME-Auth: Y2hyaXN0b3BoZS5qYWlsbGV0QHdhbmFkb28uZnI=
X-ME-Date: Thu, 31 Oct 2019 08:43:12 +0100
X-ME-IP: 93.23.12.90
From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
To: davem@davemloft.net, mareklindner@neomailbox.ch, sw@simonwunderlich.de,
 a@unstable.cc, sven@narfation.org
Subject: [PATCH] batman-adv: Simplify 'batadv_v_ogm_aggr_list_free()'
Date: Thu, 31 Oct 2019 08:42:55 +0100
Message-Id: <20191031074255.3234-1-christophe.jaillet@wanadoo.fr>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1572508243;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=/TqoFnjC6QGrXp43uRC7YW3e0C+d8hcxNrpcrOte4RE=;
 b=UM29rUw/Wca99poU2o2RWcwZFNu36pY8HZrzcSFBKwZSSxZRkBzC2QjDzhqxLsY+QOJRCM
 WKOB/iBjsJBg0216wAKQuEl7pucV66WZj/nkocMXzA5SKETt5IpMnABXq0Y2Gmcz/MKasP
 kwbKMf2jmhplQGie1innpiVgUHDs5/Q=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1572508243; a=rsa-sha256; cv=none;
 b=b8RFFR6I6rDz4ieEg5eD7SBjBPTffjQzG6C+LzTv8x7jCueUBHJLlgRnfQ7Is6qQF7BnmY
 WcdY39dKR04LzJ35wpbKADCG+mSK2BoOqFjIR00wMlAwmd3yRE8s0Az/NnDPpXsxHmM1LT
 j7yavpT5yAOZUxm2N6jEVZwDP/M7YZQ=
ARC-Authentication-Results: i=1; open-mesh.org; dkim=none;
 spf=none (open-mesh.org: domain of christophe.jaillet@wanadoo.fr has no SPF
 policy when checking 80.12.242.132)
 smtp.mailfrom=christophe.jaillet@wanadoo.fr
X-Mailman-Approved-At: Thu, 31 Oct 2019 08:52:58 +0100
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
Cc: netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

Use 'skb_queue_purge()' instead of re-implementing it.

Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
---
BTW, I don't really see the need of 'aggr_list_lock'. I think that the code
could be refactored to drop 'aggr_list_lock' and use the already existing
'aggr_list.lock'.
This would require to use the lock-free __skb_... variants when working on
'aggr_list'.

As far as I understand, the use of 'aggr_list' and 'aggr_list_lock' is
limited to bat_v_ogm.c'. So the impact would be limited.
This would avoid a useless locking that never fails, so the performance
gain should be really limited.

So, I'm not sure this would be more readable and/or future proof, so
I just note it here to open the discussion.

If interested, I have a (compiled tested only) patch that implements this
change.
---
 net/batman-adv/bat_v_ogm.c | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/net/batman-adv/bat_v_ogm.c b/net/batman-adv/bat_v_ogm.c
index dc4f7430cb5a..b841c83d9c3b 100644
--- a/net/batman-adv/bat_v_ogm.c
+++ b/net/batman-adv/bat_v_ogm.c
@@ -177,13 +177,9 @@ static bool batadv_v_ogm_queue_left(struct sk_buff *skb,
  */
 static void batadv_v_ogm_aggr_list_free(struct batadv_hard_iface *hard_iface)
 {
-	struct sk_buff *skb;
-
 	lockdep_assert_held(&hard_iface->bat_v.aggr_list_lock);
 
-	while ((skb = skb_dequeue(&hard_iface->bat_v.aggr_list)))
-		kfree_skb(skb);
-
+	skb_queue_purge(&hard_iface->bat_v.aggr_list);
 	hard_iface->bat_v.aggr_len = 0;
 }
 
-- 
2.20.1

