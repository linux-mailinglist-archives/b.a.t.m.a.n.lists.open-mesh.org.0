Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [IPv6:2a01:4f8:141:3341:78:46:248:236])
	by mail.lfdr.de (Postfix) with ESMTPS id CD914CA5A1
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu,  3 Oct 2019 18:44:20 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id E878680012;
	Thu,  3 Oct 2019 18:44:10 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
 by open-mesh.org (Postfix) with ESMTPS id 42C8E80162
 for <b.a.t.m.a.n@lists.open-mesh.org>; Thu,  3 Oct 2019 18:43:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
 s=20121; t=1570121037;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=3edw67EmbB+O7xoYQir07L/ETezyucEvZwra6DiC6v4=;
 b=GyTkgex1KQ3pT/BgT5Y5y331VtHg0o1HKzbvhzNcrbqU55ykTjoJqnorBxxvMv4B69kMup
 deoi62EejQzLrLL/CWHsPVC8smyfr7SJT1GYTQvn0OPBnqYZvAX0EVQ7jVKHGAc3+6cbvF
 QlBQtkmgruF8Ro5kUx/a7Xen1kjnDIc=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: [PATCH maint 1/2] batman-adv: Avoid free/alloc race when handling
 OGM2 buffer
Date: Thu,  3 Oct 2019 18:43:52 +0200
Message-Id: <20191003164353.14095-1-sven@narfation.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org; 
 s=20121; t=1570121037;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=3edw67EmbB+O7xoYQir07L/ETezyucEvZwra6DiC6v4=;
 b=kiy7RG2jLmhgCqmWD+2M/sPeZSmbzqgOxN/qzUroMgBxxbTKEHcy9rGrovqNs/XZawIGk9
 lr2YgsoTWCNVSxD47vaq81lw9yNrNQt2CtOetnH85hVrpOnxENceJvsTt+8XGD2eUjClhF
 08kSCSrdPxwWMOlX0zC8rqD7bchM5zc=
ARC-Seal: i=1; s=20121; d=narfation.org; t=1570121037; a=rsa-sha256; cv=none;
 b=zIjucK26MJRBHDtSRkwRxLeB81xDIm4IWiczNlPQ8k8GBvaENk7aa6SD9/cOQ5uMi4ik1Q
 MWNPbEzmknxGoTlQ4ZCc+dGHhPzW6Z7keTzdheJsAEbuAoLxqr+azJAgDnEonoDpdwjf7f
 Nc00ZuzXTlJjlR/ao2BXXmbFrJc0dZw=
ARC-Authentication-Results: i=1; ORIGINATING;
 auth=pass smtp.auth=sven smtp.mailfrom=sven@narfation.org
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
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

A B.A.T.M.A.N. V virtual interface has an OGM2 packet buffer which is
initialized using data from the RTNL protected netdevice notifier and other
rtnetlink related hooks. It is sent regularly via various slave interfaces
of the batadv virtual interface and in this process also modified
(realloced) to integrate additional state information via TVLV containers.

It must be avoided that the worker item is executed without a common lock
with the netdevice notifier/rtnetlink helpers. Otherwise it can either
happen that half modified data is sent out or the functions modifying the
OGM2 buffer try to access already freed memory regions.

Fixes: 632835348e65 ("batman-adv: OGMv2 - add basic infrastructure")
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 net/batman-adv/bat_v_ogm.c | 32 +++++++++++++++++++++++++-------
 net/batman-adv/types.h     |  4 ++--
 2 files changed, 27 insertions(+), 9 deletions(-)

diff --git a/net/batman-adv/bat_v_ogm.c b/net/batman-adv/bat_v_ogm.c
index dc4f7430..24d00a97 100644
--- a/net/batman-adv/bat_v_ogm.c
+++ b/net/batman-adv/bat_v_ogm.c
@@ -22,6 +22,7 @@
 #include <linux/random.h>
 #include <linux/rculist.h>
 #include <linux/rcupdate.h>
+#include <linux/rtnetlink.h>
 #include <linux/skbuff.h>
 #include <linux/slab.h>
 #include <linux/spinlock.h>
