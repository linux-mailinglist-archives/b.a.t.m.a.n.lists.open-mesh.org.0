Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E92543899D
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 24 Oct 2021 17:02:12 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 557B0817A3;
	Sun, 24 Oct 2021 17:02:11 +0200 (CEST)
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 28D64805ED
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 24 Oct 2021 15:14:03 +0200 (CEST)
Received: by mail-lf1-x131.google.com with SMTP id g36so5585339lfv.3
        for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 24 Oct 2021 06:14:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=sdtRwE7raNMG9b6Kywf2PuE83TcK3rYR5PBzfwDvk/U=;
        b=MKJQHSqbBlDdeebWKVtymJp1+H8oXVzLDG94eNl4GYSa4c0B9AiCb2MnZh3b3rroVC
         AsK6w8Jf8WR2qJJUzJ5+4EAkNTy5/gqV+XQPcW1OGuoRxo+aUK7X6e12TLmusIWWR0X5
         k+rPzpJZakovBi+YeyW1xWnt6Nv7GOTBVW2daQ7G0/beRa4fd+4vijI1XfexlylM2MPb
         MSCJsuZ/BjA5ezf+3DuOLHwjJl9IughtLC0eSLLG6ASAaohWPYpupTTZjeyvkKHipZ+p
         Vx2oEgs686zs5YSrRRQN2/tiBiqK8JLAeRoOKnvVPUNk59IAPQqlpBVrAPKR6ol0TtQc
         Kmig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=sdtRwE7raNMG9b6Kywf2PuE83TcK3rYR5PBzfwDvk/U=;
        b=AfAkUsVmWxXjoco9cnj1Y4qKsv8TUdRRUkggYppKmMcAiW7O8ESRVAidLNWOVhMnCD
         o+UAIFxVGnWhWyhtL/g+92dQqzA34yWHwB7TAG8ifAyn7DE/iGhU9dbgLQHmwfFyBiFV
         a1rsfpTs07BbyaWlvlsza9/0KrZiZO64NrkNvaualtGwYuyXkpgM/4MBJPt5cQ+FdHOL
         ADU9yJ1V9FOuFE96q0xP0hoiQy3sDE4wuWLyhT2mUUFvNB83jGuHM14FGG9t884Be824
         RISf8qlj9zJyjdPDGidGN3rFsCRtfW1WoyX7QNTG7UgKYalnTBoD/xqnt+RIb30x97vB
         T5dg==
X-Gm-Message-State: AOAM533pc4aAZc+NBhAg7mAgQMc6cegZ+mu2LDTdQ4+GcJdgC/C+GLtf
	nFgbgVrwxOsH/x4+Lm59Nzs=
X-Google-Smtp-Source: ABdhPJx30mP6p+5BvOabIuXMRBYxdCnrssFirxzI/+F0sSWKEKGgka5JalWFFlE7vB2B3pE6nBVkFg==
X-Received: by 2002:a05:6512:13a5:: with SMTP id p37mr11097183lfa.403.1635081242266;
        Sun, 24 Oct 2021 06:14:02 -0700 (PDT)
Received: from localhost.localdomain ([94.103.235.8])
        by smtp.gmail.com with ESMTPSA id q24sm1323575lfr.138.2021.10.24.06.14.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 Oct 2021 06:14:01 -0700 (PDT)
From: Pavel Skripkin <paskripkin@gmail.com>
To: mareklindner@neomailbox.ch,
	sw@simonwunderlich.de,
	a@unstable.cc,
	sven@narfation.org,
	davem@davemloft.net,
	kuba@kernel.org
Subject: [PATCH] net: batman-adv: fix error handling
Date: Sun, 24 Oct 2021 16:13:56 +0300
Message-Id: <20211024131356.10699-1-paskripkin@gmail.com>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <2056331.oJahCzYEoq@sven-desktop>
References: <2056331.oJahCzYEoq@sven-desktop>
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1635081243;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=sdtRwE7raNMG9b6Kywf2PuE83TcK3rYR5PBzfwDvk/U=;
	b=oQ400cjgzOEp2nbYdYgN3LWQHkQuC51BEHGoHhisKXV6MPiYMFxwj4UE8R86lsEv+m5LiN
	UpnHREyz8k0XXHVnoRwGaiQLG2vcFnnAfKyyRdwyV4riI1/h43MF2ruG6Az+wu12C+uyu0
	x5KBZgs8cfqIqkK2QxvqG6VZbAXyUtY=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=MKJQHSqb;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (diktynna.open-mesh.org: domain of paskripkin@gmail.com designates 2a00:1450:4864:20::131 as permitted sender) smtp.mailfrom=paskripkin@gmail.com
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1635081243; a=rsa-sha256;
	cv=none;
	b=XxA19LQq5C1wVHDc97LO1vlJy/S22gEdbEOSbpWC88WIi+nXnG2ej8olZyOfVX9SmwX2VT
	JSsposWN23uywbuWB89s5aYNNVNIV5YpbcYQ3aCZsUt0Uc3opvanCNp/U2oPD89j6d2LRI
	FGEPCd0wj06VaiujiWBjRsivRVsKwGo=
