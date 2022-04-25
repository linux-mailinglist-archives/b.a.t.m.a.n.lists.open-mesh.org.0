Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 06D4C50E0A8
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 25 Apr 2022 14:46:13 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id CFD0E82EAF;
	Mon, 25 Apr 2022 14:46:07 +0200 (CEST)
Received: from mail.nfschina.com (unknown [IPv6:2400:dd01:100f:2:72e2:84ff:fe10:5f45])
	by diktynna.open-mesh.org (Postfix) with ESMTP id CD083802F0
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 25 Apr 2022 13:36:40 +0200 (CEST)
Received: from localhost (unknown [127.0.0.1])
	by mail.nfschina.com (Postfix) with ESMTP id 047D91E80D56;
	Mon, 25 Apr 2022 19:33:34 +0800 (CST)
X-Virus-Scanned: amavisd-new at test.com
Received: from mail.nfschina.com ([127.0.0.1])
	by localhost (mail.nfschina.com [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fHsaOolkcdnu; Mon, 25 Apr 2022 19:33:31 +0800 (CST)
Received: from ubuntu.localdomain (unknown [101.228.255.56])
	(Authenticated sender: yuzhe@nfschina.com)
	by mail.nfschina.com (Postfix) with ESMTPA id C9AB71E80C99;
	Mon, 25 Apr 2022 19:33:30 +0800 (CST)
From: Yu Zhe <yuzhe@nfschina.com>
To: mareklindner@neomailbox.ch,
	sw@simonwunderlich.de,
	a@unstable.cc,
	sven@narfation.org,
	davem@davemloft.net,
	kuba@kernel.org,
	pabeni@redhat.com
Subject: [PATCH] batman-adv: remove unnecessary type castings
Date: Mon, 25 Apr 2022 04:36:35 -0700
Message-Id: <20220425113635.1609532-1-yuzhe@nfschina.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220421154829.9775-1-yuzhe@nfschina.com>
References: <20220421154829.9775-1-yuzhe@nfschina.com>
MIME-Version: 1.0
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1650886601; a=rsa-sha256;
	cv=none;
	b=S5PPe86MUft/AQLkX5MhzYWvGY3/zOJtYQzFMSY/taezRTqd7JLc65MB9P6RyqVCf5oVol
	5fXaqT8XIihfuLmFYWHfqDrFxEpczRZK0iMDvCJbHP+AAlfIzRQZZvED0P9fpHZbOpG109
	8qXqzhIy8sPVXidmu5cuwDs3aacRmak=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=none (diktynna.open-mesh.org: domain of yuzhe@nfschina.com has no SPF policy when checking 2400:dd01:100f:2:72e2:84ff:fe10:5f45) smtp.mailfrom=yuzhe@nfschina.com;
	dmarc=none
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1650886601;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=b5p3tGx9JgLeqNBMG7H7pMi/JdoY064Lxwr3rm8EscM=;
	b=Ow4UX2c81AhX4pOcr7iZmQ1QZ+caENuEt17fhoqsBF8738gpUq2IRTthjNTYsvwuW9dAFc
	z/57NrdtgFrqDh2svfGQ9EOcAshTCOGpbOA2hYe99GxBeSYqr+cYSq/lNXyEb7dgzk+4yq
	frVT0U4vrUc6ykdFTZbBRm4GPetq7mk=
Content-Transfer-Encoding: quoted-printable
X-MailFrom: yuzhe@nfschina.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
Message-ID-Hash: VI3UTGLAM5AL67DA4DYZLWLNIHDJGC56
X-Message-ID-Hash: VI3UTGLAM5AL67DA4DYZLWLNIHDJGC56
X-Mailman-Approved-At: Mon, 25 Apr 2022 12:46:03 +0200
CC: b.a.t.m.a.n@lists.open-mesh.org, netdev@vger.kernel.org, linux-kernel@vger.kernel.org, liqiong@nfschina.com, kernel-janitors@vger.kernel.org, Yu Zhe <yuzhe@nfschina.com>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/VI3UTGLAM5AL67DA4DYZLWLNIHDJGC56/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

remove unnecessary void* type castings.

Signed-off-by: Yu Zhe <yuzhe@nfschina.com>
---
 net/batman-adv/translation-table.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/net/batman-adv/translation-table.c b/net/batman-adv/translat=
ion-table.c
index 8478034d3abf..cbf96eebf05b 100644
--- a/net/batman-adv/translation-table.c
+++ b/net/batman-adv/translation-table.c
@@ -2766,7 +2766,7 @@ static void batadv_tt_tvlv_generate(struct batadv_p=
riv *bat_priv,
 	u32 i;
=20
 	tt_tot =3D batadv_tt_entries(tt_len);
-	tt_change =3D (struct batadv_tvlv_tt_change *)tvlv_buff;
+	tt_change =3D tvlv_buff;
=20
 	if (!valid_cb)
 		return;
@@ -3994,7 +3994,7 @@ static void batadv_tt_tvlv_ogm_handler_v1(struct ba=
tadv_priv *bat_priv,
 	if (tvlv_value_len < sizeof(*tt_data))
 		return;
=20
-	tt_data =3D (struct batadv_tvlv_tt_data *)tvlv_value;
+	tt_data =3D tvlv_value;
 	tvlv_value_len -=3D sizeof(*tt_data);
=20
 	num_vlan =3D ntohs(tt_data->num_vlan);
@@ -4037,7 +4037,7 @@ static int batadv_tt_tvlv_unicast_handler_v1(struct=
 batadv_priv *bat_priv,
 	if (tvlv_value_len < sizeof(*tt_data))
 		return NET_RX_SUCCESS;
=20
-	tt_data =3D (struct batadv_tvlv_tt_data *)tvlv_value;
+	tt_data =3D tvlv_value;
 	tvlv_value_len -=3D sizeof(*tt_data);
=20
 	tt_vlan_len =3D sizeof(struct batadv_tvlv_tt_vlan_data);
@@ -4129,7 +4129,7 @@ static int batadv_roam_tvlv_unicast_handler_v1(stru=
ct batadv_priv *bat_priv,
 		goto out;
=20
 	batadv_inc_counter(bat_priv, BATADV_CNT_TT_ROAM_ADV_RX);
-	roaming_adv =3D (struct batadv_tvlv_roam_adv *)tvlv_value;
+	roaming_adv =3D tvlv_value;
=20
 	batadv_dbg(BATADV_DBG_TT, bat_priv,
 		   "Received ROAMING_ADV from %pM (client %pM)\n",
--=20
2.25.1
