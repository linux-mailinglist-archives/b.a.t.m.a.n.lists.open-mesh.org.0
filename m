Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A95428F940
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 15 Oct 2020 21:10:22 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 05B8280438;
	Thu, 15 Oct 2020 21:10:21 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id BEF2F8003B
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 15 Oct 2020 21:10:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1602789016;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=7LaoM1rpqWVH2N38IQ2lGfRpS88IC51JnYfiyFTevCA=;
	b=nTgQzj5ZeTlVQIIYdua23fzOBHChRPQCTsmpv6YGGFOBqPI7xHlyaU6ZLfyjHIlc54yb/J
	v2sF0e5a3u0L4QVv55NYqiuvwDSoehbiNoYdURx4W8GoNHpDlcUv6U6ake4kY+DYEpVOPq
	vTvdBtdk7yHWIG04xwtjFBOwBloi1+A=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
Subject: [PATCH] batman-adv: compat: Fix prandom.h include for older LTS kernels
Date: Thu, 15 Oct 2020 21:10:09 +0200
Message-Id: <20201015191009.34021-1-sven@narfation.org>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1602789017; a=rsa-sha256;
	cv=none;
	b=cnPWNqkNdj7UeqzqVEnxRls82u6WpTw5qe02rJKYP6m2hyncqwsrJ6ouhWDPqWC0yYf2Iq
	hfQmN/+nYdb2l1Lso0RJV4a3AnXWbSCCCboL7XNhijs2bcl7KwmGfzbRegjlwysaR/mm50
	Ivb11e8U34vHnqGZIodc5134YczQQZE=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=nTgQzj5Z;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1602789017;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=7LaoM1rpqWVH2N38IQ2lGfRpS88IC51JnYfiyFTevCA=;
	b=k92ITtx+YOgUAHqTeWxuOFt5yDURG2znNvWEGrkvp512tSY74thqRYe+du4+EQK7+rX7tX
	uxNI5t9teCFWetG6Y//AycvWxLgiJYO+9uyj9/t83W9N8vjRUjUPaAG9ZSb06FvMIay0ZM
	fPkq+6S0ygewMCN/oyS1P83dySoFbZw=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: DZSGPCCNSNJQXFTSR77534U5IHVSPG7F
X-Message-ID-Hash: DZSGPCCNSNJQXFTSR77534U5IHVSPG7F
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/DZSGPCCNSNJQXFTSR77534U5IHVSPG7F/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

The longterm stable kernels 4.4.x and 4.9.x were missing the
linux/prandom.h for a long time but the commit c0842fbc1b18 ("random32:
move the pseudo-random 32-bit definitions to prandom.h") was recently
backported. Due to this change, it was no longer possible for batman-adv =
to
find the prandom_u32_max definition. This resulted in a build error:

  net/batman-adv/bat_iv_ogm.c:284:18: error: undefined identifier 'prando=
m_u32_max'
  net/batman-adv/bat_iv_ogm.c:292:43: error: undefined identifier 'prando=
m_u32_max'
  net/batman-adv/bat_iv_ogm.c: In function =E2=80=98batadv_iv_ogm_emit_se=
nd_time=E2=80=99:
  net/batman-adv/bat_iv_ogm.c:284:11: error: implicit declaration of func=
tion =E2=80=98prandom_u32_max=E2=80=99 [-Werror=3Dimplicit-function-decla=
ration]
    msecs +=3D prandom_u32_max(2 * BATADV_JITTER);

Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 compat-include/linux/prandom.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/compat-include/linux/prandom.h b/compat-include/linux/prando=
m.h
index 2863a57d..9d30d2d9 100644
--- a/compat-include/linux/prandom.h
+++ b/compat-include/linux/prandom.h
@@ -12,6 +12,8 @@
=20
 #include <linux/version.h>
 #if LINUX_VERSION_IS_GEQ(5, 8, 1) || \
+    (LINUX_VERSION_IS_GEQ(4, 4, 233) && LINUX_VERSION_IS_LESS(4, 5, 0)) =
|| \
+    (LINUX_VERSION_IS_GEQ(4, 9, 233) && LINUX_VERSION_IS_LESS(4, 10, 0))=
 || \
     (LINUX_VERSION_IS_GEQ(4, 14, 193) && LINUX_VERSION_IS_LESS(4, 15, 0)=
) || \
     (LINUX_VERSION_IS_GEQ(4, 19, 138) && LINUX_VERSION_IS_LESS(4, 20, 0)=
) || \
     (LINUX_VERSION_IS_GEQ(5, 4, 57) && LINUX_VERSION_IS_LESS(5, 5, 0)) |=
| \
--=20
2.28.0
