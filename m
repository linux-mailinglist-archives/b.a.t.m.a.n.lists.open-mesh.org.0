Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AEEF433C70
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 19 Oct 2021 18:36:03 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 65247824C3;
	Tue, 19 Oct 2021 18:36:02 +0200 (CEST)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 6E39280B51
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 19 Oct 2021 18:30:18 +0200 (CEST)
Received: by mail.kernel.org (Postfix) with ESMTPSA id E1C7F61378;
	Tue, 19 Oct 2021 16:30:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1634661017;
	bh=W9xghcCcnXhNXnZ7J7ltSKmGrsEAnWwQ67SW2rm/EEI=;
	h=From:To:Cc:Subject:Date:From;
	b=lIM1psAEMcappgOVHWuzewbwnQCkQBEdQrZvqrzo30YBCm1ve2D6Q8pRq9F3B/zwo
	 4ZTwoeMWXHHQpnZgaFsGPeTXVhk0TDTPI7sksWccLNQQ5e3rrPIZqoJexLvHq/CKGU
	 FtkNvonVh3DsjMxFGFIrD+UvtnZfL6ZmEb7fS131hUJlUpzrAIGQoi4ZzJNsLjQdjo
	 pUkSC73wMiXbo5mJRyyggdjx7Z4u/nYOTur3tAuLMub71EB7Z5Ijzcq6RiBd7N1EqA
	 qWP7cPYpKBPnXkakBCuMEN5BcvpEI5V9eJX49SbEllvhoIZ1X7/NNAFI4LVRYlEerg
	 m9u4FgOMUNd3w==
