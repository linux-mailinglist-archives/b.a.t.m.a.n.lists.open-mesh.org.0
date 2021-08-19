Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EEEA3F1D0C
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 19 Aug 2021 17:41:28 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id A289F8262F;
	Thu, 19 Aug 2021 17:41:20 +0200 (CEST)
Received: from simonwunderlich.de (simonwunderlich.de [79.140.42.25])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id D189880737
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 19 Aug 2021 17:41:14 +0200 (CEST)
Received: from kero.packetmixer.de (p200300c5971402c0773d8e0e2371531e.dip0.t-ipconnect.de [IPv6:2003:c5:9714:2c0:773d:8e0e:2371:531e])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by simonwunderlich.de (Postfix) with ESMTPSA id 9FEFD174028;
	Thu, 19 Aug 2021 17:33:42 +0200 (CEST)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: kuba@kernel.org,
	davem@davemloft.net
Subject: [PATCH 5/6] batman-adv: Drop NULL check before dropping references
Date: Thu, 19 Aug 2021 17:33:33 +0200
Message-Id: <20210819153334.18850-6-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210819153334.18850-1-sw@simonwunderlich.de>
References: <20210819153334.18850-1-sw@simonwunderlich.de>
MIME-Version: 1.0
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates 79.140.42.25 as permitted sender) smtp.mailfrom=sw@simonwunderlich.de
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1629387674; a=rsa-sha256;
	cv=none;
	b=4LXpqq5OzHYjJQJplvdx5ounUTyxReJ+3m448vCXgMSsFF3l6Y+O9XZ0NY2UBDBAg/Nd1S
	9CKcfU9EaUxTFKJPQ8ieutA6P6bPt2gD9/FDJ7RseacpGnqA/fOe55NPovHUsOYHG8aVDo
	hOGqQyS7Ajrm6bJn/AF2p/L2iNa9BDs=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1629387674;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=WuEHEeR7HTeT+VdujKuczIOWVbHnZvNMaZz7P5+2cIk=;
	b=Tx5xFh9YmN9qPXypJUqCkMoI9JiGjoCWco9KTSBdzck9wIvfZfbHpBBvDiULsE9Jq1YsCG
	Ipf9FUY2pjVlDJ68XupwBPhvczU9uEcoNf2GMPR1ugbAmEOeuAZOn5P39FT1RNsYVXzUfr
	V/E3tD5YfcQjqfTptw5Qf4LVTgy+baE=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: 5E3B7ZMN73P5B72F6GR3RGEXQMXQ3AVQ
X-Message-ID-Hash: 5E3B7ZMN73P5B72F6GR3RGEXQMXQ3AVQ
X-MailFrom: sw@simonwunderlich.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/5E3B7ZMN73P5B72F6GR3RGEXQMXQ3AVQ/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

From: Sven Eckelmann <sven@narfation.org>

The check if a batman-adv related object is NULL or not is now directly i=
n
the batadv_*_put functions. It is not needed anymore to perform this chec=
k
outside these function:

The changes were generated using a coccinelle semantic patch:

  @@
  expression E;
  @@
  - if (likely(E !=3D NULL))
  (
  batadv_backbone_gw_put
  |
  batadv_claim_put
  |
  batadv_dat_entry_put
  |
  batadv_gw_node_put
  |
  batadv_hardif_neigh_put
  |
  batadv_hardif_put
  |
  batadv_nc_node_put
  |
  batadv_nc_path_put
  |
  batadv_neigh_ifinfo_put
  |
  batadv_neigh_node_put
  |
  batadv_orig_ifinfo_put
  |
  batadv_orig_node_put
  |
  batadv_orig_node_vlan_put
  |
  batadv_softif_vlan_put
  |
  batadv_tp_vars_put
  |
  batadv_tt_global_entry_put
  |
  batadv_tt_local_entry_put
  |
  batadv_tt_orig_list_entry_put
  |
  batadv_tt_req_node_put
  |
  batadv_tvlv_container_put
  |
  batadv_tvlv_handler_put
  )(E);

Signed-off-by: Sven Eckelmann <sven@narfation.org>
Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
---
 net/batman-adv/bat_iv_ogm.c            | 75 +++++++++----------------
 net/batman-adv/bat_v.c                 | 30 ++++------
 net/batman-adv/bat_v_elp.c             |  9 +--
 net/batman-adv/bat_v_ogm.c             | 39 +++++--------
 net/batman-adv/bridge_loop_avoidance.c | 27 +++------
 net/batman-adv/distributed-arp-table.c | 21 +++----
 net/batman-adv/fragmentation.c         |  6 +-
 net/batman-adv/gateway_client.c        | 45 +++++----------
 net/batman-adv/hard-interface.c        | 21 +++----
 net/batman-adv/multicast.c             |  2 +-
 net/batman-adv/netlink.c               |  6 +-
 net/batman-adv/network-coding.c        | 18 ++----
 net/batman-adv/originator.c            | 30 ++++------
 net/batman-adv/routing.c               | 39 +++++--------
 net/batman-adv/send.c                  | 21 +++----
 net/batman-adv/soft-interface.c        | 12 ++--
 net/batman-adv/tp_meter.c              | 24 +++-----
 net/batman-adv/translation-table.c     | 78 +++++++++-----------------
 net/batman-adv/tvlv.c                  |  3 +-
 19 files changed, 169 insertions(+), 337 deletions(-)

diff --git a/net/batman-adv/bat_iv_ogm.c b/net/batman-adv/bat_iv_ogm.c
index 12022378f892..f94f538fa382 100644
--- a/net/batman-adv/bat_iv_ogm.c
+++ b/net/batman-adv/bat_iv_ogm.c
@@ -519,8 +519,7 @@ batadv_iv_ogm_can_aggregate(const struct batadv_ogm_p=
acket *new_bat_ogm_packet,
 	}
=20
 out:
-	if (primary_if)
-		batadv_hardif_put(primary_if);
+	batadv_hardif_put(primary_if);
 	return res;
 }
=20
@@ -857,8 +856,7 @@ static void batadv_iv_ogm_schedule_buff(struct batadv=
_hard_iface *hard_iface)
 	rcu_read_unlock();
=20
 out:
-	if (primary_if)
-		batadv_hardif_put(primary_if);
+	batadv_hardif_put(primary_if);
 }
=20
 static void batadv_iv_ogm_schedule(struct batadv_hard_iface *hard_iface)
@@ -1046,14 +1044,10 @@ batadv_iv_ogm_orig_update(struct batadv_priv *bat=
_priv,
 unlock:
 	rcu_read_unlock();
 out:
-	if (neigh_node)
-		batadv_neigh_node_put(neigh_node);
-	if (router)
-		batadv_neigh_node_put(router);
-	if (neigh_ifinfo)
-		batadv_neigh_ifinfo_put(neigh_ifinfo);
-	if (router_ifinfo)
-		batadv_neigh_ifinfo_put(router_ifinfo);
+	batadv_neigh_node_put(neigh_node);
+	batadv_neigh_node_put(router);
+	batadv_neigh_ifinfo_put(neigh_ifinfo);
+	batadv_neigh_ifinfo_put(router_ifinfo);
 }
