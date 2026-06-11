Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id UVXwOhLxKmoXzwMAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 11 Jun 2026 19:32:02 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 98A28674010
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 11 Jun 2026 19:32:02 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=narfation.org header.s=20121 header.b=c9d0x9cq;
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 136.243.236.17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	dmarc=pass (policy=none) header.from=narfation.org;
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 765F784335
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 11 Jun 2026 19:32:02 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1781199122;
 b=UPvu05zWiyhyeYB3iNjmH3L0mn7YxVPwjQ6YJENBTmNWI1bpa5qxBSXBaqsbnA/qTrhe5
 JFAkKFTFVyAUzVLBF3vE/GHeiDy0VJbjgz5QcFWWb8n7BDs85XkAJbWWp8fLPvcVB3fRcy8
 tjh5HoaQYfDFOBD3SZX50tOb2OIslxA=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1781199122; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=0qBrJDj3QHyZIjsrmNXgfiLUKKOHHec6e8ljL67rULU=;
 b=AmlvdQ8FjFuA9IE4vGrRX7EhBbHrIhYEJAhBpYHb4hFQl96OZTk0DDl3HxbD14YlpGDVx
 IE2jzQ/RRBOmDtF36uD9flVbTrnji5yHSU2yCatqX5ndMTFKKbzJOznGqY3hVuTC6YYxQR4
 zFlylj6vsaptJhdOVsLWlxsU//HB5bA=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org
 [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id D9F9A8406C
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 11 Jun 2026 19:24:52 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1781198692;
	b=EKxXdJyXLXBtpCiHHowk8quoByJYYUyNlDwgv86kiCBBt6wK3XOIWAbD9FT1xrpLxfn6NQ
	hFRyiNLyr4VFKCA3i6iQ2X+NoOmv4Hb2FGJdMaQ51haBF9kzN4tluJ+FBziVt4IlT684zd
	2pEetA5YcHFtLySRc/kFoEAXM4sUtIk=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1781198692;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=0qBrJDj3QHyZIjsrmNXgfiLUKKOHHec6e8ljL67rULU=;
	b=XHKYhNd8jkhOKCjOePEARGvr7cHnW2Hlz+jOOBBsXT/R+dLSCUIeXDv/6kZjMXs19tHdXd
	JbvVY0ZR69B2ww/b5jFE3dbnuaIj5mErxPG6zn0jdRQoTqooF/V5nHKr3JnJnxYW5Q484P
	RN4VyDB48iKh/sB+DO3TXPMCiNlO8SA=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=c9d0x9cq;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org
Received: by dvalin.narfation.org (Postfix) id 903471FD51;
	Thu, 11 Jun 2026 17:24:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1781198692;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=0qBrJDj3QHyZIjsrmNXgfiLUKKOHHec6e8ljL67rULU=;
	b=c9d0x9cqi5XY/JUNxFdYot6htdrTSNOKHwV9HzUB99UQPAOFRf63NZEUsDiq4cOS1hZSc6
	DOuPa97W+oSmOVIConAKimLvOwX8q6r65GrQvpigXt0k6BGzSkYHzyu4y3Ju8mm7R0gEGC
	qkGO5bE/oqg2aWRLhx269pDAmlc+xCM=
From: Sven Eckelmann <sven@narfation.org>
Date: Thu, 11 Jun 2026 19:24:14 +0200
Subject: [PATCH batadv v2 9/9] batman-adv: tp_meter: delay allocation of
 unacked entry
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260611-tp-unacked-list-v2-9-47389466c5c1@narfation.org>
References: <20260611-tp-unacked-list-v2-0-47389466c5c1@narfation.org>
In-Reply-To: <20260611-tp-unacked-list-v2-0-47389466c5c1@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=5635; i=sven@narfation.org;
 h=from:subject:message-id; bh=75+dNXei3IUiOZKd6L00TqQPgfneJE/vPrHiHECh3X8=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDFla762jNHODfWLKzsVMlrFg3jxZs3jdv4SDL/iWP484F
 HbTYqNfRykLgxgXg6yYIsueK/nnN7O/lf887eNRmDmsTCBDGLg4BWAiJ9UZGW5OWh14b8n5HQ5/
 Vp2b364/u5X/yAHZWRONqmzjo+NW+esxMiw5+Wv9RcHfe2YfvH7//6J7xWf/PtQKXfAy7NXib52
 StvysAA==
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: TV65LUQTAREUHN3D2R7A6NX4ZH26JRJU
X-Message-ID-Hash: TV65LUQTAREUHN3D2R7A6NX4ZH26JRJU
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/TV65LUQTAREUHN3D2R7A6NX4ZH26JRJU/>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[narfation.org:dkim,narfation.org:email,narfation.org:mid,narfation.org:from_mime,diktynna.open-mesh.org:rdns,diktynna.open-mesh.org:helo,lists.open-mesh.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 98A28674010

When batadv_tp_handle_out_of_order() searches the already existing list of
unacked packets, it can often find an entry to merge with. In this case, it
would be a waste of time and resources to allocate a batadv_tp_unacked
which is then immediately freed again.

Instead, search first through the list. Only when no mergeable entry could
be found, it is necessary to record the place to allocate+store the new
entry.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 net/batman-adv/tp_meter.c | 88 ++++++++++++++++++++++-------------------------
 1 file changed, 41 insertions(+), 47 deletions(-)

diff --git a/net/batman-adv/tp_meter.c b/net/batman-adv/tp_meter.c
index ffd3171d..00467aa7 100644
--- a/net/batman-adv/tp_meter.c
+++ b/net/batman-adv/tp_meter.c
@@ -1417,26 +1417,15 @@ static bool batadv_tp_handle_out_of_order(struct batadv_tp_receiver *tp_vars,
 					  u32 seqno, u32 payload_len)
 	__must_hold(&tp_vars->ack_seqno_lock)
 {
-	struct batadv_tp_unacked *un, *new;
+	struct list_head *pos = &tp_vars->unacked_list;
+	struct batadv_tp_unacked *new = NULL;
+	u32 end_seqno = seqno + payload_len;
 	struct batadv_tp_unacked *safe;
-	bool added = false;
+	struct batadv_tp_unacked *un;
 
-	new = kmalloc_obj(*new, GFP_ATOMIC);
-	if (unlikely(!new))
-		return false;
-
-	new->seqno = seqno;
-	new->len = payload_len;
-
-	/* if the list is empty immediately attach this new object */
-	if (list_empty(&tp_vars->unacked_list)) {
-		list_add(&new->list, &tp_vars->unacked_list);
-		tp_vars->unacked_count++;
-		return true;
-	}
-
-	/* otherwise loop over the list and either drop the packet because this
-	 * is a duplicate or store it at the right position.
+	/* loop over the list to find either an existing entry which the new
+	 * seqno range can be merged with or the position at which a new entry
+	 * has to be inserted.
 	 *
 	 * The iteration is done in the reverse way because it is likely that
 	 * the last received packet (the one being processed now) has a bigger
@@ -1444,7 +1433,7 @@ static bool batadv_tp_handle_out_of_order(struct batadv_tp_receiver *tp_vars,
 	 */
 	list_for_each_entry_reverse(un, &tp_vars->unacked_list, list) {
 		/* look for the right position - an un which is smaller */
-		if (batadv_seq_before(new->seqno, un->seqno))
+		if (batadv_seq_before(seqno, un->seqno))
 			continue;
 
 		/* smaller/equal seqno was found but they might be directly
@@ -1452,62 +1441,67 @@ static bool batadv_tp_handle_out_of_order(struct batadv_tp_receiver *tp_vars,
 		 *
 		 * It is already known that:
 		 *
-		 *	un->seqno <= new->seqno
+		 *	un->seqno <= seqno
 		 *
 		 * When establishing that:
 		 *
-		 *	new->seqno <= un->seqno + un->len
+		 *	seqno <= un->seqno + un->len
 		 *
 		 * Then it is not necessary to add a new entry because the
 		 * smaller/equal seqno of un might already contain the new
 		 * received packet or we only add new data directly after
 		 * the end of un. The latter can be identified using:
 		 *
-		 *	un->seqno + un->len <= new->seqno + new->len
+		 *	un->seqno + un->len <= end_seqno
 		 */
-		if (!batadv_seq_before(un->seqno + un->len, new->seqno)) {
+		if (!batadv_seq_before(un->seqno + un->len, seqno)) {
 			/* new data directly after un? */
-			if (!batadv_seq_before(new->seqno + new->len,
-					       un->seqno + un->len))
-				un->len = new->seqno + new->len - un->seqno;
+			if (!batadv_seq_before(end_seqno, un->seqno + un->len))
+				un->len = end_seqno - un->seqno;
 
-			/* un now represents both old un + new */
-			kfree(new);
-			added = true;
-
-			/* un has to be used to check if the gap to the next
-			 * seqno range was closed
+			/* un now represents both old un + new range and has to
+			 * be used to check if the gap to the next seqno range
+			 * was closed
 			 */
 			new = un;
-			break;
+		} else {
+			/* as soon as an entry having a smaller seqno is found,
+			 * the new one is attached _after_ it. In this way the
+			 * list is kept in ascending order
+			 */
+			pos = &un->list;
 		}
 
-		/* as soon as an entry having a smaller seqno is found, the new
-		 * one is attached _after_ it. In this way the list is kept in
-		 * ascending order
-		 */
-		list_add(&new->list, &un->list);
-		added = true;
-		tp_vars->unacked_count++;
 		break;
 	}
 
-	/* received packet with smallest seqno out of order; add it to front */
-	if (!added) {
-		list_add(&new->list, &tp_vars->unacked_list);
+	/* no entry to merge with was found; insert a new one after the entry
+	 * with the next smaller seqno (or at the front of the list when the
+	 * new seqno is the smallest or the list is empty)
+	 */
+	if (!new) {
+		new = kmalloc_obj(*new, GFP_ATOMIC);
+		if (unlikely(!new))
+			return false;
+
+		new->seqno = seqno;
+		new->len = payload_len;
+
+		list_add(&new->list, pos);
 		tp_vars->unacked_count++;
 	}
 
 	/* check if new filled the gap to the next list entries */
 	un = new;
 	list_for_each_entry_safe_continue(un, safe, &tp_vars->unacked_list, list) {
-		if (batadv_seq_before(new->seqno + new->len, un->seqno))
+		if (batadv_seq_before(end_seqno, un->seqno))
 			break;
 
 		/* next entry is overlapping or adjacent - combine both */
-		if (batadv_seq_before(new->seqno + new->len,
-				      un->seqno + un->len))
-			new->len = un->seqno + un->len - new->seqno;
+		if (batadv_seq_before(end_seqno, un->seqno + un->len)) {
+			end_seqno = un->seqno + un->len;
+			new->len = end_seqno - new->seqno;
+		}
 
 		list_del(&un->list);
 		kfree(un);

-- 
2.47.3

