Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 226B13E339A
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat,  7 Aug 2021 07:26:34 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id C094E802F7;
	Sat,  7 Aug 2021 07:26:32 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 1DFA78105B
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sat,  7 Aug 2021 07:26:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1628313592;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=5jR764ks/ray3kyyDawAYcGAPVtrIfiCeca7/WeTOCM=;
	b=ENbUAISIH1IvACxubSMLmsEFoct4DYkIc8sDq99evXnXvzStVVnz3KPrVC9fC044cvEeos
	80F1fmFV8XV5zT88TfmbXn3iPfMrm0TZnoTZod/Nk9lpodp4KsfdQB32iz0vOLAGCVD4iE
	NR4xyKQQZ2B9vWr/29CWs0nnUKCOcfQ=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: [PATCH 2/2] batman-adv: Remove redundant if statements
Date: Sat,  7 Aug 2021 07:19:42 +0200
Message-Id: <20210807051942.38538-2-sven@narfation.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210807051942.38538-1-sven@narfation.org>
References: <20210807051942.38538-1-sven@narfation.org>
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1628313988;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=5jR764ks/ray3kyyDawAYcGAPVtrIfiCeca7/WeTOCM=;
	b=Lmj7IuCi0A4k8McDnRyP6l6CqJ7UT6bAvgkmzSakCpOGzNlTLU2q1/5zPMZwFhzHVNi27k
	MGPPkaiYUjlTbxjOOauEy+q9+3D1XESbAbZS7J9/rqtFw+YnFkQ8WvutL8iAWnq3C/9KdR
	WMz8VY1axlXnk6SwRNFszUiZWKiYINc=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1628313988; a=rsa-sha256;
	cv=none;
	b=yEUJrajZcdjm7TjA4NkoJpjP66seX1k0/vYaNjwyfgxnDZr2RlZpDwgV9Syf4tH84JwEwM
	JNxw4fxvxFhVQM3EgBQps6waNmQXr+SW5LwO1+dsC1A/WLejqRFNke0VHDY/D1qd3tlmnv
	hHBen46gxD3CHMXxFEzt7MHOdBREdwY=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=ENbUAISI;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: SQCXZZEAHWZ4C2ZILFEU226ETNXLT36K
X-Message-ID-Hash: SQCXZZEAHWZ4C2ZILFEU226ETNXLT36K
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/SQCXZZEAHWZ4C2ZILFEU226ETNXLT36K/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

From: Yajun Deng <yajun.deng@linux.dev>

The 'if (dev)' statement already move into dev_{put , hold}, so remove
redundant if statements.

Signed-off-by: Yajun Deng <yajun.deng@linux.dev>
Signed-off-by: David S. Miller <davem@davemloft.net>
---
 net/batman-adv/bridge_loop_avoidance.c |  6 ++----
 net/batman-adv/distributed-arp-table.c |  3 +--
 net/batman-adv/gateway_client.c        |  3 +--
 net/batman-adv/multicast.c             |  9 +++------
 net/batman-adv/originator.c            | 12 ++++--------
 net/batman-adv/translation-table.c     |  9 +++------
 6 files changed, 14 insertions(+), 28 deletions(-)

diff --git a/net/batman-adv/bridge_loop_avoidance.c b/net/batman-adv/brid=
ge_loop_avoidance.c
index 63d42dcc..2b639c8b 100644
--- a/net/batman-adv/bridge_loop_avoidance.c
+++ b/net/batman-adv/bridge_loop_avoidance.c
@@ -2274,8 +2274,7 @@ int batadv_bla_claim_dump(struct sk_buff *msg, stru=
ct netlink_callback *cb)
 	if (primary_if)
 		batadv_hardif_put(primary_if);
=20
-	if (soft_iface)
-		dev_put(soft_iface);
+	dev_put(soft_iface);
=20
 	return ret;
 }
@@ -2446,8 +2445,7 @@ int batadv_bla_backbone_dump(struct sk_buff *msg, s=
truct netlink_callback *cb)
 	if (primary_if)
 		batadv_hardif_put(primary_if);
=20
-	if (soft_iface)
-		dev_put(soft_iface);
+	dev_put(soft_iface);
=20
 	return ret;
 }
diff --git a/net/batman-adv/distributed-arp-table.c b/net/batman-adv/dist=
ributed-arp-table.c
index 8c95a11a..7976a043 100644
--- a/net/batman-adv/distributed-arp-table.c
+++ b/net/batman-adv/distributed-arp-table.c
@@ -984,8 +984,7 @@ int batadv_dat_cache_dump(struct sk_buff *msg, struct=
 netlink_callback *cb)
 	if (primary_if)
 		batadv_hardif_put(primary_if);
