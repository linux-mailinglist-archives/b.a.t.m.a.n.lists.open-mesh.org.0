Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id q257OrHwKmr3zgMAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 11 Jun 2026 19:30:25 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DAA4673FD9
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 11 Jun 2026 19:30:25 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=narfation.org header.s=20121 header.b="IA2h+JG/";
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 136.243.236.17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	dmarc=pass (policy=none) header.from=narfation.org;
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 6AB5284428
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 11 Jun 2026 19:30:25 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1781199025;
 b=hIsno8pFYU3tBxOvFHqMtmHgyfxNwcM2V2xdrh99ieuwVr+kWTNr43fdLXrhTxuHzqHaB
 Ry6aaiT9EJ+GLhNj38shVnwgZOc51tzydIksg3bsDEYIQVuKd+QBhzt8Ejy90a7EcIbTYuI
 H7gsG9rJlB2tkh9MyXc4FNAgOlD9Yyc=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1781199025; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=OLNt2jpFJO9D9r72s49OtISO8dIu8vqPX6bLyGbD/J8=;
 b=g+O3cV65jjSU8xgDpeXoW/M+a+C7NGoJZcOw6C01jU631ZjOykZN6+yyziO2tDHXmEwv2
 uYsill6ZefIgVaYc7ET1Hqje8r9D7+LDuZ1mi2uz/hj2zMg3aTYbF7x8BzkR6C87YXiyohA
 /xQQ4QM05hUiYsNbmK9hFZRLUVKtxdg=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id 5519F83F28
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 11 Jun 2026 19:24:48 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1781198688;
	b=jFPg+puOuqdkn13I+iQAydgaNfybAZYvAZAQFvDKgdd2f3PbyU5lU/inRHlfIuj/GpVlqf
	3O1kxFbrQ7CVskHFH+Ap6q7p1B7wPMQ+SiNeN6kvi5HGjYs1x9V0fkeuBRal/HUfMXJ6bQ
	ez/o6gXo5zXd1ISMjEA0Fjrr5LabPDk=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1781198688;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=OLNt2jpFJO9D9r72s49OtISO8dIu8vqPX6bLyGbD/J8=;
	b=rFofQfWLMNd2Z0wMSsMFFjYczMQYY+ppoD26ik9HWwOtSa4EllzdTarLcraS/0997/vkQP
	TImStTEWC5GJgp7I4f0cGpZHpk5sNVMnfGEqEAisRnkVIC7mMzEH9+jZpMaJtPkYU4q1eA
	+qd7eDiZbPz2j4ZhmR7uwgPvVuml4PU=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b="IA2h+JG/";
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org
Received: by dvalin.narfation.org (Postfix) id 14AA91FD51;
	Thu, 11 Jun 2026 17:24:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1781198688;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=OLNt2jpFJO9D9r72s49OtISO8dIu8vqPX6bLyGbD/J8=;
	b=IA2h+JG/CT3Ty7HvyBVCqEBI/4JgHmdoTnj68zl93UTMkUDlI4G36SdaHwdFink22xKTsP
	IoLrTMiQHBqdkdY/JdBwZLZD8/MBUeM3UHkVVxmZiMV3JBtSSscZnc4JzdHZ5kiGW5QO20
	e9fj8skbF8e4hIgAaK0nw7PwM8mcsvg=
