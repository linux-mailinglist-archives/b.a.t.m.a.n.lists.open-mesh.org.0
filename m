Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id QoKuDaKuH2qXogAAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 03 Jun 2026 06:33:38 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id D20B2634276
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 03 Jun 2026 06:33:37 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=narfation.org header.s=20121 header.b=tTr7NOeG;
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 2a01:4f8:241:fc1:136:243:236:17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	dmarc=pass (policy=none) header.from=narfation.org;
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id AEDB285225
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 03 Jun 2026 06:33:37 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1780461217;
 b=wrDbDnh7YJ3eRmhNliqI1vYJhlGetrAmWVkUcjLm95pB7raoRhY6esyWpuh3DwJgtejoU
 7vO5XuxRSccF1B18dGwoEUdTWVWF4oM3ca69AscdtM6dwxo7IJYFcHLNegkuEExrgx+uMal
 eKwbsXIwE6linYiQvmBB0ARz2AY7pws=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1780461217; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=GXUDIY0is6wzX0GK6Nm1EcevVe2eZ7/zcLCz/oFlqPk=;
 b=Hwt6ygiYyWOkuE7pWNrjA/x4TP+l8yiNsrhx5r5/ypxY/0kOEoYJJ3mg8dUEK9WjAxbBR
 Q7jtapiYwdDQpMOkjcOJE4zEz9RQa7J7UwfRGJL9HUIaziybwFi4rpdwaksLQJCXIx6qj+F
 N/GcLwKIsZRpDg7V727M34Nnnf46604=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org
 [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id 0213684B5B
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 03 Jun 2026 06:29:30 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1780460970;
	b=h5f8ddBjD/IB6WPkUIJFGGXsMK2WaY1YS+YgYEqnB5pGRYU64peYa5bXRzoBD5TD7K+vtj
	zcIHYQ+uEMrx+u9FRbdSeCRlV3NDUjx13xirMrTNXZpqc/oDmDntQBMZuMLBPTr4hxrPh0
	BRDd7UrEO5MFEekh6/tqSfw8e7JaF3A=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=tTr7NOeG;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1780460970;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=GXUDIY0is6wzX0GK6Nm1EcevVe2eZ7/zcLCz/oFlqPk=;
	b=NP1ru74WUFSTF8W6okP+7MkLay34iVLbOrZArHR/GoEmN/4FdC4y27psxpW+KgrdMTNO2u
	Cf0vaid/bBDN7eR8KxumBVBm1fFVTds9wHT2s7ctc4tdIAIi1VRoTmaN+DdxVK6ijSHzVf
	ohZcNBWv30GcPKuA/iiT2EwvCjGz2K4=
Received: by dvalin.narfation.org (Postfix) id B80BE1FD9C;
	Wed, 03 Jun 2026 04:29:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1780460969;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=GXUDIY0is6wzX0GK6Nm1EcevVe2eZ7/zcLCz/oFlqPk=;
	b=tTr7NOeGKEcG5UdjUXIClEt9oxBE3iPpCL/SXGSoWG/Kv+6UByZfvNthlSMAyl0PdFCHBc
	E/lIOugM4SM3wkXMer38mb/9rxZi656T6R0ml/xvncH3LGNtfBHQ7N7wjM9kako2Aa5EWR
	KAxELOTBdtLf0cbDAX+UmSjHy0aPK9M=
From: Sven Eckelmann <sven@narfation.org>
Date: Wed, 03 Jun 2026 06:29:02 +0200
Subject: [PATCH batadv v2 3/5] batman-adv: remove BATADV_IF_NOT_IN_USE
 hardif state
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260603-drop-hardif-list-v2-3-5f79821ca333@narfation.org>
References: <20260603-drop-hardif-list-v2-0-5f79821ca333@narfation.org>
In-Reply-To: <20260603-drop-hardif-list-v2-0-5f79821ca333@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>,
 Nora Schiffer <neocturne@universe-factory.net>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=4867; i=sven@narfation.org;
 h=from:subject:message-id; bh=EhQ5JaiN/vQ7MXlMoNtqINo8/cAaD/OaTJ0IoZJBHQI=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDFnya6co/DSIS7jF96s089W6A7oezk2TufXCfyq9/mGk/
 iixTJ23o5SFQYyLQVZMkWXPlfzzm9nfyn+e9vEozBxWJpAhDFycAjCRbREM/yvkVi842b9CZF3f
 C/krgkUv703uzy3ydbtifc9wxfcuAUaG/1F7p+xu/PfCzm7Sz8/LfhRHvz6aK3L84l/neWcmCrf
 U5jMAAA==
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: A7CKTAGBDVYQHPCGD2A3DLA5RBFPP7AG
X-Message-ID-Hash: A7CKTAGBDVYQHPCGD2A3DLA5RBFPP7AG
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/A7CKTAGBDVYQHPCGD2A3DLA5RBFPP7AG/>
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
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,b.a.t.m.a.n=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS(0.00)[m:b.a.t.m.a.n@lists.open-mesh.org,m:sven@narfation.org,m:neocturne@universe-factory.net,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sven@narfation.org,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	DKIM_TRACE(0.00)[narfation.org:+];
	R_SPF_NA(0.00)[no SPF record];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sven@narfation.org,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:24940, ipnet:2a01:4f8::/32, country:DE];
	TAGGED_RCPT(0.00)[b.a.t.m.a.n];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.open-mesh.org:from_smtp,diktynna.open-mesh.org:helo,diktynna.open-mesh.org:rdns,universe-factory.net:email,narfation.org:mid,narfation.org:from_mime,narfation.org:dkim]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D20B2634276

