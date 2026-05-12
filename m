Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kFJXNLGGA2ot6wEAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 12 May 2026 21:59:45 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 72F49528E60
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 12 May 2026 21:59:45 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 4A20E85D88
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 12 May 2026 21:59:45 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1778615985;
 b=xvsCdxfvyUHMlX695tPZB4dHfMMtE2JPskk+M+N6gcQqFO+TpWqKOPetns4afdOlotz3M
 Yxhj0lcxlY5hLAksAvQOWVo4QF/A56q/CdCLnG38e5KQKTXR9m/kxNVHi0CXikcrNr1Rw8l
 XwqdVp8NfwzB9Xz/+botqw38V7u6Cx0=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1778615985; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=BDwAYeDN2Go6jV/3EjhYmF/N+DV4wS1uhR+F2xyoO3o=;
 b=Eo7spbUhasHu+fmXiKrzJQzE9/rcrpoLEfzjuQCCL+NmdBj1QZzpesoHl/fHS9lbCNKL1
 +89S8OG2RzlOZ9SV27Z38pccgbpCpR9JiVnSfRMfrHv868A2rmkwBKkJu/QaYMl/0Zb2ZOs
 oqE7JKjL3cI8+hnUKaMgRoHm3zr5qio=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass (Used From Domain Record) header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id 800D485661
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 12 May 2026 21:53:46 +0200 (CEST)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1778615626;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=BDwAYeDN2Go6jV/3EjhYmF/N+DV4wS1uhR+F2xyoO3o=;
	b=L4QkfYTY+4niYQeZXQVzOl5b/u6fVbYG1aYz/o8BHgyIrGZE+ltE3qBCyTsxxsyE4YFFA/
	BOr9ZUFPUSiM7rMKzzCHccG0MEKMtcyIvVr+9kGTuZ9xkTqow3CR1nftji3Msr4KbsVBTm
	qi+i+n1/vykY3cfeesgR0FqB6yaOyN0=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=cT554C7U;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1778615626;
	b=hLn8b3IgpDTvF0cwaKk1ISfNY5JIYWn15S64ic2eIDm8G+126xCVu9e0rYyA5xXX5pdmQK
	L9Kp9PNeUHDib6zRQ9eaxK/PPuFZd0lyDTrIIWlP/QoC0EH2ZqMNscU9jr3X/ECtkfWpgk
	KPEA+ehWVa3u5dHjmu4C+OFpnctJwc4=
Received: by dvalin.narfation.org (Postfix) id 376C61FD98;
	Tue, 12 May 2026 19:53:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1778615626;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=BDwAYeDN2Go6jV/3EjhYmF/N+DV4wS1uhR+F2xyoO3o=;
	b=cT554C7UXZToy1objFU/Vk6gfsRS6hGHsFNZ6hBbnQTMric6A+zCUanXlFwhYEq2mmzitm
	fPGmDrZSxOd/2UfRjOwX7uAWtn0pZAsSZehGGLGHsXyzlKos3vZtzIp9+qsvuCwgbSDdsM
	WpATBi9zMqFN46/zUC61NCR+EVzeluk=
From: Sven Eckelmann <sven@narfation.org>
Date: Tue, 12 May 2026 21:53:12 +0200
Subject: [PATCH batadv 7/7] batman-adv: replace non-atomic last_acked with
 (READ|WRITE)_ONCE
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260512-atomic-to-write-once-v1-7-76a4272fac0d@narfation.org>
References: <20260512-atomic-to-write-once-v1-0-76a4272fac0d@narfation.org>
In-Reply-To: <20260512-atomic-to-write-once-v1-0-76a4272fac0d@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=4258; i=sven@narfation.org;
 h=from:subject:message-id; bh=YXlo7X1uQOAuql86ZNa6u4zYL1XxiJDMljZh9+aC/0E=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDFnMrSprDh9Xt5pr6mfA4n3MyptjB5vAtkdLLYVNs4WWv
 y7qvcXaUcrCIMbFICumyLLnSv75zexv5T9P+3gUZg4rE8gQBi5OAZjIoV5GhjlWVjd6OJZu/r3g
 1YO/bzg/N03W3fN9x+rp0+c7dPc8cPjP8D8ysNw3dOkU44+Kr1Yu47eIndIWedNzmu7SzTvOpWX
 YrmACAA==
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: CLBKA5UCJCVOWF4YALKAB5OUJQEBAST7
X-Message-ID-Hash: CLBKA5UCJCVOWF4YALKAB5OUJQEBAST7
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/CLBKA5UCJCVOWF4YALKAB5OUJQEBAST7/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>
X-Rspamd-Queue-Id: 72F49528E60
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.01 / 15.00];
	ARC_ALLOW(-1.00)[open-mesh.org:s=20121:i=2];
	DMARC_POLICY_ALLOW(-0.50)[narfation.org,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[narfation.org:s=20121];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:24940, ipnet:136.243.0.0/16, country:DE];
	TAGGED_RCPT(0.00)[b.a.t.m.a.n];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	R_SPF_NA(0.00)[no SPF record];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sven@narfation.org,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[narfation.org:email,narfation.org:mid,narfation.org:dkim,diktynna.open-mesh.org:helo,diktynna.open-mesh.org:rdns];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,b.a.t.m.a.n=lfdr.de];
	RCPT_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[narfation.org:+]
X-Rspamd-Action: no action

The last_acked of a tp_meter transfer is only accessed as plain
loads/stores and does not require full atomic_t semantics. Convert to an
native integer and replace its users with READ_ONCE()/WRITE_ONCE() to avoid
load/store tearing.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 net/batman-adv/tp_meter.c | 22 +++++++++++-----------
 net/batman-adv/types.h    |  2 +-
 2 files changed, 12 insertions(+), 12 deletions(-)

