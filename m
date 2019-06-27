Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [IPv6:2a01:4f8:141:3341:78:46:248:236])
	by mail.lfdr.de (Postfix) with ESMTPS id 8909658834
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 27 Jun 2019 19:22:17 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 5B861827AE;
	Thu, 27 Jun 2019 19:22:14 +0200 (CEST)
Received: from durin.narfation.org (durin.narfation.org [79.140.41.39])
 by open-mesh.org (Postfix) with ESMTPS id 9667C8087D
 for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 27 Jun 2019 19:22:12 +0200 (CEST)
Received: from sven-desktop.home.narfation.org (unknown
 [IPv6:2a00:1ca0:1480:f1fc::4065])
 by durin.narfation.org (Postfix) with ESMTPSA id 4BFA51100B2;
 Thu, 27 Jun 2019 19:22:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
 s=20121; t=1561656132;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=1bd8ZufaxO0BuLkHn8o8EQIOR7gK0oqzOuNT3w9CmTg=;
 b=v5OxGXqvn1GQZFEbk/H5ZUkEubK4g8LkC9LhkuON+Y/saB2kUWTsd3hUY7dzgF51aSANDv
 bUjhKe6y3A40WQRGqOwaeE6KNBF4uDwO0/81jbCZSmmKbKTmwSqTtZibxkH/vnlda1Qebq
 Tp1yqs6FAKCfdviiECze5L7a9mUxbQc=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: [PATCH v2] batman-adv: Get inet(6) device inside RCU protected region
Date: Thu, 27 Jun 2019 19:22:06 +0200
Message-Id: <20190627172206.22683-1-sven@narfation.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org; 
 s=20121; t=1561656132;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=1bd8ZufaxO0BuLkHn8o8EQIOR7gK0oqzOuNT3w9CmTg=;
 b=K66ogFKhMnW3tV3LioAwWsZmYmKHt11qSSf+01jHraG5gZ53CgBAR+LagWmZb3FVIsdVK/
 w43vbt51GpgePoPp1QLBCLfTzF9D15ApgBOXzRWPc7NfqDBNO/Kw80d/My0z/MWC0Z1afr
 SmQacPvpio6ZGwwesvaXFnGGOub9I0M=
ARC-Seal: i=1; s=20121; d=narfation.org; t=1561656132; a=rsa-sha256; cv=none;
 b=YN5saGFXJ5+Ey6szjmOtSS4DzzYsZ5ilHmx6/tZXvKSuwJARxm+t60e/isUrpm7GPnLthG
 xciyTo9E+NvLHCJeI4jI/VfkM/bKGrtT0tB6GR6alblWBS1vzqkVpGARMdBOA+UuPvkYAT
 Iwh1MipDbXKz+5pqpGhJdGLIU5uROdE=
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
v2:

* leave read_lock_bh for in6_dev->mc_list

 net/batman-adv/multicast.c | 20 +++++++++++++-------
 1 file changed, 13 insertions(+), 7 deletions(-)

diff --git a/net/batman-adv/multicast.c b/net/batman-adv/multicast.c
index 40ceab95..67d7f830 100644
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
@@ -444,9 +446,13 @@ batadv_mcast_mla_softif_get_ipv6(struct net_device *dev,
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
 
 	read_lock_bh(&in6_dev->lock);
 	for (pmc6 = in6_dev->mc_list; pmc6; pmc6 = pmc6->next) {
@@ -479,7 +485,7 @@ batadv_mcast_mla_softif_get_ipv6(struct net_device *dev,
 		ret++;
 	}
 	read_unlock_bh(&in6_dev->lock);
-	in6_dev_put(in6_dev);
+	rcu_read_unlock();
 
 	return ret;
 }
-- 
2.20.1

