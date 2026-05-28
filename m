Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aL0pFQ5UGGoQjQgAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 28 May 2026 16:41:18 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 005845F3D82
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 28 May 2026 16:41:17 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id CC20484559
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 28 May 2026 16:41:17 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1779979277;
 b=QsIjqEcly6MyOFFe6rQYO1OliXV04y5lv7N6+LWux1AirYgNcnF2d7MGiqzcHf0O/KYzl
 OK+8jyHoGFVHn/Npi4JhZQbr0Syie1Vbd9d/Fa8HOMYEmX0snGidNLwE4k7hztuV4I6+B5c
 pZSTM+PsARQb2oLPeNr4UnHpSNmZwaw=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1779979277; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=wU8EADN7q21SEHJNlOIBEzAVqEevDfMMQ8wP/p0bpp0=;
 b=Orw1Mh/YXg7SaJdrxS6vGqe6fN73j3BNYQg9py9n23bqVeqpNaAaSRUYWWypu+wUiDhSh
 lAtyIN47k6M7VHiMm3Dk41Q1Zkdd5lnuhR7YHI1GvWcrzMt6j9sGpKpWXSsoBPqbiDHQXHR
 pRfG7UZJMI/3EG6MmhX8doq9HD2orbg=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=simonwunderlich.de;
 arc=pass;
 dmarc=pass header.from=simonwunderlich.de policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=pass header.d=simonwunderlich.de;
 arc=pass;
 dmarc=pass (Used From Domain Record) header.from=simonwunderlich.de policy.dmarc=none
Received: from mail.simonwunderlich.de (mail.simonwunderlich.de
 [IPv6:2a01:4f8:c17:e8c0::1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 61BD983E40
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 28 May 2026 16:29:37 +0200 (CEST)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1779978577;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=wU8EADN7q21SEHJNlOIBEzAVqEevDfMMQ8wP/p0bpp0=;
	b=sBCh49nhdKTRVWlonALYGwcKkB6fo/uzGH977k9HBwWSR+Eq19TBRwKseZJy/Ia0HOSrzs
	Yyucdk0fB8L6HEQCqDjKnRXnRKropWFo3RKW/Ttt9hyPGcXHLgIVGFtR7vLWhZOF2NGRHx
	lbjjjZgCJ4SER4ef2hkUL6yp0py8q+k=
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1779978577;
	b=RwQhQ+WJ3gOE3m84SgH3ylrshBKV1l6oPCSqI1zLy/3WDVGo9GvwDUq00tm5K6YBBXJAoq
	pi7ESOyvZTZF3fyuO5Uix0OuI/lcWZjI2CpzeUbQlKB2YARRdXgO1fXW+8TVOUJJkxdTb7
	iDpB9rlL7VoeQHGPALG5mQiP22hC/7U=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=simonwunderlich.de header.s=09092022 header.b=PM13G3G+;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates
 2a01:4f8:c17:e8c0::1 as permitted sender)
 smtp.mailfrom=sw@simonwunderlich.de;
	dmarc=pass (policy=none) header.from=simonwunderlich.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=simonwunderlich.de;
	s=09092022; t=1779978576;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=wU8EADN7q21SEHJNlOIBEzAVqEevDfMMQ8wP/p0bpp0=;
	b=PM13G3G+giU1PJJeHHUZW31dWIsEbYdcRNPxuP8X/4ECXreF7QVEz4ZjaPHHx8VPJ/oaqm
	/ie2Sm+EAQuu+nkWaYNKJ/8gLmU5zES4hRS6QUFuMVEXK3nqFhCwl11ZS13SyXc5JmJq8J
	A3iOAJopH9qyPeUlte3uKSeWQRU53VZAlXwE9UqwsyvEoWND7IikXbV0BB6orTTe320kzN
	LctYcfjqKjfwPhUK1zEw8IcBBSwVcJdArDVPVs2FAq9MGDGsAomHNs0Fx8jhILX7OT4bUO
	cYAycRaeVsuQEHTGpkRy7s5xjvc2EI8cn7d07aoQV3J197+oXLu/RntD0N60uw==
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
Date: Thu, 28 May 2026 16:29:24 +0200
Message-ID: <20260528142924.329658-16-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260528142924.329658-1-sw@simonwunderlich.de>
References: <20260528142924.329658-1-sw@simonwunderlich.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Message-ID-Hash: SDVX36Y64MQC6QDH5JSRZ7FCAI7G46TI
X-Message-ID-Hash: SDVX36Y64MQC6QDH5JSRZ7FCAI7G46TI
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/SDVX36Y64MQC6QDH5JSRZ7FCAI7G46TI/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>
X-Spamd-Result: default: False [-0.51 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[open-mesh.org:s=20121:i=2];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[simonwunderlich.de,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[simonwunderlich.de:s=09092022];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,b.a.t.m.a.n=lfdr.de];
	ASN(0.00)[asn:24940, ipnet:136.243.0.0/16, country:DE];
	NEURAL_HAM(-0.00)[-1.000];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_RCPT(0.00)[b.a.t.m.a.n];
	R_SPF_NA(0.00)[no SPF record];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sw@simonwunderlich.de,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	RCVD_COUNT_TWO(0.00)[2];
	RCPT_COUNT_SEVEN(0.00)[9];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[simonwunderlich.de:+]
X-Rspamd-Queue-Id: 005845F3D82
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
index c3b6af399110b..1fbdd58b59bd9 100644
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

