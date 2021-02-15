Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 13C5E31C2D6
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 15 Feb 2021 21:10:20 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 827CE83D63;
	Mon, 15 Feb 2021 21:10:08 +0100 (CET)
Received: from dvalin.narfation.org (dvalin.narfation.org [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id B07B080949
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 15 Feb 2021 21:10:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1613419333;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=OJdFKRVvbbF/1YVXaxwrnRxA+gyPJenNCi3ipWAtP0E=;
	b=HuyORGAQ12mqzTALV1g+qu3gWSF/uQnwXoTjx+9OFENwlZNUvYt0sOrWhrvha2OziIk52V
	xKEgNg/pCqO4lD6zJ+Ecnvg142rWfcG5vDZg8Ki7vRtNA8Ktu24qkIbNF2x6NWSQAy3Tw4
	GdE2rV0tpSLjlFR72Sz8tYjLscNpMjg=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
Subject: [PATCH 1/4] alfred: Show error message for invalid batadv interface
Date: Mon, 15 Feb 2021 21:01:23 +0100
Message-Id: <20210215200126.140253-1-sven@narfation.org>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=HuyORGAQ;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1613419804;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=OJdFKRVvbbF/1YVXaxwrnRxA+gyPJenNCi3ipWAtP0E=;
	b=gYNZPZpU9FztBR3ulPQcpx9vFXrb4jgGzP/OkOFlDUmug6s/RSZKetHeIalKN2oO6gFBiw
	QDtzljVzEtbOiYgTW6LFn+O5xQ1pJKQ+eO5kLtlrtbAK+D1uGcC8z27i33V1wgP6Ve64FJ
	ckJcSHZiH36CAP1CDmm6EY6QFWFz2D4=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1613419804; a=rsa-sha256;
	cv=none;
	b=cYAoD9rZG9oVvplRyg2BLPnkSsYIeY3tAo/9sXjJE+RDkXQnLU2KAHbZnEy/7MtYZ8yxP1
	xRxAGxWZEnPHF07R0ONhs0q0YxQgzhgWJZbENc5D0GE+k22zU0U5eSHM6oyDemJK8oa+Su
	w46/wUM4ZH0fTnIhcbWonAy4tgShi60=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: QFDVACZYBX3V72IMQVV6FH5TYAYA4LOG
X-Message-ID-Hash: QFDVACZYBX3V72IMQVV6FH5TYAYA4LOG
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/QFDVACZYBX3V72IMQVV6FH5TYAYA4LOG/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

The alfred server process always stopped without any informational messag=
e
when the provided batman-adv was not "none" and was not accessible. This
made it extremely hard to debug the reason why alfred directly stopped
after launching it.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 server.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/server.c b/server.c
index fc27246..efac5ad 100644
--- a/server.c
+++ b/server.c
@@ -385,8 +385,11 @@ int alfred_server(struct globals *globals)
 	}
=20
 	if (strcmp(globals->mesh_iface, "none") !=3D 0 &&
-	    batadv_interface_check(globals->mesh_iface) < 0)
+	    batadv_interface_check(globals->mesh_iface) < 0) {
+		fprintf(stderr, "Can't start server: batman-adv interface %s not found=
\n",
+			globals->mesh_iface);
 		return -1;
+	}
=20
 	num_socks =3D netsock_open_all(globals);
 	if (num_socks <=3D 0) {
--=20
2.30.0
