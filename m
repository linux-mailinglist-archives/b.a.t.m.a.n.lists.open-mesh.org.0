Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oHrYG6ShDWq10QUAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 20 May 2026 13:57:24 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 2091158D166
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 20 May 2026 13:57:24 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id E10BB80EE7
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 20 May 2026 13:57:23 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1779278243;
 b=K0m1I/MgTsRa9moz/EJHjCQ2t8ir/66l7QlOLjazxEStxTyzGp0qbf9cvAX3px+e9hOvG
 blHhSuR7sHF5dk/hJzdZj2viXYO9Gqp2GoEZGk1vfDXWl1rgseEDUo22QBsRrn7ONE1AT3j
 Wc8x82ehiX06GkVq1at6GETMkt62WFU=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1779278243; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=1TH4SoumUdU3CPjFnAqhg+loXglj4nnmF822Jz6Adpo=;
 b=R2Hnb/cQ4015VVp9zNy3PqAln2N82H+drkWG27Si8tTMX9WFbBaUteJZihL0jh2IN3xEV
 Z7BTQEv8yI3XI+mQu44lVofZMzI8P+2hCe4g1Q7tS+8zfqeGLzIflZhhDilvIv30KmymQzu
 lfUXKbn1vhazPMb6+OUaZXqY4l4sqTU=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=simonwunderlich.de;
 arc=pass;
 dmarc=pass header.from=simonwunderlich.de policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=pass header.d=simonwunderlich.de;
 arc=pass;
 dmarc=pass (Used From Domain Record) header.from=simonwunderlich.de policy.dmarc=none
Received: from mail.simonwunderlich.de (mail.simonwunderlich.de [23.88.38.48])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 6F4B8811D7
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 20 May 2026 13:54:42 +0200 (CEST)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1779278082;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=1TH4SoumUdU3CPjFnAqhg+loXglj4nnmF822Jz6Adpo=;
	b=2j+MWUTraJaL0sYpyZCZ3pQ357BrsVuguYIS5kczCA9+yvbIbssF7iHWJivtZJ1ceKXvQ9
	CEf+NNZILvT4+W8qyknobT7F1D+5Bttl7nmNtKshxTeb6N3rUC0GRPRFjuC7DyRTYB+b8j
	mBtAMBbqtrXqL8/vwXn7EqBTOfpjaoA=
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1779278082;
	b=zPQOP2rP7x4kVdFpT+rVs47KJALXof7anMfli1KDpYXmmUtGMK2ROlnTqDECVEHUtjVJnk
	105m78N6Z/g7Q6hR7b+F/x0t6TdtcDn2duMyQQGMP092KWU5hswe9+EgEc0SBibsCjrVTj
	XMSKuEw2VohqUm0A7DDDqalt1OQ8iL4=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=simonwunderlich.de header.s=09092022 header.b=yB4cmwe8;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates
 23.88.38.48 as permitted sender) smtp.mailfrom=sw@simonwunderlich.de;
	dmarc=pass (policy=none) header.from=simonwunderlich.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=simonwunderlich.de;
	s=09092022; t=1779278081;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=1TH4SoumUdU3CPjFnAqhg+loXglj4nnmF822Jz6Adpo=;
	b=yB4cmwe8Q1vRqnFzX8wQDg99Rl89chTQ7ULqVNUvXZJFxQSewH3fZEGRqZAeMzhTwkqYPp
	N/dZEXkL7G+ZEsrY7KmBAhLsBclrlh5R8MHiRY5Qw2VZjreptvF1RcuR7Oap63JKfIWagT
	whggJV8aosdHyFV7n45e+p848F3Scj0j7/XSvs0hW+2i/DPAdcBiCxXyRDvuaci+e4n08N
	AVFjxKbQrlzcsDNQ4LvZE7cd3wcanloFTo7ngUQ3sDLeC0X+hx7Tph/YQ/2wq3+75JnKSA
	lbpctNDhHaKpI18+ujuaDmYNyxBRhe4pWQR7J8ZQ4CpXN5zrYocqGU95IwfMZA==
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
Subject: [PATCH net 06/11] batman-adv: tp_meter: avoid role confusion in
 tp_list
