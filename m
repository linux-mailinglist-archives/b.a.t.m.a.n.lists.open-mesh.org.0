Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C48665681B
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 27 Dec 2022 09:03:13 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 7F8DF84778;
	Tue, 27 Dec 2022 09:03:10 +0100 (CET)
Received: from dvalin.narfation.org (dvalin.narfation.org [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 6DFF884778
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 27 Dec 2022 09:03:08 +0100 (CET)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1672128188;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=8L63c2j6LTBOVSkeMZ+snv+pzTaWATKw3M/VkLJE8Ik=;
	b=3NObIxY6JF4BVE0CPLGct8q+hfbIoCW/AwbT5QuiV9lqQTy1JQX6zOHs8iM4JrpiM4gYdQ
	en2PobuRM4QYksXvYjk1GPHoajJKwKDIKqW7qXdnDU4L3FZRFTspnM55PIx3mLRev2J7Q2
	Of2sD6/twfuYCcCY5PfbkALnamq/MKk=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=YXOlGRLA;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1672128188; a=rsa-sha256;
	cv=none;
	b=gM1e3k11MZCBdgY4coOlKnQG6aymJ0jVHhJhuz6KxFrrGeWBaoxg87GsiojXgd5/x5kq5N
	5eg9TWgvcoM6+QW51bfsC97841SU+cZJWaJhmmB+edMSrLzRDbaG/3l3lIBUGe7w2LdQAc
	SfWghTGOBQECqUsA2B3AlCz5qJZKcSk=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1672128188;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=8L63c2j6LTBOVSkeMZ+snv+pzTaWATKw3M/VkLJE8Ik=;
	b=YXOlGRLAIVnn7jPKfv81PRgO/IHFzWqq9C/nc4MJxQZAkNggFcQZCldPLezs9VIVRZBfJU
	u/FAhAmtaoewlEx3dbZG3oWRpJD3/JXVNZSlHLpGUlvAUlUFdfO9Ff1icMRrjBlUO1Kqb7
	ZQPcWovn/1NdE5xVmXuQ8Fjclct9L/w=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
Subject: batman-adv: Include random.h for get_random_u32_below
Date: Tue, 27 Dec 2022 09:03:01 +0100
Message-Id: <20221227080301.516810-2-sven@narfation.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221227080301.516810-1-sven@narfation.org>
References: <20221227080301.516810-1-sven@narfation.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: 5XG6FZRUBYDLCRXP75636O4UDTH3QTYW
X-Message-ID-Hash: 5XG6FZRUBYDLCRXP75636O4UDTH3QTYW
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/5XG6FZRUBYDLCRXP75636O4UDTH3QTYW/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

The commit a15d3f3c1c2a ("batman-adv: use get_random_u32_below() instead =
of
deprecated function") replaced the prandom.h function prandom_u32_max wit=
h
the random.h function get_random_u32_below.

Signed-off-by: Sven Eckelmann <sven@narfation.org>

diff --git a/net/batman-adv/network-coding.c b/net/batman-adv/network-cod=
ing.c
index 5e1f422b3a94b119746a6b3b5cf64182951e8eb3..ecd871abda34284cd01ae7863=
f8852e479ccc23d 100644
--- a/net/batman-adv/network-coding.c
+++ b/net/batman-adv/network-coding.c
@@ -26,6 +26,7 @@
 #include <linux/net.h>
 #include <linux/netdevice.h>
 #include <linux/printk.h>
+#include <linux/random.h>
 #include <linux/rculist.h>
 #include <linux/rcupdate.h>
 #include <linux/skbuff.h>
