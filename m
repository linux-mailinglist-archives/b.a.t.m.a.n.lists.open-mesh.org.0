Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AF6317BC76
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri,  6 Mar 2020 13:13:40 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id AB2B38049F;
	Fri,  6 Mar 2020 13:13:34 +0100 (CET)
Received: from simonwunderlich.de (simonwunderlich.de [79.140.42.25])
 by diktynna.open-mesh.org (Postfix) with ESMTPS id D01FC802A0
 for <b.a.t.m.a.n@lists.open-mesh.org>; Fri,  6 Mar 2020 13:13:19 +0100 (CET)
Received: from kero.packetmixer.de
 (p200300C597077300B0A48B46F0435C76.dip0.t-ipconnect.de
 [IPv6:2003:c5:9707:7300:b0a4:8b46:f043:5c76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by simonwunderlich.de (Postfix) with ESMTPSA id 916C56205F;
 Fri,  6 Mar 2020 13:13:19 +0100 (CET)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: davem@davemloft.net
Subject: [PATCH 2/3] batman-adv: Avoid RCU list-traversal in spinlock
Date: Fri,  6 Mar 2020 13:13:16 +0100
Message-Id: <20200306121317.28931-3-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200306121317.28931-1-sw@simonwunderlich.de>
References: <20200306121317.28931-1-sw@simonwunderlich.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1583496799;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=OhGcenzURxT/W2iT6n5KT9gSdZjaCCLdfVgx9oGalHM=;
 b=U1WGSs5qc2PF5g4PxOw2wv2IoOAwtoMrgQXdHfIEGwyCSdBfxc8ZGtV4jatGP6ahsCxMsi
 /Ke0tMhud/UTyuneGOx95qizZgHQtw0Bn2FldYeyLYmal/4J9Mvhz4r8T2KMXGQ1aGrda8
 Fi1XV4E0RJEUZwVfzfqqbObExrbriGY=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1583496799; a=rsa-sha256; cv=none;
 b=zmjLOF0GRbM2rdlJRCE/JOu4ty6HQaP9ONIsWEzAuXp7fUSFQRb/BDA/n2QIkaxhrNp9sF
 acoEDcWQ8JalPaB2qIx7s1lwydHtVrdMGos+lU0d/Ub+l6sbZym23Hze1h0+r7lS7bH+3Z
 qqc2mwE2IJzGD6O3TLoF5oyjzUrIHlc=
ARC-Authentication-Results: i=1; diktynna.open-mesh.org; dkim=none;
 spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates
 79.140.42.25 as permitted sender) smtp.mailfrom=sw@simonwunderlich.de
X-BeenThere: b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
List-Unsubscribe: <https://lists.open-mesh.org/mm/options/b.a.t.m.a.n>,
 <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=unsubscribe>
List-Archive: <http://lists.open-mesh.org/pipermail/b.a.t.m.a.n/>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Subscribe: <https://lists.open-mesh.org/mm/listinfo/b.a.t.m.a.n>,
 <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=subscribe>
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n@lists.open-mesh.org>
Cc: netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org,
 Madhuparna Bhowmik <madhuparnabhowmik10@gmail.com>
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

From: Sven Eckelmann <sven@narfation.org>

The new CONFIG_PROVE_RCU_LIST requires a condition statement in
(h)list_for_each_entry_rcu when the code might be executed in a non RCU
non-reader section with the writer lock. Otherwise lockdep might cause a
false positive warning like

  =============================
  WARNING: suspicious RCU usage
  -----------------------------
  translation-table.c:940 RCU-list traversed in non-reader section!!

batman-adv is (mostly) following the examples from the RCU documentation
and is using the normal list-traversal primitives instead of the RCU
list-traversal primitives when the writer (spin)lock is held.

The remaining users of RCU list-traversal primitives with writer spinlock
have to be converted to the same style as the rest of the code.

Reported-by: Madhuparna Bhowmik <madhuparnabhowmik10@gmail.com>
Signed-off-by: Sven Eckelmann <sven@narfation.org>
Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
---
 net/batman-adv/translation-table.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/net/batman-adv/translation-table.c b/net/batman-adv/translation-table.c
index 852932838ddc..a9635c882fe0 100644
--- a/net/batman-adv/translation-table.c
+++ b/net/batman-adv/translation-table.c
@@ -862,7 +862,7 @@ batadv_tt_prepare_tvlv_global_data(struct batadv_orig_node *orig_node,
 	u8 *tt_change_ptr;
 
 	spin_lock_bh(&orig_node->vlan_list_lock);
-	hlist_for_each_entry_rcu(vlan, &orig_node->vlan_list, list) {
+	hlist_for_each_entry(vlan, &orig_node->vlan_list, list) {
 		num_vlan++;
 		num_entries += atomic_read(&vlan->tt.num_entries);
 	}
@@ -888,7 +888,7 @@ batadv_tt_prepare_tvlv_global_data(struct batadv_orig_node *orig_node,
 	(*tt_data)->num_vlan = htons(num_vlan);
 
 	tt_vlan = (struct batadv_tvlv_tt_vlan_data *)(*tt_data + 1);
-	hlist_for_each_entry_rcu(vlan, &orig_node->vlan_list, list) {
+	hlist_for_each_entry(vlan, &orig_node->vlan_list, list) {
 		tt_vlan->vid = htons(vlan->vid);
 		tt_vlan->crc = htonl(vlan->tt.crc);
 
@@ -937,7 +937,7 @@ batadv_tt_prepare_tvlv_local_data(struct batadv_priv *bat_priv,
 	int change_offset;
 
 	spin_lock_bh(&bat_priv->softif_vlan_list_lock);
-	hlist_for_each_entry_rcu(vlan, &bat_priv->softif_vlan_list, list) {
+	hlist_for_each_entry(vlan, &bat_priv->softif_vlan_list, list) {
 		vlan_entries = atomic_read(&vlan->tt.num_entries);
 		if (vlan_entries < 1)
 			continue;
@@ -967,7 +967,7 @@ batadv_tt_prepare_tvlv_local_data(struct batadv_priv *bat_priv,
 	(*tt_data)->num_vlan = htons(num_vlan);
 
 	tt_vlan = (struct batadv_tvlv_tt_vlan_data *)(*tt_data + 1);
-	hlist_for_each_entry_rcu(vlan, &bat_priv->softif_vlan_list, list) {
+	hlist_for_each_entry(vlan, &bat_priv->softif_vlan_list, list) {
 		vlan_entries = atomic_read(&vlan->tt.num_entries);
 		if (vlan_entries < 1)
 			continue;
-- 
2.20.1

