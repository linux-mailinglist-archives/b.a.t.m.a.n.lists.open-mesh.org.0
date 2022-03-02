Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 68EFD4CADE9
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed,  2 Mar 2022 19:50:00 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 545308001C;
	Wed,  2 Mar 2022 19:49:59 +0100 (CET)
Received: from dvalin.narfation.org (dvalin.narfation.org [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 2AB9C8001C
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed,  2 Mar 2022 19:49:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1646246994;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=68B4uCg0jgF4vh/DBlT6MDT+JLmCPlWhaTKMCs2/zwQ=;
	b=YhVk0TFwBs+2z7Np8A+7YTs/SZqnRcVIKkBKb23dXeOJiBRKkNyyXidWuisCbxcMJ21tbf
	hQAzeDnHIrXDXX1NU8LJHp7pFIDefLV31xXPAWiyZxP9T6KEy8vN0BYrf+uTK9XVe7cTOa
	4ybMbnyyW9NK1SC8bbX2wgmSnfCUI3g=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
Subject: [PATCH maint 1/3] batman-adv: Request iflink once in batadv-on-batadv check
Date: Wed,  2 Mar 2022 19:49:44 +0100
Message-Id: <20220302184946.414934-1-sven@narfation.org>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=YhVk0TFw;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1646246995; a=rsa-sha256;
	cv=none;
	b=O38qfK7Jat4zt03lFZj9qi6TRuaDw9qY0xd1O8mEE3s16mjQBFh+WXb4va06R0NTAGpkOf
	nVhg+/7ghyYq9tiZqwBV8Ie2ZPWu2yhR2EpZhNdRs4/tOhy9HwYyDTSGIzSVAT3WyknLK0
	GO6Z1Vx27pCrv5wivGfRtVy1kNtAqXo=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1646246995;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=68B4uCg0jgF4vh/DBlT6MDT+JLmCPlWhaTKMCs2/zwQ=;
	b=JPQYUY91deD4CG04Iq2u0q2wT+ZsXxA8aBL1qPhS0LwisTYyS3bpgtLVQhY5YdQuf9SLMv
	453SFe4AvTr/R38J0Gg22O0OXZT2oZM2IArjLIjH1HEiOb4uSpSOOldIt3zvSbmLoJT9EH
	gT5gVl6VXAOlIftAl89qw5tj199LMDU=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: 7S3FIFQG6MMGI64C5EYX3FN3ONVXJA3T
X-Message-ID-Hash: 7S3FIFQG6MMGI64C5EYX3FN3ONVXJA3T
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/7S3FIFQG6MMGI64C5EYX3FN3ONVXJA3T/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

There is no need to call dev_get_iflink multiple times for the same
net_device in batadv_is_on_batman_iface. And since some of the
.ndo_get_iflink callbacks are dynamic (for example via RCUs like in
vxcan_get_iflink), it could easily happen that the returned values are no=
t
stable. The pre-checks before __dev_get_by_index are then of course bogus=
.

Fixes: 3d48811b27f5 ("batman-adv: prevent using any virtual device create=
d on batman-adv as hard-interface")
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 net/batman-adv/hard-interface.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/net/batman-adv/hard-interface.c b/net/batman-adv/hard-interf=
ace.c
index 59d19097..774a26c5 100644
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