Content-Transfer-Encoding: quoted-printable
X-MailFrom: paskripkin@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
Message-ID-Hash: O5XF3GDYYYI45ZSXIPE4USCEZHDHKAO3
X-Message-ID-Hash: O5XF3GDYYYI45ZSXIPE4USCEZHDHKAO3
X-Mailman-Approved-At: Sun, 24 Oct 2021 15:02:10 +0200
CC: b.a.t.m.a.n@lists.open-mesh.org, netdev@vger.kernel.org, linux-kernel@vger.kernel.org, Pavel Skripkin <paskripkin@gmail.com>, syzbot+28b0702ada0bf7381f58@syzkaller.appspotmail.com
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/O5XF3GDYYYI45ZSXIPE4USCEZHDHKAO3/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Syzbot reported ODEBUG warning in batadv_nc_mesh_free(). The problem was
in wrong error handling in batadv_mesh_init().

Before this patch batadv_mesh_init() was calling batadv_mesh_free() in ca=
se
of any batadv_*_init() calls failure. This approach may work well, when
there is some kind of indicator, which can tell which parts of batadv are
initialized; but there isn't any.

All written above lead to cleaning up uninitialized fields. Even if we hi=
de
ODEBUG warning by initializing bat_priv->nc.work, syzbot was able to hit
GPF in batadv_nc_purge_paths(), because hash pointer in still NULL. [1]

To fix these bugs we can unwind batadv_*_init() calls one by one.
It is good approach for 2 reasons: 1) It fixes bugs on error handling
path 2) It improves the performance, since we won't call unneeded
batadv_*_free() functions.

So, this patch makes all batadv_*_init() clean up all allocated memory
before returning with an error to no call correspoing batadv_*_free()
and open-codes batadv_mesh_free() with proper order to avoid touching
uninitialized fields.

Link: https://lore.kernel.org/netdev/000000000000c87fbd05cef6bcb0@google.=
com/ [1]
Reported-and-tested-by: syzbot+28b0702ada0bf7381f58@syzkaller.appspotmail=
.com
Fixes: c6c8fea29769 ("net: Add batman-adv meshing protocol")
Signed-off-by: Pavel Skripkin <paskripkin@gmail.com>
---
 net/batman-adv/bridge_loop_avoidance.c |  8 +++-
 net/batman-adv/main.c                  | 56 ++++++++++++++++++--------
 net/batman-adv/network-coding.c        |  4 +-
 net/batman-adv/translation-table.c     |  4 +-
 4 files changed, 52 insertions(+), 20 deletions(-)

diff --git a/net/batman-adv/bridge_loop_avoidance.c b/net/batman-adv/brid=
ge_loop_avoidance.c
index 1669744304c5..17687848daec 100644
--- a/net/batman-adv/bridge_loop_avoidance.c
+++ b/net/batman-adv/bridge_loop_avoidance.c
@@ -1560,10 +1560,14 @@ int batadv_bla_init(struct batadv_priv *bat_priv)
 		return 0;
=20
 	bat_priv->bla.claim_hash =3D batadv_hash_new(128);
-	bat_priv->bla.backbone_hash =3D batadv_hash_new(32);
+	if (!bat_priv->bla.claim_hash)
+		return -ENOMEM;
=20
-	if (!bat_priv->bla.claim_hash || !bat_priv->bla.backbone_hash)
+	bat_priv->bla.backbone_hash =3D batadv_hash_new(32);
+	if (!bat_priv->bla.backbone_hash) {
+		batadv_hash_destroy(bat_priv->bla.claim_hash);
 		return -ENOMEM;
+	}
=20
 	batadv_hash_set_lock_class(bat_priv->bla.claim_hash,
 				   &batadv_claim_hash_lock_class_key);