=20
 /**
@@ -1194,8 +1188,7 @@ static bool batadv_iv_ogm_calc_tq(struct batadv_ori=
g_node *orig_node,
 		ret =3D true;
=20
 out:
-	if (neigh_node)
-		batadv_neigh_node_put(neigh_node);
+	batadv_neigh_node_put(neigh_node);
 	return ret;
 }
=20
@@ -1496,16 +1489,11 @@ batadv_iv_ogm_process_per_outif(const struct sk_b=
uff *skb, int ogm_offset,
 	if (orig_neigh_node && !is_single_hop_neigh)
 		batadv_orig_node_put(orig_neigh_node);
 out:
-	if (router_ifinfo)
-		batadv_neigh_ifinfo_put(router_ifinfo);
-	if (router)
-		batadv_neigh_node_put(router);
-	if (router_router)
-		batadv_neigh_node_put(router_router);
-	if (orig_neigh_router)
-		batadv_neigh_node_put(orig_neigh_router);
-	if (hardif_neigh)
-		batadv_hardif_neigh_put(hardif_neigh);
+	batadv_neigh_ifinfo_put(router_ifinfo);
+	batadv_neigh_node_put(router);
+	batadv_neigh_node_put(router_router);
+	batadv_neigh_node_put(orig_neigh_router);
+	batadv_hardif_neigh_put(hardif_neigh);
=20
 	consume_skb(skb_priv);
 }
@@ -1926,8 +1914,7 @@ batadv_iv_ogm_orig_dump_entry(struct sk_buff *msg, =
u32 portid, u32 seq,
 	}
=20
  out:
-	if (neigh_node_best)
-		batadv_neigh_node_put(neigh_node_best);
+	batadv_neigh_node_put(neigh_node_best);
=20
 	*sub_s =3D 0;
 	return 0;
@@ -2049,10 +2036,8 @@ static bool batadv_iv_ogm_neigh_diff(struct batadv=
_neigh_node *neigh1,
 	*diff =3D (int)tq1 - (int)tq2;
=20
 out:
-	if (neigh1_ifinfo)
-		batadv_neigh_ifinfo_put(neigh1_ifinfo);
-	if (neigh2_ifinfo)
-		batadv_neigh_ifinfo_put(neigh2_ifinfo);
+	batadv_neigh_ifinfo_put(neigh1_ifinfo);
+	batadv_neigh_ifinfo_put(neigh2_ifinfo);
=20
 	return ret;
 }
@@ -2299,8 +2284,7 @@ batadv_iv_gw_get_best_gw_node(struct batadv_priv *b=
at_priv)
 			if (tmp_gw_factor > max_gw_factor ||
 			    (tmp_gw_factor =3D=3D max_gw_factor &&
 			     tq_avg > max_tq)) {
-				if (curr_gw)
-					batadv_gw_node_put(curr_gw);
+				batadv_gw_node_put(curr_gw);
 				curr_gw =3D gw_node;
 				kref_get(&curr_gw->refcount);
 			}
@@ -2314,8 +2298,7 @@ batadv_iv_gw_get_best_gw_node(struct batadv_priv *b=
at_priv)
 			  *     $routing_class more tq points)
 			  */
 			if (tq_avg > max_tq) {
-				if (curr_gw)
-					batadv_gw_node_put(curr_gw);
+				batadv_gw_node_put(curr_gw);
 				curr_gw =3D gw_node;
 				kref_get(&curr_gw->refcount);
 			}
@@ -2332,8 +2315,7 @@ batadv_iv_gw_get_best_gw_node(struct batadv_priv *b=
at_priv)
=20
 next:
 		batadv_neigh_node_put(router);
-		if (router_ifinfo)
-			batadv_neigh_ifinfo_put(router_ifinfo);
+		batadv_neigh_ifinfo_put(router_ifinfo);
 	}
 	rcu_read_unlock();
=20
@@ -2397,14 +2379,10 @@ static bool batadv_iv_gw_is_eligible(struct batad=
v_priv *bat_priv,
=20
 	ret =3D true;
 out:
-	if (router_gw_ifinfo)
-		batadv_neigh_ifinfo_put(router_gw_ifinfo);
-	if (router_orig_ifinfo)
-		batadv_neigh_ifinfo_put(router_orig_ifinfo);
-	if (router_gw)
-		batadv_neigh_node_put(router_gw);
-	if (router_orig)
-		batadv_neigh_node_put(router_orig);
+	batadv_neigh_ifinfo_put(router_gw_ifinfo);
+	batadv_neigh_ifinfo_put(router_orig_ifinfo);
+	batadv_neigh_node_put(router_gw);
+	batadv_neigh_node_put(router_orig);
=20
 	return ret;
 }
@@ -2479,12 +2457,9 @@ static int batadv_iv_gw_dump_entry(struct sk_buff =
*msg, u32 portid,
 	ret =3D 0;
=20
 out:
-	if (curr_gw)
-		batadv_gw_node_put(curr_gw);
-	if (router_ifinfo)
-		batadv_neigh_ifinfo_put(router_ifinfo);
-	if (router)
-		batadv_neigh_node_put(router);
+	batadv_gw_node_put(curr_gw);
+	batadv_neigh_ifinfo_put(router_ifinfo);
+	batadv_neigh_node_put(router);
 	return ret;
 }
=20
diff --git a/net/batman-adv/bat_v.c b/net/batman-adv/bat_v.c
index b98aea958e3d..54e41fc709c3 100644
--- a/net/batman-adv/bat_v.c
+++ b/net/batman-adv/bat_v.c
@@ -106,8 +106,7 @@ static void batadv_v_iface_update_mac(struct batadv_h=
ard_iface *hard_iface)
=20
 	batadv_v_primary_iface_set(hard_iface);
 out:
-	if (primary_if)
-		batadv_hardif_put(primary_if);
+	batadv_hardif_put(primary_if);
 }
=20
 static void
@@ -366,8 +365,7 @@ batadv_v_orig_dump_entry(struct sk_buff *msg, u32 por=
tid, u32 seq,
 	}
=20
  out:
-	if (neigh_node_best)
-		batadv_neigh_node_put(neigh_node_best);
+	batadv_neigh_node_put(neigh_node_best);
=20
 	*sub_s =3D 0;
 	return 0;
@@ -568,10 +566,8 @@ static int batadv_v_gw_throughput_get(struct batadv_=
gw_node *gw_node, u32 *bw)
=20
 	ret =3D 0;
 out:
-	if (router)
-		batadv_neigh_node_put(router);
-	if (router_ifinfo)
-		batadv_neigh_ifinfo_put(router_ifinfo);
+	batadv_neigh_node_put(router);
+	batadv_neigh_ifinfo_put(router_ifinfo);
=20
 	return ret;
 }
@@ -599,8 +595,7 @@ batadv_v_gw_get_best_gw_node(struct batadv_priv *bat_=
priv)
 		if (curr_gw && bw <=3D max_bw)
 			goto next;
=20
-		if (curr_gw)
-			batadv_gw_node_put(curr_gw);
+		batadv_gw_node_put(curr_gw);
=20
 		curr_gw =3D gw_node;
 		kref_get(&curr_gw->refcount);
@@ -662,10 +657,8 @@ static bool batadv_v_gw_is_eligible(struct batadv_pr=
iv *bat_priv,
=20
 	ret =3D true;
 out:
-	if (curr_gw)
-		batadv_gw_node_put(curr_gw);
-	if (orig_gw)
-		batadv_gw_node_put(orig_gw);
+	batadv_gw_node_put(curr_gw);
+	batadv_gw_node_put(orig_gw);
=20
 	return ret;
 }
@@ -764,12 +757,9 @@ static int batadv_v_gw_dump_entry(struct sk_buff *ms=
g, u32 portid,
 	ret =3D 0;
=20
 out:
-	if (curr_gw)
-		batadv_gw_node_put(curr_gw);
-	if (router_ifinfo)
-		batadv_neigh_ifinfo_put(router_ifinfo);
-	if (router)
-		batadv_neigh_node_put(router);
+	batadv_gw_node_put(curr_gw);
+	batadv_neigh_ifinfo_put(router_ifinfo);
+	batadv_neigh_node_put(router);
 	return ret;
 }
