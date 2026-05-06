Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yAK+NRWj+2mvegMAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 06 May 2026 22:22:45 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 879FD4E0218
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 06 May 2026 22:22:45 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 53FAB806B2
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 06 May 2026 22:22:45 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1778098965;
 b=SbxQPHSx9pXcV5Za4ZBBxYK4zcMaf+HgQK3kgoM+XFkALJCE+wKjeDeQ85309E85u/Bgl
 6ezvlzLewpz24ayprS7ShGDiUjDp4uDbexjAnVKx2UkbMhOS+1o01Yjm5vsrpJOmR6h5gNE
 mTw73qErRhoCpDRnSw3LgI8mewMGEtU=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1778098965; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=PwaLJal4xwAjO6V+L/eAu5dAe3rfjsSM5DPsxawXPmA=;
 b=X3jxebT3LZpnwHofa7OUWKASeI6O4wHyMoZvmPl0Bu6occO7OoHp3tKkk9BNSJ2cvVMS6
 91fQqiKF1yx8wi0/LXxhJEtqzGpuZ3dM7aI0KYnX4PUIo9YLZFq1D6JwvYJ3XVE4U+DglB8
 86h825qzsOvuADJpYcT+/DPvBvk34Hg=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass (Used From Domain Record) header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id 5B2BB844A9
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 06 May 2026 22:22:06 +0200 (CEST)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1778098927;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=PwaLJal4xwAjO6V+L/eAu5dAe3rfjsSM5DPsxawXPmA=;
	b=hlUvLhdOFic1gbqx6gPINQoud5ZyrotdHvkDWH32uPhm6907ybbpJOjrahtHbHo4TPcGWI
	ZpMdUUCpjh5JUDqyQ7yQv58pucZksE98DnlF00WGr0Ls7/lgKdabI6ZEBttvIUMI4ukMAR
	LE4+VE10mJQ/U6fr32aBw7EdIQN39sY=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=GTWbtM85;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1778098927;
	b=untdL7cO6j5b+HGRyUnb69mAmxSKa4oTUI5O2uY7GSFH5XGlvF8D1hLgfxySjiqiPAyTB+
	1LN33oRE3L2C4wfvkLh8LQA+OGTlBCfEAFwO6jM8OhrOFWcGk06PG45Vx1lQZT2i3HikNX
	CNxgd470CqtL61pkBtLUMjZNoGAU5Mc=
Received: by dvalin.narfation.org (Postfix) id 3FAB620DD3;
	Wed, 06 May 2026 20:22:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1778098926;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=PwaLJal4xwAjO6V+L/eAu5dAe3rfjsSM5DPsxawXPmA=;
	b=GTWbtM85nmMcJk8T3eqRDSDrwryPhfWRraxKca9bbvku3BXtGTyAWH4rJcDC0y/cnbFMvq
	4BJHB+sYsoYb7iq1xzRivfv1DqBTaluLBIQkaA4sEl7N+QocDDlvi4iKvMYX1DlTvF+xZ6
	GlqY+x7QXsy2JgnhPV+e3gAkRNjSvHo=
