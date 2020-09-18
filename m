Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id D800B26FE19
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 18 Sep 2020 15:20:07 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id E810B807D2;
	Fri, 18 Sep 2020 15:20:02 +0200 (CEST)
Received: from simonwunderlich.de (simonwunderlich.de [79.140.42.25])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 5073A800F2
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 18 Sep 2020 15:19:59 +0200 (CEST)
Received: from kero.packetmixer.de (p200300c59714ead05d12fb7f5a0314d0.dip0.t-ipconnect.de [IPv6:2003:c5:9714:ead0:5d12:fb7f:5a03:14d0])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by simonwunderlich.de (Postfix) with ESMTPSA id D7F7A62073;
	Fri, 18 Sep 2020 15:19:58 +0200 (CEST)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: davem@davemloft.net
Subject: [PATCH 1/6] batman-adv: bla: fix type misuse for backbone_gw hash indexing
Date: Fri, 18 Sep 2020 15:19:51 +0200
Message-Id: <20200918131956.21598-2-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200918131956.21598-1-sw@simonwunderlich.de>
References: <20200918131956.21598-1-sw@simonwunderlich.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1600435199;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=PE+FKOGLcBUo2ABNdz7mHJwCQr34B7oXY4w/7jL+zl8=;
	b=uQvMfgJCTGekbzzz941dDap/R36eFvRFDpiPvIvfzgKb5J1ysLGE9yqQs/ZEUCqFQcWdV3
	vtDy+VlubL9XW4RxDBW1/a5bY5sVKp7MUtDG0NbxFCCdaY8i1Q3PPnc6vi1wMulDx0bTeE
	8jnBzlYgXDh3sH+5WOH4OGqgkR1bTQM=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1600435199; a=rsa-sha256;
	cv=none;
	b=WMPc//El0p2P+r2r82Yqr6vPTqLPur8UzQNOKfQi0EWaiAxiDek2O/Xb0mFvzU6Bg+AI5b
	7YK+eLZoa7XCnITGULRQ+qJzjtZ+SguOH+/EX4QaRmzcsrChoSuOEfjOewL/zYvumrIC0B
	wLxifffLo0p6GpqG/WdTd5e/qfSPI7w=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates 79.140.42.25 as permitted sender) smtp.mailfrom=sw@simonwunderlich.de
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: 66IDCWCHDM5QA7IKPFSDOMYDRX6E65DD
X-Message-ID-Hash: 66IDCWCHDM5QA7IKPFSDOMYDRX6E65DD
X-MailFrom: sw@simonwunderlich.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org, =?UTF-8?q?Linus=20L=C3=BCssing?= <ll@simonwunderlich.de>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/66IDCWCHDM5QA7IKPFSDOMYDRX6E65DD/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

From: Linus L=C3=BCssing <ll@simonwunderlich.de>

It seems that due to a copy & paste error the void pointer
in batadv_choose_backbone_gw() is cast to the wrong type.

Fixing this by using "struct batadv_bla_backbone_gw" instead of "struct
batadv_bla_claim" which better matches the caller's side.

For now it seems that we were lucky because the two structs both have
their orig/vid and addr/vid in the beginning. However I stumbled over
this issue when I was trying to add some debug variables in front of
"orig" in batadv_backbone_gw, which caused hash lookups to fail.

Fixes: 07568d0369f9 ("batman-adv: don't rely on positions in struct for h=
ashing")
Signed-off-by: Linus L=C3=BCssing <ll@simonwunderlich.de>
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 net/batman-adv/bridge_loop_avoidance.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/net/batman-adv/bridge_loop_avoidance.c b/net/batman-adv/brid=
ge_loop_avoidance.c
index 8500f56cbd10..d8c5d3170676 100644
--- a/net/batman-adv/bridge_loop_avoidance.c
+++ b/net/batman-adv/bridge_loop_avoidance.c
@@ -83,11 +83,12 @@ static inline u32 batadv_choose_claim(const void *dat=
a, u32 size)
  */
 static inline u32 batadv_choose_backbone_gw(const void *data, u32 size)
 {
-	const struct batadv_bla_claim *claim =3D (struct batadv_bla_claim *)dat=
a;
+	const struct batadv_bla_backbone_gw *gw;
 	u32 hash =3D 0;
=20
-	hash =3D jhash(&claim->addr, sizeof(claim->addr), hash);
-	hash =3D jhash(&claim->vid, sizeof(claim->vid), hash);
+	gw =3D (struct batadv_bla_backbone_gw *)data;
+	hash =3D jhash(&gw->orig, sizeof(gw->orig), hash);
+	hash =3D jhash(&gw->vid, sizeof(gw->vid), hash);
=20
 	return hash % size;
 }
--=20
2.20.1