Date: Wed, 20 May 2026 13:54:17 +0200
Message-ID: <20260520115422.53552-7-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260520115422.53552-1-sw@simonwunderlich.de>
References: <20260520115422.53552-1-sw@simonwunderlich.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Message-ID-Hash: 3NUEOAQCEVQ53LOOVFTYOJDGZTW6J6IK
X-Message-ID-Hash: 3NUEOAQCEVQ53LOOVFTYOJDGZTW6J6IK
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/3NUEOAQCEVQ53LOOVFTYOJDGZTW6J6IK/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>
X-Spamd-Result: default: False [-0.51 / 15.00];
	ARC_ALLOW(-1.00)[open-mesh.org:s=20121:i=2];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[simonwunderlich.de,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[simonwunderlich.de:s=09092022];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,b.a.t.m.a.n=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[simonwunderlich.de:email,simonwunderlich.de:mid,simonwunderlich.de:dkim,diktynna.open-mesh.org:rdns,diktynna.open-mesh.org:helo,narfation.org:email];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sw@simonwunderlich.de,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	RCPT_COUNT_SEVEN(0.00)[10];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[simonwunderlich.de:+];
	TAGGED_RCPT(0.00)[b.a.t.m.a.n];
	ASN(0.00)[asn:24940, ipnet:136.243.0.0/16, country:DE];
	TO_DN_SOME(0.00)[];
	R_SPF_NA(0.00)[no SPF record]
X-Rspamd-Queue-Id: 2091158D166
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Sven Eckelmann <sven@narfation.org>

Session lookups in tp_list matched only on destination address (and
optionally session ID), leaving role validation to the caller. If two
sessions with the same other_end coexisted (one as sender, one as receiver)
a lookup could silently return the wrong one, causing the caller's role to
bail out early, potentially skipping necessary cleanup.

Move the role check into the lookup functions themselves so the correct
entry is always returned, or none at all. Since batadv_tp_start()
legitimately needs to detect any active session to a destination regardless
of role, introduce a dedicated helper for that case rather than bending the
existing lookup semantics.

Cc: stable@kernel.org
Fixes: 33a3bb4a3345 ("batman-adv: throughput meter implementation")
Signed-off-by: Sven Eckelmann <sven@narfation.org>
Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
---
 net/batman-adv/tp_meter.c | 59 ++++++++++++++++++++++++---------------
 1 file changed, 36 insertions(+), 23 deletions(-)

diff --git a/net/batman-adv/tp_meter.c b/net/batman-adv/tp_meter.c
index 3ce6d9b2c9f3b..0fc4ca78e84eb 100644
--- a/net/batman-adv/tp_meter.c
+++ b/net/batman-adv/tp_meter.c
@@ -255,6 +255,7 @@ static void batadv_tp_batctl_error_notify(enum batadv_tp_meter_reason reason,
  * batadv_tp_list_find() - find a tp_vars object in the global list
  * @bat_priv: the bat priv with all the mesh interface information
  * @dst: the other endpoint MAC address to look for
+ * @role: role of the session
  *
  * Look for a tp_vars object matching dst as end_point and return it after
  * having increment the refcounter. Return NULL is not found
@@ -262,7 +263,8 @@ static void batadv_tp_batctl_error_notify(enum batadv_tp_meter_reason reason,
  * Return: matching tp_vars or NULL when no tp_vars with @dst was found
  */
 static struct batadv_tp_vars *batadv_tp_list_find(struct batadv_priv *bat_priv,
-						  const u8 *dst)
+						  const u8 *dst,
+						  enum batadv_tp_meter_role role)
 {
 	struct batadv_tp_vars *pos, *tp_vars = NULL;
 
@@ -271,6 +273,9 @@ static struct batadv_tp_vars *batadv_tp_list_find(struct batadv_priv *bat_priv,
 		if (!batadv_compare_eth(pos->other_end, dst))
 			continue;
 
+		if (pos->role != role)
+			continue;
+
 		/* most of the time this function is invoked during the normal
 		 * process..it makes sens to pay more when the session is
 		 * finished and to speed the process up during the measurement
@@ -286,12 +291,33 @@ static struct batadv_tp_vars *batadv_tp_list_find(struct batadv_priv *bat_priv,
 	return tp_vars;
 }
 
+/**
+ * batadv_tp_list_active() - check if session from/to destination is ongoing
+ * @bat_priv: the bat priv with all the mesh interface information
+ * @dst: the other endpoint MAC address to look for
+ *
+ * Return: if matching session with @dst was found
+ */
+static bool batadv_tp_list_active(struct batadv_priv *bat_priv, const u8 *dst)
+	__must_hold(&bat_priv->tp_list_lock)
+{
+	struct batadv_tp_vars *tp_vars;
+
+	hlist_for_each_entry_rcu(tp_vars, &bat_priv->tp_list, list) {
+		if (batadv_compare_eth(tp_vars->other_end, dst))
+			return true;
+	}
+
+	return false;
+}
+
 /**
  * batadv_tp_list_find_session() - find tp_vars session object in the global
  *  list
  * @bat_priv: the bat priv with all the mesh interface information
  * @dst: the other endpoint MAC address to look for
  * @session: session identifier
+ * @role: role of the session
  *
  * Look for a tp_vars object matching dst as end_point, session as tp meter
  * session and return it after having increment the refcounter. Return NULL
@@ -301,7 +327,7 @@ static struct batadv_tp_vars *batadv_tp_list_find(struct batadv_priv *bat_priv,
  */
 static struct batadv_tp_vars *
 batadv_tp_list_find_session(struct batadv_priv *bat_priv, const u8 *dst,
-			    const u8 *session)
+			    const u8 *session, enum batadv_tp_meter_role role)
 {
 	struct batadv_tp_vars *pos, *tp_vars = NULL;
 
@@ -313,6 +339,9 @@ batadv_tp_list_find_session(struct batadv_priv *bat_priv, const u8 *dst,
 		if (memcmp(pos->session, session, sizeof(pos->session)) != 0)
 			continue;
 
+		if (pos->role != role)
+			continue;
+
 		/* most of the time this function is invoked during the normal
 		 * process..it makes sense to pay more when the session is
 		 * finished and to speed the process up during the measurement
@@ -665,13 +694,10 @@ static void batadv_tp_recv_ack(struct batadv_priv *bat_priv,
 
 	/* find the tp_vars */
 	tp_vars = batadv_tp_list_find_session(bat_priv, icmp->orig,
-					      icmp->session);
+					      icmp->session, BATADV_TP_SENDER);
 	if (unlikely(!tp_vars))
 		return;
 
-	if (unlikely(tp_vars->role != BATADV_TP_SENDER))
-		goto out;
-
 	if (unlikely(batadv_tp_sender_stopped(tp_vars)))
 		goto out;
 
@@ -980,10 +1006,8 @@ void batadv_tp_start(struct batadv_priv *bat_priv, const u8 *dst,
 		return;
 	}
 
-	tp_vars = batadv_tp_list_find(bat_priv, dst);
-	if (tp_vars) {
+	if (batadv_tp_list_active(bat_priv, dst)) {
 		spin_unlock_bh(&bat_priv->tp_list_lock);
-		batadv_tp_vars_put(tp_vars);
 		batadv_dbg(BATADV_DBG_TP_METER, bat_priv,
 			   "Meter: test to or from the same node already ongoing, aborting\n");
 		batadv_tp_batctl_error_notify(BATADV_TP_REASON_ALREADY_ONGOING,
@@ -1104,18 +1128,14 @@ void batadv_tp_stop(struct batadv_priv *bat_priv, const u8 *dst,
 	if (!orig_node)
 		return;
 
-	tp_vars = batadv_tp_list_find(bat_priv, orig_node->orig);
+	tp_vars = batadv_tp_list_find(bat_priv, orig_node->orig, BATADV_TP_SENDER);
 	if (!tp_vars) {
 		batadv_dbg(BATADV_DBG_TP_METER, bat_priv,
 			   "Meter: trying to interrupt an already over connection\n");
 		goto out_put_orig_node;
 	}
 
-	if (unlikely(tp_vars->role != BATADV_TP_SENDER))
-		goto out_put_tp_vars;
-
 	batadv_tp_sender_shutdown(tp_vars, return_value);
-out_put_tp_vars:
 	batadv_tp_vars_put(tp_vars);
 out_put_orig_node:
 	batadv_orig_node_put(orig_node);
@@ -1371,7 +1391,7 @@ batadv_tp_init_recv(struct batadv_priv *bat_priv,
 		goto out_unlock;
 
 	tp_vars = batadv_tp_list_find_session(bat_priv, icmp->orig,
-					      icmp->session);
+					      icmp->session, BATADV_TP_RECEIVER);
 	if (tp_vars)
 		goto out_unlock;
 
@@ -1442,7 +1462,7 @@ static void batadv_tp_recv_msg(struct batadv_priv *bat_priv,
 		}
 	} else {
 		tp_vars = batadv_tp_list_find_session(bat_priv, icmp->orig,
-						      icmp->session);
+						      icmp->session, BATADV_TP_RECEIVER);
 		if (!tp_vars) {
 			batadv_dbg(BATADV_DBG_TP_METER, bat_priv,
 				   "Unexpected packet from %pM!\n",
@@ -1451,13 +1471,6 @@ static void batadv_tp_recv_msg(struct batadv_priv *bat_priv,
 		}
 	}
 
-	if (unlikely(tp_vars->role != BATADV_TP_RECEIVER)) {
-		batadv_dbg(BATADV_DBG_TP_METER, bat_priv,
-			   "Meter: dropping packet: not expected (role=%u)\n",
-			   tp_vars->role);
-		goto out;
-	}
-
 	tp_vars->last_recv_time = jiffies;
 
 	/* if the packet is a duplicate, it may be the case that an ACK has been
-- 
2.47.3

