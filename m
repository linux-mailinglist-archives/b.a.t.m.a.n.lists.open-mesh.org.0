Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id UNnHGPDPQ2oZjAoAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 30 Jun 2026 16:17:20 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id EB5AA6E550B
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 30 Jun 2026 16:17:19 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=simonwunderlich.de header.s=09092022 header.b=qdPZ2eil;
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 136.243.236.17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	dmarc=pass (policy=none) header.from=simonwunderlich.de;
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id C83E780816
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 30 Jun 2026 16:17:19 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1782829039;
 b=wLb3sNueXkcqirLObzePq72pBBBib6xYl+Z8aYVjkv06gfn22tEZ+DVg4yFvI+au7cCBe
 9PUTCSmILbZYvMMu29q1A+6p+uA1ESnwaYCWtAc7WMaWpsU/j/1CBVKAolGwwsm7tBGiBYi
 7kx0TomDVsgmlMqbll/8x7Knk0Yln4k=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1782829039; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=FzCjWzxPf+rT6MJjI3OB0RLIvAemy3SqIq2nFw9BYZQ=;
 b=RCjjPvDu7YuKd+LgjEzp6wBU46JCdxmvkawYM3YEVM5VaVZDaUeifi2MOjqCWs9ufuHQm
 B70XyA6cg6qQw8mEbiu/z4ZitRe2hfbw3d+vGVWEK+kaF6un7qvDkEtVlgDG9soJpzs2aw9
 bJ8BtovVVPccy5Mf43biCIrmKJ0LxOI=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=simonwunderlich.de;
 arc=pass;
 dmarc=pass header.from=simonwunderlich.de policy.dmarc=none
Received: from mail.simonwunderlich.de (mail.simonwunderlich.de [23.88.38.48])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 815FF81125
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 30 Jun 2026 16:06:35 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1782828395;
	b=XfzC5RJvx7f8MomPqwLuks9O0Wafh2qbOiZiXyDTg8Jf0DAG/6ScDhk9DP7VdTKHy9n1JY
	T5oxy8jroKelTk5aq6tTON1ZRJ+X0aJ6jacu3/OPVt3DNi/U/FwpCZWnXi/x15P27/vsOE
	9url/3jg2vFD/PU3rBnU36GsFTwJ0iE=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1782828395;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=FzCjWzxPf+rT6MJjI3OB0RLIvAemy3SqIq2nFw9BYZQ=;
	b=3F6uOqXEnAu9C68R+lUdGWS95YJkO57xkqTq98iilYXEr9GfSgihfjy86ITRHNRlKThZ/e
	udn/vmOIEe1YtXwy6um0FbL+Jq95lJNZ7LbyPK/eK02OwTV2xAiyjN/qKscKuTdI9CxyS0
	2WItZUTd1GlpP9FWIpfJ9fF55jQqM6I=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=simonwunderlich.de header.s=09092022 header.b=qdPZ2eil;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates
 23.88.38.48 as permitted sender) smtp.mailfrom=sw@simonwunderlich.de;
	dmarc=pass (policy=none) header.from=simonwunderlich.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=simonwunderlich.de;
	s=09092022; t=1782828394;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=FzCjWzxPf+rT6MJjI3OB0RLIvAemy3SqIq2nFw9BYZQ=;
	b=qdPZ2eilYd36XOZnTFmPQp4sVzBR6we9y7v5dhE6p1bBk+tCUSChH60ST3EMkmn4bwUKzF
	vgt2fgiMVvWHGMxHIfxWMFDDX8Y0Eep6cttIr/H9UOPQI6BTiTCYvY68TJksphYvQnHief
	0Fmtfjm8Dporxmnt51lKSQl6ZApx+NXEjHHycSwSGStMfYWY85wir6mLHCpKRLw7nbI8WW
	XivHJYYdLaHfNSEzau4A3QLNoxCPuy5rlvhxz6x1A/sOFiWsq0flEkL6kieg6vgiKpPCdZ
	NG0oL39g/JewXb/jWcxIoZTE9xx/JkYZCSewCDzAnG2+J+KiEix9GjjWn/dnKg==
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
Subject: [PATCH net-next 14/15] batman-adv: tp_meter: adjust name of receiver
 lock
Date: Tue, 30 Jun 2026 16:06:22 +0200
Message-ID: <20260630140623.88431-15-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260630140623.88431-1-sw@simonwunderlich.de>
References: <20260630140623.88431-1-sw@simonwunderlich.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Message-ID-Hash: K3VJ4CEMIOPOTLQQLT7EKFHYSFWSJZ7Z
X-Message-ID-Hash: K3VJ4CEMIOPOTLQQLT7EKFHYSFWSJZ7Z
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/K3VJ4CEMIOPOTLQQLT7EKFHYSFWSJZ7Z/>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[diktynna.open-mesh.org:rdns,diktynna.open-mesh.org:helo,simonwunderlich.de:dkim,simonwunderlich.de:email,simonwunderlich.de:mid,simonwunderlich.de:from_mime,lists.open-mesh.org:from_smtp,narfation.org:email];
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
X-Rspamd-Queue-Id: EB5AA6E550B

From: Sven Eckelmann <sven@narfation.org>

The lock used to protect the receiver from reading/writing in parallel to
ack sequence number relevant data was still called unacked_lock. But it is
no longer only about the unacked_list. Use a broader term to reflect this.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
---
 net/batman-adv/tp_meter.c | 20 ++++++++++----------
 net/batman-adv/types.h    |  4 ++--
 2 files changed, 12 insertions(+), 12 deletions(-)

