Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 26F84362E5D
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 17 Apr 2021 09:38:29 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id B63CB81022;
	Sat, 17 Apr 2021 09:38:27 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id EA3228029D
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 17 Apr 2021 09:38:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1618644746;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=XbfPjTyw8xg40jXqB31Qob7jOZ92yTmwL9Mf2BG8wWM=;
	b=YAd4FeHLE0UmfZ7tquYcFn8iB/ffuHHYNjUh3fkdD3mgZZBzO7E1zgs9zlT+vAhKpv6VQi
	DQGhNgmxhj2BDW8Y4WcHJyFr50rv5R5yPH2tbTb60I3YZkrmT29NbYNDejK9Nzugm8gReP
	PCHQWgEi10l9gTp5yVIaTT7A2Mq16lw=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: [RFC PATCH] batman-adv: convert ifmcaddr6 to RCU
Date: Sat, 17 Apr 2021 09:32:09 +0200
Message-Id: <20210417073209.21651-1-sven@narfation.org>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=YAd4FeHL;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1618645105; a=rsa-sha256;
	cv=none;
	b=037NWiwocHNF+5O4DfCRgmJZq+vEptfoQcRP0K7B3XLLybWUn267ZIE+AoVJbaHculmzOK
	HubtqfvCGlkke1xqth2e6coU6/4aEnH7EbxYsB3spreZ8H4kwMH7RpUYVfS+FYD05DOk67
	hFc2v17w8d64O4akK39nu60fxs1O8q0=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1618645105;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=XbfPjTyw8xg40jXqB31Qob7jOZ92yTmwL9Mf2BG8wWM=;
	b=hJWo4jnbMWFtz/fzrnI2xNw+1SWi3JoWWn0GJDys13vQF9cl0nQZsTL+oVUMx1MIgYyrQl
	Wf13yZA97o7oZNMivXRcYlJrrfrKDEHyb1GPCBlZoRy0F8jsEzka/rBDym7rX3yTDx9HRG
	ykMElghm050ziIqAQTSaTbJubZ58tGg=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: 5G5MDZ245BOSTOERMKJQDHRWAGB3DR2S
X-Message-ID-Hash: 5G5MDZ245BOSTOERMKJQDHRWAGB3DR2S
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/5G5MDZ245BOSTOERMKJQDHRWAGB3DR2S/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

From: Taehee Yoo <ap420073@gmail.com>

The ifmcaddr6 has been protected by inet6_dev->lock(rwlock) so that
the critical section is atomic context. In order to switch this context,
changing locking is needed. The ifmcaddr6 actually already protected by
RTNL So if it's converted to use RCU, its control path context can be
switched to sleepable.

Suggested-by: Cong Wang <xiyou.wangcong@gmail.com>
Signed-off-by: Taehee Yoo <ap420073@gmail.com>
Signed-off-by: David S. Miller <davem@davemloft.net>
---
This patch is already upstream. But the compat code is missing in
batman-adv. So we have to find a way to call the read_lock_bh/read_unlock=
_bh
without adding it in multicast.c and not to use rcu_dereference without=20
removing it from multicast.c... does anyone have an idea?

 net/batman-adv/multicast.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/net/batman-adv/multicast.c b/net/batman-adv/multicast.c
index 28166402..1d63c8cb 100644
--- a/net/batman-adv/multicast.c
+++ b/net/batman-adv/multicast.c
@@ -454,8 +454,9 @@ batadv_mcast_mla_softif_get_ipv6(struct net_device *d=
ev,
 		return 0;
 	}
=20
-	read_lock_bh(&in6_dev->lock);
-	for (pmc6 =3D in6_dev->mc_list; pmc6; pmc6 =3D pmc6->next) {
+	for (pmc6 =3D rcu_dereference(in6_dev->mc_list);
+	     pmc6;
+	     pmc6 =3D rcu_dereference(pmc6->next)) {
 		if (IPV6_ADDR_MC_SCOPE(&pmc6->mca_addr) <
 		    IPV6_ADDR_SCOPE_LINKLOCAL)
 			continue;
@@ -484,7 +485,6 @@ batadv_mcast_mla_softif_get_ipv6(struct net_device *d=
ev,
 		hlist_add_head(&new->list, mcast_list);
 		ret++;
 	}
-	read_unlock_bh(&in6_dev->lock);
 	rcu_read_unlock();
=20
 	return ret;
--=20
2.30.2
