Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C100378CE1
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 10 May 2021 15:39:15 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id C74CC83DBF;
	Mon, 10 May 2021 15:39:13 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 3F25080636
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 10 May 2021 15:39:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1620653950;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=QZfKxgHQNJcjN4Cp8PjuNN7pHlCVIafLqaoYf/XTdpI=;
	b=NpIBWk0NFzyyGbLDzzVNurNDfco7ZNH+KjwfOdMo+WFPv1IPuHsg9OJQImq2ihFEP/339w
	rojvgoXdK82vfvru7POPGKl6pupWGbAhrNxIxkoEUNKX/FVNZWWDDt47cc/NEfg04eTRWg
	yoSTZV207MolqShquZi65Gf1aH7dpNE=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
Subject: [PATCH] batctl: Avoid boolean in structures
Date: Mon, 10 May 2021 15:39:06 +0200
Message-Id: <20210510133906.45697-1-sven@narfation.org>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1620653951; a=rsa-sha256;
	cv=none;
	b=FnByGHJbm1Pe9X14sVD9EBf/sHVsGa0Ch155M4l4WlkcBTSaTwm/YE4je08ebiNn0EKhPE
	gkJPNeiqJKIevnkPsapjMCBCu9l4qEqnyASJ9DyTWbnvnXOxSR9mAGML+AOr11hBjSnHn+
	Kuzag/bNS+HgTv87EH5DpPKRb/6N1Y4=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=NpIBWk0N;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1620653951;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=QZfKxgHQNJcjN4Cp8PjuNN7pHlCVIafLqaoYf/XTdpI=;
	b=CvebSScA38KZQ1ZVqThgrmkgz1aCH1hd5XBmZDyAceTVuOV2MuhQC7HBQ+VE+0P6uSb/UN
	cSkZbo9evEkkdCIxjMBMEUUyb6KNJa/QBDwn6SSzfY1blKdNIOnlgVLDvNeo81VyZBpIVz
	39f2dt5sFfMGW0RxQxcd4bNs1q8mRzI=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: Y3XXIYCJWME4CQNWRBIRYJ6ZOL4MI2FT
X-Message-ID-Hash: Y3XXIYCJWME4CQNWRBIRYJ6ZOL4MI2FT
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/Y3XXIYCJWME4CQNWRBIRYJ6ZOL4MI2FT/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Booleans inside structures to really only store a single bit of informati=
on
is often a waste of space because a boolean is stored using multiple byte=
s.
While this is not too relevant for batctl, just use the same way of stori=
ng
such values as in the rest of batman-adv to avoid different paradigms in
related code.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 netlink.c         | 8 ++++----
 throughputmeter.c | 4 ++--
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/netlink.c b/netlink.c
index 31c9b01..31f4419 100644
--- a/netlink.c
+++ b/netlink.c
@@ -592,7 +592,7 @@ static const int translate_mac_netlink_mandatory[] =3D=
 {
=20
 struct translate_mac_netlink_opts {
 	struct ether_addr mac;
-	bool found;
+	uint8_t found:1;
 	struct nlquery_opts query_opts;
 };
=20
@@ -680,7 +680,7 @@ struct get_nexthop_netlink_opts {
 	struct ether_addr mac;
 	uint8_t *nexthop;
 	char *ifname;
-	bool found;
+	uint8_t found:1;
 	struct nlquery_opts query_opts;
 };
=20
@@ -772,7 +772,7 @@ static const int get_primarymac_netlink_mandatory[] =3D=
 {
=20
 struct get_primarymac_netlink_opts {
 	uint8_t *primarymac;
-	bool found;
+	uint8_t found:1;
 	struct nlquery_opts query_opts;
 };
=20
@@ -844,7 +844,7 @@ int get_primarymac_netlink(const char *mesh_iface, ui=
nt8_t *primarymac)
 struct get_algoname_netlink_opts {
 	char *algoname;
 	size_t algoname_len;
-	bool found;
+	uint8_t found:1;
 	struct nlquery_opts query_opts;
 };
=20
diff --git a/throughputmeter.c b/throughputmeter.c
index f50f521..4c7ccca 100644
--- a/throughputmeter.c
+++ b/throughputmeter.c
@@ -38,16 +38,16 @@ static char *tp_mesh_iface;
=20
 struct tp_result {
 	int error;
-	bool found;
 	uint32_t cookie;
 	uint8_t return_value;
+	uint8_t found:1;
 	uint32_t test_time;
 	uint64_t total_bytes;
 };
=20
 struct tp_cookie {
 	int error;
-	bool found;
+	uint8_t found:1;
 	uint32_t cookie;
 };
=20
--=20
2.30.2
