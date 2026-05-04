Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KBjnAI70+Gk73gIAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 04 May 2026 21:33:34 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F71E4C34A2
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 04 May 2026 21:33:33 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id B8178855EA
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 04 May 2026 21:33:32 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1777923212;
 b=jRLV0pd0uSbwRCGAK8IzkHvDufQYldeGiTIe9wK4q8B6ILl9nbnCV6vShZRaxmfPYo0+V
 mSGw/Sy5OlhFHKhz5ncT5uSHK2kPqRsA9FpnSsMTOavpd630+UC9e4nYf6OEiZkJizqlQ0a
 iV1pJxbtCiN7VI1nqS6nSAQoPl5gEy4=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1777923212; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=c5QmEhIbBZmnycI5gzgl1LqeD/FhzzBLVAW4WdCqXeE=;
 b=xbNUURpPfeq1xvnuPon1Vhg79wKKadtjcE64ONEv/+yvWAdu/Lw6+BSLVtKZBcim/1tRQ
 5eX+iGA7bGcC9Wpa0BaMIhgX1G5z8BKOWZOT1V0VREJMcoCHV0uo4PgjpDlnrOe0vo6vQHU
 0iDfJw4WJN3qUtgwSmFH6JDq9IC/kSo=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass (Used From Domain Record) header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org
 [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id BFD2782812
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 04 May 2026 21:33:00 +0200 (CEST)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1777923191;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=c5QmEhIbBZmnycI5gzgl1LqeD/FhzzBLVAW4WdCqXeE=;
	b=cKdTtzt3gi6uHj6RN3Cs0+YEUI7ufCNTSL08J52iA3Ap42WT3g++LrkdNBpsu+HXuaZ47J
	MP82K0IB7qn/s3XqtYR65VfWNQbcZydz5pKlBE22KSNqp6fU/rqDX0x0ov33yctaEIlzSg
	TgWpxaIRb2+z5o/RKrFlrH8lNuJKh9I=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=wHqgAZ1p;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1777923191;
	b=fk1R/6FP7gT69zN+N1OrqY+OCNEO4AqaHofkPo4RMPDsew4I8ML4uyhszUm3uw++OUBU+I
	Uj9TCKLgwG4KfrVV+k0GKktSaCLlIg5bKYXradlBAjJ6m6zD68R+nu5NyR9b+p0YVB4Bxq
	vkitd/w3ZOt/s0WAMpNUeMMIdM4GIGQ=
Received: by dvalin.narfation.org (Postfix) id B17971FE4D;
	Mon, 04 May 2026 19:32:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1777923178;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=c5QmEhIbBZmnycI5gzgl1LqeD/FhzzBLVAW4WdCqXeE=;
	b=wHqgAZ1pp0uwdszir0bXXVP8O+nKBAjCv86HFto8gKXl54yZWOnWE4ZDajD3dqTllorp+p
	xZqY7AIJG5NwxHKnYU8J08ef6vUPhj2WR8ScKSlLSK3C5EhYcmgL+XdUHrNWZCdtjbjYue
	XvbeQY4YfJyZAgyxKN93G3yUgF2qYZY=
From: Sven Eckelmann <sven@narfation.org>
Date: Mon, 04 May 2026 21:32:24 +0200
Subject: [PATCH batadv-next] batman-adv: use neigh_node's orig_node only as
 id
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260504-neigh_node-no-orig_node-v1-1-33b282272711@narfation.org>
X-B4-Tracking: v=1; b=H4sIAEf0+GkC/z2O3WoDIRCFX2XxuoK6/uZVSiijjrsWoq2aEAh59
 5ik9GrmMPOdc26kY8vYyWG5kYaX3HMtU/CPhYQdyoY0x6mJYEIzxSQtmLf9q9SItFRaW97eAq0
 PBo2LzgOZ9E/DlK8v50/iYUC8TPY6yPF97Gf/jWE8vf/eG/6eZ/74ZzrSUE+nPGafpFIK2giu5
 2IVZ3oFlSKT0hthwAvFDeD6soIR9ln7sNjIuFMsIhfBJmm4QjeHWIF5nXhYpUMNVpLj/f4AdTx
 ruAoBAAA=
X-Change-ID: 20260504-neigh_node-no-orig_node-e8bc7e79d9ba
To: Marek Lindner <marek.lindner@mailbox.org>,
 Simon Wunderlich <sw@simonwunderlich.de>,
 Antonio Quartulli <antonio@mandelbit.com>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Simon Horman <horms@kernel.org>
Cc: Yuan Tan <yuantan098@gmail.com>, Yifan Wu <yifanwucs@gmail.com>,
 Juefei Pu <tomapufckgml@gmail.com>, Xin Liu <bird@lzu.edu.cn>,
 Jiexun Wang <wangjiexun2025@gmail.com>, Ren Wei <n05ec@lzu.edu.cn>,
 b.a.t.m.a.n@lists.open-mesh.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Sven Eckelmann <sven@narfation.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=3264; i=sven@narfation.org;
 h=from:subject:message-id; bh=3baNab/PKWRzQWqmzSt6NT567cjaLxcNDE+ohCHOPMI=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDJk/vqQKdW2pLtYXVvDazcLzg2ei0Z4Xtv3zDXds/bPon
 wHjRoHQjlIWBjEuBlkxRZY9V/LPb2Z/K/952sejMHNYmUCGMHBxCsBEjsxn+Ke6br9B2w8NmR+l
 5XHRf3YEfjwd8q04X6fJbdWjVWbXdyky/GYTDth5+Nfim0JBMgySbEneOzY/nsGXNfGDSE986rw
 Wa14A
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: 6PGJVFGHJWN4GF4GFZMDCYSAQ6E4Z35K
X-Message-ID-Hash: 6PGJVFGHJWN4GF4GFZMDCYSAQ6E4Z35K
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/6PGJVFGHJWN4GF4GFZMDCYSAQ6E4Z35K/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>
X-Rspamd-Queue-Id: 8F71E4C34A2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.01 / 15.00];
	ARC_ALLOW(-1.00)[open-mesh.org:s=20121:i=2];
	DMARC_POLICY_ALLOW(-0.50)[narfation.org,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[narfation.org:s=20121];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,b.a.t.m.a.n=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,lzu.edu.cn,lists.open-mesh.org,vger.kernel.org,narfation.org];
	RCVD_COUNT_THREE(0.00)[3];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	R_SPF_NA(0.00)[no SPF record];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sven@narfation.org,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[narfation.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[b.a.t.m.a.n];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:24940, ipnet:136.243.0.0/16, country:DE];
	DBL_BLOCKED_OPENRESOLVER(0.00)[narfation.org:email,narfation.org:dkim,narfation.org:mid]

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
---
 net/batman-adv/bat_v_ogm.c  |  2 +-
 net/batman-adv/originator.c |  5 ++++-
 net/batman-adv/types.h      | 11 +++++++++--
 3 files changed, 14 insertions(+), 4 deletions(-)