diff --git a/net/batman-adv/tp_meter.c b/net/batman-adv/tp_meter.c
index 52dd848f..12738a19 100644
--- a/net/batman-adv/tp_meter.c
+++ b/net/batman-adv/tp_meter.c
@@ -529,14 +529,14 @@ static void batadv_tp_sender_timeout(struct timer_list *t)
 	batadv_dbg(BATADV_DBG_TP_METER, bat_priv,
 		   "Meter: RTO fired during test towards %pM! cwnd=%u new ss_thr=%u, resetting last_sent to %u\n",
 		   tp_vars->other_end, tp_vars->cwnd, tp_vars->ss_threshold,
-		   atomic_read(&tp_vars->last_acked));
+		   READ_ONCE(tp_vars->last_acked));
 
 	tp_vars->cwnd = BATADV_TP_PLEN * 3;
 
 	spin_unlock_bh(&tp_vars->cwnd_lock);
 
 	/* resend the non-ACKed packets.. */
-	tp_vars->last_sent = atomic_read(&tp_vars->last_acked);
+	tp_vars->last_sent = READ_ONCE(tp_vars->last_acked);
 	wake_up(&tp_vars->more_bytes);
 
 	batadv_tp_reset_sender_timer(tp_vars);
@@ -651,6 +651,7 @@ static void batadv_tp_recv_ack(struct batadv_priv *bat_priv,
 	const unsigned char *dev_addr;
 	size_t packet_len, mss;
 	u32 rtt, recv_ack, cwnd;
+	u32 last_acked;
 
 	packet_len = BATADV_TP_PLEN;
 	mss = BATADV_TP_PLEN;
@@ -668,8 +669,8 @@ static void batadv_tp_recv_ack(struct batadv_priv *bat_priv,
 		goto out;
 
 	/* old ACK? silently drop it.. */
-	if (batadv_seq_before(ntohl(icmp->seqno),
-			      (u32)atomic_read(&tp_vars->last_acked)))
+	last_acked = READ_ONCE(tp_vars->last_acked);
+	if (batadv_seq_before(ntohl(icmp->seqno), last_acked))
 		goto out;
 
 	primary_if = batadv_primary_if_get_selected(bat_priv);
@@ -691,7 +692,7 @@ static void batadv_tp_recv_ack(struct batadv_priv *bat_priv,
 	recv_ack = ntohl(icmp->seqno);
 
 	/* check if this ACK is a duplicate */
-	if (atomic_read(&tp_vars->last_acked) == recv_ack) {
+	if (last_acked == recv_ack) {
 		atomic_inc(&tp_vars->dup_acks);
 		if (atomic_read(&tp_vars->dup_acks) != 3)
 			goto out;
@@ -726,8 +727,7 @@ static void batadv_tp_recv_ack(struct batadv_priv *bat_priv,
 		spin_unlock_bh(&tp_vars->cwnd_lock);
 	} else {
 		/* count the acked data */
-		atomic64_add(recv_ack - atomic_read(&tp_vars->last_acked),
-			     &tp_vars->tot_sent);
+		atomic64_add(recv_ack - last_acked, &tp_vars->tot_sent);
 		/* reset the duplicate ACKs counter */
 		atomic_set(&tp_vars->dup_acks, 0);
 
@@ -759,11 +759,11 @@ static void batadv_tp_recv_ack(struct batadv_priv *bat_priv,
 			goto move_twnd;
 		}
 
-		if (recv_ack - atomic_read(&tp_vars->last_acked) >= mss)
+		if (recv_ack - last_acked >= mss)
 			batadv_tp_update_cwnd(tp_vars, mss);
 move_twnd:
 		/* move the Transmit Window */
-		atomic_set(&tp_vars->last_acked, recv_ack);
+		WRITE_ONCE(tp_vars->last_acked, recv_ack);
 	}
 
 	wake_up(&tp_vars->more_bytes);
@@ -785,7 +785,7 @@ static bool batadv_tp_avail(struct batadv_tp_vars *tp_vars,
 {
 	u32 win_left, win_limit;
 
-	win_limit = atomic_read(&tp_vars->last_acked) + tp_vars->cwnd;
+	win_limit = READ_ONCE(tp_vars->last_acked) + tp_vars->cwnd;
 	win_left = win_limit - tp_vars->last_sent;
 
 	return win_left >= payload_len;
@@ -1014,7 +1014,7 @@ void batadv_tp_start(struct batadv_priv *bat_priv, const u8 *dst,
 	tp_vars->icmp_uid = icmp_uid;
 
 	tp_vars->last_sent = BATADV_TP_FIRST_SEQ;
-	atomic_set(&tp_vars->last_acked, BATADV_TP_FIRST_SEQ);
+	WRITE_ONCE(tp_vars->last_acked, BATADV_TP_FIRST_SEQ);
 	tp_vars->fast_recovery = false;
 	tp_vars->recover = BATADV_TP_FIRST_SEQ;
 
diff --git a/net/batman-adv/types.h b/net/batman-adv/types.h
index e1f405f6..37088ab6 100644
--- a/net/batman-adv/types.h
+++ b/net/batman-adv/types.h
@@ -1362,7 +1362,7 @@ struct batadv_tp_vars {
 	u32 ss_threshold;
 
 	/** @last_acked: last acked byte */
-	atomic_t last_acked;
+	u32 last_acked;
 
 	/** @last_sent: last sent byte, not yet acked */
 	u32 last_sent;

-- 
2.47.3

