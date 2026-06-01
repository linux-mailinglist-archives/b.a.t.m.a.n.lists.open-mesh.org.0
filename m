Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iLRBCU4RHWrLVQkAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 01 Jun 2026 06:57:50 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id BFD0B61987C
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 01 Jun 2026 06:57:49 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id D697084284
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 01 Jun 2026 06:57:48 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1780289868;
 b=q7arA9y+mO5gPD7gBEmn0rXLE5HAvj8PELzlASPopcbtdMD7vPnc+UfSO07ioNP+vew2L
 a9XgpcuYsT1XotmxqiN3RzJDe5O/FPHdlDrhOkMkea/zx6beXkNnIttBCrvJeh5mEQbDrr4
 hsIa+9eIRU0gvwAJXeakCRn9fs7rOUg=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1780289868; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=VFU0SA6xnNgGDiNxjCGUuHMPixU9SN9q3JPohit04oY=;
 b=b5a1uvGQTgEIacspoU7QNZkPfkm+Ex7KTyt1HxB9w08mTFFRj8cGjHb2M3kYS/1AaV6N0
 WYXmHaDTNm148bbP7ICel3/mmMjfE1Vi+ZLgfYL8Z7O6XriOumnx86hGhkFeDLqD2rU4WCp
 EncV3C4RXawSdQqLAV6Wwa7TzQs/HcM=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass (Used From Domain Record) header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id AB52A83FBF
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 01 Jun 2026 06:54:32 +0200 (CEST)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1780289672;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=VFU0SA6xnNgGDiNxjCGUuHMPixU9SN9q3JPohit04oY=;
	b=GJ6N2Z2KUyW3hcCnn8RfDI+P6G+lwwBlKngVzIDWrA1UQDpWrH5+3vCRQhZq8cEC1U7MQ9
	gCMX3M0Ax90FHHpqVpKF2bJKBgT8RaJC5hpNxv51pyBT0P4qwirHg7r1Jt9YBOL+s9zOhi
	awx9yanJCjVzEdQw3M/5W+cxK6zNfIQ=
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1780289672;
	b=rTWVIg9tYcsL8rVH278PtusvaHfrRiS2pINsXmNSK0FF3xYVXlTiQNjiOVdEDgBsnyZYcY
	EB6brG+8KA1TsOkF6Z0mrnvJPnuvPbcR32WmX0GEvJghekb7Gf6eOJnntMr65J3o6S5Poy
	L8nhdU0Aj5VZ+504j46hMz8UhA2UJlY=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=OzSYUoBZ;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
Received: by dvalin.narfation.org (Postfix) id 686FA1FEED;
	Mon, 01 Jun 2026 04:54:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1780289672;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=VFU0SA6xnNgGDiNxjCGUuHMPixU9SN9q3JPohit04oY=;
	b=OzSYUoBZ0mZHmWfOx7T8tFwajaAhzOcl81OxmXaMPC96IGDY/Bjhsbg3QuyWXITv9IG7Gh
	R8/aOJivTfpnvYPfoysTMQuwVdTWzI1XziVtnYFGQWx+vb1ZL5uy8xTrOfuNRh1MwHNHys
	d3ELfy5XM4JAMiDHnSUH1hqHasLZoF4=
From: Sven Eckelmann <sven@narfation.org>
Date: Mon, 01 Jun 2026 06:54:18 +0200
Subject: [PATCH batadv v5 4/7] batman-adv: tp_meter: avoid divide-by-zero
 for dec_cwnd
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260601-tp-reason-missing-v5-4-78a5b8fe6e67@narfation.org>
References: <20260601-tp-reason-missing-v5-0-78a5b8fe6e67@narfation.org>
In-Reply-To: <20260601-tp-reason-missing-v5-0-78a5b8fe6e67@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1965; i=sven@narfation.org;
 h=from:subject:message-id; bh=XFbfsR0zcvk8KuH3lmGomcMA+/CWCxdS4cNsk5q9J3M=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDFmyAtXMOzKmmn34fdvuUqB6YPqWTXmtZV/y3j3yb15ee
 zVWxO5hRykLgxgXg6yYIsueK/nnN7O/lf887eNRmDmsTCBDGLg4BWAivwoYGS7rVlxfUPn6tmdO
 R4DYe9d7XQ/t5nh0bz2oKbvlmFpN6QpGhkUl/7Mlo6IPaM+Idnn9j/3Xxd2XHA5rtZTb3X4Tcur
 /VHYA
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: Z3CPATYCJU3CYJOPBXVK5QUQYBXL5WOC
X-Message-ID-Hash: Z3CPATYCJU3CYJOPBXVK5QUQYBXL5WOC
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/Z3CPATYCJU3CYJOPBXVK5QUQYBXL5WOC/>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[diktynna.open-mesh.org:rdns,diktynna.open-mesh.org:helo,narfation.org:email,narfation.org:mid,narfation.org:dkim];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,b.a.t.m.a.n=lfdr.de];
	RCPT_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[narfation.org:+]
X-Rspamd-Queue-Id: BFD0B61987C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The cwnd is always MSS <= cwnd <= 0x20000000. But the calculation in
batadv_tp_update_cwnd() assumes unsigned 32 bit arithmetics.

    ((mss * 8) ** 2) / (cwnd * 8)

In case cwnd is actually 0x20000000, it will be shifted by 3 bit to the
left end up at 0x100000000 or U32_MAX + 1. It will therefore wrap around
and be 0 - resulting in:

    ((mss * 8) ** 2) / 0

This is of course invalid and cannot be calculated. The calculation should
must be simplified to avoid this overflow:

   (mss ** 2) * 8 / cwnd

It will keep the precision enhancement from the scaling (by 8) but avoid
the overflow in the divisor.

In theory, there could still be an overflow in the dividend. It is at the
moment fixed to BATADV_TP_PLEN in batadv_tp_recv_ack() - so it is not an
imminent problem. But allowing it to use the whole u32 bit range, would
mean that it can still use up to 67 bits. To keep this calculation safe for
32 bit arithmetic, mss must never use more than floor((32 - 3) / 2) bits -
or in other words: must never be larger than 16383.

Fixes: 98d7a766b645 ("batman-adv: throughput meter implementation")
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 net/batman-adv/tp_meter.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/net/batman-adv/tp_meter.c b/net/batman-adv/tp_meter.c
index 09e46b04..195821b2 100644
--- a/net/batman-adv/tp_meter.c
+++ b/net/batman-adv/tp_meter.c
@@ -154,9 +154,12 @@ static void batadv_tp_update_cwnd(struct batadv_tp_vars *tp_vars, u32 mss)
 		return;
 	}
 
+	/* prevent overflow in (mss * mss) << 3 */
+	mss = min_t(u32, mss, (1U << 14) - 1);
+
 	/* increment CWND at least of 1 (section 3.1 of RFC5681) */
 	tp_vars->dec_cwnd += max_t(u32, 1U << 3,
-				   ((mss * mss) << 6) / (tp_vars->cwnd << 3));
+				   ((mss * mss) << 3) / tp_vars->cwnd);
 	if (tp_vars->dec_cwnd < (mss << 3)) {
 		spin_unlock_bh(&tp_vars->cwnd_lock);
 		return;

-- 
2.47.3

