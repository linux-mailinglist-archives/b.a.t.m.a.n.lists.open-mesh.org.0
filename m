Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 582711E5094
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 27 May 2020 23:37:52 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 828B980C80;
	Wed, 27 May 2020 23:37:47 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 6E4BF8080E
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 27 May 2020 23:37:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1590614974;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=soLiYAV044libIaIKr6LbPcc1R4i6yA2qFIJXJ8cmx4=;
	b=LJF6nlEjLAbjTqvN9o9O616z5ICaMk+O9vRdPM3964h92uycMBZpJQiJzf1ix5L80Mlqys
	VY5gM+25OACV2noX1hUMP8SNTIYMrcpwqwlK3WaL676+bkBfSUrHMA2UA8FFQ3xuCSUb14
	6vRf89pVSNvGbx3MvLG2laS3TPjtSzM=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
Subject: [PATCH] batman-adv: Switch mailing list subscription page
Date: Wed, 27 May 2020 23:29:27 +0200
Message-Id: <20200527212927.10168-1-sven@narfation.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1590615463;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=soLiYAV044libIaIKr6LbPcc1R4i6yA2qFIJXJ8cmx4=;
	b=Wwm830m50jNHGVt70B1dVYYFPUHAN2o5ncbbhNaSuqrxhx3PnbmT+YzC50KLdE4GJNdOL9
	jRFmnHNK3qLanShYdJxWzv+0A8L+sJAzuUF25ksqgv+qpca+fmpPg1kPxaEsnArZ6+6Tt6
	KSa25oHA5chlfunU2rqlW3+rZCnuKv4=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1590615463; a=rsa-sha256;
	cv=none;
	b=Zf89cNtYKDH/kdA2bV4eO5jfkhaVVipHmn084nXNGPhMW3n3bZ9CsvKGHKNe6yulSh3pgV
	WFmMMCLvE6kLqRYPZuwZdu/tfqSkY4CS0BtxPAMflRcISPsSlkNTZ7v/LYrUxQmjqTutHp
	zMmJeVV93T6lk+viZ17GL5caGPISvps=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=LJF6nlEj;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: 2QAF57WRWUSELYBNAVNQSTTEATOQUUDF
X-Message-ID-Hash: 2QAF57WRWUSELYBNAVNQSTTEATOQUUDF
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/2QAF57WRWUSELYBNAVNQSTTEATOQUUDF/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

The mailman installation on lists.open-mesh.org was switched from mailman=
2
to mailman3. The URL to the subscription webpage changed in this process.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 Documentation/networking/batman-adv.rst | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/networking/batman-adv.rst b/Documentation/netw=
orking/batman-adv.rst
index 18020943..02af49b0 100644
--- a/Documentation/networking/batman-adv.rst
+++ b/Documentation/networking/batman-adv.rst
@@ -160,7 +160,7 @@ IRC:
   #batman on irc.freenode.org
 Mailing-list:
   b.a.t.m.a.n@open-mesh.org (optional subscription at
-  https://lists.open-mesh.org/mm/listinfo/b.a.t.m.a.n)
+  https://lists.open-mesh.org/mailman3/postorius/lists/b.a.t.m.a.n.lists=
.open-mesh.org/)
=20
 You can also contact the Authors:
=20
--=20
2.20.1
