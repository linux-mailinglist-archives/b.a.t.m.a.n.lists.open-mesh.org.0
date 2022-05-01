Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id C3615516461
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun,  1 May 2022 14:28:47 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 2A1F382E82;
	Sun,  1 May 2022 14:28:44 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 91A3382E4A
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun,  1 May 2022 14:28:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1651408121;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=P5z1bpXNBSSAzaPbBdW2lCYkBFYXO5I4t4RxalN8y4o=;
	b=Vh5+Zlm1MUrnN7a8wvcdA1BrK9AgSIA4pNzExQc/vbSusYiH9X4vIOfmodpyTi28EQmpsI
	xPCHt96ft4mwsgR3gPH0R98ZK2pzp7UTAThkvx+nxhmN9AYgG8eUWdfHtlD06VENqumHz9
	gC2SzeExAS+Pc/A8sKJp1tihmzKmp8g=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
Subject: [PATCH 2/2] alfred: Switch to epoll for socket handling
Date: Sun,  1 May 2022 14:28:30 +0200
Message-Id: <20220501122830.22344-2-sven@narfation.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220501122830.22344-1-sven@narfation.org>
References: <20220501122830.22344-1-sven@narfation.org>
MIME-Version: 1.0
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1651408121; a=rsa-sha256;
	cv=none;
	b=D74VceqnrH3S+W6h3y6CYZdQbJDmOqvtRguvMwbOR9Out5DUxNmXgjxFfR8XQDdlbedRhL
	5h5e6FoutuqGEtEWl2qbewgjzKjHf6oYY/lGmdvl9ht2pwMVcjjPjazM12tz90yKQe3EXs
	Fhht5KFo4DfzDwNL+6VoINiV6Rj5tro=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=Vh5+Zlm1;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1651408121;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=P5z1bpXNBSSAzaPbBdW2lCYkBFYXO5I4t4RxalN8y4o=;
	b=SiYxBQtOhWOjWhzpv5IFJ1SXapxzde85TaYeGXaATIZLnya/s/EigK+tGVmHn9vJuXAyVb
	7G8obS57VGneF1Oet9Ihehq48Gz1ulsL++fFlasrd09cJOESBVDprZJkcZS4rjOCQUqGJ7
	gkkmu15s52vAiuDoSuZHffHLSbsQoxA=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: WWBYULHNM3MQE2JIYMQTWRJC5BMGDDCP
X-Message-ID-Hash: WWBYULHNM3MQE2JIYMQTWRJC5BMGDDCP
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/WWBYULHNM3MQE2JIYMQTWRJC5BMGDDCP/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

The select syscall has various problems when working with many sockets:

* only a fd less than FD_SETSIZE (usually 1024) is supported
* it is necessary to register all relevant fds manually before each selec=
t
  call
* when events are received, all the fds must be checked again the returne=
d
  data

This can be solved by using epoll. File descriptors are only registered
once and only the relevant file descriptors are returned. And epoll will
also take care of walking in a round-robin fashion through all relevant
file descriptors in case a lot of file descriptors could be returned by t=
he
kernel.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 alfred.h         |  20 ++++--
 batadv_querynl.c |   4 --
 epoll_handle.h   |  25 +++++++
 netsock.c        | 171 ++++++++++++++++++++++++++---------------------
 server.c         | 127 ++++++++++++++++++++---------------
 unix_sock.c      |  59 ++++++++++------
 6 files changed, 243 insertions(+), 163 deletions(-)
 create mode 100644 epoll_handle.h

diff --git a/alfred.h b/alfred.h
index 2679515..4839c85 100644
--- a/alfred.h
+++ b/alfred.h
@@ -16,9 +16,10 @@
 #include <stdbool.h>
 #include <stdint.h>
 #include <time.h>
-#include <sys/select.h>
+#include <sys/epoll.h>
 #include <sys/types.h>
 #include "bitops.h"
+#include "epoll_handle.h"
 #include "list.h"
 #include "packet.h"
=20
@@ -30,6 +31,10 @@
 #define ALFRED_SOCK_PATH_DEFAULT	"/var/run/alfred.sock"
 #define NO_FILTER			-1
=20
+#ifndef __unused
+#define __unused __attribute__((unused))
+#endif
+
 #define FIXED_TLV_LEN(__tlv_type) \
 	htons(sizeof(__tlv_type) - sizeof((__tlv_type).header))
