Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id C8506346AC5
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 23 Mar 2021 22:06:54 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 972E88227B;
	Tue, 23 Mar 2021 22:06:53 +0100 (CET)
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 0F5FD8029D
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 23 Mar 2021 22:06:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1616533042;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=CSabrskHovihYeBkqSXSCpg6Qjg+SqaeDiCzZtqooic=;
	b=I7BZ1Hb67NboKa9PC6+lFPx7CgdIfOwmalkh2bfoeiOeWGdOJhtnjO+7thMyLLlmNfteGN
	2tubRioREsTap2ozqHqRFRuDekR/f5sMZoeu1s1g206C0UD1GF0SNg8BnIQbTBENfCbg0C
	mx0kgrqgpiUBXtMjU3GXJxAV7wYYHvk=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
Subject: [PATCH] batman-adv: Drop unused header preempt.h
Date: Tue, 23 Mar 2021 21:57:14 +0100
Message-Id: <20210323205714.14769-1-sven@narfation.org>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1616533611; a=rsa-sha256;
	cv=none;
	b=jEqTWXEIbi1MwFf2DzH68NlbigiF1vUA4T53PQ+ssOTL/SrsLExy+HHbqV+2kZKJGYqDqy
	s0t0h4eF7TVoM+N+jk7UX9Ww3visBTV21HOG9AfvLVAMbfkdIRj8hRvQ+vQTGJl1v7Fq0R
	25lGfmVnmSV0GL2wu7qY8Iv/ac+++cw=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=I7BZ1Hb6;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1616533611;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=CSabrskHovihYeBkqSXSCpg6Qjg+SqaeDiCzZtqooic=;
	b=z3ppGwTd7pRp2m2Oeh5gsleUqP8C7Jk1XHLqtUlbEKExS6sTR6DeLDUIBhOyFOIb+wZHH3
	EIrxDqdAS+VDdBj0UiUwUfAxRH4OLqAryJppz9oo67S0y7HnNSVaNrNNKlauXcqO+7/pSS
	bC3UNbtjmaDcH2I+F9mUauvW/H3S6jc=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: AFYKZWGCVOYY7N5UCWTWNTYSCVRPPC2Y
X-Message-ID-Hash: AFYKZWGCVOYY7N5UCWTWNTYSCVRPPC2Y
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/AFYKZWGCVOYY7N5UCWTWNTYSCVRPPC2Y/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

The commit 05456871ea96 ("batman-adv: Use netif_rx_any_context().") remov=
ed
the last user for a function declaration from linux/preempt.h. The includ=
e
should therefore be cleaned up.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 net/batman-adv/bridge_loop_avoidance.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/net/batman-adv/bridge_loop_avoidance.c b/net/batman-adv/brid=
ge_loop_avoidance.c
index bcd543ce..7dc133cf 100644
--- a/net/batman-adv/bridge_loop_avoidance.c
+++ b/net/batman-adv/bridge_loop_avoidance.c
@@ -25,7 +25,6 @@
 #include <linux/lockdep.h>
 #include <linux/netdevice.h>
 #include <linux/netlink.h>
-#include <linux/preempt.h>
 #include <linux/rculist.h>
 #include <linux/rcupdate.h>
 #include <linux/skbuff.h>
--=20
2.30.2
