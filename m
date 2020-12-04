Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C0E52CF145
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri,  4 Dec 2020 16:55:22 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id B3EE48263A;
	Fri,  4 Dec 2020 16:55:16 +0100 (CET)
Received: from simonwunderlich.de (packetmixer.de [IPv6:2001:4d88:2000:24::c0de])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 8D066809F8
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri,  4 Dec 2020 16:55:07 +0100 (CET)
Received: from kero.packetmixer.de (p200300c59716c1e0c1b6a3b925be22c4.dip0.t-ipconnect.de [IPv6:2003:c5:9716:c1e0:c1b6:a3b9:25be:22c4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by simonwunderlich.de (Postfix) with ESMTPSA id 41B8B174067;
	Fri,  4 Dec 2020 16:46:36 +0100 (CET)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: davem@davemloft.net,
	kuba@kernel.org
Subject: [PATCH 8/8] batman-adv: Drop unused soft-interface.h include in fragmentation.c
Date: Fri,  4 Dec 2020 16:46:31 +0100
Message-Id: <20201204154631.21063-9-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201204154631.21063-1-sw@simonwunderlich.de>
References: <20201204154631.21063-1-sw@simonwunderlich.de>
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1607097307;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=T/ZwBxbw6TSnrnHZqgYlEL/yonj1m0BTV1EosbYghT8=;
	b=g8BgVKqwzmv+/+pIuX1FkLG7eU9Bz1B9PzFj+ExiMsqXXVuTFF8PGs3ERBODDTzfOVFsYw
	mzw8FW07HEQSVadGo2UhDZknr/UzKsUVtwi0sEiCZ09HGH7Rt5OnCQtbWRrNJNTM5flhmL
	a640KwTW12VVPI5WSWKP7Jl/7o9zYw0=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1607097307; a=rsa-sha256;
	cv=none;
	b=c1Si40yOTGIPshNVU2/TUrWsJG4R4N3vfYLNaBrsQ5zDEu/Mnyc7UBsR1MI2zwjzQHyEcY
	yVlH1CaL3jMSl/d0IZ4a557CFnkv3g739bi8yjyc+hEunYVVlnN6Uw16li10s+BXE0t0FQ
	mEGYRGOb96rau4ifQigbOWlAlYMHWOY=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates 2001:4d88:2000:24::c0de as permitted sender) smtp.mailfrom=sw@simonwunderlich.de
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: KUJGFVHMCYRMOI2OAUVDCRDOKQJE5F7A
X-Message-ID-Hash: KUJGFVHMCYRMOI2OAUVDCRDOKQJE5F7A
X-MailFrom: sw@simonwunderlich.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/KUJGFVHMCYRMOI2OAUVDCRDOKQJE5F7A/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

The commit 992b03b88e36 ("batman-adv: Don't always reallocate the
fragmentation skb head") removed the last user of functions from
soft-interface.h.

Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
---
 net/batman-adv/fragmentation.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/net/batman-adv/fragmentation.c b/net/batman-adv/fragmentatio=
n.c
index 59ebd73125bf..e522f1fcfd9a 100644
--- a/net/batman-adv/fragmentation.c
+++ b/net/batman-adv/fragmentation.c
@@ -27,7 +27,6 @@
 #include "originator.h"
 #include "routing.h"
 #include "send.h"
-#include "soft-interface.h"
=20
 /**
  * batadv_frag_clear_chain() - delete entries in the fragment buffer cha=
in
--=20
2.20.1
