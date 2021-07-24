Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AFB13D4897
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 24 Jul 2021 18:24:42 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id CC64F80B9F;
	Sat, 24 Jul 2021 18:24:40 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 8FAF68026E
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 24 Jul 2021 18:24:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1627143876;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=VlraKBfCz4HcEEphEEUFJxpqY7WKDh5jCjkPEkIoSOo=;
	b=vraSgcfngtPJ5cG1c7K18mNFPKbUyQjtOynHdMdNi/mqG7QZjlTI4A9H+HrArp5Xd3oJW4
	3WH9aXK5UEKQeKJUTAwqd55zEujLFbycKYr8elquAXYlfNOQ2GlEpzNoQzAv3bBlJGGtvR
	5mXHQ5YkNe+mpvctxK67f4mfT4hjRBQ=
From: Sven Eckelmann <sven@narfation.org>
To: Arnd Bergmann <arnd@arndb.de>
Subject: [PATCH] asm-generic: avoid sparse {get,put}_unaligned warning
Date: Sat, 24 Jul 2021 18:24:29 +0200
Message-Id: <20210724162429.394792-1-sven@narfation.org>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1627143877;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=VlraKBfCz4HcEEphEEUFJxpqY7WKDh5jCjkPEkIoSOo=;
	b=U0wtRpwLbco0hyWylPQcGFd/T7K95k63Js9PvXbxrOrci1heWcBJf+Imm2S89YvbShTHv/
	Fj3ITL0fAi9RFHlGD8NLKxZnHHM2ebMkfP180Sf5xQLLQ29JrSXhzR+FJS4dBmzVrUN84e
	Zx/T5gEDi0EB7mM3BlUUtlUWvEFDsPM=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1627143877; a=rsa-sha256;
	cv=none;
	b=a9/r8j0MMliHv7ZsFqB3L6UWT1ZejHDaEhXlSu31NoEnlFT6ewMuukgbcVc2fTpBIqVgiX
	tnCDh70eaagIdZ4g/sdbU9Mfc3ZvOJDHwbv9eeMeyqSswN+CpUvqoehmQlOjcnFY29A8u6
	i2QoaELtP6hZZdVM8j4afOEFQKMcR90=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=vraSgcfn;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: YZBJRJUXUJIMOHE4ZROTPV75QFI2J23E
X-Message-ID-Hash: YZBJRJUXUJIMOHE4ZROTPV75QFI2J23E
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: b.a.t.m.a.n@lists.open-mesh.org, linux-arch@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/YZBJRJUXUJIMOHE4ZROTPV75QFI2J23E/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Sparse will try to check casting of simple integer types which are marked
as __bitwise. This for example "disallows" simple casting of __be{16,32,6=
4}
or __le{16,32,64} to other types. This is also true for pointers to
variables with this type.

But the new generic {get,put}_unaligned is doing that by (reinterpret)
casting the original pointer to a new (anonymous) struct pointer. This wi=
ll
then create warnings like:

  net/batman-adv/distributed-arp-table.c:1461:19: warning: cast from rest=
ricted __be32 *
  net/batman-adv/distributed-arp-table.c:1510:23: warning: cast from rest=
ricted __be32 [usertype] *[assigned] magic
  net/batman-adv/distributed-arp-table.c:1588:24: warning: cast from rest=
ricted __be32 [usertype] *[assigned] yiaddr

The special attribute force must be used in such statements when the cast
is known to be safe to avoid these warnings.

Fixes: 803f4e1eab7a ("asm-generic: simplify asm/unaligned.h")
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 include/asm-generic/unaligned.h | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/include/asm-generic/unaligned.h b/include/asm-generic/unalig=
ned.h
index 1c4242416c9f..e2b23e5bf945 100644
--- a/include/asm-generic/unaligned.h
+++ b/include/asm-generic/unaligned.h
@@ -10,12 +10,13 @@
 #include <asm/byteorder.h>
=20
 #define __get_unaligned_t(type, ptr) ({						\
-	const struct { type x; } __packed *__pptr =3D (typeof(__pptr))(ptr);	\
+	const struct { type x; } __packed *__pptr;				\
+	__pptr =3D (__force typeof(__pptr))(ptr);					\
 	__pptr->x;								\
 })
=20
 #define __put_unaligned_t(type, val, ptr) do {					\
-	struct { type x; } __packed *__pptr =3D (typeof(__pptr))(ptr);		\
+	struct { type x; } __packed *__pptr =3D (__force typeof(__pptr))(ptr);	=
\
 	__pptr->x =3D (val);							\
 } while (0)
=20
--=20
2.30.2
