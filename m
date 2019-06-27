Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [IPv6:2a01:4f8:141:3341:78:46:248:236])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AF315880E
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 27 Jun 2019 19:11:36 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id DBDAC827A6;
	Thu, 27 Jun 2019 19:11:31 +0200 (CEST)
Received: from durin.narfation.org (durin.narfation.org
 [IPv6:2001:4d88:2000:7::2])
 by open-mesh.org (Postfix) with ESMTPS id 7CA30803CC
 for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 27 Jun 2019 19:11:29 +0200 (CEST)
Received: from sven-desktop.home.narfation.org (unknown
 [IPv6:2a00:1ca0:1480:f1fc::4065])
 by durin.narfation.org (Postfix) with ESMTPSA id F07C51100B2
 for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 27 Jun 2019 19:11:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
 s=20121; t=1561655488;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=+6qrSrJuMzkmqzK9uc6jXlHE6vgxdI1apMjSq1Kf3KM=;
 b=g/8GpqHqPOeYsROcRmZJGkSZJlZja/xmipQAal2j1bjiDPnlwZW4SWdx5IOIgv4UdiJ7UU
 qn3aKiGxUoPUJyHOe2ElqEkMlHxlas7kFtdEX7a5Oe/rDvRLZRSimkYdRnhGJR9RZFOh2C
 NuAxDxVOFmzllqO/C011V0hazIT1SUs=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: [PATCH] batman-adv: Get inet(6) device inside RCU protected region
Date: Thu, 27 Jun 2019 19:11:25 +0200
Message-Id: <20190627171125.21799-1-sven@narfation.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org; 
 s=20121; t=1561655488;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=+6qrSrJuMzkmqzK9uc6jXlHE6vgxdI1apMjSq1Kf3KM=;
 b=J3bM/M711VKX4FaTxj16g3qAgUTQ0k1Ci/8cJgbvZYNSgK+Ocq78jE4Thegg6TbzL5g57h
 kf7ODhvSKOi6x4WOcIzwkJsqy5sNzA4+oSpiQ4VlsRI+gqf7EF3638W3Nesyydv+ESV11g
 t/ufFiMZzxxCTxII7JHjfsuFOJVIFrw=
ARC-Seal: i=1; s=20121; d=narfation.org; t=1561655488; a=rsa-sha256; cv=none;
 b=112JcVoRrneE2k1y8pR9As9RLWPcyBPb8/BhrmXd8v33eoPs4k5klHuo2bpxXzQ3Fc6wQq
 DszfwDtwV+YB7SV30ST21ZT81Lg6XPDVG47hqaWjFkzxQ6/MmktaSoqKmF5yxUHLUVsHwQ
 RlNJs8OPl8XFBbh4jxRWmfSDvclQCks=
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

It is not necessary to get the inet(6)_dev outside of the rcu protected
region by using reference counting. Instead, the in(6)_dev_get can be
replaced by the non-refcnt function and everything can be moved inside the
rcu protected region.

Fixes: 0a7733468f95 ("batman-adv: mcast: detect, distribute and maintain multicast router presence")
Reported-by: David Miller <davem@davemloft.net>
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
Cc: Linus Lüssing <linus.luessing@c0d3.blue>

 net/batman-adv/multicast.c | 22 +++++++++++++---------
 1 file changed, 13 insertions(+), 9 deletions(-)

diff --git a/net/batman-adv/multicast.c b/net/batman-adv/multicast.c
index 40ceab95..9c18cf40 100644
--- a/net/batman-adv/multicast.c
+++ b/net/batman-adv/multicast.c
@@ -379,11 +379,14 @@ batadv_mcast_mla_softif_get_ipv4(struct net_device *dev,
 	if (flags->tvlv_flags & BATADV_MCAST_WANT_ALL_IPV4)
 		return 0;
 
-	in_dev = in_dev_get(dev);
-	if (!in_dev)
+	rcu_read_lock();
+
+	in_dev = __in_dev_get_rcu(dev);
+	if (!in_dev) {
+		rcu_read_unlock();
 		return 0;
+	}
 
-	rcu_read_lock();
 	for (pmc = rcu_dereference(in_dev->mc_list); pmc;
 	     pmc = rcu_dereference(pmc->next_rcu)) {
 		if (flags->tvlv_flags & BATADV_MCAST_WANT_ALL_UNSNOOPABLES &&
@@ -410,7 +413,6 @@ batadv_mcast_mla_softif_get_ipv4(struct net_device *dev,
 		ret++;
 	}
 	rcu_read_unlock();
-	in_dev_put(in_dev);
 
 	return ret;
 }
@@ -444,11 +446,14 @@ batadv_mcast_mla_softif_get_ipv6(struct net_device *dev,
 	if (flags->tvlv_flags & BATADV_MCAST_WANT_ALL_IPV6)
 		return 0;
 
-	in6_dev = in6_dev_get(dev);
-	if (!in6_dev)
+	rcu_read_lock();
+
+	in6_dev = __in6_dev_get(dev);
+	if (!in6_dev) {
+		rcu_read_unlock();
 		return 0;
+	}
 
-	read_lock_bh(&in6_dev->lock);
 	for (pmc6 = in6_dev->mc_list; pmc6; pmc6 = pmc6->next) {
 		if (IPV6_ADDR_MC_SCOPE(&pmc6->mca_addr) <
 		    IPV6_ADDR_SCOPE_LINKLOCAL)
@@ -478,8 +483,7 @@ batadv_mcast_mla_softif_get_ipv6(struct net_device *dev,
 		hlist_add_head(&new->list, mcast_list);
 		ret++;
 	}
-	read_unlock_bh(&in6_dev->lock);
-	in6_dev_put(in6_dev);
+	rcu_read_unlock();
 
 	return ret;
 }
-- 
2.20.1