=20
diff --git a/net/batman-adv/bat_v_elp.c b/net/batman-adv/bat_v_elp.c
index 423c2d171703..71999e13f729 100644
--- a/net/batman-adv/bat_v_elp.c
+++ b/net/batman-adv/bat_v_elp.c
@@ -486,14 +486,11 @@ static void batadv_v_elp_neigh_update(struct batadv=
_priv *bat_priv,
 	hardif_neigh->bat_v.elp_interval =3D ntohl(elp_packet->elp_interval);
=20
 hardif_free:
-	if (hardif_neigh)
-		batadv_hardif_neigh_put(hardif_neigh);
+	batadv_hardif_neigh_put(hardif_neigh);
 neigh_free:
-	if (neigh)
-		batadv_neigh_node_put(neigh);
+	batadv_neigh_node_put(neigh);
 orig_free:
-	if (orig_neigh)
-		batadv_orig_node_put(orig_neigh);
+	batadv_orig_node_put(orig_neigh);
 }
=20
 /**
diff --git a/net/batman-adv/bat_v_ogm.c b/net/batman-adv/bat_v_ogm.c
index a0a9636d1740..1d750f3cb2e4 100644
--- a/net/batman-adv/bat_v_ogm.c
+++ b/net/batman-adv/bat_v_ogm.c
@@ -584,12 +584,9 @@ static void batadv_v_ogm_forward(struct batadv_priv =
*bat_priv,
 	batadv_v_ogm_queue_on_if(skb, if_outgoing);
=20
 out:
-	if (orig_ifinfo)
-		batadv_orig_ifinfo_put(orig_ifinfo);
-	if (router)
-		batadv_neigh_node_put(router);
-	if (neigh_ifinfo)
-		batadv_neigh_ifinfo_put(neigh_ifinfo);
+	batadv_orig_ifinfo_put(orig_ifinfo);
+	batadv_neigh_node_put(router);
+	batadv_neigh_ifinfo_put(neigh_ifinfo);
 }
=20
 /**
@@ -669,10 +666,8 @@ static int batadv_v_ogm_metric_update(struct batadv_=
priv *bat_priv,
 	else
 		ret =3D 0;
 out:
-	if (orig_ifinfo)
-		batadv_orig_ifinfo_put(orig_ifinfo);
-	if (neigh_ifinfo)
-		batadv_neigh_ifinfo_put(neigh_ifinfo);
+	batadv_orig_ifinfo_put(orig_ifinfo);
+	batadv_neigh_ifinfo_put(neigh_ifinfo);
=20
 	return ret;
 }
@@ -763,16 +758,11 @@ static bool batadv_v_ogm_route_update(struct batadv=
_priv *bat_priv,
=20
 	batadv_update_route(bat_priv, orig_node, if_outgoing, neigh_node);
 out:
-	if (router)
-		batadv_neigh_node_put(router);
-	if (orig_neigh_router)
-		batadv_neigh_node_put(orig_neigh_router);
-	if (orig_neigh_node)
-		batadv_orig_node_put(orig_neigh_node);
-	if (router_ifinfo)
-		batadv_neigh_ifinfo_put(router_ifinfo);
-	if (neigh_ifinfo)
-		batadv_neigh_ifinfo_put(neigh_ifinfo);
+	batadv_neigh_node_put(router);
+	batadv_neigh_node_put(orig_neigh_router);
+	batadv_orig_node_put(orig_neigh_node);
+	batadv_neigh_ifinfo_put(router_ifinfo);
+	batadv_neigh_ifinfo_put(neigh_ifinfo);
=20
 	return forward;
 }
@@ -978,12 +968,9 @@ static void batadv_v_ogm_process(const struct sk_buf=
f *skb, int ogm_offset,
 	}
 	rcu_read_unlock();
 out:
-	if (orig_node)
-		batadv_orig_node_put(orig_node);
-	if (neigh_node)
-		batadv_neigh_node_put(neigh_node);
-	if (hardif_neigh)
-		batadv_hardif_neigh_put(hardif_neigh);
+	batadv_orig_node_put(orig_node);
+	batadv_neigh_node_put(neigh_node);
+	batadv_hardif_neigh_put(hardif_neigh);
 }
=20
 /**
diff --git a/net/batman-adv/bridge_loop_avoidance.c b/net/batman-adv/brid=
ge_loop_avoidance.c
index 134db98a4606..1669744304c5 100644
--- a/net/batman-adv/bridge_loop_avoidance.c
+++ b/net/batman-adv/bridge_loop_avoidance.c
@@ -445,8 +445,7 @@ static void batadv_bla_send_claim(struct batadv_priv =
*bat_priv, u8 *mac,
=20
 	netif_rx_any_context(skb);
 out:
-	if (primary_if)
-		batadv_hardif_put(primary_if);
+	batadv_hardif_put(primary_if);
 }
=20
 /**
@@ -1504,8 +1503,7 @@ static void batadv_bla_periodic_work(struct work_st=
ruct *work)
 		rcu_read_unlock();
 	}
 out:
-	if (primary_if)
-		batadv_hardif_put(primary_if);
+	batadv_hardif_put(primary_if);
=20
 	queue_delayed_work(batadv_event_workqueue, &bat_priv->bla.work,
 			   msecs_to_jiffies(BATADV_BLA_PERIOD_LENGTH));
@@ -1814,8 +1812,7 @@ void batadv_bla_free(struct batadv_priv *bat_priv)
 		batadv_hash_destroy(bat_priv->bla.backbone_hash);
 		bat_priv->bla.backbone_hash =3D NULL;
 	}
-	if (primary_if)
-		batadv_hardif_put(primary_if);
+	batadv_hardif_put(primary_if);
 }
=20
 /**
@@ -2002,10 +1999,8 @@ bool batadv_bla_rx(struct batadv_priv *bat_priv, s=
truct sk_buff *skb,
 	ret =3D true;
=20
 out:
-	if (primary_if)
-		batadv_hardif_put(primary_if);
-	if (claim)
-		batadv_claim_put(claim);
+	batadv_hardif_put(primary_if);
+	batadv_claim_put(claim);
 	return ret;
 }
=20
@@ -2109,10 +2104,8 @@ bool batadv_bla_tx(struct batadv_priv *bat_priv, s=
truct sk_buff *skb,
 handled:
 	ret =3D true;
 out:
-	if (primary_if)
-		batadv_hardif_put(primary_if);
-	if (claim)
-		batadv_claim_put(claim);
+	batadv_hardif_put(primary_if);
+	batadv_claim_put(claim);
 	return ret;
 }
=20
@@ -2277,8 +2270,7 @@ int batadv_bla_claim_dump(struct sk_buff *msg, stru=
ct netlink_callback *cb)
 	ret =3D msg->len;
=20
 out:
-	if (primary_if)
-		batadv_hardif_put(primary_if);
+	batadv_hardif_put(primary_if);
=20
 	dev_put(soft_iface);
=20
@@ -2448,8 +2440,7 @@ int batadv_bla_backbone_dump(struct sk_buff *msg, s=
truct netlink_callback *cb)
 	ret =3D msg->len;
=20
 out:
-	if (primary_if)
-		batadv_hardif_put(primary_if);
+	batadv_hardif_put(primary_if);
=20
 	dev_put(soft_iface);
=20
diff --git a/net/batman-adv/distributed-arp-table.c b/net/batman-adv/dist=
ributed-arp-table.c
index 60f1ae1abd81..2f008e329007 100644
--- a/net/batman-adv/distributed-arp-table.c
+++ b/net/batman-adv/distributed-arp-table.c
@@ -408,8 +408,7 @@ static void batadv_dat_entry_add(struct batadv_priv *=
bat_priv, __be32 ip,
 		   &dat_entry->ip, dat_entry->mac_addr, batadv_print_vid(vid));
=20
 out:
-	if (dat_entry)
-		batadv_dat_entry_put(dat_entry);
+	batadv_dat_entry_put(dat_entry);
 }
=20
 #ifdef CONFIG_BATMAN_ADV_DEBUG
@@ -597,8 +596,7 @@ static void batadv_choose_next_candidate(struct batad=
v_priv *bat_priv,
 				continue;
=20
 			max =3D tmp_max;
-			if (max_orig_node)
-				batadv_orig_node_put(max_orig_node);
+			batadv_orig_node_put(max_orig_node);
 			max_orig_node =3D orig_node;
 		}
 		rcu_read_unlock();
@@ -984,8 +982,7 @@ int batadv_dat_cache_dump(struct sk_buff *msg, struct=
 netlink_callback *cb)
 	ret =3D msg->len;
=20
 out:
-	if (primary_if)
-		batadv_hardif_put(primary_if);
+	batadv_hardif_put(primary_if);
=20
 	dev_put(soft_iface);
=20
@@ -1220,8 +1217,7 @@ bool batadv_dat_snoop_outgoing_arp_request(struct b=
atadv_priv *bat_priv,
 					      BATADV_P_DAT_DHT_GET);
 	}
 out:
-	if (dat_entry)
-		batadv_dat_entry_put(dat_entry);
+	batadv_dat_entry_put(dat_entry);
 	return ret;
 }
=20
@@ -1288,8 +1284,7 @@ bool batadv_dat_snoop_incoming_arp_request(struct b=
atadv_priv *bat_priv,
 		ret =3D true;
 	}
 out:
-	if (dat_entry)
-		batadv_dat_entry_put(dat_entry);
+	batadv_dat_entry_put(dat_entry);
 	if (ret)
 		kfree_skb(skb);
 	return ret;
@@ -1422,8 +1417,7 @@ bool batadv_dat_snoop_incoming_arp_reply(struct bat=
adv_priv *bat_priv,
 out:
 	if (dropped)
 		kfree_skb(skb);
-	if (dat_entry)
-		batadv_dat_entry_put(dat_entry);
+	batadv_dat_entry_put(dat_entry);
 	/* if dropped =3D=3D false -> deliver to the interface */
 	return dropped;
 }
