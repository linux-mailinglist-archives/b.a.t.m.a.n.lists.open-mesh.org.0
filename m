Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FB954CAA38
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed,  2 Mar 2022 17:31:12 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 1643B84494;
	Wed,  2 Mar 2022 17:30:58 +0100 (CET)
Received: from simonwunderlich.de (simonwunderlich.de [IPv6:2a01:4f8:c17:e8c0::1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 16A2F80C47
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed,  2 Mar 2022 17:30:53 +0100 (CET)
Received: from kero.packetmixer.de (p200300C597470fc0d439fbe5C3508408.dip0.t-ipconnect.de [IPv6:2003:c5:9747:fc0:d439:fbe5:c350:8408])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by simonwunderlich.de (Postfix) with ESMTPSA id D24A5FA746;
	Wed,  2 Mar 2022 17:30:52 +0100 (CET)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: davem@davemloft.net,
	kuba@kernel.org
Subject: [PATCH 3/3] batman-adv: Don't expect inter-netns unique iflink indices
Date: Wed,  2 Mar 2022 17:30:49 +0100
Message-Id: <20220302163049.101957-4-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220302163049.101957-1-sw@simonwunderlich.de>
References: <20220302163049.101957-1-sw@simonwunderlich.de>
MIME-Version: 1.0
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	dmarc=none;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates 2a01:4f8:c17:e8c0::1 as permitted sender) smtp.mailfrom=sw@simonwunderlich.de
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1646238653; a=rsa-sha256;
	cv=none;
	b=lQrk6NfOY2ZYmBhmohwXTKUYXbtxbSyBY/5In9MgFodCjXKEb1YydV0X4ile35Jl8Mq0vb
	puszEF1Be3jMcL1X56ZnmSwPJzn6tEKAaqE88feaB5eErl/qXu4WHjwOj6pbLyKQlzXAOS
	BOIVy5hnMzZRWGNFGQCKiNsdO3IAYUY=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1646238653;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=fgLucoOzsk4r2dJW8+BMRH10GAiIXjY1qC2T8VTVLVc=;
	b=oPvVDmQ2zBkYxMR0ycFKi45cH1IDJ+Q87yBqTgoNa61DqjjgadzisNOOtDtVXZ4MXXzZ0F
	ZdZOZ8an154OaD5jiH+l8yk4oYwZSV8FvhP4bdFYCgS5jJkgrBwB5BnFF0tkBLSm5RzTqZ
	hoAJ4M3Y653+g6BQ050RUvAkndPp/3k=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: LRZ4A7MIILMHJ6PLA4AQYSJQEDFOFDBT
X-Message-ID-Hash: LRZ4A7MIILMHJ6PLA4AQYSJQEDFOFDBT
X-MailFrom: sw@simonwunderlich.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org, Sabrina Dubroca <sd@queasysnail.net>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/LRZ4A7MIILMHJ6PLA4AQYSJQEDFOFDBT/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

From: Sven Eckelmann <sven@narfation.org>

The ifindex doesn't have to be unique for multiple network namespaces on
the same machine.

  $ ip netns add test1
  $ ip -net test1 link add dummy1 type dummy
  $ ip netns add test2
  $ ip -net test2 link add dummy2 type dummy

  $ ip -net test1 link show dev dummy1
  6: dummy1: <BROADCAST,NOARP> mtu 1500 qdisc noop state DOWN mode DEFAUL=
T group default qlen 1000
      link/ether 96:81:55:1e:dd:85 brd ff:ff:ff:ff:ff:ff
  $ ip -net test2 link show dev dummy2
  6: dummy2: <BROADCAST,NOARP> mtu 1500 qdisc noop state DOWN mode DEFAUL=
T group default qlen 1000
      link/ether 5a:3c:af:35:07:c3 brd ff:ff:ff:ff:ff:ff

But the batman-adv code to walk through the various layers of virtual
interfaces uses this assumption because dev_get_iflink handles it
internally and doesn't return the actual netns of the iflink. And
dev_get_iflink only documents the situation where ifindex =3D=3D iflink f=
or
physical devices.

But only checking for dev->netdev_ops->ndo_get_iflink is also not an opti=
on
because ipoib_get_iflink implements it even when it sometimes returns an
iflink !=3D ifindex and sometimes iflink =3D=3D ifindex. The caller must
therefore make sure itself to check both netns and iflink + ifindex for
equality. Only when they are equal, a "physical" interface was detected
which should stop the traversal. On the other hand, vxcan_get_iflink can
also return 0 in case there was currently no valid peer. In this case, it
is still necessary to stop.

Fixes: b7eddd0b3950 ("batman-adv: prevent using any virtual device create=
d on batman-adv as hard-interface")
Fixes: 5ed4a460a1d3 ("batman-adv: additional checks for virtual interface=
s on top of WiFi")
Reported-by: Sabrina Dubroca <sd@queasysnail.net>
Signed-off-by: Sven Eckelmann <sven@narfation.org>
Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
---
 net/batman-adv/hard-interface.c | 19 ++++++++++++++-----
 1 file changed, 14 insertions(+), 5 deletions(-)

diff --git a/net/batman-adv/hard-interface.c b/net/batman-adv/hard-interf=
ace.c
index e2760cfce190..35fadb924849 100644
--- a/net/batman-adv/hard-interface.c
+++ b/net/batman-adv/hard-interface.c
@@ -157,13 +157,15 @@ static bool batadv_is_on_batman_iface(const struct =
net_device *net_dev)
 		return true;
=20
 	iflink =3D dev_get_iflink(net_dev);
-
-	/* no more parents..stop recursion */
-	if (iflink =3D=3D 0 || iflink =3D=3D net_dev->ifindex)
+	if (iflink =3D=3D 0)
 		return false;
=20
 	parent_net =3D batadv_getlink_net(net_dev, net);
=20
+	/* iflink to itself, most likely physical device */
+	if (net =3D=3D parent_net && iflink =3D=3D net_dev->ifindex)
+		return false;
+
 	/* recurse over the parent device */
 	parent_dev =3D __dev_get_by_index((struct net *)parent_net, iflink);
 	/* if we got a NULL parent_dev there is something broken.. */
@@ -223,8 +225,7 @@ static struct net_device *batadv_get_real_netdevice(s=
truct net_device *netdev)
 		return NULL;
=20
 	iflink =3D dev_get_iflink(netdev);
-
-	if (netdev->ifindex =3D=3D iflink) {
+	if (iflink =3D=3D 0) {
 		dev_hold(netdev);
 		return netdev;
 	}
@@ -235,6 +236,14 @@ static struct net_device *batadv_get_real_netdevice(=
struct net_device *netdev)
=20
 	net =3D dev_net(hard_iface->soft_iface);
 	real_net =3D batadv_getlink_net(netdev, net);
+
+	/* iflink to itself, most likely physical device */
+	if (net =3D=3D real_net && netdev->ifindex =3D=3D iflink) {
+		real_netdev =3D netdev;
+		dev_hold(real_netdev);
+		goto out;
+	}
+
 	real_netdev =3D dev_get_by_index(real_net, iflink);
=20
 out:
--=20
2.30.2
