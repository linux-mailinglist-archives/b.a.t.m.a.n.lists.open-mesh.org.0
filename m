Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id A311C358298
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu,  8 Apr 2021 14:00:27 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 5BA3E80383;
	Thu,  8 Apr 2021 14:00:26 +0200 (CEST)
Received: from simonwunderlich.de (simonwunderlich.de [79.140.42.25])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 079C180FD5
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu,  8 Apr 2021 14:00:22 +0200 (CEST)
Received: from kero.packetmixer.de (p200300c5971bd8e0263584131c53e2d7.dip0.t-ipconnect.de [IPv6:2003:c5:971b:d8e0:2635:8413:1c53:e2d7])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by simonwunderlich.de (Postfix) with ESMTPSA id 546C6174022;
	Thu,  8 Apr 2021 13:54:04 +0200 (CEST)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: kuba@kernel.org,
	davem@davemloft.net
Subject: [PATCH 3/3] batman-adv: Fix misspelled "wont"
Date: Thu,  8 Apr 2021 13:54:01 +0200
Message-Id: <20210408115401.16988-4-sw@simonwunderlich.de>
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
	b=dX200ZTi85z4nFcNH+dAEtp7HGZ7RN/9mxo/+kl6Fyl+fe5bwtWkPXXuf45O6ulXiCsYL4
	l/RotgdalV5iIoJyKeaXgiHDfeotgdyDvApgFrYU64wMCFg0KDo8/2HrLYQ+zySyTKeubj
	BND4+/8bSk/fdwByemgblS6HgJph6Z0=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1617883223;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=LxdrFKp0tSeJzvNZPEjDUu8hsfE8GlgWyDMYBDaCy2E=;
	b=df5WifMNnWyGwaXuw/utXFOOsq17IKtvaEG9fWd4v483hx2iNt4s1n/b5tTMhwd9gkL/1B
	iUtdvdOsEXbJp7ijTg/8F/osIB95+4+jYV4HZ5Fn4duGzBQgb8fJKjZ4GyRZaNGgvXGl/u
	ymG28ACCU2DwaNC737hKCwT6A+yET2g=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: X3H47FDVDZ3D47RAQWWHLM3O3M3YOVRX
X-Message-ID-Hash: X3H47FDVDZ3D47RAQWWHLM3O3M3YOVRX
X-MailFrom: sw@simonwunderlich.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/X3H47FDVDZ3D47RAQWWHLM3O3M3YOVRX/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

From: Sven Eckelmann <sven@narfation.org>

checkpatch started to complain about the mispelling of:

  CHECK: 'wont' may be misspelled - perhaps 'won't'?
  #459: FILE: ./net/batman-adv/bat_iv_ogm.c:459:
  +    * - the resulting packet wont be bigger than

Signed-off-by: Sven Eckelmann <sven@narfation.org>
Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
---
 net/batman-adv/bat_iv_ogm.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/batman-adv/bat_iv_ogm.c b/net/batman-adv/bat_iv_ogm.c
index a5e313cd6f44..789f257be24f 100644
--- a/net/batman-adv/bat_iv_ogm.c
+++ b/net/batman-adv/bat_iv_ogm.c
@@ -456,7 +456,7 @@ batadv_iv_ogm_can_aggregate(const struct batadv_ogm_p=
acket *new_bat_ogm_packet,
 	 * if:
 	 *
 	 * - the send time is within our MAX_AGGREGATION_MS time
-	 * - the resulting packet wont be bigger than
+	 * - the resulting packet won't be bigger than
 	 *   MAX_AGGREGATION_BYTES
 	 * otherwise aggregation is not possible
 	 */
--=20
2.20.1