@@ -1832,7 +1826,6 @@ bool batadv_dat_drop_broadcast_packet(struct batadv=
_priv *bat_priv,
 	ret =3D true;
=20
 out:
-	if (dat_entry)
-		batadv_dat_entry_put(dat_entry);
+	batadv_dat_entry_put(dat_entry);
 	return ret;
 }
diff --git a/net/batman-adv/fragmentation.c b/net/batman-adv/fragmentatio=
n.c
index a5d9d800082b..0899a729a23f 100644
--- a/net/batman-adv/fragmentation.c
+++ b/net/batman-adv/fragmentation.c
@@ -381,10 +381,8 @@ bool batadv_frag_skb_fwd(struct sk_buff *skb,
 	}
=20
 out:
-	if (orig_node_dst)
-		batadv_orig_node_put(orig_node_dst);
-	if (neigh_node)
-		batadv_neigh_node_put(neigh_node);
+	batadv_orig_node_put(orig_node_dst);
+	batadv_neigh_node_put(neigh_node);
 	return ret;
 }
=20
diff --git a/net/batman-adv/gateway_client.c b/net/batman-adv/gateway_cli=
ent.c
index c36a813249a9..b7466136e292 100644
--- a/net/batman-adv/gateway_client.c
+++ b/net/batman-adv/gateway_client.c
@@ -120,8 +120,7 @@ batadv_gw_get_selected_orig(struct batadv_priv *bat_p=
riv)
 unlock:
 	rcu_read_unlock();
 out:
-	if (gw_node)
-		batadv_gw_node_put(gw_node);
+	batadv_gw_node_put(gw_node);
 	return orig_node;
 }
=20
@@ -138,8 +137,7 @@ static void batadv_gw_select(struct batadv_priv *bat_=
priv,
 	curr_gw_node =3D rcu_replace_pointer(bat_priv->gw.curr_gw, new_gw_node,
 					   true);
=20
-	if (curr_gw_node)
-		batadv_gw_node_put(curr_gw_node);
+	batadv_gw_node_put(curr_gw_node);
=20
 	spin_unlock_bh(&bat_priv->gw.list_lock);
 }
@@ -274,14 +272,10 @@ void batadv_gw_election(struct batadv_priv *bat_pri=
v)
 	batadv_gw_select(bat_priv, next_gw);
=20
 out:
-	if (curr_gw)
-		batadv_gw_node_put(curr_gw);
-	if (next_gw)
-		batadv_gw_node_put(next_gw);
-	if (router)
-		batadv_neigh_node_put(router);
-	if (router_ifinfo)
-		batadv_neigh_ifinfo_put(router_ifinfo);
+	batadv_gw_node_put(curr_gw);
+	batadv_gw_node_put(next_gw);
+	batadv_neigh_node_put(router);
+	batadv_neigh_ifinfo_put(router_ifinfo);
 }
