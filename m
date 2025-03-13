Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 2831CA5FC8C
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 13 Mar 2025 17:50:51 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 07C8A845E4
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 13 Mar 2025 17:50:51 +0100 (CET)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1741884651;
 b=Lrch/lj7fceIuZOkDWpTP4oM8Yo+JhA9+EPJYf9pCwEOK6WhduRMEASmIVaBBdxfmJgCm
 vzfcOQYY466WetbTMKMzJVYYhHGvTX4Nag/KcCBZW9RdS2QRmGZ08ziN3bSUUkmQm5loEaJ
 LQiNAPzkh16ULedK18n1mWsDgGsaqB4=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1741884651; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=7cBSPKtnU5NBhtVvbUZvFFoM0SkWk3Yzo5yyCWyLwec=;
 b=PKRllSMasKzewQiL3q+WikoqGffbRWyoDi5Io5fHoHlWt6eArNgK5/m0hKCTjqRhQ2+Aa
 joAgB7riArNPeLxZc88ieNzZ4271WkFJ9+0JB0Kqqo4vnx9i05J/1SSzaSbuP8fAxCepOdJ
 /fFDVQInSXe+Bx9S6PagGW3HuNwAEUw=
ARC-Authentication-Results: i=2; open-mesh.org; dkim=fail;
  arc=pass;
  dmarc=fail (Used From Domain Record) header.from=simonwunderlich.de
 policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=fail; arc=pass;
 dmarc=fail (Used From Domain Record) header.from=simonwunderlich.de
 policy.dmarc=none
Received: from mail.simonwunderlich.de (mail.simonwunderlich.de
 [IPv6:2a01:4f8:c17:e8c0::1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 853288427B
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 13 Mar 2025 17:45:31 +0100 (CET)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1741884331;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=7cBSPKtnU5NBhtVvbUZvFFoM0SkWk3Yzo5yyCWyLwec=;
	b=sRoG6uwq8W5p3Cab+gr02b22GM8GRAnPIk+Bd5yAHWBoczrsPV5+QQvKHuENgLF3QGL0T2
	wx96yhwzDNIKEyzQPfb+qEMdlZlbxMfexfD2x8eN1RoJ35SHr7GkWD625ezXxUBxoSQ12q
	MQ3xR0B9Ug6DxsAqdnoALalgZr5vvgo=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	dmarc=pass (policy=none) header.from=simonwunderlich.de;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates
 2a01:4f8:c17:e8c0::1 as permitted sender) smtp.mailfrom=sw@simonwunderlich.de
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1741884331; a=rsa-sha256;
	cv=none;
	b=L0lyMg2HQrlzuR8yguuv1LDmY2i9wM80Wzv98d6Oi1J+A/m06fv7lp1wdl6cGIKMP80RNP
	N5UWCNlbkBhDXnKlBwkAAcgjoKYOecYK91bnFKFibgW+ajoa/E7W5taug3pMCeW8jr8i4r
	y8PVCKxexNBUmnG5fTdx8AatU7Uyiy0=
Received: from kero.packetmixer.de
 (p200300Fa272413901A38A4BC9c0De305.dip0.t-ipconnect.de
 [IPv6:2003:fa:2724:1390:1a38:a4bc:9c0d:e305])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits)
 server-digest SHA256)
	(No client certificate requested)
	by mail.simonwunderlich.de (Postfix) with ESMTPSA id 51E68FA44C;
	Thu, 13 Mar 2025 17:45:31 +0100 (CET)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: kuba@kernel.org,
	davem@davemloft.net
Cc: netdev@vger.kernel.org,
	b.a.t.m.a.n@lists.open-mesh.org,
	Sven Eckelmann <sven@narfation.org>,
	Simon Wunderlich <sw@simonwunderlich.de>
Subject: [PATCH 10/10] batman-adv: add missing newlines for log macros
Date: Thu, 13 Mar 2025 17:45:19 +0100
Message-Id: <20250313164519.72808-11-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250313164519.72808-1-sw@simonwunderlich.de>
References: <20250313164519.72808-1-sw@simonwunderlich.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Message-ID-Hash: FHZPYM3HSYKD3H5LEEZCNOPD6URBVKUT
X-Message-ID-Hash: FHZPYM3HSYKD3H5LEEZCNOPD6URBVKUT
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/FHZPYM3HSYKD3H5LEEZCNOPD6URBVKUT/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

From: Sven Eckelmann <sven@narfation.org>

Missing trailing newlines can lead to incomplete log lines that do not
appear properly in dmesg or in console output.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
---
 net/batman-adv/netlink.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/batman-adv/netlink.c b/net/batman-adv/netlink.c
index 13935570fae1..e7c8f9f2bb1f 100644
--- a/net/batman-adv/netlink.c
+++ b/net/batman-adv/netlink.c
@@ -1567,7 +1567,7 @@ void __init batadv_netlink_register(void)
 
 	ret = genl_register_family(&batadv_netlink_family);
 	if (ret)
-		pr_warn("unable to register netlink family");
+		pr_warn("unable to register netlink family\n");
 }
 
 /**
-- 
2.39.5

