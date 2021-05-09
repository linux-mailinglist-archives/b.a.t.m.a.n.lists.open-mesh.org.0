Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D5F0377829
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun,  9 May 2021 21:45:40 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 6371783DA2;
	Sun,  9 May 2021 21:45:32 +0200 (CEST)
Received: from mail.aperture-lab.de (mail.aperture-lab.de [116.203.183.178])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 04B2980A11
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun,  9 May 2021 21:45:25 +0200 (CEST)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 5117E3EDDE;
	Sun,  9 May 2021 21:45:24 +0200 (CEST)
From: =?UTF-8?q?Linus=20L=C3=BCssing?= <linus.luessing@c0d3.blue>
To: netdev@vger.kernel.org
Subject: [net-next v2 03/11] net: bridge: mcast: prepare mdb netlink for mcast router split
Date: Sun,  9 May 2021 21:45:01 +0200
Message-Id: <20210509194509.10849-4-linus.luessing@c0d3.blue>
In-Reply-To: <20210509194509.10849-1-linus.luessing@c0d3.blue>
References: <20210509194509.10849-1-linus.luessing@c0d3.blue>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Last-TLS-Session-Version: TLSv1.2
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1620589525; a=rsa-sha256;
	cv=none;
	b=nvDvbu2LXlQJ23i1/zFYv50gTw+s3bAQmbgMKkWvKEfmJ7NhYKjvcXTsQAgiMn4r1DL1kO
	kAN9vq8nDKV5wJLWyizZtlJCpMMqNehe4oWegcdNO+5mt0zmiSVmKxNyRZ4V9jSrg6TXr9
	+luNc6qcmYo/8QTyt/tdL7A0SgVrTfA=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=none (diktynna.open-mesh.org: domain of linus.luessing@c0d3.blue has no SPF policy when checking 116.203.183.178) smtp.mailfrom=linus.luessing@c0d3.blue
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1620589525;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=9D8FEzJHgkNISK7B+SDwEMW53mNMVjQN11fNP24SGEs=;
	b=jWP6BF1bpehQWpEm0noSqFHBKSISxBNM/12oZqK/BbqiJlowQoMB4RXsqvUM2BaE2LNAIY
	rWlo/4OCWyOHdu+Wy+vTUeugJcdb3HEpbj0d5gaKZXbcFT29LYUn3PypFd1DixWMong8/S
	UB97GyLRGyAiJ1RML12Ql8DrRsdJtFE=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: 7QTE6ZC4IUUJNOJ7RVAX2AXZBA5PPH2W
X-Message-ID-Hash: 7QTE6ZC4IUUJNOJ7RVAX2AXZBA5PPH2W
X-MailFrom: linus.luessing@c0d3.blue
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: Roopa Prabhu <roopa@nvidia.com>, Nikolay Aleksandrov <nikolay@nvidia.com>, Jakub Kicinski <kuba@kernel.org>, "David S . Miller" <davem@davemloft.net>, bridge@lists.linux-foundation.org, b.a.t.m.a.n@lists.open-mesh.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/7QTE6ZC4IUUJNOJ7RVAX2AXZBA5PPH2W/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

In preparation for the upcoming split of multicast router state into
their IPv4 and IPv6 variants and to avoid IPv6 #ifdef clutter later add
some inline functions for the protocol specific parts in the mdb router
netlink code. Also the we need iterate over the port instead of router
list to be able put one router port entry with both the IPv4 and IPv6
multicast router info later.

Signed-off-by: Linus L=C3=BCssing <linus.luessing@c0d3.blue>
---
 net/bridge/br_mdb.c | 39 ++++++++++++++++++++++++++++++++++-----
 1 file changed, 34 insertions(+), 5 deletions(-)

diff --git a/net/bridge/br_mdb.c b/net/bridge/br_mdb.c
index d61def8..6937d3b 100644
--- a/net/bridge/br_mdb.c
+++ b/net/bridge/br_mdb.c
@@ -16,29 +16,58 @@
=20
 #include "br_private.h"
=20
+static inline bool br_rports_have_mc_router(struct net_bridge *br)
+{
+	return !hlist_empty(&br->ip4_mc_router_list);
+}
+
+static inline bool
+br_ip4_rports_get_timer(struct net_bridge_port *port, unsigned long *tim=
er)
+{
+	*timer =3D br_timer_value(&port->ip4_mc_router_timer);
+	return !hlist_unhashed(&port->ip4_rlist);
+}
+
+static inline bool
+br_ip6_rports_get_timer(struct net_bridge_port *port, unsigned long *tim=
er)
+{
+	*timer =3D 0;
+	return false;
+}
+
 static int br_rports_fill_info(struct sk_buff *skb, struct netlink_callb=
ack *cb,
 			       struct net_device *dev)
 {
 	struct net_bridge *br =3D netdev_priv(dev);
-	struct net_bridge_port *p;
+	bool have_ip4_mc_rtr, have_ip6_mc_rtr;
+	unsigned long ip4_timer, ip6_timer;
 	struct nlattr *nest, *port_nest;
+	struct net_bridge_port *p;
=20
-	if (!br->multicast_router || hlist_empty(&br->ip4_mc_router_list))
+	if (!br->multicast_router)
+		return 0;
+
+	if (!br_rports_have_mc_router(br))
 		return 0;
=20
 	nest =3D nla_nest_start_noflag(skb, MDBA_ROUTER);
 	if (nest =3D=3D NULL)
 		return -EMSGSIZE;
=20
-	hlist_for_each_entry_rcu(p, &br->ip4_mc_router_list, ip4_rlist) {
-		if (!p)
+	list_for_each_entry_rcu(p, &br->port_list, list) {
+		have_ip4_mc_rtr =3D br_ip4_rports_get_timer(p, &ip4_timer);
+		have_ip6_mc_rtr =3D br_ip6_rports_get_timer(p, &ip6_timer);
+
+		if (!have_ip4_mc_rtr && !have_ip6_mc_rtr)
 			continue;
+
 		port_nest =3D nla_nest_start_noflag(skb, MDBA_ROUTER_PORT);
 		if (!port_nest)
 			goto fail;
+
 		if (nla_put_nohdr(skb, sizeof(u32), &p->dev->ifindex) ||
 		    nla_put_u32(skb, MDBA_ROUTER_PATTR_TIMER,
-				br_timer_value(&p->ip4_mc_router_timer)) ||
+				max(ip4_timer, ip6_timer)) ||
 		    nla_put_u8(skb, MDBA_ROUTER_PATTR_TYPE,
 			       p->multicast_router)) {
 			nla_nest_cancel(skb, port_nest);
--=20
2.31.0
