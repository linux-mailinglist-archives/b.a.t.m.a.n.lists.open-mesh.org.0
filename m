Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qPZCHrd/HWpPbQkAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 01 Jun 2026 14:48:55 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 22BA361F87A
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 01 Jun 2026 14:48:54 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id A41668533D
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 01 Jun 2026 14:48:54 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1780318134;
 b=dQkTpWhdYZX4ZFrRKxSaUss3qwdf+BnPQo8bFoqz78gB2Gj1h7w6RZneNs/GVQtd1oMuo
 4z3whekbyJPvARuH/SDen/DHeamQQFiNHgcRfGc3G05L3vk6WbArlZfDwn4SBfGTDecuZTQ
 R5qMF72cUXWHUGo8qUJsP3HzrAr1mR4=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1780318134; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=TQBjcBdGS/HMX5rRf8oCb7YV3unI9WKR8W60FhxEyKk=;
 b=ncyK0t+T0t2CuNcMcaN0m7ygjH2H0QmhwOeonCRV1SwSP06ldGsus93fMIobfIy408yu2
 MypohXLr2a6uJyRu6QozbNkSPzn4q9jaUP0Kbtkpq7DTcDnx7XOa8aUy1+T3AUgslniQhgk
 1RL0cEtC+2XzaBomKYU1uI6ObAUW1zo=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=simonwunderlich.de;
 arc=pass;
 dmarc=pass header.from=simonwunderlich.de policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=pass header.d=simonwunderlich.de;
 arc=pass;
 dmarc=pass (Used From Domain Record) header.from=simonwunderlich.de policy.dmarc=none
