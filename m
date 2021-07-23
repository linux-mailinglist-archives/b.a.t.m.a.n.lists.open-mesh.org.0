Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A72C3D3EA4
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 23 Jul 2021 19:28:51 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 4885E8239D;
	Fri, 23 Jul 2021 19:28:46 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 4F2C280040
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 23 Jul 2021 19:28:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1627061012;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=1qYYHcEIF3WKLET5KtpdI6VoVyjwTOlmU5B3Rr4plD8=;
	b=wikA8tkj6rJGVef5B0nHMN1SdQyIOBOxmNENkEiIaaAShfwHoWkPyrI2iIbsxC8mUdNxtx
	cWdar8CIEyTKLs40AOL2uYDJFtAja0Rvk0NG8udwnhylkF06JFjZdEOx9EO6RrclbbRccH
	tlX46sZLcqgTZouyLoO6LNoYZjxLIiE=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
Subject: [PATCH 2/2] batman-adv: Switch to kstrtox.h for kstrtou64
Date: Fri, 23 Jul 2021 19:23:17 +0200
Message-Id: <20210723172317.323199-2-sven@narfation.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210723172317.323199-1-sven@narfation.org>
References: <20210723172317.323199-1-sven@narfation.org>
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1627061321;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=1qYYHcEIF3WKLET5KtpdI6VoVyjwTOlmU5B3Rr4plD8=;
	b=y3xsT6PlxcJl30XUoUBiLYgY/6rBCyL7zc3MBamFtKt2Nr7nbj0GOce9CL1wBjOq+2IpTU
	/EDy0fIvW78yrTUUYcx/0TCKTWmctL1yGD/6edaUX5zAd4RiE24TEr4FOExFKXuRhxIB6j
	vVb9LZvhIEU7Vl3BFrKhWpDWFwZ9Yao=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1627061321; a=rsa-sha256;
	cv=none;
	b=Bks1ZD9hcQhDD5m8AIvATt68xVUaubhMEKHp3tnaVNSj8FpH+k1YV2xr8QW1NWTSRIWPpr
	ssJWIYpxbb3ksPRI2BmxkrUlmKQgN/cH7rPmtvL2wBSpO/ml72h4M8DFGYaZDrMMNVlvx1
	BQZTRD5Vp1qLwOGmEivPkzQqDoAyBSI=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=wikA8tkj;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: NVHG7WYTIN53JS2ICEFVXTYTSPWYXOKR
X-Message-ID-Hash: NVHG7WYTIN53JS2ICEFVXTYTSPWYXOKR
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/NVHG7WYTIN53JS2ICEFVXTYTSPWYXOKR/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

The commit 4c52729377ea ("kernel.h: split out kstrtox() and simple_strtox=
()
to a separate header") moved the kstrtou64 function to a new header calle=
d
linux/kstrtox.h.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 net/batman-adv/gateway_common.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/batman-adv/gateway_common.c b/net/batman-adv/gateway_com=
mon.c
index fdde305a..9349c76f 100644
--- a/net/batman-adv/gateway_common.c
+++ b/net/batman-adv/gateway_common.c
@@ -10,7 +10,7 @@
 #include <linux/atomic.h>
 #include <linux/byteorder/generic.h>
 #include <linux/errno.h>
-#include <linux/kernel.h>
+#include <linux/kstrtox.h>
 #include <linux/limits.h>
 #include <linux/math64.h>
 #include <linux/netdevice.h>
--=20
2.30.2
