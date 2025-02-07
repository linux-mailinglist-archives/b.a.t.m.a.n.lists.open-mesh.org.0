Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id F33BCA2C01E
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri,  7 Feb 2025 11:02:31 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id C44D284462
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri,  7 Feb 2025 11:02:31 +0100 (CET)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1738922551;
 b=BEsRt610fuzwgN2SpNJuJiI+yttTuJS0wIP7JtiUg5g6mAeMylwvTYQSoaAjgXSUZj8lL
 cP2gcLFO3FPdkhB5VbU6w3jiRJF7OSEEvKI8bWn+36koyW69/qVhJLDVmlKpG8jfm9dWhYi
 MnxGOTaG42FmAAJD2iXTzUW5muDkPUo=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1738922551; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=mRQB9HoHz/JRUfSoDu4yp1QZYxY24go8AF79U/pOkBc=;
 b=i0Z/1SefnWi7fUvf74poppHWIgo3D0XXidDJ2NskbbS3wcnsI4C76ZVgW7qUVke3JqhE6
 r9hHEW40Ir4O/3Z8Qg9kM+AC2reVUtVsLyzL84pJFwiGpn2fV5CVECw3hot4LvTA3h5CIo6
 wYRMob2g4EWVKh1Dqr1z9iyRVbMpWvY=
ARC-Authentication-Results: i=2; open-mesh.org; dkim=fail;
  arc=pass;
  dmarc=fail (Used From Domain Record) header.from=simonwunderlich.de
 policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=fail; arc=pass;
 dmarc=fail (Used From Domain Record) header.from=simonwunderlich.de
 policy.dmarc=none
Received: from mail.simonwunderlich.de (mail.simonwunderlich.de
 [IPv6:2a01:4f8:c17:e8c0::1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 0C72C83E3D
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri,  7 Feb 2025 10:58:33 +0100 (CET)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1738922313;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=mRQB9HoHz/JRUfSoDu4yp1QZYxY24go8AF79U/pOkBc=;
	b=A8YnD3rsnnWiiAKpt4OyrnIVwgBKVu9xomyl7uRR9/WmLiHGXNNBICJC9nNRS6xq2f0X2h
	ourr2ircxHMmD1Q0MTOlRQxqjhi+ja3HM+MxapnfJ+POREukohKmgNv64nbDrolmk2RCk0
	z8ApUJ2cc6sdJx5tCuhH+6uj8Gx7NBE=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates
 2a01:4f8:c17:e8c0::1 as permitted sender)
 smtp.mailfrom=sw@simonwunderlich.de;
	dmarc=pass (policy=none) header.from=simonwunderlich.de
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1738922313; a=rsa-sha256;
	cv=none;
	b=DfRrPfike6Nz8wYjoiSJzPspGzT/WbjTle2c6Z2plSRg25mXsqVObe2dJbh7Hi+NK7DS+d
	Ly5IzBBUejq3aJVx0oyFP8YAlpQqZ5fMbfE5mW4DHePLX1sP9aCMsoYh2sNpMYLClH/UbX
	MHkCpE7nd9HzPNQfQfWwOSwjMmwnr3k=
Received: from kero.packetmixer.de
 (p200300c59725EfD8c202009b11B64500.dip0.t-ipconnect.de
 [IPv6:2003:c5:9725:efd8:c202:9b:11b6:4500])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits)
 server-digest SHA256)
	(No client certificate requested)
	by mail.simonwunderlich.de (Postfix) with ESMTPSA id 87E4CFA365;
	Fri,  7 Feb 2025 10:58:32 +0100 (CET)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: davem@davemloft.net,
	kuba@kernel.org
Cc: netdev@vger.kernel.org,
	b.a.t.m.a.n@lists.open-mesh.org,
	Remi Pommarel <repk@triplefau.lt>,
	stable@vger.kernel.org,
	Sven Eckelmann <sven@narfation.org>,
	Simon Wunderlich <sw@simonwunderlich.de>
Subject: [PATCH 4/4] batman-adv: Fix incorrect offset in
 batadv_tt_tvlv_ogm_handler_v1()
Date: Fri,  7 Feb 2025 10:58:23 +0100
Message-Id: <20250207095823.26043-5-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250207095823.26043-1-sw@simonwunderlich.de>
References: <20250207095823.26043-1-sw@simonwunderlich.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Message-ID-Hash: 6NO3GG35YZYFSMVW4W7YYM3CB6BIWS5Z
X-Message-ID-Hash: 6NO3GG35YZYFSMVW4W7YYM3CB6BIWS5Z
X-MailFrom: sw@simonwunderlich.de
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/6NO3GG35YZYFSMVW4W7YYM3CB6BIWS5Z/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

From: Remi Pommarel <repk@triplefau.lt>

Since commit 4436df478860 ("batman-adv: Add flex array to struct
batadv_tvlv_tt_data"), the introduction of batadv_tvlv_tt_data's flex
array member in batadv_tt_tvlv_ogm_handler_v1() put tt_changes at
invalid offset. Those TT changes are supposed to be filled from the end
of batadv_tvlv_tt_data structure (including vlan_data flexible array),
but only the flex array size is taken into account missing completely
the size of the fixed part of the structure itself.

Fix the tt_change offset computation by using struct_size() instead of
flex_array_size() so both flex array member and its container structure
sizes are taken into account.

Cc: stable@vger.kernel.org
Fixes: 4436df478860 ("batman-adv: Add flex array to struct batadv_tvlv_tt_data")
Signed-off-by: Remi Pommarel <repk@triplefau.lt>
Signed-off-by: Sven Eckelmann <sven@narfation.org>
Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
---
 net/batman-adv/translation-table.c | 12 +++++-------
 1 file changed, 5 insertions(+), 7 deletions(-)

diff --git a/net/batman-adv/translation-table.c b/net/batman-adv/translation-table.c
index 760d51fdbdf6..7d5de4cbb814 100644
--- a/net/batman-adv/translation-table.c
+++ b/net/batman-adv/translation-table.c
@@ -3959,23 +3959,21 @@ static void batadv_tt_tvlv_ogm_handler_v1(struct batadv_priv *bat_priv,
 	struct batadv_tvlv_tt_change *tt_change;
 	struct batadv_tvlv_tt_data *tt_data;
 	u16 num_entries, num_vlan;
-	size_t flex_size;
+	size_t tt_data_sz;
 
 	if (tvlv_value_len < sizeof(*tt_data))
 		return;
 
 	tt_data = tvlv_value;
-	tvlv_value_len -= sizeof(*tt_data);
-
 	num_vlan = ntohs(tt_data->num_vlan);
 
-	flex_size = flex_array_size(tt_data, vlan_data, num_vlan);
-	if (tvlv_value_len < flex_size)
+	tt_data_sz = struct_size(tt_data, vlan_data, num_vlan);
+	if (tvlv_value_len < tt_data_sz)
 		return;
 
 	tt_change = (struct batadv_tvlv_tt_change *)((void *)tt_data
-						     + flex_size);
-	tvlv_value_len -= flex_size;
+						     + tt_data_sz);
+	tvlv_value_len -= tt_data_sz;
 
 	num_entries = batadv_tt_entries(tvlv_value_len);
 
-- 
2.39.5

