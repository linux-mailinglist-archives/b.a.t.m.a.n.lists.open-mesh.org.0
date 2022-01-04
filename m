Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 82D38483EE5
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue,  4 Jan 2022 10:11:42 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 4876684264;
	Tue,  4 Jan 2022 10:11:40 +0100 (CET)
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id B5EF183F18
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue,  4 Jan 2022 10:11:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1641287497;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=/h9aYrIDWmWehSxkrwZ9T2TzZC+/hjyR8an/CxYNq6c=;
	b=Y0vdVeG0sb3EijyfwiuSn9ZDl9e4fHVuGimdwh1SDNOSoN149WG6EFnobK3A98oerdEt2r
	0ldiYu8170frJqzy7z1RTOuMzzC5XA/NiQrk571POn8r1LCheNx///AwScU0b0FWzHzFEf
	0DK6dE+sCCN3IHpgdwLDdVKszoSDoWU=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
Subject: [PATCH 2/2] alfred: Simplify calculation of fixed size IPC TLV length
Date: Tue,  4 Jan 2022 10:11:03 +0100
Message-Id: <20220104091103.162365-2-sven@narfation.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220104091103.162365-1-sven@narfation.org>
References: <20220104091103.162365-1-sven@narfation.org>
MIME-Version: 1.0
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=Y0vdVeG0;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1641287497; a=rsa-sha256;
	cv=none;
	b=aKgws+Dq3frwRJiJmA6WQDJWtnNFUcXJT5Z7Ol3tvebD7BPV/sdpCFni6Z1CUIn4I7mwkt
	8qBrapWy+7q3IKSMVamUHenDE69cJvu2+KL2JB5jS05RCmJc7FBaJ+d5V5J+AeG6Va9IZ8
	4X3KGEGy2EQk2EQryGfL2wrUy+hgN1g=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1641287497;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=/h9aYrIDWmWehSxkrwZ9T2TzZC+/hjyR8an/CxYNq6c=;
	b=Dveme+Z3TBiCxapQt6D7e7dcUEnWAHS1MCl9t+UVmKbMC/fvf6GvJ5P+6RlMT/wMuE5Cye
	UtIiRIdAFgeYiSYvQW54no7SlQGJ/WCmNoocZnRxd9T35aLrbcDI/RNcKuTrpr6xcXLz1e
	ddkJd485TlA2AWE3OT4dW9QlztY58uM=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: MB4QLXBB3AJGUYJQOZRSX66GRFT7V2KQ
X-Message-ID-Hash: MB4QLXBB3AJGUYJQOZRSX66GRFT7V2KQ
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/MB4QLXBB3AJGUYJQOZRSX66GRFT7V2KQ/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Instead of copying the same code to calculate the length of fixed size
TLVs, just use a common macro.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 alfred.h | 3 +++
 client.c | 9 ++++-----
 2 files changed, 7 insertions(+), 5 deletions(-)

diff --git a/alfred.h b/alfred.h
index 26eb157..0e4dd26 100644
--- a/alfred.h
+++ b/alfred.h
@@ -30,6 +30,9 @@
 #define ALFRED_SOCK_PATH_DEFAULT	"/var/run/alfred.sock"
 #define NO_FILTER			-1
=20
+#define FIXED_TLV_LEN(__tlv_type) \
+	htons(sizeof(__tlv_type) - sizeof(__tlv_type.header))
+
 enum data_source {
 	SOURCE_LOCAL =3D 0,
 	SOURCE_FIRST_HAND =3D 1,
diff --git a/client.c b/client.c
index b5faf3b..d0d19fb 100644
--- a/client.c
+++ b/client.c
@@ -38,8 +38,7 @@ int alfred_client_request_data(struct globals *globals)
=20
 	request.header.type =3D ALFRED_REQUEST;
 	request.header.version =3D ALFRED_VERSION;
-	request.header.length =3D sizeof(request) - sizeof(request.header);
-	request.header.length =3D htons(request.header.length);
+	request.header.length =3D FIXED_TLV_LEN(request);
 	request.requested_type =3D globals->clientmode_arg;
 	request.tx_id =3D get_random_id();
=20
@@ -188,7 +187,7 @@ int alfred_client_modeswitch(struct globals *globals)
=20
 	modeswitch.header.type =3D ALFRED_MODESWITCH;
 	modeswitch.header.version =3D ALFRED_VERSION;
-	modeswitch.header.length =3D htons(len - sizeof(modeswitch.header));
+	modeswitch.header.length =3D FIXED_TLV_LEN(modeswitch);
=20
 	switch (globals->opmode) {
 	case OPMODE_SECONDARY:
@@ -264,7 +263,7 @@ int alfred_client_change_interface(struct globals *gl=
obals)
=20
 	change_interface.header.type =3D ALFRED_CHANGE_INTERFACE;
 	change_interface.header.version =3D ALFRED_VERSION;
-	change_interface.header.length =3D htons(len - sizeof(change_interface.=
header));
+	change_interface.header.length =3D FIXED_TLV_LEN(change_interface);
 	strncpy(change_interface.ifaces, globals->change_interface,
 		sizeof(change_interface.ifaces));
 	change_interface.ifaces[sizeof(change_interface.ifaces) - 1] =3D '\0';
@@ -312,7 +311,7 @@ int alfred_client_change_bat_iface(struct globals *gl=
obals)
=20
 	change_bat_iface.header.type =3D ALFRED_CHANGE_BAT_IFACE;
 	change_bat_iface.header.version =3D ALFRED_VERSION;
-	change_bat_iface.header.length =3D htons(len - sizeof(change_bat_iface.=
header));
+	change_bat_iface.header.length =3D FIXED_TLV_LEN(change_bat_iface);
 	strncpy(change_bat_iface.bat_iface, globals->mesh_iface,
 		sizeof(change_bat_iface.bat_iface));
 	change_bat_iface.bat_iface[sizeof(change_bat_iface.bat_iface) - 1] =3D =
'\0';
--=20
2.30.2