=20
 /**
@@ -315,8 +309,7 @@ void batadv_gw_check_election(struct batadv_priv *bat=
_priv,
 reselect:
 	batadv_gw_reselect(bat_priv);
 out:
-	if (curr_gw_orig)
-		batadv_orig_node_put(curr_gw_orig);
+	batadv_orig_node_put(curr_gw_orig);
 }
=20
 /**
@@ -456,13 +449,11 @@ void batadv_gw_node_update(struct batadv_priv *bat_=
priv,
 		if (gw_node =3D=3D curr_gw)
 			batadv_gw_reselect(bat_priv);
=20
-		if (curr_gw)
-			batadv_gw_node_put(curr_gw);
+		batadv_gw_node_put(curr_gw);
 	}
=20
 out:
-	if (gw_node)
-		batadv_gw_node_put(gw_node);
+	batadv_gw_node_put(gw_node);
 }
=20
 /**
@@ -545,8 +536,7 @@ int batadv_gw_dump(struct sk_buff *msg, struct netlin=
k_callback *cb)
 	ret =3D msg->len;
=20
 out:
-	if (primary_if)
-		batadv_hardif_put(primary_if);
+	batadv_hardif_put(primary_if);
 	dev_put(soft_iface);
=20
 	return ret;
@@ -769,15 +759,10 @@ bool batadv_gw_out_of_range(struct batadv_priv *bat=
_priv,
 	batadv_neigh_ifinfo_put(old_ifinfo);
=20
 out:
-	if (orig_dst_node)
-		batadv_orig_node_put(orig_dst_node);
-	if (curr_gw)
-		batadv_gw_node_put(curr_gw);
-	if (gw_node)
-		batadv_gw_node_put(gw_node);
-	if (neigh_old)
-		batadv_neigh_node_put(neigh_old);
-	if (neigh_curr)
-		batadv_neigh_node_put(neigh_curr);
+	batadv_orig_node_put(orig_dst_node);
+	batadv_gw_node_put(curr_gw);
+	batadv_gw_node_put(gw_node);
+	batadv_neigh_node_put(neigh_old);
+	batadv_neigh_node_put(neigh_curr);
 	return out_of_range;
 }
diff --git a/net/batman-adv/hard-interface.c b/net/batman-adv/hard-interf=
ace.c
index 55d97e18aa4a..8a2b78f9c4b2 100644
--- a/net/batman-adv/hard-interface.c
+++ b/net/batman-adv/hard-interface.c
@@ -236,8 +236,7 @@ static struct net_device *batadv_get_real_netdevice(s=
truct net_device *netdev)
 	real_netdev =3D dev_get_by_index(real_net, ifindex);
=20
 out:
-	if (hard_iface)
-		batadv_hardif_put(hard_iface);
+	batadv_hardif_put(hard_iface);
 	return real_netdev;
 }
=20
@@ -457,8 +456,7 @@ static void batadv_primary_if_update_addr(struct bata=
dv_priv *bat_priv,
 	batadv_dat_init_own_addr(bat_priv, primary_if);
 	batadv_bla_update_orig_address(bat_priv, primary_if, oldif);
 out:
-	if (primary_if)
-		batadv_hardif_put(primary_if);
+	batadv_hardif_put(primary_if);
 }
=20
 static void batadv_primary_if_select(struct batadv_priv *bat_priv,
@@ -481,8 +479,7 @@ static void batadv_primary_if_select(struct batadv_pr=
iv *bat_priv,
 	batadv_primary_if_update_addr(bat_priv, curr_hard_iface);
=20
 out:
-	if (curr_hard_iface)
-		batadv_hardif_put(curr_hard_iface);
+	batadv_hardif_put(curr_hard_iface);
 }
=20
 static bool
@@ -657,8 +654,7 @@ batadv_hardif_activate_interface(struct batadv_hard_i=
face *hard_iface)
 		bat_priv->algo_ops->iface.activate(hard_iface);
=20
 out:
-	if (primary_if)
-		batadv_hardif_put(primary_if);
+	batadv_hardif_put(primary_if);
 }
=20
 static void
@@ -811,8 +807,7 @@ void batadv_hardif_disable_interface(struct batadv_ha=
rd_iface *hard_iface)
 		new_if =3D batadv_hardif_get_active(hard_iface->soft_iface);
 		batadv_primary_if_select(bat_priv, new_if);
=20
-		if (new_if)
-			batadv_hardif_put(new_if);
+		batadv_hardif_put(new_if);
 	}
=20
 	bat_priv->algo_ops->iface.disable(hard_iface);
@@ -834,8 +829,7 @@ void batadv_hardif_disable_interface(struct batadv_ha=
rd_iface *hard_iface)
 	batadv_hardif_put(hard_iface);
=20
 out:
-	if (primary_if)
-		batadv_hardif_put(primary_if);
+	batadv_hardif_put(primary_if);
 }
=20
 static struct batadv_hard_iface *
@@ -990,8 +984,7 @@ static int batadv_hard_if_event(struct notifier_block=
 *this,
 hardif_put:
 	batadv_hardif_put(hard_iface);
 out:
-	if (primary_if)
-		batadv_hardif_put(primary_if);
+	batadv_hardif_put(primary_if);
 	return NOTIFY_DONE;
 }
=20
diff --git a/net/batman-adv/multicast.c b/net/batman-adv/multicast.c
index 0158f267c403..a3b6658ed789 100644
--- a/net/batman-adv/multicast.c
+++ b/net/batman-adv/multicast.c
@@ -2241,7 +2241,7 @@ batadv_mcast_netlink_get_primary(struct netlink_cal=
lback *cb,
=20
 	if (!ret && primary_if)
 		*primary_if =3D hard_iface;
-	else if (hard_iface)
+	else
 		batadv_hardif_put(hard_iface);
=20
 	return ret;
diff --git a/net/batman-adv/netlink.c b/net/batman-adv/netlink.c
index b6cc746e01a6..29276284d281 100644
--- a/net/batman-adv/netlink.c
+++ b/net/batman-adv/netlink.c
@@ -359,15 +359,13 @@ static int batadv_netlink_mesh_fill(struct sk_buff =
*msg,
 			atomic_read(&bat_priv->orig_interval)))
 		goto nla_put_failure;
=20
-	if (primary_if)
-		batadv_hardif_put(primary_if);
+	batadv_hardif_put(primary_if);
=20
 	genlmsg_end(msg, hdr);
 	return 0;
=20
 nla_put_failure:
-	if (primary_if)
-		batadv_hardif_put(primary_if);
+	batadv_hardif_put(primary_if);
=20
 	genlmsg_cancel(msg, hdr);
 	return -EMSGSIZE;
diff --git a/net/batman-adv/network-coding.c b/net/batman-adv/network-cod=
ing.c
index 136b1a8e5127..9f06132e007d 100644
--- a/net/batman-adv/network-coding.c
+++ b/net/batman-adv/network-coding.c
@@ -936,10 +936,8 @@ void batadv_nc_update_nc_node(struct batadv_priv *ba=
t_priv,
 	out_nc_node->last_seen =3D jiffies;
=20
 out:
-	if (in_nc_node)
-		batadv_nc_node_put(in_nc_node);
-	if (out_nc_node)
-		batadv_nc_node_put(out_nc_node);
+	batadv_nc_node_put(in_nc_node);
+	batadv_nc_node_put(out_nc_node);
 }
=20
 /**
@@ -1215,14 +1213,10 @@ static bool batadv_nc_code_packets(struct batadv_=
priv *bat_priv,
 	batadv_send_unicast_skb(skb_dest, first_dest);
 	res =3D true;
 out:
-	if (router_neigh)
-		batadv_neigh_node_put(router_neigh);
-	if (router_coding)
-		batadv_neigh_node_put(router_coding);
-	if (router_neigh_ifinfo)
-		batadv_neigh_ifinfo_put(router_neigh_ifinfo);
-	if (router_coding_ifinfo)
-		batadv_neigh_ifinfo_put(router_coding_ifinfo);
+	batadv_neigh_node_put(router_neigh);
+	batadv_neigh_node_put(router_coding);
+	batadv_neigh_ifinfo_put(router_neigh_ifinfo);
+	batadv_neigh_ifinfo_put(router_coding_ifinfo);
 	return res;
 }
=20
diff --git a/net/batman-adv/originator.c b/net/batman-adv/originator.c
index 3693f47d7a9e..aadc653ca1d8 100644
--- a/net/batman-adv/originator.c
+++ b/net/batman-adv/originator.c
@@ -664,8 +664,7 @@ batadv_neigh_node_create(struct batadv_orig_node *ori=
g_node,
 out:
 	spin_unlock_bh(&orig_node->neigh_list_lock);
=20
-	if (hardif_neigh)
-		batadv_hardif_neigh_put(hardif_neigh);
+	batadv_hardif_neigh_put(hardif_neigh);
 	return neigh_node;
 }
=20
@@ -757,11 +756,9 @@ int batadv_hardif_neigh_dump(struct sk_buff *msg, st=
ruct netlink_callback *cb)
 	ret =3D msg->len;
=20
  out:
-	if (hardif)
-		batadv_hardif_put(hardif);
+	batadv_hardif_put(hardif);
 	dev_put(hard_iface);
-	if (primary_if)
-		batadv_hardif_put(primary_if);
+	batadv_hardif_put(primary_if);
 	dev_put(soft_iface);
=20
 	return ret;
@@ -784,8 +781,7 @@ void batadv_orig_ifinfo_release(struct kref *ref)
=20
 	/* this is the last reference to this object */
 	router =3D rcu_dereference_protected(orig_ifinfo->router, true);
-	if (router)
-		batadv_neigh_node_put(router);
+	batadv_neigh_node_put(router);
=20
 	kfree_rcu(orig_ifinfo, rcu);
 }
@@ -843,8 +839,7 @@ void batadv_orig_node_release(struct kref *ref)
 	orig_node->last_bonding_candidate =3D NULL;
 	spin_unlock_bh(&orig_node->neigh_list_lock);
