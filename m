Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id qdbHA6/bIWoKPwEAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 04 Jun 2026 22:10:23 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CF856431C6
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 04 Jun 2026 22:10:22 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=narfation.org header.s=20121 header.b=uDfXNMfc;
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 2a01:4f8:241:fc1:136:243:236:17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	dmarc=pass (policy=none) header.from=narfation.org;
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 8346E8539E
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 04 Jun 2026 22:10:22 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1780603822;
 b=gPVMoKKlggidbCK41H1esM4ie2mzCwpJgAsiVtHiXOy8tp9M61AMMKkcQZ+dgD0m+s8Kc
 VW8Qy3017LzMHZ0V2wZMBIdJLbLsesifjeHyjTpHkBc6rj8Hio0s/u+cDzt1BAJ3bNYZxBB
 YBzmmtCJyV/+4yyLae9RlYxgv0s7puk=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1780603822; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=+25m9Y2yy7hPOQ2q1MOMoLi3vOCVt3R2B0SYZoJEDic=;
 b=AbxO8e67p0qHaSQFJlqxhCYrkUgT8lg5XLITJMWInM3aVkYdCSaLMAqkO4qKB/QTwJmCM
 rmV6M0iwr5cHnOA/y4ilPlq0wxVPRnemgd0ZsdyjFZ2CKiuk/Fj7g3IG/DsMTT4XMJk/eSa
 JrvZvKX8PphRcEXZj7KREEFxwnhJAT4=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org
 [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id 2386E8212D
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 04 Jun 2026 22:08:51 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1780603736;
	b=rIEcNrNGYGMkuMzAST7GJZW+bpFxsDBWWsi+VC4JoKpcz/9Z0t2csHkf9qm9eUtKoWmoUe
	iPczk5vjtMiWW5V/6WZiIbyCzzn53uMKstm+vaskJOzZqM/osN1fXFWPnMskiwSY56f5vi
	ywrXqjP51K6EJheOO4gFMxbe3wnORlQ=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=uDfXNMfc;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1780603736;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=+25m9Y2yy7hPOQ2q1MOMoLi3vOCVt3R2B0SYZoJEDic=;
	b=0ekzOc65I587tWsgdufwXpW1KiODVOainOt6Ar8s8l4gMT9WSbQBHfM3f7J+YIFjfEUy5M
	tAgQMRPPuntSqReTDF08DmXUao0ZW7pxi8ca7KLQ0q3Oy2DHTVYTzPw2FiZJUbgNveNwmZ
	mgPVJFZTsWUuVyIArlM0NYES//rvTXg=
Received: by dvalin.narfation.org (Postfix) id AB47420263;
	Thu, 04 Jun 2026 20:08:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1780603729;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=+25m9Y2yy7hPOQ2q1MOMoLi3vOCVt3R2B0SYZoJEDic=;
	b=uDfXNMfcN93XDrNCJJFO1B8uOTFB4fgWa9yeXh4n4AUbwNApY6EGpf1IDxH9YPMdKi63Qp
	ASPTZKR5wCxt91k9j7kLNZJNbXfpBXDbLwKT2ksJcZAFlpg+f8HhXzRBxsWmnMz4bivZuo
	a5jgyI5vqIiuVz+NJanP7ZxkOa1UY6U=
From: Sven Eckelmann <sven@narfation.org>
Date: Thu, 04 Jun 2026 22:08:43 +0200
Subject: [PATCH batadv 1/5] batman-adv: tp_meter: update stale kernel-doc
 after refactoring
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260604-kernel-doc-cleanup-v1-1-c4c4d4a77c31@narfation.org>
References: <20260604-kernel-doc-cleanup-v1-0-c4c4d4a77c31@narfation.org>
In-Reply-To: <20260604-kernel-doc-cleanup-v1-0-c4c4d4a77c31@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=5576; i=sven@narfation.org;
 h=from:subject:message-id; bh=4NKiN8MrQ0pys+ZpWKLk57KuLd2elV+6DZGGpZEpC/w=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDFmKt72VSxLyDBlT+DlZzf/lFB2XyHhZzloTYVzzQsdQa
 6Jc6sWOUhYGMS4GWTFFlj1X8s9vZn8r/3nax6Mwc1iZQIYwcHEKwER4Yhn+GTztqnpX7jdt6xrX
 L2+fy8xYUZGe/WnivTJP07zPVX91tjEyPAlSSWi59a9p3vr+6+rHP936wJ57WPxS/uZ/n1bPFd+
 ymAUA
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: OPFS7DD4JFRQX5EZVSGREFYV45MEL4VH
X-Message-ID-Hash: OPFS7DD4JFRQX5EZVSGREFYV45MEL4VH
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/OPFS7DD4JFRQX5EZVSGREFYV45MEL4VH/>
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
	ASN(0.00)[asn:24940, ipnet:2a01:4f8::/32, country:DE];
	TAGGED_RCPT(0.00)[b.a.t.m.a.n];
	DBL_BLOCKED_OPENRESOLVER(0.00)[diktynna.open-mesh.org:helo,diktynna.open-mesh.org:rdns,lists.open-mesh.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9CF856431C6

The tp_meter codebase was recently refactored:

* throughput meter sender and receiver variables were split into
  two different structures
* the congestion control variables were extracted in a separate structure

But the kernel-doc was not updated everywhere to reflect these changes.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 net/batman-adv/tp_meter.c | 16 ++++++++--------
 net/batman-adv/types.h    | 14 ++++++++------
 2 files changed, 16 insertions(+), 14 deletions(-)

diff --git a/net/batman-adv/tp_meter.c b/net/batman-adv/tp_meter.c
index 978e32d9..3ce9af39 100644
--- a/net/batman-adv/tp_meter.c
+++ b/net/batman-adv/tp_meter.c
@@ -289,7 +289,7 @@ batadv_tp_list_find_sender(struct batadv_priv *bat_priv, const u8 *dst)
  * @bat_priv: the bat priv with all the mesh interface information
  * @dst: the other endpoint MAC address to look for
  *
- * Return: if matching session with @dst was found
+ * Return: true if a matching session with @dst was found, false otherwise
  */
 static bool batadv_tp_list_active(struct batadv_priv *bat_priv, const u8 *dst)
 	__must_hold(&bat_priv->tp_list_lock)
@@ -355,7 +355,7 @@ batadv_tp_list_find_sender_session(struct batadv_priv *bat_priv, const u8 *dst,
 /**
  * batadv_tp_vars_common_release() - release batadv_tp_vars_common from lists
  *  and queue for free after rcu grace period
- * @ref: kref pointer of the batadv_tp_vars
+ * @ref: kref pointer of the batadv_tp_vars_common
  */
 static void batadv_tp_vars_common_release(struct kref *ref)
 {
@@ -391,7 +391,7 @@ static void batadv_tp_sender_put(struct batadv_tp_sender *tp_vars)
 }
 
 /**
- * batadv_tp_list_detach() - remove tp receiver session from mesh session list once
+ * batadv_tp_list_detach() - remove tp session from mesh session list once
  * @tp_vars: the private data of the current TP meter session
  *
  * Return: whether tp_vars was detached from list and reference must be freed
@@ -509,7 +509,7 @@ static void batadv_tp_sender_finish(struct work_struct *work)
  * batadv_tp_reset_sender_timer() - reschedule the sender timer
  * @tp_vars: the private TP meter data for this session
  *
- * Reschedule the timer using tp_vars->rto as delay
+ * Reschedule the timer using tp_vars->cc.rto as delay
  */
 static void batadv_tp_reset_sender_timer(struct batadv_tp_sender *tp_vars)
 {
@@ -621,9 +621,9 @@ static void batadv_tp_fill_prerandom(struct batadv_tp_sender *tp_vars,
  *
  * Create and send a single TP Meter message.
  *
- * Return: 0 on success, BATADV_TP_REASON_DST_UNREACHABLE if the destination is
- * not reachable, BATADV_TP_REASON_MEMORY_ERROR if the packet couldn't be
- * allocated
+ * Return: 0 on success, BATADV_TP_REASON_MEMORY_ERROR if the packet couldn't
+ * be allocated, BATADV_TP_REASON_CANT_SEND if the packet could not be
+ * transmitted
  */
 static int batadv_tp_send_msg(struct batadv_tp_sender *tp_vars, const u8 *src,
 			      struct batadv_orig_node *orig_node,
@@ -913,7 +913,7 @@ static int batadv_tp_wait_available(struct batadv_tp_sender *tp_vars, size_t ple
  * batadv_tp_send() - main sending thread of a tp meter session
  * @arg: address of the related tp_vars
  *
- * Return: nothing, this function never returns
+ * Return: 0
  */
 static int batadv_tp_send(void *arg)
 {
diff --git a/net/batman-adv/types.h b/net/batman-adv/types.h
index 5eb0371d..a7fa0d9e 100644
--- a/net/batman-adv/types.h
+++ b/net/batman-adv/types.h
@@ -1331,7 +1331,7 @@ struct batadv_tp_unacked {
 	/** @len: length of the packet */
 	u16 len;
 
-	/** @list: list node for &batadv_tp_vars.unacked_list */
+	/** @list: list node for &batadv_tp_vars_common.unacked_list */
 	struct list_head list;
 };
 
@@ -1367,7 +1367,9 @@ struct batadv_tp_vars_common {
 	struct rcu_head rcu;
 };
 
-/** struct batadv_tp_sender_cc - congestion control variables */
+/**
+ * struct batadv_tp_sender_cc - congestion control variables
+ */
 struct batadv_tp_sender_cc {
 	/** @fast_recovery: true if in Fast Recovery mode */
 	bool fast_recovery:1;
@@ -1410,7 +1412,7 @@ struct batadv_tp_sender_cc {
  * struct batadv_tp_sender - sender tp meter private variables per session
  */
 struct batadv_tp_sender {
-	/** @common: common batadv_tp_vars (best be first member) */
+	/** @common: common batadv_tp_vars_common (must be first member) */
 	struct batadv_tp_vars_common common;
 
 	/** @start_time: start time in jiffies */
@@ -1437,7 +1439,7 @@ struct batadv_tp_sender {
 	/** @cc: congestion control variables */
 	struct batadv_tp_sender_cc cc;
 
-	/** @cc_lock: lock do protect @cc */
+	/** @cc_lock: lock to protect @cc */
 	spinlock_t cc_lock;
 
 	/** @tot_sent: amount of data sent/ACKed so far */
@@ -1460,7 +1462,7 @@ struct batadv_tp_sender {
  * struct batadv_tp_receiver - receiver tp meter private variables per session
  */
 struct batadv_tp_receiver {
-	/** @common: common batadv_tp_vars (best be first member) */
+	/** @common: common batadv_tp_vars_common (must be first member) */
 	struct batadv_tp_vars_common common;
 
 	/** @receiving: receiving binary semaphore: 1 if receiving, 0 is not */
@@ -1662,7 +1664,7 @@ struct batadv_priv {
 	/** @forw_bcast_list_lock: lock protecting forw_bcast_list */
 	spinlock_t forw_bcast_list_lock;
 
-	/** @tp_list_lock: spinlock protecting @tp_list */
+	/** @tp_list_lock: spinlock protecting @tp_sender_list + @tp_receiver_list */
 	spinlock_t tp_list_lock;
 
 	/** @tp_num: number of currently active tp sessions */

-- 
2.47.3

