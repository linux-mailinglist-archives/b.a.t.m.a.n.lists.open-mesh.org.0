Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 825EA27FC7B
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu,  1 Oct 2020 11:30:40 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 2853B8008C;
	Thu,  1 Oct 2020 11:30:39 +0200 (CEST)
Received: from us-smtp-delivery-44.mimecast.com (us-smtp-delivery-44.mimecast.com [205.139.111.44])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 3D92880246
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu,  1 Oct 2020 10:00:55 +0200 (CEST)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-402-6b_LtMKCMyORfAEColTw4A-1; Thu, 01 Oct 2020 04:00:50 -0400
X-MC-Unique: 6b_LtMKCMyORfAEColTw4A-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9FA913EB9;
	Thu,  1 Oct 2020 08:00:48 +0000 (UTC)
Received: from hog.localdomain, (unknown [10.40.192.241])
	by smtp.corp.redhat.com (Postfix) with ESMTP id E20CB5C1CF;
	Thu,  1 Oct 2020 08:00:46 +0000 (UTC)
From: Sabrina Dubroca <sd@queasysnail.net>
To: netdev@vger.kernel.org
Subject: [PATCH net 12/12] batman-adv: fix detection of lower link in batadv_get_real_netdevice
Date: Thu,  1 Oct 2020 09:59:36 +0200
Message-Id: <9599bc5738a16580aa5b87a6586110953918d622.1600770261.git.sd@queasysnail.net>
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
	s=20121; t=1601539255;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ROpAptWzKmiliCAZhXDfSg2Ov7kyvBxKk9XmlSz8+hc=;
	b=w8Z++URPnoi2bdb2dUvG1tN8x5qkVZ+Bp+QFaff3DPtIDb/ckTuAEHXiYuT2L9iQmwBW+t
	yLvS0FhdlCPnKJzA7Okkv5DypLA996tzfOzvUN648VT2fc6nTphlGLtOwBCHXQPFtuGvZz
	V/3doN1mOiygdnW42vvjRYzl+HJehD4=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1601539255; a=rsa-sha256;
	cv=none;
	b=XOn6TGVplx5WOwy6S1IK87R4jRr3g8O8jkzizn1QgAHcbkUPZjcAKOZc97nVRleICRiKyD
	BqZjqNRu+XO/3MLdSraV5EbdSCJlrq1EPFfp8EULFZIamsj+nTLT3upwRJS1gHCK5u5wO5
	34ILGKYqNJUwIS/3y0SlOMusNQ0OJBs=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=none (diktynna.open-mesh.org: domain of sd@queasysnail.net has no SPF policy when checking 205.139.111.44) smtp.mailfrom=sd@queasysnail.net
X-MailFrom: sd@queasysnail.net
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
Message-ID-Hash: 732AXLRNMM54LKZ2S5W4PDTL4G473YWR
X-Message-ID-Hash: 732AXLRNMM54LKZ2S5W4PDTL4G473YWR
X-Mailman-Approved-At: Thu, 01 Oct 2020 09:30:35 +0200
CC: Sabrina Dubroca <sd@queasysnail.net>, Marek Lindner <mareklindner@neomailbox.ch>, Antonio Quartulli <a@unstable.cc>, b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/732AXLRNMM54LKZ2S5W4PDTL4G473YWR/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Currently, batadv_get_real_netdevice can return different results in
this situation:

    ip netns add main
    ip netns add peer
    ip -net main link add dummy1 type dummy
    ip -net main link add link dummy1 netns peer type macsec # same ifindex=
 as dummy1
    ip -net main link add link dummy1 netns peer type macsec port 2

Let's use the presence of a ndo_get_iflink operation, rather than the
value it returns, to detect a device without a link.

Fixes: 5ed4a460a1d3 ("batman-adv: additional checks for virtual interfaces =
on top of WiFi")
Signed-off-by: Sabrina Dubroca <sd@queasysnail.net>
---
 net/batman-adv/hard-interface.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/batman-adv/hard-interface.c b/net/batman-adv/hard-interfac=
e.c
index 0d87c5d56844..8f7d2dd37321 100644
--- a/net/batman-adv/hard-interface.c
+++ b/net/batman-adv/hard-interface.c
@@ -223,7 +223,7 @@ static struct net_device *batadv_get_real_netdevice(str=
uct net_device *netdev)
 =09if (!netdev)
 =09=09return NULL;
=20
-=09if (netdev->ifindex =3D=3D dev_get_iflink(netdev)) {
+=09if (!(netdev->netdev_ops && netdev->netdev_ops->ndo_get_iflink)) {
 =09=09dev_hold(netdev);
 =09=09return netdev;
 =09}
--=20
2.28.0