=20
-	if (last_candidate)
-		batadv_orig_ifinfo_put(last_candidate);
+	batadv_orig_ifinfo_put(last_candidate);
=20
 	spin_lock_bh(&orig_node->vlan_list_lock);
 	hlist_for_each_entry_safe(vlan, node_tmp, &orig_node->vlan_list, list) =
{
@@ -1151,8 +1146,7 @@ batadv_find_best_neighbor(struct batadv_priv *bat_p=
riv,
 		if (!kref_get_unless_zero(&neigh->refcount))
 			continue;
=20
-		if (best)
-			batadv_neigh_node_put(best);
+		batadv_neigh_node_put(best);
=20
 		best =3D neigh;
 	}
@@ -1197,8 +1191,7 @@ static bool batadv_purge_orig_node(struct batadv_pr=
iv *bat_priv,
 						    BATADV_IF_DEFAULT);
 	batadv_update_route(bat_priv, orig_node, BATADV_IF_DEFAULT,
 			    best_neigh_node);
-	if (best_neigh_node)
-		batadv_neigh_node_put(best_neigh_node);
+	batadv_neigh_node_put(best_neigh_node);
=20
 	/* ... then for all other interfaces. */
 	rcu_read_lock();
@@ -1217,8 +1210,7 @@ static bool batadv_purge_orig_node(struct batadv_pr=
iv *bat_priv,
 							    hard_iface);
 		batadv_update_route(bat_priv, orig_node, hard_iface,
 				    best_neigh_node);
-		if (best_neigh_node)
-			batadv_neigh_node_put(best_neigh_node);
+		batadv_neigh_node_put(best_neigh_node);
=20
 		batadv_hardif_put(hard_iface);
 	}
@@ -1348,11 +1340,9 @@ int batadv_orig_dump(struct sk_buff *msg, struct n=
etlink_callback *cb)
 	ret =3D msg->len;
=20
  out:
-	if (hardif)
-		batadv_hardif_put(hardif);
+	batadv_hardif_put(hardif);
 	dev_put(hard_iface);
-	if (primary_if)
-		batadv_hardif_put(primary_if);
+	batadv_hardif_put(primary_if);
 	dev_put(soft_iface);
=20
 	return ret;
diff --git a/net/batman-adv/routing.c b/net/batman-adv/routing.c
index bb9e93e3d98c..970d0d7ccc98 100644
--- a/net/batman-adv/routing.c
+++ b/net/batman-adv/routing.c
@@ -101,8 +101,7 @@ static void _batadv_update_route(struct batadv_priv *=
bat_priv,
 	}
=20
 	/* decrease refcount of previous best neighbor */
-	if (curr_router)
-		batadv_neigh_node_put(curr_router);
+	batadv_neigh_node_put(curr_router);
 }
=20
 /**
@@ -128,8 +127,7 @@ void batadv_update_route(struct batadv_priv *bat_priv=
,
 		_batadv_update_route(bat_priv, orig_node, recv_if, neigh_node);
=20
 out:
-	if (router)
-		batadv_neigh_node_put(router);
+	batadv_neigh_node_put(router);
 }
=20
 /**
@@ -269,10 +267,8 @@ static int batadv_recv_my_icmp_packet(struct batadv_=
priv *bat_priv,
 		goto out;
 	}
 out:
-	if (primary_if)
-		batadv_hardif_put(primary_if);
-	if (orig_node)
-		batadv_orig_node_put(orig_node);
+	batadv_hardif_put(primary_if);
+	batadv_orig_node_put(orig_node);
=20
 	kfree_skb(skb);
=20
@@ -324,10 +320,8 @@ static int batadv_recv_icmp_ttl_exceeded(struct bata=
dv_priv *bat_priv,
 	skb =3D NULL;
=20
 out:
-	if (primary_if)
-		batadv_hardif_put(primary_if);
-	if (orig_node)
-		batadv_orig_node_put(orig_node);
+	batadv_hardif_put(primary_if);
+	batadv_orig_node_put(orig_node);
=20
 	kfree_skb(skb);
=20
@@ -425,8 +419,7 @@ int batadv_recv_icmp_packet(struct sk_buff *skb,
 	skb =3D NULL;
=20
 put_orig_node:
-	if (orig_node)
-		batadv_orig_node_put(orig_node);
+	batadv_orig_node_put(orig_node);
 free_skb:
 	kfree_skb(skb);
=20
@@ -513,8 +506,7 @@ batadv_last_bonding_replace(struct batadv_orig_node *=
orig_node,
 	orig_node->last_bonding_candidate =3D new_candidate;
 	spin_unlock_bh(&orig_node->neigh_list_lock);
=20
-	if (old_candidate)
-		batadv_orig_ifinfo_put(old_candidate);
+	batadv_orig_ifinfo_put(old_candidate);
 }
=20
 /**
@@ -656,8 +648,7 @@ batadv_find_router(struct batadv_priv *bat_priv,
 		batadv_orig_ifinfo_put(next_candidate);
 	}
=20
-	if (last_candidate)
-		batadv_orig_ifinfo_put(last_candidate);
+	batadv_orig_ifinfo_put(last_candidate);
=20
 	return router;
 }
@@ -785,10 +776,8 @@ batadv_reroute_unicast_packet(struct batadv_priv *ba=
t_priv, struct sk_buff *skb,
=20
 	ret =3D true;
 out:
-	if (primary_if)
-		batadv_hardif_put(primary_if);
-	if (orig_node)
-		batadv_orig_node_put(orig_node);
+	batadv_hardif_put(primary_if);
+	batadv_orig_node_put(orig_node);
=20
 	return ret;
 }
@@ -1031,8 +1020,7 @@ int batadv_recv_unicast_packet(struct sk_buff *skb,
 				    orig_node);
=20
 rx_success:
-		if (orig_node)
-			batadv_orig_node_put(orig_node);
+		batadv_orig_node_put(orig_node);
=20
 		return NET_RX_SUCCESS;
 	}
@@ -1279,7 +1267,6 @@ int batadv_recv_bcast_packet(struct sk_buff *skb,
 	kfree_skb(skb);
 	ret =3D NET_RX_DROP;
 out:
-	if (orig_node)
-		batadv_orig_node_put(orig_node);
+	batadv_orig_node_put(orig_node);
 	return ret;
 }
diff --git a/net/batman-adv/send.c b/net/batman-adv/send.c
index 0b9dd29d3b6a..2a33458be65c 100644
--- a/net/batman-adv/send.c
+++ b/net/batman-adv/send.c
@@ -152,8 +152,7 @@ int batadv_send_unicast_skb(struct sk_buff *skb,
 	if (hardif_neigh && ret !=3D NET_XMIT_DROP)
 		hardif_neigh->bat_v.last_unicast_tx =3D jiffies;
=20
-	if (hardif_neigh)
-		batadv_hardif_neigh_put(hardif_neigh);
+	batadv_hardif_neigh_put(hardif_neigh);
 #endif
=20
 	return ret;
@@ -309,8 +308,7 @@ bool batadv_send_skb_prepare_unicast_4addr(struct bat=
adv_priv *bat_priv,
=20
 	ret =3D true;
 out:
-	if (primary_if)
-		batadv_hardif_put(primary_if);
+	batadv_hardif_put(primary_if);
 	return ret;
 }
=20
@@ -425,8 +423,7 @@ int batadv_send_skb_via_tt_generic(struct batadv_priv=
 *bat_priv,
 	ret =3D batadv_send_skb_unicast(bat_priv, skb, packet_type,
 				      packet_subtype, orig_node, vid);
=20
-	if (orig_node)
-		batadv_orig_node_put(orig_node);
+	batadv_orig_node_put(orig_node);
=20
 	return ret;
 }
@@ -452,8 +449,7 @@ int batadv_send_skb_via_gw(struct batadv_priv *bat_pr=
iv, struct sk_buff *skb,
 	ret =3D batadv_send_skb_unicast(bat_priv, skb, BATADV_UNICAST_4ADDR,
 				      BATADV_P_DATA, orig_node, vid);
=20
-	if (orig_node)
-		batadv_orig_node_put(orig_node);
+	batadv_orig_node_put(orig_node);
=20
 	return ret;
 }
@@ -474,10 +470,8 @@ void batadv_forw_packet_free(struct batadv_forw_pack=
et *forw_packet,
 	else
 		consume_skb(forw_packet->skb);
=20
-	if (forw_packet->if_incoming)
-		batadv_hardif_put(forw_packet->if_incoming);
-	if (forw_packet->if_outgoing)
-		batadv_hardif_put(forw_packet->if_outgoing);
+	batadv_hardif_put(forw_packet->if_incoming);
+	batadv_hardif_put(forw_packet->if_outgoing);
 	if (forw_packet->queue_left)
 		atomic_inc(forw_packet->queue_left);
 	kfree(forw_packet);
@@ -867,8 +861,7 @@ static bool batadv_send_no_broadcast(struct batadv_pr=
iv *bat_priv,
 	ret =3D batadv_hardif_no_broadcast(if_out, bcast_packet->orig,
 					 orig_neigh);
=20
-	if (neigh_node)
-		batadv_hardif_neigh_put(neigh_node);
+	batadv_hardif_neigh_put(neigh_node);
=20
 	/* ok, may broadcast */
 	if (!ret)
