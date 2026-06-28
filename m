Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id mt5MFn86QWqMmgkAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 28 Jun 2026 17:15:11 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id F41EE6D4478
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 28 Jun 2026 17:15:10 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=universe-factory.net header.s=dkim header.b=fC2AiXjH;
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 2a01:4f8:241:fc1:136:243:236:17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	dmarc=pass (policy=reject) header.from=universe-factory.net;
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id BB5408046A
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 28 Jun 2026 17:15:10 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1782659710;
 b=wPx9jy4owYoljlNah4S4HR5E1NQJSE6dxTSLk5eTbTBMMdO0uD8PuHmFkr4hN83eqIY5B
 LGR1NgVr8YNuLK4pmm/wuawhEW3vmdBhaZAnKf5eSbyFVbJ3O0dk74asuzfYV0XdnqHir0r
 86JwOnJtXtrZRbh5lKWrBea+vei6JsU=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1782659710; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=gAJuvWpf8nFXwe5BupyWQI7NdfZOjAfEfWVbjODGr00=;
 b=xCVhD+4nkde07YgthraewD1XixC9X8pCltwQG9qEkcJ6MT4mGK7/gqgQh6RJdW7sKl1kr
 joouLzgqlEFvUMXQTtDWXEthf6rKq3im2V1YXGJE2uX+JgXUlQ1Kl5xxIfBRAX74qTl82Hp
 MhJTRH5RU8iyBnSIJp+t+R3b1HrMwEU=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=universe-factory.net;
 arc=pass;
 dmarc=none
Received: from mail.universe-factory.net (osgiliath.universe-factory.net
 [141.95.161.142])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 90991814BA
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 28 Jun 2026 17:08:06 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1782659291;
	b=yTaabfkcQj+NQA8Li3nIg2q9DlfRKUqMFLIDGB9E09RJL4HIXEPUZ32qVBXxQ4lgYdcS8L
	sZaYVRjq9O/HDsCzs81jqchuUgRhgQ4kjxQbmuJBJgoZoaBhI0eBVqYERP+8s7bTePHSk4
	lHnUlZeJOrMSdzUEPzDplMEq+o6osoM=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1782659291;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=gAJuvWpf8nFXwe5BupyWQI7NdfZOjAfEfWVbjODGr00=;
	b=BDplcVALSqVFoUwDj59xWvpUUVmfOWrMgiPzujq5eUp/lwDXUWRe19sEvPMutvhQ5AB0Gm
	2O+Y+idMPAmhxUKryiUxohdmntmfGwNAkiWlfm6/Oc9oRf0508zgTeCh6PjVJVZU4oHo7K
	InogHowBSLtcOpa5gc7M3SwCAUZu8Z4=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=universe-factory.net header.s=dkim header.b=fC2AiXjH;
	spf=pass (diktynna.open-mesh.org: domain of neocturne@universe-factory.net
 designates 141.95.161.142 as permitted sender)
 smtp.mailfrom=neocturne@universe-factory.net;
	dmarc=pass (policy=reject) header.from=universe-factory.net
From: Nora Schiffer <neocturne@universe-factory.net>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=universe-factory.net;
	s=dkim; t=1782659286;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=gAJuvWpf8nFXwe5BupyWQI7NdfZOjAfEfWVbjODGr00=;
	b=fC2AiXjHAbIrZxDkYawkbrJkc1klMVJe6Xamduwp30SiisnKAQ9stLL/x0cKfcCtCX4Nio
	oGc5ri150NQwJ3Kjg8+2M5G90C39mid0dnSHKTnwh6QL9GTbBg9Ne1DX9zJvQixVl4eHXH
	+6EKQDmfgMTkzuHue8hH95RF/xHEbEomG1vFup8mPd/9ElkTQUOJhJFzrwQt/yq5hZ9Tem
	Ehu86L23q7R2ZyAfbrOCpLcG0ViK3rJEFaSTUla39oGop/xCpLWo/M5xrPNAICEeW3zXyF
	sfIRyamx0NbYVjkVRLlV/8H5u34YXFTnzcWMGv29d2zSOeEEKLpDpbMdBZQQAw==
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: sven@narfation.org,
	Nora Schiffer <neocturne@universe-factory.net>
Subject: [PATCH batadv v5 2/6] batman-adv: remove global hardif list
Date: Sun, 28 Jun 2026 17:07:29 +0200
Message-ID: 
 <1c2c91d07afa2b011194141f853ec5d70d34af1a.1782658366.git.neocturne@universe-factory.net>
