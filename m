Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id DhqmCeRcJWr0HQIAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 07 Jun 2026 13:58:28 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id C053C6507DD
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 07 Jun 2026 13:58:27 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=narfation.org header.s=20121 header.b=L1G+66gP;
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 2a01:4f8:241:fc1:136:243:236:17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	dmarc=pass (policy=none) header.from=narfation.org;
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 9DE328536F
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 07 Jun 2026 13:58:27 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1780833507;
 b=HvSA+krWDzQp7lS+GgP4pWc980k8rLStcdIgi1zEAw0DLzK37H2C1uUYP/IpdxaBFaL8m
 C4eogBvIBxmi0lD7l3Zm55yhLAXce/bti3yomXo++dur9taReuoPxn8Gy/oLn0RHkzc8t9f
 WJcAGi2fEyJCZXRJcOEtJJ9FgM7CGQ0=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1780833507; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=qv3rIXY38o7WMYACcnAztWVGjhGvLKWgHlqLpTD0ghQ=;
 b=FELap30RViulJmGNkutQVVXwrSwX0PI5virVTEOyQK4OOEU8JRpRndp4z32gQkGoPTZfs
 zKzDMZWcUSJWjd2eHI9TpEAYfgFXUh5LovX2mhbDnydb2fx0UrjYtZYULWjFexQtGue/YXY
 vEXn4XV94aPThVKU9+3VD/mTXaG5kp0=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org
 [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id 222D5842F8
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 07 Jun 2026 13:54:43 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1780833283;
	b=zID9j0lpqQ+Qbx8OE90ggglu/urcMrJSzeZjSadkuwWfJ7qkkiF0YQUH4BjNhUiVRmgJnu
	27fHf8rKAylX80PWuOe/VTGHAXKcqT8lxkT+Vpgrbopz1aiId9IsBQIyZCG6i0+HdmaJaM
	no7hjEHm5h0h+cWJKywtQyV6giRmA40=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=L1G+66gP;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1780833283;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=qv3rIXY38o7WMYACcnAztWVGjhGvLKWgHlqLpTD0ghQ=;
	b=opUYAwDZe+nmhWPVch+fd046YLVBkYyFTD0WdY6euxG3VJj38IT7vkcPK5aEnr0ccyhjK9
	wFiOICpxmF3LZnC2Iy1l+Hcpwt0AazJ4b/BRKGMPndJUH6coOsLZgu2FtgohXJqucEhagd
	9FQcZ6+aWxBZPTtklNhPZIs7pBtZSik=
Received: by dvalin.narfation.org (Postfix) id CA8DC200D3;
	Sun, 07 Jun 2026 11:54:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1780833282;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=qv3rIXY38o7WMYACcnAztWVGjhGvLKWgHlqLpTD0ghQ=;
	b=L1G+66gPUaxYrcp/b2a0MiFW/QTc3QddaZ290DWIL7y3ryrrtFqaxRg4ZmmgvjWuDwOyFV
	eJ/2X1XkmzaKPc3zqZdi5/Mj1c9lcXQkqNSijSkwHi4OjU+MROivpYTQPe+xWO4hRE016Z
	21WBBVusStbygn9BMKoVf+w4LWj278c=
From: Sven Eckelmann <sven@narfation.org>
Date: Sun, 07 Jun 2026 13:53:59 +0200
Subject: [PATCH RFC batadv v4 5/7] batman-adv: drop NULL check for
 immutable hardif->mesh_iface
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260607-drop-hardif-list-v4-5-ade2931db295@narfation.org>
References: <20260607-drop-hardif-list-v4-0-ade2931db295@narfation.org>
In-Reply-To: <20260607-drop-hardif-list-v4-0-ade2931db295@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=4228; i=sven@narfation.org;
 h=from:subject:message-id; bh=haQfKr7dULE9A6T2t59HUy5qw5reIUDJPDUP4WGgIEc=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDFmq0bdy3STXb7gvtbtGXLH48f0bio0ZNx+KCqbOX2A+3
 Ya7VMWlo5SFQYyLQVZMkWXPlfzzm9nfyn+e9vEozBxWJpAhDFycAjARlieMDFc4TJXvfLlt6mxm
 r3OgdcGWRw3dWlyx+4XSJSTFfR2FljIyXLolmrDdbaOGlfmprlShhdcY3+Vt5DxldzLFS0J48XI
 JDgA=
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: MWU2X2CQXXM4IU7DM2W2XRFRFL4T3YIG
X-Message-ID-Hash: MWU2X2CQXXM4IU7DM2W2XRFRFL4T3YIG
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; header-match-b.a.t.m.a.n.lists.open-mesh.org-0;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-1;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-2;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-3; emergency; member-moderation;
 nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size;
 news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.10
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/MWU2X2CQXXM4IU7DM2W2XRFRFL4T3YIG/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.01 / 15.00];
	ARC_ALLOW(-1.00)[open-mesh.org:s=20121:i=2];
	DMARC_POLICY_ALLOW(-0.50)[narfation.org,none];
	R_DKIM_ALLOW(-0.20)[narfation.org:s=20121];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS(0.00)[m:b.a.t.m.a.n@lists.open-mesh.org,m:sven@narfation.org,s:lists@lfdr.de];
	RCPT_COUNT_TWO(0.00)[2];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sven@narfation.org,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	TAGGED_FROM(0.00)[lists,b.a.t.m.a.n=lfdr.de];
	R_SPF_NA(0.00)[no SPF record];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sven@narfation.org,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[narfation.org:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:24940, ipnet:2a01:4f8::/32, country:DE];
	TAGGED_RCPT(0.00)[b.a.t.m.a.n];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.open-mesh.org:from_smtp,narfation.org:mid,narfation.org:dkim,narfation.org:from_mime,narfation.org:email,diktynna.open-mesh.org:helo,diktynna.open-mesh.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C053C6507DD

