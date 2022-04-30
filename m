Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 6596A515C5A
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 30 Apr 2022 12:57:07 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 2E2F180BBC;
	Sat, 30 Apr 2022 12:57:06 +0200 (CEST)
Received: from s2.neomailbox.net (s2.neomailbox.net [5.148.176.60])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id DC3FF80BBC
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 30 Apr 2022 12:57:01 +0200 (CEST)
From: Marek Lindner <mareklindner@neomailbox.ch>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: [PATCH] alfred: notify event listener via unix socket
Date: Sat, 30 Apr 2022 12:56:47 +0200
Message-Id: <20220430105647.340588-1-mareklindner@neomailbox.ch>
MIME-Version: 1.0
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1651316223; a=rsa-sha256;
	cv=none;
	b=qiUXD8XE4GbZoy8cjzdEOL1LqBDjw57xI/HHsVNSzLFkOV6wjkzGL4C00UyP50i0V6swN1
	7ZitjYoMIx8u91oGPzOqNzrE6ykCJ+t5T/XuH+CggvJ7BCkaS6kO4CpRIi0ZKkFAN7D4FW
	8XTSFtaCzDyB6W56YWd1V8HijFjaHEc=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of mareklindner@neomailbox.ch designates 5.148.176.60 as permitted sender) smtp.mailfrom=mareklindner@neomailbox.ch;
	dmarc=none
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1651316223;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=qE7BTdWLGenWnRT2r2PSBQ7IRqNk+wxfZvWM50OVOw0=;
	b=KZu0kBKDz0x084p1qam3PMQq1+Bj8beBgWe2lTgxRGO92TJ8ye6QDNpTpzZhRcOAjZCsSj
	pVfposwMzgVLZyk2LQJZFepGc3AvjaDhU9Y4upeIQpm+qXf1La58UTIvDv2J3yd++m6OEs
	7hzIh8EiFRcWZm/xuxRoEw0MDyND71k=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: W7R27HULYAHWRYTYDMRKCMGM25XJSDSI
X-Message-ID-Hash: W7R27HULYAHWRYTYDMRKCMGM25XJSDSI
X-MailFrom: mareklindner@neomailbox.ch
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: Marek Lindner <mareklindner@neomailbox.ch>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/W7R27HULYAHWRYTYDMRKCMGM25XJSDSI/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

The alfred server instance accepts event notification registration
via the unix socket. These notification sockets only inform
registered parties of the availibility of an alfred datatype change.
The actual data itself needs to be retrieved via the existing data
retrieval mechanisms.

Unlike the update-command this event monitor allows:

- multiple parallel listeners
- programmatic access to changes without requiring multiple processes

The alfred client allows to monitor events via the newly added '-E'
(event monitor) command line option. Serving as debugging tool and
example code at the same time.

Signed-off-by: Marek Lindner <mareklindner@neomailbox.ch>
---
 alfred.h     |  15 ++++++
 client.c     |  54 ++++++++++++++++++++
 main.c       |  10 +++-
 man/alfred.8 |   3 ++
 packet.h     |  26 ++++++++++
 recv.c       |   4 +-
 server.c     |   5 ++
 unix_sock.c  | 142 +++++++++++++++++++++++++++++++++++++++++++++++++++
 8 files changed, 257 insertions(+), 2 deletions(-)

diff --git a/alfred.h b/alfred.h
index 2d98a30..f442c48 100644
--- a/alfred.h
+++ b/alfred.h
@@ -94,6 +94,7 @@ enum clientmode {
 	CLIENT_CHANGE_INTERFACE,
 	CLIENT_CHANGE_BAT_IFACE,
 	CLIENT_SERVER_STATUS,
+	CLIENT_EVENT_MONITOR,
 };
