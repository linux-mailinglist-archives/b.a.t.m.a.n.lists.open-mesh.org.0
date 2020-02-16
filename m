Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id F2A91160532
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 16 Feb 2020 19:07:36 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id F1E878086C;
	Sun, 16 Feb 2020 19:07:35 +0100 (CET)
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
 by diktynna.open-mesh.org (Postfix) with ESMTPS id E38408010F
 for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 16 Feb 2020 19:07:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
 s=20121; t=1581876049;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=kXItcA3lNVQ6cBxnbtUHyWUBxO4mXFDbggTp29uE30g=;
 b=U3avZH9GtMSIUuFfo4Ns3GPbFjwgCQns5m2b5OQeTWWWUALJNI+iSNiLCFElWaCYbqxEHd
 RaH0RCQxFZx6xnIohiPgSVHyVTee7ZkKlh5lIHbaVIQaXj7ig8PsxS2aaFKb6zc8+lpaSL
 B+BNaHREt6lk4IQiA+a+np46LVVskWs=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: [PATCH] batman-adv: Avoid RCU list-traversal in spinlock
Date: Sun, 16 Feb 2020 19:00:25 +0100
Message-Id: <20200216180025.14271-1-sven@narfation.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1581876453;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:dkim-signature;
 bh=kXItcA3lNVQ6cBxnbtUHyWUBxO4mXFDbggTp29uE30g=;
 b=jpn4XjqMqJwj5MwHynM/GNQgf8p2P0wb8GxTw33Em1O9VgNk1r5Hki8nzymnyZ3pvE3Jf9
 eNZ07EWBsrjZ5+ztF22D1VMn2QEZJdrFJTr4Y468NjHhyEq6pUlkJhGX17VrlKA5XYKNU9
 4SLltKsoT/jVMZHC+8ytf9PAJLrKxtY=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1581876453; a=rsa-sha256; cv=none;
 b=yTgyjdWOVlXOtB72DA8UmQ4NOBd9UwVfFq1Sj0dMjMgqOKkmv2of2jb6ySuwjvoHr/gJc1
 VQaDMZgHLKNnYPghrACV1tgh/I3G8LwSLMSg47dBszhWkbYkeyx+raDMNse7fBwpMlhyFg
 KTHJH5gF4SpientQEFY8IlDcaqdZeoY=
ARC-Authentication-Results: i=1; diktynna.open-mesh.org;
 dkim=pass header.d=narfation.org header.s=20121 header.b=U3avZH9G;
 spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org
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
Cc: joel@joelfernandes.org, Madhuparna Bhowmik <madhuparnabhowmik10@gmail.com>,
 frextrite@gmail.com
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

The new CONFIG_PROVE_RCU_LIST requires a condition statement in
(h)list_for_each_entry_rcu when the code might be executed in a non RCU
non-reader section with the writer lock. Otherwise lockdep might cause a
false positive warning like

  =============================
  WARNING: suspicious RCU usage
  -----------------------------
  translation-table.c:940 RCU-list traversed in non-reader section!!

batman-adv is (mostly) following the examples from the RCU documenation and
is using the normal list-traversal primitives instead of the RCU
list-traversal primitives when the writer (spin)lock is held.

The remaining users of RCU list-traversal primitives with writer spinlock
have to be converted to the same style as the rest of the code.

Reported-by: Madhuparna Bhowmik <madhuparnabhowmik10@gmail.com>
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 net/batman-adv/translation-table.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/net/batman-adv/translation-table.c b/net/batman-adv/translation-table.c
index 85293283..2d52356a 100644
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
-- 
2.20.1

