Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E00639FAEA
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue,  8 Jun 2021 17:36:11 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 2F64883F21;
	Tue,  8 Jun 2021 17:36:09 +0200 (CEST)
Received: from simonwunderlich.de (simonwunderlich.de [79.140.42.25])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 086E583ED2
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue,  8 Jun 2021 17:35:30 +0200 (CEST)
Received: from kero.packetmixer.de (p200300c5970dd3e020a52263b5aabfb3.dip0.t-ipconnect.de [IPv6:2003:c5:970d:d3e0:20a5:2263:b5aa:bfb3])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by simonwunderlich.de (Postfix) with ESMTPSA id 077F4174059;
	Tue,  8 Jun 2021 17:27:05 +0200 (CEST)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: kuba@kernel.org,
	davem@davemloft.net
Subject: [PATCH 09/11] batman-adv: Avoid name based attaching of hard interfaces
Date: Tue,  8 Jun 2021 17:26:58 +0200
Message-Id: <20210608152700.30315-10-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210608152700.30315-1-sw@simonwunderlich.de>
References: <20210608152700.30315-1-sw@simonwunderlich.de>
MIME-Version: 1.0
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1623166530; a=rsa-sha256;
	cv=none;
	b=RlJWqSqqaQyS76TiwL4r1ikHc7z4LKTW1c5dj6h4GPfI+0DqCzf5h3E4pMUG0EfbHea/lG
	C/nPXM+MZZkDBMjOMuxxt2xYFF21X/g6hBiewoeUODEepfbyKhznBKlhvXjvMUmmjhhdln
	FX1ka1vJm+BTK8b4eNmYRPgbbgLtoD0=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates 79.140.42.25 as permitted sender) smtp.mailfrom=sw@simonwunderlich.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1623166530;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=e++4wshDCMta8ofBdc1aOQGEwcGCkDfIc6vw+66K7ug=;
	b=0puXMJxUX3oyukjyiPxBEAJgBvHfaVujvZvq+UBe02mCo2EBZpEs9BPZ5FQJFcMu46Ot/4
	hnn5ycTrHD13ODIUslgfVl/o7+5cJOHHKVI1+FeOTxA8neP3Y0SLjAPbPPBxbsQUW3tiOH
	GNmcjUKhbsaKye8dEi02kBMnqziAscc=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: PICFU2QJPVUSGENAITVJM6UPQF5JN7DX
X-Message-ID-Hash: PICFU2QJPVUSGENAITVJM6UPQF5JN7DX
X-MailFrom: sw@simonwunderlich.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/PICFU2QJPVUSGENAITVJM6UPQF5JN7DX/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

From: Sven Eckelmann <sven@narfation.org>

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
Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
---
 net/batman-adv/hard-interface.c | 14 ++++----------
 net/batman-adv/hard-interface.h |  3 +--
 net/batman-adv/soft-interface.c |  3 +--
 3 files changed, 6 insertions(+), 14 deletions(-)

diff --git a/net/batman-adv/hard-interface.c b/net/batman-adv/hard-interf=
ace.c
index a638f35598f0..81d201cc343d 100644
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
index 83d11b46a9d8..8cb2a1f10080 100644
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
index 0c5b34251a6d..ae368a42a4ad 100644
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
2.20.1
