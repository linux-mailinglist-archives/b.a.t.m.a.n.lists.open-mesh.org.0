Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id cTjZLA6sH2pbogAAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 03 Jun 2026 06:22:38 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 605E9634226
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 03 Jun 2026 06:22:38 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=narfation.org header.s=20121 header.b=PdPRBdtJ;
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 136.243.236.17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	dmarc=pass (policy=none) header.from=narfation.org;
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 3E0D581CDF
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 03 Jun 2026 06:22:38 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1780460558;
 b=of+mrPMOz0gm+u2KtHSXCd2LHwcnZtpXxZ0ZS/nc4oQCYtRQkHAgVgBS006oF6BMp3Teb
 A2+YHWBuYLiehL3nD9cMPprYBOD6vtG7ziqRRFgHBfjv8sO3oey5rnC1g+GGA0xUWb6RpPv
 aPT02iPv37+MVblV3859rMYDi0NcQK8=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1780460558; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=wYLeAOdIVdwpGnywj6CvQKoN2mbEqYjidoAUSnQKgTk=;
 b=o35l0gxuSMzIYsmALx7l01InTFgOEkp7DjJHXwj7cghTvMzIwB/jf08dCGV8d0rzmx18F
 oMHvTvPCl8VugfEzN8Nts1JYQ+Mb0LL9W+BlK1hztH9rYqJsVxficRDLE4w5QZf3ckmUjbh
 vkLo5c3yawpDCPGE7Pi/2zyZNlFR+zE=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id 36B4B840A1
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 03 Jun 2026 06:17:57 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1780460277;
	b=QgaoqdZ9fxTTuMqkzNGP4zGFT1GCJVWSCI2PDH86Q0kxe+opHpNAQ18B3NWmJJ35C5FMxI
	NN1Svv4A9TByXq4G2v1dzkTeu1ogEefL3CwZ1N+SMmJY0pAN3GQPZPMkcTEpsIK/QGnwIs
	6ElFAjxdaNqP0rPRbUbEDz4jVqbkLyI=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=PdPRBdtJ;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1780460277;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=wYLeAOdIVdwpGnywj6CvQKoN2mbEqYjidoAUSnQKgTk=;
	b=iPFmCIUV32Rsu11pKIiBiu85teLB24IDYHH6Kvuj45GItcOQntzCo7NEteSgV8S1/tcMuQ
	vpo0pkl5leXIGqmI/bLdhocGiDVsxqDRFTJ1Ho1tP9zASBkQWg7UuNoNnsl10oD+O8MhJX
	P19pHJ2kHrYM6FQzayvrfAjB1qOaU8s=
Received: by dvalin.narfation.org (Postfix) id E2F4D20131;
	Wed, 03 Jun 2026 04:17:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1780460277;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=wYLeAOdIVdwpGnywj6CvQKoN2mbEqYjidoAUSnQKgTk=;
	b=PdPRBdtJIJndfruCQkBFee5njBCX1r/im+hPWrrg/lUo6+lCr00Ib4VARsarCizwnzZ+9L
	XmRisiL+8tUg2IvPGm7Uqf65VQqW5keCPKVHgVFN4K24V11op2ABRuBPL0D2TwyiI7GIZv
	xEMBvemkA29f3FTTkxzEcQuHJfRp1NM=
From: Sven Eckelmann <sven@narfation.org>
Date: Wed, 03 Jun 2026 06:17:18 +0200
Subject: [PATCH batadv v6 06/11] batman-adv: tp_meter: fix fast recovery
 precondition
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260603-tp-reason-missing-v6-6-7011620f93a5@narfation.org>
References: <20260603-tp-reason-missing-v6-0-7011620f93a5@narfation.org>
In-Reply-To: <20260603-tp-reason-missing-v6-0-7011620f93a5@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1335; i=sven@narfation.org;
 h=from:subject:message-id; bh=77C0w5SL2Ou/2PMIk/V4vrAUafjbCBpJaMBW7o68ZAc=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDFnyq04XmKwtTOHJ6onwCki7buS/7n/MvxmKxnHiG/ftn
 NxgXLy2o5SFQYyLQVZMkWXPlfzzm9nfyn+e9vEozBxWJpAhDFycAjCR31MYGXZ2b6zdsGu3Wkz2
 aQ6H9LB35W/fPLnIu26B/e2bB79KL+1hZGhrmOR96mT2orOBh5MyLTjbnjA2dn90U+iyu3N0w9K
 VW1kB
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: QN54UMV6L536JRMU53S35N3BVHHQNPLQ
X-Message-ID-Hash: QN54UMV6L536JRMU53S35N3BVHHQNPLQ
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/QN54UMV6L536JRMU53S35N3BVHHQNPLQ/>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[diktynna.open-mesh.org:helo,diktynna.open-mesh.org:rdns,lists.open-mesh.org:from_smtp,narfation.org:mid,narfation.org:dkim,narfation.org:from_mime,narfation.org:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 605E9634226

The fast recovery precondition checks if the recover (initialized to
BATADV_TP_FIRST_SEQ) is bigger than the received ack. But since recover is
only updated when this check is successful, it will never enter the fast
recovery mode.

According to RFC6582 Section 3.2 step 2, the check should actually be
different:

> When the third duplicate ACK is received, the TCP sender first
> checks the value of recover to see if the Cumulative
> Acknowledgment field covers more than recover

The precondition must therefore check if recover is smaller than the
received ack - basically swapping the operands of the current check.

Fixes: 98d7a766b645 ("batman-adv: throughput meter implementation")
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 net/batman-adv/tp_meter.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/batman-adv/tp_meter.c b/net/batman-adv/tp_meter.c
index 7760ace7..72ff3526 100644
--- a/net/batman-adv/tp_meter.c
+++ b/net/batman-adv/tp_meter.c
@@ -733,7 +733,7 @@ static void batadv_tp_recv_ack(struct batadv_priv *bat_priv,
 		if (atomic_read(&tp_vars->dup_acks) != 3)
 			goto out;
 
-		if (recv_ack >= tp_vars->recover)
+		if (tp_vars->recover >= recv_ack)
 			goto out;
 
 		/* if this is the third duplicate ACK do Fast Retransmit */

-- 
2.47.3

