Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 545A9A81257
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue,  8 Apr 2025 18:31:26 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 2F13D80EAD
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue,  8 Apr 2025 18:31:26 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1744129886;
 b=sdeqPTIwc7Lzaze5Nwd0GKdTD+7hYRwUBZIEVP4F5sJxy8lvAj5xT4X/BjLTrgoTfVPA+
 pd4WdAVEsya23ilA0kingmQHpmNheWdSj9PxtMAQYpnMhHEk+xdPiil5C2xGFR0Me48WHRB
 TkdTBiSJGsjrhqbyCad5Hn9VTauYq48=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1744129886; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=HZjY/++SdcazIcDBDIw/OPGFSAKBqU5udvYkVuC5+dg=;
 b=1k92Vq3qzM5XoqulIeSFaJQtgHtV1Q/v/2aySRncoaWnwiaMQ3GxH6iMQdWW9iXzFEsP0
 u6fWPEndHtEJq1I2aHaqb3BSrJuFFnrQfMiz4yULEZSn5m1cK6beDCcYKbartr7C5EThNDZ
 /h4Dway9ykP1YyhsgA0NjRjsVZ4MzF8=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=universe-factory.net;
  arc=pass;
  dmarc=none
Authentication-Results: open-mesh.org;
 dkim=pass header.d=universe-factory.net; arc=pass; dmarc=none
Received: from mail.universe-factory.net (osgiliath.universe-factory.net
 [141.95.161.142])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 52537814C4
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue,  8 Apr 2025 18:30:44 +0200 (CEST)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1744129844;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=HZjY/++SdcazIcDBDIw/OPGFSAKBqU5udvYkVuC5+dg=;
	b=bW49fgfgiQ2fhONiQV7KVdIuJUfkFHGCYNUpFsQ/00oiv8N4mnbBqH3q3EKPWXCHSWksYr
	i3hBAWKpSfysGglgcwe3/7AQ54vF453M6HBU3bn3oHs9H3vxJvB4omzUGfc3BDUmg//gdz
	gHX5zP8JsJ+CFATUxl8zwdN70bVncr8=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=universe-factory.net header.s=dkim header.b=lcIfPGas;
	spf=pass (diktynna.open-mesh.org: domain of mschiffer@universe-factory.net
 designates 141.95.161.142 as permitted sender)
 smtp.mailfrom=mschiffer@universe-factory.net;
	dmarc=pass (policy=reject) header.from=universe-factory.net
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1744129844; a=rsa-sha256;
	cv=none;
	b=VgSkKTQGXIO1BflwM9RqOcCE+YegwJczFj7ro3pqmOyQDTyVJ+hfV3scTEAEaAG7llZBxs
	ZJ8y48cp8Fo7M428QQVSupUUQtnKj/Ffp0AGBn845Hor7mDg/9Rqflb6P8XOx2JsuhFW9X
	42qIBaE/5AeYM6PGWywB1R/sfDXNpZU=
From: Matthias Schiffer <mschiffer@universe-factory.net>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=universe-factory.net;
	s=dkim; t=1744129843;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=HZjY/++SdcazIcDBDIw/OPGFSAKBqU5udvYkVuC5+dg=;
	b=lcIfPGasBWgQC8ybApf13bCYOP2yEebhBPyToL5Ae7hFnS26CZz1gAornIr8UGdB0shYyO
	3TgzJ6PQxBn1IkYFavFo3vMpEIiu24od2c4Cy3oOMJoaq/H5Zh8xihdzioJkBv8qqJvRkQ
	HxLuJwqMxbAqJl6D6L3KaNTVj+Fmum2R9MTmzbgB6qCbg6nTqNsTEgyFn+lbxRirHCU87n
	v3L3WvOmygfYdsCBLmdl3RW8CcnL2WCC61Aefq5lME8OrrzHKyAESRyHUH5/2AE0zTlNRj
	DnlKjKID/59GwvZmoKKXx7J96kgHjYX7QKxgpayVnXWsb4f4rU/cFC+G70XshQ==
To: Marek Lindner <marek.lindner@mailbox.org>,
	Simon Wunderlich <sw@simonwunderlich.de>,
	Antonio Quartulli <antonio@mandelbit.com>,
	Sven Eckelmann <sven@narfation.org>
Cc: "David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Simon Horman <horms@kernel.org>,
	b.a.t.m.a.n@lists.open-mesh.org,
	netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Matthias Schiffer <mschiffer@universe-factory.net>
Subject: [PATCH net] batman-adv: fix duplicate MAC address check
Date: Tue,  8 Apr 2025 18:30:16 +0200
Message-ID: 
 <c775aab5514f25014f778c334235a21ee39708b4.1744129395.git.mschiffer@universe-factory.net>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Bar: -
Message-ID-Hash: WNNSR46NBKDB27335B3HYYSRZCTXAN7N
X-Message-ID-Hash: WNNSR46NBKDB27335B3HYYSRZCTXAN7N
X-MailFrom: mschiffer@universe-factory.net
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency;
 loop; banned-address; member-moderation;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-0;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-1;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-2; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.8
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/WNNSR46NBKDB27335B3HYYSRZCTXAN7N/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

batadv_check_known_mac_addr() is both too lenient and too strict:

