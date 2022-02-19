Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 5997E4BC6D2
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 19 Feb 2022 08:54:38 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 3995980871;
	Sat, 19 Feb 2022 08:54:37 +0100 (CET)
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id B63E28068E
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 19 Feb 2022 08:54:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1645257274;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=8yt7/DwbsJL052ziDBSwPRpWXN23lZKAETGAdNz6ILI=;
	b=HIdjX/RctCpqrsk4xHQt/OxDA0LhFBpeHSpKgsPB2Xr7kPN1SY+mQY5vE5EvEWoMAR98K4
	M9WHcpSPyWtkgCde+6Ye3GUGZvGfXBCX7T4TKYNGJiZMPvxHIRBKmYZR1mZUWCo22jp7zu
	b1yyJo98lXQ43U7e6AOQ/Ryff1NRnmE=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
Subject: [PATCH] alfred: Ensure processed change_iface packet is 0-terminated
Date: Sat, 19 Feb 2022 08:54:24 +0100
Message-Id: <20220219075424.802930-1-sven@narfation.org>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b="HIdjX/Rc";
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1645257274; a=rsa-sha256;
	cv=none;
	b=VoxNnqtTrR40Gq4N3oQ6GKmy7/WRKaQIESJRD/Va+25tkDxl5t5MkNj3tvHL55IYvG/Kd1
	R8HxjgFq7WDC0C2gs70ACY3IQdPboaPjt9ctTRF8HrLH6FRlrxT6VoiQ6on/1b6Lcp74Cn
	aJB1qni52/CvTW0++DltQOOFZEKjSzE=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1645257274;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=8yt7/DwbsJL052ziDBSwPRpWXN23lZKAETGAdNz6ILI=;
	b=QYn1lquY99bcsqKrDM6EoTYAH50P8whTu6mBlNMOTcNpjhSo/Vqbwq/I90ihIlZVpiOc9R
	NK9B4OwQdgR2IL9SyE3NKbpsydQkHrOzWY5GUs1+H9BP2BDuFYRTo4+SJO5AkHYn+HvAOg
	V4OfFBzQXZgLm+CLHgn1ZTjC6y/yFo0=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: QRYEJB5RDAL3UI24KEFYSA36UYNXW6UW
X-Message-ID-Hash: QRYEJB5RDAL3UI24KEFYSA36UYNXW6UW
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/QRYEJB5RDAL3UI24KEFYSA36UYNXW6UW/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

A client sending a alfred_change_interface_v0 packet to the alfred server
might have forgotten to 0-terminate the string. In this case, strstr in
unix_sock_change_iface might read outside of the available buffer.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 unix_sock.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/unix_sock.c b/unix_sock.c
index bc39199..8c2b762 100644
--- a/unix_sock.c
+++ b/unix_sock.c
@@ -329,6 +329,8 @@ unix_sock_change_iface(struct globals *globals,
 	if (len < (int)(sizeof(*change_iface) - sizeof(change_iface->header)))
 		goto err;
=20
+	change_iface->ifaces[sizeof(change_iface->ifaces) - 1] =3D '\0';
+
 	if (globals->opmode =3D=3D OPMODE_SECONDARY) {
 		if (strstr(change_iface->ifaces, ",") !=3D NULL) {
 			ret =3D -EINVAL;
--=20
2.30.2
