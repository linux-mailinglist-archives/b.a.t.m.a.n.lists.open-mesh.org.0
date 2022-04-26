Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 323EE50FC84
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 26 Apr 2022 14:08:41 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 04B7583BF6;
	Tue, 26 Apr 2022 14:08:37 +0200 (CEST)
Received: from mail.nfschina.com (unknown [IPv6:2400:dd01:100f:2:72e2:84ff:fe10:5f45])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 12A3580C4B
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 26 Apr 2022 12:29:37 +0200 (CEST)
Received: from localhost (unknown [127.0.0.1])
	by mail.nfschina.com (Postfix) with ESMTP id 9A2431E80D56;
	Tue, 26 Apr 2022 18:26:22 +0800 (CST)
X-Virus-Scanned: amavisd-new at test.com
Received: from mail.nfschina.com ([127.0.0.1])
	by localhost (mail.nfschina.com [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ov-cdY0XkzzQ; Tue, 26 Apr 2022 18:26:19 +0800 (CST)
Received: from ubuntu.localdomain (unknown [101.228.255.56])
	(Authenticated sender: yuzhe@nfschina.com)
	by mail.nfschina.com (Postfix) with ESMTPA id 1FB091E80CE6;
	Tue, 26 Apr 2022 18:26:19 +0800 (CST)
From: Yu Zhe <yuzhe@nfschina.com>
To: mareklindner@neomailbox.ch,
	sw@simonwunderlich.de,
	a@unstable.cc,
	sven@narfation.org,
	davem@davemloft.net,
	kuba@kernel.org,
	pabeni@redhat.com
Subject: [PATCH v2] batman-adv: remove unnecessary type castings
Date: Tue, 26 Apr 2022 03:29:31 -0700
Message-Id: <20220426102932.1613820-1-yuzhe@nfschina.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220425113635.1609532-1-yuzhe@nfschina.com>
References: <20220425113635.1609532-1-yuzhe@nfschina.com>
MIME-Version: 1.0
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1650968979; a=rsa-sha256;
	cv=none;
	b=3z3MfJZGna59Xxxzf3MdJazlmkroPVMEK/8ti+jw7+4BPgHH/FizYNA3Wtrxenbc5W8qgl
	e/+aDkXQ+1Yw4lvD+RsFbLA7cXCzpvfudoLnpabJulFrou9sqdyxomz6voYKaKegUBtefa
	+QcQc8s+WEfTZKn3N6bcddcrv/4nfx0=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=none (diktynna.open-mesh.org: domain of yuzhe@nfschina.com has no SPF policy when checking 2400:dd01:100f:2:72e2:84ff:fe10:5f45) smtp.mailfrom=yuzhe@nfschina.com;
	dmarc=none
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1650968979;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=HSccJ9JXgL5akf+/n+41xWhAAjgbxrgBv+0tHAxuZYU=;
	b=fPqJI7J66aD0srYLh9AxInqi2Py9IJHBIZxgTMrXBqpM/+dl/fAe0NixE310O7xW6/VBRe
	OrRxDTzqyPtjTm+88iQLquPCOkvUGixKVkuZqmTgF9rexA1q3rSzbhdBVSpkV2T/ZjE/tD
	Pg+kUxgqCMeprhJWNORl7eSbvbKMyS0=
Content-Transfer-Encoding: quoted-printable
X-MailFrom: yuzhe@nfschina.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
Message-ID-Hash: BB5EHBBK4B77QQYW7QLIXGUKSDEO5K25
X-Message-ID-Hash: BB5EHBBK4B77QQYW7QLIXGUKSDEO5K25
X-Mailman-Approved-At: Tue, 26 Apr 2022 12:08:32 +0200
CC: b.a.t.m.a.n@lists.open-mesh.org, netdev@vger.kernel.org, linux-kernel@vger.kernel.org, liqiong@nfschina.com, kernel-janitors@vger.kernel.org, hukun@nfschina.com, Yu Zhe <yuzhe@nfschina.com>, kernel test robot <lkp@intel.com>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/BB5EHBBK4B77QQYW7QLIXGUKSDEO5K25/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Signed-off-by: Yu Zhe <yuzhe@nfschina.com>
[sven@narfation.org: Fix missing const in batadv_choose* functions]
Signed-off-by: Sven Eckelmann <sven@narfation.org>
Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
Reported-by: kernel test robot <lkp@intel.com>

---
v2:
- fix discarding 'const' qualifier from pointer target type
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
2.25.1
