Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C4723F1D09
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 19 Aug 2021 17:41:19 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 428CB80737;
	Thu, 19 Aug 2021 17:41:18 +0200 (CEST)
Received: from simonwunderlich.de (packetmixer.de [IPv6:2001:4d88:2000:24::c0de])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id DD5DC825E8
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 19 Aug 2021 17:41:14 +0200 (CEST)
Received: from kero.packetmixer.de (p200300c5971402c0773d8e0e2371531e.dip0.t-ipconnect.de [IPv6:2003:c5:9714:2c0:773d:8e0e:2371:531e])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by simonwunderlich.de (Postfix) with ESMTPSA id 35C76174027;
	Thu, 19 Aug 2021 17:33:42 +0200 (CEST)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: kuba@kernel.org,
	davem@davemloft.net
Subject: [PATCH 4/6] batman-adv: Check ptr for NULL before reducing its refcnt
Date: Thu, 19 Aug 2021 17:33:32 +0200
Message-Id: <20210819153334.18850-5-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210819153334.18850-1-sw@simonwunderlich.de>
References: <20210819153334.18850-1-sw@simonwunderlich.de>
MIME-Version: 1.0
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates 2001:4d88:2000:24::c0de as permitted sender) smtp.mailfrom=sw@simonwunderlich.de
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1629387674; a=rsa-sha256;
	cv=none;
	b=m27hGI2nXvj1XBAZO7dsCfE2sL0lpSgGtpNWdhR4BevcpNBHQga2aevtLiE282swqbUgPy
	llMcGXDCy6HeC1pewnCy0GuYAfJYnFbmwgoVinrqbXURJY0ZH7V95ZAFQYm/+OHt0lJVNY
	3ItcRFaMp4JVzWvBps6mRTZKDkUVeBw=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1629387674;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=B1kRavAKipNr4iB5TWg9vmOIRnBeB5Xu81Xh4qjPDqM=;
	b=2xgPHIWovx53EexpDPVy8fuM4nCOg2euenv+eqAZV8eL2QeWIeM/X3ajxv5UpkoEmaWzhX
	n4pDEeaSF8/5RGQAy++q7ii7YWKylfgY7LMDwCh2Cot/dwBdtGrf60eNQmgQZdUyYdpiXz
	OCilcPNOef5UXr7X/MqzuftcSQowVys=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: ZGIHKBFBLZRB5SNYALHEVO63NCRBCWZR
X-Message-ID-Hash: ZGIHKBFBLZRB5SNYALHEVO63NCRBCWZR
X-MailFrom: sw@simonwunderlich.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/ZGIHKBFBLZRB5SNYALHEVO63NCRBCWZR/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

From: Sven Eckelmann <sven@narfation.org>

The commit b37a46683739 ("netdevice: add the case if dev is NULL") change=
d
the way how the NULL check for net_devices have to be handled when trying
to reduce its reference counter. Before this commit, it was the
responsibility of the caller to check whether the object is NULL or not.
But it was changed to behave more like kfree. Now the callee has to handl=
e
the NULL-case.

The batman-adv code was scanned via cocinelle for similar places. These
were changed to use the paradigm

  @@
  identifier E, T, R, C;
  identifier put;
  @@
   void put(struct T *E)
   {
  +	if (!E)
  +		return;
  	kref_put(&E->C, R);
   }

Functions which were used in other sources files were moved to the header
to allow the compiler to inline the NULL check and the kref_put call.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
---
 net/batman-adv/bridge_loop_avoidance.c |  6 ++
 net/batman-adv/distributed-arp-table.c |  3 +
 net/batman-adv/gateway_client.c        | 12 +---
 net/batman-adv/gateway_client.h        | 16 ++++-
 net/batman-adv/hard-interface.h        |  3 +
 net/batman-adv/network-coding.c        |  6 ++
 net/batman-adv/originator.c            | 72 ++-----------------
 net/batman-adv/originator.h            | 96 ++++++++++++++++++++++++--
 net/batman-adv/soft-interface.c        | 15 +---
 net/batman-adv/soft-interface.h        | 16 ++++-
 net/batman-adv/tp_meter.c              |  3 +
 net/batman-adv/translation-table.c     | 22 +++---
 net/batman-adv/translation-table.h     | 18 ++++-
 net/batman-adv/tvlv.c                  |  6 ++
 14 files changed, 181 insertions(+), 113 deletions(-)

