Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 5M4IAg0iIWro/QAAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 04 Jun 2026 08:58:21 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 936BA63D6BD
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 04 Jun 2026 08:58:20 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=narfation.org header.s=20121 header.b=b6TTuzkd;
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 136.243.236.17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	dmarc=pass (policy=none) header.from=narfation.org;
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 6E7B580384
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 04 Jun 2026 08:58:20 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1780556300;
 b=w5fMMex7MkydsmY8HKOXL/WFN/g7/t85oU+Bh5pNZPVxXuCjL4nrtt44XvtxkeGGVCUhZ
 f7ZR7coEB2/B32NbqcSKnNya0Fzt2ZwrE5lSJrEtGc6puXg2aaVqijqVEU7z6UieI6pLHnf
 +6jOaNzATLFMvsFpjBCq5TcYpLa37c8=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1780556300; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=OH0J/hCoHqUwXrJqWt54GqdY4h+q2w/stQL9Ai29nvo=;
 b=QNu0xc4D0Brx2p98EYdjAmLCtl8B1K26FdHIloRY2DDXcym4CujY3LHgyp1onGwRzYW7i
 fJuRdPiR7Rd7ZGIE8u3PD8C4/MQ9L6qO5ajAhYR36OtT6y8TdZvUt3VdistDHa8B/CYdnBY
 gvdNyC+kP7GhMe0jz5rBGImr02QshW4=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org
 [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id D58E284215
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 04 Jun 2026 08:57:24 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1780556254;
	b=2rmTdajgqT9BhY7TDWA2mhsHzjSXrIW0TNXhEFbDu7TRdkVaCb8cEtatOVl6FSLHSTFAP6
	dLOCOJgcKKKVKiSlymLQYFFH0DmloXj9DYCSGprfWNjja2iFj9d++MEhMijG8YIRFBiaWY
	dl67+rICX4nqMpvoj62UDKyP2ZRZKoU=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=b6TTuzkd;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1780556254;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=OH0J/hCoHqUwXrJqWt54GqdY4h+q2w/stQL9Ai29nvo=;
	b=WmsatU1UNVFUzYPvFwDqqNircSWxIviXCaPKqI9sGUyGz5Z4BnMbiW/eBm9TfQ6QqNPNrF
	oJOFNv5/bcKPozpOjiVonMtYvIi3zldNm5/QdDDG6gLc2IHSQ5r6GVftbcFkUCa2MkdofH
	IKUOwvc6prK/GA60jV3FDvotPs+5aUM=
Received: by dvalin.narfation.org (Postfix) id E3D281FD9C;
	Thu, 04 Jun 2026 06:57:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1780556239;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=OH0J/hCoHqUwXrJqWt54GqdY4h+q2w/stQL9Ai29nvo=;
	b=b6TTuzkdFKRwSkH85ul0B5EVyfjzbMXjQOkDH9Tvyz7uQggzBH/CnOPFDCmzeommKLHDOc
	Wh55a82X+uDZYBAN1F/kGQk3H6MxYfq7xpWAlYRRMRMltCcUautG0VDQe3DshD9RY/Fepc
	BBuHoSYJBIw7Khm/ATzaSjBjTTPd6dQ=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Nora Schiffer <neocturne@universe-factory.net>
Subject: Re: [PATCH RFC batadv v3 2/4] batman-adv: remove global hardif list
Date: Thu, 04 Jun 2026 08:57:10 +0200
Message-ID: <2972055.88bMQJbFj6@ripper>
In-Reply-To: <20260604-drop-hardif-list-v3-2-e0dfa8c7d602@narfation.org>
References: <20260604-drop-hardif-list-v3-0-e0dfa8c7d602@narfation.org>
 <20260604-drop-hardif-list-v3-2-e0dfa8c7d602@narfation.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart2007337.6tgchFWduM";
 micalg="pgp-sha512"; protocol="application/pgp-signature"
Message-ID-Hash: WZ7Y2UKHRGFVXODNZNMFGPE6JFYGMRKO
X-Message-ID-Hash: WZ7Y2UKHRGFVXODNZNMFGPE6JFYGMRKO
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/WZ7Y2UKHRGFVXODNZNMFGPE6JFYGMRKO/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.61 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[open-mesh.org:s=20121:i=2];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[narfation.org,none];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[narfation.org:s=20121];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS(0.00)[m:b.a.t.m.a.n@lists.open-mesh.org,m:neocturne@universe-factory.net,s:lists@lfdr.de];
	R_SPF_NA(0.00)[no SPF record];
	FORGED_SENDER(0.00)[sven@narfation.org,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCPT_COUNT_TWO(0.00)[2];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[lists,b.a.t.m.a.n=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sven@narfation.org,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[narfation.org:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[b.a.t.m.a.n];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:24940, ipnet:136.243.0.0/16, country:DE];
	DBL_BLOCKED_OPENRESOLVER(0.00)[diktynna.open-mesh.org:helo,diktynna.open-mesh.org:rdns,ripper:mid,narfation.org:from_mime,narfation.org:dkim]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 936BA63D6BD

--nextPart2007337.6tgchFWduM
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"; protected-headers="v1"
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Nora Schiffer <neocturne@universe-factory.net>
Date: Thu, 04 Jun 2026 08:57:10 +0200
Message-ID: <2972055.88bMQJbFj6@ripper>
MIME-Version: 1.0

On Thursday, 4 June 2026 06:39:30 CEST Sven Eckelmann wrote:
>  err_upper:
>         netdev_upper_dev_unlink(hard_iface->net_dev, mesh_iface);
>  err_dev:
> -       hard_iface->mesh_iface = NULL;
>         netdev_put(mesh_iface, &hard_iface->meshif_dev_tracker);
>         batadv_hardif_put(hard_iface);
>         return ret;

Looks like I should also have removed the

    netdev_put(mesh_iface, &hard_iface->meshif_dev_tracker);

because it is done by batadv_hardif_release() - behind batadv_hardif_put(). 
The `mesh_iface = NULL` was removed btw. because it would break the invariant 
that "a hard_iface always belongs to a mesh_iface". Some of the code is 
already (incorrectly) assuming this and doesn't check if "mesh_iface" is NULL 
(or changed the mesh_iface to which the hardif is associated to).

Just as note for myself: these code checks might be removed after this 
patchset was applied:


diff --git a/net/batman-adv/bat_v_elp.c b/net/batman-adv/bat_v_elp.c
index d5ae58cb43ba7b40380feb76e55e896324fe4856..d1310e7b6e7a080485126452f58732dde3ddb173 100644
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
index 0461f11227d06b50802b8d30a4809d615a4b9ca4..d27ad3c168f6c7007ad004f02b3c3d440ef1add8 100644
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
index bb13426f90394e674c2ad789367c3dd13e328e0d..5df14a796f623819e668c43304d455b1249a0a05 100644
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
@@ -1082,8 +1079,7 @@ static int batadv_hard_if_event(struct notifier_block *this,
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
index badc1df0af1d58e1dfd429453b4d83abcb7da829..04bb030ef299ac24710ea776a7f3c1aaf089598c 100644
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

(WARNING, this is a rather unclean PoC change)


Plus a revert of commit 3d550f6440fc ("batman-adv: v: stop OGMv2 on disabled 
interface"). Most likely also also the code in batadv_iv_ogm_emit. There might 
be more I haven't yet checked.

Regards,
	Sven
--nextPart2007337.6tgchFWduM
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQS81G/PswftH/OW8cVND3cr0xT1ywUCaiEhxgAKCRBND3cr0xT1
y7AkAQDfaQ8Twmp5gcInXMJJJKx4gR+FjMSyGi/LnDgwAOP8kwEAsxIruWv/24X1
l2Li4mZxeCsGMwA4BB31JhU1D0UOAg4=
=HeMK
-----END PGP SIGNATURE-----

--nextPart2007337.6tgchFWduM--