From: Sven Eckelmann <sven@narfation.org>
Date: Thu, 11 Jun 2026 19:24:12 +0200
Subject: [PATCH batadv v2 7/9] batman-adv: tp_meter: keep unacked list for
 receivers
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260611-tp-unacked-list-v2-7-47389466c5c1@narfation.org>
References: <20260611-tp-unacked-list-v2-0-47389466c5c1@narfation.org>
In-Reply-To: <20260611-tp-unacked-list-v2-0-47389466c5c1@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=11470; i=sven@narfation.org;
 h=from:subject:message-id; bh=AGfRBhuVE+k13mDhPiuL0mRvTRmFk+eEg7I/fNHUjpg=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDFla763rL/AoOOik75SdHXvffePb92udXAI2P+M8/z6ha
 KKJ2DqXjlIWBjEuBlkxRZY9V/LPb2Z/K/952sejMHNYmUCGMHBxCsBELpYyMjxm6Tx01SX54voA
 Xsu/fJaJC5nDVy46+yrwu8rlpidxT1kY/pdUqyt/t6ntt+j/rHFb07ZiaaZUV8nhSLkFp9VLAvn
 9WQE=
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: ZL7ZMRF2A62OTBQ43UICBSPBQ6GSC7BK
X-Message-ID-Hash: ZL7ZMRF2A62OTBQ43UICBSPBQ6GSC7BK
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/ZL7ZMRF2A62OTBQ43UICBSPBQ6GSC7BK/>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.open-mesh.org:from_smtp,diktynna.open-mesh.org:rdns,diktynna.open-mesh.org:helo,narfation.org:dkim,narfation.org:email,narfation.org:mid,narfation.org:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8DAA4673FD9

There is no need to share the unacked list between sender and receivers.
Only receivers will ever write to and read from it. The initialization in
batadv_tp_start() was therefore never needed. After its removal, it is
enough to just store it in struct batadv_tp_receiver.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 net/batman-adv/tp_meter.c | 110 +++++++++++++++++++++++++---------------------
 net/batman-adv/types.h    |  20 ++++-----
 2 files changed, 71 insertions(+), 59 deletions(-)

diff --git a/net/batman-adv/tp_meter.c b/net/batman-adv/tp_meter.c
index 5cc719c8..f18ce360 100644
--- a/net/batman-adv/tp_meter.c
+++ b/net/batman-adv/tp_meter.c
@@ -358,28 +358,16 @@ batadv_tp_list_find_sender_session(struct batadv_priv *bat_priv, const u8 *dst,
 }
 
 /**
- * batadv_tp_vars_common_release() - release batadv_tp_vars_common from lists
+ * batadv_tp_sender_release() - release batadv_tp_sender
  *  and queue for free after rcu grace period
- * @ref: kref pointer of the batadv_tp_vars_common
+ * @ref: kref pointer of the batadv_tp_sender
  */