=20
@@ -101,9 +106,12 @@ struct interface {
 	alfred_addr address;
 	uint32_t scope_id;
 	char *interface;
+
 	int netsock;
 	int netsock_mcast;
-	int netsock_arp;
+
+	struct epoll_handle netsock_epoll;
+	struct epoll_handle netsock_mcast_epoll;
=20
 	struct hashtable_t *server_hash;
=20
@@ -124,9 +132,13 @@ struct globals {
 	uint8_t ipv4mode:1;
 	uint8_t force:1;
=20
+	int epollfd;
+
 	int check_timerfd;
+	struct epoll_handle check_epoll;
=20
 	int unix_sock;
+	struct epoll_handle unix_epoll;
 	const char *unix_path;
=20
 	const char *update_command;
@@ -182,7 +194,6 @@ int sync_data(struct globals *globals);
 ssize_t send_alfred_packet(struct globals *globals, struct interface *in=
terface,
 			   const alfred_addr *dest, void *buf, int length);
 /* unix_sock.c */
-int unix_sock_read(struct globals *globals);
 int unix_sock_open_daemon(struct globals *globals);
 int unix_sock_open_client(struct globals *globals);
 int unix_sock_close(struct globals *globals);
@@ -197,9 +208,6 @@ void netsock_close_all(struct globals *globals);
 int netsock_set_interfaces(struct globals *globals, char *interfaces);
 struct interface *netsock_first_interface(struct globals *globals);
 void netsock_reopen(struct globals *globals);
-int netsock_prepare_select(struct globals *globals, fd_set *fds, int max=
sock);
-void netsock_check_error(struct globals *globals, fd_set *errfds);
-int netsock_receive_packet(struct globals *globals, fd_set *fds);
 int netsock_own_address(const struct globals *globals,
 			const alfred_addr *address);
 /* util.c */
diff --git a/batadv_querynl.c b/batadv_querynl.c
index 872cb85..7c1b115 100644
--- a/batadv_querynl.c
+++ b/batadv_querynl.c
@@ -26,10 +26,6 @@
 #include "batadv_query.h"
 #include "netlink.h"
=20
-#ifndef __unused
-#define __unused __attribute__((unused))
-#endif
-
 static const int translate_mac_netlink_mandatory[] =3D {
 	BATADV_ATTR_TT_ADDRESS,
 	BATADV_ATTR_ORIG_ADDRESS,
diff --git a/epoll_handle.h b/epoll_handle.h
new file mode 100644
index 0000000..4ec69b9
--- /dev/null
+++ b/epoll_handle.h
@@ -0,0 +1,25 @@
+// SPDX-License-Identifier: GPL-2.0
+/* Copyright (C) B.A.T.M.A.N. contributors:
+ *
+ * Sven Eckelmann
+ *
+ * License-Filename: LICENSES/preferred/GPL-2.0
+ */
+
+#ifndef _ALFRED_EPOLL_HANDLE_H
+#define _ALFRED_EPOLL_HANDLE_H
+
+#include <sys/epoll.h>
+
+struct globals;
+struct epoll_handle;
+
+typedef void (*epoll_handler)(struct globals *globals,
+			      struct epoll_handle *handle,
+			      struct epoll_event *ev);
+
+struct epoll_handle {
+	epoll_handler handler;
+};
+
+#endif /* _ALFRED_EPOLL_HANDLE_H */
diff --git a/netsock.c b/netsock.c
index 128e768..feed21d 100644
--- a/netsock.c
+++ b/netsock.c
@@ -20,7 +20,7 @@
 #include <stdint.h>
 #include <sys/types.h>
 #include <stdlib.h>
-#include <sys/select.h>
+#include <sys/epoll.h>
 #ifdef CONFIG_ALFRED_CAPABILITIES
 #include <sys/capability.h>
 #endif
@@ -203,12 +203,59 @@ out:
 	return ret;
 }
=20
-static int netsock_open(struct interface *interface)
+static void netsock_close_error(struct interface *interface)
+{
+	fprintf(stderr, "Error on netsock detected\n");
+
+	if (interface->netsock >=3D 0)
+		close(interface->netsock);
+
+	if (interface->netsock_mcast >=3D 0)
+		close(interface->netsock_mcast);
+
+	interface->netsock =3D -1;
+	interface->netsock_mcast =3D -1;
+}
+
+static void netsock_handle_event(struct globals *globals,
+				 struct epoll_handle *handle,
+				 struct epoll_event *ev)
+{
+	struct interface *interface;
+
+	interface =3D container_of(handle, struct interface, netsock_epoll);
+
+	if (ev->events & EPOLLERR) {
+		netsock_close_error(interface);
+		return;
+	}
+
+	recv_alfred_packet(globals, interface, interface->netsock);
+}
+
+static void netsock_mcast_handle_event(struct globals *globals,
+				       struct epoll_handle *handle,
+				       struct epoll_event *ev)
+{
+	struct interface *interface;
+
+	interface =3D container_of(handle, struct interface, netsock_mcast_epol=
l);
+
+	if (ev->events & EPOLLERR) {
+		netsock_close_error(interface);
+		return;
+	}
+
+	recv_alfred_packet(globals, interface, interface->netsock_mcast);
+}
+
+static int netsock_open(struct globals *globals, struct interface *inter=
face)
 {
 	int sock;
 	int sock_mc;
 	struct sockaddr_in6 sin6, sin6_mc;
 	struct ipv6_mreq mreq;
+	struct epoll_event ev;
 	struct ifreq ifr;
 	int ret;
=20
@@ -318,6 +365,26 @@ static int netsock_open(struct interface *interface)
 		goto err;
 	}
=20
+	ev.events =3D EPOLLIN;
+	ev.data.ptr =3D &interface->netsock_epoll;
+	interface->netsock_epoll.handler =3D netsock_handle_event;
+
+	if (epoll_ctl(globals->epollfd, EPOLL_CTL_ADD, sock,
+		      &ev) =3D=3D -1) {
+		perror("Failed to add epoll for netsock");
+		goto err;
+	}
+
+	ev.events =3D EPOLLIN;
+	ev.data.ptr =3D &interface->netsock_mcast_epoll;
+	interface->netsock_mcast_epoll.handler =3D netsock_mcast_handle_event;
+
+	if (epoll_ctl(globals->epollfd, EPOLL_CTL_ADD, sock_mc,
+		      &ev) =3D=3D -1) {
+		perror("Failed to add epoll for netsock_mcast");
+		goto err;
+	}
+
 	interface->netsock =3D sock;
 	interface->netsock_mcast =3D sock_mc;
=20
@@ -328,11 +395,12 @@ err:
 	return -1;
 }
=20
-static int netsock_open4(struct interface *interface)
+static int netsock_open4(struct globals *globals, struct interface *inte=
rface)
 {
 	int sock;
 	int sock_mc;
 	struct sockaddr_in sin4, sin_mc;
+	struct epoll_event ev;
 	struct ip_mreq mreq;
 	struct ifreq ifr;
 	int ret;
@@ -446,6 +514,26 @@ static int netsock_open4(struct interface *interface=
)
 		goto err;
 	}
=20
+	ev.events =3D EPOLLIN;
+	ev.data.ptr =3D &interface->netsock_epoll;
+	interface->netsock_epoll.handler =3D netsock_handle_event;
+
+	if (epoll_ctl(globals->epollfd, EPOLL_CTL_ADD, sock,
+		      &ev) =3D=3D -1) {
+		perror("Failed to add epoll for netsock");
+		goto err;
+	}
+
+	ev.events =3D EPOLLIN;
+	ev.data.ptr =3D &interface->netsock_mcast_epoll;
+	interface->netsock_mcast_epoll.handler =3D netsock_mcast_handle_event;
+
+	if (epoll_ctl(globals->epollfd, EPOLL_CTL_ADD, sock_mc,
+		      &ev) =3D=3D -1) {
+		perror("Failed to add epoll for netsock_mcast");
+		goto err;
+	}
+
 	interface->netsock =3D sock;
 	interface->netsock_mcast =3D sock_mc;
=20
@@ -464,9 +552,9 @@ int netsock_open_all(struct globals *globals)
=20
 	list_for_each_entry(interface, &globals->interfaces, list) {
 		if (globals->ipv4mode)
-			ret =3D netsock_open4(interface);
+			ret =3D netsock_open4(globals, interface);
 		else
-			ret =3D netsock_open(interface);
+			ret =3D netsock_open(globals, interface);
=20
 		if (ret >=3D 0)
 			num_socks++;
@@ -493,82 +581,13 @@ void netsock_reopen(struct globals *globals)
 	list_for_each_entry(interface, &globals->interfaces, list) {
 		if (interface->netsock < 0) {
 			if (globals->ipv4mode)
-				netsock_open4(interface);
+				netsock_open4(globals, interface);
 			else
-				netsock_open(interface);
+				netsock_open(globals, interface);
 		}
 	}
 }
=20
-int netsock_prepare_select(struct globals *globals, fd_set *fds, int max=
sock)
-{
-	struct interface *interface;
-
-	list_for_each_entry(interface, &globals->interfaces, list) {
-		if (interface->netsock >=3D 0) {
-			FD_SET(interface->netsock, fds);
-			if (maxsock < interface->netsock)
-				maxsock =3D interface->netsock;
-		}
-
-		if (interface->netsock_mcast >=3D 0) {
-			FD_SET(interface->netsock_mcast, fds);
-			if (maxsock < interface->netsock_mcast)
-				maxsock =3D interface->netsock_mcast;
-		}
-	}
-
-	return maxsock;
-}
-
-void netsock_check_error(struct globals *globals, fd_set *errfds)
-{
-	struct interface *interface;
-
-	list_for_each_entry(interface, &globals->interfaces, list) {
-		if ((interface->netsock < 0 ||
-		     !FD_ISSET(interface->netsock, errfds)) &&
-		    (interface->netsock_mcast < 0 ||
-		     !FD_ISSET(interface->netsock_mcast, errfds)))
-			continue;
-
-		fprintf(stderr, "Error on netsock detected\n");
-
-		if (interface->netsock >=3D 0)
-			close(interface->netsock);
-
-		if (interface->netsock_mcast >=3D 0)
-			close(interface->netsock_mcast);
-
-		interface->netsock =3D -1;
-		interface->netsock_mcast =3D -1;
-	}
-}
-
-int netsock_receive_packet(struct globals *globals, fd_set *fds)
-{
-	struct interface *interface;
-	int recvs =3D 0;
-
-	list_for_each_entry(interface, &globals->interfaces, list) {
-		if (interface->netsock >=3D 0 &&
-		    FD_ISSET(interface->netsock, fds)) {
-			recv_alfred_packet(globals, interface,
-					   interface->netsock);
-			recvs++;
-		}
-
-		if (interface->netsock_mcast >=3D 0 &&
-		    FD_ISSET(interface->netsock_mcast, fds)) {
-			recv_alfred_packet(globals, interface,
-					   interface->netsock_mcast);
-			recvs++;
-		}
-	}
-
-	return recvs;
-}
-
 int netsock_own_address(const struct globals *globals,
 			const alfred_addr *address)
 {
diff --git a/server.c b/server.c
index b5ec7b2..52cdbe7 100644
--- a/server.c
+++ b/server.c
@@ -16,7 +16,7 @@
 #include <stdio.h>
 #include <stdlib.h>
 #include <string.h>
-#include <sys/select.h>
+#include <sys/epoll.h>
 #include <sys/socket.h>
 #include <sys/ioctl.h>
 #include <sys/time.h>
@@ -367,9 +367,62 @@ static void execute_update_command(struct globals *g=
lobals)
 	free(command);
 }
=20
+static void process_events(struct globals *globals)
+{
+	/* WARNING only processing one event because it could be that
+	 * netsock + their fds are getting deleted
+	 */
+	struct epoll_event events[1];
+	struct epoll_handle *handle;
+	int nfds;
+
+	nfds =3D epoll_wait(globals->epollfd, events,
+			  sizeof(events) / sizeof(*events),  -1);
+	if (nfds =3D=3D -1) {
+		if (errno =3D=3D EINTR)
+			return;
+
+		perror("main loop select failed ...");
+		return;
+	}
+
+	for (int i =3D 0; i < nfds; i++) {
+		handle =3D (struct epoll_handle *)events[i].data.ptr;
+		handle->handler(globals, handle, &events[i]);
+	}
+}
+
+static void sync_period_timer(struct globals *globals,
+			      struct epoll_handle *handle __unused,
+			      struct epoll_event *ev __unused)
+{
+	struct timespec now;
+	uint64_t timer_exp;
+
+	read(globals->check_timerfd, &timer_exp, sizeof(timer_exp));
+	clock_gettime(CLOCK_MONOTONIC, &now);
+
+	if (globals->opmode =3D=3D OPMODE_PRIMARY) {
+		/* we are a primary */
+		printf("[%ld.%09ld] announce primary ...\n",
+		       now.tv_sec, now.tv_nsec);
+		announce_primary(globals);
+		sync_data(globals);
+	} else {
+		/* send local data to server */
+		update_server_info(globals);
+		push_local_data(globals);
+	}
+
+	purge_data(globals);
+	check_if_sockets(globals);
+	execute_update_command(globals);
+}
+
 static int create_sync_period_timer(struct globals *globals)
 {
 	struct itimerspec sync_timer;
+	struct epoll_event ev;
 	int ret;
=20
 	globals->check_timerfd =3D timerfd_create(CLOCK_MONOTONIC, TFD_CLOEXEC)=
;
@@ -387,21 +440,34 @@ static int create_sync_period_timer(struct globals =
*globals)
 		return -1;
 	}
=20
+	ev.events =3D EPOLLIN;
+	ev.data.ptr =3D &globals->check_epoll;
+	globals->check_epoll.handler =3D sync_period_timer;
+
+	if (epoll_ctl(globals->epollfd, EPOLL_CTL_ADD, globals->check_timerfd,
+		      &ev) =3D=3D -1) {
+		perror("Failed to add epoll for check_timer");
+		return -1;
+	}
+
 	return 0;
 }
