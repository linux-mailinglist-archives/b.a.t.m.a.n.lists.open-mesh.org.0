Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id KKWNFul5ImpcYAEAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 05 Jun 2026 09:25:29 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 0142B645F07
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 05 Jun 2026 09:25:29 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=simonwunderlich.de header.s=09092022 header.b=w1GDLF2t;
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 136.243.236.17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	dmarc=pass (policy=none) header.from=simonwunderlich.de;
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id B673181800
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 05 Jun 2026 09:25:28 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1780644328;
 b=df196JqfdsBDaiMSmcMtliHOjjTuLbSx5ua1D65ojHVImDHwxMll98ujI9BgLTyLva2ta
 vC3WxnRJ/A1WkBvvnkFI49/PLVHcW4r0fmvYggBxfHX64eKRO5R4mIF1Fx4BukJmqfIkO1Q
 iXlmvRijeIAl/pFdUTuwMdtxo8FGrEo=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1780644328; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=8JwYgpPGj+vXgN7oOZfclO+SwAYin1aQSzciPTokuxk=;
 b=AEArmRe9R28KK+xhiQXNCjFVjdy7+jRAMxY9JQ14ZqPVuw0DPpJykyuf7lDylFvFR/guW
 Jk4TJKEimxstCMUmi//q93vFQcm54N5gU84hyemcniT3kauKR8wwHsh0J6cmcrLTeHvuEbj
 eBWSV3nbN0FY/UCBh/EFXu6siOpZBQk=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=simonwunderlich.de;
 arc=pass;
 dmarc=pass header.from=simonwunderlich.de policy.dmarc=none
Received: from mail.simonwunderlich.de (mail.simonwunderlich.de
 [IPv6:2a01:4f8:c17:e8c0::1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id B904C8109D
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 05 Jun 2026 09:20:17 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1780644017;
	b=rw1qTB8ep/NM/lPUu8DAHGnYKBqo56gWENT32r7UGNZw94kcLX68SSXaPKEPADR9rCgfoe
	lQOoFUyV/iHHpf+I9RbqiGjo6a58rJ+eJ92kPFmlaSU7vKp9+hS6cgrOUD3yY9jpHjmaqf
	1N+14N3Vdt3Q69Nkq3ZLyhX5d3eVSmg=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=simonwunderlich.de header.s=09092022 header.b=w1GDLF2t;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates
 2a01:4f8:c17:e8c0::1 as permitted sender)
 smtp.mailfrom=sw@simonwunderlich.de;
	dmarc=pass (policy=none) header.from=simonwunderlich.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1780644017;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=8JwYgpPGj+vXgN7oOZfclO+SwAYin1aQSzciPTokuxk=;
	b=e58IkfhjMpv1s4Gho27YFXtNQACugDmktbPK3omMr4EULpxuNtOZNaPZCNZ5siQLYGWwTC
	s6k2Nl8vqSVH5ZVVEy+k6nx5md6HMmcEYzfB2mR5AQx5fNNfKDRz1iVgveK4V7t1nAc6CO
	8Lydv0WVlQbxKcIPAARrXGdUV9qo8Ms=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=simonwunderlich.de;
	s=09092022; t=1780644016;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=8JwYgpPGj+vXgN7oOZfclO+SwAYin1aQSzciPTokuxk=;
	b=w1GDLF2t3VGcrkDgrUcMHn2iQelb6ktbar4gRzbMv1qeJ3xZ87vMuWkwnEyNdgVmpqpHD0
	6IgHjKUg7eSYtyEO0Wc9mnbFAj+L413hsR2k5UyO145iJMc7O4DQzCWJrungqSNcp2Rxir
	eJKACQRtPpNFZsqxMHEZHt1Oxa6PKQgvPe5DtKoJKWby8/AINHyqmRlhh21HFbDaJk9+oz
	zkYbjyszIQYiosW+8JUY4ALUC42B5jtJ6j8nKn5Lpjy8chE33phzHxrHfh8mclGdfbb1CR
	2aDcevlC9rKC0+CgpW5mk8NMGmbwEyPLrwWidXHC7nJL6CtxatPzvsTntEcrAA==
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
Subject: [PATCH net-next 07/11] batman-adv: tp_meter: update stale kernel-doc
 after refactoring
Date: Fri,  5 Jun 2026 09:20:01 +0200
Message-ID: <20260605072005.490368-8-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260605072005.490368-1-sw@simonwunderlich.de>
References: <20260605072005.490368-1-sw@simonwunderlich.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Message-ID-Hash: CHXKRO3TBCDT532IXSM5KECRJ7YEZBNJ
X-Message-ID-Hash: CHXKRO3TBCDT532IXSM5KECRJ7YEZBNJ
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/CHXKRO3TBCDT532IXSM5KECRJ7YEZBNJ/>
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
	FORGED_RECIPIENTS(0.00)[m:netdev@vger.kernel.org,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:horms@kernel.org,m:b.a.t.m.a.n@lists.open-mesh.org,m:sven@narfation.org,m:sw@simonwunderlich.de,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[lists,b.a.t.m.a.n=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[sw@simonwunderlich.de,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	DKIM_TRACE(0.00)[simonwunderlich.de:+];
	ASN(0.00)[asn:24940, ipnet:136.243.0.0/16, country:DE];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DBL_BLOCKED_OPENRESOLVER(0.00)[diktynna.open-mesh.org:helo,diktynna.open-mesh.org:rdns,lists.open-mesh.org:from_smtp,narfation.org:email,simonwunderlich.de:mid,simonwunderlich.de:dkim,simonwunderlich.de:from_mime,simonwunderlich.de:email];
	FROM_NEQ_ENVFROM(0.00)[sw@simonwunderlich.de,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[b.a.t.m.a.n];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	R_SPF_NA(0.00)[no SPF record]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0142B645F07

From: Sven Eckelmann <sven@narfation.org>

The tp_meter codebase was recently refactored:

* throughput meter sender and receiver variables were split into
  two different structures
* the congestion control variables were extracted in a separate structure

But the kernel-doc was not updated everywhere to reflect these changes.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
---
 net/batman-adv/tp_meter.c | 16 ++++++++--------
 net/batman-adv/types.h    | 14 ++++++++------
 2 files changed, 16 insertions(+), 14 deletions(-)

diff --git a/net/batman-adv/tp_meter.c b/net/batman-adv/tp_meter.c
index a404d70e053e2..7e98cbfbbb70d 100644
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
index 5eb0371def83a..a7fa0d9e09288 100644
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

