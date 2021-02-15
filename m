Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 3717231C2D5
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 15 Feb 2021 21:10:15 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 0850183D5D;
	Mon, 15 Feb 2021 21:10:08 +0100 (CET)
Received: from dvalin.narfation.org (dvalin.narfation.org [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id B1E6E81DA8
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 15 Feb 2021 21:10:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1613419336;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=kYjJXK47JlcMyrdY3zoKMFYJWEoq6cflPdx8YKHqQ/Q=;
	b=BTbZ5tEyPZWbZRvka588GFztoRMiOup7uP08Lsruu2vPyF3+t6XYz06AbGyve4VxlF5BIY
	mqG4mYctLxOaFOcoKJMVo1DyEJZMLrnHHC633yKQ86vPousIsO77+vzzMFYLRQqVs0Dfs0
	xnoxUqRf1DRVa89UXAm9vuFTy6rEOmM=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
Subject: [PATCH 2/4] alfred: Allow exactly one interface for secondary mode
Date: Mon, 15 Feb 2021 21:01:24 +0100
Message-Id: <20210215200126.140253-2-sven@narfation.org>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210215200126.140253-1-sven@narfation.org>
References: <20210215200126.140253-1-sven@narfation.org>
MIME-Version: 1.0
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=BTbZ5tEy;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1613419804;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=kYjJXK47JlcMyrdY3zoKMFYJWEoq6cflPdx8YKHqQ/Q=;
	b=HxGaLpt5Yoa5ghyF5H5pfGIK32ywKH9hEvyRdmRWGQeW8XFywp8rWl8VjFmR76Fv9I+QEA
	Qt48kCUV1GhqEmPKsJfg0YKTB331GK9JJPz45xLmNV4oz8VOHweseV90viotrQ1VE03l8t
	7j2kHZTSqArJxjqSWHiIiEL6jm2aj38=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1613419804; a=rsa-sha256;
	cv=none;
	b=b60cgJVAwA9PI1GluFB/9q0TlqsUW5tk7E0pebNBVj7PxDbiFstfXI85UTPHGyzuX60Oyd
	nXO93W2L48Y49Wqbvyv9kSmtMI6odYBstg1DaUPRUHSGXK3fxBBzLdPscjtzjepVIyw4QN
	/iqfc5johkEVLNhEDSTP/UCoZwdAqWg=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: 7A22GQOEW6NJWCVHECUKD24WUY3BSGCQ
X-Message-ID-Hash: 7A22GQOEW6NJWCVHECUKD24WUY3BSGCQ
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/7A22GQOEW6NJWCVHECUKD24WUY3BSGCQ/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

A primary alfred daemon allows syncing over more than one interface. But
the secondary alfred daemon needs exactly one interface. But the check fo=
r
this property was insufficient because it allowed paramters like
"-i wlan0,asd" when wlan0 is valid and asd is not valid.

The better solution is to really use the number of interfaces given to
alfred instead of the number of interfaces evaluated as "valid".

Fixes: 67ae5f57eedd ("alfred: Add support for multiple interfaces per mas=
ter")
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 alfred.h  |  1 +
 netsock.c | 11 +++++++++++
 server.c  |  4 +++-
 3 files changed, 15 insertions(+), 1 deletion(-)

diff --git a/alfred.h b/alfred.h
index 1e2c058..7d6b0b3 100644
--- a/alfred.h
+++ b/alfred.h
@@ -182,6 +182,7 @@ int unix_sock_req_data_finish(struct globals *globals=
,
 int vis_update_data(struct globals *globals);
 /* netsock.c */
 int netsock_open_all(struct globals *globals);
+size_t netsocket_count_interfaces(struct globals *globals);
 void netsock_close_all(struct globals *globals);
 int netsock_set_interfaces(struct globals *globals, char *interfaces);
 struct interface *netsock_first_interface(struct globals *globals);
diff --git a/netsock.c b/netsock.c
index 367b207..84b0ec3 100644
--- a/netsock.c
+++ b/netsock.c
@@ -471,6 +471,17 @@ int netsock_open_all(struct globals *globals)
 	return num_socks;
 }
=20
+size_t netsocket_count_interfaces(struct globals *globals)
+{
+	struct interface *interface;
+	size_t count =3D 0;
+
+	list_for_each_entry(interface, &globals->interfaces, list)
+		count++;
+
+	return count;
+}
+
 void netsock_reopen(struct globals *globals)
 {
 	struct interface *interface;
diff --git a/server.c b/server.c
index efac5ad..eb2bc8a 100644
--- a/server.c
+++ b/server.c
@@ -371,6 +371,7 @@ int alfred_server(struct globals *globals)
 	int maxsock, ret, recvs;
 	struct timespec last_check, now, tv;
 	fd_set fds, errfds;
+	size_t num_interfaces;
 	int num_socks;
=20
 	if (create_hashes(globals))
@@ -397,7 +398,8 @@ int alfred_server(struct globals *globals)
 		return -1;
 	}
=20
-	if (num_socks > 1 && globals->opmode =3D=3D OPMODE_SECONDARY) {
+	num_interfaces =3D netsocket_count_interfaces(globals);
+	if (num_interfaces > 1 && globals->opmode =3D=3D OPMODE_SECONDARY) {
 		fprintf(stderr, "More than one interface specified in secondary mode\n=
");
 		return -1;
 	}
--=20
2.30.0
