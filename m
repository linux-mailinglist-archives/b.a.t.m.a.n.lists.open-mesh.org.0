Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A648516460
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun,  1 May 2022 14:28:42 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 7D98280C33;
	Sun,  1 May 2022 14:28:41 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 3F80C805DA
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun,  1 May 2022 14:28:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1651408117;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=bpqAjRqrKpW5ddF414xuE3+KDp1XKPB+RVf9re7dI5Y=;
	b=lTpynoZY/GbeTTbvi0ECl55O4kVLFrVp7J6BPmVb0Vd86r3Y7w8iIJTctVtFVEmCWh+g7p
	3jiJDF4kVGGsUya8G8wPKme8QzHTrS33Hr6CZtxEqVq5uBFS60epdNCRlZEbnjO4UCzYyL
	o5fctxC9JkUPNbkDhCQEeOyRON0giEU=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
Subject: [PATCH 1/2] alfred: Stabilize synchronization period using timerfd
Date: Sun,  1 May 2022 14:28:29 +0200
Message-Id: <20220501122830.22344-1-sven@narfation.org>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1651408118; a=rsa-sha256;
	cv=none;
	b=BpiNuxsGyS/SeL0W5ur8/pgmSP6WYmA7HbTVA8/2dkZzWWyuAt9jQEejJbAfUFoNlllZYw
	vddjV4lEPKdkzm6mIqvYdUEC351htTcp+BNlPbzI+dpUuNhL6SxVVMactkPGRhnhKj/u/i
	Z8vZehRHziyKOpHZ6m9IBMEByVVLqvQ=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=lTpynoZY;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1651408118;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=bpqAjRqrKpW5ddF414xuE3+KDp1XKPB+RVf9re7dI5Y=;
	b=EInxwq7wQdjYpWhhGhDooABxWS53qvNkuUmdPdDD6XueJWmh8KUAVeILA5J1hBv4oGWtmN
	RSFfmHJBgE1zW1es5jvPUc0Hluwik8qpQXtdCs0hha8/ka3anU0Ue/3xgQKhlNsnN5siV7
	Zd6aUGVUvBaw5frw+z5eLNBTLqG1rOM=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: XUGU3JTPTEREC6GBAORQHJ7RIE7MC4ZT
X-Message-ID-Hash: XUGU3JTPTEREC6GBAORQHJ7RIE7MC4ZT
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/XUGU3JTPTEREC6GBAORQHJ7RIE7MC4ZT/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

The current way of scheduling the synchronization related events tends to
cause drift from a perfect periodic timer. This happens because it doesn'=
t
calculate the next event based on a fixed start time + period * the numbe=
r
of past synchronization periods. Instead, the next event was scheduled
based on the time before the last select() - ignoring that non-zero time
was spend processing events.

For a 10 second period, this usually looks somthing like:

  [24.043904208] announce primary ...
  [34.044216187] announce primary ...
  [44.053485658] announce primary ...
  [54.063562062] announce primary ...
  [64.073517069] announce primary ...

To avoid this drift, just use timerfd as rather stable periodic timer eve=
nt
sources. It also has the benefit of making it easier to use multiple
periodic timers with different periods.

Only some small jitter can be seen with this external timer implementatio=
n:

  [12.673756426] announce primary ...
  [22.673779811] announce primary ...
  [32.673778362] announce primary ...
  [42.673775216] announce primary ...

Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 alfred.h |  2 ++
 server.c | 89 +++++++++++++++++++++++++++++++++++---------------------
 2 files changed, 58 insertions(+), 33 deletions(-)

diff --git a/alfred.h b/alfred.h
index 2d98a30..2679515 100644
--- a/alfred.h
+++ b/alfred.h
@@ -124,6 +124,8 @@ struct globals {
 	uint8_t ipv4mode:1;
 	uint8_t force:1;
=20
+	int check_timerfd;
+
 	int unix_sock;
 	const char *unix_path;
=20
diff --git a/server.c b/server.c
index bfc37bc..b5ec7b2 100644
--- a/server.c
+++ b/server.c
@@ -20,6 +20,7 @@
 #include <sys/socket.h>
 #include <sys/ioctl.h>
 #include <sys/time.h>
+#include <sys/timerfd.h>
 #include <sys/types.h>
 #include <unistd.h>
 #include <time.h>
@@ -366,17 +367,44 @@ static void execute_update_command(struct globals *=
globals)
 	free(command);
 }
