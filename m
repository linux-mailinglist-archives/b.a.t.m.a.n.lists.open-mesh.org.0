Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KGQ9Nu0NDGrRVAUAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 19 May 2026 09:14:53 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 82DDB578CE3
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 19 May 2026 09:14:52 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id C7AA08155F
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 19 May 2026 09:14:52 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1779174892;
 b=HeO0lOUpMRRawTRH1Ks0dIafU2AprKoV/OrhvWrBF4NohZryzOSGoXGEes9e9hx+4Qfh9
 h6H1fLs+3mJRClTTQv+FCYrjFeqSwNUnFZh33b0K6siEuzWGm8AxRp7Kp8Sy5eBOYVj4e5t
 wrSbKxArxuFF4O0jDqYlVGOCLNWvQXQ=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1779174892; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=hCJAOgbRvT5JNxbDZc2VDCR68Y74NZCyAJyuP51PccQ=;
 b=plTqhO41bRoitHA7vpwPUULUCoHqxQtVpOiMpRIB47Boge3Ex0H6I97zqtQQJKXllvbVf
 P0dsEt9amp5d4sEKRPrFtCFHXUlDrhelg21hUgBQWGbkLBzwNoiFKSFOTjkbgCVZbUtNd64
 fbL2M0aRF3MkUyB4Mcm0VDrpFj+aqDE=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass (Used From Domain Record) header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id 89D4A80D87
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 19 May 2026 09:04:58 +0200 (CEST)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1779174298;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=hCJAOgbRvT5JNxbDZc2VDCR68Y74NZCyAJyuP51PccQ=;
	b=uz4ldZ4K9MDIeMDyDl6pgGjkTUrSgfR6S1qS3IEynUS3viSfdwqvdOUOuXhCx3C3qO8MSI
	gFAqK3xSYKJ6jwO/swRjoWzL/toeAwRIdZ/PmGX9n0EhdSYQ4S9LSp63jF9OV+exJB0nJp
	y3kIeA3WmWnecQ8W6gibQNQVHWw/KBY=
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1779174298;
	b=1LkqFGTQeUAuU5kX1/EDgwWM1NreY4DHeqlir4fGGgLY89xavYNbENhnMnaE+UpLtl68H2
	OAcRYMlbujXcf1Lw/G4An8YdAp5+pJ5DTt8u1YXu1MCLoPaXi9LUEnnOgw5QWDOrYmVKpb
	kNewf/fEUJdYfrGhssmySJxo93Mhw/k=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=ReBtQH2h;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
Received: by dvalin.narfation.org (Postfix) id 48E7B1FD9C;
	Tue, 19 May 2026 07:04:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1779174298;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=hCJAOgbRvT5JNxbDZc2VDCR68Y74NZCyAJyuP51PccQ=;
	b=ReBtQH2hiSyUE8D8g/NYHWH40Q8P7IpSc2Jin2AcAovGUl1G9sxThG/v60nCQC91blI8X3
	+j65NF4xLrsmz8Xf+QTiMDmxJM5wtop0to+RF53HTVGstrbu7b1j5vfTNmcODCDdrUgPZu
	qgAn1ZUySoKCRc1fmLF+ZRguSFtNufA=
From: Sven Eckelmann <sven@narfation.org>
Date: Tue, 19 May 2026 09:04:42 +0200
Subject: [PATCH batadv v2 7/7] batman-adv: replace non-atomic last_acked
 with (READ|WRITE)_ONCE
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260519-atomic-to-write-once-v2-7-1b643e847a56@narfation.org>
References: <20260519-atomic-to-write-once-v2-0-1b643e847a56@narfation.org>
In-Reply-To: <20260519-atomic-to-write-once-v2-0-1b643e847a56@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=4258; i=sven@narfation.org;
 h=from:subject:message-id; bh=13/HQhtOBKIZOZHJ6oRT36k1KEAOLEen56K4pN2ERuA=;
 b=kA0DAAoWTQ93K9MU9csByyZiAGoMC4bIfwGl1OE/fsQDxo5A5wOZp6z5vKr+9WyhDLiC85etp
 Yh1BAAWCgAdFiEEvNRvz7MH7R/zlvHFTQ93K9MU9csFAmoMC4YACgkQTQ93K9MU9cvv5QEAnm3N
 ru83EmAC+xOB+8a7ScilfuMC1gORKckRCH/cSGEA/3nUOGBmja2Upgb5SnkKFbfIiElb3HJ/k62
 OyI648UQI
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: UANAZSHLKNOQED4R3YBBZLURPRTRUTZT
X-Message-ID-Hash: UANAZSHLKNOQED4R3YBBZLURPRTRUTZT
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/UANAZSHLKNOQED4R3YBBZLURPRTRUTZT/>
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
	ASN(0.00)[asn:24940, ipnet:136.243.0.0/16, country:DE];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sven@narfation.org,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	DBL_BLOCKED_OPENRESOLVER(0.00)[diktynna.open-mesh.org:rdns,diktynna.open-mesh.org:helo,narfation.org:email,narfation.org:mid,narfation.org:dkim];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,b.a.t.m.a.n=lfdr.de];
	DKIM_TRACE(0.00)[narfation.org:+]