diff --git a/net/batman-adv/soft-interface.c b/net/batman-adv/soft-interf=
ace.c
index e3580ddbf040..0604b0279573 100644
--- a/net/batman-adv/soft-interface.c
+++ b/net/batman-adv/soft-interface.c
@@ -383,10 +383,8 @@ static netdev_tx_t batadv_interface_tx(struct sk_buf=
f *skb,
 dropped_freed:
 	batadv_inc_counter(bat_priv, BATADV_CNT_TX_DROPPED);
 end:
-	if (mcast_single_orig)
-		batadv_orig_node_put(mcast_single_orig);
-	if (primary_if)
-		batadv_hardif_put(primary_if);
+	batadv_orig_node_put(mcast_single_orig);
+	batadv_hardif_put(primary_if);
 	return NETDEV_TX_OK;
 }
=20
@@ -838,8 +836,7 @@ static int batadv_softif_slave_add(struct net_device =
*dev,
 	ret =3D batadv_hardif_enable_interface(hard_iface, dev);
=20
 out:
-	if (hard_iface)
-		batadv_hardif_put(hard_iface);
+	batadv_hardif_put(hard_iface);
 	return ret;
 }
=20
@@ -865,8 +862,7 @@ static int batadv_softif_slave_del(struct net_device =
*dev,
 	ret =3D 0;
=20
 out:
-	if (hard_iface)
-		batadv_hardif_put(hard_iface);
+	batadv_hardif_put(hard_iface);
 	return ret;
 }
=20
diff --git a/net/batman-adv/tp_meter.c b/net/batman-adv/tp_meter.c
index b0e67cd51873..56b9fe97b3b4 100644
--- a/net/batman-adv/tp_meter.c
+++ b/net/batman-adv/tp_meter.c
@@ -751,12 +751,9 @@ static void batadv_tp_recv_ack(struct batadv_priv *b=
at_priv,
=20
 	wake_up(&tp_vars->more_bytes);
 out:
-	if (likely(primary_if))
-		batadv_hardif_put(primary_if);
-	if (likely(orig_node))
-		batadv_orig_node_put(orig_node);
-	if (likely(tp_vars))
-		batadv_tp_vars_put(tp_vars);
+	batadv_hardif_put(primary_if);
+	batadv_orig_node_put(orig_node);
+	batadv_tp_vars_put(tp_vars);
 }
=20
 /**
@@ -885,10 +882,8 @@ static int batadv_tp_send(void *arg)
 	}
=20
 out:
-	if (likely(primary_if))
-		batadv_hardif_put(primary_if);
-	if (likely(orig_node))
-		batadv_orig_node_put(orig_node);
+	batadv_hardif_put(primary_if);
+	batadv_orig_node_put(orig_node);
=20
 	batadv_tp_sender_end(bat_priv, tp_vars);
 	batadv_tp_sender_cleanup(bat_priv, tp_vars);
@@ -1208,10 +1203,8 @@ static int batadv_tp_send_ack(struct batadv_priv *=
bat_priv, const u8 *dst,
 	ret =3D 0;
=20
 out:
-	if (likely(orig_node))
-		batadv_orig_node_put(orig_node);
-	if (likely(primary_if))
-		batadv_hardif_put(primary_if);
+	batadv_orig_node_put(orig_node);
+	batadv_hardif_put(primary_if);
=20
 	return ret;
 }
@@ -1459,8 +1452,7 @@ static void batadv_tp_recv_msg(struct batadv_priv *=
bat_priv,
 	batadv_tp_send_ack(bat_priv, icmp->orig, tp_vars->last_recv,
 			   icmp->timestamp, icmp->session, icmp->uid);
 out:
-	if (likely(tp_vars))
-		batadv_tp_vars_put(tp_vars);
+	batadv_tp_vars_put(tp_vars);
 }
=20
 /**
diff --git a/net/batman-adv/translation-table.c b/net/batman-adv/translat=
ion-table.c
index b89a4ed51eb8..e0b3dace2020 100644
--- a/net/batman-adv/translation-table.c
+++ b/net/batman-adv/translation-table.c
@@ -813,13 +813,10 @@ bool batadv_tt_local_add(struct net_device *soft_if=
ace, const u8 *addr,
=20
 	ret =3D true;
 out:
-	if (in_hardif)
-		batadv_hardif_put(in_hardif);
+	batadv_hardif_put(in_hardif);
 	dev_put(in_dev);
-	if (tt_local)
-		batadv_tt_local_entry_put(tt_local);
-	if (tt_global)
-		batadv_tt_global_entry_put(tt_global);
+	batadv_tt_local_entry_put(tt_local);
+	batadv_tt_global_entry_put(tt_global);
 	return ret;
 }
=20
@@ -1209,8 +1206,7 @@ int batadv_tt_local_dump(struct sk_buff *msg, struc=
t netlink_callback *cb)
 	ret =3D msg->len;
=20
  out:
-	if (primary_if)
-		batadv_hardif_put(primary_if);
+	batadv_hardif_put(primary_if);
 	dev_put(soft_iface);
=20
 	cb->args[0] =3D bucket;
@@ -1298,8 +1294,7 @@ u16 batadv_tt_local_remove(struct batadv_priv *bat_=
priv, const u8 *addr,
 	batadv_tt_local_entry_put(tt_removed_entry);
=20
 out:
-	if (tt_local_entry)
-		batadv_tt_local_entry_put(tt_local_entry);
+	batadv_tt_local_entry_put(tt_local_entry);
=20
 	return curr_flags;
 }
@@ -1569,8 +1564,7 @@ batadv_tt_global_orig_entry_add(struct batadv_tt_gl=
obal_entry *tt_global,
 sync_flags:
 	batadv_tt_global_sync_flags(tt_global);
 out:
-	if (orig_entry)
-		batadv_tt_orig_list_entry_put(orig_entry);
+	batadv_tt_orig_list_entry_put(orig_entry);
=20
 	spin_unlock_bh(&tt_global->list_lock);
 }
@@ -1743,10 +1737,8 @@ static bool batadv_tt_global_add(struct batadv_pri=
v *bat_priv,
 		tt_global_entry->common.flags &=3D ~BATADV_TT_CLIENT_ROAM;
=20
 out:
-	if (tt_global_entry)
-		batadv_tt_global_entry_put(tt_global_entry);
-	if (tt_local_entry)
-		batadv_tt_local_entry_put(tt_local_entry);
+	batadv_tt_global_entry_put(tt_global_entry);
+	batadv_tt_local_entry_put(tt_local_entry);
 	return ret;
 }
=20
@@ -1782,15 +1774,13 @@ batadv_transtable_best_orig(struct batadv_priv *b=
at_priv,
 		}
=20
 		/* release the refcount for the "old" best */
