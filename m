Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 8jp7NL4DLGqPJgQAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 12 Jun 2026 15:03:58 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 79BFD6799AF
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 12 Jun 2026 15:03:58 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=narfation.org header.s=20121 header.b=RbmHhs9M;
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 136.243.236.17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	dmarc=pass (policy=none) header.from=narfation.org;
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 3D14984217
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 12 Jun 2026 15:03:58 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1781269438;
 b=sLyKTxi8QN3VOswSILBB8Tf39CedmPcEq7eCf7/3jzllG2lxZe8CI200YXK6h4hdePVQq
 yo+xOUCrtZWDyWoWohNh4B2WkR8tiptue/zGz6FFnEsQqSjCOZQ+2BogQN2bacbwm2tijH5
 xt6jdlFLL2W+FKfPZFdP+7unqS54+fc=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1781269438; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=4diyvnqhgOUNMQfIAlESBojOlh4+pNx6VEhema+pSMM=;
 b=J8LTAtZWHEnapbNbwvY/lMFdzJxg4EYN8XcIyZiF4Mr1mV2kOZdlrN5nhau8cZ55tptGO
 8KDFNpUZsvJsXzFNTRYxJEyEXwqWOVAthKLrTJyzfa+CEA9kXZDgSdRwKlUvKhbx4f6oq2m
 sD/S0GESDEva4+h/t9xl/AGoj8X5M8k=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org
 [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id 1B03980C12
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 12 Jun 2026 15:03:00 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1781269392;
	b=IBVtYlSoh5tEoVjvgY0TMfrU/CcpX1UoJGe3sQVxHCI/t6EjcAkcX18YlZDGMMd/fkqUYY
	uDhYCk192fN4MNVu3H5yZjTldiY53jOrXuqFIrxyeRdz05VCfXv57es0R0VhUmVAXoNiBH
	MQip+J0GKMJ23z+ODJ6iMvthKif2AGI=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1781269392;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=4diyvnqhgOUNMQfIAlESBojOlh4+pNx6VEhema+pSMM=;
	b=s3HCnovmR6ChErZ7IJIcYS+HyXEypQqyKGebx7XtN2kpxbh1jn3rjBe/dsGVwL43Zd4rkg
	Ades2IL4reF5bVBLfILNsPXlXftegJVclQ39f/uXxssAl8oTi/tf5O5jar+reGaBSTvLe/
	ntSsq5A4QziWiDuKXeLTSFL49VgcoD0=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=RbmHhs9M;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org
Received: by dvalin.narfation.org (Postfix) id 0B2001FD51;
	Fri, 12 Jun 2026 13:02:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1781269378;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=4diyvnqhgOUNMQfIAlESBojOlh4+pNx6VEhema+pSMM=;
	b=RbmHhs9MJx6DhtgHy2XpwRWbkbRQuAaAMtCYeEza6gFy2Aqw7z9KuV0AfD5xhyBEA9vKgw
	9td08HeFhBAeFonA1bHMr3gS4uNX+wDnqNl8wCWW+iqmw7TvRnOG4TxrM5JvieWE6HErrx
	56Y9ewXtbHcqNnpvV2wBKYbgxU3sVRY=
From: Sven Eckelmann <sven@narfation.org>
Date: Fri, 12 Jun 2026 15:02:51 +0200
Subject: [PATCH batadv] batman-adv: v: prevent OGM aggregation on disabled
 hardif
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: 
 <20260612-bat_v-disable-aggregation-v1-1-4c4e17654ea0@narfation.org>
X-B4-Tracking: v=1; b=H4sIAHoDLGoC/yWM0QrCMAwAf2Xk2cA6sTB/RUTSNq0RmdLUIoz9u
 1Ef7+BuBeUqrHAcVqjcReWxGLjdAPFKS2GUZAzTOPnRO4eB2qVjEqVwZ6RSKhdqVuE+5tnlOfk
 DB7D+WTnL+/c+gWWUOpz/Xl/hxrF9x7BtHwbiPumFAAAA
X-Change-ID: 20260611-bat_v-disable-aggregation-3cf91f9d65eb
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=3674; i=sven@narfation.org;
 h=from:subject:message-id; bh=DiPDS2sv16jo+WUtAufeyEvq7u5Ws9Jk97fLRrqJ9Ds=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDFk6zNVPT6pODnupsLLAU2lydXT3pT23S2Ldqss2qV3Ok
 fHsbK/tKGVhEONikBVTZNlzJf/8Zva38p+nfTwKM4eVCWQIAxenAEykU53hD9fvNSl9QWY8d04q
 lfkuF+i7cf/nu8XTnYVeL9djVZ5jc4/hv+8ZFpUlW0MYv2QpTWwPCFJg+vCjXu7/iyn6TJ8ZJ3r
 2MgEA
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: XJTIIUDZXRCSUY44V7LGWSE3SS5G4X6I
X-Message-ID-Hash: XJTIIUDZXRCSUY44V7LGWSE3SS5G4X6I
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/XJTIIUDZXRCSUY44V7LGWSE3SS5G4X6I/>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[diktynna.open-mesh.org:rdns,diktynna.open-mesh.org:helo,lists.open-mesh.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 79BFD6799AF

When an interface gets disabled, the worker is correctly disabled by
batadv_hardif_disable_interface() -> ... -> batadv_v_ogm_iface_disable().
In this process, the skb aggr_list is also freed.

But batadv_v_ogm_send_meshif() can still queue new skbs (via
batadv_v_ogm_queue_on_if()) to the aggr_list. This will only stop after all
cores can no longer find the RCU protected list of hard interfaces. These
queued skbs will never be freed or consumed by batadv_v_ogm_aggr_work.

The batadv_v_ogm_iface_disable() function must block
batadv_v_ogm_queue_on_if() to avoid leak of skbs.

Fixes: 2a5267fa7490 ("batman-adv: BATMAN_V: introduce per hard-iface OGMv2 queues")
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 net/batman-adv/bat_v.c     |  1 +
 net/batman-adv/bat_v_ogm.c | 12 ++++++++++++
 net/batman-adv/types.h     |  6 ++++++
 3 files changed, 19 insertions(+)

diff --git a/net/batman-adv/bat_v.c b/net/batman-adv/bat_v.c
index fe7c0113..db6f5bdc 100644
--- a/net/batman-adv/bat_v.c
+++ b/net/batman-adv/bat_v.c
@@ -817,6 +817,7 @@ void batadv_v_hardif_init(struct batadv_hard_iface *hard_iface)
 
 	hard_iface->bat_v.aggr_len = 0;
 	skb_queue_head_init(&hard_iface->bat_v.aggr_list);
+	hard_iface->bat_v.aggr_list_enabled = false;
 	INIT_DELAYED_WORK(&hard_iface->bat_v.aggr_wq,
 			  batadv_v_ogm_aggr_work);
 	/* make sure it doesn't run until interface gets enabled */
diff --git a/net/batman-adv/bat_v_ogm.c b/net/batman-adv/bat_v_ogm.c
index 81926ef9..95efd8a4 100644
--- a/net/batman-adv/bat_v_ogm.c
+++ b/net/batman-adv/bat_v_ogm.c
@@ -254,11 +254,18 @@ static void batadv_v_ogm_queue_on_if(struct batadv_priv *bat_priv,
 	}
 
 	spin_lock_bh(&hard_iface->bat_v.aggr_list.lock);
+	if (!hard_iface->bat_v.aggr_list_enabled) {
+		kfree_skb(skb);
+		goto unlock;
+	}
+
 	if (!batadv_v_ogm_queue_left(skb, hard_iface))
 		batadv_v_ogm_aggr_send(bat_priv, hard_iface);
 
 	hard_iface->bat_v.aggr_len += batadv_v_ogm_len(skb);
 	__skb_queue_tail(&hard_iface->bat_v.aggr_list, skb);
+
+unlock:
 	spin_unlock_bh(&hard_iface->bat_v.aggr_list.lock);
 }
 
@@ -415,6 +422,10 @@ int batadv_v_ogm_iface_enable(struct batadv_hard_iface *hard_iface)
 {
 	struct batadv_priv *bat_priv = netdev_priv(hard_iface->mesh_iface);
 
+	spin_lock_bh(&hard_iface->bat_v.aggr_list.lock);
+	hard_iface->bat_v.aggr_list_enabled = true;
+	spin_unlock_bh(&hard_iface->bat_v.aggr_list.lock);
+
 	enable_delayed_work(&hard_iface->bat_v.aggr_wq);
 
 	batadv_v_ogm_start_queue_timer(hard_iface);
@@ -432,6 +443,7 @@ void batadv_v_ogm_iface_disable(struct batadv_hard_iface *hard_iface)
 	disable_delayed_work_sync(&hard_iface->bat_v.aggr_wq);
 
 	spin_lock_bh(&hard_iface->bat_v.aggr_list.lock);
+	hard_iface->bat_v.aggr_list_enabled = false;
 	batadv_v_ogm_aggr_list_free(hard_iface);
 	spin_unlock_bh(&hard_iface->bat_v.aggr_list.lock);
 }
diff --git a/net/batman-adv/types.h b/net/batman-adv/types.h
index 5fd5bd35..5e81c93b 100644
--- a/net/batman-adv/types.h
+++ b/net/batman-adv/types.h
@@ -145,6 +145,12 @@ struct batadv_hard_iface_bat_v {
 	/** @aggr_list: queue for to be aggregated OGM packets */
 	struct sk_buff_head aggr_list;
 
+	/**
+	 * @aggr_list_enabled: aggr_list is active and new skbs can be
+	 * enqueued. Protected by aggr_list.lock after initialization
+	 */
+	bool aggr_list_enabled:1;
+
 	/** @aggr_len: size of the OGM aggregate (excluding ethernet header) */
 	unsigned int aggr_len;
 

---
base-commit: 385b248dd4e46c4ce022adeb1b13e547d1954901
change-id: 20260611-bat_v-disable-aggregation-3cf91f9d65eb

Best regards,
--  
Sven Eckelmann <sven@narfation.org>

