Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [78.46.248.236])
	by mail.lfdr.de (Postfix) with ESMTPS id AF38AD57A1
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 13 Oct 2019 21:13:20 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 9EB94807D7;
	Sun, 13 Oct 2019 21:13:07 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
 by open-mesh.org (Postfix) with ESMTPS id B9FA68076F
 for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 13 Oct 2019 21:12:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
 s=20121; t=1570993454;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=thS6RASQg5jrdIK/YzzkxXqLNznYAexqF8y70HFoUU0=;
 b=LTVOy4v6i6IVfZ/QHjMaudAXhepAkxgUMMJDLDR8ZLvzjffZMgJqbElJ7nj0WA1UoYwXRy
 8msMZ8Cm225gowc8cf7MwkSyCtN8E8gc4HhYic5SALKmovDdhNQmmlCOBUXq3T4wj9FjjJ
 axLtlm8pk2OHRDa+atL9KJ4tzkPwzTs=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: [PATCH 1/2] batman-adv: Introduce own OGM2 buffer mutex
Date: Sun, 13 Oct 2019 21:03:06 +0200
Message-Id: <20191013190307.11796-1-sven@narfation.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1570993956;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:dkim-signature;
 bh=thS6RASQg5jrdIK/YzzkxXqLNznYAexqF8y70HFoUU0=;
 b=pbw+kqpaehGgvjU7ck7ugDRL3M2dPdKkFH2SyiE7HiRfgRutmEZ74DtrCs3h48oTYmwsic
 7tpJdqeZjs2vopv1EV5wyoUdPdOpg7FWXRrKQLYOpZxlr7HbvsaJP2mCXkpfKgW0emErl5
 Xss8knTUe+OYkMysWEXTAdB1+VAVTVk=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1570993957; a=rsa-sha256; cv=none;
 b=VS02EqYZkUmXSLg2Jbzi0qYqx2O1gUxG/oNrojp+4qppO0IAKBTXOVLe7siR9hazQLPgLr
 jouyWoEsJxqiHgSmKe8KkHkNYe+9yZbsQJ5v1v8xfF3a3KE6Ipju0hrWq4f1Lw/L76gcCQ
 6rWJvB/DMWK5PKCPC0pHOmKnXUDsxtQ=
ARC-Authentication-Results: i=1; open-mesh.org;
 dkim=pass header.d=narfation.org header.s=20121 header.b=LTVOy4v6;
 spf=pass (open-mesh.org: domain of sven@narfation.org designates 213.160.73.56
 as permitted sender) smtp.mailfrom=sven@narfation.org
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

Only a single function is currently automatically locked by the rtnl_lock
because (unlike B.A.T.M.A.N. IV) the OGM2 buffer is independent of the hard
interfaces on which it will be transmitted. A private mutex can be used
instead to avoid unnecessary delays which would have been introduced by the
global lock.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 net/batman-adv/bat_v_ogm.c | 26 +++++++++++++++++---------
 net/batman-adv/types.h     |  8 ++++++--
 2 files changed, 23 insertions(+), 11 deletions(-)

diff --git a/net/batman-adv/bat_v_ogm.c b/net/batman-adv/bat_v_ogm.c
index 034bdc5e..74452e93 100644
--- a/net/batman-adv/bat_v_ogm.c
+++ b/net/batman-adv/bat_v_ogm.c
@@ -17,11 +17,12 @@
 #include <linux/kernel.h>
 #include <linux/kref.h>
 #include <linux/list.h>
+#include <linux/lockdep.h>
+#include <linux/mutex.h>
 #include <linux/netdevice.h>
 #include <linux/random.h>
 #include <linux/rculist.h>
 #include <linux/rcupdate.h>
-#include <linux/rtnetlink.h>
 #include <linux/skbuff.h>
 #include <linux/slab.h>
 #include <linux/stddef.h>
@@ -130,7 +131,7 @@ static void batadv_v_ogm_send_softif(struct batadv_priv *bat_priv)
 	u16 tvlv_len = 0;
 	int ret;
 
-	ASSERT_RTNL();
+	lockdep_assert_held(&bat_priv->bat_v.ogm_buff_mutex);
 
 	if (atomic_read(&bat_priv->mesh_state) == BATADV_MESH_DEACTIVATING)
 		goto out;
@@ -230,11 +231,12 @@ static void batadv_v_ogm_send(struct work_struct *work)
 	struct batadv_priv_bat_v *bat_v;
 	struct batadv_priv *bat_priv;
 
