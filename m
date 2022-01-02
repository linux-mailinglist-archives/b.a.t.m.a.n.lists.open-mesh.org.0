Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 0755B482AD2
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun,  2 Jan 2022 12:32:00 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 9C6F983E5D;
	Sun,  2 Jan 2022 12:31:59 +0100 (CET)
Received: from s2.neomailbox.net (s2.neomailbox.net [5.148.176.60])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 33E7181240
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun,  2 Jan 2022 12:31:57 +0100 (CET)
From: Marek Lindner <mareklindner@neomailbox.ch>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: [PATCH 1/4] alfred: remove meaningless printf() call
Date: Sun,  2 Jan 2022 12:31:33 +0100
Message-Id: <20220102113136.470299-1-mareklindner@neomailbox.ch>
In-Reply-To: <3748133.vRqKQLy7FI@rousseau>
References: <3748133.vRqKQLy7FI@rousseau>
MIME-Version: 1.0
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of mareklindner@neomailbox.ch designates 5.148.176.60 as permitted sender) smtp.mailfrom=mareklindner@neomailbox.ch;
	dmarc=none
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1641123117; a=rsa-sha256;
	cv=none;
	b=cJP6Bwei/UUlL/txjZslA+GOPmPLdRXYAYQ5g5OQPUJvYWFoeqbD1hy7kfeb3qTiT3RXKA
	S+/F5u6yhUhDbHthvSeTAgjehezL3nXkc95V79fjdg4/E/GGi1QhTdofwMLKdLoQzLZgNz
	wck2NY3su4Oe2Vx8r+PNSDBgdvqao5w=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1641123117;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Kzq8qIfB9LH6xYnykw6shJvXnb8uHPONBhJRbe0nUcI=;
	b=h/R9d1zuFC/J2UFsgRzmHJQmwgL5QzleX4ddI5qJ2FX5cy0jEHkHGH9lVCEYRSNCQ4rKDI
	tHIA1y5nXcz2JLE+EbmWDiIMU+aepv6arRU1gSEVt+hy6bgrNLAnj6nqZ4/0Bb94/fGNN1
	goeDnpAHoNg/BpGq2ZGtbejIXnEAVEA=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: IHJ35BMCY26UXW6V66LFROSI4TY2KVWE
X-Message-ID-Hash: IHJ35BMCY26UXW6V66LFROSI4TY2KVWE
X-MailFrom: mareklindner@neomailbox.ch
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: Marek Lindner <mareklindner@neomailbox.ch>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/IHJ35BMCY26UXW6V66LFROSI4TY2KVWE/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Signed-off-by: Marek Lindner <mareklindner@neomailbox.ch>
---
 server.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/server.c b/server.c
index b4925e7..85bf453 100644
--- a/server.c
+++ b/server.c
@@ -442,7 +442,6 @@ int alfred_server(struct globals *globals)
 			netsock_check_error(globals, &errfds);
=20
 			if (FD_ISSET(globals->unix_sock, &fds)) {
-				printf("read unix socket\n");
 				unix_sock_read(globals);
 				continue;
 			} else {
--=20
2.32.0.rc0
