Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [IPv6:2a01:4f8:141:3341:78:46:248:236])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EBB4CA5A2
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu,  3 Oct 2019 18:44:37 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 2533D80633;
	Thu,  3 Oct 2019 18:44:31 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org
 [IPv6:2a00:17d8:100::8b1])
 by open-mesh.org (Postfix) with ESMTPS id 07FD780162
 for <b.a.t.m.a.n@lists.open-mesh.org>; Thu,  3 Oct 2019 18:44:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
 s=20121; t=1570121066;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=y20+glqyAQ+F09PR9Da7GCZo6Yn/xoaXLNT5jVrImSA=;
 b=i/PS9ouAUFncCvD1cLsY+Me7pPhsRuqJLRg/YK+K2Jzq1xX6ofr7PrsMN2jotLWyPwyC5H
 pYHP/+18FGsEo8FLm8+4AYQb/WrVQq/AfuROBtBM2FT7Ce0c2bn9Qk4rgWxUNSXHM8ytJu
 q2gxv0dFWgM2Qupu9SGVMvztor/YP4w=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: [PATCH maint 2/2] batman-adv: Avoid free/alloc race when handling OGM
 buffer
Date: Thu,  3 Oct 2019 18:43:53 +0200
Message-Id: <20191003164353.14095-2-sven@narfation.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191003164353.14095-1-sven@narfation.org>
References: <20191003164353.14095-1-sven@narfation.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org; 
 s=20121; t=1570121066;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=y20+glqyAQ+F09PR9Da7GCZo6Yn/xoaXLNT5jVrImSA=;
 b=QrIQ4aebE1EDjDnXeDkrVzZTEVXgZZY1KlbCyxW1koi14G3QysGkho9Z5Xw6AEQMW1umJW
 3rpnrZ7/5MPzhFDXUB6wcZ8/toOH9HSBM1AutbF9JDPznJJCAEEjuahRDTVl5vJWH9pEae
 Klb7rdN8ZG14eGjyGLx+iwWlpTPrcyM=
ARC-Seal: i=1; s=20121; d=narfation.org; t=1570121066; a=rsa-sha256; cv=none;
 b=1JqQKr7nD0wMo7FbSaCrswhM6NX1AyMzC1wYz1qIFqZhr/l8SRzHFGyVVam6YoFn+OeDz4
 boEfDdf5/EYBQ8/+amV+9cXvRXcnusuotDEtzIs62P2BOG4V4NYdwaz5+dchck6N+n6Ul2
 tDFX//IdA0QIr/Ov5NTZxkUh+F/IlVo=
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
Cc: syzbot+0cc629f19ccb8534935b@syzkaller.appspotmail.com
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

Each slave interface of an B.A.T.M.A.N. IV virtual interface has an OGM
packet buffer which is initialized using data from the RTNL protected
netdevice notifier and other rtnetlink related hooks. It is sent regularly
via various slave interfaces of the batadv virtual interface and in this
process also modified (realloced) to integrate additional state information
via TVLV containers.

It must be avoided that the worker item is executed without a common lock
with the netdevice notifier/rtnetlink helpers. Otherwise it can either
happen that half modified/freed data is sent out or functions modifying the
OGM buffer try to access already freed memory regions.

Reported-by: syzbot+0cc629f19ccb8534935b@syzkaller.appspotmail.com
Fixes: ea6f8d42a595 ("batman-adv: move /proc interface handling to /sys")
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
See https://www.open-mesh.org/issues/400

 net/batman-adv/bat_iv_ogm.c | 33 +++++++++++++++++++++++++++------
 net/batman-adv/types.h      |  4 ++--
 2 files changed, 29 insertions(+), 8 deletions(-)

diff --git a/net/batman-adv/bat_iv_ogm.c b/net/batman-adv/bat_iv_ogm.c
index d78938e3..e20c3813 100644
--- a/net/batman-adv/bat_iv_ogm.c
+++ b/net/batman-adv/bat_iv_ogm.c
@@ -29,6 +29,7 @@
 #include <linux/random.h>
 #include <linux/rculist.h>
 #include <linux/rcupdate.h>
+#include <linux/rtnetlink.h>
 #include <linux/seq_file.h>
 #include <linux/skbuff.h>
 #include <linux/slab.h>
@@ -193,6 +194,8 @@ static int batadv_iv_ogm_iface_enable(struct batadv_hard_iface *hard_iface)
 	unsigned char *ogm_buff;
 	u32 random_seqno;
 
+	ASSERT_RTNL();
+
 	/* randomize initial seqno to avoid collision */
 	get_random_bytes(&random_seqno, sizeof(random_seqno));
 	atomic_set(&hard_iface->bat_iv.ogm_seqno, random_seqno);
