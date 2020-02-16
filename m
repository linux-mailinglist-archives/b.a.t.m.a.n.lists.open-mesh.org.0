Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 9185516046F
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 16 Feb 2020 16:01:03 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 571C680376;
	Sun, 16 Feb 2020 16:01:00 +0100 (CET)
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com
 [IPv6:2607:f8b0:4864:20::1044])
 by diktynna.open-mesh.org (Postfix) with ESMTPS id 5E3E3800AF
 for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 16 Feb 2020 15:47:34 +0100 (CET)
Received: by mail-pj1-x1044.google.com with SMTP id fa20so6024293pjb.1
 for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 16 Feb 2020 06:47:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=/yxpPs59abqNVjxSYNlOB5b7zvZlqst1mIuiTiFCWSM=;
 b=MtDv+8SJmurZEHiKTetbGWqHr1+D9ZFirpF2VAcMFMR5FKWTQUgJascjxn6wo3VSJ6
 c/8OeKK66WVHn4IZNXfBQr3kMo8VGv0asPB8ERRVQ/SNG0O+vum8rb6n5f6vD75LEWqb
 02HV7Zdv+0Nei29jy+oP6WyxVi8K/eggvooFsnN2OKc0dwphYOY+7+r6n97tcCGWxW8Z
 Z4gm4z7oY4lfEo1Jsp9HtCfTFKDF15tWFeLtF56YHmJVWrrHCE6uQNTfdGC3vFJcZUO9
 fYvMI8dtt3xVIK9DQ6uN7LaYAurOx7UtspBYpyqQ7bqPjFKHvkNSWKZUEUg3KZuysJjX
 IDjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=/yxpPs59abqNVjxSYNlOB5b7zvZlqst1mIuiTiFCWSM=;
 b=NA1ybL9x1zcVPl7Skd7Q22JJev7tDwoDnh7jsY4xomJXR7KzitJZkDYPY6Wvcl5H31
 PbNFPZNtQwgeHGxv3jD7JKlOYw/xXI2M67maZz/4QXCF9a8Au+q/opfrTJq4Mjd6d/NE
 o/EGWcx0JgRHxxXMjbFUbCogQjqskXGQ8RjCGvHI5/5/HoqFSdEPcpNqi27LX7a/qE9b
 WxwK/J6TcOEnRTa5GNi0kTMlXn741RTk/ffQJJ4O45HvAjFv4LIaROkNLC70HU2+/7op
 OE1LAipPAzz3JXqirFl806iLYgMSE42qRwd8cynkD5wu9WLocVRkFKE4dIh/1NYdp3D8
 19pg==
X-Gm-Message-State: APjAAAU/JHmVhhqpsEEftPJt+0BXmy1MGt3SdkVvZS4GI+YT47U+9+oj
 i3i9ktT+nVIaCWdUAnUwWg==
X-Google-Smtp-Source: APXvYqz4n3ibLmZFW/6xgnZe1Gc126eGPEgdC06A/0OYeZxnDP8axu+/9nkB06ALCtMl7qIx0JIxlw==
X-Received: by 2002:a17:90b:3cc:: with SMTP id
 go12mr14713869pjb.89.1581864452748; 
 Sun, 16 Feb 2020 06:47:32 -0800 (PST)
Received: from madhuparna-HP-Notebook.nitk.ac.in
 ([2402:3a80:d03:50cf:55e:33bd:4fac:caa])
 by smtp.gmail.com with ESMTPSA id t15sm13683049pgr.60.2020.02.16.06.47.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 16 Feb 2020 06:47:32 -0800 (PST)
From: madhuparnabhowmik10@gmail.com
To: mareklindner@neomailbox.ch, sw@simonwunderlich.de, a@unstable.cc,
 sven@narfation.org, davem@davemloft.net
Subject: [PATCH] net: batman-adv: Use built-in RCU list checking
Date: Sun, 16 Feb 2020 20:17:18 +0530
Message-Id: <20200216144718.2841-1-madhuparnabhowmik10@gmail.com>
X-Mailer: git-send-email 2.17.1
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1581864454;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:dkim-signature; bh=/yxpPs59abqNVjxSYNlOB5b7zvZlqst1mIuiTiFCWSM=;
 b=KI24D2DCxBqB/VQfliJHZhKwiBie62LXAgKpyVg/v3AIIVRNJ+FOI9Wb00yDjkYib+DPH1
 hy1Obf7nYLfTw1da/RzLLMWuvSMre8SG4ZWm6+LbPCZ4sb5V97e2uHeVma2Hek1QqYkLB+
 C2+qERRlMgOZbDbgb1N37mTv8iM9lt4=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1581864454; a=rsa-sha256; cv=none;
 b=EGPcSm28ToW5+YwkS4TkwBduQXWPPBnw9/40UnSqr+3Jhv/knyGeFeyFzIFk2Iv4GOarAc
 ypwiOtCYuaJ17rCO4sHfXoh67J03LMAPg8J3PFU0ldcHPuxBYmdKf1dneKZVVTXB3PPtIL
 z/LHT4Ck+uLpXkLaPyuULii47bcZmaI=