=20
 struct interface {
@@ -110,8 +111,15 @@ struct interface {
 	struct list_head list;
 };
=20
+struct event_listener {
+	int fd;
+
+	struct list_head list;
+};
+
 struct globals {
 	struct list_head interfaces;
+	struct list_head event_listeners;
=20
 	char *net_iface;
 	struct server *best_server;	/* NULL if we are a server ourselves */
@@ -157,6 +165,7 @@ int alfred_client_modeswitch(struct globals *globals)=
;
 int alfred_client_change_interface(struct globals *globals);
 int alfred_client_change_bat_iface(struct globals *globals);
 int alfred_client_server_status(struct globals *globals);
+int alfred_client_event_monitor(struct globals *globals);
 /* recv.c */
 int recv_alfred_packet(struct globals *globals, struct interface *interf=
ace,
 		       int recv_sock);
@@ -186,6 +195,12 @@ int unix_sock_open_client(struct globals *globals);
 int unix_sock_close(struct globals *globals);
 int unix_sock_req_data_finish(struct globals *globals,
 			      struct transaction_head *head);
+int unix_sock_events_select_prepare(struct globals *globals, fd_set *fds=
,
+				    fd_set *errfds, int maxsock);
+void unix_sock_events_select_handle(struct globals *globals,
+				    fd_set *fds, fd_set *errfds);
+void unix_sock_events_close_all(struct globals *globals);
+void unix_sock_event_notify(struct globals *globals, uint8_t type);
 /* vis.c */
 int vis_update_data(struct globals *globals);
 /* netsock.c */
diff --git a/client.c b/client.c
index 81cdd7c..9e88f47 100644
--- a/client.c
+++ b/client.c
@@ -452,3 +452,57 @@ err:
 	unix_sock_close(globals);
 	return 0;
 }
+
+int alfred_client_event_monitor(struct globals *globals)
+{
+	struct alfred_event_register_v0 event_register;
+	struct alfred_event_notify_v0 event_notify;
+	int ret, len;
+
+	if (unix_sock_open_client(globals))
+		return -1;
+
+	len =3D sizeof(event_register);
+
+	event_register.header.type =3D ALFRED_EVENT_REGISTER;
+	event_register.header.version =3D ALFRED_VERSION;
+	event_register.header.length =3D 0;
+
+	ret =3D write(globals->unix_sock, &event_register, len);
+	if (ret !=3D len) {
+		fprintf(stderr, "%s: only wrote %d of %d bytes: %s\n",
+			__func__, ret, len, strerror(errno));
+		goto err;
+	}
+
+	while (true) {
+		len =3D read(globals->unix_sock, &event_notify, sizeof(event_notify));
+		if (len =3D=3D 0) {
+			fprintf(stdout, "Server closed the connection\n");
+			goto err;
+		}
+
+		if (len < 0) {
+			perror("read from unix socket failed");
+			goto err;
+		}
+
+		if (len !=3D sizeof(event_notify)) {
+			fprintf(stderr, "notify read bytes: %d (expected: %zu)\n",
+				len, sizeof(event_notify));
+				goto err;
+		}
+
+		if (event_notify.header.version !=3D ALFRED_VERSION)
+			continue;
+
+		if (event_notify.header.type !=3D ALFRED_EVENT_NOTIFY)
+			continue;
+
+		fprintf(stdout, "Event: type =3D %d\n", event_notify.type);
+	}
+
+err:
+	unix_sock_close(globals);
+	return 0;
+}
diff --git a/main.c b/main.c
index 68d6efd..98bf64d 100644
--- a/main.c
+++ b/main.c
@@ -39,6 +39,7 @@ static void alfred_usage(void)
 	printf("  -I, --change-interface [interface]  change to the specified i=
nterface(s)\n");
 	printf("  -B, --change-bat-iface [interface]  change to the specified b=
atman-adv interface\n");
 	printf("  -S, --server-status                 request server status inf=
o such as mode & interfaces\n");
+	printf("  -E, --event-monitor                 monitor alfred data recor=
d update eventss\n");
 	printf("\n");
 	printf("server mode options:\n");
 	printf("  -i, --interface                     specify the interface (or=
 comma separated list of interfaces) to listen on\n");
@@ -164,6 +165,7 @@ static struct globals *alfred_init(int argc, char *ar=
gv[])
 		{"change-interface",	required_argument,	NULL,	'I'},
 		{"change-bat-iface",	required_argument,	NULL,	'B'},
 		{"server-status",	required_argument,	NULL,	'S'},
+		{"event-monitor",	required_argument,	NULL,	'E'},
 		{"unix-path",		required_argument,	NULL,	'u'},
 		{"update-command",	required_argument,	NULL,	'c'},
 		{"version",		no_argument,		NULL,	'v'},
@@ -181,6 +183,7 @@ static struct globals *alfred_init(int argc, char *ar=
gv[])
 	memset(globals, 0, sizeof(*globals));
=20
 	INIT_LIST_HEAD(&globals->interfaces);
+	INIT_LIST_HEAD(&globals->event_listeners);
 	globals->net_iface =3D NULL;
 	globals->opmode =3D OPMODE_SECONDARY;
 	globals->clientmode =3D CLIENT_NONE;
@@ -198,7 +201,7 @@ static struct globals *alfred_init(int argc, char *ar=
gv[])
=20
 	time_random_seed();
=20
-	while ((opt =3D getopt_long(argc, argv, "ms:r:hi:b:vV:M:I:B:Su:dc:p:4:f=
", long_options,
+	while ((opt =3D getopt_long(argc, argv, "ms:r:hi:b:vV:M:I:B:SEu:dc:p:4:=
f", long_options,
 				  &opt_ind)) !=3D -1) {
 		switch (opt) {
 		case 'r':
@@ -263,6 +266,9 @@ static struct globals *alfred_init(int argc, char *ar=
gv[])
 		case 'S':
 			globals->clientmode =3D CLIENT_SERVER_STATUS;
 			break;
+		case 'E':
+			globals->clientmode =3D CLIENT_EVENT_MONITOR;
+			break;
 		case 'u':
 			globals->unix_path =3D optarg;
 			break;
@@ -328,6 +334,8 @@ int main(int argc, char *argv[])
 		return alfred_client_change_bat_iface(globals);
 	case CLIENT_SERVER_STATUS:
 		return alfred_client_server_status(globals);
+	case CLIENT_EVENT_MONITOR:
+		return alfred_client_event_monitor(globals);
 	}
=20
 	return 0;
diff --git a/man/alfred.8 b/man/alfred.8
index cf0eafc..ca83f02 100644
--- a/man/alfred.8
+++ b/man/alfred.8
@@ -97,6 +97,9 @@ Change the alfred server to use the new \fBbatman-adv i=
nterface\fP
 .TP
 \fB\-S\fP, \fB\-\-server\-status\fP
 Request server status information such as mode & interfaces\fP
+.TP
+\fB\-E\fP, \fB\-\-event\-monitor\fP
+Start alfred event monitor connecting to the alfred server and reporting=
 update events\fP
 .
 .SH SERVER OPTIONS
 .TP
diff --git a/packet.h b/packet.h
index 0c1a2eb..84b027f 100644
--- a/packet.h
+++ b/packet.h
@@ -59,6 +59,8 @@ struct alfred_transaction_mgmt {
  * @ALFRED_STATUS_ERROR: Error was detected during the transaction
  * @ALFRED_MODESWITCH: Switch between different operation modes
  * @ALFRED_CHANGE_INTERFACE: Change the listening interface
+ * @ALFRED_EVENT_REGISTER: Request to be notified about alfred update ev=
ents
+ * @ALFRED_EVENT_NOTIFY: Data record update has been received
  */
 enum alfred_packet_type {
 	ALFRED_PUSH_DATA =3D 0,
@@ -70,6 +72,8 @@ enum alfred_packet_type {
 	ALFRED_CHANGE_INTERFACE =3D 6,
 	ALFRED_CHANGE_BAT_IFACE =3D 7,
 	ALFRED_SERVER_STATUS =3D 8,
+	ALFRED_EVENT_REGISTER =3D 9,
+	ALFRED_EVENT_NOTIFY =3D 10,
 };
=20
 /* packets */
@@ -229,6 +233,28 @@ struct alfred_server_status_rep_v0 {
 	struct alfred_tlv header;
 } __packed;
=20
+/**
+ * struct alfred_event_register_v0 - event registration message
+ * @header: TLV header describing the complete packet
+ *
+ * Sent by the client to daemon to register for data record updates
+ */
+struct alfred_event_register_v0 {
+	struct alfred_tlv header;
+} __packed;
+
+/**
+ * struct alfred_event_notify_v0 - event notification message
+ * @header: TLV header describing the complete packet
+ * @type: Type of the data triggering the event
+ *
+ * Sent by the daemon to client on data record update
+ */
+struct alfred_event_notify_v0 {
+	struct alfred_tlv header;
+	uint8_t type;
+} __packed;
+
 /**
  * struct alfred_status_v0 - Status info of a transaction
  * @header: TLV header describing the complete packet
diff --git a/recv.c b/recv.c
index 8acad10..36b3a49 100644
--- a/recv.c
+++ b/recv.c
@@ -76,8 +76,10 @@ static int finish_alfred_push_data(struct globals *glo=
bals,
 		/* check that data was changed */
 		if (new_entry_created ||
 		    dataset->data.header.length !=3D data_len ||
-		    memcmp(dataset->buf, data->data, data_len) !=3D 0)
+		    memcmp(dataset->buf, data->data, data_len) !=3D 0) {
 			changed_data_type(globals, data->header.type);
+			unix_sock_event_notify(globals, data->header.type);
+		}
=20
 		/* free old buffer */
 		if (dataset->buf) {
diff --git a/server.c b/server.c
index bfc37bc..4078fe6 100644
--- a/server.c
+++ b/server.c
@@ -442,6 +442,8 @@ int alfred_server(struct globals *globals)
=20
 		maxsock =3D netsock_prepare_select(globals, &fds, maxsock);
 		maxsock =3D netsock_prepare_select(globals, &errfds, maxsock);
+		maxsock =3D unix_sock_events_select_prepare(globals, &fds,
+							  &errfds, maxsock);
=20
 		ret =3D pselect(maxsock + 1, &fds, NULL, &errfds, &tv, NULL);
=20
@@ -450,6 +452,8 @@ int alfred_server(struct globals *globals)
 		} else if (ret) {
 			netsock_check_error(globals, &errfds);
=20
+			unix_sock_events_select_handle(globals, &fds, &errfds);
+
 			if (FD_ISSET(globals->unix_sock, &fds)) {
 				unix_sock_read(globals);
 				continue;
@@ -478,5 +482,6 @@ int alfred_server(struct globals *globals)
=20
 	netsock_close_all(globals);
 	unix_sock_close(globals);
+	unix_sock_events_close_all(globals);
 	return 0;
 }
diff --git a/unix_sock.c b/unix_sock.c
index 3894736..c45564d 100644
--- a/unix_sock.c
+++ b/unix_sock.c
@@ -13,6 +13,7 @@
 #include <stdio.h>
 #include <stdlib.h>
 #include <string.h>
+#include <fcntl.h>
 #include <sys/socket.h>
 #include <sys/time.h>
 #include <sys/un.h>
@@ -84,6 +85,7 @@ static int unix_sock_add_data(struct globals *globals,
 			      struct alfred_push_data_v0 *push,
 			      int client_sock)
 {
+	bool new_entry_created =3D false;
 	struct alfred_data *data;
 	struct dataset *dataset;
 	int len, data_len, ret =3D -1;
@@ -138,10 +140,17 @@ static int unix_sock_add_data(struct globals *globa=
ls,
 			free(dataset);
 			goto err;
 		}
+		new_entry_created =3D true;
 	}
 	dataset->data_source =3D SOURCE_LOCAL;
 	clock_gettime(CLOCK_MONOTONIC, &dataset->last_seen);
=20
+	/* check that data was changed */
+	if (new_entry_created ||
+	    dataset->data.header.length !=3D data_len ||
+	    memcmp(dataset->buf, data->data, data_len) !=3D 0)
+		unix_sock_event_notify(globals, data->header.type);
+
 	/* free old buffer */
 	free(dataset->buf);
=20
@@ -472,6 +481,37 @@ err:
 	return ret;
 }
=20
+static int unix_sock_register_listener(struct globals *globals, int clie=
nt_sock)
+{
+	struct event_listener *listener;
+	int ret;
+
+	ret =3D fcntl(client_sock, F_GETFL, 0);
+	if (ret < 0) {
+		perror("failed to get file status flags");
+		goto err;
+	}
+
+	ret =3D fcntl(client_sock, F_SETFL, ret | O_NONBLOCK);
+	if (ret < 0) {
+		perror("failed to set file status flags");
+		goto err;
+	}
+
+	listener =3D malloc(sizeof(*listener));
+	if (!listener)
+		goto err;
+
+	listener->fd =3D client_sock;
+	INIT_LIST_HEAD(&listener->list);
+	list_add_tail(&listener->list, &globals->event_listeners);
+	return 0;
+
+err:
+	close(client_sock);
+	return -1;
+}
+
 int unix_sock_read(struct globals *globals)
 {
 	int client_sock;
@@ -537,6 +577,9 @@ int unix_sock_read(struct globals *globals)
 	case ALFRED_SERVER_STATUS:
 		ret =3D unix_sock_server_status(globals, client_sock);
 		break;
+	case ALFRED_EVENT_REGISTER:
+		ret =3D unix_sock_register_listener(globals, client_sock);
+		break;
 	default:
 		/* unknown packet type */
 		ret =3D -1;
@@ -555,3 +598,102 @@ int unix_sock_close(struct globals *globals)
 	close(globals->unix_sock);
 	return 0;
 }
+
+static void unix_sock_event_listener_free(struct event_listener *listene=
r)
+{
+	list_del_init(&listener->list);
+	close(listener->fd);
+	free(listener);
+}
+
+static void unix_sock_event_notify_listener(struct event_listener *liste=
ner,
+					    uint8_t type)
+{
+	struct alfred_event_notify_v0 notify;
+	int ret;
+
+	notify.header.type =3D ALFRED_EVENT_NOTIFY;
+	notify.header.version =3D ALFRED_VERSION;
+	notify.header.length =3D FIXED_TLV_LEN(notify);
+	notify.type =3D type;
+
+	ret =3D write(listener->fd, &notify, sizeof(notify));
+	if (ret =3D=3D sizeof(notify))
+		return;
+
+	unix_sock_event_listener_free(listener);
+}
+
+int unix_sock_events_select_prepare(struct globals *globals, fd_set *fds=
,
+				    fd_set *errfds, int maxsock)
+{
+	struct event_listener *listener;
+
+	list_for_each_entry(listener, &globals->event_listeners, list) {
+		if (listener->fd < 0)
+			continue;
+
+		FD_SET(listener->fd, fds);
+		FD_SET(listener->fd, errfds);
+
+		if (maxsock < listener->fd)
+			maxsock =3D listener->fd;
+	}
+
+	return maxsock;
+}
+
+void unix_sock_events_select_handle(struct globals *globals,
+				    fd_set *fds, fd_set *errfds)
+{
+	struct event_listener *listener, *tmp;
+	char buff[4];
+	int ret;
+
+	list_for_each_entry_safe(listener, tmp,
+				 &globals->event_listeners, list) {
+		if (FD_ISSET(listener->fd, fds)) {
+			ret =3D recv(listener->fd, buff, sizeof(buff),
+				   MSG_PEEK | MSG_DONTWAIT);
+			/* listener has hung up */
+			if (ret =3D=3D 0)
+				unix_sock_event_listener_free(listener);
+			else if (ret > 0) {
+				fprintf(stderr, "Event listener has written to socket: %d - closing\=
n",
+					listener->fd);
+				unix_sock_event_listener_free(listener);
+			}
+
+			if (ret >=3D 0)
+				continue;
+		}
+
+		if (FD_ISSET(listener->fd, errfds)) {
+			fprintf(stderr, "Error on event listener detected: %d\n",
+				listener->fd);
+			unix_sock_event_listener_free(listener);
+			continue;
+		}
+	}
+}
+
+void unix_sock_events_close_all(struct globals *globals)
+{
+	struct event_listener *listener, *tmp;
+
+	list_for_each_entry_safe(listener, tmp,
+				 &globals->event_listeners, list) {
+		unix_sock_event_listener_free(listener);
+	}
+}
+
+void unix_sock_event_notify(struct globals *globals, uint8_t type)
+{
+	struct event_listener *listener, *tmp;
+
+	/* if event notify is unsuccessful, listener socket is closed */
+	list_for_each_entry_safe(listener, tmp,
+				 &globals->event_listeners, list) {
+		unix_sock_event_notify_listener(listener, type);
+	}
+}
--=20
2.32.0.rc0