@@ -217,6 +220,8 @@ static int batadv_iv_ogm_iface_enable(struct batadv_hard_iface *hard_iface)
 
 static void batadv_iv_ogm_iface_disable(struct batadv_hard_iface *hard_iface)
 {
+	ASSERT_RTNL();
+
 	kfree(hard_iface->bat_iv.ogm_buff);
 	hard_iface->bat_iv.ogm_buff = NULL;
 }
@@ -226,6 +231,8 @@ static void batadv_iv_ogm_iface_update_mac(struct batadv_hard_iface *hard_iface)
 	struct batadv_ogm_packet *batadv_ogm_packet;
 	unsigned char *ogm_buff = hard_iface->bat_iv.ogm_buff;
 
+	ASSERT_RTNL();
+
 	batadv_ogm_packet = (struct batadv_ogm_packet *)ogm_buff;
 	ether_addr_copy(batadv_ogm_packet->orig,
 			hard_iface->net_dev->dev_addr);
@@ -239,6 +246,8 @@ batadv_iv_ogm_primary_iface_set(struct batadv_hard_iface *hard_iface)
 	struct batadv_ogm_packet *batadv_ogm_packet;
 	unsigned char *ogm_buff = hard_iface->bat_iv.ogm_buff;
 
+	ASSERT_RTNL();
+
 	batadv_ogm_packet = (struct batadv_ogm_packet *)ogm_buff;
 	batadv_ogm_packet->ttl = BATADV_TTL;
 }
@@ -753,6 +762,8 @@ static void batadv_iv_ogm_schedule(struct batadv_hard_iface *hard_iface)
 	u16 tvlv_len = 0;
 	unsigned long send_time;
 
+	ASSERT_RTNL();
+
 	if (hard_iface->if_status == BATADV_IF_NOT_IN_USE ||
 	    hard_iface->if_status == BATADV_IF_TO_BE_REMOVED)
 		return;
@@ -1643,16 +1654,12 @@ static void batadv_iv_ogm_process(const struct sk_buff *skb, int ogm_offset,
 	batadv_orig_node_put(orig_node);
 }
 
-static void batadv_iv_send_outstanding_bat_ogm_packet(struct work_struct *work)
+static void
+batadv_iv_send_outstanding_forw_packet(struct batadv_forw_packet *forw_packet)
 {
-	struct delayed_work *delayed_work;
-	struct batadv_forw_packet *forw_packet;
 	struct batadv_priv *bat_priv;
 	bool dropped = false;
 
-	delayed_work = to_delayed_work(work);
-	forw_packet = container_of(delayed_work, struct batadv_forw_packet,
-				   delayed_work);
 	bat_priv = netdev_priv(forw_packet->if_incoming->soft_iface);
 
 	if (atomic_read(&bat_priv->mesh_state) == BATADV_MESH_DEACTIVATING) {
@@ -1681,6 +1688,20 @@ static void batadv_iv_send_outstanding_bat_ogm_packet(struct work_struct *work)
 		batadv_forw_packet_free(forw_packet, dropped);
 }
 
+static void batadv_iv_send_outstanding_bat_ogm_packet(struct work_struct *work)
+{
+	struct delayed_work *delayed_work;
+	struct batadv_forw_packet *forw_packet;
+
+	delayed_work = to_delayed_work(work);
+	forw_packet = container_of(delayed_work, struct batadv_forw_packet,
+				   delayed_work);
+
+	rtnl_lock();
+	batadv_iv_send_outstanding_forw_packet(forw_packet);
+	rtnl_unlock();
+}
+
 static int batadv_iv_ogm_receive(struct sk_buff *skb,
 				 struct batadv_hard_iface *if_incoming)
 {
diff --git a/net/batman-adv/types.h b/net/batman-adv/types.h
index bb7b4ab1..437d92e1 100644
--- a/net/batman-adv/types.h
+++ b/net/batman-adv/types.h
@@ -73,10 +73,10 @@ enum batadv_dhcp_recipient {
  * struct batadv_hard_iface_bat_iv - per hard-interface B.A.T.M.A.N. IV data
  */
 struct batadv_hard_iface_bat_iv {
-	/** @ogm_buff: buffer holding the OGM packet */
+	/** @ogm_buff: buffer holding the OGM packet. rtnl protected */
 	unsigned char *ogm_buff;
 
-	/** @ogm_buff_len: length of the OGM packet buffer */
+	/** @ogm_buff_len: length of the OGM packet buffer. rtnl protected */
 	int ogm_buff_len;
 
 	/** @ogm_seqno: OGM sequence number - used to identify each OGM */
-- 
2.20.1

