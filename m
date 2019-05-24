Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [IPv6:2a01:4f8:141:3341:78:46:248:236])
	by mail.lfdr.de (Postfix) with ESMTPS id 930FB2960A
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 24 May 2019 12:40:26 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id B4AEF81FEB;
	Fri, 24 May 2019 12:40:21 +0200 (CEST)
Received: from kadath.azazel.net (kadath.azazel.net
 [IPv6:2001:8b0:135f:bcd1:e2cb:4eff:fedf:e608])
 by open-mesh.org (Postfix) with ESMTPS id F37768055D
 for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 24 May 2019 12:40:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=azazel.net; 
 s=20190108;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=VLi+bEG12+9e9R8ebYCZTJH1S8XSZcXZWJX7myl/K4c=; b=EwOULvuGhZQlPLPKIKuDhwVM2U
 wQ7XWFAzPJdT2u7fY61/VbTByw8FNmwVFIMF38OwlcNrkYr4Ddwbj6zH3OyXMRbeZ4QRNe0mbqu8O
 QkUljYOrVIPe0tYCxwYGRFXSu5GviLidjt28MF1/+8W9A037jESgyD1zMgHz9SrIzx4lfZn3yuBf1
 vP8wHoBYPY2AG/gC0y/M4Zg9YMgzsANdUuVmZtMvk/8Hr9ov/ALvLXXJtJKRPNk85lR3h5jbIpe7e
 JcIAIYK3HbyvoQoyUACawUwFQojed8Bvmc/REZGB1xtV2zwSFnVqrlr5aMToXVCHhNyhZW6/oJEPt
 TpfGCrCA==;
Received: from ulthar.dreamlands ([192.168.96.2])
 by kadath.azazel.net with esmtp (Exim 4.89)
 (envelope-from <jeremy@azazel.net>)
 id 1hU6z1-0002cj-F5; Fri, 24 May 2019 10:59:27 +0100
From: Jeremy Sowden <jeremy@azazel.net>
To: b.a.t.m.a.n@lists.open-mesh.org, netdev@vger.kernel.org,
 Marek Lindner <mareklindner@neomailbox.ch>,
 Simon Wunderlich <sw@simonwunderlich.de>,
 Antonio Quartulli <a@unstable.cc>, "David S. Miller" <davem@davemloft.net>
Subject: [PATCH net v2] batman-adv: fix for leaked TVLV handler.
Date: Fri, 24 May 2019 10:59:27 +0100
Message-Id: <20190524095927.31817-1-jeremy@azazel.net>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <3325808.M3JPgbICzP@bentobox>
References: <3325808.M3JPgbICzP@bentobox>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 192.168.96.2
X-SA-Exim-Mail-From: jeremy@azazel.net
X-SA-Exim-Scanned: No (on kadath.azazel.net); SAEximRunCond expanded to false
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
Cc: syzbot+d454a826e670502484b8@syzkaller.appspotmail.com
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

A handler for BATADV_TVLV_ROAM was being registered when the
translation-table was initialized, but not unregistered when the
translation-table was freed.  Unregister it.

Fixes: 122edaa05940 ("batman-adv: tvlv - convert roaming adv packet to use tvlv unicast packets")
Reported-by: syzbot+d454a826e670502484b8@syzkaller.appspotmail.com
Reviewed-by: Sven Eckelmann <sven@narfation.org>
Signed-off-by: Jeremy Sowden <jeremy@azazel.net>
---
Since v1.

  * Added "Fixes:" tag.
  * Added "Reviewed-by:" tag.
  * Changed prefix to "batman-adv:".

 net/batman-adv/translation-table.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/net/batman-adv/translation-table.c b/net/batman-adv/translation-table.c
index 1ddfd5e011ee..8a482c5ec67b 100644
--- a/net/batman-adv/translation-table.c
+++ b/net/batman-adv/translation-table.c
@@ -3813,6 +3813,8 @@ static void batadv_tt_purge(struct work_struct *work)
  */
 void batadv_tt_free(struct batadv_priv *bat_priv)
 {
+	batadv_tvlv_handler_unregister(bat_priv, BATADV_TVLV_ROAM, 1);
+
 	batadv_tvlv_container_unregister(bat_priv, BATADV_TVLV_TT, 1);
 	batadv_tvlv_handler_unregister(bat_priv, BATADV_TVLV_TT, 1);
 
-- 
2.20.1

