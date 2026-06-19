Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id +FFaMcLpNGrcjwYAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 19 Jun 2026 09:03:30 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 653856A4347
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 19 Jun 2026 09:03:30 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=simonwunderlich.de header.s=09092022 header.b=xih1w9Ds;
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 2a01:4f8:241:fc1:136:243:236:17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	dmarc=pass (policy=none) header.from=simonwunderlich.de;
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 415E58423F
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 19 Jun 2026 09:03:30 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1781852610;
 b=D959KkpOiefwHFF9O60ZCZZ/2Lb7vLaentLm6Vgq1vfoaxJ5VjZe2VMhtjUVUkmJN8p6r
 JShjDBhzsXvkF6DEN3FthXnjmxOUOnFH60U8SPsz8cXu6Is5CzwRJKhWDY3N7rMg/Jlp9eI
 JTTedsKqeDb7qH0kb7NkRGcRVCRzTrY=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1781852610; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=2kBmYM7cKZK+VnBuVFOAYovV9CgsOEsRM5SEqnA1Xz0=;
 b=PQfTfWqUX2UZsFnbhxwhsvS01uW8dHV2pbc5LdysDTykKMaLYtbnRQbX2Fqkdxj1knkAy
 +RWzXsfrSjvHNr5yPiafEk/X6ZKp+yrBgz1NA8xQWAkqNRah9EeSxW/I6jWL7jFQ13ul9jR
 ny70kH7OpLeFGOdNsx2zBMoeMi9Jzfw=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=simonwunderlich.de;
 arc=pass;
 dmarc=pass header.from=simonwunderlich.de policy.dmarc=none