From: Jakub Kicinski <kuba@kernel.org>
To: netdev@vger.kernel.org
Subject: [PATCH] batman-adv: prepare for const netdev->dev_addr
Date: Tue, 19 Oct 2021 09:30:07 -0700
Message-Id: <20211019163007.1384352-1-kuba@kernel.org>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1634661018;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=tQQ4zKFudYR856/7HY/GnfOKGhdAwIfd7A9oYRQTros=;
	b=dMPG7LK9JI6VJLG22hw+DZffIJeJ9DyaaYf49KG8mLdQwZYONV6+3I2Ks2RdA0XX3n/mp3
	y8Q+o3cNy1lslgeKzDGTIt7hP9L5wfqt+5BeMYcXrl52BibHqHFMPjHYEwMuPjUw6BAf1t
	ccW8zSEqF8lziaFpNFkjUARzgQesqdg=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=lIM1psAE;
	dmarc=pass (policy=none) header.from=kernel.org;
	spf=pass (diktynna.open-mesh.org: domain of kuba@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=kuba@kernel.org
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1634661018; a=rsa-sha256;
	cv=none;
	b=FivYXo/+l/LTOtgjlPEm3M7HnpabDdpBlaPajm/W4QE+DpLMQlhY0iTPm/Sb6MIlRIzyKC
	NmHqmRBDAhNxkg9vzXeesJLr/D0iLeZm9Urn5dHFWAHgObPcD689PWrWuxOFMysinKd+dN
	T1VUlivlU6RA3VDYGpwF+LtGhGShpW4=
Content-Transfer-Encoding: quoted-printable
X-MailFrom: kuba@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
Message-ID-Hash: LT5ZXOKJ64XWDBJ5GYIEYL4M3SYNS24Z
X-Message-ID-Hash: LT5ZXOKJ64XWDBJ5GYIEYL4M3SYNS24Z
X-Mailman-Approved-At: Tue, 19 Oct 2021 16:35:59 +0200
CC: Jakub Kicinski <kuba@kernel.org>, mareklindner@neomailbox.ch, a@unstable.cc, b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/LT5ZXOKJ64XWDBJ5GYIEYL4M3SYNS24Z/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

netdev->dev_addr will be constant soon, make sure
the qualifier is propagated thru batman-adv.

Signed-off-by: Jakub Kicinski <kuba@kernel.org>
---
CC: mareklindner@neomailbox.ch
CC: sw@simonwunderlich.de
CC: a@unstable.cc
CC: sven@narfation.org
CC: b.a.t.m.a.n@lists.open-mesh.org
---
 net/batman-adv/bridge_loop_avoidance.c | 14 +++++++-------
 net/batman-adv/routing.c               |  3 ++-
 net/batman-adv/tp_meter.c              |  2 +-
 net/batman-adv/tvlv.c                  |  4 ++--
 net/batman-adv/tvlv.h                  |  4 ++--
 5 files changed, 14 insertions(+), 13 deletions(-)

diff --git a/net/batman-adv/bridge_loop_avoidance.c b/net/batman-adv/brid=
ge_loop_avoidance.c
index 1669744304c5..7242b32fff80 100644
--- a/net/batman-adv/bridge_loop_avoidance.c
+++ b/net/batman-adv/bridge_loop_avoidance.c
@@ -254,7 +254,7 @@ batadv_claim_hash_find(struct batadv_priv *bat_priv,
  * Return: backbone gateway if found or NULL otherwise
  */
 static struct batadv_bla_backbone_gw *
-batadv_backbone_hash_find(struct batadv_priv *bat_priv, u8 *addr,
+batadv_backbone_hash_find(struct batadv_priv *bat_priv, const u8 *addr,
 			  unsigned short vid)
 {
 	struct batadv_hashtable *hash =3D bat_priv->bla.backbone_hash;
@@ -336,7 +336,7 @@ batadv_bla_del_backbone_claims(struct batadv_bla_back=
bone_gw *backbone_gw)
  * @vid: the VLAN ID
  * @claimtype: the type of the claim (CLAIM, UNCLAIM, ANNOUNCE, ...)
  */
-static void batadv_bla_send_claim(struct batadv_priv *bat_priv, u8 *mac,
+static void batadv_bla_send_claim(struct batadv_priv *bat_priv, const u8=
 *mac,
 				  unsigned short vid, int claimtype)
 {
 	struct sk_buff *skb;
@@ -488,7 +488,7 @@ static void batadv_bla_loopdetect_report(struct work_=
struct *work)
  * Return: the (possibly created) backbone gateway or NULL on error
  */
 static struct batadv_bla_backbone_gw *
-batadv_bla_get_backbone_gw(struct batadv_priv *bat_priv, u8 *orig,
+batadv_bla_get_backbone_gw(struct batadv_priv *bat_priv, const u8 *orig,
 			   unsigned short vid, bool own_backbone)
 {
 	struct batadv_bla_backbone_gw *entry;
@@ -926,7 +926,7 @@ static bool batadv_handle_request(struct batadv_priv =
*bat_priv,
  */
 static bool batadv_handle_unclaim(struct batadv_priv *bat_priv,
 				  struct batadv_hard_iface *primary_if,
-				  u8 *backbone_addr, u8 *claim_addr,
+				  const u8 *backbone_addr, const u8 *claim_addr,
 				  unsigned short vid)
 {
 	struct batadv_bla_backbone_gw *backbone_gw;
@@ -964,7 +964,7 @@ static bool batadv_handle_unclaim(struct batadv_priv =
*bat_priv,
  */
 static bool batadv_handle_claim(struct batadv_priv *bat_priv,
 				struct batadv_hard_iface *primary_if,
-				u8 *backbone_addr, u8 *claim_addr,
+				const u8 *backbone_addr, const u8 *claim_addr,
 				unsigned short vid)
 {
 	struct batadv_bla_backbone_gw *backbone_gw;
@@ -2126,7 +2126,7 @@ batadv_bla_claim_dump_entry(struct sk_buff *msg, u3=
2 portid,
 			    struct batadv_hard_iface *primary_if,
 			    struct batadv_bla_claim *claim)
 {
-	u8 *primary_addr =3D primary_if->net_dev->dev_addr;
+	const u8 *primary_addr =3D primary_if->net_dev->dev_addr;
 	u16 backbone_crc;
 	bool is_own;
 	void *hdr;
@@ -2294,7 +2294,7 @@ batadv_bla_backbone_dump_entry(struct sk_buff *msg,=
 u32 portid,
 			       struct batadv_hard_iface *primary_if,
 			       struct batadv_bla_backbone_gw *backbone_gw)
 {
-	u8 *primary_addr =3D primary_if->net_dev->dev_addr;
+	const u8 *primary_addr =3D primary_if->net_dev->dev_addr;
 	u16 backbone_crc;
 	bool is_own;
 	int msecs;
diff --git a/net/batman-adv/routing.c b/net/batman-adv/routing.c
index 970d0d7ccc98..83f31494ea4d 100644
--- a/net/batman-adv/routing.c
+++ b/net/batman-adv/routing.c
@@ -747,7 +747,8 @@ batadv_reroute_unicast_packet(struct batadv_priv *bat=
_priv, struct sk_buff *skb,
 	struct batadv_orig_node *orig_node =3D NULL;
 	struct batadv_hard_iface *primary_if =3D NULL;
 	bool ret =3D false;
-	u8 *orig_addr, orig_ttvn;
+	const u8 *orig_addr;
+	u8 orig_ttvn;
=20
 	if (batadv_is_my_client(bat_priv, dst_addr, vid)) {
 		primary_if =3D batadv_primary_if_get_selected(bat_priv);
diff --git a/net/batman-adv/tp_meter.c b/net/batman-adv/tp_meter.c
index 56b9fe97b3b4..fbcb15c7c29b 100644
--- a/net/batman-adv/tp_meter.c
+++ b/net/batman-adv/tp_meter.c
@@ -631,9 +631,9 @@ static void batadv_tp_recv_ack(struct batadv_priv *ba=
t_priv,
 	struct batadv_orig_node *orig_node =3D NULL;
 	const struct batadv_icmp_tp_packet *icmp;
 	struct batadv_tp_vars *tp_vars;
+	const unsigned char *dev_addr;
 	size_t packet_len, mss;
 	u32 rtt, recv_ack, cwnd;
-	unsigned char *dev_addr;
=20
 	packet_len =3D BATADV_TP_PLEN;
 	mss =3D BATADV_TP_PLEN;
diff --git a/net/batman-adv/tvlv.c b/net/batman-adv/tvlv.c
index 992773376e51..0cb58eb04093 100644
--- a/net/batman-adv/tvlv.c
+++ b/net/batman-adv/tvlv.c
@@ -587,8 +587,8 @@ void batadv_tvlv_handler_unregister(struct batadv_pri=
v *bat_priv,
  * @tvlv_value: tvlv content
  * @tvlv_value_len: tvlv content length
  */
-void batadv_tvlv_unicast_send(struct batadv_priv *bat_priv, u8 *src,
-			      u8 *dst, u8 type, u8 version,
+void batadv_tvlv_unicast_send(struct batadv_priv *bat_priv, const u8 *sr=
c,
+			      const u8 *dst, u8 type, u8 version,
 			      void *tvlv_value, u16 tvlv_value_len)
 {
 	struct batadv_unicast_tvlv_packet *unicast_tvlv_packet;
diff --git a/net/batman-adv/tvlv.h b/net/batman-adv/tvlv.h
index 54f2a35653d0..4cf8af00fc11 100644
--- a/net/batman-adv/tvlv.h
+++ b/net/batman-adv/tvlv.h
@@ -42,8 +42,8 @@ int batadv_tvlv_containers_process(struct batadv_priv *=
bat_priv,
 				   struct batadv_orig_node *orig_node,
 				   u8 *src, u8 *dst,
 				   void *tvlv_buff, u16 tvlv_buff_len);
-void batadv_tvlv_unicast_send(struct batadv_priv *bat_priv, u8 *src,
-			      u8 *dst, u8 type, u8 version,
+void batadv_tvlv_unicast_send(struct batadv_priv *bat_priv, const u8 *sr=
c,
+			      const u8 *dst, u8 type, u8 version,
 			      void *tvlv_value, u16 tvlv_value_len);
=20
 #endif /* _NET_BATMAN_ADV_TVLV_H_ */
--=20
2.31.1
