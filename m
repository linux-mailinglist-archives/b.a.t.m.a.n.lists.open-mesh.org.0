Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 243251BA740
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 27 Apr 2020 17:06:27 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id EC29580E2B;
	Mon, 27 Apr 2020 17:06:18 +0200 (CEST)
ARC-Seal: i=2; cv=fail; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1587999973;
 b=f0f/goRM2FgtxeNZPeiBb7VobzUJUaYvRkrTCLt59MSuqPAg9M06byqtH5hkVeFufuUSg
 LV9YEfevb3E0mzJRA3u4TrdM5KHzAXwlWozWDK1ScfYMKC4ft1G4veVfiVhr4+pHpOqb/Zd
 PBp8cFfx0Zv8l2JZxCdqoCwJESLwlZg=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1587999973; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=oV+EhhG3DXbOn9zEfpaHhJmAh0QG0gCvXWlvJKTaNDM=;
 b=aDIkksTRiaNk0g0NdkbpqJChh/5p7Vw/JHje6dHIUxpVJ/Y70MA2A6BN3JO3nyHpevzHS
 P1bu88y6R0dEU57/kbbKjn3FJLyc6bwbNruzjVeETt5nkEoPmQ5jzc1LZEFl0cZJhuaMkw2
 0MvSAW1q8PMRP0FrcdjfZEKnwqBVpyw=
ARC-Authentication-Results: i=2; open-mesh.org; dkim=fail;
  arc=fail;
  dmarc=fail header.from=simonwunderlich.de
Authentication-Results: open-mesh.org; dkim=fail; arc=fail; dmarc=fail header.from=simonwunderlich.de
Received: from simonwunderlich.de (simonwunderlich.de [79.140.42.25])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 5D4B480137
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 27 Apr 2020 17:06:11 +0200 (CEST)
Received: from kero.packetmixer.de (p4FD5799A.dip0.t-ipconnect.de [79.213.121.154])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by simonwunderlich.de (Postfix) with ESMTPSA id 26C6A62070;
	Mon, 27 Apr 2020 17:06:11 +0200 (CEST)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: davem@davemloft.net
Subject: [PATCH 3/5] batman-adv: trace: Drop unneeded types.h include
Date: Mon, 27 Apr 2020 17:06:05 +0200
Message-Id: <20200427150607.31401-4-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200427150607.31401-1-sw@simonwunderlich.de>
References: <20200427150607.31401-1-sw@simonwunderlich.de>
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1587999971;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=JVNwxgOndOZaQvqpFfbtqvHGQstYLQWFUVTB0YGoqrk=;
	b=vXJZCzstZdMicnrIAlEDJVxeG4m9bWpskXd+oLDFo7IgNqGXVymSJhYroTaA3DQ0gMLfme
	6gAhs+33oyMFuImw5A76D2W9fQQzxHoDiG/PdU8mehO9HUgBrVxUXZHQD5a7nZ1JM/tgKD
	lSByWmyyqsbbyiqPD8ekhIROy1JJ9+A=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1587999971; a=rsa-sha256;
	cv=none;
	b=kT6ucrh3pac8oywSs3LSA4Br5P8ozrbz+yyAKQhH5RDUG39gBgs7bowiH17rAEwvLz+IOQ
	rYKgl3/XzeT2bkvmb9tem/jxsKDyB4tuzeq5EUEDdRsRaiEewbY52eUjtQKQD8wFSUMeei
	FI+Pw6VP6F4ZERqzhVoKwDOE8mvvD2A=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates 79.140.42.25 as permitted sender) smtp.mailfrom=sw@simonwunderlich.de
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: E4AL7C2FUD3UBZRI2WVRQTQWPTVSPRWO
X-Message-ID-Hash: E4AL7C2FUD3UBZRI2WVRQTQWPTVSPRWO
X-MailFrom: sw@simonwunderlich.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/E4AL7C2FUD3UBZRI2WVRQTQWPTVSPRWO/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

From: Sven Eckelmann <sven@narfation.org>

The commit 04ae87a52074 ("ftrace: Rework event_create_dir()") restructure=
d
various macros in the ftrace framework. These changes also had the nice
side effect that the linux/types.h include is no longer necessary to defi=
ne
some of the types used by these macros.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
---
 net/batman-adv/trace.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/net/batman-adv/trace.h b/net/batman-adv/trace.h
index f631b1e01b89..a87547570b4e 100644
--- a/net/batman-adv/trace.h
+++ b/net/batman-adv/trace.h
@@ -15,7 +15,6 @@
 #include <linux/percpu.h>
 #include <linux/printk.h>
 #include <linux/tracepoint.h>
-#include <linux/types.h>
=20
 #undef TRACE_SYSTEM
 #define TRACE_SYSTEM batadv
--=20
2.20.1