diff --git a/net/batman-adv/bridge_loop_avoidance.c b/net/batman-adv/brid=
ge_loop_avoidance.c
index 2b639c8b0ded..134db98a4606 100644
--- a/net/batman-adv/bridge_loop_avoidance.c
+++ b/net/batman-adv/bridge_loop_avoidance.c
@@ -162,6 +162,9 @@ static void batadv_backbone_gw_release(struct kref *r=
ef)
  */
 static void batadv_backbone_gw_put(struct batadv_bla_backbone_gw *backbo=
ne_gw)
 {
+	if (!backbone_gw)
+		return;
+
 	kref_put(&backbone_gw->refcount, batadv_backbone_gw_release);
 }
=20
@@ -197,6 +200,9 @@ static void batadv_claim_release(struct kref *ref)
  */
 static void batadv_claim_put(struct batadv_bla_claim *claim)
 {
+	if (!claim)
+		return;
+
 	kref_put(&claim->refcount, batadv_claim_release);
 }
=20
diff --git a/net/batman-adv/distributed-arp-table.c b/net/batman-adv/dist=
ributed-arp-table.c
index 7976a0435662..60f1ae1abd81 100644
--- a/net/batman-adv/distributed-arp-table.c
+++ b/net/batman-adv/distributed-arp-table.c
@@ -127,6 +127,9 @@ static void batadv_dat_entry_release(struct kref *ref=
)
  */
 static void batadv_dat_entry_put(struct batadv_dat_entry *dat_entry)
 {
+	if (!dat_entry)
+		return;
+
 	kref_put(&dat_entry->refcount, batadv_dat_entry_release);
 }
=20
diff --git a/net/batman-adv/gateway_client.c b/net/batman-adv/gateway_cli=
ent.c
index 36a98d3cefe0..c36a813249a9 100644
--- a/net/batman-adv/gateway_client.c
+++ b/net/batman-adv/gateway_client.c
@@ -59,7 +59,7 @@
  *  after rcu grace period
  * @ref: kref pointer of the gw_node
  */
-static void batadv_gw_node_release(struct kref *ref)
+void batadv_gw_node_release(struct kref *ref)
 {
 	struct batadv_gw_node *gw_node;
=20
@@ -69,16 +69,6 @@ static void batadv_gw_node_release(struct kref *ref)
 	kfree_rcu(gw_node, rcu);
 }
=20
-/**
- * batadv_gw_node_put() - decrement the gw_node refcounter and possibly =
release
- *  it
- * @gw_node: gateway node to free
- */
-void batadv_gw_node_put(struct batadv_gw_node *gw_node)
-{
-	kref_put(&gw_node->refcount, batadv_gw_node_release);
-}
-
 /**
  * batadv_gw_get_selected_gw_node() - Get currently selected gateway
  * @bat_priv: the bat priv with all the soft interface information
diff --git a/net/batman-adv/gateway_client.h b/net/batman-adv/gateway_cli=
ent.h
index 2ae5846ef958..95c2ccdaa554 100644
--- a/net/batman-adv/gateway_client.h
+++ b/net/batman-adv/gateway_client.h
@@ -9,6 +9,7 @@
=20
 #include "main.h"
=20
+#include <linux/kref.h>
 #include <linux/netlink.h>
 #include <linux/skbuff.h>
 #include <linux/types.h>
@@ -27,7 +28,7 @@ void batadv_gw_node_update(struct batadv_priv *bat_priv=
,
 void batadv_gw_node_delete(struct batadv_priv *bat_priv,
 			   struct batadv_orig_node *orig_node);
 void batadv_gw_node_free(struct batadv_priv *bat_priv);
-void batadv_gw_node_put(struct batadv_gw_node *gw_node);
+void batadv_gw_node_release(struct kref *ref);
 struct batadv_gw_node *
 batadv_gw_get_selected_gw_node(struct batadv_priv *bat_priv);
 int batadv_gw_dump(struct sk_buff *msg, struct netlink_callback *cb);
@@ -38,4 +39,17 @@ batadv_gw_dhcp_recipient_get(struct sk_buff *skb, unsi=
gned int *header_len,
 struct batadv_gw_node *batadv_gw_node_get(struct batadv_priv *bat_priv,
 					  struct batadv_orig_node *orig_node);
=20
+/**
+ * batadv_gw_node_put() - decrement the gw_node refcounter and possibly =
release
+ *  it
+ * @gw_node: gateway node to free
+ */
+static inline void batadv_gw_node_put(struct batadv_gw_node *gw_node)
+{
+	if (!gw_node)
+		return;
+
+	kref_put(&gw_node->refcount, batadv_gw_node_release);
+}
+
 #endif /* _NET_BATMAN_ADV_GATEWAY_CLIENT_H_ */
