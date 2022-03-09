Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 2167F4D34DA
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed,  9 Mar 2022 17:46:21 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 3D859844A6;
	Wed,  9 Mar 2022 17:46:17 +0100 (CET)
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id ECBDA8447A
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed,  9 Mar 2022 17:46:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1646844373;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ZwpCCR3j0fJP68u+mjeOcu9cn7tpGvSxapemqPWCvhE=;
	b=cqlYL+8mTLRxIvZN3ZFnaSBUkDE/9cMvb4YWqnMz4PyYCzxgAhSf61mmqd//2yGITuBDTA
	IuYuBMaIP7FFOLqcoXVSHuer4XXwb8ObZHkFKNDDc+B5znfl2cL3AFxVV2pbEJf4rL+var
	IEiyttfUcJ6Yj2SMuF+HCxAzuHU3Jj4=
From: Sven Eckelmann <sven@narfation.org>
To: stable@vger.kernel.org
Subject: [PATCH 4.9 2/2] batman-adv: Don't expect inter-netns unique iflink indices
Date: Wed,  9 Mar 2022 17:45:42 +0100
Message-Id: <20220309164542.408824-3-sven@narfation.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220309164542.408824-1-sven@narfation.org>
References: <20220309164542.408824-1-sven@narfation.org>
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1646844374;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=ZwpCCR3j0fJP68u+mjeOcu9cn7tpGvSxapemqPWCvhE=;
	b=ItDwqi4PVB2aHZMdwg2smT3smTJNH7BZHgHWbmyGXuKHEM8cwrbJpMO7bHipEsZpo6bGQ0
	P5yXjmzDdek0mvzjG7qQZ4zl0NJc4XJL03Angs4hM4ZwIx56h7e23o2X37YaOIjx6/1z8H
	OtVcglWP5YGseP5OsL+OKoTqcGRoJFY=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=cqlYL+8m;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1646844374; a=rsa-sha256;
	cv=none;
	b=maS6K3ncYvpHb73p7Ot1qfofNzwoQYE9S81+KkDbXI9LK0EfB9Y3GwE+pQl3KjbLGQ8wXR
	eWdGHHWH7ZoUEx91CkaWnsIZah4Vb9v+bPJGokybqEUjoPnpAKR/kvViHeSQjgvj8D+3+Z
	qtP0nBziRyWMFAIB6zgk+qUA07mTSkI=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: V4W7V6LJUEO3MJ7YO2TOA4WN7ZE47XZ5
X-Message-ID-Hash: V4W7V6LJUEO3MJ7YO2TOA4WN7ZE47XZ5
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: b.a.t.m.a.n@lists.open-mesh.org, Sabrina Dubroca <sd@queasysnail.net>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/V4W7V6LJUEO3MJ7YO2TOA4WN7ZE47XZ5/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

commit 6c1f41afc1dbe59d9d3c8bb0d80b749c119aa334 upstream.

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
[ bp: 4.9 backported: drop modification of non-existing batadv_get_real_n=
etdevice. ]
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 net/batman-adv/hard-interface.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/net/batman-adv/hard-interface.c b/net/batman-adv/hard-interf=
ace.c
index 64cf9cd3be4d..eaf0a483211a 100644
--- a/net/batman-adv/hard-interface.c
+++ b/net/batman-adv/hard-interface.c
@@ -163,13 +163,15 @@ static bool batadv_is_on_batman_iface(const struct =
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
--=20
2.30.2
