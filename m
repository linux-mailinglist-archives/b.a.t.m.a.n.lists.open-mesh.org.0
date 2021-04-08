Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id A6345358281
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu,  8 Apr 2021 13:54:11 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 0E8A682817;
	Thu,  8 Apr 2021 13:54:07 +0200 (CEST)
Received: from simonwunderlich.de (simonwunderlich.de [79.140.42.25])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id C54C2812E1
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu,  8 Apr 2021 13:54:03 +0200 (CEST)
Received: from kero.packetmixer.de (p200300c5971bd8e0263584131c53e2d7.dip0.t-ipconnect.de [IPv6:2003:c5:971b:d8e0:2635:8413:1c53:e2d7])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by simonwunderlich.de (Postfix) with ESMTPSA id 4EE64174020;
	Thu,  8 Apr 2021 13:54:03 +0200 (CEST)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: kuba@kernel.org,
	davem@davemloft.net
Subject: [PATCH 1/3] batman-adv: Fix order of kernel doc in batadv_priv
Date: Thu,  8 Apr 2021 13:53:59 +0200
Message-Id: <20210408115401.16988-2-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210408115401.16988-1-sw@simonwunderlich.de>
References: <20210408115401.16988-1-sw@simonwunderlich.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates 79.140.42.25 as permitted sender) smtp.mailfrom=sw@simonwunderlich.de
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1617882843; a=rsa-sha256;
	cv=none;
	b=vNWjmEeQbdy/2Dwlg3hurq5wPC2Fp+9nBuo8zIYODIFzG8ppx7gjknhrXMGC7W/UEtapID
	VO318Z6LE/sLouHMxA8QsbOIA8yLYDR4fa9quBmy12uzDwGsIzoVVaXzyPRceMh/EpYW/t
	OFiPqUrcAPesV9YI09TS7sTCVOy2PMs=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1617882843;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ArzvTfZOmw5yyAwUHcZHt5zXKXKVZ0ihQmRMwongNQU=;
	b=Zu53k/7gVsU5nE0tIHlvwd3gazTd6ZwF2FIodzcjZZVn9fIqLYorTnW+97X1/S/lvPyaeo
	rrx0dW0bNTEtmbOjmGERmeUxbngPIZzxrXeos6cm4+PCVKLVA+ArEzVjwDdGxHar0G38Pa
	+xztmEs2mDx8bQdsBzdCAC2lYSP3glQ=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: P7ZFG2PUVZFIOKIGWKEP4OAAEOTDWPNQ
X-Message-ID-Hash: P7ZFG2PUVZFIOKIGWKEP4OAAEOTDWPNQ
X-MailFrom: sw@simonwunderlich.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/P7ZFG2PUVZFIOKIGWKEP4OAAEOTDWPNQ/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

From: Linus L=C3=BCssing <linus.luessing@c0d3.blue>

During the inlining process of kerneldoc in commit 8b84cc4fb556
("batman-adv: Use inline kernel-doc for enum/struct"), some comments were
placed at the wrong struct members. Fixing this by reordering the comment=
s.

Signed-off-by: Linus L=C3=BCssing <linus.luessing@c0d3.blue>
Signed-off-by: Sven Eckelmann <sven@narfation.org>
Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
---
 net/batman-adv/types.h | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/net/batman-adv/types.h b/net/batman-adv/types.h
index 7c0b475cc22a..2be5d4a712c5 100644
--- a/net/batman-adv/types.h
+++ b/net/batman-adv/types.h
@@ -1659,19 +1659,19 @@ struct batadv_priv {
 	/** @tp_list: list of tp sessions */
 	struct hlist_head tp_list;
=20
-	/** @tp_num: number of currently active tp sessions */
+	/** @orig_hash: hash table containing mesh participants (orig nodes) */
 	struct batadv_hashtable *orig_hash;
=20
-	/** @orig_hash: hash table containing mesh participants (orig nodes) */
+	/** @forw_bat_list_lock: lock protecting forw_bat_list */
 	spinlock_t forw_bat_list_lock;
=20
-	/** @forw_bat_list_lock: lock protecting forw_bat_list */
+	/** @forw_bcast_list_lock: lock protecting forw_bcast_list */
 	spinlock_t forw_bcast_list_lock;
=20
-	/** @forw_bcast_list_lock: lock protecting forw_bcast_list */
+	/** @tp_list_lock: spinlock protecting @tp_list */
 	spinlock_t tp_list_lock;
=20
-	/** @tp_list_lock: spinlock protecting @tp_list */
+	/** @tp_num: number of currently active tp sessions */
 	atomic_t tp_num;
=20
 	/** @orig_work: work queue callback item for orig node purging */
--=20
2.20.1
