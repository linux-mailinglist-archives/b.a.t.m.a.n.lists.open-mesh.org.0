Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id C842745A2F0
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 23 Nov 2021 13:43:19 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 005EB844AE;
	Tue, 23 Nov 2021 13:43:14 +0100 (CET)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id E141384264
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 23 Nov 2021 13:43:10 +0100 (CET)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 3097D60F9F;
	Tue, 23 Nov 2021 12:43:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1637671389;
	bh=XbXGlu8rVBmsxtG1b8J1iDuY/SUsjJbobewnvQY2SbY=;
	h=Subject:To:Cc:From:Date:In-Reply-To:From;
	b=Qz+VwynUkvFM3dGr5QhJZRIuc3UjiQ+6nUOUWeNSKx78j57N4hCdEh6LykRj8RmJR
	 +rP7/LCvlBTNfN1XZQs07jZlcHncSVZuy1/MV6rg8W1Tv199i4yDWvljjBzaadjb7T
	 p9fxqyBCoMAs3VEmTtfNwUqxglfq7+bXVFlcUJ1c=
Subject: Patch "batman-adv: Prevent duplicated softif_vlan entry" has been added to the 4.4-stable tree
To: b.a.t.m.a.n@lists.open-mesh.org,gregkh@linuxfoundation.org,sven@narfation.org,sw@simonwunderlich.de
From: <gregkh@linuxfoundation.org>
Date: Tue, 23 Nov 2021 13:42:44 +0100
In-Reply-To: <20211120123939.260723-4-sven@narfation.org>
Message-ID: <1637671364136221@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=ANSI_X3.4-1968
X-stable: commit
X-Patchwork-Hint: ignore 
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1637671391; a=rsa-sha256;
	cv=none;
	b=ZwD/t67YpF8v08LY2HLUEpQCUEmdEGAk6kxrPPzJwCDuOU+iPOy4Q7gAlDgSWrt8mLYHrZ
	SAqakQ7lC+teNqAeZagce8pMZg8gBsYX4uM3yexoFfR1kYRpulb9Y9uFwZ1aJxyZ3aXfWP
	tTmbfD909+T8930gmne9ikYv8DCGdus=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1637671391;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:dkim-signature;
	bh=nG1q33X/FkCV21Dc+NTc4Opa8F+m7PlK3ro/XVxopPM=;
	b=ehDUwzuhrh70NOZ0XQOQHBHOy8cwbrPu3sGqMzcSIa/SSbaH+oESeCAmODM6YdS5gA6b2r
	J6viQ7SocWYj1bYHJq5BVv3iBu8IPiAzX0qjOYF6sxxjgHuNBGuo4RPn+cQl7bXlV5tMOd
	0CJFLhy7GMoA0YBECi+1/WtwzRVeJyw=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=linuxfoundation.org header.s=korg header.b=Qz+VwynU;
	spf=pass (diktynna.open-mesh.org: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
	dmarc=pass (policy=none) header.from=linuxfoundation.org
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: RAR5AZGQRYP4WT27A4GRRC5KOJGFAIFK
X-Message-ID-Hash: RAR5AZGQRYP4WT27A4GRRC5KOJGFAIFK
X-MailFrom: gregkh@linuxfoundation.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
CC: stable-commits@vger.kernel.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/RAR5AZGQRYP4WT27A4GRRC5KOJGFAIFK/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>


This is a note to let you know that I've just added the patch titled

    batman-adv: Prevent duplicated softif_vlan entry

to the 4.4-stable tree which can be found at:
    http://www.kernel.org/git/?p=3Dlinux/kernel/git/stable/stable-queue.g=
it;a=3Dsummary

The filename of the patch is:
     batman-adv-prevent-duplicated-softif_vlan-entry.patch
and it can be found in the queue-4.4 subdirectory.

If you, or anyone else, feels it should not be added to the stable tree,
please let <stable@vger.kernel.org> know about it.


From foo@baz Tue Nov 23 01:39:02 PM CET 2021
From: Sven Eckelmann <sven@narfation.org>
Date: Sat, 20 Nov 2021 13:39:31 +0100
Subject: batman-adv: Prevent duplicated softif_vlan entry
To: stable@vger.kernel.org
Cc: b.a.t.m.a.n@lists.open-mesh.org, Sven Eckelmann <sven@narfation.org>,=
 Simon Wunderlich <sw@simonwunderlich.de>
Message-ID: <20211120123939.260723-4-sven@narfation.org>

From: Sven Eckelmann <sven@narfation.org>

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
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 net/batman-adv/soft-interface.c |   20 ++++++++++++++------
 1 file changed, 14 insertions(+), 6 deletions(-)

--- a/net/batman-adv/soft-interface.c
+++ b/net/batman-adv/soft-interface.c
@@ -539,15 +539,20 @@ int batadv_softif_create_vlan(struct bat
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
@@ -555,16 +560,19 @@ int batadv_softif_create_vlan(struct bat
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


Patches currently in stable-queue which might be from sven@narfation.org =
are

queue-4.4/batman-adv-consider-fragmentation-for-needed_headroom.patch
queue-4.4/ath9k-fix-potential-interrupt-storm-on-queue-reset.patch
queue-4.4/batman-adv-set-.owner-to-this_module.patch
queue-4.4/batman-adv-mcast-fix-duplicate-mcast-packets-from-bla-backbone-=
to-mesh.patch
queue-4.4/batman-adv-fix-multicast-tt-issues-with-bogus-roam-flags.patch
queue-4.4/batman-adv-mcast-fix-duplicate-mcast-packets-in-bla-backbone-fr=
om-lan.patch
queue-4.4/batman-adv-reserve-needed_-room-for-fragments.patch
queue-4.4/net-batman-adv-fix-error-handling.patch
queue-4.4/batman-adv-keep-fragments-equally-sized.patch
queue-4.4/batman-adv-avoid-warn_on-timing-related-checks.patch
queue-4.4/batman-adv-prevent-duplicated-softif_vlan-entry.patch
queue-4.4/batman-adv-don-t-always-reallocate-the-fragmentation-skb-head.p=
atch
queue-4.4/batman-adv-mcast-fix-duplicate-mcast-packets-in-bla-backbone-fr=
om-mesh.patch
