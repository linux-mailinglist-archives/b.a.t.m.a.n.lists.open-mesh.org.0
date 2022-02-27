Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id AB8014C5FF4
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 28 Feb 2022 00:53:24 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 360C284478;
	Mon, 28 Feb 2022 00:53:22 +0100 (CET)
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 1D8A884264
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 28 Feb 2022 00:53:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1646005999;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=t0uHVlbNGevCMIC6Crrz5bYotHCXjwjX+/1e+QLHV/k=;
	b=A5PIPpUs8t5w0QfcI0ziMPEeHNfhReYLK7qfolFrmT7jXHHwp2vq1xT26I6R7/ekyOBR0I
	O0EfKbXh5/fwY1W7acs6q+baVfXU3rJQr/h0hjx61HCrs4EdW+idkTjKChCtgFUW68KWaV
	R2NAxjOhdnWvhP69KY2oJuhuH8ZQD+c=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: [RFC PATCH 3/4] batman-adv: Don't expect inter-netns unique iflink indices
Date: Mon, 28 Feb 2022 00:52:56 +0100
Message-Id: <20220227235257.1324636-3-sven@narfation.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220227235257.1324636-1-sven@narfation.org>
References: <20220227235257.1324636-1-sven@narfation.org>
MIME-Version: 1.0
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=A5PIPpUs;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1646006000; a=rsa-sha256;
	cv=none;
	b=bmN4MzCRm1Ig7vCT6BtMtb4ZWZ5iqo9ZLOG+6K+D00P0iRc1d16gYCacMmY+YoiAr/BYef
	OyDsNZRqSplV6GkErC3w6MB5ufpAUK4bZNqsMZxa8gpvy9aUtJIsrjUSH97bKidwJhft7v
	VFs9nycanH5Z0RhOYaZQYG9qSfhUiLg=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1646006000;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=t0uHVlbNGevCMIC6Crrz5bYotHCXjwjX+/1e+QLHV/k=;
	b=eyDUeS/PGRe1uhtqQaD18TDcXGXCY2dSTEeQbih0DtxG8T4FFgqJojBlmfzqq3Q8o3GNjM
	upGg28YQwTHu+158s4uy/TS/tXRGJHgdfkvBwViPzGSrrU/fPXlg9fS3pA42dNjS2VWv/1
	1kfRzpXiNSF41VXSRcYjL/wKnD3c7GI=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: HZMHGK6S7TOTFS7MTFWGZYIWLYC5VR2C
X-Message-ID-Hash: HZMHGK6S7TOTFS7MTFWGZYIWLYC5VR2C
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: Sabrina Dubroca <sd@queasysnail.net>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/HZMHGK6S7TOTFS7MTFWGZYIWLYC5VR2C/>
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
therefore make sure itself to check both netns' and iflink + ifindex for
equality. Only when they are equal, an "physical" interface was detected
which should stop the traversal. On the other hand, vxcan_get_iflink can
also return 0 in case there was currently no valid peer.

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