=20
 int alfred_server(struct globals *globals)
 {
-	int maxsock, ret, recvs;
-	struct timespec now;
-	fd_set fds, errfds;
 	size_t num_interfaces;
-	uint64_t timer_exp;
+	struct timespec now;
 	int num_socks;
=20
 	if (create_hashes(globals))
 		return -1;
=20
+	globals->epollfd =3D epoll_create1(0);
+	if (globals->epollfd =3D=3D -1) {
+		perror("Could not create epoll for main thread");
+		return -1;
+	}
+
 	if (create_sync_period_timer(globals))
 		return -1;
=20
@@ -447,56 +513,7 @@ int alfred_server(struct globals *globals)
=20
 	while (1) {
 		netsock_reopen(globals);
-
-		FD_ZERO(&fds);
-		FD_ZERO(&errfds);
-		FD_SET(globals->unix_sock, &fds);
-		maxsock =3D globals->unix_sock;
-
-		FD_SET(globals->check_timerfd, &fds);
-		if (maxsock < globals->check_timerfd)
-			maxsock =3D globals->check_timerfd;
-
-		maxsock =3D netsock_prepare_select(globals, &fds, maxsock);
-		maxsock =3D netsock_prepare_select(globals, &errfds, maxsock);
-
-		ret =3D pselect(maxsock + 1, &fds, NULL, &errfds, NULL, NULL);
-
-		if (ret =3D=3D -1) {
-			perror("main loop select failed ...");
-		} else if (ret) {
-			netsock_check_error(globals, &errfds);
-
-			if (FD_ISSET(globals->unix_sock, &fds)) {
-				unix_sock_read(globals);
-				continue;
-			} else {
-				recvs =3D netsock_receive_packet(globals, &fds);
-				if (recvs > 0)
-					continue;
-			}
-		}
-
-		if (FD_ISSET(globals->check_timerfd, &fds)) {
-			read(globals->check_timerfd, &timer_exp,
-			     sizeof(timer_exp));
-			clock_gettime(CLOCK_MONOTONIC, &now);
-
-			if (globals->opmode =3D=3D OPMODE_PRIMARY) {
-				/* we are a primary */
-				printf("[%ld.%09ld] announce primary ...\n",
-				       now.tv_sec, now.tv_nsec);
-				announce_primary(globals);
-				sync_data(globals);
-			} else {
-				/* send local data to server */
-				update_server_info(globals);
-				push_local_data(globals);
-			}
-			purge_data(globals);
-			check_if_sockets(globals);
-			execute_update_command(globals);
-		}
+		process_events(globals);
 	}
=20
 	netsock_close_all(globals);
diff --git a/unix_sock.c b/unix_sock.c
index 3894736..ef72aa0 100644
--- a/unix_sock.c
+++ b/unix_sock.c
@@ -23,9 +23,14 @@
 #include "hash.h"
 #include "packet.h"
=20
+static void unix_sock_read(struct globals *globals,
+			   struct epoll_handle *handle __unused,
+			   struct epoll_event *ev __unused);
+
 int unix_sock_open_daemon(struct globals *globals)
 {
 	struct sockaddr_un addr;
+	struct epoll_event ev;
=20
 	unlink(globals->unix_path);
=20
@@ -51,6 +56,16 @@ int unix_sock_open_daemon(struct globals *globals)
 		return -1;
 	}
=20
+	ev.events =3D EPOLLIN;
+	ev.data.ptr =3D &globals->unix_epoll;
+	globals->unix_epoll.handler =3D unix_sock_read;
+
+	if (epoll_ctl(globals->epollfd, EPOLL_CTL_ADD, globals->unix_sock,
+		      &ev) =3D=3D -1) {
+		perror("Failed to add epoll for check_timer");
+		return -1;
+	}
+
 	return 0;
 }
