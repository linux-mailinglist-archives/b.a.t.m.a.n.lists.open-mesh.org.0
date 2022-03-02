Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E2F34CADEB
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed,  2 Mar 2022 19:50:10 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id E799B844BA;
	Wed,  2 Mar 2022 19:50:03 +0100 (CET)
Received: from dvalin.narfation.org (dvalin.narfation.org [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id C0909844AD
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed,  2 Mar 2022 19:50:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1646247000;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=pC/A67JIOuNMrtCSjO81k07Gl26xRzGD87ShEJKNZG0=;
	b=DjGjAr/VMtj018ZCQQ7NTPlhyaP3C5a5dXeM7A24FI7m7riOf49obKpkdGTFFWyQHMgWgv
	Zv9k47bnIynxWE14qcXx8hfaX68hNS9h6zjQWZx9dD9qsUYLeVrHt6qmLXTQ0XHB0R93Yw
	cHibyNe0RKWztGVCVj8IG8mJ7R64Pg4=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: [PATCH maint 3/3] batman-adv: Don't expect inter-netns unique iflink indices
Date: Wed,  2 Mar 2022 19:49:46 +0100
Message-Id: <20220302184946.414934-3-sven@narfation.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220302184946.414934-1-sven@narfation.org>
References: <20220302184946.414934-1-sven@narfation.org>
MIME-Version: 1.0
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b="DjGjAr/V";
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1646247000; a=rsa-sha256;
	cv=none;
	b=wo50/jgyPC7VxWYQS/UX7pSX0ZVwf71TXYNYp+MS9HQ/X2P3+HOGvRKNSULXHkgyZysoRU
	SVKMocXsJ7cN45oDK3bZIDD5Qy8U5xOSGjOlQMHGAI+REWjLxZG+oQqcH5rYUx32S5+OQE
	qWnP+RpxdxyWO2JtfF0xH666Xp40sco=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1646247000;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=pC/A67JIOuNMrtCSjO81k07Gl26xRzGD87ShEJKNZG0=;
	b=o5NO9kTQrAwD5lSXz3pk1UUWmzUlUpjn781slMwp0Cc8+iZEHmDJk/rELiC8G33IWcnkzi
	DmhyaXQyoApZNB82g9mEQn8dsf4TXBfc8PQPxs+9PUdZKIGvpWTYnBsxjngraL3c+QTbBZ
	ysR7CSulbcCC1rN2Xx1oRPmWlsP5qQY=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: HTO6V2Q4YX77SIMAQBGYTXEDTVQYP4BY
X-Message-ID-Hash: HTO6V2Q4YX77SIMAQBGYTXEDTVQYP4BY
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: Sabrina Dubroca <sd@queasysnail.net>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/HTO6V2Q4YX77SIMAQBGYTXEDTVQYP4BY/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

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

Fixes: 3d48811b27f5 ("batman-adv: prevent using any virtual device create=
d on batman-adv as hard-interface")
Fixes: 2b45bb6c3aad ("batman-adv: additional checks for virtual interface=
s on top of WiFi")
Reported-by: Sabrina Dubroca <sd@queasysnail.net>
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 net/batman-adv/hard-interface.c | 19 ++++++++++++++-----
 1 file changed, 14 insertions(+), 5 deletions(-)

diff --git a/net/batman-adv/hard-interface.c b/net/batman-adv/hard-interf=
ace.c
index 8ed128bb..cdb6e542 100644
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
