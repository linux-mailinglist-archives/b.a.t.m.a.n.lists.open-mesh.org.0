Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id JSkuIoXwKmrtzgMAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 11 Jun 2026 19:29:41 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 341F1673FBF
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 11 Jun 2026 19:29:41 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=narfation.org header.s=20121 header.b=YLb5GheY;
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 136.243.236.17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	dmarc=pass (policy=none) header.from=narfation.org;
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 1C5068423E
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 11 Jun 2026 19:29:41 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1781198981;
 b=QUICtnJiiEP6sY2AOEXuY+6e+tdXmQvFXrkj19/UTfXC3jPLO7veXYMKZvGUWKDn/NJBB
 TFEMsdTuegst2J2Tjzff3BpLXZl74zER6T0vhRxoO2doqBI+UGyRPAQD0txsc4SpP4jPrj+
 pUbG+HvfhAxwfPOLjwO2HhhviktKbrY=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1781198981; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=/H/EHXygECXSug4z2zJPnJ32e5T/vAzUw/IjqLRGgyE=;
 b=mgrl2Z4AYuBixmdGtYiArVxK2xqzEhxOdels9VBh0M+L5y+q5bPcofVn0yFfBoRD5y3oR
 X8Edp6IBdeISQupsATCC1oPkJ3CnQ8528Q8Ren/Q9rm7WLcS0NOfW0VrEifZ/GCFvP+xg2y
 VPhclDIhMhpzVM2Ydq/OmJW60HicwUg=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id 0602683F23
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 11 Jun 2026 19:24:46 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1781198686;
	b=AfoKU4iEsU6QWatWa97rUfSt1hBjVzrigZv9FyEk4BCa+sJ3yVMVyObResDeZ3Zy4vXtxO
	AGucHMSp//gAGPwck5k8UxliRJPGA+tHkVP+DcCwULwBkE8D05vChLnYTEHhoZ+7OmivT/
	LMyb5m+6Et+fmhNB9AsR3lgQeL0aZk8=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1781198686;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=/H/EHXygECXSug4z2zJPnJ32e5T/vAzUw/IjqLRGgyE=;
	b=MiWRr/xpZqVS9BbucmS6d1YpEIInMYRv17HZC3MBu0BBFxztWH6F0lQsb5UXQ9BCtO5pkE
	7cu+wqhpoNdkB/qyLmi3Ch5xBVf+yFWGIUH2jOhIYJ0Jvwo7qI3fuo9554kVRms2jCEIR3
	+3jv6uBtGzuKR4K099WtlaYaLFuWT6o=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=YLb5GheY;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org
Received: by dvalin.narfation.org (Postfix) id B9F061FD51;
	Thu, 11 Jun 2026 17:24:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1781198685;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=/H/EHXygECXSug4z2zJPnJ32e5T/vAzUw/IjqLRGgyE=;
	b=YLb5GheYeqAoRm8svbbOQwm8bUkkSYJFVVAFvzq1pVDBIUw1dJU0GEX8McZ87UDYk41ckA
	cohucb7Lsmr8LX4c6S5EVXqK0VtwqQfO+sUpSH3RjHFcL2gnCl49s7HxZQQPOCpLRtuBCF
	byaNvdzPorYA+nFtXWqkbORgOdsVTPo=
