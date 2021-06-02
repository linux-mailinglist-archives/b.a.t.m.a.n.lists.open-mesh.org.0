Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 9986E3994BB
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed,  2 Jun 2021 22:42:31 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 32139808DE;
	Wed,  2 Jun 2021 22:42:30 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 086C382660
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed,  2 Jun 2021 22:42:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1622666080;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=xKzgCnnXvCQWf3uyQ7A4FXa7GeBcpRs+1wmanBAvhg4=;
	b=FiYlh16i0frAhv0HUomdGouJRnHjOYqkJhjD7KBiwh7AI5KmINh3myXwaEynfnjxpWwNUS
	7o3BgJ56KGDm7JPxh1ZgG8aUDTghEp74No1rp4g8JaKq9akqw2AhAKyqWzBc7qbFe7nD/5
	EJ8wjHL24S7Uoi6YbgPta+HBh6e5Stw=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
Subject: [PATCH 2/4] batman-adv: Avoid name based attaching of hard interfaces
Date: Wed,  2 Jun 2021 22:32:33 +0200
Message-Id: <20210602203235.10659-2-sven@narfation.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210602203235.10659-1-sven@narfation.org>
References: <20210602203235.10659-1-sven@narfation.org>
MIME-Version: 1.0
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1622666548; a=rsa-sha256;
	cv=none;
	b=UH0TZ8XTDaLKiQoPoWLoQv0MVkVg3G2quBx60Ih/GW8U1FlduEUET+ad+Y/Gpi8xMct7vw
	gRMzmHF61fC6QUH4zjHTAAD8H39RChblqlDLElkRHlK4oHW+AvsyxX2Kon9zL88iO6Ru2k
	ny4TUheUJyjGF2Fw0+MmHDT7KgO2ADc=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=FiYlh16i;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1622666548;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=xKzgCnnXvCQWf3uyQ7A4FXa7GeBcpRs+1wmanBAvhg4=;
	b=sklThxp+RkhFlvNa2kziK9pycoEVjuLXomxAgRnpUu9PvbdehJk73Da+g++Syo0JnlVjvC
	Asx7nhImb8uEaqUFGjoFF1fqr2HTyCV6M3SQ8iWZAGk8lZ8ICn3HREuPOZyhd7MR31XU6f
	oXYRcjEk6xssPY8boQZxFf7RPRmL1fM=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: DR2DHETFFPSKDKOJH2XEC4DSF34KZ3IS
X-Message-ID-Hash: DR2DHETFFPSKDKOJH2XEC4DSF34KZ3IS
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/DR2DHETFFPSKDKOJH2XEC4DSF34KZ3IS/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

The sysfs code for the batman-adv/mesh_iface file was receiving a string =
of
the batadv interface. This interface name was then provided to the code
which shared sysfs+rtnetlink code for attaching an hard-interface to an
batadv interface. The rtnetlink code was also using the (extracted)
interface name from the ndo_add_slave callback to increase the shared cod=
e
- even when it would have been more efficient to use the provided
net_device object directly instead of searching it again (based on its
name) in batadv_hardif_enable_interface.

But this indirect handling is no longer necessary because the sysfs code
was dropped. There is now only a single code path which is using
batadv_hardif_enable_interface.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 net/batman-adv/hard-interface.c | 14 ++++----------
 net/batman-adv/hard-interface.h |  3 +--
 net/batman-adv/soft-interface.c |  3 +--
 3 files changed, 6 insertions(+), 14 deletions(-)

diff --git a/net/batman-adv/hard-interface.c b/net/batman-adv/hard-interf=
ace.c
index 9a78789b..44b65fa4 100644
--- a/net/batman-adv/hard-interface.c
+++ b/net/batman-adv/hard-interface.c
@@ -705,16 +705,15 @@ static int batadv_master_del_slave(struct batadv_ha=
rd_iface *slave,
 /**
  * batadv_hardif_enable_interface() - Enslave hard interface to soft int=
erface
  * @hard_iface: hard interface to add to soft interface
- * @net: the applicable net namespace
- * @iface_name: name of the soft interface
+ * @soft_iface: netdev struct of the mesh interface
  *
  * Return: 0 on success or negative error number in case of failure
  */
 int batadv_hardif_enable_interface(struct batadv_hard_iface *hard_iface,
-				   struct net *net, const char *iface_name)
+				   struct net_device *soft_iface)
 {
 	struct batadv_priv *bat_priv;
-	struct net_device *soft_iface, *master;
+	struct net_device *master;
 	__be16 ethertype =3D htons(ETH_P_BATMAN);
 	int max_header_len =3D batadv_max_header_len();
 	int ret;
@@ -724,11 +723,7 @@ int batadv_hardif_enable_interface(struct batadv_har=
d_iface *hard_iface,
=20
 	kref_get(&hard_iface->refcount);
=20
-	soft_iface =3D dev_get_by_name(net, iface_name);
-	if (!soft_iface) {
-		ret =3D -EINVAL;
-		goto err;
-	}
+	dev_hold(soft_iface);
=20
 	if (!batadv_softif_is_valid(soft_iface)) {
 		pr_err("Can't create batman mesh interface %s: already exists as regul=
ar interface\n",
@@ -802,7 +797,6 @@ int batadv_hardif_enable_interface(struct batadv_hard=
_iface *hard_iface,
 err_dev:
 	hard_iface->soft_iface =3D NULL;
 	dev_put(soft_iface);
-err:
 	batadv_hardif_put(hard_iface);
 	return ret;
 }
diff --git a/net/batman-adv/hard-interface.h b/net/batman-adv/hard-interf=
ace.h
index 83d11b46..8cb2a1f1 100644
--- a/net/batman-adv/hard-interface.h
+++ b/net/batman-adv/hard-interface.h
@@ -16,7 +16,6 @@
 #include <linux/rcupdate.h>
 #include <linux/stddef.h>
 #include <linux/types.h>
-#include <net/net_namespace.h>
=20
 /**
  * enum batadv_hard_if_state - State of a hard interface
@@ -75,7 +74,7 @@ bool batadv_is_wifi_hardif(struct batadv_hard_iface *ha=
rd_iface);
 struct batadv_hard_iface*
 batadv_hardif_get_by_netdev(const struct net_device *net_dev);
 int batadv_hardif_enable_interface(struct batadv_hard_iface *hard_iface,
-				   struct net *net, const char *iface_name);
+				   struct net_device *soft_iface);
 void batadv_hardif_disable_interface(struct batadv_hard_iface *hard_ifac=
e);
 int batadv_hardif_min_mtu(struct net_device *soft_iface);
 void batadv_update_min_mtu(struct net_device *soft_iface);
diff --git a/net/batman-adv/soft-interface.c b/net/batman-adv/soft-interf=
ace.c
index 0c5b3425..ae368a42 100644
--- a/net/batman-adv/soft-interface.c
+++ b/net/batman-adv/soft-interface.c
@@ -842,14 +842,13 @@ static int batadv_softif_slave_add(struct net_devic=
e *dev,
 				   struct netlink_ext_ack *extack)
 {
 	struct batadv_hard_iface *hard_iface;
-	struct net *net =3D dev_net(dev);
 	int ret =3D -EINVAL;
=20
 	hard_iface =3D batadv_hardif_get_by_netdev(slave_dev);
 	if (!hard_iface || hard_iface->soft_iface)
 		goto out;
=20
-	ret =3D batadv_hardif_enable_interface(hard_iface, net, dev->name);
+	ret =3D batadv_hardif_enable_interface(hard_iface, dev);
=20
 out:
 	if (hard_iface)
--=20
2.30.2
