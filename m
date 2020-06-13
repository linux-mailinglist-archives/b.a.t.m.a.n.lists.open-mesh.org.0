Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 979BE1F8439
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 13 Jun 2020 18:08:07 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 7918381215;
	Sat, 13 Jun 2020 18:08:02 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 77D1580DDE
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 13 Jun 2020 18:07:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1592064003;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=3amq+CLXGGRWSDMCNX/xKBXylnoAi/x9b14d1Qu7cy0=;
	b=11N1mY10/LYcDU/7QDAu0bRmj2hhqNm9iEAxJ6ROznJw7q17SByLPcrsHSd5XNuCD1CBh8
	KMpGjv7tqrhhWYLxAGUv/ViNqEiiBzkd3eaAQ3GFQDDgaHnE5t4q9/KEV/QapKbCtqC7Hm
	c6Il9Bj18626of/dUbeLVA0ghmPPXIY=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>,
	Matthias Schiffer <mschiffer@universe-factory.net>
Subject: [PATCH 1/2] batctl: Only remove batadv interface on hardif reduction
Date: Sat, 13 Jun 2020 17:59:34 +0200
Message-Id: <20200613155935.8934-1-sven@narfation.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1592064479;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=3amq+CLXGGRWSDMCNX/xKBXylnoAi/x9b14d1Qu7cy0=;
	b=xA9UbQNRR6ACFEmglrZCyaj/8lqf/L5az/vntwzzLltHft8GVvlRLguA+x9yWFn121YfXS
	Z6hGhMF9TuwLV63BXPZKMihVwffsEnjSYjsK9ypX93N58RT4vQr/kVLY8KB6Ox43aV20HU
	q3uHb+vX/Z5Ibqhk28pU2lx/hPylVBI=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1592064479; a=rsa-sha256;
	cv=none;
	b=z00bWflcoJ5ExvzPJQi68D+1w0t4Lq1kVMnYB+6tQvrjxFUKXww8yrI7xCbJmdQhuiBWO1
	e42fTiDUEBS7sAa/n86iTTU/KgiGq8HyNkRnjXd92XQ/ULMjJP9yyD1cqKaExQgG+H1HJ8
	z32OsPU+T4tSiD5BOHTODYoJUCrvmK0=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=11N1mY10;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: DYT3GDOB7DBNERMNU65S456BATLIBSF6
X-Message-ID-Hash: DYT3GDOB7DBNERMNU65S456BATLIBSF6
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/DYT3GDOB7DBNERMNU65S456BATLIBSF6/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

A deletion of a hardif from a batadv meshif will also get a success reply
from the kernel when the hardif was never part of the batadv meshif. If t=
he
batadv meshif had no attached hardifs before the removal was started, the=
n
users are then not expecting that the batadv meshif is removed at all.

Since the delete operation is not an atomic compare-and-swap operation,
just check first the number of attached interfaces and only start the
removal of the batadv meshif when the number attached hardifs was reduced=
.

Fixes: 25022e0b154d ("batctl: Use rtnl to add/remove interfaces")
Reported-by: Matthias Schiffer <mschiffer@universe-factory.net>
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 interface.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/interface.c b/interface.c
index 1cd6ede..ac4d883 100644
--- a/interface.c
+++ b/interface.c
@@ -386,6 +386,7 @@ static int interface(struct state *state, int argc, c=
har **argv)
 	int ret;
 	unsigned int ifindex;
 	unsigned int ifmaster;
+	unsigned int pre_cnt;
 	const char *long_op;
 	unsigned int cnt;
 	int rest_argc;
@@ -502,6 +503,8 @@ static int interface(struct state *state, int argc, c=
har **argv)
 		goto err;
 	}
=20
+	pre_cnt =3D count_interfaces(state->mesh_iface);
+
 	for (i =3D 1; i < rest_argc; i++) {
 		ifindex =3D if_nametoindex(rest_argv[i]);
=20
@@ -531,7 +534,7 @@ static int interface(struct state *state, int argc, c=
har **argv)
 	/* check if there is no interface left and then destroy mesh_iface */
 	if (!manual_mode && rest_argv[0][0] =3D=3D 'd') {
 		cnt =3D count_interfaces(state->mesh_iface);
-		if (cnt =3D=3D 0)
+		if (cnt =3D=3D 0 && pre_cnt > 0)
 			destroy_interface(state->mesh_iface);
 	}
=20
--=20
2.20.1