X-Rspamd-Queue-Id: 82DDB578CE3
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

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
index fef98fbe..ec2b4d72 100644
--- a/net/batman-adv/tp_meter.c
+++ b/net/batman-adv/tp_meter.c
@@ -523,14 +523,14 @@ static void batadv_tp_sender_timeout(struct timer_list *t)
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
@@ -645,6 +645,7 @@ static void batadv_tp_recv_ack(struct batadv_priv *bat_priv,
 	const unsigned char *dev_addr;
 	size_t packet_len, mss;
 	u32 rtt, recv_ack, cwnd;
+	u32 last_acked;
 
 	packet_len = BATADV_TP_PLEN;
 	mss = BATADV_TP_PLEN;
@@ -665,8 +666,8 @@ static void batadv_tp_recv_ack(struct batadv_priv *bat_priv,
 		goto out;
 
 	/* old ACK? silently drop it.. */
-	if (batadv_seq_before(ntohl(icmp->seqno),
-			      (u32)atomic_read(&tp_vars->last_acked)))
+	last_acked = READ_ONCE(tp_vars->last_acked);
+	if (batadv_seq_before(ntohl(icmp->seqno), last_acked))
 		goto out;
 
 	primary_if = batadv_primary_if_get_selected(bat_priv);
@@ -688,7 +689,7 @@ static void batadv_tp_recv_ack(struct batadv_priv *bat_priv,
 	recv_ack = ntohl(icmp->seqno);
 
 	/* check if this ACK is a duplicate */
-	if (atomic_read(&tp_vars->last_acked) == recv_ack) {
+	if (last_acked == recv_ack) {
 		atomic_inc(&tp_vars->dup_acks);
 		if (atomic_read(&tp_vars->dup_acks) != 3)
 			goto out;
@@ -723,8 +724,7 @@ static void batadv_tp_recv_ack(struct batadv_priv *bat_priv,
 		spin_unlock_bh(&tp_vars->cwnd_lock);
 	} else {
 		/* count the acked data */
-		atomic64_add(recv_ack - atomic_read(&tp_vars->last_acked),
-			     &tp_vars->tot_sent);
+		atomic64_add(recv_ack - last_acked, &tp_vars->tot_sent);
 		/* reset the duplicate ACKs counter */
 		atomic_set(&tp_vars->dup_acks, 0);
 
@@ -756,11 +756,11 @@ static void batadv_tp_recv_ack(struct batadv_priv *bat_priv,
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
@@ -782,7 +782,7 @@ static bool batadv_tp_avail(struct batadv_tp_vars *tp_vars,
 {
 	u32 win_left, win_limit;
 
-	win_limit = atomic_read(&tp_vars->last_acked) + tp_vars->cwnd;
+	win_limit = READ_ONCE(tp_vars->last_acked) + tp_vars->cwnd;
 	win_left = win_limit - tp_vars->last_sent;
 
 	return win_left >= payload_len;
@@ -1011,7 +1011,7 @@ void batadv_tp_start(struct batadv_priv *bat_priv, const u8 *dst,
 	tp_vars->icmp_uid = icmp_uid;
 
 	tp_vars->last_sent = BATADV_TP_FIRST_SEQ;
-	atomic_set(&tp_vars->last_acked, BATADV_TP_FIRST_SEQ);
+	WRITE_ONCE(tp_vars->last_acked, BATADV_TP_FIRST_SEQ);
 	tp_vars->fast_recovery = false;
 	tp_vars->recover = BATADV_TP_FIRST_SEQ;
 
diff --git a/net/batman-adv/types.h b/net/batman-adv/types.h
index 154de214..87a835fe 100644
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