From: Sven Eckelmann <sven@narfation.org>
Date: Wed, 06 May 2026 22:20:48 +0200
Subject: [PATCH batadv v2 01/11] batman-adv: iv: avoid bonding logic for
 outgoing OGM
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260506-fixes-followup-v2-1-ce32a2d8d4da@narfation.org>
References: <20260506-fixes-followup-v2-0-ce32a2d8d4da@narfation.org>
In-Reply-To: <20260506-fixes-followup-v2-0-ce32a2d8d4da@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Ao Zhou <n05ec@lzu.edu.cn>, Haoze Xie <royenheart@gmail.com>,
 Jiexun Wang <wangjiexun2025@gmail.com>, Juefei Pu <tomapufckgml@gmail.com>,
 Luxing Yin <tr0jan@lzu.edu.cn>, Ren Wei <n05ec@lzu.edu.cn>,
 Ruide Cao <caoruide123@gmail.com>, Xin Liu <bird@lzu.edu.cn>,
 Yifan Wu <yifanwucs@gmail.com>, Yuan Tan <yuantan098@gmail.com>,
 Sven Eckelmann <sven@narfation.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2497; i=sven@narfation.org;
 h=from:subject:message-id; bh=bq441ILyDZrQBX95WYXp/cHZQ0gLHid+MXwjAy+/z3I=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDJm/Fx3wMF94+5fV/pVVj02bPx3ge3TR9tWplI6z554+t
 Tyvp+u+o6OUhUGMi0FWTJFlz5X885vZ38p/nvbxKMwcViaQIQxcnAIwkXoeRoYNPAJzljay3F8f
 obfutohIzmLxeQ+nPlr+jFts952b1S8mMfyza9nceMhibUBnzxWLF3oSJWcLPn1br3jYrzxOZW2
 2zEJmAA==
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: L3QJLFUCKF37C4XQEAMQJZO2KGPK4CNZ
X-Message-ID-Hash: L3QJLFUCKF37C4XQEAMQJZO2KGPK4CNZ
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/L3QJLFUCKF37C4XQEAMQJZO2KGPK4CNZ/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>
X-Rspamd-Queue-Id: 879FD4E0218
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
	FREEMAIL_CC(0.00)[lzu.edu.cn,gmail.com,narfation.org];
	RCVD_COUNT_THREE(0.00)[3];
	RCPT_COUNT_TWELVE(0.00)[12];
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
	ASN(0.00)[asn:24940, ipnet:2a01:4f8::/32, country:DE];
	DBL_BLOCKED_OPENRESOLVER(0.00)[diktynna.open-mesh.org:helo,diktynna.open-mesh.org:rdns,narfation.org:email,narfation.org:dkim,narfation.org:mid]

The batadv_orig_to_router() function will invoke batadv_find_router() to
get the neighbor node (router) for the specified interface. But
batadv_find_router() also is responsible for the bonding code when the
default (NULL) interface is specified. This is rather unexpected for the
OGM code.

Instead provide a simpler function which never tries to interact with the
bonding candidates and only returns the router on a specific interface.

Fixes: fa15d5b68da1 ("batman-adv: stop caching unowned originator pointers in BAT IV")
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 net/batman-adv/bat_iv_ogm.c | 31 +++++++++++++++++++++++++++++--
 1 file changed, 29 insertions(+), 2 deletions(-)

diff --git a/net/batman-adv/bat_iv_ogm.c b/net/batman-adv/bat_iv_ogm.c
index d5f926e2..74ef7dc2 100644
--- a/net/batman-adv/bat_iv_ogm.c
+++ b/net/batman-adv/bat_iv_ogm.c
@@ -1310,6 +1310,32 @@ batadv_iv_ogm_update_seqnos(const struct ethhdr *ethhdr,
 	return ret;
 }
 
+/**
+ * batadv_orig_to_direct_router() - get direct next hop neighbor to an orig address
+ * @bat_priv: the bat priv with all the mesh interface information
+ * @orig_addr: the originator MAC address to search the best next hop router for
+ * @if_outgoing: the interface where the OGM should be sent to
+ *
+ * Return: A neighbor node which is the best router towards the given originator
+ * address. Bonding candidates are ignored.
+ */
+static struct batadv_neigh_node *
+batadv_orig_to_direct_router(struct batadv_priv *bat_priv, u8 *orig_addr,
+			     struct batadv_hard_iface *if_outgoing)
+{
+	struct batadv_neigh_node *neigh_node;
+	struct batadv_orig_node *orig_node;
+
+	orig_node = batadv_orig_hash_find(bat_priv, orig_addr);
+	if (!orig_node)
+		return NULL;
+
+	neigh_node = batadv_orig_router_get(orig_node, if_outgoing);
+	batadv_orig_node_put(orig_node);
+
+	return neigh_node;
+}
+
 /**
  * batadv_iv_ogm_process_per_outif() - process a batman iv OGM for an outgoing
  *  interface
@@ -1380,8 +1406,9 @@ batadv_iv_ogm_process_per_outif(const struct sk_buff *skb, int ogm_offset,
 
 	router = batadv_orig_router_get(orig_node, if_outgoing);
 	if (router) {
-		router_router = batadv_orig_to_router(bat_priv, router->addr,
-						      if_outgoing);
+		router_router = batadv_orig_to_direct_router(bat_priv,
+							     router->addr,
+							     if_outgoing);
 		router_ifinfo = batadv_neigh_ifinfo_get(router, if_outgoing);
 	}
 

-- 
2.47.3

