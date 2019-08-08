Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [78.46.248.236])
	by mail.lfdr.de (Postfix) with ESMTPS id AF8F386289
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu,  8 Aug 2019 15:02:40 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id C875081EE7;
	Thu,  8 Aug 2019 15:02:35 +0200 (CEST)
Received: from mail.mail.packetmixer.de (packetmixer.de [79.140.42.25])
 by open-mesh.org (Postfix) with ESMTPS id 1022B80116
 for <b.a.t.m.a.n@lists.open-mesh.org>; Thu,  8 Aug 2019 15:02:11 +0200 (CEST)
Received: from kero.packetmixer.de
 (p200300C5971AA600F539B63C8CCC72B7.dip0.t-ipconnect.de
 [IPv6:2003:c5:971a:a600:f539:b63c:8ccc:72b7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mail.packetmixer.de (Postfix) with ESMTPSA id AF4BD6206D;
 Thu,  8 Aug 2019 15:02:10 +0200 (CEST)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: davem@davemloft.net
Subject: [PATCH 2/2] batman-adv: Fix deletion of RTR(4|6) mcast list entries
Date: Thu,  8 Aug 2019 15:02:08 +0200
Message-Id: <20190808130208.2124-3-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190808130208.2124-1-sw@simonwunderlich.de>
References: <20190808130208.2124-1-sw@simonwunderlich.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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
Cc: netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

From: Sven Eckelmann <sven@narfation.org>

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

Fixes: 61caf3d109f5 ("batman-adv: mcast: detect, distribute and maintain multicast router presence")
Signed-off-by: Sven Eckelmann <sven@narfation.org>
Acked-by: Linus Lüssing <linus.luessing@c0d3.blue>
Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
---
 net/batman-adv/multicast.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/net/batman-adv/multicast.c b/net/batman-adv/multicast.c
index a3488cfb3d1e..1d5bdf3a4b65 100644
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