=20
@@ -472,20 +487,22 @@ err:
 	return ret;
 }
=20
-int unix_sock_read(struct globals *globals)
+static void unix_sock_read(struct globals *globals,
+			   struct epoll_handle *handle __unused,
+			   struct epoll_event *ev __unused)
 {
 	int client_sock;
 	struct sockaddr_un sun_addr;
 	socklen_t sun_size =3D sizeof(sun_addr);
 	struct alfred_tlv *packet;
 	uint8_t buf[MAX_PAYLOAD];
-	int length, headsize, ret =3D -1;
+	int length, headsize;
=20
 	client_sock =3D accept(globals->unix_sock, (struct sockaddr *)&sun_addr=
,
 			     &sun_size);
 	if (client_sock < 0) {
 		perror("can't accept unix connection");
-		return -1;
+		return;
 	}
=20
 	/* we assume that we can instantly read here. */
@@ -510,44 +527,42 @@ int unix_sock_read(struct globals *globals)
=20
 	switch (packet->type) {
 	case ALFRED_PUSH_DATA:
-		ret =3D unix_sock_add_data(globals,
-					 (struct alfred_push_data_v0 *)packet,
-					 client_sock);
+		unix_sock_add_data(globals,
+				   (struct alfred_push_data_v0 *)packet,
+				   client_sock);
 		break;
 	case ALFRED_REQUEST:
-		ret =3D unix_sock_req_data(globals,
-					 (struct alfred_request_v0 *)packet,
-					 client_sock);
+		unix_sock_req_data(globals,
+				   (struct alfred_request_v0 *)packet,
+				   client_sock);
 		break;
 	case ALFRED_MODESWITCH:
-		ret =3D unix_sock_modesw(globals,
-				       (struct alfred_modeswitch_v0 *)packet,
-				       client_sock);
+		unix_sock_modesw(globals,
+				 (struct alfred_modeswitch_v0 *)packet,
+				 client_sock);
 		break;
 	case ALFRED_CHANGE_INTERFACE:
-		ret =3D unix_sock_change_iface(globals,
-					     (struct alfred_change_interface_v0 *)packet,
-					     client_sock);
+		 unix_sock_change_iface(globals,
+					(struct alfred_change_interface_v0 *)packet,
+					client_sock);
 		break;
 	case ALFRED_CHANGE_BAT_IFACE:
-		ret =3D unix_sock_change_bat_iface(globals,
-						 (struct alfred_change_bat_iface_v0 *)packet,
-						 client_sock);
+		unix_sock_change_bat_iface(globals,
+					   (struct alfred_change_bat_iface_v0 *)packet,
+					   client_sock);
 		break;
 	case ALFRED_SERVER_STATUS:
-		ret =3D unix_sock_server_status(globals, client_sock);
+		unix_sock_server_status(globals, client_sock);
 		break;
 	default:
 		/* unknown packet type */
-		ret =3D -1;
 		goto err;
 	}
=20
-	return ret;
+	return;
=20
 err:
 	close(client_sock);
-	return ret;
 }
=20
 int unix_sock_close(struct globals *globals)
--=20
2.30.2
