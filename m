Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0BoDOtBb+2mUaAMAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 06 May 2026 17:18:40 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 85A6B4DD082
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 06 May 2026 17:18:40 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 00866841CE
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 06 May 2026 17:18:40 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1778080719;
 b=sqTYYbFxNyVcHfCIRozhze6SfpBCgN95JZloUo6wG0JgCr5AohaLyWEVccJYlUXnOWild
 I2YW6sX3ETQfYJ/D52cxozr1bxyCHr2LoNPdxaatUoyoPckTCJsHtJ7WhJoi1Gpxp8eqK14
 rJNVPZo5tdGJHG0H63K9l1iqc29cNO0=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1778080719; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=UF1cvqQ1XxJ0rOCEXj9AxrP5Du/EdNGx0zAJiw4BhQE=;
 b=0cK/6PxVMhLpTQLxyD+PoKALJarVIAzJ+UFmDvKKeT3xZdKl7enN2XBB4Z3bK2lVDxF/M
 MaJB5Hq1IqrB1o5etfP4DGuG1d6RAe7ynCC14wYEdUig0Is7hP+a7xBDQC2H06tOnzRBcu4
 xG9TlTnvmOSquS7h7XUQBIQdnS+EbbE=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass (Used From Domain Record) header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id 543B981C51
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 06 May 2026 17:18:09 +0200 (CEST)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1778080699;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=UF1cvqQ1XxJ0rOCEXj9AxrP5Du/EdNGx0zAJiw4BhQE=;
	b=fWUbTRh5FG5gLaNvYfKMfdn/MCQwvV20LgVpuf7csK+Ksj+WKMh/QwaB+JMtU5GGg8G4su
	EFxkR5PmjJxIJyqTqDJ3i/b62ER+miUsaY7+zZ/8UvoAHMhbIyoxoto2Qnwn4R/3bebHnp
	exyQyYi8k0qObzORykCIcHziThlBN8o=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b="IyVVR/PE";
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1778080699;
	b=TYV4C54iVA3BfwM/ZPB/1FMXmj8AtQE3OpexiCSoIhJtNu8VBUh3yMRx9tE248TT0ix4le
	fpxMzuEMN4wDXbpeqE0EWq7gM+H3HRNHI+cEM+ehQRSebuOTAWWryYsExfrOae0DRHHlW7
	IfNW5Q6BWoKf2iVpOHmaIAJMcePEY28=
Received: by dvalin.narfation.org (Postfix) id CE9182150D;
	Wed, 06 May 2026 15:18:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1778080687;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=UF1cvqQ1XxJ0rOCEXj9AxrP5Du/EdNGx0zAJiw4BhQE=;
	b=IyVVR/PEB3n3y/U5BlmXDeCZZC1kMSv4GXgX3VEx+OYwANwfnVGHpGbD7K0HFTxnUI7Zjd
	+vjS6cxlTRB7GED+dj6WLGp3h+7e/BbYjh4ykffuk/bo4kjbjfEJy6d+za5VSRuU3prnKn
	1c9vgsDwbpWJT2dCO4RWlsmSt7wzZEg=
From: Sven Eckelmann <sven@narfation.org>
Date: Wed, 06 May 2026 17:17:56 +0200
Subject: [PATCH RFC] batman-adv: iv: avoid bonding logic for outgoing OGM
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260506-direct-router-get-fix-v1-1-b32a74727144@narfation.org>
X-B4-Tracking: v=1; b=H4sIAKNb+2kC/yWMwQrCMBAFf6W8swsx0AS9Cn6A1+KhTde6HlrZp
 CKU/rvbepyBmQWZVTjjXC1Q/kiWaTQ4HiqkZzsOTNIbwzsfXO0C9aKcCuk0F1YauNBDvlR7x6c
 YYhfbBGvfyqb3b4Pb9YL7X+a5e1m+HbGuP8BNz7R+AAAA
X-Change-ID: 20260506-direct-router-get-fix-520e9767b7ac
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Yuan Tan <yuantan098@gmail.com>, Yifan Wu <yifanwucs@gmail.com>,
 Juefei Pu <tomapufckgml@gmail.com>, Xin Liu <bird@lzu.edu.cn>,
 Jiexun Wang <wangjiexun2025@gmail.com>, Ren Wei <n05ec@lzu.edu.cn>,
 sw@simonwunderlich.de, Sven Eckelmann <sven@narfation.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2866; i=sven@narfation.org;
 h=from:subject:message-id; bh=cLewwonZNf1Nw1gJBQS8riMGbafFn7tV3YQVoUETYes=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDJm/o9fc1tf5veavmvt2oyNu834Gnvf3UXFMUI9UjyvNN
 Wbbdm1nRykLgxgXg6yYIsueK/nnN7O/lf887eNRmDmsTCBDGLg4BWAiM54xMuxhUBGZzdyi9fZA
 e0HC7DOnSnjmxlwJjJ/17QjPU+c79nKMDFcTdhx53cS170tr9rq0/bu+HzXmC2aTOXnUqOaluw/
 fFS4A
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: R7D7JTWW2P2V7QZMIXUHLJV4Y5NFAZWH
X-Message-ID-Hash: R7D7JTWW2P2V7QZMIXUHLJV4Y5NFAZWH
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/R7D7JTWW2P2V7QZMIXUHLJV4Y5NFAZWH/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>
X-Rspamd-Queue-Id: 85A6B4DD082
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.01 / 15.00];
	ARC_ALLOW(-1.00)[open-mesh.org:s=20121:i=2];
	DMARC_POLICY_ALLOW(-0.50)[narfation.org,none];
	R_DKIM_ALLOW(-0.20)[narfation.org:s=20121];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	R_SPF_NA(0.00)[no SPF record];
	FREEMAIL_CC(0.00)[gmail.com,lzu.edu.cn,simonwunderlich.de,narfation.org];
	TAGGED_FROM(0.00)[lists,b.a.t.m.a.n=lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[narfation.org:+];
	ASN(0.00)[asn:24940, ipnet:2a01:4f8::/32, country:DE];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sven@narfation.org,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[b.a.t.m.a.n];
	DBL_BLOCKED_OPENRESOLVER(0.00)[narfation.org:email,narfation.org:dkim,narfation.org:mid,diktynna.open-mesh.org:helo,diktynna.open-mesh.org:rdns]

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
Just meant as quick note about
https://lore.kernel.org/batman/20260506123952.671718-3-horms@kernel.org/T/#m3cdc727832b0f7cd7112bf004630d37103a36270

Don't have anything to test this at the moment.
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
 

---
base-commit: fa15d5b68da1a96c6baf846afd01390e6c217328
change-id: 20260506-direct-router-get-fix-520e9767b7ac

Best regards,
--  
Sven Eckelmann <sven@narfation.org>

