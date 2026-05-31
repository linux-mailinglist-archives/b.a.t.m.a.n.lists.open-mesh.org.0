Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WG0/D3vxG2oWHgkAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 31 May 2026 10:29:47 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 18BF76150C1
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 31 May 2026 10:29:46 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 3AAA483F99
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 31 May 2026 10:29:46 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1780216186;
 b=iNL6VHPielvfdeLq2JuuvHaVdTl9InZhIxatevlMoAGdPiYoD754G9/EK9/3Q5YZ5TZMI
 2eNcYW1KXHeU3vCHvve4WmJMkm9DQNJ/tuF0miouulUNEh9vRfpQyjBu8zmnv3GCcch2FEp
 VDoDb0P/h4q5F3omEYvQidhia6fJ+jY=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1780216186; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=kSvlQRLlbcddYuJvHDB0lh8I2oAGDc/02EfLSGoAzxQ=;
 b=YVx1ZA2grrW2icbTaKkznouaz6PhzbAIKf0pfg2LAzjAGDxpKAho+EkRVKXrsRhwviLhL
 nrIcX+jNtgYNQZFvn92UjoCj4ZQQB27wUIuFcJnRB/fVN8vheD6l2EDSFYEZQuH3s1PwloM
 CIis19k3MEajp4RzLqzVtz9cok/4PR0=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass (Used From Domain Record) header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org
 [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id CAEC881461
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 31 May 2026 10:29:24 +0200 (CEST)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1780216164;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=kSvlQRLlbcddYuJvHDB0lh8I2oAGDc/02EfLSGoAzxQ=;
	b=hkvJGh7Rh8dZhkTFd/xIG2bh46M+xIoV1SJjAkplyaA+RDQ7uMwufcASq8QtMx8O87Eenl
	I5m0IpCrbDj2TFeht6EhgcKQboSo6RtM5U6sfNe1bwhTyeu65tE3OhKe6zO9Ut58h5YV6+
	5z1gBlD17YIhESIdmBQ+B0uYNgBxTDI=
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1780216164;
	b=dLWnSCF6rPhXvYmSbwJUDOazjJZNqmg0cXSvMVwj4Yz23Ai2dvK0V9EISs5FD7JuqQYcC5
	fpiDJmIqwRSyfxAk9mcIr4IqOdOLxhaL6gYroQZgesziC+Nc1mGgJZu6VGPzwL5q/efzaS
	0ryNYtOhqPV4IEeazudS2vD7GT0/eio=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=TalIAixz;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
Received: by dvalin.narfation.org (Postfix) id C42FE20195;
	Sun, 31 May 2026 08:29:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1780216163;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=kSvlQRLlbcddYuJvHDB0lh8I2oAGDc/02EfLSGoAzxQ=;
	b=TalIAixzN3XLItfOUXV30YbYkiwgw+4d9kMyxTS5Yy+VNYK7Ioe/dYML82TFxm66T5NP3h
	30QCkCh3IIryMfLIje7p6RmWTsMso2RoBvm26MHJisOOFJLmE/tLOaXrbx1H2RqUQuIRIz
	25yhftjyHVtC3FMZ9R4afJcx57xrhGs=
From: Sven Eckelmann <sven@narfation.org>
Date: Sun, 31 May 2026 10:28:53 +0200
Subject: [PATCH batadv v4 3/6] batman-adv: tp_meter: avoid window underflow
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260531-tp-reason-missing-v4-3-5d2556e00128@narfation.org>
References: <20260531-tp-reason-missing-v4-0-5d2556e00128@narfation.org>
In-Reply-To: <20260531-tp-reason-missing-v4-0-5d2556e00128@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1713; i=sven@narfation.org;
 h=from:subject:message-id; bh=jyveDbccPzWTPD4AiB0lATsmESJiokFExcxApzT5/gk=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDFnSHyO0GfLulljKcBs/vrRDsU7mwanXb6WaH/QvCDNh/
 NC/8LJ0RykLgxgXg6yYIsueK/nnN7O/lf887eNRmDmsTCBDGLg4BWAih80YGbZIRDwRnFC5weTy
 lkkzSxdeKnTlzO1oYzfdVv+QY5vk0kZGhuPbzsd9U7ozYdoVPZM3kjqfCuUeyzk7Sq98tbP18Os
 TTGwA
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: BDDKXMOSBCJOIY7VHDEZBYUECCBK72HA
X-Message-ID-Hash: BDDKXMOSBCJOIY7VHDEZBYUECCBK72HA
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/BDDKXMOSBCJOIY7VHDEZBYUECCBK72HA/>
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
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[narfation.org:email,narfation.org:mid,narfation.org:dkim];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,b.a.t.m.a.n=lfdr.de];
	RCPT_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[narfation.org:+]
X-Rspamd-Queue-Id: 18BF76150C1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

In batadv_tp_avail(), win_left is calculated with 32-bit unsigned
arithmetic: win_left = win_limit - tp_vars->last_sent;

During Fast Recovery, cwnd is inflated and last_sent advances rapidly. When
Fast Recovery ends, cwnd drops abruptly back to ss_threshold. If the newly
shrunk win_limit is less than last_sent, the unsigned subtraction will
underflow, wrapping to a massive positive value. Instead of returning that
the window is full (unavailable), it returns that the sender can continue
sending.

To handle this situation, it must be checked whether the windows end
sequence number (win_limit) has to be compared with the last sent sequence
number. If it would be before the last sent sequence number, then more acks
are needed before the transmission can be started again.

Fixes: 98d7a766b645 ("batman-adv: throughput meter implementation")
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 net/batman-adv/tp_meter.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/net/batman-adv/tp_meter.c b/net/batman-adv/tp_meter.c
index 0325b951..09e46b04 100644
--- a/net/batman-adv/tp_meter.c
+++ b/net/batman-adv/tp_meter.c
@@ -817,10 +817,15 @@ static void batadv_tp_recv_ack(struct batadv_priv *bat_priv,
 static bool batadv_tp_avail(struct batadv_tp_vars *tp_vars,
 			    size_t payload_len)
 {
+	u32 last_sent = tp_vars->last_sent;
 	u32 win_left, win_limit;
 
 	win_limit = atomic_read(&tp_vars->last_acked) + tp_vars->cwnd;
-	win_left = win_limit - tp_vars->last_sent;
+
+	if (batadv_seq_before(last_sent, win_limit))
+		win_left = win_limit - last_sent;
+	else
+		win_left = 0;
 
 	return win_left >= payload_len;
 }

-- 
2.47.3

