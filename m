Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [78.46.248.236])
	by mail.lfdr.de (Postfix) with ESMTPS id 178FA61798
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun,  7 Jul 2019 23:05:12 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 1783F8155E;
	Sun,  7 Jul 2019 23:05:07 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
 by open-mesh.org (Postfix) with ESMTPS id B903680529
 for <b.a.t.m.a.n@lists.open-mesh.org>; Sun,  7 Jul 2019 23:05:04 +0200 (CEST)
Received: from sven-desktop.home.narfation.org (unknown
 [IPv6:2a00:1ca0:1480:f1fc::4065])
 by dvalin.narfation.org (Postfix) with ESMTPSA id A2B84200BC;
 Sun,  7 Jul 2019 21:05:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
 s=20121; t=1562533503;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=eHAfI5zE8NH7ljmiK7g5vxNSTS0WZtVz0Hu0IF8SaYY=;
 b=rEL67rsY/gQfxNR8A+ojTsroTPxIlwkZU8LUqQvZvnAy//AbrFMthGP7+2y8YqiAAf/kW3
 xnmMxbaR/hPSaAmMtoywVvv+mQXumF6vZgs9tXzA9ohD/eLXYXK4ghbJ3lg6X+tChdxVJA
 oiENoUQhmFtia0ohr4aXv8solcM/FRA=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: [PATCH] batman-adv: Fix deletion of RTR(4|6) mcast list entries
Date: Sun,  7 Jul 2019 23:04:57 +0200
Message-Id: <20190707210457.20892-1-sven@narfation.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org; 
 s=20121; t=1562533504;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=eHAfI5zE8NH7ljmiK7g5vxNSTS0WZtVz0Hu0IF8SaYY=;
 b=qSR+bu7wlBAPHCrlCfv40CANIr+LunRkMDoQCv4kHdSSES7N9CpSGbUHWnGhjP1HcNEUqe
 SIafu/u1X6HUfQ1ml7SJLwb+3Hno862YsQRt4iVXt/Z3t6sLedM5Ny+jfv6qY5lXMhzT9L
 T4YrQlYW4sjIu/eQzG67XUEDlxlxeLU=
ARC-Seal: i=1; s=20121; d=narfation.org; t=1562533504; a=rsa-sha256; cv=none;
 b=BoRAP4N+2IecuOpi2mquXUc8f6FLL/n5o4xzkJMVaLeQL6qXLgZhNRGavgt6NwZ1djLR9H
 T4B3Q8t0+yeJnKfom75xnaaaFm7/fiVyO6U+3kRrPd+sUWP9J2kvqq07IlzpPypzcajYco
 Q/bQxOFHhwnlUCRtdKdru3c7t2dNDlo=
ARC-Authentication-Results: i=1; ORIGINATING;
 auth=pass smtp.auth=sven smtp.mailfrom=sven@narfation.org
X-BeenThere: b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 2.1.23
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

The multicast code uses the lists bat_priv->mcast.want_all_rtr*_list to
store all all originator nodes which don't have the flag no-RTR4 or no-RTR6
set. When an originator is purged, it has to be removed from these lists.

Since all entries without the BATADV_MCAST_WANT_NO_RTR4/6 are stored in
these lists, they have to be handled like entries which have these flags
set to force the update routines to remove them from the lists when purging
the originator.

Not doing so will leave a pointer to a freed memory region inside the list.
Trying to operate on these lists will then cause an use-after-free error:

  BUG: KASAN: use-after-free in batadv_mcast_want_rtr4_update+0x335/0x3a0 [batman_adv]
  Write of size 8 at addr ffff888007b41a38 by task swapper/0/0

Fixes: 0a7733468f95 ("batman-adv: mcast: detect, distribute and maintain multicast router presence")
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
Cc: Linus Lüssing <linus.luessing@c0d3.blue>

See https://www.open-mesh.org/issues/395
---
 net/batman-adv/multicast.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/net/batman-adv/multicast.c b/net/batman-adv/multicast.c
index a3488cfb..1d5bdf3a 100644
--- a/net/batman-adv/multicast.c
+++ b/net/batman-adv/multicast.c
@@ -2420,8 +2420,10 @@ void batadv_mcast_purge_orig(struct batadv_orig_node *orig)
 	batadv_mcast_want_unsnoop_update(bat_priv, orig, BATADV_NO_FLAGS);
 	batadv_mcast_want_ipv4_update(bat_priv, orig, BATADV_NO_FLAGS);
 	batadv_mcast_want_ipv6_update(bat_priv, orig, BATADV_NO_FLAGS);
-	batadv_mcast_want_rtr4_update(bat_priv, orig, BATADV_NO_FLAGS);
-	batadv_mcast_want_rtr6_update(bat_priv, orig, BATADV_NO_FLAGS);
+	batadv_mcast_want_rtr4_update(bat_priv, orig,
+				      BATADV_MCAST_WANT_NO_RTR4);
+	batadv_mcast_want_rtr6_update(bat_priv, orig,
+				      BATADV_MCAST_WANT_NO_RTR6);
 
 	spin_unlock_bh(&orig->mcast_handler_lock);
 }
-- 
2.20.1