-		if (best_router)
-			batadv_neigh_node_put(best_router);
+		batadv_neigh_node_put(best_router);
=20
 		best_entry =3D orig_entry;
 		best_router =3D router;
 	}
=20
-	if (best_router)
-		batadv_neigh_node_put(best_router);
+	batadv_neigh_node_put(best_router);
=20
 	return best_entry;
 }
@@ -1996,8 +1986,7 @@ int batadv_tt_global_dump(struct sk_buff *msg, stru=
ct netlink_callback *cb)
 	ret =3D msg->len;
=20
  out:
-	if (primary_if)
-		batadv_hardif_put(primary_if);
+	batadv_hardif_put(primary_if);
 	dev_put(soft_iface);
=20
 	cb->args[0] =3D bucket;
@@ -2188,10 +2177,8 @@ static void batadv_tt_global_del(struct batadv_pri=
v *bat_priv,
 	}
=20
 out:
-	if (tt_global_entry)
-		batadv_tt_global_entry_put(tt_global_entry);
-	if (local_entry)
-		batadv_tt_local_entry_put(local_entry);
+	batadv_tt_global_entry_put(tt_global_entry);
+	batadv_tt_local_entry_put(local_entry);
 }
=20
 /**
@@ -2418,10 +2405,8 @@ struct batadv_orig_node *batadv_transtable_search(=
struct batadv_priv *bat_priv,
 	rcu_read_unlock();
=20
 out:
-	if (tt_global_entry)
-		batadv_tt_global_entry_put(tt_global_entry);
-	if (tt_local_entry)
-		batadv_tt_local_entry_put(tt_local_entry);
+	batadv_tt_global_entry_put(tt_global_entry);
+	batadv_tt_local_entry_put(tt_local_entry);
=20
 	return orig_node;
 }
@@ -2982,8 +2967,7 @@ static bool batadv_send_tt_request(struct batadv_pr=
iv *bat_priv,
 	ret =3D true;
=20
 out:
-	if (primary_if)
-		batadv_hardif_put(primary_if);
+	batadv_hardif_put(primary_if);
=20
 	if (ret && tt_req_node) {
 		spin_lock_bh(&bat_priv->tt.req_list_lock);
@@ -2994,8 +2978,7 @@ static bool batadv_send_tt_request(struct batadv_pr=
iv *bat_priv,
 		spin_unlock_bh(&bat_priv->tt.req_list_lock);
 	}
=20
-	if (tt_req_node)
-		batadv_tt_req_node_put(tt_req_node);
+	batadv_tt_req_node_put(tt_req_node);
=20
 	kfree(tvlv_tt_data);
 	return ret;
@@ -3126,10 +3109,8 @@ static bool batadv_send_other_tt_response(struct b=
atadv_priv *bat_priv,
 	spin_unlock_bh(&req_dst_orig_node->tt_buff_lock);
=20
 out:
-	if (res_dst_orig_node)
-		batadv_orig_node_put(res_dst_orig_node);
-	if (req_dst_orig_node)
-		batadv_orig_node_put(req_dst_orig_node);
+	batadv_orig_node_put(res_dst_orig_node);
+	batadv_orig_node_put(req_dst_orig_node);
 	kfree(tvlv_tt_data);
 	return ret;
 }
@@ -3243,10 +3224,8 @@ static bool batadv_send_my_tt_response(struct bata=
dv_priv *bat_priv,
 	spin_unlock_bh(&bat_priv->tt.last_changeset_lock);
 out:
 	spin_unlock_bh(&bat_priv->tt.commit_lock);
-	if (orig_node)
-		batadv_orig_node_put(orig_node);
-	if (primary_if)
-		batadv_hardif_put(primary_if);
+	batadv_orig_node_put(orig_node);
+	batadv_hardif_put(primary_if);
 	kfree(tvlv_tt_data);
 	/* The packet was for this host, so it doesn't need to be re-routed */
 	return true;
@@ -3331,8 +3310,7 @@ static void batadv_tt_fill_gtable(struct batadv_pri=
v *bat_priv,
 	atomic_set(&orig_node->last_ttvn, ttvn);
=20
 out:
-	if (orig_node)
-		batadv_orig_node_put(orig_node);
+	batadv_orig_node_put(orig_node);
 }
=20
 static void batadv_tt_update_changes(struct batadv_priv *bat_priv,
@@ -3373,8 +3351,7 @@ bool batadv_is_my_client(struct batadv_priv *bat_pr=
iv, const u8 *addr,
 		goto out;
 	ret =3D true;
 out:
-	if (tt_local_entry)
-		batadv_tt_local_entry_put(tt_local_entry);
+	batadv_tt_local_entry_put(tt_local_entry);
 	return ret;
 }
=20
@@ -3437,8 +3414,7 @@ static void batadv_handle_tt_response(struct batadv=
_priv *bat_priv,
=20
 	spin_unlock_bh(&bat_priv->tt.req_list_lock);
 out:
-	if (orig_node)
-		batadv_orig_node_put(orig_node);
+	batadv_orig_node_put(orig_node);
 }
=20
 static void batadv_tt_roam_list_free(struct batadv_priv *bat_priv)
@@ -3569,8 +3545,7 @@ static void batadv_send_roam_adv(struct batadv_priv=
 *bat_priv, u8 *client,
 				 &tvlv_roam, sizeof(tvlv_roam));
=20
 out:
-	if (primary_if)
-		batadv_hardif_put(primary_if);
+	batadv_hardif_put(primary_if);
 }
=20
 static void batadv_tt_purge(struct work_struct *work)
@@ -4165,8 +4140,7 @@ static int batadv_roam_tvlv_unicast_handler_v1(stru=
ct batadv_priv *bat_priv,
 			     atomic_read(&orig_node->last_ttvn) + 1);
=20
 out:
-	if (orig_node)
-		batadv_orig_node_put(orig_node);
+	batadv_orig_node_put(orig_node);
 	return NET_RX_SUCCESS;
 }
=20
diff --git a/net/batman-adv/tvlv.c b/net/batman-adv/tvlv.c
index 1efea0acdd95..992773376e51 100644
--- a/net/batman-adv/tvlv.c
+++ b/net/batman-adv/tvlv.c
@@ -444,8 +444,7 @@ int batadv_tvlv_containers_process(struct batadv_priv=
 *bat_priv,
 						ogm_source, orig_node,
 						src, dst, tvlv_value,
 						tvlv_value_cont_len);
-		if (tvlv_handler)
-			batadv_tvlv_handler_put(tvlv_handler);
+		batadv_tvlv_handler_put(tvlv_handler);
 		tvlv_value =3D (u8 *)tvlv_value + tvlv_value_cont_len;
 		tvlv_value_len -=3D tvlv_value_cont_len;
 	}
--=20
2.20.1
