Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 49EA24BD0A1
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 20 Feb 2022 19:36:31 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 352F281A86;
	Sun, 20 Feb 2022 19:36:30 +0100 (CET)
Received: from s2.neomailbox.net (s2.neomailbox.net [5.148.176.60])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id B159580DA4
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 20 Feb 2022 19:36:26 +0100 (CET)
From: Marek Lindner <mareklindner@neomailbox.ch>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: [PATCH v4] alfred: introduce 'server status' IPC call
Date: Sun, 20 Feb 2022 19:36:14 +0100
Message-Id: <20220220183614.54865-1-mareklindner@neomailbox.ch>
MIME-Version: 1.0
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	dmarc=none;
	spf=pass (diktynna.open-mesh.org: domain of mareklindner@neomailbox.ch designates 5.148.176.60 as permitted sender) smtp.mailfrom=mareklindner@neomailbox.ch
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1645382187; a=rsa-sha256;
	cv=none;
	b=KyYUwATixsWqi6vE47UKhNxQ+v0CEmCPXEv9qzbkFAv+AoBNCLkDe3weNWJNawsDjvE+64
	KUpNh+lnNFvE6chRN8fMVpYUUT5jsTYpWaQiyZtrQm0eSL5q+OPaBiNHOFOUrsPMWBYzhT
	anvSwuxIncYKPA1SLfiCF04B8Ht23BM=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1645382187;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=THsk7lxdSgzOdwLg7mNZzzRuaqbsaN8shdhFT/t4w5M=;
	b=TvB/kI08nGwiR+lEGhBxO6NSOKya6kO18HsBm82KpkKni/0vkDtMmMFz8eZDG4ruyfBWdZ
	4Fve1io0sbA2kDGSZVkpokg9uDUDya6oQ+ID/+MfrK5mrF3z0Xw0Ngoll+3F45z0vM2Eas
	QWGFBbb138kKRZdZYaCZ/k61bURPN0U=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: AW6W3WZ2UZS56J75TIW2N2F7HPMXFSOX
X-Message-ID-Hash: AW6W3WZ2UZS56J75TIW2N2F7HPMXFSOX
X-MailFrom: mareklindner@neomailbox.ch
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: Marek Lindner <mareklindner@neomailbox.ch>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/AW6W3WZ2UZS56J75TIW2N2F7HPMXFSOX/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

The 'server status' call exports the 'mode' as well as interface
status via IPC. Both parameters can be modified at runtime via the
IPC and as such, the current configuration is dynamic and not
necessarily obvious.

The server status 'request' and 'reply' packet types are added
to allow the IPC client to initiate the status retrieval. The
server will respond with the 'reply' message.

The information is encapsulated in TLV data chunks allowing for
future backward compatible extension of the server status call.

Signed-off-by: Marek Lindner <mareklindner@neomailbox.ch>
---
v4:
 - buffer safety checks in server code
 - move tlv type definitions into packet header
 - version checks for sub tlv
v3:
 - close client socket at the end of unix_sock_server_status()

 alfred.h     |   5 +++
 client.c     | 120 +++++++++++++++++++++++++++++++++++++++++++++++++++
 main.c       |   9 +++-
 man/alfred.8 |   3 ++
 packet.h     |  68 +++++++++++++++++++++++++++++
 unix_sock.c  | 106 +++++++++++++++++++++++++++++++++++++++++++++
 6 files changed, 310 insertions(+), 1 deletion(-)

diff --git a/alfred.h b/alfred.h
index 9ab92a2..598d38b 100644
--- a/alfred.h
+++ b/alfred.h
@@ -33,6 +33,9 @@
 #define FIXED_TLV_LEN(__tlv_type) \
 	htons(sizeof(__tlv_type) - sizeof(__tlv_type.header))
