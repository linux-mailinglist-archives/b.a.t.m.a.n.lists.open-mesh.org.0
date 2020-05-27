Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 56E6A1E5093
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 27 May 2020 23:37:48 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 103DB8011B;
	Wed, 27 May 2020 23:37:47 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 69F428011B
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 27 May 2020 23:37:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1590614990;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=iatFrBA5VjaKZYWM066+mTRQW79UD4jzzd/J2u1oQP0=;
	b=DHgsaeBHieKi2Ma2N60wjHqdtNiPZBHAnDecpEqR3VL0qVKpY5TPKSFygOq8VlkSP5xgT/
	BdGKzNImN1gXJ0+x1g2tHm/P/P5n5yppTJbapM5bBzntHLiA/zrvpW0PkOBrLZZyGntNwb
	glCYEcussF7Q2xHEUR/1ub4+TPxVIPQ=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
Subject: [PATCH] alfred: Switch mailing list subscription page
Date: Wed, 27 May 2020 23:29:46 +0200
Message-Id: <20200527212946.10259-1-sven@narfation.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1590615463;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=iatFrBA5VjaKZYWM066+mTRQW79UD4jzzd/J2u1oQP0=;
	b=YlPl8vGQCjEvQvCkmR1c57GiHgIW9xV57GTmwtQO7ZXRx8n/0RnKZtK/cXz8BBpRp13RBj
	XYc0G4waSjvuyB6yRqz+GDORpRmrTd60t5KaJB108YrhhLQUf20L8Cah2sGs85PyIlSNB3
	f676Pg5XdGvmekDHOHkSUZHoTJKj1YE=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1590615463; a=rsa-sha256;
	cv=none;
	b=qwpI8fVElr0YnDQGlfQeNVW+MP8jBkxM3AIsSSUHFWdYGrqj4T+FjHlixRZmyyheGZokV5
	ammq/aXue34UB+eA5YmuZknJSZ+T56+Q3NyQAYivvxdv1QeEK65f6VMBUz1QFPnAsgkXbp
	KspsbyP9IO5AX9oRYlRXjn53NhiWIW0=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=DHgsaeBH;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: 3BRKQCR7PLEFW743YR3H4EYDUMNBP2TK
X-Message-ID-Hash: 3BRKQCR7PLEFW743YR3H4EYDUMNBP2TK
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/3BRKQCR7PLEFW743YR3H4EYDUMNBP2TK/>
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
 README.rst | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/README.rst b/README.rst
index d7446a3..76664ee 100644
--- a/README.rst
+++ b/README.rst
@@ -329,7 +329,7 @@ IRC:
   #batman on irc.freenode.org
 Mailing-list:
   b.a.t.m.a.n@open-mesh.org (optional subscription at
-  https://lists.open-mesh.org/mm/listinfo/b.a.t.m.a.n)
+  https://lists.open-mesh.org/mailman3/postorius/lists/b.a.t.m.a.n.lists=
.open-mesh.org/)
=20
 If you have test reports/patches/ideas, please read the wiki for further
 instruction on how to contribute:
--=20
2.20.1