ARC-Authentication-Results: i=1; diktynna.open-mesh.org;
 dkim=pass header.d=gmail.com header.s=20161025 header.b=MtDv+8SJ;
 spf=pass (diktynna.open-mesh.org: domain of madhuparnabhowmik10@gmail.com
 designates 2607:f8b0:4864:20::1044 as permitted sender)
 smtp.mailfrom=madhuparnabhowmik10@gmail.com
X-Mailman-Approved-At: Sun, 16 Feb 2020 16:00:58 +0100
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
Cc: frextrite@gmail.com, netdev@vger.kernel.org,
 b.a.t.m.a.n@lists.open-mesh.org, linux-kernel@vger.kernel.org,
 Madhuparna Bhowmik <madhuparnabhowmik10@gmail.com>, joel@joelfernandes.org,
 linux-kernel-mentees@lists.linuxfoundation.org
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

From: Madhuparna Bhowmik <madhuparnabhowmik10@gmail.com>

hlist_for_each_entry_rcu() has built-in RCU and lock checking.

Pass cond argument to hlist_for_each_entry_rcu() to silence
false lockdep warnings when CONFIG_PROVE_RCU_LIST is enabled
by default.

Signed-off-by: Madhuparna Bhowmik <madhuparnabhowmik10@gmail.com>
---
 net/batman-adv/translation-table.c | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/net/batman-adv/translation-table.c b/net/batman-adv/translation-table.c
index 8a482c5ec67b..0e3c31cbe0e8 100644
--- a/net/batman-adv/translation-table.c
+++ b/net/batman-adv/translation-table.c
@@ -862,7 +862,8 @@ batadv_tt_prepare_tvlv_global_data(struct batadv_orig_node *orig_node,
 	u8 *tt_change_ptr;
 
 	spin_lock_bh(&orig_node->vlan_list_lock);
-	hlist_for_each_entry_rcu(vlan, &orig_node->vlan_list, list) {
+	hlist_for_each_entry_rcu(vlan, &orig_node->vlan_list, list,
+				lockdep_is_held(&orig_node->vlan_list_lock)) {
 		num_vlan++;
 		num_entries += atomic_read(&vlan->tt.num_entries);
 	}
@@ -888,7 +889,8 @@ batadv_tt_prepare_tvlv_global_data(struct batadv_orig_node *orig_node,
 	(*tt_data)->num_vlan = htons(num_vlan);
 
 	tt_vlan = (struct batadv_tvlv_tt_vlan_data *)(*tt_data + 1);
-	hlist_for_each_entry_rcu(vlan, &orig_node->vlan_list, list) {
+	hlist_for_each_entry_rcu(vlan, &orig_node->vlan_list, list,
+				lockdep_is_held(&orig_node->vlan_list_lock)) {
 		tt_vlan->vid = htons(vlan->vid);
 		tt_vlan->crc = htonl(vlan->tt.crc);
 
@@ -937,7 +939,8 @@ batadv_tt_prepare_tvlv_local_data(struct batadv_priv *bat_priv,
 	int change_offset;
 
 	spin_lock_bh(&bat_priv->softif_vlan_list_lock);
-	hlist_for_each_entry_rcu(vlan, &bat_priv->softif_vlan_list, list) {
+	hlist_for_each_entry_rcu(vlan, &bat_priv->softif_vlan_list, list,
+				lockdep_is_held(&bat_priv->softif_vlan_list_lock)) {
 		vlan_entries = atomic_read(&vlan->tt.num_entries);
 		if (vlan_entries < 1)
 			continue;
@@ -967,7 +970,8 @@ batadv_tt_prepare_tvlv_local_data(struct batadv_priv *bat_priv,
 	(*tt_data)->num_vlan = htons(num_vlan);
 
 	tt_vlan = (struct batadv_tvlv_tt_vlan_data *)(*tt_data + 1);
-	hlist_for_each_entry_rcu(vlan, &bat_priv->softif_vlan_list, list) {
+	hlist_for_each_entry_rcu(vlan, &bat_priv->softif_vlan_list, list,
+				lockdep_is_held(&bat_priv->softif_vlan_list_lock)) {
 		vlan_entries = atomic_read(&vlan->tt.num_entries);
 		if (vlan_entries < 1)
 			continue;
-- 
2.17.1

