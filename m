Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id D68D05B8EFD
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 14 Sep 2022 20:41:12 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 43A478167E;
	Wed, 14 Sep 2022 20:41:12 +0200 (CEST)
Received: from s2.neomailbox.net (s2.neomailbox.net [5.148.176.60])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 6025E8167E
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 14 Sep 2022 20:41:08 +0200 (CEST)
From: Marek Lindner <mareklindner@neomailbox.ch>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: [PATCH 2/2] alfred: improve grammar in documentation of '-r' argument
Date: Wed, 14 Sep 2022 20:40:35 +0200
Message-Id: <20220914184035.1437928-2-mareklindner@neomailbox.ch>
In-Reply-To: <20220914184035.1437928-1-mareklindner@neomailbox.ch>
References: <20220914184035.1437928-1-mareklindner@neomailbox.ch>
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1663180869;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=EzWYl/3hwPdOsE/g9dy0OclnZxzIufpZQ7QBmJxJn1Q=;
	b=mJSMAR2Ng5owPKpQCzajSdMqAXQz9BeUDI0VtdoxHSYHHKJF8+Fo5TGsM5vAEMuZfUt/c/
	11uvxVC7Zbp3nITKCtGNOnSMzO7B70C75eZIHi/0099T6imFEyVrMIgnSh4gBYwL17l+X6
	DzVXUs7iPzuiF6rf6ow9XqgN8X1JX4Y=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	dmarc=none;
	spf=pass (diktynna.open-mesh.org: domain of mareklindner@neomailbox.ch designates 5.148.176.60 as permitted sender) smtp.mailfrom=mareklindner@neomailbox.ch
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1663180869; a=rsa-sha256;
	cv=none;
	b=HMJNVybi3FxE0QMkqJ9YYAA4hFNxfCvd8mwQ+lZViOaCvQsrHdLrNtmxkv+gsFpkE0KWxi
	i/n9iGRhpSfVf4dRfj+mTIjMywQEbifwEAmr/DqdiYM3vo2l1Ml5+jmBF2pN1gEVTPt9IX
	9rU7huAAaQvLkBzX6qYpDXrxQn2VuRw=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: RDMMKLU7MACTPAQ5IWVAZRE4I3KE3TV2
X-Message-ID-Hash: RDMMKLU7MACTPAQ5IWVAZRE4I3KE3TV2
X-MailFrom: mareklindner@neomailbox.ch
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: Marek Lindner <mareklindner@neomailbox.ch>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/RDMMKLU7MACTPAQ5IWVAZRE4I3KE3TV2/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Signed-off-by: Marek Lindner <mareklindner@neomailbox.ch>
---
 main.c       | 3 +--
 man/alfred.8 | 2 +-
 2 files changed, 2 insertions(+), 3 deletions(-)

diff --git a/main.c b/main.c
index 2c3f06e..0f242e8 100644
--- a/main.c
+++ b/main.c
@@ -30,8 +30,7 @@ static void alfred_usage(void)
 	printf("client mode options:\n");
 	printf("  -s, --set-data [data type]          sets new data to distribu=
te from stdin\n");
 	printf("                                      for the supplied data typ=
e (0-255)\n");
-	printf("  -r, --request [data type]           collect data from the net=
work and prints\n");
-	printf("                                      it on stdout\n");
+	printf("  -r, --request [data type]           collect data from the net=
work and print on stdout\n");
 	printf("  -d, --verbose                       Show extra information in=
 the data output\n");
 	printf("  -V, --req-version                   specify the data version =
set for -s\n");
 	printf("  -M, --modeswitch primary            switch daemon to mode pri=
mary\n");
diff --git a/man/alfred.8 b/man/alfred.8
index 20c703b..e6e4a8d 100644
--- a/man/alfred.8
+++ b/man/alfred.8
@@ -67,7 +67,7 @@ must be periodically written again to alfred, otherwise=
 it will timeout and
 alfred will forget about it (after 10 minutes).
 .TP
 \fB\-r\fP, \fB\-\-request\fP \fIdata\-type\fP
-Collect data from the network and prints it on stdout
+Collect data from the network and print on stdout
 .TP
 \fB\-d\fP, \fB\-\-verbose\fP
 Show extra information in the data output
--=20
2.37.2
