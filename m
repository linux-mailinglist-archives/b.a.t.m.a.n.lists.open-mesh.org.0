Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id DAEFA48356E
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon,  3 Jan 2022 18:17:57 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id B1A6B83F12;
	Mon,  3 Jan 2022 18:17:54 +0100 (CET)
Received: from simonwunderlich.de (simonwunderlich.de [23.88.38.48])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id C1A098250E
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon,  3 Jan 2022 18:17:50 +0100 (CET)
Received: from kero.packetmixer.de (p200300C597476fC09af9dad664F33736.dip0.t-ipconnect.de [IPv6:2003:c5:9747:6fc0:9af9:dad6:64f3:3736])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by simonwunderlich.de (Postfix) with ESMTPSA id 98C94FA1C1;
	Mon,  3 Jan 2022 18:17:50 +0100 (CET)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: kuba@kernel.org,
	davem@davemloft.net
Subject: [PATCH 1/3] batman-adv: Start new development cycle
Date: Mon,  3 Jan 2022 18:17:20 +0100
Message-Id: <20220103171722.1126109-2-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220103171722.1126109-1-sw@simonwunderlich.de>
References: <20220103171722.1126109-1-sw@simonwunderlich.de>
MIME-Version: 1.0
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates 23.88.38.48 as permitted sender) smtp.mailfrom=sw@simonwunderlich.de;
	dmarc=none
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1641230270; a=rsa-sha256;
	cv=none;
	b=cG7ZY+dUSmkyTHCZjDKXSRGkbNhDJvT2G+Z+USN0ckwbdBtjN81L8VymnfbCmvSVbWJYe1
	h9p5CAKcr1/WI6Wo6tk7DYQW6ttNHQa5P9s6uZAhHfBoK+z6S3nqYXIjrAziKvuwUbmfw+
	/rGKhV6Hp0tJWbQ34ZmKDCla/y70m7s=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1641230270;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=LP1N6KJ9/fuIlFqWKGBxdCUiNik5NypfR74SWbunX/k=;
	b=t1KMK0+D5ROerKjPOdK+TdK9km8GzOw8YXFvKeaxYwKdCj3LJYdhoOKwhW6Bu0LO3WH/1m
	D2ajw6AHFTnOcoAMZdo4QJB6udYdNwKi+1ZS1LlpFddnR1NDme9eY3Z9Tfg83KcR19h1I3
	2nDxT1Sr0TOO2xVYNqRyCbRkNJeW5XY=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: EU36BMHZVNFHYH64D7BUNVDYKAW7ETRZ
X-Message-ID-Hash: EU36BMHZVNFHYH64D7BUNVDYKAW7ETRZ
X-MailFrom: sw@simonwunderlich.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/EU36BMHZVNFHYH64D7BUNVDYKAW7ETRZ/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

This version will contain all the (major or even only minor) changes for
Linux 5.17.

The version number isn't a semantic version number with major and minor
information. It is just encoding the year of the expected publishing as
Linux -rc1 and the number of published versions this year (starting at 0)=
.

Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
---
 net/batman-adv/main.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/batman-adv/main.h b/net/batman-adv/main.h
index 058b8f2eef65..494d1ebecac2 100644
--- a/net/batman-adv/main.h
+++ b/net/batman-adv/main.h
@@ -13,7 +13,7 @@
 #define BATADV_DRIVER_DEVICE "batman-adv"
=20
 #ifndef BATADV_SOURCE_VERSION
-#define BATADV_SOURCE_VERSION "2021.3"
+#define BATADV_SOURCE_VERSION "2022.0"
 #endif
=20
 /* B.A.T.M.A.N. parameters */
--=20
2.30.2
