Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 70B9D483EE4
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue,  4 Jan 2022 10:11:38 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 5211983DA4;
	Tue,  4 Jan 2022 10:11:37 +0100 (CET)
Received: from dvalin.narfation.org (dvalin.narfation.org [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id B5966804DC
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue,  4 Jan 2022 10:11:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1641287494;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=x4ZuxcQKn5Kd6na7ZtlXyyNr+dE1DE2xOyqNWjhcXyw=;
	b=qcHb/Po4d7aCLX9PMnGOlLcr/kvUkG7iw0bXCJ84FdW6243R67PFqSqb5DtUsCAVkLr9K7
	+q67Te5gADAc660pFt8CExLdrCZZOTKDJ0M/m6p4x+DBK+y9AG57/kXZ6Wga2gfoGOpt/V
	NhyKVu6PqedANNQcrEHicKDduCQeTiQ=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
Subject: [PATCH 1/2] alfred: Avoid large send buffer for fixed size IPC commands
Date: Tue,  4 Jan 2022 10:11:02 +0100
Message-Id: <20220104091103.162365-1-sven@narfation.org>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b="qcHb/Po4";
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1641287494; a=rsa-sha256;
	cv=none;
	b=DitUNkU1wa5nQPx8PhKe05M52kXxcelNFbWYB29PmZF8UG9bbHzmfqVWrtbkUWo9/15YXx
	eqZqENPldEbkrQpLCAw5QwRFZwcZquH6J++Rg79dv7orcccd3mCeVE4sXrOJ8CVs9fta8m
	w7wKWUoLQo1XjtHLZlvIt2rOBFgdjJA=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1641287494;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=x4ZuxcQKn5Kd6na7ZtlXyyNr+dE1DE2xOyqNWjhcXyw=;
	b=G6MGhrKv++v723eGJg6qFcxbsL+6utH+i4hOM3TQhea1LHPdrd/JiF6vdqJdAjD2yUNVi/
	uIQ1JLKfH4miW62Fwuy18TR9LZUzQWfQf5C2giFPa4I/Al3muZJpzByIdOE9PXTBfVi1Ys
	T5SByShgKQ2EXnnoso+VwK4C8n445gE=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: MA5NJ2ME6INLETW2IFM7QCWTHYIZXH7G
X-Message-ID-Hash: MA5NJ2ME6INLETW2IFM7QCWTHYIZXH7G
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/MA5NJ2ME6INLETW2IFM7QCWTHYIZXH7G/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

For data related IPC commands, a buffer of 65527 bytes is necessary to se=
nd
or receive a complete command. But for non-data related IPC commands
usually have a fixed size. It is therefore enough to allocate exactly the
minimum required amount of bytes on the stack for non-data related IPC
commands.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 client.c | 83 ++++++++++++++++++++++++++------------------------------
 1 file changed, 38 insertions(+), 45 deletions(-)

diff --git a/client.c b/client.c
index e1107bf..b5faf3b 100644
--- a/client.c
+++ b/client.c
@@ -23,7 +23,7 @@
 int alfred_client_request_data(struct globals *globals)
 {
 	unsigned char buf[MAX_PAYLOAD], *pos;
-	struct alfred_request_v0 *request;
+	struct alfred_request_v0 request;
 	struct alfred_push_data_v0 *push;
 	struct alfred_status_v0 *status;
 	struct alfred_tlv *tlv;
@@ -34,17 +34,16 @@ int alfred_client_request_data(struct globals *global=
s)
 	if (unix_sock_open_client(globals))
 		return -1;
=20
-	request =3D (struct alfred_request_v0 *)buf;
-	len =3D sizeof(*request);
+	len =3D sizeof(request);
=20
-	request->header.type =3D ALFRED_REQUEST;
-	request->header.version =3D ALFRED_VERSION;
-	request->header.length =3D sizeof(*request) - sizeof(request->header);
-	request->header.length =3D htons(request->header.length);
-	request->requested_type =3D globals->clientmode_arg;
-	request->tx_id =3D get_random_id();
+	request.header.type =3D ALFRED_REQUEST;
+	request.header.version =3D ALFRED_VERSION;
+	request.header.length =3D sizeof(request) - sizeof(request.header);
+	request.header.length =3D htons(request.header.length);
+	request.requested_type =3D globals->clientmode_arg;
+	request.tx_id =3D get_random_id();
=20
-	ret =3D write(globals->unix_sock, buf, len);
+	ret =3D write(globals->unix_sock, &request, len);
 	if (ret !=3D len)
 		fprintf(stderr, "%s: only wrote %d of %d bytes: %s\n",
 			__func__, ret, len, strerror(errno));
@@ -179,26 +178,24 @@ int alfred_client_set_data(struct globals *globals)
=20
 int alfred_client_modeswitch(struct globals *globals)
 {
-	unsigned char buf[MAX_PAYLOAD];
-	struct alfred_modeswitch_v0 *modeswitch;
+	struct alfred_modeswitch_v0 modeswitch;
 	int ret, len;
=20
 	if (unix_sock_open_client(globals))
 		return -1;
=20
-	modeswitch =3D (struct alfred_modeswitch_v0 *)buf;
-	len =3D sizeof(*modeswitch);
+	len =3D sizeof(modeswitch);
=20
-	modeswitch->header.type =3D ALFRED_MODESWITCH;
-	modeswitch->header.version =3D ALFRED_VERSION;
-	modeswitch->header.length =3D htons(len - sizeof(modeswitch->header));
+	modeswitch.header.type =3D ALFRED_MODESWITCH;
+	modeswitch.header.version =3D ALFRED_VERSION;
+	modeswitch.header.length =3D htons(len - sizeof(modeswitch.header));
=20
 	switch (globals->opmode) {
 	case OPMODE_SECONDARY:
-		modeswitch->mode =3D ALFRED_MODESWITCH_SECONDARY;
+		modeswitch.mode =3D ALFRED_MODESWITCH_SECONDARY;
 		break;
 	case OPMODE_PRIMARY:
-		modeswitch->mode =3D ALFRED_MODESWITCH_PRIMARY;
+		modeswitch.mode =3D ALFRED_MODESWITCH_PRIMARY;
 		break;
 	default:
 		fprintf(stderr, "%s: unknown opmode %u in modeswitch\n",
@@ -206,7 +203,7 @@ int alfred_client_modeswitch(struct globals *globals)
 		return -1;
 	}
=20
-	ret =3D write(globals->unix_sock, buf, len);
+	ret =3D write(globals->unix_sock, &modeswitch, len);
 	if (ret !=3D len)
 		fprintf(stderr, "%s: only wrote %d of %d bytes: %s\n",
 			__func__, ret, len, strerror(errno));
@@ -248,8 +245,7 @@ static int check_interface(const char *iface)
=20
 int alfred_client_change_interface(struct globals *globals)
 {
-	unsigned char buf[MAX_PAYLOAD];
-	struct alfred_change_interface_v0 *change_interface;
+	struct alfred_change_interface_v0 change_interface;
 	int ret, len;
 	char *input, *token, *saveptr;
 	size_t interface_len;
@@ -258,24 +254,23 @@ int alfred_client_change_interface(struct globals *=
globals)
 		return -1;
=20
 	interface_len =3D strlen(globals->change_interface);
-	if (interface_len > sizeof(change_interface->ifaces)) {
+	if (interface_len > sizeof(change_interface.ifaces)) {
 		fprintf(stderr, "%s: interface name list too long, not changing\n",
 			__func__);
 		return 0;
 	}
=20
-	change_interface =3D (struct alfred_change_interface_v0 *)buf;
-	len =3D sizeof(*change_interface);
+	len =3D sizeof(change_interface);
=20
-	change_interface->header.type =3D ALFRED_CHANGE_INTERFACE;
-	change_interface->header.version =3D ALFRED_VERSION;
-	change_interface->header.length =3D htons(len - sizeof(change_interface=
->header));
-	strncpy(change_interface->ifaces, globals->change_interface,
-		sizeof(change_interface->ifaces));
-	change_interface->ifaces[sizeof(change_interface->ifaces) - 1] =3D '\0'=
;
+	change_interface.header.type =3D ALFRED_CHANGE_INTERFACE;
+	change_interface.header.version =3D ALFRED_VERSION;
+	change_interface.header.length =3D htons(len - sizeof(change_interface.=
header));
+	strncpy(change_interface.ifaces, globals->change_interface,
+		sizeof(change_interface.ifaces));
+	change_interface.ifaces[sizeof(change_interface.ifaces) - 1] =3D '\0';
=20
 	/* test it before sending
-	 * globals->change_interface is now saved in change_interface->ifaces
+	 * globals->change_interface is now saved in change_interface.ifaces
 	 * and can be modified by strtok_r
 	 */
 	input =3D globals->change_interface;
@@ -287,7 +282,7 @@ int alfred_client_change_interface(struct globals *gl=
obals)
 			return 0;
 	}
=20
-	ret =3D write(globals->unix_sock, buf, len);
+	ret =3D write(globals->unix_sock, &change_interface, len);
 	if (ret !=3D len)
 		fprintf(stderr, "%s: only wrote %d of %d bytes: %s\n",
 			__func__, ret, len, strerror(errno));
@@ -299,8 +294,7 @@ int alfred_client_change_interface(struct globals *gl=
obals)
=20
 int alfred_client_change_bat_iface(struct globals *globals)
 {
-	unsigned char buf[MAX_PAYLOAD];
-	struct alfred_change_bat_iface_v0 *change_bat_iface;
+	struct alfred_change_bat_iface_v0 change_bat_iface;
 	int ret, len;
 	size_t interface_len;
=20
@@ -308,23 +302,22 @@ int alfred_client_change_bat_iface(struct globals *=
globals)
 		return -1;
=20
 	interface_len =3D strlen(globals->mesh_iface);
-	if (interface_len > sizeof(change_bat_iface->bat_iface)) {
+	if (interface_len > sizeof(change_bat_iface.bat_iface)) {
 		fprintf(stderr, "%s: batman-adv interface name list too long, not chan=
ging\n",
 			__func__);
 		return 0;
 	}
=20
-	change_bat_iface =3D (struct alfred_change_bat_iface_v0 *)buf;
-	len =3D sizeof(*change_bat_iface);
+	len =3D sizeof(change_bat_iface);
=20
-	change_bat_iface->header.type =3D ALFRED_CHANGE_BAT_IFACE;
-	change_bat_iface->header.version =3D ALFRED_VERSION;
-	change_bat_iface->header.length =3D htons(len - sizeof(change_bat_iface=
->header));
-	strncpy(change_bat_iface->bat_iface, globals->mesh_iface,
-		sizeof(change_bat_iface->bat_iface));
-	change_bat_iface->bat_iface[sizeof(change_bat_iface->bat_iface) - 1] =3D=
 '\0';
+	change_bat_iface.header.type =3D ALFRED_CHANGE_BAT_IFACE;
+	change_bat_iface.header.version =3D ALFRED_VERSION;
+	change_bat_iface.header.length =3D htons(len - sizeof(change_bat_iface.=
header));
+	strncpy(change_bat_iface.bat_iface, globals->mesh_iface,
+		sizeof(change_bat_iface.bat_iface));
+	change_bat_iface.bat_iface[sizeof(change_bat_iface.bat_iface) - 1] =3D =
'\0';
=20
-	ret =3D write(globals->unix_sock, buf, len);
+	ret =3D write(globals->unix_sock, &change_bat_iface, len);
 	if (ret !=3D len)
 		fprintf(stderr, "%s: only wrote %d of %d bytes: %s\n",
 			__func__, ret, len, strerror(errno));
--=20
2.30.2
