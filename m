Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 552FFA24EDA
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun,  2 Feb 2025 17:05:44 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 2F56584286
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun,  2 Feb 2025 17:05:44 +0100 (CET)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1738512344;
 b=TUXO0VAEakBjBNnfuC+bAIQFF6lVmVaJgGzlU4lA4UuQYAKpgd0CglAmlXVCU7VSqsjfM
 h1VcxgXaBhLxmnGUh/amBP3VSZl6GQhfVvp79F1s/BGBl7cce4Yb2D5gRI001K7Vk+TzyYA
 R+tG/lads2X9+t8aE3FWkgo9gWj1oZ0=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1738512344; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=YgrCSDq6DZm6daeGa1Q4Mww4WCOanWsZvajvGBlHH+U=;
 b=LqBipD/oWAo4W8y5WOGvHm2ouNkjMpSZhqmfwUn0XJBzbdvWHUzqOvttwUJtyVLcjXLw6
 N0pmCkjEoIl6uSgcz0jq5SUBzFZwWXro6deA/F2E7YUHPEODpXSh5o3yRyW+gMvGXL4XHkL
 2Qpzp8qPJFaOePbzFmJRKXTDmv790lM=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
  arc=pass;
  dmarc=pass (Used From Domain Record) header.from=narfation.org
 policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass (Used From Domain Record) header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id C0A9F83B28
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun,  2 Feb 2025 17:04:22 +0100 (CET)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1738512262;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=YgrCSDq6DZm6daeGa1Q4Mww4WCOanWsZvajvGBlHH+U=;
	b=dXV+udVurcOP6ZN5C8BFwm0Oko1vWFxq7kB+qEPyoUFf3Zn1/JBOtHqudT4WoDkyuJiYph
	s46DYO0qUYWiyv4biU/93VXairwN8pKq3MKLr2Gg0a3YZX+XRVK2uPxR3rLDPCsfPrDeJh
	hU5izS/q5FHgydmtMeLpZbTnw/yGkSE=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=bo3WMoLS;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1738512262; a=rsa-sha256;
	cv=none;
	b=WCji+dQOn3uHS2fvZLj4VhHT3kh+o5H+YTEgGIaRx4LC85bwC5vR55vbXWAqv42+ChJs+8
	AK2iLtA2OYjYg7Z8ANMRkodZBLKO0ax5AJQeSEjFy2Sb7meJKNA4FrrzfKvlnf3VUU6TF/
	mybA+3gzvWtL0tTga1e1w7lYJ7MA/5E=
Received: from sven-desktop.home.narfation.org (unknown
 [IPv6:2a00:1ca0:1d86:2efc::ab85])
	by dvalin.narfation.org (Postfix) with UTF8SMTPSA id 499561FFC7;
	Sun,  2 Feb 2025 16:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1738512262;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=YgrCSDq6DZm6daeGa1Q4Mww4WCOanWsZvajvGBlHH+U=;
	b=bo3WMoLSXxd9puv7gWs4G7dgYjYsLMah1/0JiRdeeLk0osmsA1DX/RukRCKag65E9/+iZx
	GcmGkpaVHNhnXDbrMm0hlc0gCkjhGlOm/0W4VbEaBWEyKoZ220Lce0HWqr+b9hbilp0+JB
	Q7KWIEC2vYRJoE0/RLieKhXnDGllDR8=
From: Sven Eckelmann <sven@narfation.org>
Date: Sun, 02 Feb 2025 17:04:10 +0100
Subject: [PATCH 1/5] batman-adv: Limit number of aggregated packets
 directly
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250202-bitmap_aggregation-v1-1-6542a10e6fad@narfation.org>
References: <20250202-bitmap_aggregation-v1-0-6542a10e6fad@narfation.org>
In-Reply-To: <20250202-bitmap_aggregation-v1-0-6542a10e6fad@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2089; i=sven@narfation.org;
 h=from:subject:message-id; bh=Mo384W5TkszZ/UWxNIgfx4vWspdZg814mLFDWVOqBNI=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDOnzp1c/+Or3aML0afbyl8q0nvNbm7lYn59cHFkbm/96V
 dU+JWGzjlIWBjEuBlkxRZY9V/LPb2Z/K/952sejMHNYmUCGMHBxCsBEyr8zMnwU/vqsdvPmrBjf
 BbV+7bXGGy0W/fd+ID+zc6qw3CrFi+2MDO/jessDFI8+CDw++elKp+N/+Y5dDNh87suUH8yf7ln
 5BnAAAA==
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: MPNM3LVAA2RBHCGDBP2UZ5LE4WNCWSRS
X-Message-ID-Hash: MPNM3LVAA2RBHCGDBP2UZ5LE4WNCWSRS
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency;
 loop; banned-address; member-moderation;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-0;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-1;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-2; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.8
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/MPNM3LVAA2RBHCGDBP2UZ5LE4WNCWSRS/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

The currently selected size in BATADV_MAX_AGGREGATION_BYTES (512) is chosen
such that the number of possible aggregated packets is lower than 32. This
number must be limited so that the type of
batadv_forw_packet->direct_link_flags has enough bits to represent each
packet (with the size of at least 24 bytes).

This requirement is better implemented in code instead of having it inside
a comment.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 net/batman-adv/bat_iv_ogm.c | 4 ++++
 net/batman-adv/main.h       | 3 ---
 2 files changed, 4 insertions(+), 3 deletions(-)

diff --git a/net/batman-adv/bat_iv_ogm.c b/net/batman-adv/bat_iv_ogm.c
index 07ae5dd1f150b062e97897b269d45b041e8b4dfe..b316cfc5b8769928a77ac936e5935ae780d5ad68 100644
--- a/net/batman-adv/bat_iv_ogm.c
+++ b/net/batman-adv/bat_iv_ogm.c
@@ -446,6 +446,7 @@ batadv_iv_ogm_can_aggregate(const struct batadv_ogm_packet *new_bat_ogm_packet,
 	struct batadv_ogm_packet *batadv_ogm_packet;
 	int aggregated_bytes = forw_packet->packet_len + packet_len;
 	struct batadv_hard_iface *primary_if = NULL;
+	u8 packet_num = forw_packet->num_packets + 1;
 	bool res = false;
 	unsigned long aggregation_end_time;
 
@@ -468,6 +469,9 @@ batadv_iv_ogm_can_aggregate(const struct batadv_ogm_packet *new_bat_ogm_packet,
 	if (aggregated_bytes > BATADV_MAX_AGGREGATION_BYTES)
 		return false;
 
+	if (packet_num >= BITS_PER_TYPE(forw_packet->direct_link_flags))
+		return false;
+
 	/* packet is not leaving on the same interface. */
 	if (forw_packet->if_outgoing != if_outgoing)
 		return false;
diff --git a/net/batman-adv/main.h b/net/batman-adv/main.h
index 964f3088af5b52d3ad1d709fb964dc2c3d79d7a5..485e68a06835b48923278da7b9aa79db6968945f 100644
--- a/net/batman-adv/main.h
+++ b/net/batman-adv/main.h
@@ -102,9 +102,6 @@
  */
 #define BATADV_TQ_SIMILARITY_THRESHOLD 50
 
-/* should not be bigger than 512 bytes or change the size of
- * forw_packet->direct_link_flags
- */
 #define BATADV_MAX_AGGREGATION_BYTES 512
 #define BATADV_MAX_AGGREGATION_MS 100
 

-- 
2.47.2

