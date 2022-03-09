Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id E19144D34D9
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed,  9 Mar 2022 17:46:15 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 489B784485;
	Wed,  9 Mar 2022 17:46:14 +0100 (CET)
Received: from dvalin.narfation.org (dvalin.narfation.org [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 93B5E82837
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed,  9 Mar 2022 17:46:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1646844370;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=I9LT95Zfk+rYqKuti6LG5WksKN8jujhcd8v0/tR98hA=;
	b=1NDXs2YkNozfJH6XDRcrzQ0aps5sq9tz9S3AiXKUQqXNgeJBAUF1XYfYEcV1xX228/2nM9
	nPY8rcxZCmLDnN/rm1xRRA7SfoN3DIVPS5h/uOc9AOkXuQKYW7O4L442SGC2CwGYgwke9h
	xXM1aUBqJLi4sXpgLcQTfqWPCQHjA/U=
From: Sven Eckelmann <sven@narfation.org>
To: stable@vger.kernel.org
Subject: [PATCH 4.9 1/2] batman-adv: Request iflink once in batadv-on-batadv check
Date: Wed,  9 Mar 2022 17:45:41 +0100
Message-Id: <20220309164542.408824-2-sven@narfation.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220309164542.408824-1-sven@narfation.org>
References: <20220309164542.408824-1-sven@narfation.org>
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1646844370;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=I9LT95Zfk+rYqKuti6LG5WksKN8jujhcd8v0/tR98hA=;
	b=wyU9tV2n0PLmN001HB8V51rnCE7RP8zgheTBJNHJSUV9Vq7+Ti+PXH14rLmAGmWVzshAl3
	gWjxE61DOrq2kM5dL2kgJcw+juXu8auOPouBmcwxueREKxb57vpGCNQs3vf0p7Pwmy3lur
	Dlb9UIAl7I6Eo9RspiR0aBL9jfWrbCc=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=1NDXs2Yk;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1646844370; a=rsa-sha256;
	cv=none;
	b=YwMwkL9GUYTWYk/PY8m39SoC5uf6w9oQiBlG1evD/w3m+JUn8FY7zoh3bjDeYZstqU/69p
	UjkdaiqZgckyajMZpsQ7kn/owAtt4atfnn9NKOhjJqv/ATXff5bnvDFLDqu62m/KWmU8E5
	nfwdV6NJxtgyLdP/i+/DDIlPr3RnSWc=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: A5FNU32OST5GL7PX7WUT4S7QDKYVWOFS
X-Message-ID-Hash: A5FNU32OST5GL7PX7WUT4S7QDKYVWOFS
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/A5FNU32OST5GL7PX7WUT4S7QDKYVWOFS/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

commit 690bb6fb64f5dc7437317153902573ecad67593d upstream.

There is no need to call dev_get_iflink multiple times for the same
net_device in batadv_is_on_batman_iface. And since some of the
.ndo_get_iflink callbacks are dynamic (for example via RCUs like in
vxcan_get_iflink), it could easily happen that the returned values are no=
t
stable. The pre-checks before __dev_get_by_index are then of course bogus=
.

Fixes: b7eddd0b3950 ("batman-adv: prevent using any virtual device create=
d on batman-adv as hard-interface")
Signed-off-by: Sven Eckelmann <sven@narfation.org>
Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
[ bp: 4.9 backported: adjust context. ]
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 net/batman-adv/hard-interface.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/net/batman-adv/hard-interface.c b/net/batman-adv/hard-interf=
ace.c
index 4f384abb4ced..64cf9cd3be4d 100644
--- a/net/batman-adv/hard-interface.c
+++ b/net/batman-adv/hard-interface.c
@@ -155,22 +155,23 @@ static bool batadv_is_on_batman_iface(const struct =
net_device *net_dev)
 	struct net *net =3D dev_net(net_dev);
 	struct net_device *parent_dev;
 	const struct net *parent_net;
+	int iflink;
 	bool ret;
=20
 	/* check if this is a batman-adv mesh interface */
 	if (batadv_softif_is_valid(net_dev))
 		return true;
=20
+	iflink =3D dev_get_iflink(net_dev);
+
 	/* no more parents..stop recursion */
-	if (dev_get_iflink(net_dev) =3D=3D 0 ||
-	    dev_get_iflink(net_dev) =3D=3D net_dev->ifindex)
+	if (iflink =3D=3D 0 || iflink =3D=3D net_dev->ifindex)
 		return false;
=20
 	parent_net =3D batadv_getlink_net(net_dev, net);
=20
 	/* recurse over the parent device */
-	parent_dev =3D __dev_get_by_index((struct net *)parent_net,
-					dev_get_iflink(net_dev));
+	parent_dev =3D __dev_get_by_index((struct net *)parent_net, iflink);
 	/* if we got a NULL parent_dev there is something broken.. */
 	if (!parent_dev) {
 		pr_err("Cannot find parent device\n");
--=20
2.30.2