Received: from mail.simonwunderlich.de (mail.simonwunderlich.de
 [IPv6:2a01:4f8:c17:e8c0::1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 1A883806E0
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 01 Jun 2026 14:36:55 +0200 (CEST)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1780317415;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=TQBjcBdGS/HMX5rRf8oCb7YV3unI9WKR8W60FhxEyKk=;
	b=SPUwF79vfjF3P4hsrli0crkHuiKV428QUkl4Aa+8wYrts29ndzPF9VPmJ3nhpqgtZ3INCF
	oaTuYv9adM7Ya1sYkwQQbMC/m/EJHzsKaeiUIofbfjfb2oNwxaVcwC13z29/IlWdHHDutJ
	8WNt9geaca5GYD754RaPqRTtU614eLE=
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1780317415;
	b=Mw84OmtEqHJ9EMcDqumtqW1kJzvcBUJC+CAwDciN0G5Vn9KWXe7EB5IRk3HCxwccRWdiWU
	CqnuZIOs8Y4Y0x0m4rd2XdJS//wlNDuEt8LLWd9SDKwLSNhizp+nAsBdbFOJ1oC4dfwOcH
	b4cc3WfP3i4+ZmHh210GkG5z0iBR6rM=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=simonwunderlich.de header.s=09092022 header.b=z2EB4Vi4;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates
 2a01:4f8:c17:e8c0::1 as permitted sender)
 smtp.mailfrom=sw@simonwunderlich.de;
	dmarc=pass (policy=none) header.from=simonwunderlich.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=simonwunderlich.de;
	s=09092022; t=1780317414;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=TQBjcBdGS/HMX5rRf8oCb7YV3unI9WKR8W60FhxEyKk=;
	b=z2EB4Vi4I+fwLm3aTC3smysJd0qC3PnY97pJ6yKl5B88M6MtCFudnWWu00O7s+chvMHLsi
	jgkCXtLvbvQLn6nmsmVLZ6p7VQe3fBiPAZnk3tTfuH4PEiKo7zhQ2UZh/7+8YzJDvrm6D5
	pH80EzEYlzkmISLv7lkB2L2LUCPwWk/l5LfQuM8qGBkfLee2zh6t+GCZZtqVXiryCcTMLp
	vvrB/kFlOxYb/9QqTeMET4Jhi/T7GAraEdFIgjCBNTTjFuXNXrSazho8w7/TKga0ElIfQJ
	0IgnW+eBUC38F/JWaH+JTs41GRQaG3WQufZzJsTsS9nTj6TmKNoexXn80uJbjQ==
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
Subject: [PATCH net-next 15/15] batman-adv: use neigh_node's orig_node only as
 id
Date: Mon,  1 Jun 2026 14:36:29 +0200
Message-ID: <20260601123629.707089-16-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260601123629.707089-1-sw@simonwunderlich.de>
References: <20260601123629.707089-1-sw@simonwunderlich.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Message-ID-Hash: DC6IFK7GPSI3I4FR2WPYRMWX7ORKBWVQ
X-Message-ID-Hash: DC6IFK7GPSI3I4FR2WPYRMWX7ORKBWVQ
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/DC6IFK7GPSI3I4FR2WPYRMWX7ORKBWVQ/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>
X-Spamd-Result: default: False [-0.51 / 15.00];
	ARC_ALLOW(-1.00)[open-mesh.org:s=20121:i=2];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[simonwunderlich.de,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[simonwunderlich.de:s=09092022];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,b.a.t.m.a.n=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[narfation.org:email,diktynna.open-mesh.org:rdns,diktynna.open-mesh.org:helo,simonwunderlich.de:email,simonwunderlich.de:mid,simonwunderlich.de:dkim];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sw@simonwunderlich.de,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	RCPT_COUNT_SEVEN(0.00)[9];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[simonwunderlich.de:+];
	TAGGED_RCPT(0.00)[b.a.t.m.a.n];
	ASN(0.00)[asn:24940, ipnet:136.243.0.0/16, country:DE];
	TO_DN_SOME(0.00)[];
	R_SPF_NA(0.00)[no SPF record]
X-Rspamd-Queue-Id: 22BA361F87A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Sven Eckelmann <sven@narfation.org>

The orig_node member of struct batadv_neigh_node is no longer used in
B.A.T.M.A.N. IV. But batadv_neigh_node_create() is still storing it.
Only batadv_v_ogm_route_update() uses it to check if we route toward
it - not needing the data stored in the batadv_orig_node object itself,
but merely a pointer to identify the originator.

The field cannot hold a proper reference because that would create a
reference cycle, so it must never be dereferenced. Rename it to
orig_node_id and mark it __private to make any future attempt to
dereference it immediately noticeable.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
---
 net/batman-adv/bat_v_ogm.c  |  2 +-
 net/batman-adv/originator.c |  5 ++++-
 net/batman-adv/types.h      | 11 +++++++++--
 3 files changed, 14 insertions(+), 4 deletions(-)

diff --git a/net/batman-adv/bat_v_ogm.c b/net/batman-adv/bat_v_ogm.c
index 2c4dca639709c..5936d0048be01 100644
--- a/net/batman-adv/bat_v_ogm.c
+++ b/net/batman-adv/bat_v_ogm.c
@@ -719,7 +719,7 @@ static bool batadv_v_ogm_route_update(struct batadv_priv *bat_priv,
 	 * don't route towards it
 	 */
 	router = batadv_orig_router_get(orig_node, if_outgoing);
-	if (router && router->orig_node != orig_node && !orig_neigh_router) {
+	if (router && ACCESS_PRIVATE(router, orig_node_id) != orig_node && !orig_neigh_router) {
 		batadv_dbg(BATADV_DBG_BATMAN, bat_priv,
 			   "Drop packet: OGM via unknown neighbor!\n");
 		goto out;
diff --git a/net/batman-adv/originator.c b/net/batman-adv/originator.c
index d05c8240426bd..15d660ca79376 100644
--- a/net/batman-adv/originator.c
+++ b/net/batman-adv/originator.c
@@ -693,9 +693,12 @@ batadv_neigh_node_create(struct batadv_orig_node *orig_node,
 	kref_get(&hard_iface->refcount);
 	ether_addr_copy(neigh_node->addr, neigh_addr);
 	neigh_node->if_incoming = hard_iface;
-	neigh_node->orig_node = orig_node;
 	neigh_node->last_seen = jiffies;
 
+#ifdef CONFIG_BATMAN_ADV_BATMAN_V
+	ACCESS_PRIVATE(neigh_node, orig_node_id) = orig_node;
+#endif
+
 	/* increment unique neighbor refcount */
 	kref_get(&hardif_neigh->refcount);
 	neigh_node->hardif_neigh = hardif_neigh;
diff --git a/net/batman-adv/types.h b/net/batman-adv/types.h
index 4e25057359b0f..19c7316889b6e 100644
--- a/net/batman-adv/types.h
+++ b/net/batman-adv/types.h
@@ -663,8 +663,15 @@ struct batadv_neigh_node {
 	/** @list: list node for &batadv_orig_node.neigh_list */
 	struct hlist_node list;
 
-	/** @orig_node: pointer to corresponding orig_node */
-	struct batadv_orig_node *orig_node;
+#ifdef CONFIG_BATMAN_ADV_BATMAN_V
+	/**
+	 * @orig_node_id: pointer to corresponding orig_node. It must only be used
+	 * to identify the node but must NEVER be dereferenced. The reference counter
+	 * was not increased when this was assigned because it would otherwise create
+	 * a reference cycle.
+	 */
+	struct batadv_orig_node *__private orig_node_id;
+#endif
 
 	/** @addr: the MAC address of the neighboring interface */
 	u8 addr[ETH_ALEN];
-- 
2.47.3

