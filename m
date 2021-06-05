Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 44BC639C83F
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat,  5 Jun 2021 14:50:57 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id E6EFE807EC;
	Sat,  5 Jun 2021 14:50:55 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 0B97D80302
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sat,  5 Jun 2021 14:50:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1622897121;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=zT7zbR568dQTUbGxo0171IrgO55Pm7PBPcr+iS9xD8M=;
	b=SfpqH6qGJJk3XkRXx6tU6YGBFUh46ofOQdZnMS65Z7pp0BREo8+YZBJIZYk6/oRdKBiHqW
	injWC8NrxqTaDKEbxb8qbLQ6DUFOKipV55rQlEEW/z2TYJeO+XFdXXv7QDmG5r0Dfb3xcJ
	G+wB3XjjJPwfDgr4FOQ6SP2crdMNj/E=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
Subject: [RFC PATCH 1/2] batctl: Combine command section attributes
Date: Sat,  5 Jun 2021 14:45:10 +0200
Message-Id: <20210605124511.92537-1-sven@narfation.org>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1622897453; a=rsa-sha256;
	cv=none;
	b=OgbBQ1j7iuhoUWXNYjHKTH7lxDNnudTpODi3SpxbbRVVpLAoVEov2mXgqZhvG8kRIvO7Lw
	ZYNTZjluoS5BblHHBcXBH6RyDbzqHom/gRYuqhXEujmTVsAkZwKuYgU4G2zf33FjRA7lBq
	JNCEGbb1CPNOOvwf8S0JCdJna693sDE=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=SfpqH6qG;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1622897453;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=zT7zbR568dQTUbGxo0171IrgO55Pm7PBPcr+iS9xD8M=;
	b=kb393RXjn1GBQ+A3/FL4XxIsrDX5Y6zgqyZ4zAVDphVRQ8NJ41w6iv7E+uQD6WUOA5Pcu+
	Y2bEegvtmY/o5U+KbLrIlF4oCg87ZMOqY1oRSMxhb3n9PzPugc6iTMRESrCMKTjmQEUK6/
	h1dEvcwU1SZzerOoyl0SOsyn4vWAF9Q=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: SUDQDYH45HKO6XUPAAXS3CZG5WSBARGA
X-Message-ID-Hash: SUDQDYH45HKO6XUPAAXS3CZG5WSBARGA
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/SUDQDYH45HKO6XUPAAXS3CZG5WSBARGA/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

The __used__ and __section__ attribute for the batctl commands can be
combined together to simplify the COMMAND_NAMED macro.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 main.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/main.h b/main.h
index d1bea23..00b2ab3 100644
--- a/main.h
+++ b/main.h
@@ -112,7 +112,7 @@ struct command {
 		.usage =3D (_usage), \
 	}; \
 	static const struct command *__command_ ## _name ## _ ## _type \
-	__attribute__((__used__)) __attribute__ ((__section__ ("__command"))) =3D=
 &command_ ## _name ## _ ## _type
+	__attribute__((__used__,__section__ ("__command"))) =3D &command_ ## _n=
ame ## _ ## _type
=20
 #define COMMAND(_type, _handler, _abbr, _flags, _arg, _usage) \
 	COMMAND_NAMED(_type, _handler, _abbr, _handler, _flags, _arg, _usage)
--=20
2.30.2
