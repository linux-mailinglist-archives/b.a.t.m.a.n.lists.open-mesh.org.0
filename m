Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 12D0337783E
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun,  9 May 2021 21:45:51 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 2633B83EA3;
	Sun,  9 May 2021 21:45:49 +0200 (CEST)
Received: from mail.aperture-lab.de (mail.aperture-lab.de [IPv6:2a01:4f8:c2c:665b::1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id BE68883DBF
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun,  9 May 2021 21:45:26 +0200 (CEST)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 31B093EDE0;
	Sun,  9 May 2021 21:45:26 +0200 (CEST)
From: =?UTF-8?q?Linus=20L=C3=BCssing?= <linus.luessing@c0d3.blue>
To: netdev@vger.kernel.org
Subject: [net-next v2 05/11] net: bridge: mcast: prepare is-router function for mcast router split
Date: Sun,  9 May 2021 21:45:03 +0200
Message-Id: <20210509194509.10849-6-linus.luessing@c0d3.blue>
In-Reply-To: <20210509194509.10849-1-linus.luessing@c0d3.blue>
References: <20210509194509.10849-1-linus.luessing@c0d3.blue>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Last-TLS-Session-Version: TLSv1.2
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1620589526; a=rsa-sha256;
	cv=none;
	b=qzbG1o9WDNpGRlXi1VAUmKz8V40FtUiwMblKbJ8oVilw9aLpvuUSGy1r7d2O2a9pPSPVOs
	HTp0iJKmg7JXFfuNg8yd7cTntDI1LzJ/Gy2llBgL5Z0vSLbpsX6FiuYGloGKMgnbNBOt+h
	2GOzBZ1eZnqNNbagzTPaReMWye5kl98=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=none (diktynna.open-mesh.org: domain of linus.luessing@c0d3.blue has no SPF policy when checking 2a01:4f8:c2c:665b::1) smtp.mailfrom=linus.luessing@c0d3.blue
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1620589526;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=4sDySa7v1SHuRzhQ7BUdj2pNzvHoIsJ/yJbCMJzp7fI=;
	b=dGmBqvczAgD/qCREONbpTkhRjRBDugZqBhRmdMeV4lxr88s0a84gbYQTMhUnnNhx4qi2BN
	HbypKQN80Wr+Y6Vtge6y8tX09uVKJpql6p98bzZDF0IpzLqEZlGDQIbDDxgq7Ex9W5AspN
	KtiVc/yGO4PISEfdleYtvRoJ7NW+iBM=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: U7ZVL5IOBEMSVGXU5Y7QBZ7BT7R2MCM7
X-Message-ID-Hash: U7ZVL5IOBEMSVGXU5Y7QBZ7BT7R2MCM7
X-MailFrom: linus.luessing@c0d3.blue
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: Roopa Prabhu <roopa@nvidia.com>, Nikolay Aleksandrov <nikolay@nvidia.com>, Jakub Kicinski <kuba@kernel.org>, "David S . Miller" <davem@davemloft.net>, bridge@lists.linux-foundation.org, b.a.t.m.a.n@lists.open-mesh.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/U7ZVL5IOBEMSVGXU5Y7QBZ7BT7R2MCM7/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

In preparation for the upcoming split of multicast router state into
their IPv4 and IPv6 variants make br_multicast_is_router() protocol
family aware.

Note that for now br_ip6_multicast_is_router() uses the currently still
common ip4_mc_router_timer for now. It will be renamed to
ip6_mc_router_timer later when the split is performed.

While at it also renames the "1" and "2" constants in
br_multicast_is_router() to the MDB_RTR_TYPE_TEMP_QUERY and
MDB_RTR_TYPE_PERM enums.

Signed-off-by: Linus L=C3=BCssing <linus.luessing@c0d3.blue>
---
 net/bridge/br_input.c     |  2 +-
 net/bridge/br_multicast.c |  5 +++--
 net/bridge/br_private.h   | 36 ++++++++++++++++++++++++++++++++----
 3 files changed, 36 insertions(+), 7 deletions(-)

diff --git a/net/bridge/br_input.c b/net/bridge/br_input.c
index 8875e95..1f50630 100644
--- a/net/bridge/br_input.c
+++ b/net/bridge/br_input.c
@@ -132,7 +132,7 @@ int br_handle_frame_finish(struct net *net, struct so=
ck *sk, struct sk_buff *skb
 		if ((mdst || BR_INPUT_SKB_CB_MROUTERS_ONLY(skb)) &&
 		    br_multicast_querier_exists(br, eth_hdr(skb), mdst)) {
 			if ((mdst && mdst->host_joined) ||
-			    br_multicast_is_router(br)) {
+			    br_multicast_is_router(br, skb)) {
 				local_rcv =3D true;
 				br->dev->stats.multicast++;
 			}
diff --git a/net/bridge/br_multicast.c b/net/bridge/br_multicast.c
index 7edbbc9..048b5b9 100644
--- a/net/bridge/br_multicast.c
+++ b/net/bridge/br_multicast.c
@@ -1391,7 +1391,8 @@ static void br_multicast_local_router_expired(struc=
t timer_list *t)
 	spin_lock(&br->multicast_lock);
 	if (br->multicast_router =3D=3D MDB_RTR_TYPE_DISABLED ||
 	    br->multicast_router =3D=3D MDB_RTR_TYPE_PERM ||
-	    timer_pending(&br->ip4_mc_router_timer))
+	    br_ip4_multicast_is_router(br) ||
+	    br_ip6_multicast_is_router(br))
 		goto out;
=20
 	br_mc_router_state_change(br, false);
@@ -3622,7 +3623,7 @@ bool br_multicast_router(const struct net_device *d=
ev)
 	bool is_router;
=20
 	spin_lock_bh(&br->multicast_lock);
-	is_router =3D br_multicast_is_router(br);
+	is_router =3D br_multicast_is_router(br, NULL);
 	spin_unlock_bh(&br->multicast_lock);
 	return is_router;
 }
diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
index 26e91d2..ac5ca5b 100644
--- a/net/bridge/br_private.h
+++ b/net/bridge/br_private.h
@@ -864,11 +864,39 @@ static inline bool br_group_is_l2(const struct br_i=
p *group)
 #define mlock_dereference(X, br) \
 	rcu_dereference_protected(X, lockdep_is_held(&br->multicast_lock))
=20
-static inline bool br_multicast_is_router(struct net_bridge *br)
+static inline bool br_ip4_multicast_is_router(struct net_bridge *br)
 {
-	return br->multicast_router =3D=3D 2 ||
-	       (br->multicast_router =3D=3D 1 &&
-		timer_pending(&br->ip4_mc_router_timer));
+	return timer_pending(&br->ip4_mc_router_timer);
+}
+
+static inline bool br_ip6_multicast_is_router(struct net_bridge *br)
+{
+#if IS_ENABLED(CONFIG_IPV6)
+	return timer_pending(&br->ip4_mc_router_timer);
+#else
+	return false;
+#endif
+}
+
+static inline bool
+br_multicast_is_router(struct net_bridge *br, struct sk_buff *skb)
+{
+	if (br->multicast_router =3D=3D MDB_RTR_TYPE_PERM)
+		return true;
+
+	if (br->multicast_router =3D=3D MDB_RTR_TYPE_TEMP_QUERY) {
+		if (skb) {
+			if (skb->protocol =3D=3D htons(ETH_P_IP))
+				return br_ip4_multicast_is_router(br);
+			else if (skb->protocol =3D=3D htons(ETH_P_IPV6))
+				return br_ip6_multicast_is_router(br);
+		} else {
+			return br_ip4_multicast_is_router(br) ||
+			       br_ip6_multicast_is_router(br);
+		}
+	}
+
+	return false;
 }
=20
 static inline bool
--=20
2.31.0
