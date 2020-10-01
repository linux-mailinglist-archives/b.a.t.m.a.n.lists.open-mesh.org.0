Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 4687727FC7C
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu,  1 Oct 2020 11:30:45 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id C952F80845;
	Thu,  1 Oct 2020 11:30:39 +0200 (CEST)
Received: from us-smtp-delivery-44.mimecast.com (us-smtp-delivery-44.mimecast.com [207.211.30.44])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 951CB805F1
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu,  1 Oct 2020 10:00:55 +0200 (CEST)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-283-xfHXktrMMp-DTQpSgZrIYQ-1; Thu, 01 Oct 2020 04:00:48 -0400
X-MC-Unique: xfHXktrMMp-DTQpSgZrIYQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 882F210BBED0;
	Thu,  1 Oct 2020 08:00:46 +0000 (UTC)
Received: from hog.localdomain, (unknown [10.40.192.241])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 9E5705C1CF;
	Thu,  1 Oct 2020 08:00:44 +0000 (UTC)
From: Sabrina Dubroca <sd@queasysnail.net>
To: netdev@vger.kernel.org
Subject: [PATCH net 11/12] batman-adv: fix iflink detection in batadv_is_on_batman_iface
Date: Thu,  1 Oct 2020 09:59:35 +0200
Message-Id: <afa206858a88910691bdb917d0956cea3f32f667.1600770261.git.sd@queasysnail.net>
In-Reply-To: <cover.1600770261.git.sd@queasysnail.net>
References: <cover.1600770261.git.sd@queasysnail.net>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=sd@queasysnail.net
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: queasysnail.net
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=WINDOWS-1252
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1601539256;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=vKHr3Uh6hjZ4ArCpHl8IBK8GNSHgr0B2cFZxq8Ubec4=;
	b=RNtpCUZQWmgyk7ErUVmVrAtie4AXMpDqXeYRAycOBEMc++0QBQFTCyszTecgNFZbRSlJVY
	wMKevUeb4emZb6BUOV+JpmnecUK+duqP3gt48IUpz2kQjed1Dz16RgDrQ+CpHrVzKctGYv
	dxyyp9cr71rT+usWIYPUJfTiux41J4w=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1601539256; a=rsa-sha256;
	cv=none;
	b=kx/ydnbrZ5C1BUG3oSe4+8zAxPNx/Co25ZzPHfNKdSSTFff7yLzC+AxKe+bk64KqSD35TM
	sVvwJ6watyyjFGsmPT5mSGZpqS5r/l8d8Bul834Jo0TahE6CQHny5lwDyGgJHwVFdJ1LyO
	Sc4xLgjsnE9SVxABRv3ElealDByKMg0=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=none (diktynna.open-mesh.org: domain of sd@queasysnail.net has no SPF policy when checking 207.211.30.44) smtp.mailfrom=sd@queasysnail.net
X-MailFrom: sd@queasysnail.net
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
Message-ID-Hash: 4A4F2JLOYPNIELC7KWHQ6GOEYXUUYV2D
X-Message-ID-Hash: 4A4F2JLOYPNIELC7KWHQ6GOEYXUUYV2D
X-Mailman-Approved-At: Thu, 01 Oct 2020 09:30:35 +0200
CC: Sabrina Dubroca <sd@queasysnail.net>, Marek Lindner <mareklindner@neomailbox.ch>, Antonio Quartulli <a@unstable.cc>, b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/4A4F2JLOYPNIELC7KWHQ6GOEYXUUYV2D/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

BATMAN compares ifindex with dev_get_iflink to detect devices that
don't have a parent, but that's wrong, since a device can have the
same index as its parent if it's created in a different network
namespace:

    ip netns add main
    ip netns add peer
    ip -net main link add dummy0 type dummy
    # keep ifindex in sync between the namespaces
    ip -net peer link add eatidx type dummy

    ip netns exec main batctl if add dummy0
    # macsec0 and bat0 have the same ifindex
    ip -net main link add link bat0 netns peer type macsec
    ip netns exec peer batctl if add macsec0

That last command would fail if we didn't keep the ifindex in sync
between the two namespaces, and should also fail when the macsec0
device has the same ifindex as its link. Let's use the presence of a
ndo_get_iflink operation, rather than the value it returns, to detect
a device without a link.

Fixes: b7eddd0b3950 ("batman-adv: prevent using any virtual device created =
on batman-adv as hard-interface")
Signed-off-by: Sabrina Dubroca <sd@queasysnail.net>
---
 net/batman-adv/hard-interface.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/batman-adv/hard-interface.c b/net/batman-adv/hard-interfac=
e.c
index fa06b51c0144..0d87c5d56844 100644
--- a/net/batman-adv/hard-interface.c
+++ b/net/batman-adv/hard-interface.c
@@ -159,7 +159,7 @@ static bool batadv_is_on_batman_iface(const struct net_=
device *net_dev)
=20
 =09/* no more parents..stop recursion */
 =09if (dev_get_iflink(net_dev) =3D=3D 0 ||
-=09    dev_get_iflink(net_dev) =3D=3D net_dev->ifindex)
+=09    !(net_dev->netdev_ops && net_dev->netdev_ops->ndo_get_iflink))
 =09=09return false;
=20
 =09parent_net =3D batadv_getlink_net(net_dev, net);
--=20
2.28.0
