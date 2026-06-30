Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 4T0QHRvQQ2o/jAoAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 30 Jun 2026 16:18:03 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C13B6E552F
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 30 Jun 2026 16:18:03 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=simonwunderlich.de header.s=09092022 header.b=F6hpwTmy;
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 2a01:4f8:241:fc1:136:243:236:17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	dmarc=pass (policy=none) header.from=simonwunderlich.de;
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id EC08584265
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 30 Jun 2026 16:18:02 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1782829082;
 b=dSkrzatVRgMcljZ3CO6gJgIm+QiH8SWT0a90UExxjJBk15rbWJHMLByyL87HILkw7ZxFK
 gCzebyExI4ZOfKE03+gfb3v/Q/7mFsiFPrpR7L9ZDr957lDkUm3YxxwSfuXplj88ABGr0NS
 /ySk61k8LdHL0vQZ5ZnwWYqvq4bFqe4=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1782829082; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=aTEJtpajRVR1xlAcD16Paemh1ljeVO533G4fz7VgnPI=;
 b=tw5pncz/fdmWmWDVnv4arjbGk+24+Wim8uvJllI+XqoCZ0C0tdKODyF98QUwyzfyywLoI
 xCgICm0Eq5D91wLLSMOjXhLL3+iTW3eCMtlG9C6U94XZB9ufuyeNXmaPvzG9b0MTpFlulz+
 vPxNFCSsNG/RX6SfgiHWKQ4oTkO5SJw=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=simonwunderlich.de;
 arc=pass;
 dmarc=pass header.from=simonwunderlich.de policy.dmarc=none
Received: from mail.simonwunderlich.de (mail.simonwunderlich.de
 [IPv6:2a01:4f8:c17:e8c0::1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 2995D8111A
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 30 Jun 2026 16:06:36 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1782828396;
	b=DVYQlOQ2VWKPQ/cE8kGHC8zecvpoAF2YzRMYx9CKuF17v1M4O0B3quoilHlkc4hlNkyvoB
	W9VJDLSx1z/5zI/oLJE7BFDKJzqmrmcUYFRBCydL6b4E+n8eUovZfFKR1xfL/f3AvbIz+d
	iioFI7jg/fuauDiqDGBQtBHNE+c4isY=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1782828396;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=aTEJtpajRVR1xlAcD16Paemh1ljeVO533G4fz7VgnPI=;
	b=2pW785t/0/XDTBho4mxnxJe0AG/XYA9CJcPWa/UHs4eyu0l8jruzrt+z9+YktDbloFPF/5
	xALfL2OVaM48AhpAeYsUj1gDh82pq7qNqm8qh5Iqjg+NXgd9X4l6fr+EXsl6JmiADWSgxi
	MAbOPWophrI9RAMVAewMUaD1fMHcS6E=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=simonwunderlich.de header.s=09092022 header.b=F6hpwTmy;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates
 2a01:4f8:c17:e8c0::1 as permitted sender)
 smtp.mailfrom=sw@simonwunderlich.de;
	dmarc=pass (policy=none) header.from=simonwunderlich.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=simonwunderlich.de;
	s=09092022; t=1782828395;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=aTEJtpajRVR1xlAcD16Paemh1ljeVO533G4fz7VgnPI=;
	b=F6hpwTmypsiDwCIokCMHp0WgVCgt864zdfUmB7xYBBrfosdGUyOKAUZ/I4ketNKXquo4lH
	NadtepDvONS7FQwV8fIpBsmHbKwIqvpn4C1YRIRrQe9LY3YbWGN+tl2Vhi0mgojNCEHGHq
	uVFKbYcPNKIhFEv4k6PjN4m7YXGkl3+hDsuUS4UDztMCn/vPCqrqOSbiNdoiYr5fR9w72d
	D5SGaUpnfkD79JDXLV8ivb+zRegiVYW3xe8U1H5NVzSHrgj9+VZP5CH5Qrt5WYAj5GJhxl
	1Lg1DkF5Prau1Fi9yYyVpjB2Zh4114B9Mi8vZSIOgFTSLKvY0Q88TV9GqkJNQQ==
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
Subject: [PATCH net-next 15/15] batman-adv: tp_meter: delay allocation of
 unacked entry
Date: Tue, 30 Jun 2026 16:06:23 +0200
Message-ID: <20260630140623.88431-16-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260630140623.88431-1-sw@simonwunderlich.de>
References: <20260630140623.88431-1-sw@simonwunderlich.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Message-ID-Hash: YQ5YLKX3QOGX4SX4XTHJXTKCMZPMZVFT
X-Message-ID-Hash: YQ5YLKX3QOGX4SX4XTHJXTKCMZPMZVFT
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/YQ5YLKX3QOGX4SX4XTHJXTKCMZPMZVFT/>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[narfation.org:email,simonwunderlich.de:dkim,simonwunderlich.de:email,simonwunderlich.de:mid,simonwunderlich.de:from_mime,diktynna.open-mesh.org:rdns,diktynna.open-mesh.org:helo,lists.open-mesh.org:from_smtp];
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
X-Rspamd-Queue-Id: 1C13B6E552F

From: Sven Eckelmann <sven@narfation.org>

When batadv_tp_handle_out_of_order() searches the already existing list of
unacked packets, it can often find an entry to merge with. In this case, it
would be a waste of time and resources to allocate a batadv_tp_unacked
which is then immediately freed again.

Instead, search first through the list. Only when no mergeable entry could
be found, it is necessary to record the place to allocate+store the new
entry.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
---
 net/batman-adv/tp_meter.c | 88 ++++++++++++++++++---------------------
 1 file changed, 41 insertions(+), 47 deletions(-)

diff --git a/net/batman-adv/tp_meter.c b/net/batman-adv/tp_meter.c
index ffd3171d4b992..00467aa79de9d 100644
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
-
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
+	struct batadv_tp_unacked *un;
 
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

