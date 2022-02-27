Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id EBA564C5FF3
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 28 Feb 2022 00:53:19 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 5A49D82816;
	Mon, 28 Feb 2022 00:53:17 +0100 (CET)
Received: from dvalin.narfation.org (dvalin.narfation.org [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id BFAA682816
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 28 Feb 2022 00:53:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1646005994;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=KBQwZptHVfZnzZbN2CasZMUlvQIKWSZ+4EEur87U1VY=;
	b=fR806fCMnV73rJKnkMDgYGjTISAy31cjV5u5U3NFTN5qpb8heqkcKq1WywRAffUo6BNCqy
	qQ77eOlsOjCQgmLBjvIFg7BpthjRhfDExxxuqqUgtaspoF927Og3y3dTR5SZnX2q6VTtNG
	4CukQ0XE+0k7Zm0Hz5oheTJDi6G1Z34=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
Subject: [RFC PATCH 2/4] batman-adv: Request iflink once in batadv_get_real_netdevice
Date: Mon, 28 Feb 2022 00:52:55 +0100
Message-Id: <20220227235257.1324636-2-sven@narfation.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220227235257.1324636-1-sven@narfation.org>
References: <20220227235257.1324636-1-sven@narfation.org>
MIME-Version: 1.0
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=fR806fCM;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1646005994; a=rsa-sha256;
	cv=none;
	b=ezjCINvdwokzKiZ7eXbR1Qh9aivP9UNpgnRvtYC1FjBRcWeOsImNfddP+Q8k42YZOTI7dy
	bh35GBz8T9dN9wRjIkThsQd8GAFLYB26/m+U6rqYX7YqThM2xGIkb6Ia8kjwukv2AEQOpd
	PdtjqP0n1oK2IwHfy/a7pwgFZR32sLM=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1646005994;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=KBQwZptHVfZnzZbN2CasZMUlvQIKWSZ+4EEur87U1VY=;
	b=x02PKBaWiDOBV2kHR2jczwHM3Jx5q3SeFjo1B1/ky8m6pLOF/wescfsw0eXRiPPQkGSWNT
	ieZQl+g846ufu2mgj2wAi/V3Oe4k0eEJCmApHdub+Qywv6F05Ajl3v8T2LRnPoWtt05iiH
	UCH0sJUuvodeMT/NWuwWkLLTf0w8CCY=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: D4QFETVGBAKJMGMCSBFBLG5LQ5VAI7KR
X-Message-ID-Hash: D4QFETVGBAKJMGMCSBFBLG5LQ5VAI7KR
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/D4QFETVGBAKJMGMCSBFBLG5LQ5VAI7KR/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

There is no need to call dev_get_iflink multiple times for the same
net_device in batadv_get_real_netdevice. And since some of the
ndo_get_iflink callbacks are dynamic (for example via RCUs like in
vxcan_get_iflink), it could easily happen that the returned values are no=
t
stable. The pre-checks before __dev_get_by_index are then of course bogus=
.

Fixes: 2b45bb6c3aad ("batman-adv: additional checks for virtual interface=
s on top of WiFi")
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 net/batman-adv/hard-interface.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/net/batman-adv/hard-interface.c b/net/batman-adv/hard-interf=
ace.c
index 774a26c5..8ed128bb 100644
--- a/net/batman-adv/hard-interface.c
+++ b/net/batman-adv/hard-interface.c
@@ -215,14 +215,16 @@ static struct net_device *batadv_get_real_netdevice=
(struct net_device *netdev)
 	struct net_device *real_netdev =3D NULL;
 	struct net *real_net;
 	struct net *net;
-	int ifindex;
+	int iflink;
=20
 	ASSERT_RTNL();
=20
 	if (!netdev)
 		return NULL;
=20
-	if (netdev->ifindex =3D=3D dev_get_iflink(netdev)) {
+	iflink =3D dev_get_iflink(netdev);
+
+	if (netdev->ifindex =3D=3D iflink) {
 		dev_hold(netdev);
 		return netdev;
 	}
@@ -232,9 +234,8 @@ static struct net_device *batadv_get_real_netdevice(s=
truct net_device *netdev)
 		goto out;
=20
 	net =3D dev_net(hard_iface->soft_iface);
-	ifindex =3D dev_get_iflink(netdev);
 	real_net =3D batadv_getlink_net(netdev, net);
-	real_netdev =3D dev_get_by_index(real_net, ifindex);
+	real_netdev =3D dev_get_by_index(real_net, iflink);
=20
 out:
 	batadv_hardif_put(hard_iface);
--=20
2.30.2