The batadv_hard_iface->mesh_iface became immutable after the global
batadv_hardif_list was removed and batadv_hard_iface only exists when it is
assigned to an mesh_iface. This member can never become NULL and thus a
check is now unnecessary.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 net/batman-adv/bat_v_elp.c             | 6 ------
 net/batman-adv/bridge_loop_avoidance.c | 9 ++-------
 net/batman-adv/hard-interface.c        | 8 ++------
 net/batman-adv/main.c                  | 3 ---
 4 files changed, 4 insertions(+), 22 deletions(-)

diff --git a/net/batman-adv/bat_v_elp.c b/net/batman-adv/bat_v_elp.c
index bc3e4f26..262e4004 100644
--- a/net/batman-adv/bat_v_elp.c
+++ b/net/batman-adv/bat_v_elp.c
@@ -90,12 +90,6 @@ static bool batadv_v_elp_get_throughput(struct batadv_hardif_neigh_node *neigh,
 	u32 throughput;
 	int ret;
 
-	/* don't query throughput when no longer associated with any
-	 * batman-adv interface
-	 */
-	if (!mesh_iface)
-		return false;
-
 	/* if the user specified a customised value for this interface, then
 	 * return it directly
 	 */
diff --git a/net/batman-adv/bridge_loop_avoidance.c b/net/batman-adv/bridge_loop_avoidance.c
index 5c73f6ba..f9a1fadf 100644
--- a/net/batman-adv/bridge_loop_avoidance.c
+++ b/net/batman-adv/bridge_loop_avoidance.c
@@ -344,7 +344,6 @@ static void batadv_bla_send_claim(struct batadv_priv *bat_priv, const u8 *mac,
 	struct sk_buff *skb;
 	struct ethhdr *ethhdr;
 	struct batadv_hard_iface *primary_if;
-	struct net_device *mesh_iface;
 	u8 *hw_src;
 	struct batadv_bla_claim_dst local_claim_dest;
 	__be32 zeroip = 0;
@@ -357,14 +356,10 @@ static void batadv_bla_send_claim(struct batadv_priv *bat_priv, const u8 *mac,
 	       sizeof(local_claim_dest));
 	local_claim_dest.type = claimtype;
 
-	mesh_iface = READ_ONCE(primary_if->mesh_iface);
-	if (!mesh_iface)
-		goto out;
-
 	skb = arp_create(ARPOP_REPLY, ETH_P_ARP,
 			 /* IP DST: 0.0.0.0 */
 			 zeroip,
-			 mesh_iface,
+			 primary_if->mesh_iface,
 			 /* IP SRC: 0.0.0.0 */
 			 zeroip,
 			 /* Ethernet DST: Broadcast */
@@ -442,7 +437,7 @@ static void batadv_bla_send_claim(struct batadv_priv *bat_priv, const u8 *mac,
 	}
 
 	skb_reset_mac_header(skb);
-	skb->protocol = eth_type_trans(skb, mesh_iface);
+	skb->protocol = eth_type_trans(skb, primary_if->mesh_iface);
 	batadv_inc_counter(bat_priv, BATADV_CNT_RX);
 	batadv_add_counter(bat_priv, BATADV_CNT_RX_BYTES,
 			   skb->len + ETH_HLEN);
diff --git a/net/batman-adv/hard-interface.c b/net/batman-adv/hard-interface.c
index 92ae497e..11013408 100644
--- a/net/batman-adv/hard-interface.c
+++ b/net/batman-adv/hard-interface.c
@@ -246,7 +246,7 @@ struct net_device *__batadv_get_real_netdev(struct net_device *netdev)
 	}
 
 	hard_iface = batadv_hardif_get_by_netdev(netdev);
-	if (!hard_iface || !hard_iface->mesh_iface)
+	if (!hard_iface)
 		goto out;
 
 	net = dev_net(hard_iface->mesh_iface);
@@ -540,9 +540,6 @@ static void batadv_check_known_mac_addr(const struct batadv_hard_iface *hard_ifa
 	const struct batadv_hard_iface *tmp_hard_iface;
 	struct list_head *iter;
 
-	if (!mesh_iface)
-		return;
-
 	netdev_for_each_lower_private(mesh_iface, tmp_hard_iface, iter) {
 		if (tmp_hard_iface == hard_iface)
 			continue;
@@ -1081,8 +1078,7 @@ static int batadv_hard_if_event(struct notifier_block *this,
 		batadv_hardif_disable_interface(hard_iface);
 		break;
 	case NETDEV_CHANGEMTU:
-		if (hard_iface->mesh_iface)
-			batadv_update_min_mtu(hard_iface->mesh_iface);
+		batadv_update_min_mtu(hard_iface->mesh_iface);
 		break;
 	case NETDEV_CHANGEADDR:
 		batadv_check_known_mac_addr(hard_iface);
diff --git a/net/batman-adv/main.c b/net/batman-adv/main.c
index badc1df0..04bb030e 100644
--- a/net/batman-adv/main.c
+++ b/net/batman-adv/main.c
@@ -444,9 +444,6 @@ int batadv_batman_skb_recv(struct sk_buff *skb, struct net_device *dev,
 	if (unlikely(skb->mac_len != ETH_HLEN || !skb_mac_header(skb)))
 		goto err_free;
 
-	if (!hard_iface->mesh_iface)
-		goto err_free;
-
 	bat_priv = netdev_priv(hard_iface->mesh_iface);
 
 	if (READ_ONCE(bat_priv->mesh_state) != BATADV_MESH_ACTIVE)

-- 
2.47.3

