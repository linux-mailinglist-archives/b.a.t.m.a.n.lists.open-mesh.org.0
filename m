Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D0321FAE20
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 16 Jun 2020 12:39:26 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id AF04C8147C;
	Tue, 16 Jun 2020 12:39:22 +0200 (CEST)
Received: from mail.aperture-lab.de (mail.aperture-lab.de [IPv6:2a01:4f8:171:314c::100:a1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id B4C02801FD
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 16 Jun 2020 12:39:19 +0200 (CEST)
From: =?UTF-8?q?Linus=20L=C3=BCssing?= <linus.luessing@c0d3.blue>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c0d3.blue; s=2018;
	t=1592303959;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=gel7BjFKnhibDSBwAtXS9lDNy0OHZ7c5Iy85ixq8zBc=;
	b=ewyJOnq84savi/Z5acfUpM79egKM69KqvWdyMLHGM6Nx+fTPZnCvOQ3uDGyY8bcxnHYbxW
	ATYAR7eKlf7cD9jvBTlDe3dIziPPxFruWE2nO9Z5OW1ec+gxQpDDFCOkeVA0P+21l1uJmY
	pJJIOe//hjTSuMpm2Mg1lI5Mll1SQmpwzDJn9vUlbuoxcEsX//OBwj8dqw6KQdcZtoIiUg
	Qpd0qP+ORUiP0V4gVwzluhlEVFfRVTEx4VSZDabK0HO9B+/dgmkl+R6PTuAxs26gncE0pQ
	quDBCRwgfLC2O0/nZCL0VUZB+/3mgnlLsxGJ2c+c7aD6o4N9TVJsESW4qTQZCw==
To: Johannes Berg <johannes@sipsolutions.net>
Subject: [PATCH v2] iw: mesh: add mesh_param "mesh_nolearn" to skip path discovery
Date: Tue, 16 Jun 2020 12:39:11 +0200
Message-Id: <20200616103911.20501-2-linus.luessing@c0d3.blue>
In-Reply-To: <20200616103911.20501-1-linus.luessing@c0d3.blue>
References: <20200616103911.20501-1-linus.luessing@c0d3.blue>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=linus.luessing@c0d3.blue smtp.mailfrom=linus.luessing@c0d3.blue
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1592303959;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=gel7BjFKnhibDSBwAtXS9lDNy0OHZ7c5Iy85ixq8zBc=;
	b=iREyap6rOliZMQKqauEVQzGmLoC1Q5RuKnqbQjfzltauzv4gRZFbGEwnI0WnhcQ+q/lEIR
	OXttkysiuIJXS+e3t5JCpVmgrsOhF2Zf9sf6loXev1EEnWKZ6oZ9JEslBO+he7JbNuT/gD
	9joYM46sROrM1uuVQbEhSFHoZjAdCr4=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1592303959; a=rsa-sha256;
	cv=none;
	b=AALz4wa/4mb91kMpOdzLtcMllfSu7ObCNeyWoX/xgvKAQtxpkS+BUxh1Hn8K3SODrE1v2C
	1TX6r8J856VUFOVG6kYPuMtDmyshU1yXuKnjymerViVKiwcjRF7i+YzJW52eGUrIIex9ze
	hx9bJsYZSz0suhFgHL9ecJl6lEMg3YY=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none (invalid DKIM record) header.d=c0d3.blue header.s=2018 header.b=ewyJOnq8;
	spf=none (diktynna.open-mesh.org: domain of linus.luessing@c0d3.blue has no SPF policy when checking 2a01:4f8:171:314c::100:a1) smtp.mailfrom=linus.luessing@c0d3.blue
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: NX4CCFMBUYNCAZFMOLJPSTMTM6WUOIIH
X-Message-ID-Hash: NX4CCFMBUYNCAZFMOLJPSTMTM6WUOIIH
X-MailFrom: linus.luessing@c0d3.blue
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: linux-wireless@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org, =?UTF-8?q?Linus=20L=C3=BCssing?= <ll@simonwunderlich.de>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/NX4CCFMBUYNCAZFMOLJPSTMTM6WUOIIH/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

From: Linus L=C3=BCssing <ll@simonwunderlich.de>

Currently, before being able to forward a packet between two 802.11s
nodes, both a PLINK handshake is performed upon receiving a beacon and
then later a PREQ/PREP exchange for path discovery is performed on
demand upon receiving a data frame to forward.

When running a mesh protocol on top of an 802.11s interface, like
batman-adv, we do not need the multi-hop mesh routing capabilities of
802.11s and usually set mesh_fwding=3D0. However, even with mesh_fwding=3D=
0
the PREQ/PREP path discovery is still performed on demand. Even though
in this scenario the next hop PREQ/PREP will determine is always the
direct 11s neighbor node.

The new mesh_nolearn parameter allows to skip the PREQ/PREP exchange in
this scenario, leading to a reduced delay, reduced packet buffering and
simplifies HWMP in general.

mesh_nolearn is still rather conservative in that if the packet destinati=
on
is not a direct 11s neighbor, it will fall back to PREQ/PREP path
discovery.

For normal, multi-hop 802.11s mesh routing it is usually not advisable
to enable mesh_nolearn as a transmission to a direct but distant neighbor
might be worse than reaching that same node via a more robust /
higher throughput etc. multi-hop path.

Cc: Sven Eckelmann <sven@narfation.org>
Cc: Simon Wunderlich <sw@simonwunderlich.de>
Signed-off-by: Linus L=C3=BCssing <ll@simonwunderlich.de>
---

Changelog v2:
* unchanged

 mesh.c    | 2 ++
 nl80211.h | 7 +++++++
 2 files changed, 9 insertions(+)

diff --git a/mesh.c b/mesh.c
index 0650d0c..48bbc3f 100644
--- a/mesh.c
+++ b/mesh.c
@@ -264,6 +264,8 @@ static const struct mesh_param_descr _mesh_param_desc=
rs[] =3D
 	_my_nla_put_u16, _parse_u16, _print_u16_in_TUs},
 	{"mesh_plink_timeout", NL80211_MESHCONF_PLINK_TIMEOUT,
 	_my_nla_put_u32, _parse_u32, _print_u32_in_seconds},
+	{"mesh_nolearn", NL80211_MESHCONF_NOLEARN,
+	_my_nla_put_u8, _parse_u8_as_bool, _print_u8},
 };
