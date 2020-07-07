Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id A17772179C5
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue,  7 Jul 2020 22:55:21 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 6CC6780672;
	Tue,  7 Jul 2020 22:55:20 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id BAAE180355
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue,  7 Jul 2020 22:55:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1594154994;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=C+hg7ZQjL+HZcA47wxpwFKc359aIQhh58PBNQBFdZ1A=;
	b=i1opUxzuF0ftXLdw/qv5Ac6Fh8Yf7qtBOlyad5a6eIfmWO4rur06/l3ujcY4en5db3A2Wl
	bTdFca8Lso+5eJ3PHHFjpeYbyvBA0fsLGJGFikn5JeRVYM7FKt7gpLP9ph0P8pZImaTAd7
	tcavJY+C6sM9JpsmBTYHUfOle5mpb4o=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
Subject: [PATCH] batman-adv: Drop unused function batadv_hardif_remove_interfaces()
Date: Tue,  7 Jul 2020 22:49:50 +0200
Message-Id: <20200707204950.7434-1-sven@narfation.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1594155317;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=C+hg7ZQjL+HZcA47wxpwFKc359aIQhh58PBNQBFdZ1A=;
	b=HfD44JqvjPyn6O1ad/geF6PU/H8Ag9dpIM7VSK6FzxVD/HPnZSrPRzN/12fdbKiW7w0tIe
	6leCXrUQDqOweIAR5WLXl40411+U5UyTxwiMg8mn81lDIV5lwYv4x6TYlSb32tAg58jKbU
	u3UA1SuBhDq+jRliUE3JMWB5bMeMt0I=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1594155317; a=rsa-sha256;
	cv=none;
	b=b2WSuU2wkqxlMkyE5XE6Ygic0THXpkf0CVH2lVs5U6okWCrk4gRb12KX9xsZB3H5XdNWvv
	svY5UZBkmcwA90g7V8KOp4izAR8iIqI7wUiTNTOxJBStE95FradoyCG7lSVpAx9Ba9vHUr
	Ri5zbB1ZtTRvIIOmd1iYVeNr2XW78Ew=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=i1opUxzu;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: VRZNU6ZWDQ2AJOHFTK4XRJIT3OWWNPFR
X-Message-ID-Hash: VRZNU6ZWDQ2AJOHFTK4XRJIT3OWWNPFR
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/VRZNU6ZWDQ2AJOHFTK4XRJIT3OWWNPFR/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

The function batadv_hardif_remove_interfaces was meant to remove all
interfaces which are currently in the list of known (compatible) hardifs
during module unload. But the function unregister_netdevice_notifier is
called in batadv_exit before batadv_hardif_remove_interfaces. This will
trigger NETDEV_UNREGISTER events for all available interfaces and in this
process remove all interfaces from batadv_hardif_list. And
batadv_hardif_remove_interfaces only operated on this (empty) list.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 net/batman-adv/hard-interface.c | 17 -----------------
 net/batman-adv/hard-interface.h |  1 -
 net/batman-adv/main.c           |  1 -
 3 files changed, 19 deletions(-)

diff --git a/net/batman-adv/hard-interface.c b/net/batman-adv/hard-interf=
ace.c
index fa06b51c..f95be90a 100644
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
index bad2e501..b1855d9d 100644
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
index 519c08c2..70fee9b4 100644
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