=20
-	if (soft_iface)
-		dev_put(soft_iface);
+	dev_put(soft_iface);
=20
 	return ret;
 }
diff --git a/net/batman-adv/gateway_client.c b/net/batman-adv/gateway_cli=
ent.c
index 007f2827..36a98d3c 100644
--- a/net/batman-adv/gateway_client.c
+++ b/net/batman-adv/gateway_client.c
@@ -557,8 +557,7 @@ int batadv_gw_dump(struct sk_buff *msg, struct netlin=
k_callback *cb)
 out:
 	if (primary_if)
 		batadv_hardif_put(primary_if);
-	if (soft_iface)
-		dev_put(soft_iface);
+	dev_put(soft_iface);
=20
 	return ret;
 }
diff --git a/net/batman-adv/multicast.c b/net/batman-adv/multicast.c
index 923e2197..0158f267 100644
--- a/net/batman-adv/multicast.c
+++ b/net/batman-adv/multicast.c
@@ -91,8 +91,7 @@ static struct net_device *batadv_mcast_get_bridge(struc=
t net_device *soft_iface)
 		upper =3D netdev_master_upper_dev_get_rcu(upper);
 	} while (upper && !(upper->priv_flags & IFF_EBRIDGE));
=20
-	if (upper)
-		dev_hold(upper);
+	dev_hold(upper);
 	rcu_read_unlock();
=20
 	return upper;
@@ -509,8 +508,7 @@ batadv_mcast_mla_softif_get(struct net_device *dev,
 	}
=20
 out:
-	if (bridge)
-		dev_put(bridge);
+	dev_put(bridge);
=20
 	return ret4 + ret6;
 }
@@ -2239,8 +2237,7 @@ batadv_mcast_netlink_get_primary(struct netlink_cal=
lback *cb,
 	}
=20
 out:
-	if (soft_iface)
-		dev_put(soft_iface);
+	dev_put(soft_iface);
=20
 	if (!ret && primary_if)
 		*primary_if =3D hard_iface;
diff --git a/net/batman-adv/originator.c b/net/batman-adv/originator.c
index da724944..6a4d3f43 100644
--- a/net/batman-adv/originator.c
+++ b/net/batman-adv/originator.c
@@ -799,12 +799,10 @@ int batadv_hardif_neigh_dump(struct sk_buff *msg, s=
truct netlink_callback *cb)
  out:
 	if (hardif)
 		batadv_hardif_put(hardif);
-	if (hard_iface)
-		dev_put(hard_iface);
+	dev_put(hard_iface);
 	if (primary_if)
 		batadv_hardif_put(primary_if);
-	if (soft_iface)
-		dev_put(soft_iface);
+	dev_put(soft_iface);
=20
 	return ret;
 }
@@ -1412,12 +1410,10 @@ int batadv_orig_dump(struct sk_buff *msg, struct =
netlink_callback *cb)
  out:
 	if (hardif)
 		batadv_hardif_put(hardif);
-	if (hard_iface)
-		dev_put(hard_iface);
+	dev_put(hard_iface);
 	if (primary_if)
 		batadv_hardif_put(primary_if);
-	if (soft_iface)
-		dev_put(soft_iface);
+	dev_put(soft_iface);
=20
 	return ret;
 }
diff --git a/net/batman-adv/translation-table.c b/net/batman-adv/translat=
ion-table.c
index 434b4f04..711fe5a2 100644
--- a/net/batman-adv/translation-table.c
+++ b/net/batman-adv/translation-table.c
@@ -820,8 +820,7 @@ bool batadv_tt_local_add(struct net_device *soft_ifac=
e, const u8 *addr,
 out:
 	if (in_hardif)
 		batadv_hardif_put(in_hardif);
-	if (in_dev)
-		dev_put(in_dev);
+	dev_put(in_dev);
 	if (tt_local)
 		batadv_tt_local_entry_put(tt_local);
 	if (tt_global)
@@ -1217,8 +1216,7 @@ int batadv_tt_local_dump(struct sk_buff *msg, struc=
t netlink_callback *cb)
  out:
 	if (primary_if)
 		batadv_hardif_put(primary_if);
-	if (soft_iface)
-		dev_put(soft_iface);
+	dev_put(soft_iface);
=20
 	cb->args[0] =3D bucket;
 	cb->args[1] =3D idx;
@@ -2005,8 +2003,7 @@ int batadv_tt_global_dump(struct sk_buff *msg, stru=
ct netlink_callback *cb)
  out:
 	if (primary_if)
 		batadv_hardif_put(primary_if);
-	if (soft_iface)
-		dev_put(soft_iface);
+	dev_put(soft_iface);
=20
 	cb->args[0] =3D bucket;
 	cb->args[1] =3D idx;
--=20
2.30.2