In-Reply-To: <cover.1782658366.git.neocturne@universe-factory.net>
References: <cover.1782658366.git.neocturne@universe-factory.net>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Bar: -----
X-MailFrom: neocturne@universe-factory.net
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; header-match-b.a.t.m.a.n.lists.open-mesh.org-0;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-1;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-2;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-3; emergency
Message-ID-Hash: SQ353MW3SN4SHH3HCB7DP34X4RZVVXNV
X-Message-ID-Hash: SQ353MW3SN4SHH3HCB7DP34X4RZVVXNV
X-Mailman-Approved-At: Sun, 28 Jun 2026 17:11:17 +0200
X-Mailman-Version: 3.3.10
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/SQ353MW3SN4SHH3HCB7DP34X4RZVVXNV/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.51 / 15.00];
	ARC_ALLOW(-1.00)[open-mesh.org:s=20121:i=2];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[universe-factory.net,reject];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[universe-factory.net:s=dkim];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:b.a.t.m.a.n@lists.open-mesh.org,m:sven@narfation.org,m:neocturne@universe-factory.net,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[lists,b.a.t.m.a.n=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[neocturne@universe-factory.net,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	DKIM_TRACE(0.00)[universe-factory.net:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DBL_BLOCKED_OPENRESOLVER(0.00)[diktynna.open-mesh.org:rdns,diktynna.open-mesh.org:helo,universe-factory.net:dkim,universe-factory.net:email,universe-factory.net:mid,universe-factory.net:from_mime,lists.open-mesh.org:from_smtp,narfation.org:email];
	FROM_NEQ_ENVFROM(0.00)[neocturne@universe-factory.net,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:24940, ipnet:2a01:4f8::/32, country:DE];
	TAGGED_RCPT(0.00)[b.a.t.m.a.n];
	R_SPF_NA(0.00)[no SPF record]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: F41EE6D4478

With interfaces being kept track of as iflink private data, there is no
need for the global list anymore. batadv_hardif_get_by_netdev() can now
use netdev_master_upper_dev_get()+netdev_lower_dev_get_private() to find
the hardif corresponding to a netdev.

Co-developed-by: Sven Eckelmann <sven@narfation.org>
Signed-off-by: Nora Schiffer <neocturne@universe-factory.net>
---

v5:
- Move immutable hard_iface->mesh_iface change to a separate patch

  If hard_iface->mesh_iface becoming NULL during disable wasn't an issue
  before this patch, it shouldn't become one with it. The change is
  still useful for follow-up cleanup, but it seems more appropriate to
  move it to its own patch.

v2-v4 (by Sven Eckelmann):
- Rebase onto current main
- Add missing RTNL around batadv_hardif_get_by_netdev() in
  batadv_netlink_get_hardif_from_ifindex
- Keep hard_iface->mesh_iface immutable and valid as long as hardif
  exists


 net/batman-adv/hard-interface.c | 29 ++++++++++++-----------------
 net/batman-adv/hard-interface.h |  2 +-
 net/batman-adv/main.c           |  5 -----
 net/batman-adv/main.h           |  1 -
 net/batman-adv/netlink.c        |  2 ++
 net/batman-adv/types.h          |  3 ---
 6 files changed, 15 insertions(+), 27 deletions(-)

diff --git a/net/batman-adv/hard-interface.c b/net/batman-adv/hard-interface.c
index 9c9a892d22c6..ace81348ddef 100644
--- a/net/batman-adv/hard-interface.c
+++ b/net/batman-adv/hard-interface.c
@@ -75,21 +75,21 @@ void batadv_hardif_release(struct kref *ref)
  * Return: batadv_hard_iface of net_dev (with increased refcnt), NULL on errors
  */
 struct batadv_hard_iface *
-batadv_hardif_get_by_netdev(const struct net_device *net_dev)
+batadv_hardif_get_by_netdev(struct net_device *net_dev)
 {
 	struct batadv_hard_iface *hard_iface;
+	struct net_device *mesh_iface;
 
-	rcu_read_lock();
-	list_for_each_entry_rcu(hard_iface, &batadv_hardif_list, list) {
-		if (hard_iface->net_dev == net_dev &&
-		    kref_get_unless_zero(&hard_iface->refcount))
-			goto out;
-	}
+	ASSERT_RTNL();
 
-	hard_iface = NULL;
+	mesh_iface = netdev_master_upper_dev_get(net_dev);
+	if (!mesh_iface || !batadv_meshif_is_valid(mesh_iface))
+		return NULL;
+
+	hard_iface = netdev_lower_dev_get_private(mesh_iface, net_dev);
+	if (!kref_get_unless_zero(&hard_iface->refcount))
+		return NULL;
 
-out:
-	rcu_read_unlock();
 	return hard_iface;
 }
 
@@ -761,7 +761,6 @@ int batadv_hardif_enable_interface(struct net_device *net_dev,
 
 	hard_iface->if_status = BATADV_IF_INACTIVE;
 
-	INIT_LIST_HEAD(&hard_iface->list);
 	INIT_HLIST_HEAD(&hard_iface->neigh_list);
 
 	mutex_init(&hard_iface->bat_iv.ogm_buff_mutex);
@@ -780,6 +779,7 @@ int batadv_hardif_enable_interface(struct net_device *net_dev,
 	hard_iface->mesh_iface = mesh_iface;
 	bat_priv = netdev_priv(hard_iface->mesh_iface);
 
+	batadv_hardif_generation++;
 	ret = netdev_master_upper_dev_link(hard_iface->net_dev,
 					   mesh_iface, hard_iface, NULL, NULL);
 	if (ret)
@@ -824,9 +824,6 @@ int batadv_hardif_enable_interface(struct net_device *net_dev,
 	if (bat_priv->algo_ops->iface.enabled)
 		bat_priv->algo_ops->iface.enabled(hard_iface);
 
-	list_add_tail_rcu(&hard_iface->list, &batadv_hardif_list);
-	batadv_hardif_generation++;
-
 	return 0;
 
 err_upper:
@@ -854,9 +851,6 @@ void batadv_hardif_disable_interface(struct batadv_hard_iface *hard_iface)
 	if (hard_iface->if_status != BATADV_IF_INACTIVE)
 		goto out;
 
-	list_del_rcu(&hard_iface->list);
-	batadv_hardif_generation++;
-
 	batadv_info(hard_iface->mesh_iface, "Removing interface: %s\n",
 		    hard_iface->net_dev->name);
 	dev_remove_pack(&hard_iface->batman_adv_ptype);
@@ -879,6 +873,7 @@ void batadv_hardif_disable_interface(struct batadv_hard_iface *hard_iface)
 	batadv_purge_outstanding_packets(bat_priv, hard_iface);
 	netdev_put(hard_iface->mesh_iface, &hard_iface->meshif_dev_tracker);
 
+	batadv_hardif_generation++;
 	netdev_upper_dev_unlink(hard_iface->net_dev, hard_iface->mesh_iface);
 	batadv_hardif_recalc_extra_skbroom(hard_iface->mesh_iface);
 
diff --git a/net/batman-adv/hard-interface.h b/net/batman-adv/hard-interface.h
index 6d72dbdd5c20..aa9275dec097 100644
--- a/net/batman-adv/hard-interface.h
+++ b/net/batman-adv/hard-interface.h
@@ -74,7 +74,7 @@ u32 batadv_netdev_get_wifi_flags(struct net_device *net_dev);
 u32 batadv_hardif_get_wifi_flags(struct batadv_hard_iface *hard_iface);
 bool batadv_is_wifi_hardif(struct batadv_hard_iface *hard_iface);
 struct batadv_hard_iface*
-batadv_hardif_get_by_netdev(const struct net_device *net_dev);
+batadv_hardif_get_by_netdev(struct net_device *net_dev);
 int batadv_hardif_enable_interface(struct net_device *net_dev,
 				   struct net_device *mesh_iface);
 void batadv_hardif_disable_interface(struct batadv_hard_iface *hard_iface);
diff --git a/net/batman-adv/main.c b/net/batman-adv/main.c
index 3c4572284b53..1d82f3a841a1 100644
--- a/net/batman-adv/main.c
+++ b/net/batman-adv/main.c
@@ -59,10 +59,6 @@
 #include "tp_meter.h"
 #include "translation-table.h"
 
-/* List manipulations on hardif_list have to be rtnl_lock()'ed,
- * list traversals just rcu-locked
- */
-struct list_head batadv_hardif_list;
 unsigned int batadv_hardif_generation;
 static int (*batadv_rx_handler[256])(struct sk_buff *skb,
 				     struct batadv_hard_iface *recv_if);
@@ -95,7 +91,6 @@ static int __init batadv_init(void)
 	if (ret < 0)
 		return ret;
 
-	INIT_LIST_HEAD(&batadv_hardif_list);
 	batadv_algo_init();
 
 	batadv_recv_handler_init();
diff --git a/net/batman-adv/main.h b/net/batman-adv/main.h
index f68fc8b7239c..e34145047a34 100644
--- a/net/batman-adv/main.h
+++ b/net/batman-adv/main.h
@@ -226,7 +226,6 @@ static inline int batadv_print_vid(unsigned short vid)
 		return -1;
 }
 
-extern struct list_head batadv_hardif_list;
 extern unsigned int batadv_hardif_generation;
 
 extern struct workqueue_struct *batadv_event_workqueue;
diff --git a/net/batman-adv/netlink.c b/net/batman-adv/netlink.c
index e3d47f3e3b22..c1e8a074fb70 100644
--- a/net/batman-adv/netlink.c
+++ b/net/batman-adv/netlink.c
@@ -1211,7 +1211,9 @@ batadv_netlink_get_hardif_from_ifindex(struct batadv_priv *bat_priv,
 	if (!hard_dev)
 		return ERR_PTR(-ENODEV);
 
+	rtnl_lock();
 	hard_iface = batadv_hardif_get_by_netdev(hard_dev);
+	rtnl_unlock();
 	if (!hard_iface)
 		goto err_put_harddev;
 
diff --git a/net/batman-adv/types.h b/net/batman-adv/types.h
index b1f9f8964c3f..1671380b3792 100644
--- a/net/batman-adv/types.h
+++ b/net/batman-adv/types.h
@@ -214,9 +214,6 @@ struct batadv_wifi_net_device_state {
  * struct batadv_hard_iface - network device known to batman-adv
  */
 struct batadv_hard_iface {
-	/** @list: list node for batadv_hardif_list */
-	struct list_head list;
-
 	/** @if_status: status of the interface for batman-adv */
 	char if_status;
 
-- 
2.54.0

