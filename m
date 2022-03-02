Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 795304CAA66
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed,  2 Mar 2022 17:35:43 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 522A1844B5;
	Wed,  2 Mar 2022 17:35:30 +0100 (CET)
Received: from simonwunderlich.de (simonwunderlich.de [IPv6:2a01:4f8:c17:e8c0::1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 5808080871
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed,  2 Mar 2022 17:35:26 +0100 (CET)
Received: from kero.packetmixer.de (p200300C597470fC0D439FBe5c3508408.dip0.t-ipconnect.de [IPv6:2003:c5:9747:fc0:d439:fbe5:c350:8408])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by simonwunderlich.de (Postfix) with ESMTPSA id 25D48FA750;
	Wed,  2 Mar 2022 17:35:26 +0100 (CET)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: kuba@kernel.org,
	davem@davemloft.net
Subject: [PATCH 4/4] batman-adv: Demote batadv-on-batadv skip error message
Date: Wed,  2 Mar 2022 17:35:22 +0100
Message-Id: <20220302163522.102842-5-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220302163522.102842-1-sw@simonwunderlich.de>
References: <20220302163522.102842-1-sw@simonwunderlich.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	dmarc=none;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates 2a01:4f8:c17:e8c0::1 as permitted sender) smtp.mailfrom=sw@simonwunderlich.de
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1646238926; a=rsa-sha256;
	cv=none;
	b=ieiRtiLdnfa3cFytfiCwNn62+3yzPurbu73vPwsikdMDTn1Yb8ZwaXu7yx0vWnAoK4tMiQ
	t4mbzy/TCLmuDsvH/P/2peGrAhQ9vMzOnkzxmikNoGWJm7s2OS7QyZtzC3KdH3Gx8YtEv8
	vb+bhR61Go8SoTPjDjz+HD6kXRStPtM=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1646238926;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=IuYFVh0OZuakD0ojdEiCYBsJP2qYGd5jnsbEXzqEuaM=;
	b=W8a5dmzKEBndSau7tx+E3kqdY5ipGvuazU7Gh4keXBDVhWFOKEhNJBUSgfv9R7SF9n8p2O
	OIU49kpvXOmzupX4u0qQvjlwi/Mss5Un4EwdkZQYMvvZB538uI8X9El2BuFKiGZerWJNoe
	iiictsOAEkdUoqUkGyT3YWHJ5Jn86KU=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: 5YQTNDT27O7MJXO7UZYYC2VV5UFU6XNN
X-Message-ID-Hash: 5YQTNDT27O7MJXO7UZYYC2VV5UFU6XNN
X-MailFrom: sw@simonwunderlich.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org, =?UTF-8?q?Leonardo=20M=C3=B6rlein?= <freifunk@irrelefant.net>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/5YQTNDT27O7MJXO7UZYYC2VV5UFU6XNN/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

From: Sven Eckelmann <sven@narfation.org>

The error message "Cannot find parent device" was shown for users of
macvtap (on batadv devices) whenever the macvtap was moved to a different
netns. This happens because macvtap doesn't provide an implementation for
rtnl_link_ops->get_link_net.

The situation for which this message is printed is actually not an error
but just a warning that the optional sanity check was skipped. So demote
the message from error to warning and adjust the text to better explain
what happened.

Reported-by: Leonardo M=C3=B6rlein <freifunk@irrelefant.net>
Signed-off-by: Sven Eckelmann <sven@narfation.org>
Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
---
 net/batman-adv/hard-interface.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/net/batman-adv/hard-interface.c b/net/batman-adv/hard-interf=
ace.c
index 59d19097a54c..b25afc7ff59c 100644
--- a/net/batman-adv/hard-interface.c
+++ b/net/batman-adv/hard-interface.c
@@ -165,9 +165,9 @@ static bool batadv_is_on_batman_iface(const struct ne=
t_device *net_dev)
 	/* recurse over the parent device */
 	parent_dev =3D __dev_get_by_index((struct net *)parent_net,
 					dev_get_iflink(net_dev));
-	/* if we got a NULL parent_dev there is something broken.. */
 	if (!parent_dev) {
-		pr_err("Cannot find parent device\n");
+		pr_warn("Cannot find parent device. Skipping batadv-on-batadv check fo=
r %s\n",
+			net_dev->name);
 		return false;
 	}
=20
--=20
2.30.2
