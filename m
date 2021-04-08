Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EDDB35829B
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu,  8 Apr 2021 14:00:31 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id F385582CC4;
	Thu,  8 Apr 2021 14:00:26 +0200 (CEST)
Received: from simonwunderlich.de (simonwunderlich.de [79.140.42.25])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 0482780383
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu,  8 Apr 2021 14:00:22 +0200 (CEST)
Received: from kero.packetmixer.de (p200300c5971bd8e0263584131c53e2d7.dip0.t-ipconnect.de [IPv6:2003:c5:971b:d8e0:2635:8413:1c53:e2d7])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by simonwunderlich.de (Postfix) with ESMTPSA id D652C174021;
	Thu,  8 Apr 2021 13:54:03 +0200 (CEST)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: kuba@kernel.org,
	davem@davemloft.net
Subject: [PATCH 2/3] batman-adv: Drop unused header preempt.h
Date: Thu,  8 Apr 2021 13:54:00 +0200
Message-Id: <20210408115401.16988-3-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210408115401.16988-1-sw@simonwunderlich.de>
References: <20210408115401.16988-1-sw@simonwunderlich.de>
MIME-Version: 1.0
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates 79.140.42.25 as permitted sender) smtp.mailfrom=sw@simonwunderlich.de
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1617883223; a=rsa-sha256;
	cv=none;
	b=F9dbepBAfF6MU6+wX+KXj8Vg7PAMEUWdZNAg+M40YGytqPC4PSRMwT15q47BIhkazTl0bn
	n/beUFJ6CFVOA8II9dF+cRRR6PlMNPjPdZJ/UpvtI9g8Ee2CQIP4nmH16xkxQCvCTKH5Eu
	xeDfa1E2vLMibOF5hH9rYXpFrzgD6ZA=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1617883223;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=N+3BDkEFRmyX0xV1UVu1ELn96jXpT91V0icfvd7tfHc=;
	b=0Ur3i/7zf8YvG1o/MnhX8mEYzupu9Rl7f68rZwNNQ4s0EliQPeS+Ou1GXrDillP5L+1LjN
	0YWq/Urhrmogmoe3fBKm47tTS39vkXtljdHTIvlSZh4wPIuztEN+ru38lTHek1tCIkqjvm
	4x8hOi27SD3V/6Kx8lZwqI0gsO8Msf0=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: D2IOU5CAOHIEY2VRSAN54JS5BQ5CSQ7Q
X-Message-ID-Hash: D2IOU5CAOHIEY2VRSAN54JS5BQ5CSQ7Q
X-MailFrom: sw@simonwunderlich.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/D2IOU5CAOHIEY2VRSAN54JS5BQ5CSQ7Q/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

From: Sven Eckelmann <sven@narfation.org>

The commit b1de0f01b011 ("batman-adv: Use netif_rx_any_context().") remov=
ed
the last user for a function declaration from linux/preempt.h. The includ=
e
should therefore be cleaned up.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
---
 net/batman-adv/bridge_loop_avoidance.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/net/batman-adv/bridge_loop_avoidance.c b/net/batman-adv/brid=
ge_loop_avoidance.c
index bcd543ce835b..7dc133cfc363 100644
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
2.20.1
