Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 4962B39FAE5
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue,  8 Jun 2021 17:35:46 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 34C5A83F04;
	Tue,  8 Jun 2021 17:35:44 +0200 (CEST)
Received: from simonwunderlich.de (simonwunderlich.de [79.140.42.25])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 4B2A982C0A
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue,  8 Jun 2021 17:35:29 +0200 (CEST)
Received: from kero.packetmixer.de (p200300c5970dd3e020a52263b5aabfb3.dip0.t-ipconnect.de [IPv6:2003:c5:970d:d3e0:20a5:2263:b5aa:bfb3])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by simonwunderlich.de (Postfix) with ESMTPSA id 71C1E17405A;
	Tue,  8 Jun 2021 17:27:06 +0200 (CEST)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: kuba@kernel.org,
	davem@davemloft.net
Subject: [PATCH 10/11] batman-adv: Don't manually reattach hard-interface
Date: Tue,  8 Jun 2021 17:26:59 +0200
Message-Id: <20210608152700.30315-11-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210608152700.30315-1-sw@simonwunderlich.de>
References: <20210608152700.30315-1-sw@simonwunderlich.de>
MIME-Version: 1.0
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1623166529; a=rsa-sha256;
	cv=none;
	b=SwMjmiGuRP8Nz+sAjlNMtVtKKQ3uou/kN+Lb7DVkzJF6M6QHqv8smNsKeCjVQLGkGqBEX0
	ZkR9a7d41yUBzCXHmE17fm4RoytK1gQFCAz7NKvZnWaRJRdZ9Fy+lq7jtVuHM6m8gxxx3q
	wHGQIT0cy+VbE7Kw7id18UAKrxPA/3Y=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates 79.140.42.25 as permitted sender) smtp.mailfrom=sw@simonwunderlich.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1623166529;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=xdy0TLpXh7hgFOnXEy+xemhf7xbGU7GwqBk5wPeXfE4=;
	b=A9BSsp5nD8VTl/HgBwa7K77D12IFPX/e+60le+yDxprBW/Pwrc48qpyO0j5c+KLag1WSwR
	MigSzwICXeH0aMI6VKvjaPlnh69+c2FK9otRisZyD9FCSGJyN2zXKE3vNPYq9f7JnlIlu7
	j8UHexDY6KNhYiujRfaM4oEyQ2/fwug=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: VNFQKRXUT7NGFHPQNY3NFKV5EL67KPMA
X-Message-ID-Hash: VNFQKRXUT7NGFHPQNY3NFKV5EL67KPMA
X-MailFrom: sw@simonwunderlich.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/VNFQKRXUT7NGFHPQNY3NFKV5EL67KPMA/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

From: Sven Eckelmann <sven@narfation.org>

The batadv_hardif_enable_interface is now only called from the callback
ndo_add_slave. This callback is only used by do_set_master in the rtnetli=
nk
code which only does two things:

1. remove the net_device from its old master
2. add the net_device to its new batadv master

The code to replicate the first step in batman-adv is therefore unused
since the sysfs code was dropped.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
---
 net/batman-adv/hard-interface.c | 34 ---------------------------------
 1 file changed, 34 deletions(-)

diff --git a/net/batman-adv/hard-interface.c b/net/batman-adv/hard-interf=
ace.c
index 81d201cc343d..44b0aa30c30a 100644
--- a/net/batman-adv/hard-interface.c
+++ b/net/batman-adv/hard-interface.c
@@ -677,31 +677,6 @@ batadv_hardif_deactivate_interface(struct batadv_har=
d_iface *hard_iface)
 	batadv_update_min_mtu(hard_iface->soft_iface);
 }
=20
-/**
- * batadv_master_del_slave() - remove hard_iface from the current master=
 iface
- * @slave: the interface enslaved in another master
- * @master: the master from which slave has to be removed
- *
- * Invoke ndo_del_slave on master passing slave as argument. In this way=
 the
- * slave is free'd and the master can correctly change its internal stat=
e.
- *
- * Return: 0 on success, a negative value representing the error otherwi=
se
- */
-static int batadv_master_del_slave(struct batadv_hard_iface *slave,
-				   struct net_device *master)
-{
-	int ret;
-
-	if (!master)
-		return 0;
-
-	ret =3D -EBUSY;
-	if (master->netdev_ops->ndo_del_slave)
-		ret =3D master->netdev_ops->ndo_del_slave(master, slave->net_dev);
-
-	return ret;
-}
-
 /**
  * batadv_hardif_enable_interface() - Enslave hard interface to soft int=
erface
  * @hard_iface: hard interface to add to soft interface
@@ -713,7 +688,6 @@ int batadv_hardif_enable_interface(struct batadv_hard=
_iface *hard_iface,
 				   struct net_device *soft_iface)
 {
 	struct batadv_priv *bat_priv;
-	struct net_device *master;
 	__be16 ethertype =3D htons(ETH_P_BATMAN);
 	int max_header_len =3D batadv_max_header_len();
 	int ret;
@@ -732,14 +706,6 @@ int batadv_hardif_enable_interface(struct batadv_har=
d_iface *hard_iface,
 		goto err_dev;
 	}
=20
-	/* check if the interface is enslaved in another virtual one and
-	 * in that case unlink it first
-	 */
-	master =3D netdev_master_upper_dev_get(hard_iface->net_dev);
-	ret =3D batadv_master_del_slave(hard_iface, master);
-	if (ret)
-		goto err_dev;
-
 	hard_iface->soft_iface =3D soft_iface;
 	bat_priv =3D netdev_priv(hard_iface->soft_iface);
=20
--=20
2.20.1
