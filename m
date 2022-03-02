Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id CD5B34CAA37
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed,  2 Mar 2022 17:31:06 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 103F284484;
	Wed,  2 Mar 2022 17:30:57 +0100 (CET)
Received: from simonwunderlich.de (simonwunderlich.de [IPv6:2a01:4f8:c17:e8c0::1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id CA68A8272B
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed,  2 Mar 2022 17:30:52 +0100 (CET)
Received: from kero.packetmixer.de (p200300c597470fC0d439FbE5C3508408.dip0.t-ipconnect.de [IPv6:2003:c5:9747:fc0:d439:fbe5:c350:8408])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by simonwunderlich.de (Postfix) with ESMTPSA id 89E2DFA745;
	Wed,  2 Mar 2022 17:30:52 +0100 (CET)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: davem@davemloft.net,
	kuba@kernel.org
Subject: [PATCH 2/3] batman-adv: Request iflink once in batadv_get_real_netdevice
Date: Wed,  2 Mar 2022 17:30:48 +0100
Message-Id: <20220302163049.101957-3-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220302163049.101957-1-sw@simonwunderlich.de>
References: <20220302163049.101957-1-sw@simonwunderlich.de>
MIME-Version: 1.0
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	dmarc=none;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates 2a01:4f8:c17:e8c0::1 as permitted sender) smtp.mailfrom=sw@simonwunderlich.de
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1646238652; a=rsa-sha256;
	cv=none;
	b=2Y1VcwtjVSVm/RcdqRHKA9BvsmdjKP+hj5knMZXEmo9kqDoZyemDWRdtBiGTia38T0o7N3
	b/fhQTr393DLlHuspu3hfU+Nvkj8aWvXfgld4cGA/9iCKZF2RSlcKBdFfB2F7k8EMdkOUl
	wMOxNtTjV/ev1LVfJxiniBJelCHMGUM=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1646238652;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=7dNZZcDK3sAF62ocxBRpYBOaunDZ5BbUWJ8G+txNG8Y=;
	b=nVo87vTILX4PY9IMGbXGJWslOR85QxMSrATUOnKG9xkhdB/8XEUxClktUf0Ed0RBqAu+c6
	PBMGrQ21U0c42Ni3AZWo4LFGWKpsz4K4DJqQeouF0sKxrIxFVo60O9F6O3GAu8pEhY+Kfp
	zbGgUpuXfs/Rjt3olrg8Counu1uTl2M=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: 6FNAPD7KFPEP6PDGJ425UNSJOYZTTD7U
X-Message-ID-Hash: 6FNAPD7KFPEP6PDGJ425UNSJOYZTTD7U
X-MailFrom: sw@simonwunderlich.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/6FNAPD7KFPEP6PDGJ425UNSJOYZTTD7U/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

From: Sven Eckelmann <sven@narfation.org>

There is no need to call dev_get_iflink multiple times for the same
net_device in batadv_get_real_netdevice. And since some of the
ndo_get_iflink callbacks are dynamic (for example via RCUs like in
vxcan_get_iflink), it could easily happen that the returned values are no=
t
stable. The pre-checks before __dev_get_by_index are then of course bogus=
.

Fixes: 5ed4a460a1d3 ("batman-adv: additional checks for virtual interface=
s on top of WiFi")
Signed-off-by: Sven Eckelmann <sven@narfation.org>
Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
---
 net/batman-adv/hard-interface.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/net/batman-adv/hard-interface.c b/net/batman-adv/hard-interf=
ace.c
index 35aa1122043b..e2760cfce190 100644
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
