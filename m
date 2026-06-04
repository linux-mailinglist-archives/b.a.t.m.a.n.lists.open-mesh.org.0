Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id DSSnDAfcIWorPwEAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 04 Jun 2026 22:11:51 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id D36C164320D
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 04 Jun 2026 22:11:50 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=narfation.org header.s=20121 header.b=taVr8UCz;
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 136.243.236.17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	dmarc=pass (policy=none) header.from=narfation.org;
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id AFF63853A7
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 04 Jun 2026 22:11:50 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1780603910;
 b=DFHy87zHIn8ajoQxslS/L3/GdkxnpszU/NPAhJLwkSs6nJonXMggNqEburOWIGkRCngGS
 GS3jUW3f4PW8xZCBEclW0RvOcyXjPV27ggCP/Fodw9kaGPA3FgNePIvjZGbmyo/Ckvi0118
 E4dCIi/Q8XcznoWVwiIYR3LnQ9AvQfY=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1780603910; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=O1exFvQ+1G8Twm+1FYsYA7KMMFjDl1DN1aCxGfSOSI4=;
 b=lMcmaOMFOSe0BU6AFWJyXjxAi0YXOUhwwXGO+2v7tun7i664IoMYEsOu9E/dA2Gb9o8Mc
 jIo8fyNQOX/6t2QERAuU0SSGIntkFXUAsvfXX/+Nr0bZIrksSvFqMzTj0QHO8329+T3xXBN
 stO8p3EkGzCnhnTXgg5BFsQq7ho5alg=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org
 [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id 3516282587
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 04 Jun 2026 22:08:52 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1780603737;
	b=wBOVWxnS0hTrWUXAiy3LKdqhL5NLxsMsKUbR+94Va8RkwuH5copX+Oz/A8mSkjxi12vx4+
	UcrrBtmVoqWWfk42rVRluInk6weXJHkxTkeuMNpKfHdoP4s0ugm0TDVMB/oMM7qr4BK+O2
	yrCPVwWyRWKBaliqVQkGsk+3NoQj+vk=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=taVr8UCz;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1780603737;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=O1exFvQ+1G8Twm+1FYsYA7KMMFjDl1DN1aCxGfSOSI4=;
	b=0yPDZyzTBxknLZy0fKRgJn/4Q4Q5pbpADOK4X7D7upwFL7E49GQ4e6ed1srCPyvWd2ZRmH
	3P2d04El/Sr6B0okEhQDSTftmazNJAtsKEZMxX0jqVOhXDvgGuqW1ivqtiP0KSgVQtpkmg
	BiUPg9ckzmxw8+tOq70p2vipyO6mQF4=
Received: by dvalin.narfation.org (Postfix) id CFC4420267;
	Thu, 04 Jun 2026 20:08:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1780603731;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=O1exFvQ+1G8Twm+1FYsYA7KMMFjDl1DN1aCxGfSOSI4=;
	b=taVr8UCz4bJtoGatV5Bx6/qVvXf51K8CXPXQsYeZxYtCvz043EAxaFspcqrMq/BOKDfSwX
	Ppzfl/fiaXRTbzKl2XHqQ2wwlL2snH1y1XiN9VlhElIx4J3f02uAqhIlDpiWMNOt5ThK0+
	rcGqjVdgeAAd7tPNHUgirxmRYiUuY10=
From: Sven Eckelmann <sven@narfation.org>
Date: Thu, 04 Jun 2026 22:08:44 +0200
Subject: [PATCH batadv 2/5] batman-adv: bla: update stale kernel-doc
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260604-kernel-doc-cleanup-v1-2-c4c4d4a77c31@narfation.org>
References: <20260604-kernel-doc-cleanup-v1-0-c4c4d4a77c31@narfation.org>
In-Reply-To: <20260604-kernel-doc-cleanup-v1-0-c4c4d4a77c31@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2811; i=sven@narfation.org;
 h=from:subject:message-id; bh=q4Po5jMiD9k4zDNoLj2olAjN1guYjh/U0qEy4Cfyb3Q=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDFmKt71nzPx4/Mj8gvc/VP8zzH0x3ePlvXkWfkH5Hlali
 g07ecUkOkpZGMS4GGTFFFn2XMk/v5n9rfznaR+PwsxhZQIZwsDFKQATub2H4Z/B6q6LRSxzApo3
 HVQMyHgW6zldZde2LR6Z06dKP3rVnlvIyNB1NnEp16eFst+Eji9fu7R3v14U4+nsTVOem/Ddbef
 I+cECAA==
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: XQL52XIIE6ZJRIVNO6JY3WA4LW2ZQVC5
X-Message-ID-Hash: XQL52XIIE6ZJRIVNO6JY3WA4LW2ZQVC5
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/XQL52XIIE6ZJRIVNO6JY3WA4LW2ZQVC5/>
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
	ASN(0.00)[asn:24940, ipnet:136.243.0.0/16, country:DE];
	TAGGED_RCPT(0.00)[b.a.t.m.a.n];
	DBL_BLOCKED_OPENRESOLVER(0.00)[diktynna.open-mesh.org:helo,diktynna.open-mesh.org:rdns,narfation.org:mid,narfation.org:dkim,narfation.org:from_mime,narfation.org:email,lists.open-mesh.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D36C164320D

The bridge-loop-avoidance code was changed recently to avoid inconsistent
state and race condition problems. The kernel-doc addded in these commits
(and related code) has various minor deficits which are now resolved.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 net/batman-adv/bridge_loop_avoidance.c |  2 +-
 net/batman-adv/bridge_loop_avoidance.h |  2 +-
 net/batman-adv/types.h                 | 10 +++++++---
 3 files changed, 9 insertions(+), 5 deletions(-)

diff --git a/net/batman-adv/bridge_loop_avoidance.c b/net/batman-adv/bridge_loop_avoidance.c
index 0461f112..36421f76 100644
--- a/net/batman-adv/bridge_loop_avoidance.c
+++ b/net/batman-adv/bridge_loop_avoidance.c
@@ -123,7 +123,7 @@ static bool batadv_compare_backbone_gw(const struct hlist_node *node,
  * @node: list node of the first entry to compare
  * @data2: pointer to the second claims
  *
- * Return: true if the claim have the same data, 0 otherwise
+ * Return: true if the claims have the same data, false otherwise
  */
 static bool batadv_compare_claim(const struct hlist_node *node,
 				 const void *data2)
diff --git a/net/batman-adv/bridge_loop_avoidance.h b/net/batman-adv/bridge_loop_avoidance.h
index 8673a265..06c7dfb8 100644
--- a/net/batman-adv/bridge_loop_avoidance.h
+++ b/net/batman-adv/bridge_loop_avoidance.h
@@ -21,7 +21,7 @@
  *  detect frame sent by bridge loop avoidance
  * @mac: mac address to check
  *
- * Return: true if the it looks like a loop detect frame
+ * Return: true if it looks like a loop detect frame
  * (mac starts with BA:BE), false otherwise
  */
 static inline bool batadv_bla_is_loopdetect_mac(const uint8_t *mac)
diff --git a/net/batman-adv/types.h b/net/batman-adv/types.h
index a7fa0d9e..5fd5bd35 100644
--- a/net/batman-adv/types.h
+++ b/net/batman-adv/types.h
@@ -1723,22 +1723,26 @@ struct batadv_priv {
 
 #ifdef CONFIG_BATMAN_ADV_BLA
 
+/**
+ * enum batadv_bla_backbone_gw_state - state of a bridge loop avoidance
+ *  backbone gateway
+ */
 enum batadv_bla_backbone_gw_state {
 	/**
 	 * @BATADV_BLA_BACKBONE_GW_STOPPED: backbone gw is being removed
-	 * and it must not longer work on requests
+	 * and it must no longer work on requests
 	 */
 	BATADV_BLA_BACKBONE_GW_STOPPED,
 
 	/**
 	 * @BATADV_BLA_BACKBONE_GW_UNSYNCED: backbone was detected out
-	 * of sync and a request was send. No traffic is forwarded until the
+	 * of sync and a request was sent. No traffic is forwarded until the
 	 * situation is resolved
 	 */
 	BATADV_BLA_BACKBONE_GW_UNSYNCED,
 
 	/**
-	 * @BATADV_BLA_BACKBONE_GW_SYNCED: backbone is consider to be in
+	 * @BATADV_BLA_BACKBONE_GW_SYNCED: backbone is considered to be in
 	 * sync. traffic can be forwarded
 	 */
 	BATADV_BLA_BACKBONE_GW_SYNCED,

-- 
2.47.3

