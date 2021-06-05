Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 1301D39C84C
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat,  5 Jun 2021 14:55:58 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id C5F31806A9;
	Sat,  5 Jun 2021 14:55:56 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id C3282806A9
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sat,  5 Jun 2021 14:55:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1622897153;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=cZWpimm/lJXXDeAgFsZFzBzZDMd+lgP9xWUUTKJhA7I=;
	b=cyCGeaU4+FS7QvZ/kqCLwH7qty0XuUoXJADWvUgJE5NuPfFm2Ugbv2yX5Ei/yvqY1E8O6h
	L9wuOC9vL7bl8Dwl2RSpI+KmxzTlVrBLXV31zhzyIhTi73M2/LIOEGr8izDZx+kYVyGmXR
	tLH/oi5JSh9vSG79ku/wXo1o3tYIW5o=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
Subject: [RFC PATCH 2/2] batctl: Fix build with lld-13 or ld 2.37 start-stop-gc
Date: Sat,  5 Jun 2021 14:45:49 +0200
Message-Id: <20210605124549.94021-1-sven@narfation.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210605124511.92537-1-sven@narfation.org>
References: <20210605124511.92537-1-sven@narfation.org>
MIME-Version: 1.0
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1622897752; a=rsa-sha256;
	cv=none;
	b=ijjVNB7yty+U+LaFFMIJPMfsgwGpegrVilGbfyF865213kqYAnQUZBXzjY8E/v0Jx5f5vh
	c5yHwjv4uYwdB3jT1qDiNKG2HDqTiZRFFdu+UHnodIe4MEdG4WMVcZbTGepcM4m3kCfhVr
	HyB6VW6cbzu6/gKmtW7fhahEB+OVW3A=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=cyCGeaU4;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1622897752;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=cZWpimm/lJXXDeAgFsZFzBzZDMd+lgP9xWUUTKJhA7I=;
	b=F6SjBm2CIjLGX/hg5GVj4xt1q9aEVb/2s+p4xWiuR7d7nZSQP+S4e0ATmrElIm8n10TWP7
	/WySQ77FKHtj3uWXZjKoo8etw12eZVRvktd37Bcl7lkMAVyl3AvFsYbK3sWrwWBr41vtJh
	hPGOpshK6KlRXeMBYTzRrXhdrQ8ja+I=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: JS57MHSREABKRC65KRHEINSWVQLV43XC
X-Message-ID-Hash: JS57MHSREABKRC65KRHEINSWVQLV43XC
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/JS57MHSREABKRC65KRHEINSWVQLV43XC/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

If ld 2.37 with -Wl,-z,start-stop-gc -Wl,--gc-sections or lld-13 with
-Wl,--gc-sections, the build with either fail with

  ld.lld: error: undefined symbol: __start___command
  >>> referenced by main.c
  >>>               main.o:(main)
  >>> referenced by main.c
  >>>               main.o:(main)
  >>> referenced by main.c
  >>>               main.o:(print_usage)
  >>> referenced 1 more time

Or in case of ld 2.37 just show a single command (aggregation). A new
attribute retain was introduced which is then emitting the ELF flag
SHF_GNU_RETAIN. This will cause the garbage collector to retain this
section.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 main.h | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/main.h b/main.h
index 00b2ab3..6b11acc 100644
--- a/main.h
+++ b/main.h
@@ -101,6 +101,12 @@ struct command {
 	const char *usage;
 };
=20
+#if defined(__has_attribute) && __has_attribute(retain)
+#define start_stop_retain __attribute__((retain))
+#else
+#define start_stop_retain
+#endif
+
 #define COMMAND_NAMED(_type, _name, _abbr, _handler, _flags, _arg, _usag=
e) \
 	static const struct command command_ ## _name ## _ ## _type =3D { \
 		.type =3D (_type), \
@@ -112,7 +118,7 @@ struct command {
 		.usage =3D (_usage), \
 	}; \
 	static const struct command *__command_ ## _name ## _ ## _type \
-	__attribute__((__used__,__section__ ("__command"))) =3D &command_ ## _n=
ame ## _ ## _type
+	__attribute__((__used__,__section__ ("__command"))) start_stop_retain =3D=
 &command_ ## _name ## _ ## _type
=20
 #define COMMAND(_type, _handler, _abbr, _flags, _arg, _usage) \
 	COMMAND_NAMED(_type, _handler, _abbr, _handler, _flags, _arg, _usage)
--=20
2.30.2
