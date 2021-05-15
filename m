Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id A8D0638198B
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 15 May 2021 17:22:20 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 83267810C1;
	Sat, 15 May 2021 17:22:18 +0200 (CEST)
Received: from mail.aperture-lab.de (mail.aperture-lab.de [116.203.183.178])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id B41EB8035A
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 15 May 2021 17:22:15 +0200 (CEST)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id EC0033E906;
	Sat, 15 May 2021 17:22:13 +0200 (CEST)
From: =?UTF-8?q?Linus=20L=C3=BCssing?= <linus.luessing@c0d3.blue>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: =?UTF-8?q?Linus=20L=C3=BCssing?= <linus.luessing@c0d3.blue>
Subject: [PATCH] batman-adv: mcast: add MRD + routable IPv4 multicast with bridges support
Date: Sat, 15 May 2021 17:22:08 +0200
Message-Id: <20210515152208.3969-1-linus.luessing@c0d3.blue>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Last-TLS-Session-Version: TLSv1.2
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1621092135; a=rsa-sha256;
	cv=none;
	b=zSgSwVd5JwcPisdE3h65bDl9rnkkre9pGQG5Rmd6c1FhMxDRp9tnu313KifMT1RWXd2gK6
	ifXyG9LNceScjUPEMWOINVz0/l6v7rebORtKeMh8MEXUJoBsDTzfGndNQmnhXJYSmbPvce
	+F8iXjcwGqhlMuYtkFtMF/7yt+RWgtk=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=none (diktynna.open-mesh.org: domain of linus.luessing@c0d3.blue has no SPF policy when checking 116.203.183.178) smtp.mailfrom=linus.luessing@c0d3.blue
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1621092135;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=iD4CDIDKzGdpjZ6RU2iBLNQ3HfxxkhqAG0xRGtA3Uic=;
	b=SDWbOKjRuD6NDDzrQsC86kkVkeTw5bU7VHe2zogSjdQTmzsUlFu/+i3TylI9huyMcGxCN9
	FnsU3PdjD773vtU7DVIBPehT5MB52bnEAVJ+hKmWb+ItxesbvJX8CHn/GZUyy3vjcet1ET
	S4GsUXq+XjyzvFL2ztrYnTcMYWENTXo=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: 76PAKBSK6WVITQI72CMRPWE35OLABDOK
X-Message-ID-Hash: 76PAKBSK6WVITQI72CMRPWE35OLABDOK
X-MailFrom: linus.luessing@c0d3.blue
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/76PAKBSK6WVITQI72CMRPWE35OLABDOK/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

This adds support for routable IPv4 multicast addresses
(224.0.0.0/4, excluding 224.0.0.0/24) in bridged setups.

This utilizes the Multicast Router Discovery (MRD, RFC4286) support
in the Linux bridge. batman-adv will now query the Linux bridge for
IPv4 multicast routers, which the bridge has previously learned about
via MRD.

This allows us to then safely send routable IPv4 multicast packets in
bridged setups to multicast listeners and multicast routers only. Before
we had to flood such packets to avoid potential multicast packet loss to
IPv4 multicast routers, which we were not able to detect before.

With the bridge MRD integration, we are now also able to perform more
fine-grained detection of IPv6 multicast routers in bridged setups:
Before we were "guessing" IPv6 multicast routers by looking up multicast
listeners for the link-local All Routers multicast address (ff02::2),
which every IPv6 multicast router is listening to. However this would
also include more nodes than necessary: For instance nodes which are
just a router for unicast, but not multicast would be included, too.

Signed-off-by: Linus L=C3=BCssing <linus.luessing@c0d3.blue>
---

Please double check the Linux version in
compat-include/linux/if_bridge.h.