=20
 static void print_all_mesh_param_descr(void)
diff --git a/nl80211.h b/nl80211.h
index c14666b..4c55e89 100644
--- a/nl80211.h
+++ b/nl80211.h
@@ -4228,6 +4228,12 @@ enum nl80211_mesh_power_mode {
  *	field.  If left unset then the mesh formation field will only
  *	advertise such if there is an active root mesh path.
  *
+ * @NL80211_MESHCONF_NOLEARN: Try to avoid multi-hop path discovery (e.g=
.
+ *	PREQ/PREP for HWMP) if the destination is a direct neighbor. Note tha=
t
+ *	this might not be the optimal decision as a multi-hop route might be
+ *	better. So if using this setting you will likely also want to disable
+ *	dot11MeshForwarding and use another mesh routing protocol on top.
+ *
  * @__NL80211_MESHCONF_ATTR_AFTER_LAST: internal use
  */
 enum nl80211_meshconf_params {
@@ -4261,6 +4267,7 @@ enum nl80211_meshconf_params {
 	NL80211_MESHCONF_AWAKE_WINDOW,
 	NL80211_MESHCONF_PLINK_TIMEOUT,
 	NL80211_MESHCONF_CONNECTED_TO_GATE,
+	NL80211_MESHCONF_NOLEARN,
=20
 	/* keep last */
 	__NL80211_MESHCONF_ATTR_AFTER_LAST,
--=20
2.27.0
