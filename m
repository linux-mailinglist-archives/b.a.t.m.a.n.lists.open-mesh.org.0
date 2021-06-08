Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F21239FAF4
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue,  8 Jun 2021 17:36:30 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id E1C2A83EEF;
	Tue,  8 Jun 2021 17:36:26 +0200 (CEST)
Received: from simonwunderlich.de (simonwunderlich.de [79.140.42.25])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 0099F83ECD
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue,  8 Jun 2021 17:35:30 +0200 (CEST)
Received: from kero.packetmixer.de (p200300c5970dd3e020a52263b5aabfb3.dip0.t-ipconnect.de [IPv6:2003:c5:970d:d3e0:20a5:2263:b5aa:bfb3])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by simonwunderlich.de (Postfix) with ESMTPSA id CB55617402B;
	Tue,  8 Jun 2021 17:27:04 +0200 (CEST)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: kuba@kernel.org,
	davem@davemloft.net
Subject: [PATCH 07/11] batman-adv: Fix spelling mistakes
Date: Tue,  8 Jun 2021 17:26:56 +0200
Message-Id: <20210608152700.30315-8-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210608152700.30315-1-sw@simonwunderlich.de>
References: <20210608152700.30315-1-sw@simonwunderlich.de>
MIME-Version: 1.0
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1623166530; a=rsa-sha256;
	cv=none;
	b=VaTomElKFw++eJD7CSW/2Yyt8VyzQEfr/oODBqe9ocl8nxMWWCE0vtic4oncjGpRrxLJlv
	cbwmJ/jgdKfAmkMJ09sWwfMhPwoc2KruO9Xl0LKw3+4scX3RyaQDjPWXVPN54v6A5J3L+/
	dvAPHgySCHOMaJpEbRPu5HVGuPkceHM=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates 79.140.42.25 as permitted sender) smtp.mailfrom=sw@simonwunderlich.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1623166530;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=97Bv8CRs//yZYtPUvN2ogilbefcvyIeBDma9L49SBAg=;
	b=uwXNy7o1tU/go/piBCCZbohB2tsxv3nmrZAGiARLBdOpv3UqDiuA2z+R+LK57S8nRz0xJK
	hYOT7WhovuDb7gWKdDnVg5aZG7oKHo5I1DlGW2xOe69KDUp+x3N/zPUKMUMykC2U3jNmqQ
	gjqAvxepMIaTJoC57saj8noZ0f9ZP/Y=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: 2VS2R2X4VVSCM5VVJVPIZN5AJZYLP56V
X-Message-ID-Hash: 2VS2R2X4VVSCM5VVJVPIZN5AJZYLP56V
X-MailFrom: sw@simonwunderlich.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org, Zheng Yongjun <zhengyongjun3@huawei.com>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/2VS2R2X4VVSCM5VVJVPIZN5AJZYLP56V/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

From: Zheng Yongjun <zhengyongjun3@huawei.com>

Fix some spelling mistakes in comments:
containg  =3D=3D> containing
dont  =3D=3D> don't
datas  =3D=3D> data
brodcast  =3D=3D> broadcast

Signed-off-by: Zheng Yongjun <zhengyongjun3@huawei.com>
Signed-off-by: Sven Eckelmann <sven@narfation.org>
Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
---
 net/batman-adv/bridge_loop_avoidance.c | 4 ++--
 net/batman-adv/hard-interface.c        | 2 +-
 net/batman-adv/hash.h                  | 2 +-
 3 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/net/batman-adv/bridge_loop_avoidance.c b/net/batman-adv/brid=
ge_loop_avoidance.c
index 7dc133cfc363..63d42dcc9324 100644
--- a/net/batman-adv/bridge_loop_avoidance.c
+++ b/net/batman-adv/bridge_loop_avoidance.c
@@ -395,7 +395,7 @@ static void batadv_bla_send_claim(struct batadv_priv =
*bat_priv, u8 *mac,
 		break;
 	case BATADV_CLAIM_TYPE_ANNOUNCE:
 		/* announcement frame
-		 * set HW SRC to the special mac containg the crc
+		 * set HW SRC to the special mac containing the crc
 		 */
 		ether_addr_copy(hw_src, mac);
 		batadv_dbg(BATADV_DBG_BLA, bat_priv,
@@ -1040,7 +1040,7 @@ static int batadv_check_claim_group(struct batadv_p=
riv *bat_priv,
 	/* lets see if this originator is in our mesh */
 	orig_node =3D batadv_orig_hash_find(bat_priv, backbone_addr);
=20
-	/* dont accept claims from gateways which are not in
+	/* don't accept claims from gateways which are not in
 	 * the same mesh or group.
 	 */
 	if (!orig_node)
diff --git a/net/batman-adv/hard-interface.c b/net/batman-adv/hard-interf=
ace.c
index 4a6a25d551a8..b99f64f483fc 100644
--- a/net/batman-adv/hard-interface.c
+++ b/net/batman-adv/hard-interface.c
@@ -403,7 +403,7 @@ int batadv_hardif_no_broadcast(struct batadv_hard_ifa=
ce *if_outgoing,
 		goto out;
 	}
=20
-	/* >1 neighbors -> (re)brodcast */
+	/* >1 neighbors -> (re)broadcast */
 	if (rcu_dereference(hlist_next_rcu(first)))
 		goto out;
=20
diff --git a/net/batman-adv/hash.h b/net/batman-adv/hash.h
index 46696759f194..fb251c385a1b 100644
--- a/net/batman-adv/hash.h
+++ b/net/batman-adv/hash.h
@@ -18,7 +18,7 @@
 #include <linux/stddef.h>
 #include <linux/types.h>
=20
-/* callback to a compare function.  should compare 2 element datas for t=
heir
+/* callback to a compare function.  should compare 2 element data for th=
eir
  * keys
  *
  * Return: true if same and false if not same
--=20
2.20.1
