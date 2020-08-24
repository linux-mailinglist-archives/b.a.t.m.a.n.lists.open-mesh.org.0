Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D681250202
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 24 Aug 2020 18:27:55 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 69B7D80017;
	Mon, 24 Aug 2020 18:27:50 +0200 (CEST)
Received: from simonwunderlich.de (simonwunderlich.de [79.140.42.25])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 10F2680017
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 24 Aug 2020 18:27:47 +0200 (CEST)
Received: from kero.packetmixer.de (p200300c5970d68d0e0160e8a82c5fd76.dip0.t-ipconnect.de [IPv6:2003:c5:970d:68d0:e016:e8a:82c5:fd76])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by simonwunderlich.de (Postfix) with ESMTPSA id C056362072;
	Mon, 24 Aug 2020 18:27:46 +0200 (CEST)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: davem@davemloft.net
Subject: [PATCH 2/5] batman-adv: Drop unused function batadv_hardif_remove_interfaces()
Date: Mon, 24 Aug 2020 18:27:38 +0200
Message-Id: <20200824162741.880-3-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200824162741.880-1-sw@simonwunderlich.de>
References: <20200824162741.880-1-sw@simonwunderlich.de>
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1598286467;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=KSA2zPiRps7eEWlbpjTkmLNgvbIoV+8lyI7NO7um3n8=;
	b=wRtp6NL9NORnJJvIMX6D2MGlIx84tfI9IwyGsqhUNHdj9goS0Z1qA8exb5z5KL/+hzHcyD
	H4fUG4jXUCng/Jd469/JdhljzGZXgnBmahyyaGWMrQqkqv9urgAl/8/1nq6AuoMD+8HiR7
	Uy3fNpGJHF8dZiOsbJoeCRnqpH8G1VA=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1598286467; a=rsa-sha256;
	cv=none;
	b=y1AGh82wKFk1qG2lONShhdmcgZw7QCJI7yjmTjp+Tws+ourENOyEc4tVp8weeyL2dWRV0N
	nBO9/o5h+9gMSIzRqcJbWkN7AmjhPpJQZVlbA4ZolRzUszNbdNEfLJkE6OjsBO6ivGjVlZ
	aCtu2up6T4UJrHCXwoDF8SHXX92IJNk=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates 79.140.42.25 as permitted sender) smtp.mailfrom=sw@simonwunderlich.de
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: S6O7IN2KZ3CR7ITSB2LQA6FETJDMJA2N
X-Message-ID-Hash: S6O7IN2KZ3CR7ITSB2LQA6FETJDMJA2N
X-MailFrom: sw@simonwunderlich.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/S6O7IN2KZ3CR7ITSB2LQA6FETJDMJA2N/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

From: Sven Eckelmann <sven@narfation.org>

The function batadv_hardif_remove_interfaces was meant to remove all
interfaces which are currently in the list of known (compatible) hardifs
during module unload. But the function unregister_netdevice_notifier is
called in batadv_exit before batadv_hardif_remove_interfaces. This will
trigger NETDEV_UNREGISTER events for all available interfaces and in this
process remove all interfaces from batadv_hardif_list. And
batadv_hardif_remove_interfaces only operated on this (empty) list.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
---
 net/batman-adv/hard-interface.c | 17 -----------------
 net/batman-adv/hard-interface.h |  1 -
 net/batman-adv/main.c           |  1 -
 3 files changed, 19 deletions(-)

diff --git a/net/batman-adv/hard-interface.c b/net/batman-adv/hard-interf=
ace.c
index fa06b51c0144..f95be90adaab 100644
--- a/net/batman-adv/hard-interface.c
+++ b/net/batman-adv/hard-interface.c
@@ -976,23 +976,6 @@ static void batadv_hardif_remove_interface(struct ba=
tadv_hard_iface *hard_iface)
 	batadv_hardif_put(hard_iface);
 }
=20
-/**
- * batadv_hardif_remove_interfaces() - Remove all hard interfaces
- */
-void batadv_hardif_remove_interfaces(void)
-{
-	struct batadv_hard_iface *hard_iface, *hard_iface_tmp;
-
-	rtnl_lock();
-	list_for_each_entry_safe(hard_iface, hard_iface_tmp,
-				 &batadv_hardif_list, list) {
-		list_del_rcu(&hard_iface->list);
-		batadv_hardif_generation++;
-		batadv_hardif_remove_interface(hard_iface);
-	}
-	rtnl_unlock();
-}
-
 /**
  * batadv_hard_if_event_softif() - Handle events for soft interfaces
  * @event: NETDEV_* event to handle
diff --git a/net/batman-adv/hard-interface.h b/net/batman-adv/hard-interf=
ace.h
index bad2e50135e8..b1855d9d0b06 100644
--- a/net/batman-adv/hard-interface.h
+++ b/net/batman-adv/hard-interface.h
@@ -100,7 +100,6 @@ int batadv_hardif_enable_interface(struct batadv_hard=
_iface *hard_iface,
 				   struct net *net, const char *iface_name);
 void batadv_hardif_disable_interface(struct batadv_hard_iface *hard_ifac=
e,
 				     enum batadv_hard_if_cleanup autodel);
-void batadv_hardif_remove_interfaces(void);
 int batadv_hardif_min_mtu(struct net_device *soft_iface);
 void batadv_update_min_mtu(struct net_device *soft_iface);
 void batadv_hardif_release(struct kref *ref);
diff --git a/net/batman-adv/main.c b/net/batman-adv/main.c
index 519c08c2cfba..70fee9b42e25 100644
--- a/net/batman-adv/main.c
+++ b/net/batman-adv/main.c
@@ -137,7 +137,6 @@ static void __exit batadv_exit(void)
 	batadv_netlink_unregister();
 	rtnl_link_unregister(&batadv_link_ops);
 	unregister_netdevice_notifier(&batadv_hard_if_notifier);
-	batadv_hardif_remove_interfaces();
=20
 	flush_workqueue(batadv_event_workqueue);
 	destroy_workqueue(batadv_event_workqueue);
--=20
2.20.1