diff --git a/net/batman-adv/bat_v_ogm.c b/net/batman-adv/bat_v_ogm.c
index e3870492dab7..10614d7c1053 100644
--- a/net/batman-adv/bat_v_ogm.c
+++ b/net/batman-adv/bat_v_ogm.c
@@ -710,7 +710,7 @@ static bool batadv_v_ogm_route_update(struct batadv_priv *bat_priv,
 	 * don't route towards it
 	 */
 	router = batadv_orig_router_get(orig_node, if_outgoing);
-	if (router && router->orig_node != orig_node && !orig_neigh_router) {
+	if (router && ACCESS_PRIVATE(router, orig_node_id) != orig_node && !orig_neigh_router) {
 		batadv_dbg(BATADV_DBG_BATMAN, bat_priv,
 			   "Drop packet: OGM via unknown neighbor!\n");
 		goto out;
diff --git a/net/batman-adv/originator.c b/net/batman-adv/originator.c
index b3468ccab535..97375eb4cd96 100644
--- a/net/batman-adv/originator.c
+++ b/net/batman-adv/originator.c
@@ -694,9 +694,12 @@ batadv_neigh_node_create(struct batadv_orig_node *orig_node,
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
index daa06f421154..ba46e414fe05 100644
--- a/net/batman-adv/types.h
+++ b/net/batman-adv/types.h
@@ -628,8 +628,15 @@ struct batadv_neigh_node {
 	/** @list: list node for &batadv_orig_node.neigh_list */
 	struct hlist_node list;
 
-	/** @orig_node: pointer to corresponding orig_node */
-	struct batadv_orig_node *orig_node;
+#ifdef CONFIG_BATMAN_ADV_BATMAN_V
+	/**
+	 * @orig_node_id: pointer to corresponding orig_node. It must only be used
+	 * to identify the node but must NEVER be dereferenced. The reference counter
+	 * was not increased when this was assigned because it would otherwise create
+	 * an reference cycle.
+	 */
+	struct batadv_orig_node *__private orig_node_id;
+#endif
 
 	/** @addr: the MAC address of the neighboring interface */
 	u8 addr[ETH_ALEN];

---
base-commit: 1f5ffc672165ff851063a5fd044b727ab2517ae3
change-id: 20260504-neigh_node-no-orig_node-e8bc7e79d9ba
prerequisite-patch-id: 8d01950de12c8f4715e9f4723a0b6f1c349e6a84

Best regards,
--  
Sven Eckelmann <sven@narfation.org>