From: Nora Schiffer <neocturne@universe-factory.net>

With hardifs only existing while an interface is part of a mesh, the
BATADV_IF_NOT_IN_USE state has become redundant.
---
 net/batman-adv/bat_iv_ogm.c     | 3 +--
 net/batman-adv/bat_v_elp.c      | 3 +--
 net/batman-adv/hard-interface.c | 9 ---------
 net/batman-adv/hard-interface.h | 6 ------
 net/batman-adv/originator.c     | 4 ----
 5 files changed, 2 insertions(+), 23 deletions(-)

diff --git a/net/batman-adv/bat_iv_ogm.c b/net/batman-adv/bat_iv_ogm.c
index 6f5a468c..7242ae6f 100644
--- a/net/batman-adv/bat_iv_ogm.c
+++ b/net/batman-adv/bat_iv_ogm.c
@@ -901,8 +901,7 @@ static void batadv_iv_ogm_schedule_buff(struct batadv_hard_iface *hard_iface)
 
 static void batadv_iv_ogm_schedule(struct batadv_hard_iface *hard_iface)
 {
-	if (hard_iface->if_status == BATADV_IF_NOT_IN_USE ||
-	    hard_iface->if_status == BATADV_IF_TO_BE_REMOVED)
+	if (hard_iface->if_status == BATADV_IF_TO_BE_REMOVED)
 		return;
 
 	mutex_lock(&hard_iface->bat_iv.ogm_buff_mutex);
diff --git a/net/batman-adv/bat_v_elp.c b/net/batman-adv/bat_v_elp.c
index d53485d1..d5ae58cb 100644
--- a/net/batman-adv/bat_v_elp.c
+++ b/net/batman-adv/bat_v_elp.c
@@ -311,8 +311,7 @@ static void batadv_v_elp_periodic_work(struct work_struct *work)
 		goto out;
 
 	/* we are in the process of shutting this interface down */
-	if (hard_iface->if_status == BATADV_IF_NOT_IN_USE ||
-	    hard_iface->if_status == BATADV_IF_TO_BE_REMOVED)
+	if (hard_iface->if_status == BATADV_IF_TO_BE_REMOVED)
 		goto out;
 
 	/* the interface was enabled but may not be ready yet */
diff --git a/net/batman-adv/hard-interface.c b/net/batman-adv/hard-interface.c
index 0020cf6a..909e9b01 100644
--- a/net/batman-adv/hard-interface.c
+++ b/net/batman-adv/hard-interface.c
@@ -546,9 +546,6 @@ static void batadv_check_known_mac_addr(const struct batadv_hard_iface *hard_ifa
 		if (tmp_hard_iface == hard_iface)
 			continue;
 
-		if (tmp_hard_iface->if_status == BATADV_IF_NOT_IN_USE)
-			continue;
-
 		if (!batadv_compare_eth(tmp_hard_iface->net_dev->dev_addr,
 					hard_iface->net_dev->dev_addr))
 			continue;
@@ -574,9 +571,6 @@ static void batadv_hardif_recalc_extra_skbroom(struct net_device *mesh_iface)
 
 	rcu_read_lock();
 	netdev_for_each_lower_private_rcu(mesh_iface, hard_iface, iter) {
-		if (hard_iface->if_status == BATADV_IF_NOT_IN_USE)
-			continue;
-
 		lower_header_len = max_t(unsigned short, lower_header_len,
 					 hard_iface->net_dev->hard_header_len);
 
@@ -1104,9 +1098,6 @@ static int batadv_hard_if_event(struct notifier_block *this,
 			batadv_update_min_mtu(hard_iface->mesh_iface);
 		break;
 	case NETDEV_CHANGEADDR:
-		if (hard_iface->if_status == BATADV_IF_NOT_IN_USE)
-			goto hardif_put;
-
 		batadv_check_known_mac_addr(hard_iface);
 
 		bat_priv = netdev_priv(hard_iface->mesh_iface);
diff --git a/net/batman-adv/hard-interface.h b/net/batman-adv/hard-interface.h
index 845ff5d2..1194f24f 100644
--- a/net/batman-adv/hard-interface.h
+++ b/net/batman-adv/hard-interface.h
@@ -21,12 +21,6 @@
  * enum batadv_hard_if_state - State of a hard interface
  */
 enum batadv_hard_if_state {
-	/**
-	 * @BATADV_IF_NOT_IN_USE: interface is not used as slave interface of a
-	 * batman-adv mesh interface
-	 */
-	BATADV_IF_NOT_IN_USE,
-
 	/**
 	 * @BATADV_IF_TO_BE_REMOVED: interface will be removed from mesh
 	 * interface
diff --git a/net/batman-adv/originator.c b/net/batman-adv/originator.c
index 15d660ca..bbd4f9d4 100644
--- a/net/batman-adv/originator.c
+++ b/net/batman-adv/originator.c
@@ -1033,7 +1033,6 @@ batadv_purge_neigh_ifinfo(struct batadv_priv *bat_priv,
 
 		/* don't purge if the interface is not (going) down */
 		if (if_outgoing->if_status != BATADV_IF_INACTIVE &&
-		    if_outgoing->if_status != BATADV_IF_NOT_IN_USE &&
 		    if_outgoing->if_status != BATADV_IF_TO_BE_REMOVED)
 			continue;
 
@@ -1077,7 +1076,6 @@ batadv_purge_orig_ifinfo(struct batadv_priv *bat_priv,
 
 		/* don't purge if the interface is not (going) down */
 		if (if_outgoing->if_status != BATADV_IF_INACTIVE &&
-		    if_outgoing->if_status != BATADV_IF_NOT_IN_USE &&
 		    if_outgoing->if_status != BATADV_IF_TO_BE_REMOVED)
 			continue;
 
@@ -1127,10 +1125,8 @@ batadv_purge_orig_neighbors(struct batadv_priv *bat_priv,
 
 		if (batadv_has_timed_out(last_seen, BATADV_PURGE_TIMEOUT) ||
 		    if_incoming->if_status == BATADV_IF_INACTIVE ||
-		    if_incoming->if_status == BATADV_IF_NOT_IN_USE ||
 		    if_incoming->if_status == BATADV_IF_TO_BE_REMOVED) {
 			if (if_incoming->if_status == BATADV_IF_INACTIVE ||
-			    if_incoming->if_status == BATADV_IF_NOT_IN_USE ||
 			    if_incoming->if_status == BATADV_IF_TO_BE_REMOVED)
 				batadv_dbg(BATADV_DBG_BATMAN, bat_priv,
 					   "neighbor purge: originator %pM, neighbor: %pM, iface: %s\n",

-- 
2.47.3

