Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id AFF1630C860
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue,  2 Feb 2021 18:50:15 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id EEDAF83AF9;
	Tue,  2 Feb 2021 18:50:10 +0100 (CET)
Received: from simonwunderlich.de (packetmixer.de [IPv6:2001:4d88:2000:24::c0de])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id D14F380817
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue,  2 Feb 2021 18:50:07 +0100 (CET)
Received: from kero.packetmixer.de (p4fd575e2.dip0.t-ipconnect.de [79.213.117.226])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by simonwunderlich.de (Postfix) with ESMTPSA id EEFD817401F;
	Tue,  2 Feb 2021 18:40:38 +0100 (CET)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: kuba@kernel.org,
	davem@davemloft.net
Subject: [PATCH 1/4] batman-adv: Start new development cycle
Date: Tue,  2 Feb 2021 18:40:33 +0100
Message-Id: <20210202174037.7081-2-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210202174037.7081-1-sw@simonwunderlich.de>
References: <20210202174037.7081-1-sw@simonwunderlich.de>
MIME-Version: 1.0
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1612288207; a=rsa-sha256;
	cv=none;
	b=DzSq92FNYow0ft0Fay+6nlgBxw+lgaHtF+bHtVpO3mkXbCddUD1ST0ffxyktPH+0MN2x95
	jd6N256mMBvBHNV64DJw42DAwV81gf9GehcqnW1iUYbNhrHGmcBa8WcC59Pr5vNdns91tE
	r8fXlQRp23wlb1TgaTqUAYEVQZcPsa8=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates 2001:4d88:2000:24::c0de as permitted sender) smtp.mailfrom=sw@simonwunderlich.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1612288207;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=9nsk0H/vY61mm68dyvtZ30K/fsFgS7ThK7nU53HxgT0=;
	b=gzoiJdizKHvidE/rtB7tB+N9RXo9jr+P7bUoqs+I5eim3WDD5Y788YJ5yEhADkWOa90BgR
	Wy/BqImFJ9VYZgAv4szuxj1MUlbaEWkbgtQnUGPA6uKOVwHIKGnX0bX0/ZqlqkRCBWrbxm
	30ajhjtsZ1BfwEJwcyqinBlTsqQugdk=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: MXD2AJYF4H2E2WHPXDRBBVMJMZ3G2KIY
X-Message-ID-Hash: MXD2AJYF4H2E2WHPXDRBBVMJMZ3G2KIY
X-MailFrom: sw@simonwunderlich.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/MXD2AJYF4H2E2WHPXDRBBVMJMZ3G2KIY/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
---
 net/batman-adv/main.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/batman-adv/main.h b/net/batman-adv/main.h
index 288201630ceb..2486efe4ffa6 100644
--- a/net/batman-adv/main.h
+++ b/net/batman-adv/main.h
@@ -13,7 +13,7 @@
 #define BATADV_DRIVER_DEVICE "batman-adv"
=20
 #ifndef BATADV_SOURCE_VERSION
-#define BATADV_SOURCE_VERSION "2021.0"
+#define BATADV_SOURCE_VERSION "2021.1"
 #endif
=20
 /* B.A.T.M.A.N. parameters */
--=20
2.20.1