=20
+#define FIXED_TLV_LEN_PTR(__tlv_type) \
+	htons(sizeof(*__tlv_type) - sizeof(__tlv_type->header))
+
 enum data_source {
 	SOURCE_LOCAL =3D 0,
 	SOURCE_FIRST_HAND =3D 1,
@@ -93,6 +96,7 @@ enum clientmode {
 	CLIENT_MODESWITCH,
 	CLIENT_CHANGE_INTERFACE,
 	CLIENT_CHANGE_BAT_IFACE,
+	CLIENT_SERVER_STATUS,
 };
=20
 struct interface {
@@ -155,6 +159,7 @@ int alfred_client_set_data(struct globals *globals);
 int alfred_client_modeswitch(struct globals *globals);
 int alfred_client_change_interface(struct globals *globals);
 int alfred_client_change_bat_iface(struct globals *globals);
+int alfred_client_server_status(struct globals *globals);
 /* recv.c */
 int recv_alfred_packet(struct globals *globals, struct interface *interf=
ace,
 		       int recv_sock);
diff --git a/client.c b/client.c
index b5d8943..ab4bba6 100644
--- a/client.c
+++ b/client.c
@@ -325,3 +325,123 @@ int alfred_client_change_bat_iface(struct globals *=
globals)
=20
 	return 0;
 }
+
+int alfred_client_server_status(struct globals *globals)
+{
+	struct alfred_server_status_net_iface_v0 *status_net_iface;
+	struct alfred_server_status_bat_iface_v0 *status_bat_iface;
+	struct alfred_server_status_op_mode_v0 *status_op_mode;
+	struct alfred_server_status_req_v0 status_req;
+	struct alfred_server_status_rep_v0 *status_rep;
+	int ret, tlvsize, headsize, len, consumed;
+	struct alfred_tlv *status_tlv;
+	uint8_t buf[MAX_PAYLOAD];
+
+	if (unix_sock_open_client(globals))
+		return -1;
+
+	len =3D sizeof(status_req);
+	memset(&status_req, 0, len);
+
+	status_req.header.type =3D ALFRED_SERVER_STATUS;
+	status_req.header.version =3D ALFRED_VERSION;
+	status_req.header.length =3D 0;
+
+	ret =3D write(globals->unix_sock, (unsigned char *)&status_req, len);
+	if (ret !=3D len)
+		fprintf(stderr, "%s: only wrote %d of %d bytes: %s\n",
+			__func__, ret, len, strerror(errno));
+
+	len =3D read(globals->unix_sock, buf, sizeof(buf));
+	if (len <=3D 0) {
+		perror("read from unix socket failed");
+		goto err;
+	}
+
+	ret =3D -1;
+	status_rep =3D (struct alfred_server_status_rep_v0 *)buf;
+
+	/* drop too small packets */
+	headsize =3D sizeof(status_rep->header);
+	if (len < headsize) {
+		perror("unexpected header size received from unix socket");
+		goto err;
+	}
+
+	if ((len - headsize) < ((int)ntohs(status_rep->header.length))) {
+		perror("unexpected packet size received from unix socket");
+		goto err;
+	}
+
+	if (status_rep->header.version !=3D ALFRED_VERSION) {
+		perror("alfred version mismatch");
+		goto err;
+	}
+
+	headsize =3D ntohs(status_rep->header.length);
+
+	if (headsize < (int)(sizeof(*status_rep) - sizeof(status_rep->header)))
+		goto err;
+
+	consumed =3D sizeof(*status_rep);
+
+	while (len - consumed > 0) {
+		if (len - consumed < (int)sizeof(*status_tlv))
+			break;
+
+		status_tlv =3D (struct alfred_tlv *)(buf + consumed);
+
+		if (status_tlv->version !=3D ALFRED_VERSION)
+			break;
+
+		tlvsize =3D ntohs(status_tlv->length);
+		tlvsize +=3D sizeof(*status_tlv);
+
+		if (len - consumed < tlvsize)
+			break;
+
+		switch (status_tlv->type) {
+		case ALFRED_SERVER_OP_MODE:
+			if (tlvsize !=3D sizeof(*status_op_mode))
+				break;
+
+			status_op_mode =3D (struct alfred_server_status_op_mode_v0 *)(buf + c=
onsumed);
+
+			switch (status_op_mode->mode) {
+			case ALFRED_MODESWITCH_SECONDARY:
+				fprintf(stdout, "- mode: secondary\n");
+				break;
+			case ALFRED_MODESWITCH_PRIMARY:
+				fprintf(stdout, "- mode: primary\n");
+				break;
+			default:
+				fprintf(stderr, "- mode: unknown\n");
+				break;
+			}
+
+			break;
+		case ALFRED_SERVER_NET_IFACE:
+			if (tlvsize !=3D sizeof(*status_net_iface))
+				break;
+
+			status_net_iface =3D (struct alfred_server_status_net_iface_v0 *)(buf=
 + consumed);
+			fprintf(stdout, "- interface: %s\n", status_net_iface->net_iface);
+			fprintf(stdout, "\t- status: %s\n",
+				status_net_iface->active =3D=3D 1 ? "active" : "inactive");
+			break;
+		case ALFRED_SERVER_BAT_IFACE:
+			if (tlvsize !=3D sizeof(*status_bat_iface))
+				break;
+
+			status_bat_iface =3D (struct alfred_server_status_bat_iface_v0 *)(buf=
 + consumed);
+			fprintf(stdout, "- batman-adv interface: %s\n", status_bat_iface->bat=
_iface);
+			break;
+		}
+
+		consumed +=3D tlvsize;
+	}
+
+err:
+	unix_sock_close(globals);
+	return 0;
+}
diff --git a/main.c b/main.c
index d40a0cc..68d6efd 100644
--- a/main.c
+++ b/main.c
@@ -38,6 +38,7 @@ static void alfred_usage(void)
 	printf("                   secondary          switch daemon to mode sec=
ondary\n");
 	printf("  -I, --change-interface [interface]  change to the specified i=
nterface(s)\n");
 	printf("  -B, --change-bat-iface [interface]  change to the specified b=
atman-adv interface\n");
+	printf("  -S, --server-status                 request server status inf=
o such as mode & interfaces\n");
 	printf("\n");
 	printf("server mode options:\n");
 	printf("  -i, --interface                     specify the interface (or=
 comma separated list of interfaces) to listen on\n");
@@ -162,6 +163,7 @@ static struct globals *alfred_init(int argc, char *ar=
gv[])
 		{"modeswitch",		required_argument,	NULL,	'M'},
 		{"change-interface",	required_argument,	NULL,	'I'},
 		{"change-bat-iface",	required_argument,	NULL,	'B'},
+		{"server-status",	required_argument,	NULL,	'S'},
 		{"unix-path",		required_argument,	NULL,	'u'},
 		{"update-command",	required_argument,	NULL,	'c'},
 		{"version",		no_argument,		NULL,	'v'},
@@ -196,7 +198,7 @@ static struct globals *alfred_init(int argc, char *ar=
gv[])
=20
 	time_random_seed();
=20
-	while ((opt =3D getopt_long(argc, argv, "ms:r:hi:b:vV:M:I:B:u:dc:p:4:f"=
, long_options,
+	while ((opt =3D getopt_long(argc, argv, "ms:r:hi:b:vV:M:I:B:Su:dc:p:4:f=
", long_options,
 				  &opt_ind)) !=3D -1) {
 		switch (opt) {
 		case 'r':
@@ -258,6 +260,9 @@ static struct globals *alfred_init(int argc, char *ar=
gv[])
 			globals->clientmode =3D CLIENT_CHANGE_BAT_IFACE;
 			globals->mesh_iface =3D strdup(optarg);
 			break;
+		case 'S':
+			globals->clientmode =3D CLIENT_SERVER_STATUS;
+			break;
 		case 'u':
 			globals->unix_path =3D optarg;
 			break;
@@ -321,6 +326,8 @@ int main(int argc, char *argv[])
 		return alfred_client_change_interface(globals);
 	case CLIENT_CHANGE_BAT_IFACE:
 		return alfred_client_change_bat_iface(globals);
+	case CLIENT_SERVER_STATUS:
+		return alfred_client_server_status(globals);
 	}
=20
 	return 0;
diff --git a/man/alfred.8 b/man/alfred.8
index 74814e0..cf0eafc 100644
--- a/man/alfred.8
+++ b/man/alfred.8
@@ -94,6 +94,9 @@ Change the alfred server to use the new \fBinterface\fP=
(s)
 .TP
 \fB\-B\fP, \fB\-\-change\-bat\-iface\fP \fIinterface\fP
 Change the alfred server to use the new \fBbatman-adv interface\fP
+.TP
+\fB\-S\fP, \fB\-\-server\-status\fP
+Request server status information such as mode & interfaces\fP
 .
 .SH SERVER OPTIONS
 .TP
diff --git a/packet.h b/packet.h
index 94c6a77..0c1a2eb 100644
--- a/packet.h
+++ b/packet.h
@@ -69,6 +69,7 @@ enum alfred_packet_type {
 	ALFRED_MODESWITCH =3D 5,
 	ALFRED_CHANGE_INTERFACE =3D 6,
 	ALFRED_CHANGE_BAT_IFACE =3D 7,
+	ALFRED_SERVER_STATUS =3D 8,
 };
=20
 /* packets */
@@ -159,6 +160,73 @@ struct alfred_change_interface_v0 {
 struct alfred_change_bat_iface_v0 {
 	struct alfred_tlv header;
 	char bat_iface[IFNAMSIZ];
+};
+
+/**
+ * enum alfred_packet_type - Types of packet stored in the main alfred_t=
lv
+ * @ALFRED_SERVER_MODE: Contains alfred mode information*
+ * @ALFRED_SERVER_NET_IFACE: Contains alfred network interface informati=
on*
+ * @ALFRED_SERVER_BAT_IFACE: Contains alfred batman interface informatio=
n*
+ */
+enum alfred_server_status_type {
+	ALFRED_SERVER_OP_MODE =3D 0,
+	ALFRED_SERVER_NET_IFACE =3D 1,
+	ALFRED_SERVER_BAT_IFACE =3D 2,
+};
+
+/**
+ * struct alfred_server_status_req_v0 - server status request
+ * @header: TLV header describing the complete packet
+ *
+ * Sent to the daemon by client
+ */
+struct alfred_server_status_req_v0 {
+	struct alfred_tlv header;
+} __packed;
+
+/**
+ * struct alfred_server_status_op_mode_v0 - server op mode status inform=
ation
+ * @op_mode: active op mode
+ *
+ * Sent to the client by daemon in response to status request
+ */
+struct alfred_server_status_op_mode_v0 {
+	struct alfred_tlv header;
+	uint8_t mode;
+} __packed;
+
+/**
+ * struct alfred_server_status_net_iface_v0 - server net iface status in=
formation
+ * @net_iface: configured network interface
+ * @active: network interface active/inactive status info
+ *
+ * Sent to the client by daemon in response to status request
+ */
+struct alfred_server_status_net_iface_v0 {
+	struct alfred_tlv header;
+	char net_iface[IFNAMSIZ];
+	uint8_t active;
+} __packed;
+
+/**
+ * struct alfred_server_status_bat_iface_v0 - server bat iface status in=
formation
+ * @op_mode: configured batman interface
+ *
+ * Sent to the client by daemon in response to status request
+ */
+struct alfred_server_status_bat_iface_v0 {
+	struct alfred_tlv header;
+	char bat_iface[IFNAMSIZ];
+} __packed;
+
+/**
+ * struct alfred_server_status_rep_v0 - server status reply
+ * @header: TLV header describing the complete packet
+ *
+ * Sent by the daemon to client in response to status request
+ */
+struct alfred_server_status_rep_v0 {
+	struct alfred_tlv header;
 } __packed;
=20
 /**
diff --git a/unix_sock.c b/unix_sock.c
index bc39199..a5a0196 100644
--- a/unix_sock.c
+++ b/unix_sock.c
@@ -366,6 +366,109 @@ err:
 	return ret;
 }
=20
+static int unix_sock_server_status(struct globals *globals, int client_s=
ock)
+{
+	struct alfred_server_status_net_iface_v0 *status_net_iface;
+	struct alfred_server_status_bat_iface_v0 *status_bat_iface;
+	struct alfred_server_status_op_mode_v0 *status_op_mode;
+	struct alfred_server_status_rep_v0 *status_rep;
+	struct interface *interface;
+	uint8_t buf[MAX_PAYLOAD];
+	int ret =3D -1;
+	int len =3D 0;
+
+	/* too large? - should never happen */
+	if (sizeof(*status_rep) + len > sizeof(buf)) {
+		fprintf(stderr, "ERROR: send buffer too small for server_status\n");
+		goto err;
+	}
+
+	status_rep =3D (struct alfred_server_status_rep_v0 *)buf;
+	status_rep->header.type =3D ALFRED_SERVER_STATUS;
+	status_rep->header.version =3D ALFRED_VERSION;
+
+	len +=3D sizeof(*status_rep);
+
+	/* too large? - should never happen */
+	if (sizeof(*status_op_mode) + len > sizeof(buf)) {
+		fprintf(stderr, "ERROR: send buffer too small for server_status op_mod=
e\n");
+		goto err;
+	}
+
+	status_op_mode =3D (struct alfred_server_status_op_mode_v0 *)(buf + len=
);
+	status_op_mode->header.type =3D ALFRED_SERVER_OP_MODE;
+	status_op_mode->header.version =3D ALFRED_VERSION;
+	status_op_mode->header.length =3D FIXED_TLV_LEN_PTR(status_op_mode);
+
+	switch (globals->opmode) {
+	case OPMODE_SECONDARY:
+		status_op_mode->mode =3D ALFRED_MODESWITCH_SECONDARY;
+		break;
+	case OPMODE_PRIMARY:
+		status_op_mode->mode =3D ALFRED_MODESWITCH_PRIMARY;
+		break;
+	default:
+		break;
+	}
+
+	len +=3D sizeof(*status_op_mode);
+
+	list_for_each_entry(interface, &globals->interfaces, list) {
+		/* too large? - should never happen */
+		if (sizeof(*status_net_iface) + len > sizeof(buf)) {
+			fprintf(stderr, "ERROR: send buffer too small for server_status iface=
\n");
+			goto err;
+		}
+
+		status_net_iface =3D (struct alfred_server_status_net_iface_v0 *)(buf =
+ len);
+		status_net_iface->header.type =3D ALFRED_SERVER_NET_IFACE;
+		status_net_iface->header.version =3D ALFRED_VERSION;
+		status_net_iface->header.length =3D FIXED_TLV_LEN_PTR(status_net_iface=
);
+
+		strncpy(status_net_iface->net_iface, interface->interface,
+			sizeof(status_net_iface->net_iface));
+		status_net_iface->net_iface[sizeof(status_net_iface->net_iface) - 1] =3D=
 '\0';
+		if (interface->netsock > -1)
+			status_net_iface->active =3D 1;
+		else
+			status_net_iface->active =3D 0;
+
+		len +=3D sizeof(*status_net_iface);
+	}
+
+	/* too large? - should never happen */
+	if (sizeof(*status_bat_iface) + len > sizeof(buf)) {
+		fprintf(stderr, "ERROR: send buffer too small for server_status bat_if=
ace\n");
+		goto err;
+	}
+
+	status_bat_iface =3D (struct alfred_server_status_bat_iface_v0 *)(buf +=
 len);
+	status_bat_iface->header.type =3D ALFRED_SERVER_BAT_IFACE;
+	status_bat_iface->header.version =3D ALFRED_VERSION;
+	status_bat_iface->header.length =3D FIXED_TLV_LEN_PTR(status_bat_iface)=
;
+
+	strncpy(status_bat_iface->bat_iface, globals->mesh_iface,
+		sizeof(status_bat_iface->bat_iface));
+	status_bat_iface->bat_iface[sizeof(status_bat_iface->bat_iface) - 1] =3D=
 '\0';
+
+	len +=3D sizeof(*status_bat_iface);
+	status_rep->header.length =3D htons(len - sizeof(status_rep->header));
+
+	ret =3D write(client_sock, buf, len);
+	if (ret !=3D len) {
+		fprintf(stderr, "%s: only wrote %d of %d bytes: %s\n",
+			__func__, ret, len, strerror(errno));
+		ret =3D -1;
+		goto err;
+	}
+
+	ret =3D 0;
+
+err:
+	close(client_sock);
+	return ret;
+}
+
 int unix_sock_read(struct globals *globals)
 {
 	int client_sock;
@@ -428,6 +531,9 @@ int unix_sock_read(struct globals *globals)
 						 (struct alfred_change_bat_iface_v0 *)packet,
 						 client_sock);
 		break;
+	case ALFRED_SERVER_STATUS:
+		ret =3D unix_sock_server_status(globals, client_sock);
+		break;
 	default:
 		/* unknown packet type */
 		ret =3D -1;
--=20
2.32.0.rc0