- It is called from batadv_hardif_add_interface(), which means that it
  checked interfaces that are not used for batman-adv at all. Move it
  to batadv_hardif_enable_interface(). Also, restrict it to hardifs of
  the same mesh interface; different mesh interfaces should not interact
  at all. The batadv_check_known_mac_addr() argument is changed from
  `struct net_device` to `struct batadv_hard_iface` to achieve this.
- The check only cares about hardifs in BATADV_IF_ACTIVE and
  BATADV_IF_TO_BE_ACTIVATED states, but interfaces in BATADV_IF_INACTIVE
  state should be checked as well, or the following steps will not
  result in a warning then they should:

  - Add two interfaces on down state with different MAC addresses to
    a mesh as hardifs
  - Change the MAC addresses so they confliect
  - Set interfaces to up state

  Now there will be two active hardifs with the same MAC address, but no
  warning. Fix by only ignoring hardifs in BATADV_IF_NOT_IN_USE state.

The RCU lock can be dropped, as we're holding RTNL anyways when the
function is called.

While we're at it, also switch from pr_warn() to netdev_warn().

Fixes: c6c8fea29769 ("net: Add batman-adv meshing protocol")
Signed-off-by: Matthias Schiffer <mschiffer@universe-factory.net>
---

Aside: batadv_hardif_add_interface() being called for all existing
interfaces and having a global batadv_hardif_list at all is also not
very nice, but this will be addressed separately, as changing it will
require more refactoring.

 net/batman-adv/hard-interface.c | 37 ++++++++++++++++++++-------------
 1 file changed, 22 insertions(+), 15 deletions(-)

diff --git a/net/batman-adv/hard-interface.c b/net/batman-adv/hard-interface.c
index f145f9662653..07b436626afb 100644
--- a/net/batman-adv/hard-interface.c
+++ b/net/batman-adv/hard-interface.c
@@ -506,28 +506,34 @@ batadv_hardif_is_iface_up(const struct batadv_hard_iface *hard_iface)
 	return false;
 }
 
-static void batadv_check_known_mac_addr(const struct net_device *net_dev)
+static void batadv_check_known_mac_addr(const struct batadv_hard_iface *hard_iface)
 {
-	const struct batadv_hard_iface *hard_iface;
+	const struct net_device *mesh_iface = hard_iface->mesh_iface;
+	const struct batadv_hard_iface *tmp_hard_iface;
 
-	rcu_read_lock();
-	list_for_each_entry_rcu(hard_iface, &batadv_hardif_list, list) {
-		if (hard_iface->if_status != BATADV_IF_ACTIVE &&
-		    hard_iface->if_status != BATADV_IF_TO_BE_ACTIVATED)
+	if (!mesh_iface)
+		return;
+
+	list_for_each_entry(tmp_hard_iface, &batadv_hardif_list, list) {
+		if (tmp_hard_iface == hard_iface)
+			continue;
+
+		if (tmp_hard_iface->mesh_iface != mesh_iface)
 			continue;
 
-		if (hard_iface->net_dev == net_dev)
+		if (tmp_hard_iface->if_status == BATADV_IF_NOT_IN_USE)
 			continue;
 
-		if (!batadv_compare_eth(hard_iface->net_dev->dev_addr,
-					net_dev->dev_addr))
+		if (!batadv_compare_eth(tmp_hard_iface->net_dev->dev_addr,
+					hard_iface->net_dev->dev_addr))
 			continue;
 
-		pr_warn("The newly added mac address (%pM) already exists on: %s\n",
-			net_dev->dev_addr, hard_iface->net_dev->name);
-		pr_warn("It is strongly recommended to keep mac addresses unique to avoid problems!\n");
+		netdev_warn(hard_iface->net_dev,
+			    "The newly added mac address (%pM) already exists on: %s\n",
+			    hard_iface->net_dev->dev_addr, tmp_hard_iface->net_dev->name);
+		netdev_warn(hard_iface->net_dev,
+			    "It is strongly recommended to keep mac addresses unique to avoid problems!\n");
 	}
-	rcu_read_unlock();
 }
 
 /**
@@ -764,6 +770,8 @@ int batadv_hardif_enable_interface(struct batadv_hard_iface *hard_iface,
 			    hard_iface->net_dev->name, hardif_mtu,
 			    required_mtu);
 
+	batadv_check_known_mac_addr(hard_iface);
+
 	if (batadv_hardif_is_iface_up(hard_iface))
 		batadv_hardif_activate_interface(hard_iface);
 	else
@@ -902,7 +910,6 @@ batadv_hardif_add_interface(struct net_device *net_dev)
 
 	batadv_v_hardif_init(hard_iface);
 
-	batadv_check_known_mac_addr(hard_iface->net_dev);
 	kref_get(&hard_iface->refcount);
 	list_add_tail_rcu(&hard_iface->list, &batadv_hardif_list);
 	batadv_hardif_generation++;
@@ -989,7 +996,7 @@ static int batadv_hard_if_event(struct notifier_block *this,
 		if (hard_iface->if_status == BATADV_IF_NOT_IN_USE)
 			goto hardif_put;
 
-		batadv_check_known_mac_addr(hard_iface->net_dev);
+		batadv_check_known_mac_addr(hard_iface);
 
 		bat_priv = netdev_priv(hard_iface->mesh_iface);
 		bat_priv->algo_ops->iface.update_mac(hard_iface);
-- 
2.49.0

