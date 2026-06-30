Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id bkAGMyvOQ2rmigoAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 30 Jun 2026 16:09:47 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 74EBA6E53F5
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 30 Jun 2026 16:09:47 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=simonwunderlich.de header.s=09092022 header.b=LjsgBsea;
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 136.243.236.17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	dmarc=pass (policy=none) header.from=simonwunderlich.de;
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 51A028153D
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 30 Jun 2026 16:09:47 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1782828587;
 b=XK8zRm9mY4MtoBE0YAj7+22Z607Ri4Iy5fj93gp1gcvDiGxCa5EJLCiQmzSnTf17BSfuJ
 BnCZ0YCuE/lXFHNaVVAsQGoqOI5BpvN+EgBtBI2nZYUAHrB5YzSp3LyBrlKmRIVIB95cWV+
 5tGGVYwx1RzWQ6x6ImRxpXcJmmCpJsY=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1782828587; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=ompe1pyONMmJSv377DN++kdxEJ80NzbZMnVOLnyDunI=;
 b=Iliggjg0rNhPQxrMW0hr7dPBseFkIxQRb3dksw8EHPjRCDYFU7eroJ/2CnT6+qMGl4xBL
 vTQGqp6V+I6r3Q3bRt8WNnlHlWVROqXkz0yduiqQ5z09PoQmDTMkUrGNDprgIdBgSAW83xP
 EjDVaBjqNrnSZtImAvX6z9ZUZ7YGLQM=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=simonwunderlich.de;
 arc=pass;
 dmarc=pass header.from=simonwunderlich.de policy.dmarc=none
Received: from mail.simonwunderlich.de (mail.simonwunderlich.de
 [IPv6:2a01:4f8:c17:e8c0::1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id B344D81096
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 30 Jun 2026 16:06:30 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1782828390;
	b=fhuu0KXYLONnjzdpM0zvIJFQaOpj/PqD8mLxAadLiEjOQSbuI77m1Di70ADAokx0eTwLuH
	5+0GHnUhQ30BCiHM6orq3u5LFw/BgzKL1mmLIZKh87j76reENiuxS3lsTha6qsgmZjljAs
	2easfwKPY3dGOXqNkOTrr4M3KIg9RqE=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1782828390;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=ompe1pyONMmJSv377DN++kdxEJ80NzbZMnVOLnyDunI=;
	b=e/kYRMFIfoNd/1Q5ziYgRhu+kXho83Gs293M36OHOgfvobC3nrtlvx+pQb5sGLDFTQAE4S
	bguoK+5HAeAjvLMaPMJbFWEWgcyAVFK3EVMeLS9DCvBjuDMh27Ma4qg0YTOCuPq8cDr+e0
	7ynRWzSkLJb1N2+oQG+6PqL0J586WfA=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=simonwunderlich.de header.s=09092022 header.b=LjsgBsea;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates
 2a01:4f8:c17:e8c0::1 as permitted sender)
 smtp.mailfrom=sw@simonwunderlich.de;
	dmarc=pass (policy=none) header.from=simonwunderlich.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=simonwunderlich.de;
	s=09092022; t=1782828389;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ompe1pyONMmJSv377DN++kdxEJ80NzbZMnVOLnyDunI=;
	b=LjsgBseaJa0lSHWvrZ7+xqdpznFIbHtNUZqml6xXuSZzqb5YMrhFeDBIGCx1kvwtGViGAd
	o1mmXgIxvocczUsHJI/oIgIaTcMxRilT8ZV18EF0Fp8EJ65OpEOkeqMQRNmC2fa02xTZAD
	6xFAIJZ3GLTu7vSUBr3qvIB5X2xHU4VUBb4Z0sGPnSlMRETkI+8kPBfh2p+DbibEHd5Wnh
	1IPbW1GzAfCdHoVWMLqwIgXkTZSnAH7pyAFESdwdjB2egh41BSB9uY0onjo7HamnkbIP0L
	54yHuaGCWqP/0r2wqfO1IY3H3K6Y4BIfIQdxc8qp/hvIVqhrqDubusp4h0vUWw==
From: Simon Wunderlich <sw@simonwunderlich.de>
To: netdev@vger.kernel.org
Cc: "David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Simon Horman <horms@kernel.org>,
	b.a.t.m.a.n@lists.open-mesh.org,
	Sven Eckelmann <sven@narfation.org>,
	Simon Wunderlich <sw@simonwunderlich.de>
Subject: [PATCH net-next 07/15] batman-adv: drop NULL check for immutable
 hardif->mesh_iface
Date: Tue, 30 Jun 2026 16:06:15 +0200
Message-ID: <20260630140623.88431-8-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260630140623.88431-1-sw@simonwunderlich.de>
References: <20260630140623.88431-1-sw@simonwunderlich.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Message-ID-Hash: DJOA6G2VGQR5PJRNUZY7WNRPHWFQOOQE
X-Message-ID-Hash: DJOA6G2VGQR5PJRNUZY7WNRPHWFQOOQE
X-MailFrom: sw@simonwunderlich.de
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/DJOA6G2VGQR5PJRNUZY7WNRPHWFQOOQE/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.51 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[open-mesh.org:s=20121:i=2];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[simonwunderlich.de,none];
	R_DKIM_ALLOW(-0.20)[simonwunderlich.de:s=09092022];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:netdev@vger.kernel.org,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:horms@kernel.org,m:b.a.t.m.a.n@lists.open-mesh.org,m:sven@narfation.org,m:sw@simonwunderlich.de,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[lists,b.a.t.m.a.n=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[sw@simonwunderlich.de,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	DKIM_TRACE(0.00)[simonwunderlich.de:+];
	ASN(0.00)[asn:24940, ipnet:136.243.0.0/16, country:DE];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DBL_BLOCKED_OPENRESOLVER(0.00)[simonwunderlich.de:dkim,simonwunderlich.de:email,simonwunderlich.de:mid,simonwunderlich.de:from_mime,lists.open-mesh.org:from_smtp,diktynna.open-mesh.org:rdns,diktynna.open-mesh.org:helo,narfation.org:email];
	FROM_NEQ_ENVFROM(0.00)[sw@simonwunderlich.de,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[b.a.t.m.a.n];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	R_SPF_NA(0.00)[no SPF record]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 74EBA6E53F5

From: Sven Eckelmann <sven@narfation.org>

The batadv_hard_iface->mesh_iface became immutable after the global
batadv_hardif_list was removed and batadv_hard_iface only exists when it is
assigned to an mesh_iface. This member can never become NULL and thus a
check is now unnecessary.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
---
 net/batman-adv/bat_v_elp.c             | 6 ------
 net/batman-adv/bridge_loop_avoidance.c | 9 ++-------
 net/batman-adv/hard-interface.c        | 8 ++------
 net/batman-adv/main.c                  | 3 ---
 4 files changed, 4 insertions(+), 22 deletions(-)

diff --git a/net/batman-adv/bat_v_elp.c b/net/batman-adv/bat_v_elp.c
index bc3e4f264afa1..262e40040007c 100644
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
index 5c73f6ba16cff..f9a1fadf8de9e 100644
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
index 6fc49ad47fd87..b6867576bbafa 100644
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
@@ -1053,8 +1050,7 @@ static int batadv_hard_if_event(struct notifier_block *this,
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
index badc1df0af1d5..04bb030ef299a 100644
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

