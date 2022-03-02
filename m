Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 13CD54CAA36
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed,  2 Mar 2022 17:31:02 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 1FEAD8430D;
	Wed,  2 Mar 2022 17:30:56 +0100 (CET)
Received: from simonwunderlich.de (simonwunderlich.de [23.88.38.48])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 79D4880C47
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed,  2 Mar 2022 17:30:52 +0100 (CET)
Received: from kero.packetmixer.de (p200300C597470fc0d439fbe5C3508408.dip0.t-ipconnect.de [IPv6:2003:c5:9747:fc0:d439:fbe5:c350:8408])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by simonwunderlich.de (Postfix) with ESMTPSA id 3B1D6FA1EC;
	Wed,  2 Mar 2022 17:30:52 +0100 (CET)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: davem@davemloft.net,
	kuba@kernel.org
Subject: [PATCH 1/3] batman-adv: Request iflink once in batadv-on-batadv check
Date: Wed,  2 Mar 2022 17:30:47 +0100
Message-Id: <20220302163049.101957-2-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220302163049.101957-1-sw@simonwunderlich.de>
References: <20220302163049.101957-1-sw@simonwunderlich.de>
MIME-Version: 1.0
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	dmarc=none;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates 23.88.38.48 as permitted sender) smtp.mailfrom=sw@simonwunderlich.de
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1646238652; a=rsa-sha256;
	cv=none;
	b=Sq5jQXpy2lf/sgMLhegM33p5sf5+26dP93JiGu9ZwQwSTCu+1TF0O1hLyZbAI31oRaF+7Z
	xla0RZI3HYtkGFq0qzP+ByQgvECmd7dSEkQ3RExX30rFBLAXOBRXt6TN1aThcgLJYi1uUj
	ya6sB1l2iKPk3cwMU+AfI4N0EyQcwWQ=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1646238652;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=m75x6xWWzLuosPUAM2gVGd5Cpd9LZKlOWEy65EzkCqE=;
	b=OwM97Dt+Yy3/e2iqRICDqDpH9Iic4lTHHq/3a2/MIR0MAiZLo09DnG67oiAGy59zhhEqWN
	+q/kzBaDPhKxRJsejz8o4s19563RU9ptEwqKKW1DFRUgU1+5R5DvZh8YWs1lBVDclpo4G0
	x2W1IjvHk+S8xES4elfFn4VGhAB/aRs=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: BFP5KKUTNCHMWTJRNMQDMF4GK4JKKWCT
X-Message-ID-Hash: BFP5KKUTNCHMWTJRNMQDMF4GK4JKKWCT
X-MailFrom: sw@simonwunderlich.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/BFP5KKUTNCHMWTJRNMQDMF4GK4JKKWCT/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

From: Sven Eckelmann <sven@narfation.org>

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
---
 net/batman-adv/hard-interface.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/net/batman-adv/hard-interface.c b/net/batman-adv/hard-interf=
ace.c
index 8a2b78f9c4b2..35aa1122043b 100644
--- a/net/batman-adv/hard-interface.c
+++ b/net/batman-adv/hard-interface.c
@@ -149,22 +149,23 @@ static bool batadv_is_on_batman_iface(const struct =
net_device *net_dev)
 	struct net *net =3D dev_net(net_dev);
 	struct net_device *parent_dev;
 	struct net *parent_net;
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
