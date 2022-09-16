Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 769C75BB0F4
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 16 Sep 2022 18:15:09 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 7C25D816B0;
	Fri, 16 Sep 2022 18:15:06 +0200 (CEST)
Received: from simonwunderlich.de (simonwunderlich.de [IPv6:2a01:4f8:c17:e8c0::1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id BB15D802ED
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 16 Sep 2022 18:15:02 +0200 (CEST)
Received: from kero.packetmixer.de (p200300c5973C57D0711F6270F7f2cD25.dip0.t-ipconnect.de [IPv6:2003:c5:973c:57d0:711f:6270:f7f2:cd25])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by simonwunderlich.de (Postfix) with ESMTPSA id 84F65FA2A4;
	Fri, 16 Sep 2022 18:15:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=simonwunderlich.de;
	s=09092022; t=1663344902; h=from:from:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=YuaSs/a1YgtPIPV6n1vLY2PrA5VcxVcfR87EgRqxVlE=;
	b=F3bZR1Tp62kN5GBRXxXmLtIF3nTzZ4PBYOEvFt5TkOP7rdbMOelI+mDIkvooRvCaZAn3IR
	v4oJdm7FWEQHVIMuivLjI7SHoewSc34lpods/rVQ/QctLwOLK19oRMo4c+cLKxWg5y1xaA
	3G4BGSaTO6EbskbEuCSknKzZ1bOJP73bRA8DvZqZylR1oqKRrXmETRUuw81w4GdjmeBjMy
	2doobXQbkNy0AQ3QYd6UnYE7nKg9pHgTLoSE2LquQ0W/cPDdWkdQy+bCkjBuQU+9UxYey+
	USTt6mZYcae/lVdIO1JKRh/a/pQ6Rsvn29pvUU8oLwftxZIfXvmM8fQ/WKr7fg==
From: Simon Wunderlich <sw@simonwunderlich.de>
To: kuba@kernel.org,
	davem@davemloft.net
Subject: [PATCH 1/4] batman-adv: Start new development cycle
Date: Fri, 16 Sep 2022 18:14:51 +0200
Message-Id: <20220916161454.1413154-2-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220916161454.1413154-1-sw@simonwunderlich.de>
References: <20220916161454.1413154-1-sw@simonwunderlich.de>
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
	d=simonwunderlich.de; s=09092022; t=1663344902;
	h=from:from:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=YuaSs/a1YgtPIPV6n1vLY2PrA5VcxVcfR87EgRqxVlE=;
	b=RBIxnp7hCM8ANP3J5+jr58SxcvsaAQdZi3vMRtwuhPYO42xAWU4PYOOVsivbBvgCHdjgh1
	0LHVUoHCUfP5cIGPHO4Zr5sgbdEW+pYVho/Y95G2dhNqO7hb4/a1gbPhc2Tu8vf4ZS1wYw
	C1DdIt1UoA4hIYPTrSSmfcFrO7pi6Axoysh2qfuqv9JbTdv3lF97emiW+BpBCAKkKfjba8
	PgMh6qSvRrXIzIdjlO66zW8nKT3mZfI8PPOAs+g7sgRPmIF2FohncS5v8LRXLqwzCMdzng
	Bhbied31mY1Z6c23sMUzosfOrIwIjkm9EaxHN/b/AXLy/R7jEsIiV7j3icAKvA==
ARC-Seal: i=1; s=09092022; d=simonwunderlich.de; t=1663344902; a=rsa-sha256;
	cv=none;
	b=UTXsGHGGhy2XKGGGslmY+xNvVROSdkEGydCNAfZ/h6cmLbB6Sf8RXU9+f+/+vpzjTqesXS0YNkxROpgY0FtGwB27Xc7XZL4Uvyq0j0LYVMAuBpfDIA2rXbvTDxOv2b+LUjazLensUDKJlq/vumeMIgwsvKSXVo5NrvA/Gep5KYXFTw8Et4fNrVm1EsjdAgy2Y1K8hIhh5y6ajJlSX3AyQW9rfzPUpbKrjHQOHkjjz5CfS8oCLJOD4/J02Z/iC7s+hKUv8LbRI5wblBge1DsY0lnJjSjw9+u5jRAmkqFK0YT/3RxJJ6O37/Zg0Sq/sKJmDETgosnzuWcX3taq9wEkPg==
ARC-Authentication-Results: i=1;
	simonwunderlich.de;
	auth=pass smtp.auth=sw@simonwunderlich.de smtp.mailfrom=sw@simonwunderlich.de
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1663344902;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=YuaSs/a1YgtPIPV6n1vLY2PrA5VcxVcfR87EgRqxVlE=;
	b=O7z14/vygnZLsUvLly+THqTybFPsu9xcAY7B+j2HA1/RHr0bdpS34NmFXrlGr8BMQ0H64X
	C8a9jMblR8FOMhBGRIcEEmfPDDPjEIDa8eXBrT1htsh+YWfQ82szLm+a2Q4MM2nejhxMbm
	j/RndV5k2nG6SiT+Efqfmx5RSQSdKYE=
ARC-Authentication-Results: i=2;
	diktynna.open-mesh.org;
	dkim=pass header.d=simonwunderlich.de header.s=09092022 header.b=F3bZR1Tp;
	dmarc=pass (policy=none) header.from=simonwunderlich.de;
	arc=pass ("simonwunderlich.de:s=09092022:i=1");
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates 2a01:4f8:c17:e8c0::1 as permitted sender) smtp.mailfrom=sw@simonwunderlich.de
ARC-Seal: i=2; s=20121; d=open-mesh.org; t=1663344902; a=rsa-sha256;
	cv=pass;
	b=l2rgremUSDUf0LXTl8TN6i+5Zp4hBgwKZkmD0oKiFQVP8m8bLrQ5Xzkz+OK2mhxxfjajy+
	9HF4FZAWmVd8UONfknLSvhiAqtx4nj5CH+MgyhQ6f2O/8xAOs15u8eD+b9AjmZRnqO2gYu
	9kvCfwHyOzAEFvIemUvwyqnET/s7l/E=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: MTUZQGWXSVJXTYPXGN3EHKMSXV5S6SV6
X-Message-ID-Hash: MTUZQGWXSVJXTYPXGN3EHKMSXV5S6SV6
X-MailFrom: sw@simonwunderlich.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/MTUZQGWXSVJXTYPXGN3EHKMSXV5S6SV6/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

This version will contain all the (major or even only minor) changes for
Linux 6.1.

The version number isn't a semantic version number with major and minor
information. It is just encoding the year of the expected publishing as
Linux -rc1 and the number of published versions this year (starting at 0)=
.

Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
---
 net/batman-adv/main.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/batman-adv/main.h b/net/batman-adv/main.h
index 23f3d53f4b51..c48803b32bb0 100644
--- a/net/batman-adv/main.h
+++ b/net/batman-adv/main.h
@@ -13,7 +13,7 @@
 #define BATADV_DRIVER_DEVICE "batman-adv"
=20
 #ifndef BATADV_SOURCE_VERSION
-#define BATADV_SOURCE_VERSION "2022.2"
+#define BATADV_SOURCE_VERSION "2022.3"
 #endif
=20
 /* B.A.T.M.A.N. parameters */
--=20
2.30.2
