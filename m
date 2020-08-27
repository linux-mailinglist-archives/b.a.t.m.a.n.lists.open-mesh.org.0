Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 7015125498A
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 27 Aug 2020 17:35:21 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 3EEC3802CB;
	Thu, 27 Aug 2020 17:35:20 +0200 (CEST)
Received: from mail.aperture-lab.de (mail.aperture-lab.de [138.201.29.205])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id ECE1A802B3
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 27 Aug 2020 17:35:17 +0200 (CEST)
From: =?UTF-8?q?Linus=20L=C3=BCssing?= <linus.luessing@c0d3.blue>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c0d3.blue; s=2018;
	t=1598542517;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=g6c1LAnQY6ZErUT49uiD+gcD/rrAfGdbJKMoGEz54r8=;
	b=FGke5AJ3GcSGMKptyAdhFANikJ9L+HD9t7GvOPeSGYmwMeqqX0lRFzd8tpNH8rS3P6K5f+
	ur3ukI7r7hExNTw/+v4LXFkl2LWXv9WVXtnAe6GH+VcQhoK/BUm166syEu2d9YTmhU0rG1
	pG3Pe9Ts0MYXEJu7d1Fl5ZgAecdl2jvz6zuTXen1Ki8A6+jYUFmVaDBnrCTGB++eMRn5I1
	BZovi/PYel2tcOtPaxhElO6wHkpXVdiKURgbLMYAGm94RwhcYbbm7tL9kNrfdGXEVo8qCk
	8xEeqBL06TW4zafePKPuI7YvGq4WtVZXZDfbttyKOuIhTDS5z8VMAygR+7Fr6w==
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: [PATCH] batman-adv: bla: fix type misuse for backbone_gw hash indexing
Date: Thu, 27 Aug 2020 17:34:48 +0200
Message-Id: <20200827153448.3935-1-linus.luessing@c0d3.blue>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=linus.luessing@c0d3.blue smtp.mailfrom=linus.luessing@c0d3.blue
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1598542518;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=g6c1LAnQY6ZErUT49uiD+gcD/rrAfGdbJKMoGEz54r8=;
	b=D++hZ28rcW6P9oYW6j2VbZF/bIAltkha80KPeK6Yveu38nq5rtH3tp4vYsjAu8u2j9ayUA
	862OBRGVhjPRvV+NkAvgDwfOUra2rAA2dtt5eIgPoBPd9x+M8SQ2oS+sU0m6BKrkUNlcsh
	6T+BwERS1t96kCaKQV+gNmw6TWatKbU=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1598542518; a=rsa-sha256;
	cv=none;
	b=LpT5Tmlot9ZvttQ6RoDOlI09qOKJCDSW1iQtymp1nNCcaRAimHB3yBdhqIgBEoLcl++Q7G
	A4+S4N82J5uba0sVI1Tb8rl2GiNcK1Xj4Ek9nEOxVpLbuWKl1MB1lT0JarsIhafwZ49hbG
	A7iqJ8qeVHYDPU1Py65W1N56KHvqtBU=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none (invalid DKIM record) header.d=c0d3.blue header.s=2018 header.b=FGke5AJ3;
	spf=none (diktynna.open-mesh.org: domain of linus.luessing@c0d3.blue has no SPF policy when checking 138.201.29.205) smtp.mailfrom=linus.luessing@c0d3.blue
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: 64KE5IRGOGWT5TK5Y6HBSJ72AG4EGBR3
X-Message-ID-Hash: 64KE5IRGOGWT5TK5Y6HBSJ72AG4EGBR3
X-MailFrom: linus.luessing@c0d3.blue
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: =?UTF-8?q?Linus=20L=C3=BCssing?= <ll@simonwunderlich.de>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/64KE5IRGOGWT5TK5Y6HBSJ72AG4EGBR3/>
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

Fixes: 7e15c9305ce0 ("batman-adv: don't rely on positions in struct for h=
ashing")
Signed-off-by: Linus L=C3=BCssing <ll@simonwunderlich.de>
---
 net/batman-adv/bridge_loop_avoidance.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/net/batman-adv/bridge_loop_avoidance.c b/net/batman-adv/brid=
ge_loop_avoidance.c
index b643dadc..4ba984bf 100644
--- a/net/batman-adv/bridge_loop_avoidance.c
+++ b/net/batman-adv/bridge_loop_avoidance.c
@@ -88,11 +88,12 @@ static inline u32 batadv_choose_claim(const void *dat=
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
2.28.0.rc1
