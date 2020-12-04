Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id CC6A52CF14F
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri,  4 Dec 2020 16:55:51 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 08661803B1;
	Fri,  4 Dec 2020 16:55:49 +0100 (CET)
Received: from simonwunderlich.de (packetmixer.de [IPv6:2001:4d88:2000:24::c0de])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 170A581A84
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri,  4 Dec 2020 16:55:08 +0100 (CET)
Received: from kero.packetmixer.de (p200300c59716c1e0c1b6a3b925be22c4.dip0.t-ipconnect.de [IPv6:2003:c5:9716:c1e0:c1b6:a3b9:25be:22c4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by simonwunderlich.de (Postfix) with ESMTPSA id D47AC174066;
	Fri,  4 Dec 2020 16:46:35 +0100 (CET)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: davem@davemloft.net,
	kuba@kernel.org
Subject: [PATCH 7/8] batman-adv: Drop legacy code for auto deleting mesh interfaces
Date: Fri,  4 Dec 2020 16:46:30 +0100
Message-Id: <20201204154631.21063-8-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201204154631.21063-1-sw@simonwunderlich.de>
References: <20201204154631.21063-1-sw@simonwunderlich.de>
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1607097308;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=aJPzlXjBYK4eAF04N+xWnJpfMf8E7pH0dI1VfVhE9IM=;
	b=Xz6kuaxYRk1QsJN5VXqUYLpX5W3zgqq46NkdD2BbCxvvzKthQlXAWOhlmMXUaj+4h77YZs
	BXatapRGOWn646it2kpoZWQ+fUs+n+gkko30D+udOZxhMD+6xZxUIraL/etN9yXMlKHULM
	CbGpmksN4Wk72GgOLbTPocBU9HPzyCA=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1607097308; a=rsa-sha256;
	cv=none;
	b=CLNNjXDsk84nzMhqD326o6tBfqHJ8J0bf8O6fotWWIR0n7Ri8wf11JlO9pv4elAf+vcyZN
	uyozTzASwTGMxfvTSxkIkdc4vnzPJq7EiG30kuxhEKmr2RW2yioNjg4c39EKEbK9qWXBJo
	eNRel1ENvmlcJiw7fPeNMEcSV7RiUpY=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates 2001:4d88:2000:24::c0de as permitted sender) smtp.mailfrom=sw@simonwunderlich.de
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: U4ER5T6HPP7TL2ERCPECSCAGHMHA5R3N
X-Message-ID-Hash: U4ER5T6HPP7TL2ERCPECSCAGHMHA5R3N
X-MailFrom: sw@simonwunderlich.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/U4ER5T6HPP7TL2ERCPECSCAGHMHA5R3N/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

From: Sven Eckelmann <sven@narfation.org>

The only way to automatically drop batadv mesh interfaces when all soft
interfaces were removed was dropped with the sysfs support. It is no long=
er
needed to have them handled by kernel anymore.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
---
 net/batman-adv/hard-interface.c |  8 ++------
 net/batman-adv/hard-interface.h | 19 +------------------
 net/batman-adv/soft-interface.c |  5 ++---
 3 files changed, 5 insertions(+), 27 deletions(-)

diff --git a/net/batman-adv/hard-interface.c b/net/batman-adv/hard-interf=
ace.c
index bbedb9a422c0..0f186ddc15e3 100644
--- a/net/batman-adv/hard-interface.c
+++ b/net/batman-adv/hard-interface.c
@@ -845,11 +845,8 @@ static size_t batadv_hardif_cnt(const struct net_dev=
ice *soft_iface)
 /**
  * batadv_hardif_disable_interface() - Remove hard interface from soft i=
nterface
  * @hard_iface: hard interface to be removed
- * @autodel: whether to delete soft interface when it doesn't contain an=
y other
- *  slave interfaces
  */
-void batadv_hardif_disable_interface(struct batadv_hard_iface *hard_ifac=
e,
-				     enum batadv_hard_if_cleanup autodel)
+void batadv_hardif_disable_interface(struct batadv_hard_iface *hard_ifac=
e)
 {
 	struct batadv_priv *bat_priv =3D netdev_priv(hard_iface->soft_iface);
 	struct batadv_hard_iface *primary_if =3D NULL;
@@ -953,8 +950,7 @@ static void batadv_hardif_remove_interface(struct bat=
adv_hard_iface *hard_iface)
=20
 	/* first deactivate interface */
 	if (hard_iface->if_status !=3D BATADV_IF_NOT_IN_USE)
-		batadv_hardif_disable_interface(hard_iface,
-						BATADV_IF_CLEANUP_KEEP);
+		batadv_hardif_disable_interface(hard_iface);
=20
 	if (hard_iface->if_status !=3D BATADV_IF_NOT_IN_USE)
 		return;
diff --git a/net/batman-adv/hard-interface.h b/net/batman-adv/hard-interf=
ace.h
index 1ee45b615399..f4b8e9efef19 100644
--- a/net/batman-adv/hard-interface.h
+++ b/net/batman-adv/hard-interface.h
@@ -67,22 +67,6 @@ enum batadv_hard_if_bcast {
 	BATADV_HARDIF_BCAST_DUPORIG,
 };
=20
-/**
- * enum batadv_hard_if_cleanup - Cleanup modi for soft_iface after slave=
 removal
- */
-enum batadv_hard_if_cleanup {
-	/**
-	 * @BATADV_IF_CLEANUP_KEEP: Don't automatically delete soft-interface
-	 */
-	BATADV_IF_CLEANUP_KEEP,
-
-	/**
-	 * @BATADV_IF_CLEANUP_AUTO: Delete soft-interface after last slave was
-	 *  removed
-	 */
-	BATADV_IF_CLEANUP_AUTO,
-};
-
 extern struct notifier_block batadv_hard_if_notifier;
=20
 struct net_device *batadv_get_real_netdev(struct net_device *net_device)=
;
@@ -92,8 +76,7 @@ struct batadv_hard_iface*
 batadv_hardif_get_by_netdev(const struct net_device *net_dev);
 int batadv_hardif_enable_interface(struct batadv_hard_iface *hard_iface,
 				   struct net *net, const char *iface_name);
-void batadv_hardif_disable_interface(struct batadv_hard_iface *hard_ifac=
e,
-				     enum batadv_hard_if_cleanup autodel);
+void batadv_hardif_disable_interface(struct batadv_hard_iface *hard_ifac=
e);
 int batadv_hardif_min_mtu(struct net_device *soft_iface);
 void batadv_update_min_mtu(struct net_device *soft_iface);
 void batadv_hardif_release(struct kref *ref);
diff --git a/net/batman-adv/soft-interface.c b/net/batman-adv/soft-interf=
ace.c
index 6c6a8c6bab17..97118efbe678 100644
--- a/net/batman-adv/soft-interface.c
+++ b/net/batman-adv/soft-interface.c
@@ -881,7 +881,7 @@ static int batadv_softif_slave_del(struct net_device =
*dev,
 	if (!hard_iface || hard_iface->soft_iface !=3D dev)
 		goto out;
=20
-	batadv_hardif_disable_interface(hard_iface, BATADV_IF_CLEANUP_KEEP);
+	batadv_hardif_disable_interface(hard_iface);
 	ret =3D 0;
=20
 out:
@@ -1139,8 +1139,7 @@ static void batadv_softif_destroy_netlink(struct ne=
t_device *soft_iface,
=20
 	list_for_each_entry(hard_iface, &batadv_hardif_list, list) {
 		if (hard_iface->soft_iface =3D=3D soft_iface)
-			batadv_hardif_disable_interface(hard_iface,
-							BATADV_IF_CLEANUP_KEEP);
+			batadv_hardif_disable_interface(hard_iface);
 	}
=20
 	/* destroy the "untagged" VLAN */
--=20
2.20.1
