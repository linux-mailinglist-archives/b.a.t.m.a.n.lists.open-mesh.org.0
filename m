Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id A95535BB0F7
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 16 Sep 2022 18:15:24 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 95648817C8;
	Fri, 16 Sep 2022 18:15:10 +0200 (CEST)
Received: from simonwunderlich.de (simonwunderlich.de [IPv6:2a01:4f8:c17:e8c0::1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id E1ECC802ED
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 16 Sep 2022 18:15:03 +0200 (CEST)
Received: from kero.packetmixer.de (p200300C5973c57D0711F6270F7F2Cd25.dip0.t-ipconnect.de [IPv6:2003:c5:973c:57d0:711f:6270:f7f2:cd25])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by simonwunderlich.de (Postfix) with ESMTPSA id A34CFFA2A8;
	Fri, 16 Sep 2022 18:15:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=simonwunderlich.de;
	s=09092022; t=1663344903; h=from:from:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=hFzEhch0wSLSZ+/C82epaSdcXfqynQqW7sxrB59l6sU=;
	b=q9Ic3zwE00TPFzf49LnL6nRI71DiCHQNHJgCZ1raHgjU6lJNFBcA5LHf6Hbvn/RtIXWCKE
	AptBoQ8Q4ZoGV3clZj7neSxZX15r4H8YeKlpVlbVh4/UEV7F2Q779kn2tzCrrJ141EOLwk
	3EMvVVHB5SJbjrF7lDuijzCCXsUBv2FqKXhYciPAKiy5cQHhmwcIcyUJDRn7xshHo6xtJz
	vvSo25l3KIxnE0P4EFsUFrQfbsLRSAukzJbm05udNh9XkK+CIrH1G0eTwAh2wBGLC8fLe1
	n8D+6weB8w2UKQS6PRI/jCm896IQQCxd6+olEXjP+vfChOQJNDibuLGnVf0iBg==
From: Simon Wunderlich <sw@simonwunderlich.de>
To: kuba@kernel.org,
	davem@davemloft.net
Subject: [PATCH 4/4] batman-adv: remove unused struct definitions
Date: Fri, 16 Sep 2022 18:14:54 +0200
Message-Id: <20220916161454.1413154-5-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220916161454.1413154-1-sw@simonwunderlich.de>
References: <20220916161454.1413154-1-sw@simonwunderlich.de>
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
	d=simonwunderlich.de; s=09092022; t=1663344903;
	h=from:from:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=hFzEhch0wSLSZ+/C82epaSdcXfqynQqW7sxrB59l6sU=;
	b=dCfdILMrTwcKUmS9A6vyzOtZlZjJeFvaqCGD2af6gVYodjrPCCjgL5CkshgLLX7C2yuT7H
	eH7EKDYZvgEsgFVHtsVzY4sYOx2EZpYzQaB+T5OwMyapVUQUd1TSjuSsW7jHTL0SWDONrQ
	8vu5It+/WEguODsicqHRlwPry2a6/xbDjEclcrOHynidaLz3tL69uI4xij0iByUPY3YY4V
	NUzqwH/CMoLEuxK8PiCZrnhSm8kCcesV/pRyOFSBESXin3l6WKtlxvmprRRNn4trkVKxMf
	K9Q9JKQeJ5V50P2aKl9i6lEx9kQ2aesFlMiemzl64xYeAd6GFCBgFi+7Lo8beQ==
ARC-Seal: i=1; s=09092022; d=simonwunderlich.de; t=1663344903; a=rsa-sha256;
	cv=none;
	b=VbHgrBzwVYfuwoG3BbPtsWU/HNmHiPmy7DfvCkfrqiXQDMpSpquErqOT6bG1kMA3yS1TbD6TAeJnOgH3u3L7e9BsM7/SEinucunvGeww6+7IBwGAL/bAsPhLbzXG/p1IVZXCTMwJwcPpimNCHwMUackjLSmM3OPLyOhc4VJfwOP24RkuaccwDVE5EMSGwkKr9OQNjTxZW0eZhVe9vfG/M7LiHGff4PN29NumKcRhConbLuR8D9CF/rfZmhzAjyvuljmSWfzZuvCUIBfxovpMPAYDYgZZLj4Lg/9191FyUQZiojmvnn7pn/A0HV1/emMDcZ6igDkTIRA1+ECyBA+psQ==
ARC-Authentication-Results: i=1;
	simonwunderlich.de;
	auth=pass smtp.auth=sw@simonwunderlich.de smtp.mailfrom=sw@simonwunderlich.de
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1663344903;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=hFzEhch0wSLSZ+/C82epaSdcXfqynQqW7sxrB59l6sU=;
	b=kObwoppZhTpXzqRhLxQpxK6UzAiLL9lJhZAP7crYBObTqyipY7U46gqAJvICEgJ95iQGgQ
	hWK+9Fej887gTf7U8SKMlH+mxMYvDsaxuym3eqSzudjAUi60ebhXzM1lH8BziB1QvSQPCA
	1+NXtqrl6Pg2kk0y4KZ0WZu6LJiRFkE=
ARC-Authentication-Results: i=2;
	diktynna.open-mesh.org;
	dkim=pass header.d=simonwunderlich.de header.s=09092022 header.b=q9Ic3zwE;
	dmarc=pass (policy=none) header.from=simonwunderlich.de;
	arc=pass ("simonwunderlich.de:s=09092022:i=1");
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates 2a01:4f8:c17:e8c0::1 as permitted sender) smtp.mailfrom=sw@simonwunderlich.de
ARC-Seal: i=2; s=20121; d=open-mesh.org; t=1663344903; a=rsa-sha256;
	cv=pass;
	b=2+mu4VGreDP+qOXx8RwNbq31LPX1CVJrfVocruQBQQQXRLFBav3zNVj1NUXLK/7Chtt7mJ
	DiPEFGT7NNvRhxF8IzJb8U5CrVGCWsz34F5Nx+6L+ykCmd6wkEc/DN8zSf2vvnYFjwRNyZ
	RmZ05qLk2+ahKF4WsDvbnKHDroNIxu8=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: 32CFWD7KCCAUSHTON6E4MRJ2VUELZHYG
X-Message-ID-Hash: 32CFWD7KCCAUSHTON6E4MRJ2VUELZHYG
X-MailFrom: sw@simonwunderlich.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org, Marek Lindner <mareklindner@neomailbox.ch>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/32CFWD7KCCAUSHTON6E4MRJ2VUELZHYG/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

From: Marek Lindner <mareklindner@neomailbox.ch>

Signed-off-by: Marek Lindner <mareklindner@neomailbox.ch>
Signed-off-by: Sven Eckelmann <sven@narfation.org>
Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
---
 net/batman-adv/types.h | 39 ---------------------------------------
 1 file changed, 39 deletions(-)

diff --git a/net/batman-adv/types.h b/net/batman-adv/types.h
index 2be5d4a712c5..758cd797a063 100644
--- a/net/batman-adv/types.h
+++ b/net/batman-adv/types.h
@@ -1740,45 +1740,6 @@ struct batadv_priv {
 #endif
 };
=20
-/**
- * struct batadv_socket_client - layer2 icmp socket client data
- */
-struct batadv_socket_client {
-	/**
-	 * @queue_list: packet queue for packets destined for this socket clien=
t
-	 */
-	struct list_head queue_list;
-
-	/** @queue_len: number of packets in the packet queue (queue_list) */
-	unsigned int queue_len;
-
-	/** @index: socket client's index in the batadv_socket_client_hash */
-	unsigned char index;
-
-	/** @lock: lock protecting queue_list, queue_len & index */
-	spinlock_t lock;
-
-	/** @queue_wait: socket client's wait queue */
-	wait_queue_head_t queue_wait;
-
-	/** @bat_priv: pointer to soft_iface this client belongs to */
-	struct batadv_priv *bat_priv;
-};
-
-/**
- * struct batadv_socket_packet - layer2 icmp packet for socket client
- */
-struct batadv_socket_packet {
-	/** @list: list node for &batadv_socket_client.queue_list */
-	struct list_head list;
-
-	/** @icmp_len: size of the layer2 icmp packet */
-	size_t icmp_len;
-
-	/** @icmp_packet: layer2 icmp packet */
-	u8 icmp_packet[BATADV_ICMP_MAX_PACKET_SIZE];
-};
-
 #ifdef CONFIG_BATMAN_ADV_BLA
=20
 /**
--=20
2.30.2