Received: from mail.simonwunderlich.de (mail.simonwunderlich.de
 [IPv6:2a01:4f8:c17:e8c0::1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 4110583258
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 19 Jun 2026 09:00:54 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1781852454;
	b=m781+Ku88lX7Fdy7RIEJBvTrnkhxYjihQhJ/ozSMzswiZpT3GKSX7zmJbsEWTiXLzWYTLx
	erCWYsWBCPmr6jMudhjiLVFTUspfgrIiMVO290F9Cg9u0rxIeoW8WUPgBKagLjTd9slfe4
	Xtd1cTd7AZn4Y32h2Az31SWc5ZEm0gI=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1781852454;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=2kBmYM7cKZK+VnBuVFOAYovV9CgsOEsRM5SEqnA1Xz0=;
	b=Ghp+iPm+nvnGBfjUetWEZpPUmkRIzbmzP0KOpcu4e40+ZY2CXX/20IY4dW5s8ZfO8tACwC
	ZFaexlQFj1E7JfqTsu4fP+LRnMGgmQoSpCoV0wu+iDBbK27QE93dxUTvEDGXeIhTocnIJK
	sOVBwABMjYYECvPlAuuoivYxGm3wo/A=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=simonwunderlich.de header.s=09092022 header.b=xih1w9Ds;
	dmarc=pass (policy=none) header.from=simonwunderlich.de;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates
 2a01:4f8:c17:e8c0::1 as permitted sender) smtp.mailfrom=sw@simonwunderlich.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=simonwunderlich.de;
	s=09092022; t=1781852452;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=2kBmYM7cKZK+VnBuVFOAYovV9CgsOEsRM5SEqnA1Xz0=;
	b=xih1w9DscKlEeeP/K1YS57wWF1iTZZIASHTXIFui/mHEcuSr33VHknvnEuX+EkYzf6dJ9H
	Zeu6KLHPENAv/a+SsW9ZMVhZnsJsVDbftxyeLMjYVbz6EoD0ORpTeOB1xZz7KxVG7X9jm2
	4v2yY2XWmXVIYLvUBSeeqx1mE5MEfHpiuTkS1fZvSj4WQX14r3Vwayqbzvatn0nOjv6B1X
	uhzn5ik68qCyzmfTVmPzMWoTWSdmwesu9zyEV+t5hfMhDivKfQg1TOW8wZtr3/1ADd3mNZ
	jRK0GcyH9Resot8DUUyW3MfQebSz4FGVoR/FloEF2scA/VUQAhQFKbWnRQnAng==
From: Simon Wunderlich <sw@simonwunderlich.de>
To: netdev@vger.kernel.org
Cc: "David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Simon Horman <horms@kernel.org>,
	b.a.t.m.a.n@lists.open-mesh.org,
	Sven Eckelmann <sven@narfation.org>,
	stable@kernel.org,
	Simon Wunderlich <sw@simonwunderlich.de>
Subject: [PATCH net 07/15] batman-adv: tp_meter: restrict number of unacked
 list entries
Date: Fri, 19 Jun 2026 09:00:37 +0200
Message-ID: <20260619070045.438101-8-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260619070045.438101-1-sw@simonwunderlich.de>
References: <20260619070045.438101-1-sw@simonwunderlich.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Message-ID-Hash: NNGDIBXTNZUIUTOIXSZ3VQ6LMR4Q562J
X-Message-ID-Hash: NNGDIBXTNZUIUTOIXSZ3VQ6LMR4Q562J
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/NNGDIBXTNZUIUTOIXSZ3VQ6LMR4Q562J/>
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
	FORGED_RECIPIENTS(0.00)[m:netdev@vger.kernel.org,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:horms@kernel.org,m:b.a.t.m.a.n@lists.open-mesh.org,m:sven@narfation.org,m:stable@kernel.org,m:sw@simonwunderlich.de,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[lists,b.a.t.m.a.n=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[sw@simonwunderlich.de,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	DKIM_TRACE(0.00)[simonwunderlich.de:+];
	ASN(0.00)[asn:24940, ipnet:2a01:4f8::/32, country:DE];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.open-mesh.org:from_smtp,narfation.org:email,simonwunderlich.de:dkim,simonwunderlich.de:email,simonwunderlich.de:mid,simonwunderlich.de:from_mime,diktynna.open-mesh.org:rdns,diktynna.open-mesh.org:helo];
	FROM_NEQ_ENVFROM(0.00)[sw@simonwunderlich.de,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[b.a.t.m.a.n];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	R_SPF_NA(0.00)[no SPF record]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 653856A4347

From: Sven Eckelmann <sven@narfation.org>

When the unacked_list is unbound, an attacker could send messages with
small lengths and appropriated seqno + gaps to force the receiver to
allocate more and more unacked_list entries. And the end either causing an
out-of-memory situation or increase the management overhead for the (large)
list that significant portions of CPU cycles are wasted in searching
through the list.

When limiting the list to a specific number, it is important to still
correctly add a new entry to the list. But if the list became larger than
the limit, the last entry of the list (with the highest seqno) must be
dropped to still allow the earlier seqnos to finish and therefore to
continue the process. Otherwise, the process might get stuck with too high
seqnos which are not handled by batadv_tp_ack_unordered().

Cc: stable@kernel.org
Fixes: 33a3bb4a3345 ("batman-adv: throughput meter implementation")
Signed-off-by: Sven Eckelmann <sven@narfation.org>
Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
---
 net/batman-adv/tp_meter.c | 23 ++++++++++++++++++++++-
 net/batman-adv/types.h    |  3 +++
 2 files changed, 25 insertions(+), 1 deletion(-)

diff --git a/net/batman-adv/tp_meter.c b/net/batman-adv/tp_meter.c
index 7e98cbfbbb70d..259ac8c307359 100644
--- a/net/batman-adv/tp_meter.c
+++ b/net/batman-adv/tp_meter.c
@@ -87,6 +87,11 @@
 #define BATADV_TP_PLEN (BATADV_TP_PACKET_LEN - ETH_HLEN - \
 			sizeof(struct batadv_unicast_packet))
 
+/**
+ * BATADV_TP_MAX_UNACKED - maximum number of packets a receiver didn't yet ack
+ */
+#define BATADV_TP_MAX_UNACKED 100
+
 static u8 batadv_tp_prerandom[4096] __read_mostly;
 
 /**
@@ -1303,6 +1308,7 @@ static void batadv_tp_receiver_shutdown(struct timer_list *t)
 	list_for_each_entry_safe(un, safe, &tp_vars->common.unacked_list, list) {
 		list_del(&un->list);
 		kfree(un);
+		tp_vars->common.unacked_count--;
 	}
 	spin_unlock_bh(&tp_vars->common.unacked_lock);
 
@@ -1416,6 +1422,7 @@ static bool batadv_tp_handle_out_of_order(struct batadv_tp_receiver *tp_vars,
 	/* if the list is empty immediately attach this new object */
 	if (list_empty(&tp_vars->common.unacked_list)) {
 		list_add(&new->list, &tp_vars->common.unacked_list);
+		tp_vars->common.unacked_count++;
 		goto out;
 	}
 
@@ -1446,12 +1453,24 @@ static bool batadv_tp_handle_out_of_order(struct batadv_tp_receiver *tp_vars,
 		 */
 		list_add(&new->list, &un->list);
 		added = true;
+		tp_vars->common.unacked_count++;
 		break;
 	}
 
 	/* received packet with smallest seqno out of order; add it to front */
-	if (!added)
+	if (!added) {
 		list_add(&new->list, &tp_vars->common.unacked_list);
+		tp_vars->common.unacked_count++;
+	}
+
+	/* remove the last (biggest) unacked seqno when list is too large */
+	if (tp_vars->common.unacked_count > BATADV_TP_MAX_UNACKED) {
+		un = list_last_entry(&tp_vars->common.unacked_list,
+				     struct batadv_tp_unacked, list);
+		list_del(&un->list);
+		kfree(un);
+		tp_vars->common.unacked_count--;
+	}
 
 out:
 	spin_unlock_bh(&tp_vars->common.unacked_lock);
@@ -1488,6 +1507,7 @@ static void batadv_tp_ack_unordered(struct batadv_tp_receiver *tp_vars)
 
 		list_del(&un->list);
 		kfree(un);
+		tp_vars->common.unacked_count--;
 	}
 	spin_unlock_bh(&tp_vars->common.unacked_lock);
 }
@@ -1537,6 +1557,7 @@ batadv_tp_init_recv(struct batadv_priv *bat_priv,
 
 	spin_lock_init(&tp_vars->common.unacked_lock);
 	INIT_LIST_HEAD(&tp_vars->common.unacked_list);
+	tp_vars->common.unacked_count = 0;
 
 	kref_get(&tp_vars->common.refcount);
 	timer_setup(&tp_vars->common.timer, batadv_tp_receiver_shutdown, 0);
diff --git a/net/batman-adv/types.h b/net/batman-adv/types.h
index 5e81c93b8217d..9fa8e73ff6e59 100644
--- a/net/batman-adv/types.h
+++ b/net/batman-adv/types.h
@@ -1366,6 +1366,9 @@ struct batadv_tp_vars_common {
 	/** @unacked_lock: protect unacked_list */
 	spinlock_t unacked_lock;
 
+	/** @unacked_count: number of unacked entries */
+	size_t unacked_count;
+
 	/** @refcount: number of context where the object is used */
 	struct kref refcount;
 
-- 
2.47.3

