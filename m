Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EDF94CAE39
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed,  2 Mar 2022 20:05:20 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 9324E80717;
	Wed,  2 Mar 2022 20:05:19 +0100 (CET)
Received: from dvalin.narfation.org (dvalin.narfation.org [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 474F880611
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed,  2 Mar 2022 20:05:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1646247915;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=zZO7TGs+YCfuyWJcb29A2Ry1FmNKb5AOOYRKeCNVfs4=;
	b=BqBzKvLHIYUy9kMTe+c2CPmUZG9oQ4/RpfWE0vxoy+cMbSDrEVMUnvflhcRRuAMqD1JwHM
	EbSqR5hvisCiM9iu871OYAenomKg390Bym+uqzROV4oXIA1rsaN51bpoQ9S5c95z2PkBT3
	Ru8r2CK5sfrQkJp5DFqhpo34m9W/Ets=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: [PATCH] batman-adv: make mc_forwarding atomic
Date: Wed,  2 Mar 2022 20:05:13 +0100
Message-Id: <20220302190513.417350-1-sven@narfation.org>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=BqBzKvLH;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1646247916; a=rsa-sha256;
	cv=none;
	b=FQimobvdWDBqm5L4q8c8gHlfASGXxkJ8mjiH6grFRl1iY3aX7cS3ObZapbLLmK73a9k4ru
	CO9fukfr7lKTzvCc+0TvJ3f9yseIkNeqs/03zYWkF4Gs/260QDM7H0QFOoub2yE7Xog3vm
	zo5l8NVD+BJT2OAzx0o8KtT+uRBtgCY=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1646247916;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=zZO7TGs+YCfuyWJcb29A2Ry1FmNKb5AOOYRKeCNVfs4=;
	b=TFuuCwhE3MVZtk5WHMcU3mOJySjaDJpY4mYImwLdu+PAVOFeQrEybNn0XSfdkpj1LgzS37
	LJEA9DSV6vw1NSMJa0xtqK6H2t1gLDKNWuK0CuIyU95ZSiGPgW/OOVOBgFCfTYKGwzTqnE
	DsfcvvzhvXkl0dp/Zs48WpmR5kfFo6Y=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: 5OCU2GXMBIE3QM4HBYG44R754OLSCQT5
X-Message-ID-Hash: 5OCU2GXMBIE3QM4HBYG44R754OLSCQT5
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/5OCU2GXMBIE3QM4HBYG44R754OLSCQT5/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

From: Eric Dumazet <edumazet@google.com>

This fixes minor data-races in ip6_mc_input() and
batadv_mcast_mla_rtr_flags_softif_get_ipv6()

Signed-off-by: Eric Dumazet <edumazet@google.com>
Signed-off-by: David S. Miller <davem@davemloft.net>
[sven@narfation.org: Add ugly hack to get it building with old kernels]
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
net-next commit 145c7a793838 ("ipv6: make mc_forwarding atomic")

I didn't find a good way to handle this. So either we introduce the
auto-patch-before build stuff again or we allow minimal changes like this
which are not in sync with upstream.

I will try to have a look at ways how we can (with our build_tests):

* filter out everything with UGLY_HACK + everything between
  UGLY_HACK_OLD + UGLY_HACK_STOP before comparing it with upstream
* have some automatic warning in case someone adds code to linux-merge.gi=
t
  with UGLY_HACK in it

 net/batman-adv/multicast.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/net/batman-adv/multicast.c b/net/batman-adv/multicast.c
index 1860de73..720c12c0 100644
--- a/net/batman-adv/multicast.c
+++ b/net/batman-adv/multicast.c
@@ -135,7 +135,11 @@ static u8 batadv_mcast_mla_rtr_flags_softif_get_ipv6=
(struct net_device *dev)
 {
 	struct inet6_dev *in6_dev =3D __in6_dev_get(dev);
=20
+#if LINUX_VERSION_IS_GEQ(5, 18, 0) // UGLY_HACK_NEW
+	if (in6_dev && atomic_read(&in6_dev->cnf.mc_forwarding))
+#else // UGLY_HACK_OLD
 	if (in6_dev && in6_dev->cnf.mc_forwarding)
+#endif // UGLY_HACK_STOP
 		return BATADV_NO_FLAGS;
 	else
 		return BATADV_MCAST_WANT_NO_RTR6;
--=20
2.30.2
