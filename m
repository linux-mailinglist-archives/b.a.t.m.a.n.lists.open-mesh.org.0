Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id E5CE1457E43
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 20 Nov 2021 13:40:00 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id BC5CE83D9C;
	Sat, 20 Nov 2021 13:39:47 +0100 (CET)
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 6791C81A7E
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 20 Nov 2021 13:39:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1637411982;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Tapa3Y205oYvhgGZ3fKaBByTWKzaol61opjN713tCK0=;
	b=X+c0Qnu4EHuH0UOu5hCC+99WY4p8/yxBnHtHqUIRFddOdGebJ4xCks3cb7OLe/ixpxCL/e
	bfjdIEo3yXgwEhFOpO2x5q8dz7DpJUM1ZflMY4365deg/fn8aJAyzBAN9sUBm2EfedsLpP
	NK3LpZt4wH4QO4FFqLbqcqBREkHJ7DU=
From: Sven Eckelmann <sven@narfation.org>
To: stable@vger.kernel.org
Subject: [PATCH 4.4 03/11] batman-adv: Prevent duplicated softif_vlan entry
Date: Sat, 20 Nov 2021 13:39:31 +0100
Message-Id: <20211120123939.260723-4-sven@narfation.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211120123939.260723-1-sven@narfation.org>
References: <20211120123939.260723-1-sven@narfation.org>
MIME-Version: 1.0
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1637411983; a=rsa-sha256;
	cv=none;
	b=yjrviUrCRqV9qX4P7nARfmEEikLJGouJNQ9P5ZWVVURmorVnnUD6OyCld2sR5epxu1Zjap
	A4l5busGLX8rdjH9wztVDg5l+QMJVZJ+iS36P92X4HqTfkTPc2E3BbwufhaAS4AeqykqF6
	wgydIhskomi7JIsZJXKcZ+JzI8cyPy4=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1637411983;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=Tapa3Y205oYvhgGZ3fKaBByTWKzaol61opjN713tCK0=;
	b=dYO32Ea6hT0c2uB9Pg1bOdBjlD9qlHBCP8ohvCBX35wwkNWVdypzhS+vvxKHtLnbDGLpdl
	c5DsyWna8Px8Wo7+BOcXMbSbKT1YfRHwgUIE4f7ELwmrjNr8EWTRTWYfGNIylRJRSSlTfs
	8OZ5dBegTLF/cw75jDTiA2Cf6vWboJI=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=X+c0Qnu4;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: RM4UBG3CFJWTMDI734E6ASZWU22VYW2Y
X-Message-ID-Hash: RM4UBG3CFJWTMDI734E6ASZWU22VYW2Y
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/RM4UBG3CFJWTMDI734E6ASZWU22VYW2Y/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

commit 94cb82f594ed86be303398d6dfc7640a6f1d45d4 upstream.

The function batadv_softif_vlan_get is responsible for adding new
softif_vlan to the softif_vlan_list. It first checks whether the entry
already is in the list or not. If it is, then the creation of a new entry
is aborted.

But the lock for the list is only held when the list is really modified.
This could lead to duplicated entries because another context could creat=
e
an entry with the same key between the check and the list manipulation.

The check and the manipulation of the list must therefore be in the same
locked code section.

Fixes: 5d2c05b21337 ("batman-adv: add per VLAN interface attribute framew=
ork")
Signed-off-by: Sven Eckelmann <sven@narfation.org>
Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
[ bp: 4.4 backport: switch back to atomic_t based reference counting. ]
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 net/batman-adv/soft-interface.c | 20 ++++++++++++++------
 1 file changed, 14 insertions(+), 6 deletions(-)

diff --git a/net/batman-adv/soft-interface.c b/net/batman-adv/soft-interf=
ace.c
index ff693887ea82..f1e2e7e33500 100644
--- a/net/batman-adv/soft-interface.c
+++ b/net/batman-adv/soft-interface.c
@@ -539,15 +539,20 @@ int batadv_softif_create_vlan(struct batadv_priv *b=
at_priv, unsigned short vid)
 	struct batadv_softif_vlan *vlan;
 	int err;
=20
+	spin_lock_bh(&bat_priv->softif_vlan_list_lock);
+
 	vlan =3D batadv_softif_vlan_get(bat_priv, vid);
 	if (vlan) {
 		batadv_softif_vlan_free_ref(vlan);
+		spin_unlock_bh(&bat_priv->softif_vlan_list_lock);
 		return -EEXIST;
 	}
=20
 	vlan =3D kzalloc(sizeof(*vlan), GFP_ATOMIC);
-	if (!vlan)
+	if (!vlan) {
+		spin_unlock_bh(&bat_priv->softif_vlan_list_lock);
 		return -ENOMEM;
+	}
=20
 	vlan->bat_priv =3D bat_priv;
 	vlan->vid =3D vid;
@@ -555,16 +560,19 @@ int batadv_softif_create_vlan(struct batadv_priv *b=
at_priv, unsigned short vid)
=20
 	atomic_set(&vlan->ap_isolation, 0);
=20
+	hlist_add_head_rcu(&vlan->list, &bat_priv->softif_vlan_list);
+	spin_unlock_bh(&bat_priv->softif_vlan_list_lock);
+
+	/* batadv_sysfs_add_vlan cannot be in the spinlock section due to the
+	 * sleeping behavior of the sysfs functions and the fs_reclaim lock
+	 */
 	err =3D batadv_sysfs_add_vlan(bat_priv->soft_iface, vlan);
 	if (err) {
-		kfree(vlan);
+		/* ref for the list */
+		batadv_softif_vlan_free_ref(vlan);
 		return err;
 	}
=20
-	spin_lock_bh(&bat_priv->softif_vlan_list_lock);
-	hlist_add_head_rcu(&vlan->list, &bat_priv->softif_vlan_list);
-	spin_unlock_bh(&bat_priv->softif_vlan_list_lock);
-
 	/* add a new TT local entry. This one will be marked with the NOPURGE
 	 * flag
 	 */
--=20
2.30.2