From: Sven Eckelmann <sven@narfation.org>
Date: Thu, 11 Jun 2026 19:24:11 +0200
Subject: [PATCH batadv v2 6/9] batman-adv: tp_meter: combine
 adjacent/overlapping unacked entries
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260611-tp-unacked-list-v2-6-47389466c5c1@narfation.org>
References: <20260611-tp-unacked-list-v2-0-47389466c5c1@narfation.org>
In-Reply-To: <20260611-tp-unacked-list-v2-0-47389466c5c1@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=4395; i=sven@narfation.org;
 h=from:subject:message-id; bh=yWxaklfqjKUQ7aljbLifzmHKf43pARkfK5VDk9I/NGY=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDFla761EIpetv3tt81cbu5qCmTuOPvohrRT41cf932OWi
 rwNOrdyOkpZGMS4GGTFFFn2XMk/v5n9rfznaR+PwsxhZQIZwsDFKQATMSxi+GdfwrbI1uj75w1n
 Mrj0ih5zhGV2T/rFo66eobC+p+6wvyPDP0uxyNzWMKGnCTXvzxQZ8mi4ara9bMp09D95e/7CGr4
 wXgA=
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: 6EGRV5RHXTI6LP5G5C7KGZ5VF7BZAEZT
X-Message-ID-Hash: 6EGRV5RHXTI6LP5G5C7KGZ5VF7BZAEZT
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/6EGRV5RHXTI6LP5G5C7KGZ5VF7BZAEZT/>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[diktynna.open-mesh.org:rdns,diktynna.open-mesh.org:helo,lists.open-mesh.org:from_smtp,narfation.org:dkim,narfation.org:email,narfation.org:mid,narfation.org:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 341F1673FBF

Right at the point when the receiver gets the first packet with a seqno gap
(due to some packet loss/reordering), entries in the unacked list are
created. They are (besides direct seqno matches) are not combined. A lot
more then necessary entries are therefore created. Not for each gap but for
each packet.

This increases the memory consumption and management overhead. But it is
trivial to handle overlapping or adjacent sequence number ranges during the
insert. Only the handling of closed gaps by a new packets requires an extra
step after the insert.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 net/batman-adv/tp_meter.c | 65 +++++++++++++++++++++++++++++++++++++++--------
 net/batman-adv/types.h    |  2 +-
 2 files changed, 55 insertions(+), 12 deletions(-)

diff --git a/net/batman-adv/tp_meter.c b/net/batman-adv/tp_meter.c
index b7fee6e5..5cc719c8 100644
--- a/net/batman-adv/tp_meter.c
+++ b/net/batman-adv/tp_meter.c
@@ -1406,6 +1406,7 @@ static bool batadv_tp_handle_out_of_order(struct batadv_tp_receiver *tp_vars,
 	__must_hold(&tp_vars->common.unacked_lock)
 {
 	struct batadv_tp_unacked *un, *new;
+	struct batadv_tp_unacked *safe;
 	bool added = false;
 
 	new = kmalloc_obj(*new, GFP_ATOMIC);
@@ -1430,20 +1431,46 @@ static bool batadv_tp_handle_out_of_order(struct batadv_tp_receiver *tp_vars,
 	 * seqno than all the others already stored.
 	 */
 	list_for_each_entry_reverse(un, &tp_vars->common.unacked_list, list) {
-		/* check for duplicates */
-		if (new->seqno == un->seqno) {
-			if (new->len > un->len)
-				un->len = new->len;
-			kfree(new);
-			added = true;
-			break;
-		}
-
-		/* look for the right position */
+		/* look for the right position - an un which is smaller */
 		if (batadv_seq_before(new->seqno, un->seqno))
 			continue;
 
-		/* as soon as an entry having a bigger seqno is found, the new
+		/* smaller/equal seqno was found but they might be directly
+		 * after another or overlapping. keep only a single entry
+		 *
+		 * It is already known that:
+		 *
+		 *	un->seqno <= new->seqno
+		 *
+		 * When establishing that:
+		 *
+		 *	new->seqno <= un->seqno + un->len
+		 *
+		 * Then it is not necessary to add a new entry because the
+		 * smaller/equal seqno of un might already contain the new
+		 * received packet or we only add new data directly after
+		 * the end of un. The latter can be identified using:
+		 *
+		 *	un->seqno + un->len <= new->seqno + new->len
+		 */
+		if (!batadv_seq_before(un->seqno + un->len, new->seqno)) {
+			/* new data directly after un? */
+			if (!batadv_seq_before(new->seqno + new->len,
+					       un->seqno + un->len))
+				un->len = new->seqno + new->len - un->seqno;
+
+			/* un now represents both old un + new */
+			kfree(new);
+			added = true;
+
+			/* un has to be used to check if the gap to the next
+			 * seqno range was closed
+			 */
+			new = un;
+			break;
+		}
+
+		/* as soon as an entry having a smaller seqno is found, the new
 		 * one is attached _after_ it. In this way the list is kept in
 		 * ascending order
 		 */
@@ -1459,6 +1486,22 @@ static bool batadv_tp_handle_out_of_order(struct batadv_tp_receiver *tp_vars,
 		tp_vars->common.unacked_count++;
 	}
 
+	/* check if new filled the gap to the next list entries */
+	un = new;
+	list_for_each_entry_safe_continue(un, safe, &tp_vars->common.unacked_list, list) {
+		if (batadv_seq_before(new->seqno + new->len, un->seqno))
+			break;
+
+		/* next entry is overlapping or adjacent - combine both */
+		if (batadv_seq_before(new->seqno + new->len,
+				      un->seqno + un->len))
+			new->len = un->seqno + un->len - new->seqno;
+
+		list_del(&un->list);
+		kfree(un);
+		tp_vars->common.unacked_count--;
+	}
+
 	/* remove the last (biggest) unacked seqno when list is too large */
 	if (tp_vars->common.unacked_count > BATADV_TP_MAX_UNACKED) {
 		un = list_last_entry(&tp_vars->common.unacked_list,
diff --git a/net/batman-adv/types.h b/net/batman-adv/types.h
index efb46347..c5bc5ad6 100644
--- a/net/batman-adv/types.h
+++ b/net/batman-adv/types.h
@@ -1329,7 +1329,7 @@ struct batadv_tp_unacked {
 	u32 seqno;
 
 	/** @len: length of the packet */
-	u16 len;
+	u32 len;
 
 	/** @list: list node for &batadv_tp_vars_common.unacked_list */
 	struct list_head list;

-- 
2.47.3