=20
+static int create_sync_period_timer(struct globals *globals)
+{
+	struct itimerspec sync_timer;
+	int ret;
+
+	globals->check_timerfd =3D timerfd_create(CLOCK_MONOTONIC, TFD_CLOEXEC)=
;
+	if (globals->check_timerfd < 0) {
+		perror("Failed to create periodic timer");
+		return -1;
+	}
+
+	sync_timer.it_value =3D globals->sync_period;
+	sync_timer.it_interval =3D globals->sync_period;
+
+	ret =3D timerfd_settime(globals->check_timerfd, 0, &sync_timer, NULL);
+	if (ret < 0) {
+		perror("Failed to arm synchronization timer");
+		return -1;
+	}
+
+	return 0;
+}
+
 int alfred_server(struct globals *globals)
 {
 	int maxsock, ret, recvs;
-	struct timespec last_check, now, tv;
+	struct timespec now;
 	fd_set fds, errfds;
 	size_t num_interfaces;
+	uint64_t timer_exp;
 	int num_socks;
=20
 	if (create_hashes(globals))
 		return -1;
=20
+	if (create_sync_period_timer(globals))
+		return -1;
+
 	if (unix_sock_open_daemon(globals))
 		return -1;
=20
@@ -414,25 +442,10 @@ int alfred_server(struct globals *globals)
 		return -1;
 	}
=20
-	clock_gettime(CLOCK_MONOTONIC, &last_check);
-	globals->if_check =3D last_check;
+	clock_gettime(CLOCK_MONOTONIC, &now);
+	globals->if_check =3D now;
=20
 	while (1) {
-		clock_gettime(CLOCK_MONOTONIC, &now);
-
-		/* subtract the synchronization period from the current time
-		 * NOTE: this is an atypical usage of time_diff as it ignores the retu=
rn
-		 * value and store the result back into now, essentially performing th=
e
-		 * operation:
-		 * now -=3D globals->sync_period;
-		 */
-		time_diff(&now, &globals->sync_period, &now);
-
-		if (!time_diff(&last_check, &now, &tv)) {
-			tv.tv_sec =3D 0;
-			tv.tv_nsec =3D 0;
-		}
-
 		netsock_reopen(globals);
=20
 		FD_ZERO(&fds);
@@ -440,10 +453,14 @@ int alfred_server(struct globals *globals)
 		FD_SET(globals->unix_sock, &fds);
 		maxsock =3D globals->unix_sock;
=20
+		FD_SET(globals->check_timerfd, &fds);
+		if (maxsock < globals->check_timerfd)
+			maxsock =3D globals->check_timerfd;
+
 		maxsock =3D netsock_prepare_select(globals, &fds, maxsock);
 		maxsock =3D netsock_prepare_select(globals, &errfds, maxsock);
=20
-		ret =3D pselect(maxsock + 1, &fds, NULL, &errfds, &tv, NULL);
+		ret =3D pselect(maxsock + 1, &fds, NULL, &errfds, NULL, NULL);
=20
 		if (ret =3D=3D -1) {
 			perror("main loop select failed ...");
@@ -459,21 +476,27 @@ int alfred_server(struct globals *globals)
 					continue;
 			}
 		}
-		clock_gettime(CLOCK_MONOTONIC, &last_check);
-
-		if (globals->opmode =3D=3D OPMODE_PRIMARY) {
-			/* we are a primary */
-			printf("[%ld.%09ld] announce primary ...\n", last_check.tv_sec, last_=
check.tv_nsec);
-			announce_primary(globals);
-			sync_data(globals);
-		} else {
-			/* send local data to server */
-			update_server_info(globals);
-			push_local_data(globals);
+
+		if (FD_ISSET(globals->check_timerfd, &fds)) {
+			read(globals->check_timerfd, &timer_exp,
+			     sizeof(timer_exp));
+			clock_gettime(CLOCK_MONOTONIC, &now);
+
+			if (globals->opmode =3D=3D OPMODE_PRIMARY) {
+				/* we are a primary */
+				printf("[%ld.%09ld] announce primary ...\n",
+				       now.tv_sec, now.tv_nsec);
+				announce_primary(globals);
+				sync_data(globals);
+			} else {
+				/* send local data to server */
+				update_server_info(globals);
+				push_local_data(globals);
+			}
+			purge_data(globals);
+			check_if_sockets(globals);
+			execute_update_command(globals);
 		}
-		purge_data(globals);
-		check_if_sockets(globals);
-		execute_update_command(globals);
 	}
=20
 	netsock_close_all(globals);
--=20
2.30.2
