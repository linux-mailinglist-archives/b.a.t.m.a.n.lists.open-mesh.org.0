Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DE001DE5ED
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 22 May 2020 13:52:32 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 4F84880953;
	Fri, 22 May 2020 13:52:30 +0200 (CEST)
Received: from s2.neomailbox.net (s2.neomailbox.net [5.148.176.60])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 9FBA080451
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 20 May 2020 10:57:30 +0200 (CEST)
From: Antonio Quartulli <a@unstable.cc>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: [PATCH] batman-adv: use rcu_replace_pointer() where appropriate
Date: Wed, 20 May 2020 10:41:40 +0200
Message-Id: <20200520084140.18624-1-a@unstable.cc>
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1589965050;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=I+TKi44f/JEKTZ6dzeXTLHTV0HtQ1AFi7c1OKYJl9iA=;
	b=N2ArXDOKvKNrkvWOIOBsaXHM5UBb9rt/bYRwKxcJMBp9oGtQcpKnqkce3SZdsYUq+pg/jk
	NnHajqMsX2ICcCOZf0CwRU5BKq8nTJ2EK+8EWTd9e7xm20qk0eGAwt6LnyIMSmmxyWyI9Y
	Xunegl3kMR+8aK2BamvUmMvl806kxBM=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1589965050; a=rsa-sha256;
	cv=none;
	b=UGXNtQPoJz0inVHnm64vCSjUp622VtTsjbB9VXJj6hBT2UjIWk6NddgD+riNvi0gppF2EH
	NzdVdDbCMnu/CBO8Z0cHh8UlA8lHtbI8TjrvedONPjO/kwszHW5zOui7YZmBZhE26Ae9Hr
	77v1NTYjqx8u2lqQReW+NPw5MUViGcE=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of a@unstable.cc designates 5.148.176.60 as permitted sender) smtp.mailfrom=a@unstable.cc
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: LRUTSKXWCDR2IISYDGAANYZ4YMWNRAO7
X-Message-ID-Hash: LRUTSKXWCDR2IISYDGAANYZ4YMWNRAO7
X-MailFrom: a@unstable.cc
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: Antonio Quartulli <a@unstable.cc>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/LRUTSKXWCDR2IISYDGAANYZ4YMWNRAO7/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

In a63fc6b7 ("rcu: Upgrade rcu_swap_protected() to rcu_replace_pointer()"=
)
a new helper macro named rcu_replace_pointer() was introduced to
simplify code requiring to switch an rcu pointer to a new value while
extracting the old one.

Use rcu_replace_pointer() where appropriate to make code slimer.

Signed-off-by: Antonio Quartulli <a@unstable.cc>
---
 compat-include/linux/rcupdate.h | 27 +++++++++++++++++++++++++++
 net/batman-adv/gateway_client.c |  4 ++--
 net/batman-adv/hard-interface.c |  4 ++--
 net/batman-adv/routing.c        |  4 ++--
 4 files changed, 33 insertions(+), 6 deletions(-)
 create mode 100644 compat-include/linux/rcupdate.h

diff --git a/compat-include/linux/rcupdate.h b/compat-include/linux/rcupd=
ate.h
new file mode 100644
index 00000000..731aa951
--- /dev/null
+++ b/compat-include/linux/rcupdate.h
@@ -0,0 +1,27 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/* Copyright (C) 2020  B.A.T.M.A.N. contributors:
+ *
+ * Antonio Quartulli
+ *
+ * This file contains macros for maintaining compatibility with older ve=
rsions
+ * of the Linux kernel.
+ */
+
+#ifndef _NET_BATMAN_ADV_COMPAT_LINUX_RCUPDATE_H_
+#define _NET_BATMAN_ADV_COMPAT_LINUX_RCUPDATE_H_
+
+#include <linux/version.h>
+#include_next <linux/rcupdate.h>
+
+#if LINUX_VERSION_IS_LESS(5, 5, 0)
+
+#define rcu_replace_pointer(rcu_ptr, ptr, c)				\
+({									\
+	typeof(ptr) __tmp =3D rcu_dereference_protected((rcu_ptr), (c));	\
+	rcu_assign_pointer((rcu_ptr), (ptr));				\
+	__tmp;								\
+})
+
+#endif /* LINUX_VERSION_IS_LESS(5, 5, 0) */
+
+#endif /* _NET_BATMAN_ADV_COMPAT_LINUX_RCUPDATE_H_ */
diff --git a/net/batman-adv/gateway_client.c b/net/batman-adv/gateway_cli=
ent.c
index e22e4928..a18dcc68 100644
--- a/net/batman-adv/gateway_client.c
+++ b/net/batman-adv/gateway_client.c
@@ -146,8 +146,8 @@ static void batadv_gw_select(struct batadv_priv *bat_=
priv,
 	if (new_gw_node)
 		kref_get(&new_gw_node->refcount);
=20
-	curr_gw_node =3D rcu_dereference_protected(bat_priv->gw.curr_gw, 1);
-	rcu_assign_pointer(bat_priv->gw.curr_gw, new_gw_node);
+	curr_gw_node =3D rcu_replace_pointer(bat_priv->gw.curr_gw, new_gw_node,
+					   true);
=20
 	if (curr_gw_node)
 		batadv_gw_node_put(curr_gw_node);
diff --git a/net/batman-adv/hard-interface.c b/net/batman-adv/hard-interf=
ace.c
index c7e98a40..3a256af9 100644
--- a/net/batman-adv/hard-interface.c
+++ b/net/batman-adv/hard-interface.c
@@ -473,8 +473,8 @@ static void batadv_primary_if_select(struct batadv_pr=
iv *bat_priv,
 	if (new_hard_iface)
 		kref_get(&new_hard_iface->refcount);
=20
-	curr_hard_iface =3D rcu_dereference_protected(bat_priv->primary_if, 1);
-	rcu_assign_pointer(bat_priv->primary_if, new_hard_iface);
+	curr_hard_iface =3D rcu_replace_pointer(bat_priv->primary_if,
+					      new_hard_iface, 1);
=20
 	if (!new_hard_iface)
 		goto out;
diff --git a/net/batman-adv/routing.c b/net/batman-adv/routing.c
index 3632bd97..d343382e 100644
--- a/net/batman-adv/routing.c
+++ b/net/batman-adv/routing.c
@@ -71,13 +71,13 @@ static void _batadv_update_route(struct batadv_priv *=
bat_priv,
 	 * the code needs to ensure the curr_router variable contains a pointer
 	 * to the replaced best neighbor.
 	 */
-	curr_router =3D rcu_dereference_protected(orig_ifinfo->router, true);
=20
 	/* increase refcount of new best neighbor */
 	if (neigh_node)
 		kref_get(&neigh_node->refcount);
=20
-	rcu_assign_pointer(orig_ifinfo->router, neigh_node);
+	curr_router =3D rcu_replace_pointer(orig_ifinfo->router, neigh_node,
+					  true);
 	spin_unlock_bh(&orig_node->neigh_list_lock);
 	batadv_orig_ifinfo_put(orig_ifinfo);
=20
--=20
2.26.2