diff --git a/net/batman-adv/hard-interface.h b/net/batman-adv/hard-interf=
ace.h
index 8cb2a1f10080..64f660dbbe54 100644
--- a/net/batman-adv/hard-interface.h
+++ b/net/batman-adv/hard-interface.h
@@ -89,6 +89,9 @@ int batadv_hardif_no_broadcast(struct batadv_hard_iface=
 *if_outgoing,
  */
 static inline void batadv_hardif_put(struct batadv_hard_iface *hard_ifac=
e)
 {
+	if (!hard_iface)
+		return;
+
 	kref_put(&hard_iface->refcount, batadv_hardif_release);
 }
=20
diff --git a/net/batman-adv/network-coding.c b/net/batman-adv/network-cod=
ing.c
index 4bb76b434d07..136b1a8e5127 100644
--- a/net/batman-adv/network-coding.c
+++ b/net/batman-adv/network-coding.c
@@ -217,6 +217,9 @@ static void batadv_nc_node_release(struct kref *ref)
  */
 static void batadv_nc_node_put(struct batadv_nc_node *nc_node)
 {
+	if (!nc_node)
+		return;
+
 	kref_put(&nc_node->refcount, batadv_nc_node_release);
 }
=20
@@ -241,6 +244,9 @@ static void batadv_nc_path_release(struct kref *ref)
  */
 static void batadv_nc_path_put(struct batadv_nc_path *nc_path)
 {
+	if (!nc_path)
+		return;
+
 	kref_put(&nc_path->refcount, batadv_nc_path_release);
 }
=20
diff --git a/net/batman-adv/originator.c b/net/batman-adv/originator.c
index 6a4d3f437e00..3693f47d7a9e 100644
--- a/net/batman-adv/originator.c
+++ b/net/batman-adv/originator.c
@@ -177,7 +177,7 @@ batadv_orig_node_vlan_new(struct batadv_orig_node *or=
ig_node,
  *  and queue for free after rcu grace period
  * @ref: kref pointer of the originator-vlan object
  */
-static void batadv_orig_node_vlan_release(struct kref *ref)
+void batadv_orig_node_vlan_release(struct kref *ref)
 {
 	struct batadv_orig_node_vlan *orig_vlan;
=20
@@ -186,16 +186,6 @@ static void batadv_orig_node_vlan_release(struct kre=
f *ref)
 	kfree_rcu(orig_vlan, rcu);
 }
=20
-/**
- * batadv_orig_node_vlan_put() - decrement the refcounter and possibly r=
elease
- *  the originator-vlan object
- * @orig_vlan: the originator-vlan object to release
- */
-void batadv_orig_node_vlan_put(struct batadv_orig_node_vlan *orig_vlan)
-{
-	kref_put(&orig_vlan->refcount, batadv_orig_node_vlan_release);
-}
-
 /**
  * batadv_originator_init() - Initialize all originator structures
  * @bat_priv: the bat priv with all the soft interface information
@@ -231,7 +221,7 @@ int batadv_originator_init(struct batadv_priv *bat_pr=
iv)
  *  free after rcu grace period
  * @ref: kref pointer of the neigh_ifinfo
  */
-static void batadv_neigh_ifinfo_release(struct kref *ref)
+void batadv_neigh_ifinfo_release(struct kref *ref)
 {
 	struct batadv_neigh_ifinfo *neigh_ifinfo;
=20
@@ -243,22 +233,12 @@ static void batadv_neigh_ifinfo_release(struct kref=
 *ref)
 	kfree_rcu(neigh_ifinfo, rcu);
 }
=20
-/**
- * batadv_neigh_ifinfo_put() - decrement the refcounter and possibly rel=
ease
- *  the neigh_ifinfo
- * @neigh_ifinfo: the neigh_ifinfo object to release
- */
-void batadv_neigh_ifinfo_put(struct batadv_neigh_ifinfo *neigh_ifinfo)
-{
-	kref_put(&neigh_ifinfo->refcount, batadv_neigh_ifinfo_release);
-}
-
 /**
  * batadv_hardif_neigh_release() - release hardif neigh node from lists =
and
  *  queue for free after rcu grace period
  * @ref: kref pointer of the neigh_node
  */
-static void batadv_hardif_neigh_release(struct kref *ref)
+void batadv_hardif_neigh_release(struct kref *ref)
 {
 	struct batadv_hardif_neigh_node *hardif_neigh;
=20
@@ -273,22 +253,12 @@ static void batadv_hardif_neigh_release(struct kref=
 *ref)
 	kfree_rcu(hardif_neigh, rcu);
 }
=20
-/**
- * batadv_hardif_neigh_put() - decrement the hardif neighbors refcounter
- *  and possibly release it
- * @hardif_neigh: hardif neigh neighbor to free
- */
-void batadv_hardif_neigh_put(struct batadv_hardif_neigh_node *hardif_nei=
gh)
-{
-	kref_put(&hardif_neigh->refcount, batadv_hardif_neigh_release);
-}
-
 /**
  * batadv_neigh_node_release() - release neigh_node from lists and queue=
 for
  *  free after rcu grace period
  * @ref: kref pointer of the neigh_node
  */
-static void batadv_neigh_node_release(struct kref *ref)
+void batadv_neigh_node_release(struct kref *ref)
 {
 	struct hlist_node *node_tmp;
 	struct batadv_neigh_node *neigh_node;
@@ -308,16 +278,6 @@ static void batadv_neigh_node_release(struct kref *r=
ef)
 	kfree_rcu(neigh_node, rcu);
 }
=20
-/**
- * batadv_neigh_node_put() - decrement the neighbors refcounter and poss=
ibly
- *  release it
- * @neigh_node: neigh neighbor to free
- */
-void batadv_neigh_node_put(struct batadv_neigh_node *neigh_node)
-{
-	kref_put(&neigh_node->refcount, batadv_neigh_node_release);
-}
-
 /**
  * batadv_orig_router_get() - router to the originator depending on ifac=
e
  * @orig_node: the orig node for the router
@@ -812,7 +772,7 @@ int batadv_hardif_neigh_dump(struct sk_buff *msg, str=
uct netlink_callback *cb)
  *  free after rcu grace period
  * @ref: kref pointer of the orig_ifinfo
  */
-static void batadv_orig_ifinfo_release(struct kref *ref)
+void batadv_orig_ifinfo_release(struct kref *ref)
 {
 	struct batadv_orig_ifinfo *orig_ifinfo;
 	struct batadv_neigh_node *router;
@@ -830,16 +790,6 @@ static void batadv_orig_ifinfo_release(struct kref *=
ref)
 	kfree_rcu(orig_ifinfo, rcu);
 }
=20
-/**
- * batadv_orig_ifinfo_put() - decrement the refcounter and possibly rele=
ase
- *  the orig_ifinfo
- * @orig_ifinfo: the orig_ifinfo object to release
- */
-void batadv_orig_ifinfo_put(struct batadv_orig_ifinfo *orig_ifinfo)
-{
-	kref_put(&orig_ifinfo->refcount, batadv_orig_ifinfo_release);
-}
-
 /**
  * batadv_orig_node_free_rcu() - free the orig_node
  * @rcu: rcu pointer of the orig_node
@@ -863,7 +813,7 @@ static void batadv_orig_node_free_rcu(struct rcu_head=
 *rcu)
  *  free after rcu grace period
  * @ref: kref pointer of the orig_node
  */
-static void batadv_orig_node_release(struct kref *ref)
+void batadv_orig_node_release(struct kref *ref)
 {
 	struct hlist_node *node_tmp;
 	struct batadv_neigh_node *neigh_node;
@@ -909,16 +859,6 @@ static void batadv_orig_node_release(struct kref *re=
f)
 	call_rcu(&orig_node->rcu, batadv_orig_node_free_rcu);
 }
=20
-/**
- * batadv_orig_node_put() - decrement the orig node refcounter and possi=
bly
- *  release it
- * @orig_node: the orig node to free
- */
-void batadv_orig_node_put(struct batadv_orig_node *orig_node)
-{
-	kref_put(&orig_node->refcount, batadv_orig_node_release);
-}
-
 /**
  * batadv_originator_free() - Free all originator structures
  * @bat_priv: the bat priv with all the soft interface information
diff --git a/net/batman-adv/originator.h b/net/batman-adv/originator.h
index 805be87d55b8..ea3d69e4e670 100644
--- a/net/batman-adv/originator.h
+++ b/net/batman-adv/originator.h
@@ -12,6 +12,7 @@
 #include <linux/compiler.h>
 #include <linux/if_ether.h>
 #include <linux/jhash.h>
+#include <linux/kref.h>
 #include <linux/netlink.h>
 #include <linux/skbuff.h>
 #include <linux/types.h>
@@ -20,19 +21,18 @@ bool batadv_compare_orig(const struct hlist_node *nod=
e, const void *data2);
 int batadv_originator_init(struct batadv_priv *bat_priv);
 void batadv_originator_free(struct batadv_priv *bat_priv);
 void batadv_purge_orig_ref(struct batadv_priv *bat_priv);
-void batadv_orig_node_put(struct batadv_orig_node *orig_node);
+void batadv_orig_node_release(struct kref *ref);
 struct batadv_orig_node *batadv_orig_node_new(struct batadv_priv *bat_pr=
iv,
 					      const u8 *addr);
 struct batadv_hardif_neigh_node *
 batadv_hardif_neigh_get(const struct batadv_hard_iface *hard_iface,
 			const u8 *neigh_addr);
-void
-batadv_hardif_neigh_put(struct batadv_hardif_neigh_node *hardif_neigh);
+void batadv_hardif_neigh_release(struct kref *ref);
 struct batadv_neigh_node *
 batadv_neigh_node_get_or_create(struct batadv_orig_node *orig_node,
 				struct batadv_hard_iface *hard_iface,
 				const u8 *neigh_addr);
-void batadv_neigh_node_put(struct batadv_neigh_node *neigh_node);
+void batadv_neigh_node_release(struct kref *ref);
 struct batadv_neigh_node *
 batadv_orig_router_get(struct batadv_orig_node *orig_node,
 		       const struct batadv_hard_iface *if_outgoing);
@@ -42,7 +42,7 @@ batadv_neigh_ifinfo_new(struct batadv_neigh_node *neigh=
,
 struct batadv_neigh_ifinfo *
 batadv_neigh_ifinfo_get(struct batadv_neigh_node *neigh,
 			struct batadv_hard_iface *if_outgoing);
-void batadv_neigh_ifinfo_put(struct batadv_neigh_ifinfo *neigh_ifinfo);
+void batadv_neigh_ifinfo_release(struct kref *ref);
=20
 int batadv_hardif_neigh_dump(struct sk_buff *msg, struct netlink_callbac=
k *cb);
=20
@@ -52,7 +52,7 @@ batadv_orig_ifinfo_get(struct batadv_orig_node *orig_no=
de,
 struct batadv_orig_ifinfo *
 batadv_orig_ifinfo_new(struct batadv_orig_node *orig_node,
 		       struct batadv_hard_iface *if_outgoing);
-void batadv_orig_ifinfo_put(struct batadv_orig_ifinfo *orig_ifinfo);
+void batadv_orig_ifinfo_release(struct kref *ref);
=20
 int batadv_orig_dump(struct sk_buff *msg, struct netlink_callback *cb);
 struct batadv_orig_node_vlan *
@@ -61,7 +61,7 @@ batadv_orig_node_vlan_new(struct batadv_orig_node *orig=
_node,
 struct batadv_orig_node_vlan *
 batadv_orig_node_vlan_get(struct batadv_orig_node *orig_node,
 			  unsigned short vid);
-void batadv_orig_node_vlan_put(struct batadv_orig_node_vlan *orig_vlan);
+void batadv_orig_node_vlan_release(struct kref *ref);
=20
 /**
  * batadv_choose_orig() - Return the index of the orig entry in the hash=
 table
@@ -82,4 +82,86 @@ static inline u32 batadv_choose_orig(const void *data,=
 u32 size)
 struct batadv_orig_node *
 batadv_orig_hash_find(struct batadv_priv *bat_priv, const void *data);
=20
+/**
+ * batadv_orig_node_vlan_put() - decrement the refcounter and possibly r=
elease
+ *  the originator-vlan object
+ * @orig_vlan: the originator-vlan object to release
+ */
+static inline void
+batadv_orig_node_vlan_put(struct batadv_orig_node_vlan *orig_vlan)
+{
+	if (!orig_vlan)
+		return;
+
+	kref_put(&orig_vlan->refcount, batadv_orig_node_vlan_release);
+}
+
+/**
+ * batadv_neigh_ifinfo_put() - decrement the refcounter and possibly rel=
ease
+ *  the neigh_ifinfo
+ * @neigh_ifinfo: the neigh_ifinfo object to release
+ */
+static inline void
+batadv_neigh_ifinfo_put(struct batadv_neigh_ifinfo *neigh_ifinfo)
+{
+	if (!neigh_ifinfo)
+		return;
+
+	kref_put(&neigh_ifinfo->refcount, batadv_neigh_ifinfo_release);
+}
+
+/**
+ * batadv_hardif_neigh_put() - decrement the hardif neighbors refcounter
+ *  and possibly release it
+ * @hardif_neigh: hardif neigh neighbor to free
+ */
+static inline void
+batadv_hardif_neigh_put(struct batadv_hardif_neigh_node *hardif_neigh)
+{
+	if (!hardif_neigh)
+		return;
+
+	kref_put(&hardif_neigh->refcount, batadv_hardif_neigh_release);
+}
+
+/**
+ * batadv_neigh_node_put() - decrement the neighbors refcounter and poss=
ibly
+ *  release it
+ * @neigh_node: neigh neighbor to free
+ */
+static inline void batadv_neigh_node_put(struct batadv_neigh_node *neigh=
_node)
+{
+	if (!neigh_node)
+		return;
+
+	kref_put(&neigh_node->refcount, batadv_neigh_node_release);
+}
+
+/**
+ * batadv_orig_ifinfo_put() - decrement the refcounter and possibly rele=
ase
+ *  the orig_ifinfo
+ * @orig_ifinfo: the orig_ifinfo object to release
+ */
+static inline void
+batadv_orig_ifinfo_put(struct batadv_orig_ifinfo *orig_ifinfo)
+{
+	if (!orig_ifinfo)
+		return;
+
+	kref_put(&orig_ifinfo->refcount, batadv_orig_ifinfo_release);
+}
+
+/**
+ * batadv_orig_node_put() - decrement the orig node refcounter and possi=
bly
+ *  release it
+ * @orig_node: the orig node to free
+ */
+static inline void batadv_orig_node_put(struct batadv_orig_node *orig_no=
de)
+{
+	if (!orig_node)
+		return;
+
+	kref_put(&orig_node->refcount, batadv_orig_node_release);
+}
+
 #endif /* _NET_BATMAN_ADV_ORIGINATOR_H_ */
diff --git a/net/batman-adv/soft-interface.c b/net/batman-adv/soft-interf=
ace.c
index ae368a42a4ad..e3580ddbf040 100644
--- a/net/batman-adv/soft-interface.c
+++ b/net/batman-adv/soft-interface.c
@@ -501,7 +501,7 @@ void batadv_interface_rx(struct net_device *soft_ifac=
e,
  *  after rcu grace period
  * @ref: kref pointer of the vlan object
  */
-static void batadv_softif_vlan_release(struct kref *ref)
+void batadv_softif_vlan_release(struct kref *ref)
 {
 	struct batadv_softif_vlan *vlan;
=20
@@ -514,19 +514,6 @@ static void batadv_softif_vlan_release(struct kref *=
ref)
 	kfree_rcu(vlan, rcu);
 }
=20
-/**
- * batadv_softif_vlan_put() - decrease the vlan object refcounter and
- *  possibly release it
- * @vlan: the vlan object to release
- */
-void batadv_softif_vlan_put(struct batadv_softif_vlan *vlan)
-{
-	if (!vlan)
-		return;
-
-	kref_put(&vlan->refcount, batadv_softif_vlan_release);
-}
-
 /**
  * batadv_softif_vlan_get() - get the vlan object for a specific vid
  * @bat_priv: the bat priv with all the soft interface information
diff --git a/net/batman-adv/soft-interface.h b/net/batman-adv/soft-interf=
ace.h
index 67a2ddd6832f..9f2003f1a497 100644
--- a/net/batman-adv/soft-interface.h
+++ b/net/batman-adv/soft-interface.h
@@ -9,6 +9,7 @@
=20
 #include "main.h"
=20
+#include <linux/kref.h>
 #include <linux/netdevice.h>
 #include <linux/skbuff.h>
 #include <linux/types.h>
@@ -21,8 +22,21 @@ void batadv_interface_rx(struct net_device *soft_iface=
,
 bool batadv_softif_is_valid(const struct net_device *net_dev);
 extern struct rtnl_link_ops batadv_link_ops;
 int batadv_softif_create_vlan(struct batadv_priv *bat_priv, unsigned sho=
rt vid);
-void batadv_softif_vlan_put(struct batadv_softif_vlan *softif_vlan);
+void batadv_softif_vlan_release(struct kref *ref);
 struct batadv_softif_vlan *batadv_softif_vlan_get(struct batadv_priv *ba=
t_priv,
 						  unsigned short vid);
=20
+/**
+ * batadv_softif_vlan_put() - decrease the vlan object refcounter and
+ *  possibly release it
+ * @vlan: the vlan object to release
+ */
+static inline void batadv_softif_vlan_put(struct batadv_softif_vlan *vla=
n)
+{
+	if (!vlan)
+		return;
+
+	kref_put(&vlan->refcount, batadv_softif_vlan_release);
+}
+
 #endif /* _NET_BATMAN_ADV_SOFT_INTERFACE_H_ */
diff --git a/net/batman-adv/tp_meter.c b/net/batman-adv/tp_meter.c
index 789c851732b7..b0e67cd51873 100644
--- a/net/batman-adv/tp_meter.c
+++ b/net/batman-adv/tp_meter.c
@@ -358,6 +358,9 @@ static void batadv_tp_vars_release(struct kref *ref)
  */
 static void batadv_tp_vars_put(struct batadv_tp_vars *tp_vars)
 {
+	if (!tp_vars)
+		return;
+
 	kref_put(&tp_vars->refcount, batadv_tp_vars_release);
 }
=20
diff --git a/net/batman-adv/translation-table.c b/net/batman-adv/translat=
ion-table.c
index 711fe5a2cec4..b89a4ed51eb8 100644
--- a/net/batman-adv/translation-table.c
+++ b/net/batman-adv/translation-table.c
@@ -247,6 +247,9 @@ static void batadv_tt_local_entry_release(struct kref=
 *ref)
 static void
 batadv_tt_local_entry_put(struct batadv_tt_local_entry *tt_local_entry)
 {
+	if (!tt_local_entry)
+		return;
+
 	kref_put(&tt_local_entry->common.refcount,
 		 batadv_tt_local_entry_release);
 }
@@ -270,7 +273,7 @@ static void batadv_tt_global_entry_free_rcu(struct rc=
u_head *rcu)
  *  queue for free after rcu grace period
  * @ref: kref pointer of the nc_node
  */
-static void batadv_tt_global_entry_release(struct kref *ref)
+void batadv_tt_global_entry_release(struct kref *ref)
 {
 	struct batadv_tt_global_entry *tt_global_entry;
=20
@@ -282,17 +285,6 @@ static void batadv_tt_global_entry_release(struct kr=
ef *ref)
 	call_rcu(&tt_global_entry->common.rcu, batadv_tt_global_entry_free_rcu)=
;
 }
=20
-/**
- * batadv_tt_global_entry_put() - decrement the tt_global_entry refcount=
er and
- *  possibly release it
- * @tt_global_entry: tt_global_entry to be free'd
- */
-void batadv_tt_global_entry_put(struct batadv_tt_global_entry *tt_global=
_entry)
-{
-	kref_put(&tt_global_entry->common.refcount,
-		 batadv_tt_global_entry_release);
-}
-
 /**
  * batadv_tt_global_hash_count() - count the number of orig entries
  * @bat_priv: the bat priv with all the soft interface information
@@ -452,6 +444,9 @@ static void batadv_tt_orig_list_entry_release(struct =
kref *ref)
 static void
 batadv_tt_orig_list_entry_put(struct batadv_tt_orig_list_entry *orig_ent=
ry)
 {
+	if (!orig_entry)
+		return;
+
 	kref_put(&orig_entry->refcount, batadv_tt_orig_list_entry_release);
 }
=20
@@ -2603,6 +2598,9 @@ static void batadv_tt_req_node_release(struct kref =
*ref)
  */
 static void batadv_tt_req_node_put(struct batadv_tt_req_node *tt_req_nod=
e)
 {
+	if (!tt_req_node)
+		return;
+
 	kref_put(&tt_req_node->refcount, batadv_tt_req_node_release);
 }
=20
diff --git a/net/batman-adv/translation-table.h b/net/batman-adv/translat=
ion-table.h
index e1285904f885..d18740d9a22b 100644
--- a/net/batman-adv/translation-table.h
+++ b/net/batman-adv/translation-table.h
@@ -9,6 +9,7 @@
=20
 #include "main.h"
=20
+#include <linux/kref.h>
 #include <linux/netdevice.h>
 #include <linux/netlink.h>
 #include <linux/skbuff.h>
@@ -28,7 +29,7 @@ void batadv_tt_global_del_orig(struct batadv_priv *bat_=
priv,
 struct batadv_tt_global_entry *
 batadv_tt_global_hash_find(struct batadv_priv *bat_priv, const u8 *addr,
 			   unsigned short vid);
-void batadv_tt_global_entry_put(struct batadv_tt_global_entry *tt_global=
_entry);
+void batadv_tt_global_entry_release(struct kref *ref);
 int batadv_tt_global_hash_count(struct batadv_priv *bat_priv,
 				const u8 *addr, unsigned short vid);
 struct batadv_orig_node *batadv_transtable_search(struct batadv_priv *ba=
t_priv,
@@ -55,4 +56,19 @@ bool batadv_tt_global_is_isolated(struct batadv_priv *=
bat_priv,
 int batadv_tt_cache_init(void);
 void batadv_tt_cache_destroy(void);
=20
+/**
+ * batadv_tt_global_entry_put() - decrement the tt_global_entry refcount=
er and
+ *  possibly release it
+ * @tt_global_entry: tt_global_entry to be free'd
+ */
+static inline void
+batadv_tt_global_entry_put(struct batadv_tt_global_entry *tt_global_entr=
y)
+{
+	if (!tt_global_entry)
+		return;
+
+	kref_put(&tt_global_entry->common.refcount,
+		 batadv_tt_global_entry_release);
+}
+
 #endif /* _NET_BATMAN_ADV_TRANSLATION_TABLE_H_ */
diff --git a/net/batman-adv/tvlv.c b/net/batman-adv/tvlv.c
index 253f5a33a914..1efea0acdd95 100644
--- a/net/batman-adv/tvlv.c
+++ b/net/batman-adv/tvlv.c
@@ -50,6 +50,9 @@ static void batadv_tvlv_handler_release(struct kref *re=
f)
  */
 static void batadv_tvlv_handler_put(struct batadv_tvlv_handler *tvlv_han=
dler)
 {
+	if (!tvlv_handler)
+		return;
+
 	kref_put(&tvlv_handler->refcount, batadv_tvlv_handler_release);
 }
=20
@@ -106,6 +109,9 @@ static void batadv_tvlv_container_release(struct kref=
 *ref)
  */
 static void batadv_tvlv_container_put(struct batadv_tvlv_container *tvlv=
)
 {
+	if (!tvlv)
+		return;
+
 	kref_put(&tvlv->refcount, batadv_tvlv_container_release);
 }
=20
--=20
2.20.1
