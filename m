Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id TaVRNRR6ImprYAEAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 05 Jun 2026 09:26:12 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EF6A645F38
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 05 Jun 2026 09:26:12 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=simonwunderlich.de header.s=09092022 header.b=RaHn+Uxw;
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 2a01:4f8:241:fc1:136:243:236:17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	dmarc=pass (policy=none) header.from=simonwunderlich.de;
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 5C4D584033
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 05 Jun 2026 09:26:12 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1780644372;
 b=b17xrJ+oR45cPakTAjOHWjnBMipHDgdLdzobSeIdtg9Fe5pDjQ+wLXhk7xCJG+yuLK3tA
 +iOMWtmBVMnf0+L5dn9opFPxprJqQeuBJPqqKlphU7zySF34O74fYs3g4Y8jsx47CjI+Rjy
 9Z9cQWfknXZJ2sgEBOlMMUc4EqYWFEM=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1780644372; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=dwwDQk/o0iE4YuAUidfs7nDM7wYXtXm46RbYWVM/OnI=;
 b=FN7xSnKYRRf2nsVr00A863FDjf00CyyYk9C9snjzVvJGctEuiHiZHh1RHDlGLqFJOC9E7
 uRwvKwr4qbz47Nwd79sQhmHtY0w3zgk3FTaCBv0fUExn67z+NTE/O6ZkrgRXm5WtL/oZslD
 PNp3Oy9W6btM2njU5o/CaQKy3ujDhks=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=simonwunderlich.de;
 arc=pass;
 dmarc=pass header.from=simonwunderlich.de policy.dmarc=none
Received: from mail.simonwunderlich.de (mail.simonwunderlich.de [23.88.38.48])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id CBE3781115
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 05 Jun 2026 09:20:17 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1780644017;
	b=nEO57l1bHQbUPMwiKa8ULMFvvvEU/iTfkAmemtHzqgZFGVnfbbqIlWH6CPxKDmdj4IEgbA
	Yb3ze0DsSuD6fMwKS1g6XHkPmlp4Z8znh5CzVoVu45yZ5R7jv6+cpgYQUoQlkyi4Hpch6f
	0XeV/VRsGGltX6C3ZFOb4j3ycbISFGg=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=simonwunderlich.de header.s=09092022 header.b=RaHn+Uxw;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates
 23.88.38.48 as permitted sender) smtp.mailfrom=sw@simonwunderlich.de;
	dmarc=pass (policy=none) header.from=simonwunderlich.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1780644017;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=dwwDQk/o0iE4YuAUidfs7nDM7wYXtXm46RbYWVM/OnI=;
	b=Vxder4s4vSzlE8sOddyBy52rQdanH+7o2qqYC1/Z5RGZFsgGmZ9yXibX0S+hTQyLTA1gP2
	ofGoAkcH06PwE26ywO3U5btO0etMqHcSn+tjrWAcGxYl1lJNau74512DA9Yia9YJIdadw9
	RZc5FR7SuuRb5bcRnGfzN2u8Ff+ubno=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=simonwunderlich.de;
	s=09092022; t=1780644017;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=dwwDQk/o0iE4YuAUidfs7nDM7wYXtXm46RbYWVM/OnI=;
	b=RaHn+UxwTY05k7h3JSOpPEmjfA+ZKR3+yqksxOWtYbOPI7qDCsIfBJiJkGr3LqyhzTeDZo
	/nrd9Kj/HblE+KNko565FI5V9Ls+2YQZcJGtGV6XZg+BYSaYPl3KICfAC3mp371PXrcFrz
	jVMi7FYCc9f0K2KVYCp00wZRpkUAOjmsgPsSTEi9hIPW2M0FBz0nZprJ/M1N8kPZfqW3kg
	PZQqj7ea6Etc//FyR8xgTC+ODBrcvQjNflgsmTyqGeSb8tHmhmGH51JcqgBD/wVNXKmJfb
	pe+0rNs7GWtialp/I/GlgIoZim4UJ7gPadIN41qyHOa1sFksRuT9kGvLBc36Lw==
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
Subject: [PATCH net-next 08/11] batman-adv: bla: update stale kernel-doc
Date: Fri,  5 Jun 2026 09:20:02 +0200
Message-ID: <20260605072005.490368-9-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260605072005.490368-1-sw@simonwunderlich.de>
References: <20260605072005.490368-1-sw@simonwunderlich.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Message-ID-Hash: BMLMQKAOM2M5RPQSPZRZS2YSZSROMPDR
X-Message-ID-Hash: BMLMQKAOM2M5RPQSPZRZS2YSZSROMPDR
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/BMLMQKAOM2M5RPQSPZRZS2YSZSROMPDR/>
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
	ASN(0.00)[asn:24940, ipnet:2a01:4f8::/32, country:DE];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.open-mesh.org:from_smtp,narfation.org:email,diktynna.open-mesh.org:helo,diktynna.open-mesh.org:rdns,simonwunderlich.de:mid,simonwunderlich.de:dkim,simonwunderlich.de:from_mime,simonwunderlich.de:email];
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
X-Rspamd-Queue-Id: 7EF6A645F38

From: Sven Eckelmann <sven@narfation.org>

The bridge-loop-avoidance code was changed recently to avoid inconsistent
state and race condition problems. The kernel-doc addded in these commits
(and related code) has various minor deficits which are now resolved.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
---
 net/batman-adv/bridge_loop_avoidance.c |  2 +-
 net/batman-adv/bridge_loop_avoidance.h |  2 +-
 net/batman-adv/types.h                 | 10 +++++++---
 3 files changed, 9 insertions(+), 5 deletions(-)

diff --git a/net/batman-adv/bridge_loop_avoidance.c b/net/batman-adv/bridge_loop_avoidance.c
index 0bd24a19ff202..5c73f6ba16cff 100644
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
index 8673a265995ff..06c7dfb8c677f 100644
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
index a7fa0d9e09288..5fd5bd358a249 100644
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

