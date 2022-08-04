Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 2020D58A0E1
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu,  4 Aug 2022 20:52:35 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 2259983D37;
	Thu,  4 Aug 2022 20:52:33 +0200 (CEST)
Received: from s2.neomailbox.net (s2.neomailbox.net [5.148.176.60])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id A83AA83D8C
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu,  4 Aug 2022 20:52:29 +0200 (CEST)
From: Marek Lindner <mareklindner@neomailbox.ch>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: [PATCH 2/3] alfred: fix erroneous documentation of '-r' argument
Date: Thu,  4 Aug 2022 20:52:11 +0200
Message-Id: <20220804185212.3074514-2-mareklindner@neomailbox.ch>
In-Reply-To: <20220804185212.3074514-1-mareklindner@neomailbox.ch>
References: <20220804185212.3074514-1-mareklindner@neomailbox.ch>
MIME-Version: 1.0
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1659639149; a=rsa-sha256;
	cv=none;
	b=od3Oc0yGser8rq2jVRi841HMDmohDH36YAtCTBlhVviiRFEq447HXg7ImgwW0go1mcwreO
	No06N/ycuMkstn8CbX+1FMUGrNnZM0V8wkMXebvemk2cSgvgDSzI2PPXLg5GfzMjBnEaEz
	hn6YIgpsFi7GX2Puw7RsbbtxsksbwxU=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of mareklindner@neomailbox.ch designates 5.148.176.60 as permitted sender) smtp.mailfrom=mareklindner@neomailbox.ch;
	dmarc=none
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1659639149;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=S8lg1Q8rDqqK+njqjgQWRuXQy58WHxCDWMSmjooaL/E=;
	b=IoIGuUlxKGgZpHZA+WXpgKpJO888cDImyxa7BzBT4r4uL5n6ns21rGgzniGBCiPAnPigM+
	jXRt2LYR1VSK9kCPXiVDZuqncIAYkNnVXbyKVnqYySkzdpctdn3D7sUjPdyqe0DUV8e0Nu
	VEi3y0/BVzc1hrYPLJGEFxZyYtvz4Uo=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: EIWOETP72E27AXTEI52WN7OWQSWQFY7G
X-Message-ID-Hash: EIWOETP72E27AXTEI52WN7OWQSWQFY7G
X-MailFrom: mareklindner@neomailbox.ch
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: Marek Lindner <mareklindner@neomailbox.ch>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/EIWOETP72E27AXTEI52WN7OWQSWQFY7G/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Signed-off-by: Marek Lindner <mareklindner@neomailbox.ch>
---
 main.c       | 2 +-
 man/alfred.8 | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/main.c b/main.c
index 3fe7b42..2c3f06e 100644
--- a/main.c
+++ b/main.c
@@ -31,7 +31,7 @@ static void alfred_usage(void)
 	printf("  -s, --set-data [data type]          sets new data to distribu=
te from stdin\n");
 	printf("                                      for the supplied data typ=
e (0-255)\n");
 	printf("  -r, --request [data type]           collect data from the net=
work and prints\n");
-	printf("                                      it on the network\n");
+	printf("                                      it on stdout\n");
 	printf("  -d, --verbose                       Show extra information in=
 the data output\n");
 	printf("  -V, --req-version                   specify the data version =
set for -s\n");
 	printf("  -M, --modeswitch primary            switch daemon to mode pri=
mary\n");
diff --git a/man/alfred.8 b/man/alfred.8
index ca83f02..20c703b 100644
--- a/man/alfred.8
+++ b/man/alfred.8
@@ -67,7 +67,7 @@ must be periodically written again to alfred, otherwise=
 it will timeout and
 alfred will forget about it (after 10 minutes).
 .TP
 \fB\-r\fP, \fB\-\-request\fP \fIdata\-type\fP
-Collect data from the network and prints it on the network
+Collect data from the network and prints it on stdout
 .TP
 \fB\-d\fP, \fB\-\-verbose\fP
 Show extra information in the data output
--=20
2.36.1