diff --git a/net/batman-adv/main.c b/net/batman-adv/main.c
index 3ddd66e4c29e..5207cd8d6ad8 100644
--- a/net/batman-adv/main.c
+++ b/net/batman-adv/main.c
@@ -190,29 +190,41 @@ int batadv_mesh_init(struct net_device *soft_iface)
=20
 	bat_priv->gw.generation =3D 0;
=20
-	ret =3D batadv_v_mesh_init(bat_priv);
-	if (ret < 0)
-		goto err;
-
 	ret =3D batadv_originator_init(bat_priv);
-	if (ret < 0)
-		goto err;
+	if (ret < 0) {
+		atomic_set(&bat_priv->mesh_state, BATADV_MESH_DEACTIVATING);
+		goto err_orig;
+	}
=20
 	ret =3D batadv_tt_init(bat_priv);
-	if (ret < 0)
-		goto err;
+	if (ret < 0) {
+		atomic_set(&bat_priv->mesh_state, BATADV_MESH_DEACTIVATING);
+		goto err_tt;
+	}
+
+	ret =3D batadv_v_mesh_init(bat_priv);
+	if (ret < 0) {
+		atomic_set(&bat_priv->mesh_state, BATADV_MESH_DEACTIVATING);
+		goto err_v;
+	}
=20
 	ret =3D batadv_bla_init(bat_priv);
-	if (ret < 0)
-		goto err;
+	if (ret < 0) {
+		atomic_set(&bat_priv->mesh_state, BATADV_MESH_DEACTIVATING);
+		goto err_bla;
+	}
=20
 	ret =3D batadv_dat_init(bat_priv);
-	if (ret < 0)
-		goto err;
+	if (ret < 0) {
+		atomic_set(&bat_priv->mesh_state, BATADV_MESH_DEACTIVATING);
+		goto err_dat;
+	}
=20
 	ret =3D batadv_nc_mesh_init(bat_priv);
-	if (ret < 0)
-		goto err;
+	if (ret < 0) {
+		atomic_set(&bat_priv->mesh_state, BATADV_MESH_DEACTIVATING);
+		goto err_nc;
+	}
=20
 	batadv_gw_init(bat_priv);
 	batadv_mcast_init(bat_priv);
@@ -222,8 +234,20 @@ int batadv_mesh_init(struct net_device *soft_iface)
=20
 	return 0;
=20
-err:
-	batadv_mesh_free(soft_iface);
+err_nc:
+	batadv_dat_free(bat_priv);
+err_dat:
+	batadv_bla_free(bat_priv);
+err_bla:
+	batadv_v_mesh_free(bat_priv);
+err_v:
+	batadv_tt_free(bat_priv);
+err_tt:
+	batadv_originator_free(bat_priv);
+err_orig:
+	batadv_purge_outstanding_packets(bat_priv, NULL);
+	atomic_set(&bat_priv->mesh_state, BATADV_MESH_INACTIVE);
+
 	return ret;
 }
=20
diff --git a/net/batman-adv/network-coding.c b/net/batman-adv/network-cod=
ing.c
index 9f06132e007d..0a7f1d36a6a8 100644
--- a/net/batman-adv/network-coding.c
+++ b/net/batman-adv/network-coding.c
@@ -152,8 +152,10 @@ int batadv_nc_mesh_init(struct batadv_priv *bat_priv=
)
 				   &batadv_nc_coding_hash_lock_class_key);
=20
 	bat_priv->nc.decoding_hash =3D batadv_hash_new(128);
-	if (!bat_priv->nc.decoding_hash)
+	if (!bat_priv->nc.decoding_hash) {
+		batadv_hash_destroy(bat_priv->nc.coding_hash);
 		goto err;
+	}
=20
 	batadv_hash_set_lock_class(bat_priv->nc.decoding_hash,
 				   &batadv_nc_decoding_hash_lock_class_key);
diff --git a/net/batman-adv/translation-table.c b/net/batman-adv/translat=
ion-table.c
index e0b3dace2020..4b7ad6684bc4 100644
--- a/net/batman-adv/translation-table.c
+++ b/net/batman-adv/translation-table.c
@@ -4162,8 +4162,10 @@ int batadv_tt_init(struct batadv_priv *bat_priv)
 		return ret;
=20
 	ret =3D batadv_tt_global_init(bat_priv);
-	if (ret < 0)
+	if (ret < 0) {
+		batadv_tt_local_table_free(bat_priv);
 		return ret;
+	}
=20
 	batadv_tvlv_handler_register(bat_priv, batadv_tt_tvlv_ogm_handler_v1,
 				     batadv_tt_tvlv_unicast_handler_v1,
--=20
2.33.1
