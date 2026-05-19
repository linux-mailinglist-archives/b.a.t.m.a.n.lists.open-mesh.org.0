Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eMwbGBsLDGo5UQUAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 19 May 2026 09:02:51 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BBCD578904
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 19 May 2026 09:02:50 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 66C4980C46
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 19 May 2026 09:02:50 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1779174170;
 b=RHWchyGLj+r7t+O8yxBbLRSifLTxJaqUN7Xo8KqR3VZwYEpdJ3xA6W1uQgLm9umF5WfoI
 telmn5fYAKMp3kHemHHwOPHmpiDQS8Mmf8QgDKDnHolNe70hZbndswpw0ghHZ3ees+oXovG
 1Op6Y5Fu0iqUmhi76mYegtfTR5t7+dA=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1779174170; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=mA0H6QlnNBMawY9Y3lxRf9beVAlWhrAyHdLo3lo4BbU=;
 b=mG/3B/ta2q8sv+N0sW+s4jEcAG7gbzivjxV6WY9OFzvW6AjfVvt+Xo/8SmaGRliuRd28j
 OU6MSgf2exa6KdenLIgXY6IWjVMsbh9A0vi706MlxQoUi3YCZ3V16ROzA4ItH0BdUUR1iex
 RNgoTJsCAahi+ELmYeTl1sMrmpIcfCA=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass (Used From Domain Record) header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id D3C98808F7
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 19 May 2026 09:00:44 +0200 (CEST)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1779174044;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=mA0H6QlnNBMawY9Y3lxRf9beVAlWhrAyHdLo3lo4BbU=;
	b=ShsLoyWNnVIYELOWrbDaWhymzvJp3Ho9UqNPVQmxRvnSCwfoYZXTpThblqUg3wcyHukLB2
	Ig65K+Ex87OSdHpGWPyeUC7zyZr7wX7O2yKsKQDw35oYBcV9wky9nDHwvqdZBLUgzYZ/5I
	VvFs05gudVczgNfGpvjiCOMD0rEmP9w=
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1779174044;
	b=qns5SJnNrxirq2bHBMH7Sxjc415jIL3IgATM+31J+WewiY03eEKuqijJ3EAq7F4mDq9+0J
	onDbqwiIkj4yGygcmxLBnNoGDna4TfxDnhRhdU9oxSuobUBek/l8TtE96mV3Xvl49ghNma
	DM5DfpVi4ThAdgtO3ZqWm7W+x4AZbdA=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=W4bQW7lo;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
Received: by dvalin.narfation.org (Postfix) id 920151FE24;
	Tue, 19 May 2026 07:00:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1779174044;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=mA0H6QlnNBMawY9Y3lxRf9beVAlWhrAyHdLo3lo4BbU=;
	b=W4bQW7lobIJWvGwRzIhjTkFdFUvE5G7MlE2zQ0qYjFphIMhInCHdoVkxvZFoXwlaJuJc1Y
	iSPlIXoL8S5fVJV1jfMAx2zybD0CknsljSx3EyYtV9mKP2SgQfoxuBIkG4X+7qnAkxcto0
	40x2fwnTcuiTPovA5UOW+zGztGF7ADo=
From: Sven Eckelmann <sven@narfation.org>
Date: Tue, 19 May 2026 09:00:37 +0200
Subject: [PATCH batadv v2 2/3] batman-adv: tp_meter: avoid role confusion
 in tp_list
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260519-tp-reason-missing-v2-2-9c5cd1824e3b@narfation.org>
References: <20260519-tp-reason-missing-v2-0-9c5cd1824e3b@narfation.org>
In-Reply-To: <20260519-tp-reason-missing-v2-0-9c5cd1824e3b@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=7018; i=sven@narfation.org;
 h=from:subject:message-id; bh=rK0DORgcx3yRyGa/m5FR4OfK4xzHl0MqRrAsJ0CHTvE=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDFk8XFMTDB4tPvIz3709/+7+VlGWutvt93cfbcyduKA06
 /fyb2nHO0pZGMS4GGTFFFn2XMk/v5n9rfznaR+PwsxhZQIZwsDFKQAT6Wpl+J/L2XX/onyoi98m
 oROcDx1TrQT+eJmc/9+7wYr//4FYZg9GhnkWr49XvZz4SP/tfqOuvZrqkjHPD9pEnjMXyv4krnC
 8kQcA
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: DWGZ2DSC3QENUKOZFKATILJA4KQKVE7A
X-Message-ID-Hash: DWGZ2DSC3QENUKOZFKATILJA4KQKVE7A
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/DWGZ2DSC3QENUKOZFKATILJA4KQKVE7A/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>
X-Spamd-Result: default: False [-2.01 / 15.00];
	ARC_ALLOW(-1.00)[open-mesh.org:s=20121:i=2];
	DMARC_POLICY_ALLOW(-0.50)[narfation.org,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[narfation.org:s=20121];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_RCPT(0.00)[b.a.t.m.a.n];
	R_SPF_NA(0.00)[no SPF record];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:24940, ipnet:2a01:4f8::/32, country:DE];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sven@narfation.org,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	DBL_BLOCKED_OPENRESOLVER(0.00)[narfation.org:email,narfation.org:mid,narfation.org:dkim,diktynna.open-mesh.org:rdns,diktynna.open-mesh.org:helo];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,b.a.t.m.a.n=lfdr.de];
	DKIM_TRACE(0.00)[narfation.org:+]
X-Rspamd-Queue-Id: 2BBCD578904
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

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

Fixes: 98d7a766b645 ("batman-adv: throughput meter implementation")
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 net/batman-adv/tp_meter.c | 59 +++++++++++++++++++++++++++++------------------
 1 file changed, 36 insertions(+), 23 deletions(-)

diff --git a/net/batman-adv/tp_meter.c b/net/batman-adv/tp_meter.c
index 3ce6d9b2..0fc4ca78 100644
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