-static void batadv_tp_vars_common_release(struct kref *ref)
+static void batadv_tp_sender_release(struct kref *ref)
 {
-	struct batadv_tp_vars_common *tp_vars;
-	struct batadv_tp_unacked *un, *safe;
+	struct batadv_tp_sender *tp_vars;
 
-	tp_vars = container_of(ref, struct batadv_tp_vars_common, refcount);
-
-	/* lock should not be needed because this object is now out of any
-	 * context!
-	 */
-	spin_lock_bh(&tp_vars->unacked_lock);
-	list_for_each_entry_safe(un, safe, &tp_vars->unacked_list, list) {
-		list_del(&un->list);
-		kfree(un);
-	}
-	spin_unlock_bh(&tp_vars->unacked_lock);
-
-	kfree_rcu(tp_vars, rcu);
+	tp_vars = container_of(ref, struct batadv_tp_sender, common.refcount);
+	kfree_rcu(tp_vars, common.rcu);
 }
 
 /**
@@ -392,7 +380,7 @@ static void batadv_tp_sender_put(struct batadv_tp_sender *tp_vars)
 	if (!tp_vars)
 		return;
 
-	kref_put(&tp_vars->common.refcount, batadv_tp_vars_common_release);
+	kref_put(&tp_vars->common.refcount, batadv_tp_sender_release);
 }
 
 /**
@@ -1145,9 +1133,6 @@ void batadv_tp_start(struct batadv_priv *bat_priv, const u8 *dst,
 	init_waitqueue_head(&tp_vars->more_bytes);
 	init_completion(&tp_vars->finished);
 
-	spin_lock_init(&tp_vars->common.unacked_lock);
-	INIT_LIST_HEAD(&tp_vars->common.unacked_list);
-
 	spin_lock_init(&tp_vars->cc_lock);
 
 	tp_vars->prerandom_offset = 0;
@@ -1251,6 +1236,33 @@ batadv_tp_list_find_receiver_session(struct batadv_priv *bat_priv, const u8 *dst
 	return tp_vars;
 }
 
+/**
+ * batadv_tp_receiver_release() - release batadv_tp_receiver
+ *  and queue for free after rcu grace period
+ * @ref: kref pointer of the batadv_tp_receiver
+ */
+static void batadv_tp_receiver_release(struct kref *ref)
+{
+	struct batadv_tp_receiver *tp_vars;
+	struct batadv_tp_unacked *safe;
+	struct batadv_tp_unacked *un;
+
+	tp_vars = container_of(ref, struct batadv_tp_receiver, common.refcount);
+
+	/* lock should not be needed because this object is now out of any
+	 * context!
+	 */
+	spin_lock_bh(&tp_vars->unacked_lock);
+	list_for_each_entry_safe(un, safe, &tp_vars->unacked_list, list) {
+		list_del(&un->list);
+		kfree(un);
+		tp_vars->unacked_count--;
+	}
+	spin_unlock_bh(&tp_vars->unacked_lock);
+
+	kfree_rcu(tp_vars, common.rcu);
+}
+
 /**
  * batadv_tp_receiver_put() - decrement the batadv_tp_receiver
  *  refcounter and possibly release it
@@ -1261,7 +1273,7 @@ static void batadv_tp_receiver_put(struct batadv_tp_receiver *tp_vars)
 	if (!tp_vars)
 		return;
 
-	kref_put(&tp_vars->common.refcount, batadv_tp_vars_common_release);
+	kref_put(&tp_vars->common.refcount, batadv_tp_receiver_release);
 }
 
 /**
@@ -1304,13 +1316,13 @@ static void batadv_tp_receiver_shutdown(struct timer_list *t)
 	if (batadv_tp_list_detach(&tp_vars->common))
 		batadv_tp_receiver_put(tp_vars);
 
-	spin_lock_bh(&tp_vars->common.unacked_lock);
-	list_for_each_entry_safe(un, safe, &tp_vars->common.unacked_list, list) {
+	spin_lock_bh(&tp_vars->unacked_lock);
+	list_for_each_entry_safe(un, safe, &tp_vars->unacked_list, list) {
 		list_del(&un->list);
 		kfree(un);
-		tp_vars->common.unacked_count--;
+		tp_vars->unacked_count--;
 	}
-	spin_unlock_bh(&tp_vars->common.unacked_lock);
+	spin_unlock_bh(&tp_vars->unacked_lock);
 
 	/* drop reference of timer */
 	if (WARN_ON(atomic_xchg(&tp_vars->receiving, 0) != 1))
