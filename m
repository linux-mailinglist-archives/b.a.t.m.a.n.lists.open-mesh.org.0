Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id BCC0139FAE7
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue,  8 Jun 2021 17:35:55 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 8ADDC83EE6;
	Tue,  8 Jun 2021 17:35:50 +0200 (CEST)
Received: from simonwunderlich.de (packetmixer.de [IPv6:2001:4d88:2000:24::c0de])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id C189583EB0
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue,  8 Jun 2021 17:35:29 +0200 (CEST)
Received: from kero.packetmixer.de (p200300c5970dd3e020a52263b5aabfb3.dip0.t-ipconnect.de [IPv6:2003:c5:970d:d3e0:20a5:2263:b5aa:bfb3])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by simonwunderlich.de (Postfix) with ESMTPSA id D1ABA17405B;
	Tue,  8 Jun 2021 17:27:06 +0200 (CEST)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: kuba@kernel.org,
	davem@davemloft.net
Subject: [PATCH 11/11] batman-adv: Drop reduntant batadv interface check
Date: Tue,  8 Jun 2021 17:27:00 +0200
Message-Id: <20210608152700.30315-12-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210608152700.30315-1-sw@simonwunderlich.de>
References: <20210608152700.30315-1-sw@simonwunderlich.de>
MIME-Version: 1.0
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1623166529; a=rsa-sha256;
	cv=none;
	b=YcZi1sOz0VOaW/5yxQ+xBtMyxM591Ch6dlFYXyJm1xWM8xFTV39tDhj1WIJcCCvdOPpCQ3
	s70iF67XuwYry23rerJQb2VNMZPAzgac2JFfKnBu8qvW+x1gcOMDPOX/BQ8lyWhY7GpcsM
	0xkTfRbG+tZoH99EGMEcM0l5bXM1yEY=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates 2001:4d88:2000:24::c0de as permitted sender) smtp.mailfrom=sw@simonwunderlich.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1623166529;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=685FmGYBFfHstXKa9+hghaVbaypVKzK+nfXeC96OjYI=;
	b=s0C+gSAxg6s5wN75ej8e1lSlCoEj+Lsc4wJmJE4OcSSjS0hZ9Iv1sqGjir/fNlFGCVt069
	xf/4DD1x4vZjpUKiP5XsEGQbn/8j1iGiaSDjajAbbyIaxfh2CoSXP2Vlp/z08qVKZLrAyd
	unykiUoIzSLB0WypAyz2f9wp3rUIHWI=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: GLDHJFHMUMYE2SGX7BYPWS3T5EYTE5EB
X-Message-ID-Hash: GLDHJFHMUMYE2SGX7BYPWS3T5EYTE5EB
X-MailFrom: sw@simonwunderlich.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/GLDHJFHMUMYE2SGX7BYPWS3T5EYTE5EB/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

From: Sven Eckelmann <sven@narfation.org>

If batadv_hardif_enable_interface is called then its called from its
callback ndo_add_slave. It is therefore not necessary to check if it is a
batadv interface.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
---
 net/batman-adv/hard-interface.c | 9 ---------
 1 file changed, 9 deletions(-)

diff --git a/net/batman-adv/hard-interface.c b/net/batman-adv/hard-interf=
ace.c
index 44b0aa30c30a..55d97e18aa4a 100644
--- a/net/batman-adv/hard-interface.c
+++ b/net/batman-adv/hard-interface.c
@@ -9,7 +9,6 @@
=20
 #include <linux/atomic.h>
 #include <linux/byteorder/generic.h>
-#include <linux/errno.h>
 #include <linux/gfp.h>
 #include <linux/if.h>
 #include <linux/if_arp.h>
@@ -698,14 +697,6 @@ int batadv_hardif_enable_interface(struct batadv_har=
d_iface *hard_iface,
 	kref_get(&hard_iface->refcount);
=20
 	dev_hold(soft_iface);
-
-	if (!batadv_softif_is_valid(soft_iface)) {
-		pr_err("Can't create batman mesh interface %s: already exists as regul=
ar interface\n",
-		       soft_iface->name);
-		ret =3D -EINVAL;
-		goto err_dev;
-	}
-
 	hard_iface->soft_iface =3D soft_iface;
 	bat_priv =3D netdev_priv(hard_iface->soft_iface);
=20
--=20
2.20.1
