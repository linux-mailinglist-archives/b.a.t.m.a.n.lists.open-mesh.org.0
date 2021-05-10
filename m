Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A70F378CC7
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 10 May 2021 15:30:01 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 356BC83EAA;
	Mon, 10 May 2021 15:30:00 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id DDC6180372
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 10 May 2021 15:29:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1620653397;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=2xXJ7WEKT9XD1kkmKglG8HdCOKhF4Ltgd1MjS69Rp40=;
	b=JCidO7IZmumPoweu4Ia2JKxdGUtoefRYRg6YT++G/OF6MCwZosq9Teuvs07JwfjiKZkczW
	1slZH0qYEzkmP+2Ab+dUNtqgBsEm33/zr6/Z/oupgO1wRrdBnw8NSK+T+gZe6wq0OrAdc/
	yGAsVUlQ3X7e5vRnWbd7Gl5uMaLkSms=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
Subject: batctl: translocal: Simplify evaluation of last_seen
Date: Mon, 10 May 2021 15:29:53 +0200
Message-Id: <20210510132953.44348-1-sven@narfation.org>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1620653397; a=rsa-sha256;
	cv=none;
	b=mBBpHNwm5xEUK2sii4X+z8K8WRWgI8a0rgK5k4GZzUk4dcWW9TADUkDOG93b+89NgXYy5w
	hKM/+hHUCEaiO2DQpGfbYpSduNWjOI5/+g6JsQ3tdQKNdkEQIjCPUz++Dht7HxXEN1hnzD
	u/1nR/9fpDN3XOjw+DTXthLXG/9hP3g=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=JCidO7IZ;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1620653397;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=2xXJ7WEKT9XD1kkmKglG8HdCOKhF4Ltgd1MjS69Rp40=;
	b=rn0I9HoiplZSDhkmD5WShFOm0JSBW5H0TOrkfWt7U6ow+eD/8qcjjlI8VDFVA8Y3tNHup+
	QUvYU7vu+g097LSPix5HN05ssBdIqsRdfWi8xtD+z7ydaQzpTaswnlBores5tnedIReXpV
	0frZem/KhYHCfBPVvItf/+JjsMm086s=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: WKIBP64G27O23MBAPHECSKNJMUESWFAG
X-Message-ID-Hash: WKIBP64G27O23MBAPHECSKNJMUESWFAG
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/WKIBP64G27O23MBAPHECSKNJMUESWFAG/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

The BATADV_ATTR_LAST_SEEN_MSECS is send from the kernel whenever it is
relevant for the current local translation table entry. It is therefore n=
ot
necessary to only read this value when a specific flag is or is not prese=
nt
in BATADV_ATTR_TT_FLAGS.

Signed-off-by: Sven Eckelmann <sven@narfation.org>

diff --git a/translocal.c b/translocal.c
index a3ad3da57252b336399bdea8bf2ea21442c9cafe..bac6be9e9bd59c20550068495=
197d0d3c74564d5 100644
--- a/translocal.c
+++ b/translocal.c
@@ -89,15 +89,10 @@ static int translocal_callback(struct nl_msg *msg, vo=
id *arg)
 		w =3D 'W';
 	if (flags & BATADV_TT_CLIENT_ISOLA)
 		i =3D 'I';
-
-	if (flags & BATADV_TT_CLIENT_NOPURGE)  {
+	if (flags & BATADV_TT_CLIENT_NOPURGE)
 		p =3D 'P';
-	} else {
-		if (!attrs[BATADV_ATTR_LAST_SEEN_MSECS]) {
-			fputs("Received invalid data from kernel.\n", stderr);
-			exit(1);
-		}
=20
+	if (attrs[BATADV_ATTR_LAST_SEEN_MSECS]) {
 		last_seen_msecs =3D nla_get_u32(
 			attrs[BATADV_ATTR_LAST_SEEN_MSECS]);
 		last_seen_secs =3D last_seen_msecs / 1000;