@@ -1403,7 +1415,7 @@ static int batadv_tp_send_ack(struct batadv_priv *bat_priv, const u8 *dst,
  */
 static bool batadv_tp_handle_out_of_order(struct batadv_tp_receiver *tp_vars,
 					  u32 seqno, u32 payload_len)
-	__must_hold(&tp_vars->common.unacked_lock)
+	__must_hold(&tp_vars->unacked_lock)
 {
 	struct batadv_tp_unacked *un, *new;
 	struct batadv_tp_unacked *safe;
@@ -1417,9 +1429,9 @@ static bool batadv_tp_handle_out_of_order(struct batadv_tp_receiver *tp_vars,
 	new->len = payload_len;
 
 	/* if the list is empty immediately attach this new object */
-	if (list_empty(&tp_vars->common.unacked_list)) {
-		list_add(&new->list, &tp_vars->common.unacked_list);
-		tp_vars->common.unacked_count++;
+	if (list_empty(&tp_vars->unacked_list)) {
+		list_add(&new->list, &tp_vars->unacked_list);
+		tp_vars->unacked_count++;
 		return true;
 	}
 
@@ -1430,7 +1442,7 @@ static bool batadv_tp_handle_out_of_order(struct batadv_tp_receiver *tp_vars,
 	 * the last received packet (the one being processed now) has a bigger
 	 * seqno than all the others already stored.
 	 */
-	list_for_each_entry_reverse(un, &tp_vars->common.unacked_list, list) {
+	list_for_each_entry_reverse(un, &tp_vars->unacked_list, list) {
 		/* look for the right position - an un which is smaller */
 		if (batadv_seq_before(new->seqno, un->seqno))
 			continue;
@@ -1476,19 +1488,19 @@ static bool batadv_tp_handle_out_of_order(struct batadv_tp_receiver *tp_vars,
 		 */
 		list_add(&new->list, &un->list);
 		added = true;
-		tp_vars->common.unacked_count++;
+		tp_vars->unacked_count++;
 		break;
 	}
 
 	/* received packet with smallest seqno out of order; add it to front */
 	if (!added) {
-		list_add(&new->list, &tp_vars->common.unacked_list);
-		tp_vars->common.unacked_count++;
+		list_add(&new->list, &tp_vars->unacked_list);
+		tp_vars->unacked_count++;
 	}
 
 	/* check if new filled the gap to the next list entries */
 	un = new;
-	list_for_each_entry_safe_continue(un, safe, &tp_vars->common.unacked_list, list) {
+	list_for_each_entry_safe_continue(un, safe, &tp_vars->unacked_list, list) {
 		if (batadv_seq_before(new->seqno + new->len, un->seqno))
 			break;
 
@@ -1499,16 +1511,16 @@ static bool batadv_tp_handle_out_of_order(struct batadv_tp_receiver *tp_vars,
 
 		list_del(&un->list);
 		kfree(un);
-		tp_vars->common.unacked_count--;
+		tp_vars->unacked_count--;
 	}
 
 	/* remove the last (biggest) unacked seqno when list is too large */
-	if (tp_vars->common.unacked_count > BATADV_TP_MAX_UNACKED) {
-		un = list_last_entry(&tp_vars->common.unacked_list,
+	if (tp_vars->unacked_count > BATADV_TP_MAX_UNACKED) {
+		un = list_last_entry(&tp_vars->unacked_list,
 				     struct batadv_tp_unacked, list);
 		list_del(&un->list);
 		kfree(un);
-		tp_vars->common.unacked_count--;
+		tp_vars->unacked_count--;
 	}
 
 	return true;
@@ -1520,7 +1532,7 @@ static bool batadv_tp_handle_out_of_order(struct batadv_tp_receiver *tp_vars,
  * @tp_vars: the private data of the current TP meter session
  */
 static void batadv_tp_ack_unordered(struct batadv_tp_receiver *tp_vars)
-	__must_hold(&tp_vars->common.unacked_lock)
+	__must_hold(&tp_vars->unacked_lock)
 {
 	struct batadv_tp_unacked *un, *safe;
 	u32 to_ack;
@@ -1528,7 +1540,7 @@ static void batadv_tp_ack_unordered(struct batadv_tp_receiver *tp_vars)
 	/* go through the unacked packet list and possibly ACK them as
 	 * well
 	 */
-	list_for_each_entry_safe(un, safe, &tp_vars->common.unacked_list, list) {
+	list_for_each_entry_safe(un, safe, &tp_vars->unacked_list, list) {
 		/* the list is ordered, therefore it is possible to stop as soon
 		 * there is a gap between the last acked seqno and the seqno of
 		 * the packet under inspection
@@ -1543,7 +1555,7 @@ static void batadv_tp_ack_unordered(struct batadv_tp_receiver *tp_vars)
 
 		list_del(&un->list);
 		kfree(un);
-		tp_vars->common.unacked_count--;
+		tp_vars->unacked_count--;
 	}
 }
 
@@ -1590,9 +1602,9 @@ batadv_tp_init_recv(struct batadv_priv *bat_priv,
 	tp_vars->common.bat_priv = bat_priv;
 	kref_init(&tp_vars->common.refcount);
 
-	spin_lock_init(&tp_vars->common.unacked_lock);
-	INIT_LIST_HEAD(&tp_vars->common.unacked_list);
-	tp_vars->common.unacked_count = 0;
+	spin_lock_init(&tp_vars->unacked_lock);
+	INIT_LIST_HEAD(&tp_vars->unacked_list);
+	tp_vars->unacked_count = 0;
 
 	kref_get(&tp_vars->common.refcount);
 	timer_setup(&tp_vars->common.timer, batadv_tp_receiver_shutdown, 0);
@@ -1652,7 +1664,7 @@ static void batadv_tp_recv_msg(struct batadv_priv *bat_priv,
 		WRITE_ONCE(tp_vars->last_recv_time, jiffies);
 	}
 
-	spin_lock_bh(&tp_vars->common.unacked_lock);
+	spin_lock_bh(&tp_vars->unacked_lock);
 
 	/* if the packet is a duplicate, it may be the case that an ACK has been
 	 * lost. Resend the ACK
@@ -1668,7 +1680,7 @@ static void batadv_tp_recv_msg(struct batadv_priv *bat_priv,
 		 * not been enqueued correctly
 		 */
 		if (!batadv_tp_handle_out_of_order(tp_vars, seqno, payload_len)) {
-			spin_unlock_bh(&tp_vars->common.unacked_lock);
+			spin_unlock_bh(&tp_vars->unacked_lock);
 			goto out;
 		}
 
@@ -1684,7 +1696,7 @@ static void batadv_tp_recv_msg(struct batadv_priv *bat_priv,
 
 send_ack:
 	to_ack = tp_vars->last_recv;
-	spin_unlock_bh(&tp_vars->common.unacked_lock);
+	spin_unlock_bh(&tp_vars->unacked_lock);
 
 	/* send the ACK. If the received packet was out of order, the ACK that
 	 * is going to be sent is a duplicate (the sender will count them and
diff --git a/net/batman-adv/types.h b/net/batman-adv/types.h
index c5bc5ad6..e03f8da1 100644
--- a/net/batman-adv/types.h
+++ b/net/batman-adv/types.h
@@ -1331,7 +1331,7 @@ struct batadv_tp_unacked {
 	/** @len: length of the packet */
 	u32 len;
 
-	/** @list: list node for &batadv_tp_vars_common.unacked_list */
+	/** @list: list node for &batadv_tp_receiver.unacked_list */
 	struct list_head list;
 };
 
@@ -1354,15 +1354,6 @@ struct batadv_tp_vars_common {
 	/** @session: TP session identifier */
 	u8 session[2];
 
-	/** @unacked_list: list of unacked packets (meta-info only) */
-	struct list_head unacked_list;
-
-	/** @unacked_lock: protect unacked_list + &batadv_tp_receiver.last_recv */
-	spinlock_t unacked_lock;
-
-	/** @unacked_count: number of unacked entries */
-	size_t unacked_count;
-
 	/** @refcount: number of context where the object is used */
 	struct kref refcount;
 
@@ -1476,6 +1467,15 @@ struct batadv_tp_receiver {
 
 	/** @last_recv_time: time (jiffies) a msg was received */
 	unsigned long last_recv_time;
+
+	/** @unacked_list: list of unacked packets (meta-info only) */
+	struct list_head unacked_list;
+
+	/** @unacked_lock: protect unacked_list + &batadv_tp_receiver.last_recv */
+	spinlock_t unacked_lock;
+
+	/** @unacked_count: number of unacked entries */
+	size_t unacked_count;
 };
 
 /**

-- 
2.47.3

