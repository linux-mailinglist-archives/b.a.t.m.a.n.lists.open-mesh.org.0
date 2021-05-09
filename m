Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F66A377827
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun,  9 May 2021 21:45:36 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id CD2A383E49;
	Sun,  9 May 2021 21:45:26 +0200 (CEST)
Received: from mail.aperture-lab.de (mail.aperture-lab.de [116.203.183.178])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id F0CCF83AD0
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun,  9 May 2021 21:45:23 +0200 (CEST)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 39DBC3EDDD;
	Sun,  9 May 2021 21:45:23 +0200 (CEST)
From: =?UTF-8?q?Linus=20L=C3=BCssing?= <linus.luessing@c0d3.blue>
To: netdev@vger.kernel.org
Subject: [net-next v2 02/11] net: bridge: mcast: add wrappers for router node retrieval
Date: Sun,  9 May 2021 21:45:00 +0200
Message-Id: <20210509194509.10849-3-linus.luessing@c0d3.blue>
In-Reply-To: <20210509194509.10849-1-linus.luessing@c0d3.blue>
References: <20210509194509.10849-1-linus.luessing@c0d3.blue>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Last-TLS-Session-Version: TLSv1.2
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1620589524; a=rsa-sha256;
	cv=none;
	b=2J4uF5ymzogVZBMJeE2qQWZsU1FF1xSzCddzx+QcLp6CiG/Z4GfOwijtslrFoup8CGIOCt
	TmunRQEcsiMqIW16td9lTv3Gf7C9rWXnJCjo+jHnJbKINrgaEBj6x6Gp023FEDRuDiDQUZ
	6W2PLFXD7ThIKHdloiXXj0bOc1tDNHg=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=none (diktynna.open-mesh.org: domain of linus.luessing@c0d3.blue has no SPF policy when checking 116.203.183.178) smtp.mailfrom=linus.luessing@c0d3.blue
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1620589524;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=AckrL2PnSpJlD3bsEHsGMAYBg+XljUTSiEnqpiUEZ88=;
	b=q9R61UUBw3yeh5h/33+6Hw/in8vizaG4JteepTrZ8I23oPdyOZq3OI+WIALhVxOcjk6+TO
	30Sk4Xqd+4D3L1Qa4ju3NXeLM3ro6C0ZXlKsDPs7nAhHfyI+2ua9xifMDhvVvKLlQOxOTD
	osgxHZHslQYAt7hRt1Jne4XcOHtm9O8=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: DCSXOCN3ANXYQQ7PONU7HDAB4PNOXSRM
X-Message-ID-Hash: DCSXOCN3ANXYQQ7PONU7HDAB4PNOXSRM
X-MailFrom: linus.luessing@c0d3.blue
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: Roopa Prabhu <roopa@nvidia.com>, Nikolay Aleksandrov <nikolay@nvidia.com>, Jakub Kicinski <kuba@kernel.org>, "David S . Miller" <davem@davemloft.net>, bridge@lists.linux-foundation.org, b.a.t.m.a.n@lists.open-mesh.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/DCSXOCN3ANXYQQ7PONU7HDAB4PNOXSRM/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

In preparation for the upcoming split of multicast router state into
their IPv4 and IPv6 variants and to avoid IPv6 #ifdef clutter later add
two wrapper functions for router node retrieval in the payload
forwarding code.

Signed-off-by: Linus L=C3=BCssing <linus.luessing@c0d3.blue>
---
 net/bridge/br_forward.c | 15 +++++++++++++--
 1 file changed, 13 insertions(+), 2 deletions(-)

diff --git a/net/bridge/br_forward.c b/net/bridge/br_forward.c
index 3b67184..b5ec4f9 100644
--- a/net/bridge/br_forward.c
+++ b/net/bridge/br_forward.c
@@ -264,6 +264,16 @@ static void maybe_deliver_addr(struct net_bridge_por=
t *p, struct sk_buff *skb,
 	__br_forward(p, skb, local_orig);
 }
=20
+static inline struct hlist_node *
+br_multicast_get_first_rport_node(struct net_bridge *b, struct sk_buff *=
skb) {
+	return rcu_dereference(hlist_first_rcu(&b->ip4_mc_router_list));
+}
+
+static inline struct net_bridge_port *
+br_multicast_rport_from_node(struct hlist_node *rp, struct sk_buff *skb)=
 {
+	return hlist_entry_safe(rp, struct net_bridge_port, ip4_rlist);
+}
+
 /* called with rcu_read_lock */
 void br_multicast_flood(struct net_bridge_mdb_entry *mdst,
 			struct sk_buff *skb,
@@ -276,7 +286,8 @@ void br_multicast_flood(struct net_bridge_mdb_entry *=
mdst,
 	bool allow_mode_include =3D true;
 	struct hlist_node *rp;
=20
-	rp =3D rcu_dereference(hlist_first_rcu(&br->router_list));
+	rp =3D br_multicast_get_first_rport_node(br, skb);
+
 	if (mdst) {
 		p =3D rcu_dereference(mdst->ports);
 		if (br_multicast_should_handle_mode(br, mdst->addr.proto) &&
@@ -290,7 +301,7 @@ void br_multicast_flood(struct net_bridge_mdb_entry *=
mdst,
 		struct net_bridge_port *port, *lport, *rport;
=20
 		lport =3D p ? p->key.port : NULL;
-		rport =3D hlist_entry_safe(rp, struct net_bridge_port, ip4_rlist);
+		rport =3D br_multicast_rport_from_node(rp, skb);
=20
 		if ((unsigned long)lport > (unsigned long)rport) {
 			port =3D lport;
--=20
2.31.0