Commit 3b85f9ba3480c1 ("net: bridge: mcast: export multicast router prese=
nce adjacent to a port")
was added to net-next just recently
(CommitDate: Thu May 13 14:04:31 2021 -0700).
So br_multicast_has_router_adjacent() should be part of >=3D 5.14?

 compat-include/linux/if_bridge.h | 42 ++++++++++++++++++++++++++++++++
 net/batman-adv/multicast.c       | 41 ++++---------------------------
 2 files changed, 47 insertions(+), 36 deletions(-)

diff --git a/compat-include/linux/if_bridge.h b/compat-include/linux/if_b=
ridge.h
index da00c8b0..dfc4a092 100644
--- a/compat-include/linux/if_bridge.h
+++ b/compat-include/linux/if_bridge.h
@@ -53,4 +53,46 @@ inline void __batadv_br_ip_list_check(void)
=20
 #endif /* LINUX_VERSION_IS_LESS(5, 10, 0) */
=20
+#if LINUX_VERSION_IS_LESS(5, 14, 0)
+
+#include <net/addrconf.h>
+
+#if IS_ENABLED(CONFIG_IPV6)
+static inline bool
+br_multicast_has_router_adjacent(struct net_device *dev, int proto)
+{
+	struct list_head bridge_mcast_list =3D LIST_HEAD_INIT(bridge_mcast_list=
);
+	struct br_ip_list *br_ip_entry, *tmp;
+	int ret;
+
+	if (proto !=3D ETH_P_IPV6)
+		return true;
+
+	ret =3D br_multicast_list_adjacent(dev, &bridge_mcast_list);
+	if (ret < 0)
+		return true;
+
+	ret =3D false;
+
+	list_for_each_entry_safe(br_ip_entry, tmp, &bridge_mcast_list, list) {
+		if (br_ip_entry->addr.proto =3D=3D htons(ETH_P_IPV6) &&
+		    ipv6_addr_is_ll_all_routers(&br_ip_entry->addr.dst.ip6))
+			ret =3D true;
+
+		list_del(&br_ip_entry->list);
+		kfree(br_ip_entry);
+	}
+
+	return ret;
+}
+#else
+static inline bool
+br_multicast_has_router_adjacent(struct net_device *dev, int proto)
+{
+	return true;
+}
+#endif
+
+#endif /* LINUX_VERSION_IS_LESS(5, 14, 0) */
+
 #endif /* _NET_BATMAN_ADV_COMPAT_LINUX_IF_BRIDGE_H_ */
diff --git a/net/batman-adv/multicast.c b/net/batman-adv/multicast.c
index 1d63c8cb..923e2197 100644
--- a/net/batman-adv/multicast.c
+++ b/net/batman-adv/multicast.c
@@ -193,53 +193,22 @@ static u8 batadv_mcast_mla_rtr_flags_softif_get(str=
uct batadv_priv *bat_priv,
  *	BATADV_MCAST_WANT_NO_RTR6: No IPv6 multicast router is present
  *	The former two OR'd: no multicast router is present
  */
-#if IS_ENABLED(CONFIG_IPV6)
 static u8 batadv_mcast_mla_rtr_flags_bridge_get(struct batadv_priv *bat_=
priv,
 						struct net_device *bridge)
 {
-	struct list_head bridge_mcast_list =3D LIST_HEAD_INIT(bridge_mcast_list=
);
 	struct net_device *dev =3D bat_priv->soft_iface;
-	struct br_ip_list *br_ip_entry, *tmp;
-	u8 flags =3D BATADV_MCAST_WANT_NO_RTR6;
-	int ret;
+	u8 flags =3D BATADV_NO_FLAGS;
=20
 	if (!bridge)
 		return BATADV_MCAST_WANT_NO_RTR4 | BATADV_MCAST_WANT_NO_RTR6;
=20
-	/* TODO: ask the bridge if a multicast router is present (the bridge
-	 * is capable of performing proper RFC4286 multicast router
-	 * discovery) instead of searching for a ff02::2 listener here
-	 */
-	ret =3D br_multicast_list_adjacent(dev, &bridge_mcast_list);
-	if (ret < 0)
-		return BATADV_NO_FLAGS;
-
-	list_for_each_entry_safe(br_ip_entry, tmp, &bridge_mcast_list, list) {
-		/* the bridge snooping does not maintain IPv4 link-local
-		 * addresses - therefore we won't find any IPv4 multicast router
-		 * address here, only IPv6 ones
-		 */
-		if (br_ip_entry->addr.proto =3D=3D htons(ETH_P_IPV6) &&
-		    ipv6_addr_is_ll_all_routers(&br_ip_entry->addr.dst.ip6))
-			flags &=3D ~BATADV_MCAST_WANT_NO_RTR6;
-
-		list_del(&br_ip_entry->list);
-		kfree(br_ip_entry);
-	}
+	if (!br_multicast_has_router_adjacent(dev, ETH_P_IP))
+		flags |=3D BATADV_MCAST_WANT_NO_RTR4;
+	if (!br_multicast_has_router_adjacent(dev, ETH_P_IPV6))
+		flags |=3D BATADV_MCAST_WANT_NO_RTR6;
=20
 	return flags;
 }
-#else
-static inline u8
-batadv_mcast_mla_rtr_flags_bridge_get(struct batadv_priv *bat_priv,
-				      struct net_device *bridge)
-{
-	if (bridge)
-		return BATADV_NO_FLAGS;
-	else
-		return BATADV_MCAST_WANT_NO_RTR4 | BATADV_MCAST_WANT_NO_RTR6;
-}
-#endif
=20
 /**
  * batadv_mcast_mla_rtr_flags_get() - get multicast router flags
--=20
2.31.0