@@ -256,14 +257,12 @@ static void batadv_v_ogm_queue_on_if(struct sk_buff *skb,
 }
 
 /**
- * batadv_v_ogm_send() - periodic worker broadcasting the own OGM
- * @work: work queue item
+ * batadv_v_ogm_send_softif() - periodic worker broadcasting the own OGM
+ * @bat_priv: the bat priv with all the soft interface information
  */
-static void batadv_v_ogm_send(struct work_struct *work)
+static void batadv_v_ogm_send_softif(struct batadv_priv *bat_priv)
 {
 	struct batadv_hard_iface *hard_iface;
-	struct batadv_priv_bat_v *bat_v;
-	struct batadv_priv *bat_priv;
 	struct batadv_ogm2_packet *ogm_packet;
 	struct sk_buff *skb, *skb_tmp;
 	unsigned char *ogm_buff;
@@ -271,8 +270,7 @@ static void batadv_v_ogm_send(struct work_struct *work)
 	u16 tvlv_len = 0;
 	int ret;
 
-	bat_v = container_of(work, struct batadv_priv_bat_v, ogm_wq.work);
-	bat_priv = container_of(bat_v, struct batadv_priv, bat_v);
+	ASSERT_RTNL();
 
 	if (atomic_read(&bat_priv->mesh_state) == BATADV_MESH_DEACTIVATING)
 		goto out;
@@ -363,6 +361,22 @@ static void batadv_v_ogm_send(struct work_struct *work)
 	return;
 }
 
+/**
+ * batadv_v_ogm_send() - periodic worker broadcasting the own OGM
+ * @work: work queue item
+ */
+static void batadv_v_ogm_send(struct work_struct *work)
+{
+	struct batadv_priv_bat_v *bat_v;
+	struct batadv_priv *bat_priv;
+
+	rtnl_lock();
+	bat_v = container_of(work, struct batadv_priv_bat_v, ogm_wq.work);
+	bat_priv = container_of(bat_v, struct batadv_priv, bat_v);
+	batadv_v_ogm_send_softif(bat_priv);
+	rtnl_unlock();
+}
+
 /**
  * batadv_v_ogm_aggr_work() - OGM queue periodic task per interface
  * @work: work queue item
@@ -424,6 +438,8 @@ void batadv_v_ogm_primary_iface_set(struct batadv_hard_iface *primary_iface)
 	struct batadv_priv *bat_priv = netdev_priv(primary_iface->soft_iface);
 	struct batadv_ogm2_packet *ogm_packet;
 
+	ASSERT_RTNL();
+
 	if (!bat_priv->bat_v.ogm_buff)
 		return;
 
@@ -1032,6 +1048,8 @@ int batadv_v_ogm_init(struct batadv_priv *bat_priv)
 	unsigned char *ogm_buff;
 	u32 random_seqno;
 
+	ASSERT_RTNL();
+
 	bat_priv->bat_v.ogm_buff_len = BATADV_OGM2_HLEN;
 	ogm_buff = kzalloc(bat_priv->bat_v.ogm_buff_len, GFP_ATOMIC);
 	if (!ogm_buff)
diff --git a/net/batman-adv/types.h b/net/batman-adv/types.h
index be7c02aa..bb7b4ab1 100644
--- a/net/batman-adv/types.h
+++ b/net/batman-adv/types.h
@@ -1530,10 +1530,10 @@ struct batadv_softif_vlan {
  * struct batadv_priv_bat_v - B.A.T.M.A.N. V per soft-interface private data
  */
 struct batadv_priv_bat_v {
-	/** @ogm_buff: buffer holding the OGM packet */
+	/** @ogm_buff: buffer holding the OGM packet. rtnl protected */
 	unsigned char *ogm_buff;
 
-	/** @ogm_buff_len: length of the OGM packet buffer */
+	/** @ogm_buff_len: length of the OGM packet buffer. rtnl protected */
 	int ogm_buff_len;
 
 	/** @ogm_seqno: OGM sequence number - used to identify each OGM */
-- 
2.20.1