diff --git a/net/batman-adv/tp_meter.c b/net/batman-adv/tp_meter.c
index f18ce360839d3..ffd3171d4b992 100644
--- a/net/batman-adv/tp_meter.c
+++ b/net/batman-adv/tp_meter.c
@@ -1252,13 +1252,13 @@ static void batadv_tp_receiver_release(struct kref *ref)
 	/* lock should not be needed because this object is now out of any
 	 * context!
 	 */
-	spin_lock_bh(&tp_vars->unacked_lock);
+	spin_lock_bh(&tp_vars->ack_seqno_lock);
 	list_for_each_entry_safe(un, safe, &tp_vars->unacked_list, list) {
 		list_del(&un->list);
 		kfree(un);
 		tp_vars->unacked_count--;
 	}
-	spin_unlock_bh(&tp_vars->unacked_lock);
+	spin_unlock_bh(&tp_vars->ack_seqno_lock);
 
 	kfree_rcu(tp_vars, common.rcu);
 }
@@ -1316,13 +1316,13 @@ static void batadv_tp_receiver_shutdown(struct timer_list *t)
 	if (batadv_tp_list_detach(&tp_vars->common))
 		batadv_tp_receiver_put(tp_vars);
 
-	spin_lock_bh(&tp_vars->unacked_lock);
+	spin_lock_bh(&tp_vars->ack_seqno_lock);
 	list_for_each_entry_safe(un, safe, &tp_vars->unacked_list, list) {
 		list_del(&un->list);
 		kfree(un);
 		tp_vars->unacked_count--;
 	}
-	spin_unlock_bh(&tp_vars->unacked_lock);
+	spin_unlock_bh(&tp_vars->ack_seqno_lock);
 
 	/* drop reference of timer */
 	if (WARN_ON(atomic_xchg(&tp_vars->receiving, 0) != 1))
@@ -1415,7 +1415,7 @@ static int batadv_tp_send_ack(struct batadv_priv *bat_priv, const u8 *dst,
  */
 static bool batadv_tp_handle_out_of_order(struct batadv_tp_receiver *tp_vars,
 					  u32 seqno, u32 payload_len)
-	__must_hold(&tp_vars->unacked_lock)
+	__must_hold(&tp_vars->ack_seqno_lock)
 {
 	struct batadv_tp_unacked *un, *new;
 	struct batadv_tp_unacked *safe;
@@ -1532,7 +1532,7 @@ static bool batadv_tp_handle_out_of_order(struct batadv_tp_receiver *tp_vars,
  * @tp_vars: the private data of the current TP meter session
  */
 static void batadv_tp_ack_unordered(struct batadv_tp_receiver *tp_vars)
-	__must_hold(&tp_vars->unacked_lock)
+	__must_hold(&tp_vars->ack_seqno_lock)
 {
 	struct batadv_tp_unacked *un, *safe;
 	u32 to_ack;
@@ -1602,7 +1602,7 @@ batadv_tp_init_recv(struct batadv_priv *bat_priv,
 	tp_vars->common.bat_priv = bat_priv;
 	kref_init(&tp_vars->common.refcount);
 
-	spin_lock_init(&tp_vars->unacked_lock);
+	spin_lock_init(&tp_vars->ack_seqno_lock);
 	INIT_LIST_HEAD(&tp_vars->unacked_list);
 	tp_vars->unacked_count = 0;
 
@@ -1664,7 +1664,7 @@ static void batadv_tp_recv_msg(struct batadv_priv *bat_priv,
 		WRITE_ONCE(tp_vars->last_recv_time, jiffies);
 	}
 
-	spin_lock_bh(&tp_vars->unacked_lock);
+	spin_lock_bh(&tp_vars->ack_seqno_lock);
 
 	/* if the packet is a duplicate, it may be the case that an ACK has been
 	 * lost. Resend the ACK
@@ -1680,7 +1680,7 @@ static void batadv_tp_recv_msg(struct batadv_priv *bat_priv,
 		 * not been enqueued correctly
 		 */
 		if (!batadv_tp_handle_out_of_order(tp_vars, seqno, payload_len)) {
-			spin_unlock_bh(&tp_vars->unacked_lock);
+			spin_unlock_bh(&tp_vars->ack_seqno_lock);
 			goto out;
 		}
 
@@ -1696,7 +1696,7 @@ static void batadv_tp_recv_msg(struct batadv_priv *bat_priv,
 
 send_ack:
 	to_ack = tp_vars->last_recv;
-	spin_unlock_bh(&tp_vars->unacked_lock);
+	spin_unlock_bh(&tp_vars->ack_seqno_lock);
 
 	/* send the ACK. If the received packet was out of order, the ACK that
 	 * is going to be sent is a duplicate (the sender will count them and
diff --git a/net/batman-adv/types.h b/net/batman-adv/types.h
index c194d8069774c..cd12755d21f35 100644
--- a/net/batman-adv/types.h
+++ b/net/batman-adv/types.h
@@ -1474,8 +1474,8 @@ struct batadv_tp_receiver {
 	/** @unacked_list: list of unacked packets (meta-info only) */
 	struct list_head unacked_list;
 
-	/** @unacked_lock: protect unacked_list + &batadv_tp_receiver.last_recv */
-	spinlock_t unacked_lock;
+	/** @ack_seqno_lock: protect unacked_list + &batadv_tp_receiver.last_recv */
+	spinlock_t ack_seqno_lock;
 
 	/** @unacked_count: number of unacked entries */
 	size_t unacked_count;
-- 
2.47.3

