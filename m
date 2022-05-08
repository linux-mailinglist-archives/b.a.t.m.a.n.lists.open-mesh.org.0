Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F4F451EDC7
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun,  8 May 2022 15:26:28 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 79ECB82EFF;
	Sun,  8 May 2022 15:26:23 +0200 (CEST)
Received: from simonwunderlich.de (simonwunderlich.de [23.88.38.48])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 473A581243
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun,  8 May 2022 15:26:18 +0200 (CEST)
Received: from kero.packetmixer.de (p200300fa271a310000945Df34724C077.dip0.t-ipconnect.de [IPv6:2003:fa:271a:3100:94:5df3:4724:c077])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by simonwunderlich.de (Postfix) with ESMTPSA id 1B030FA201;
	Sun,  8 May 2022 15:26:18 +0200 (CEST)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: kuba@kernel.org,
	davem@davemloft.net
Subject: [PATCH 2/2] batman-adv: remove unnecessary type castings
Date: Sun,  8 May 2022 15:26:16 +0200
Message-Id: <20220508132616.21232-3-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220508132616.21232-1-sw@simonwunderlich.de>
References: <20220508132616.21232-1-sw@simonwunderlich.de>
MIME-Version: 1.0
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1652016378; a=rsa-sha256;
	cv=none;
	b=LqpV9ndSykzthQpDuR73sAso5SsUothrZK3Gio6zaLmE5XZucDan93GM5gqztmoQ0C0H+y
	A7WsiEMCfp7AQMmCO8NNiVjFaOBum3JRuSFZZAE/ZXZOAtQAWA75fjX+tlZjCRCeaIEBF1
	unKX9q0N2AMyHcPXp2Sq5GqybPXbzIM=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates 23.88.38.48 as permitted sender) smtp.mailfrom=sw@simonwunderlich.de;
	dmarc=none
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1652016378;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Ky+G/Pm3X5hSOEnnbv4NL7F0E05JZrZ74xFVUzcSEFE=;
	b=EQdW2QmDC2KhwymGa9RJHzzeN2JbNsWnkaEeFvjb2Lk9ab2Ll5fZvzYCuCDIreJ2OMDZiF
	3b2sFYtHATDNwCeD8VUpixcPY00ukComBQLKbwapAFnpyiBLOlm1476aDBglM0EwKBbn4t
	7Mtul9SrWRi8rWElDLMUP+LE3wcrB74=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: RDEDOXWTCDOSNMWGZZKGBVXFKV3NAK6J
X-Message-ID-Hash: RDEDOXWTCDOSNMWGZZKGBVXFKV3NAK6J
X-MailFrom: sw@simonwunderlich.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org, Yu Zhe <yuzhe@nfschina.com>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/RDEDOXWTCDOSNMWGZZKGBVXFKV3NAK6J/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

From: Yu Zhe <yuzhe@nfschina.com>

remove unnecessary void* type castings.

Signed-off-by: Yu Zhe <yuzhe@nfschina.com>
[sven@narfation.org: Fix missing const in batadv_choose* functions]
Signed-off-by: Sven Eckelmann <sven@narfation.org>
Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
---
 net/batman-adv/bridge_loop_avoidance.c |  4 ++--
 net/batman-adv/translation-table.c     | 12 ++++++------
 2 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/net/batman-adv/bridge_loop_avoidance.c b/net/batman-adv/brid=
ge_loop_avoidance.c
index 7f8a14d99cdb..37ce6cfb3520 100644
--- a/net/batman-adv/bridge_loop_avoidance.c
+++ b/net/batman-adv/bridge_loop_avoidance.c
@@ -65,7 +65,7 @@ batadv_bla_send_announce(struct batadv_priv *bat_priv,
  */
 static inline u32 batadv_choose_claim(const void *data, u32 size)
 {
-	struct batadv_bla_claim *claim =3D (struct batadv_bla_claim *)data;
+	const struct batadv_bla_claim *claim =3D data;
 	u32 hash =3D 0;
=20
 	hash =3D jhash(&claim->addr, sizeof(claim->addr), hash);
@@ -86,7 +86,7 @@ static inline u32 batadv_choose_backbone_gw(const void =
*data, u32 size)
 	const struct batadv_bla_backbone_gw *gw;
 	u32 hash =3D 0;
=20
-	gw =3D (struct batadv_bla_backbone_gw *)data;
+	gw =3D data;
 	hash =3D jhash(&gw->orig, sizeof(gw->orig), hash);
 	hash =3D jhash(&gw->vid, sizeof(gw->vid), hash);
=20
diff --git a/net/batman-adv/translation-table.c b/net/batman-adv/translat=
ion-table.c
index 8478034d3abf..01d30c1e412c 100644
--- a/net/batman-adv/translation-table.c
+++ b/net/batman-adv/translation-table.c
@@ -103,10 +103,10 @@ static bool batadv_compare_tt(const struct hlist_no=
de *node, const void *data2)
  */
 static inline u32 batadv_choose_tt(const void *data, u32 size)
 {
-	struct batadv_tt_common_entry *tt;
+	const struct batadv_tt_common_entry *tt;
 	u32 hash =3D 0;
=20
-	tt =3D (struct batadv_tt_common_entry *)data;
+	tt =3D data;
 	hash =3D jhash(&tt->addr, ETH_ALEN, hash);
 	hash =3D jhash(&tt->vid, sizeof(tt->vid), hash);
=20
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
2.30.2
