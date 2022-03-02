Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id A2A194CADEA
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed,  2 Mar 2022 19:50:04 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id A6E09844AB;
	Wed,  2 Mar 2022 19:50:00 +0100 (CET)
Received: from dvalin.narfation.org (dvalin.narfation.org [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 5D1E880CC7
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed,  2 Mar 2022 19:49:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1646246997;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=KBQwZptHVfZnzZbN2CasZMUlvQIKWSZ+4EEur87U1VY=;
	b=Vg70RwLqnpLRpzA1+8IYB8gd7SaOe6FbFMshVb6IPDT+dtXklE6udcdME73PJWLCVrClT+
	UzWtv0ts82RGc67pb/ARhlcscpnQc2BforiTWaNWhr8Jvp7wbfwV1tmbDKsJ5ddJCueVp7
	ZIpjxbziCDvciTV5H9eMuDrc8VFVX8Q=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
Subject: [PATCH maint 2/3] batman-adv: Request iflink once in batadv_get_real_netdevice
Date: Wed,  2 Mar 2022 19:49:45 +0100
Message-Id: <20220302184946.414934-2-sven@narfation.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220302184946.414934-1-sven@narfation.org>
References: <20220302184946.414934-1-sven@narfation.org>
MIME-Version: 1.0
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=Vg70RwLq;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1646246997; a=rsa-sha256;
	cv=none;
	b=pq3sEPFGW89wXLdpeXZySH/dGonPYY630GFyYRxYXxrz2KD63hgmryj++5NyzJehpXgflX
	273JUIN1IGZvM6e85Bzsfxf55O/1vHzJU4aQlaq9dD9aBxvR6gz5ht0Z8ZAzZ2kAVGZBMw
	FYH+C0ZxCtA2HlwZL3kQGVhnK5s8Sws=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1646246997;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=KBQwZptHVfZnzZbN2CasZMUlvQIKWSZ+4EEur87U1VY=;
	b=EYYUHlG2KGmINqT14j0VETJhQiaK+G7LMMpj3CuFFxH1hXaVWRciMEAXuegMverrohU6nh
	QAcfkeOU3jVLYIz+0r2cnMYYCafEiyZIbvgxTcO7wnJNzKH/QoMdQzf3YG4qbrAhpjrWYw
	wsbHSGm8bsJ9AODCToCdixIQBf3Hiuk=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: FC2EN7W2VC2PRYM3HF3JRODLK5RF7R6E
X-Message-ID-Hash: FC2EN7W2VC2PRYM3HF3JRODLK5RF7R6E
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/FC2EN7W2VC2PRYM3HF3JRODLK5RF7R6E/>
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