-	rtnl_lock();
 	bat_v = container_of(work, struct batadv_priv_bat_v, ogm_wq.work);
 	bat_priv = container_of(bat_v, struct batadv_priv, bat_v);
+
+	mutex_lock(&bat_priv->bat_v.ogm_buff_mutex);
 	batadv_v_ogm_send_softif(bat_priv);
-	rtnl_unlock();
+	mutex_unlock(&bat_priv->bat_v.ogm_buff_mutex);
 }
 
 /**
@@ -263,13 +265,15 @@ void batadv_v_ogm_primary_iface_set(struct batadv_hard_iface *primary_iface)
 	struct batadv_priv *bat_priv = netdev_priv(primary_iface->soft_iface);
 	struct batadv_ogm2_packet *ogm_packet;
 
-	ASSERT_RTNL();
-
+	mutex_lock(&bat_priv->bat_v.ogm_buff_mutex);
 	if (!bat_priv->bat_v.ogm_buff)
-		return;
+		goto unlock;
 
 	ogm_packet = (struct batadv_ogm2_packet *)bat_priv->bat_v.ogm_buff;
 	ether_addr_copy(ogm_packet->orig, primary_iface->net_dev->dev_addr);
+
+unlock:
+	mutex_unlock(&bat_priv->bat_v.ogm_buff_mutex);
 }
 
 /**
@@ -873,8 +877,6 @@ int batadv_v_ogm_init(struct batadv_priv *bat_priv)
 	unsigned char *ogm_buff;
 	u32 random_seqno;
 
-	ASSERT_RTNL();
-
 	bat_priv->bat_v.ogm_buff_len = BATADV_OGM2_HLEN;
 	ogm_buff = kzalloc(bat_priv->bat_v.ogm_buff_len, GFP_ATOMIC);
 	if (!ogm_buff)
@@ -893,6 +895,8 @@ int batadv_v_ogm_init(struct batadv_priv *bat_priv)
 	atomic_set(&bat_priv->bat_v.ogm_seqno, random_seqno);
 	INIT_DELAYED_WORK(&bat_priv->bat_v.ogm_wq, batadv_v_ogm_send);
 
+	mutex_init(&bat_priv->bat_v.ogm_buff_mutex);
+
 	return 0;
 }
 
@@ -904,7 +908,11 @@ void batadv_v_ogm_free(struct batadv_priv *bat_priv)
 {
 	cancel_delayed_work_sync(&bat_priv->bat_v.ogm_wq);
 
+	mutex_lock(&bat_priv->bat_v.ogm_buff_mutex);
+
 	kfree(bat_priv->bat_v.ogm_buff);
 	bat_priv->bat_v.ogm_buff = NULL;
 	bat_priv->bat_v.ogm_buff_len = 0;
+
+	mutex_unlock(&bat_priv->bat_v.ogm_buff_mutex);
 }
diff --git a/net/batman-adv/types.h b/net/batman-adv/types.h
index 282a4650..eded9167 100644
--- a/net/batman-adv/types.h
+++ b/net/batman-adv/types.h
@@ -17,6 +17,7 @@
 #include <linux/if.h>
 #include <linux/if_ether.h>
 #include <linux/kref.h>
+#include <linux/mutex.h>
 #include <linux/netdevice.h>
 #include <linux/netlink.h>
 #include <linux/sched.h> /* for linux/wait.h */
@@ -1518,15 +1519,18 @@ struct batadv_softif_vlan {
  * struct batadv_priv_bat_v - B.A.T.M.A.N. V per soft-interface private data
  */
 struct batadv_priv_bat_v {
-	/** @ogm_buff: buffer holding the OGM packet. rtnl protected */
+	/** @ogm_buff: buffer holding the OGM packet */
 	unsigned char *ogm_buff;
 
-	/** @ogm_buff_len: length of the OGM packet buffer. rtnl protected */
+	/** @ogm_buff_len: length of the OGM packet buffer */
 	int ogm_buff_len;
 
 	/** @ogm_seqno: OGM sequence number - used to identify each OGM */
 	atomic_t ogm_seqno;
 
+	/** @ogm_buff_mutex: lock protecting ogm_buff and ogm_buff_len */
+	struct mutex ogm_buff_mutex;
+
 	/** @ogm_wq: workqueue used to schedule OGM transmissions */
 	struct delayed_work ogm_wq;
 };
-- 
2.20.1

