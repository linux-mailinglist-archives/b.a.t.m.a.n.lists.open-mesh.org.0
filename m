Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id aLl2K1nwKmrazgMAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 11 Jun 2026 19:28:57 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 565A8673F94
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 11 Jun 2026 19:28:57 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=narfation.org header.s=20121 header.b="TJQS4h/P";
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 2a01:4f8:241:fc1:136:243:236:17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	dmarc=pass (policy=none) header.from=narfation.org;
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 3FB07843D6
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 11 Jun 2026 19:28:57 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1781198937;
 b=zWt94yYAbq7871zfTbNRvpRNCQ1MSRNYrl9lwU6k+E2YRFtck+FhBPFHOMy40CINUuChW
 BOX0C8Xk2UDEnWnoDmCqLH6L1q83uPMF+vFmPUm9g+IAawx87l0BfBJjtZXoFOjgiWD4L/y
 GuhBfHO38gA+hZMAVaQBDaUNcuLNbOQ=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1781198937; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=r8qaTB7a0Pocjd91E9coVkVuhnESQJ1hjFsKnGTpRQQ=;
 b=AAhyTZh73WPmKdn7V2q7q3pEr28wdpdFxIypGMcf1bCcP0Qv5PsaGAYwf57DgMbkKFYCS
 ZwnoMNtrQXMygDDW8cGgRBwcmrTlNeHgVT11u8cuVI/XKYXJ0eRISeB0OaYvjh9IQboP0sK
 ToFRFDhH2kDIhWwNNL+6Hqp3IjRKRpo=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id EE89383FE6
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 11 Jun 2026 19:24:43 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1781198684;
	b=GVXk4qx/Qs/nNae13Nvue4FWvpdy0iSWY7DDyRPMTpzSBZ5ufOfzOtcEdFyysHq4jfuYrI
	fuKZZOsXPX6fclzUAf5+P8XriFKJIN9e/JwQxwMkFoWtV2d6+T9RZ05DR49hQpFihINU1A
	RlOeBZxqCuYxX03NbSB1Oi8BqXrAee8=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1781198684;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=r8qaTB7a0Pocjd91E9coVkVuhnESQJ1hjFsKnGTpRQQ=;
	b=wYcWgptbFkNu6wVxTV87u35NswpPlS7Ur/TAqV+BryLFTdnFoDZrSyV8NQRQyvi4PufWmv
	N626oG7MHBd3VKkwOSUP8Tpt8ixrs9oeVhbu+5IBfwaIrLAFj/SAsSsiV/+cANz8K8N4en
	0PipFBzRZxnF10b4ZcjRLr/+e2wHXX8=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b="TJQS4h/P";
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org
Received: by dvalin.narfation.org (Postfix) id 5B6761FD51;
	Thu, 11 Jun 2026 17:24:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1781198683;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=r8qaTB7a0Pocjd91E9coVkVuhnESQJ1hjFsKnGTpRQQ=;
	b=TJQS4h/P4LWoVNj65aiJvYzogged4bjSqfizeiX16nvrbbQ1m5kNG5laOI75YGDMQ2NJDB
	ckW4IzBFBdZbfNm5fhyF/7HWfCshyr64GLbqZWoLM3U0Lnt1t2f7HhEvJuhqE+FcUn/fi6
	mL2qtAhUvUWNsFp+v8+kFswNZxRKC9k=
From: Sven Eckelmann <sven@narfation.org>
Date: Thu, 11 Jun 2026 19:24:10 +0200
Subject: [PATCH batadv v2 5/9] batman-adv: tp_meter: simplify unordered ack
 calculation
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260611-tp-unacked-list-v2-5-47389466c5c1@narfation.org>
References: <20260611-tp-unacked-list-v2-0-47389466c5c1@narfation.org>
In-Reply-To: <20260611-tp-unacked-list-v2-0-47389466c5c1@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1189; i=sven@narfation.org;
 h=from:subject:message-id; bh=pMDlXrKT63vey6EWtGpToPp/PTy7s9Po3KI+QTJYhhw=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDFla7606lpTyPT8pMy3tyK2yRlvXw926c0NmNR5++azqp
 8ec68GRHaUsDGJcDLJiiix7ruSf38z+Vv7ztI9HYeawMoEMYeDiFICJLDnJyDBTZOv/SRduP33K
 2vBWrfHbYsX9dVF6Kbt/tMzLc5q0dFcywx9+pv9V+1fZmxVznT0W+ef6guPP1cwP3FcwK2vf/aW
 0L4sPAA==
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: B3PETJXJHES7CWA6O74KCLEPBRWNX4XV
X-Message-ID-Hash: B3PETJXJHES7CWA6O74KCLEPBRWNX4XV
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/B3PETJXJHES7CWA6O74KCLEPBRWNX4XV/>
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
	ASN(0.00)[asn:24940, ipnet:2a01:4f8::/32, country:DE];
	TAGGED_RCPT(0.00)[b.a.t.m.a.n];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.open-mesh.org:from_smtp,diktynna.open-mesh.org:rdns,diktynna.open-mesh.org:helo,narfation.org:dkim,narfation.org:email,narfation.org:mid,narfation.org:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 565A8673F94

When batadv_tp_ack_unordered() goes through the list of unacked sequence
numbers and checks for now closed gaps, it is first calculating a delta of
the sequence numbers which could be acked. Just to revert this calculation
in the next steps to the sequence number which would be ackable.

Skip the delta step and directly work with the sequence numbers.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 net/batman-adv/tp_meter.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/net/batman-adv/tp_meter.c b/net/batman-adv/tp_meter.c
index c2eea7db..b7fee6e5 100644
--- a/net/batman-adv/tp_meter.c
+++ b/net/batman-adv/tp_meter.c
@@ -1493,10 +1493,10 @@ static void batadv_tp_ack_unordered(struct batadv_tp_receiver *tp_vars)
 		if (batadv_seq_before(tp_vars->last_recv, un->seqno))
 			break;
 
-		to_ack = un->seqno + un->len - tp_vars->last_recv;
+		to_ack = un->seqno + un->len;
 
-		if (batadv_seq_before(tp_vars->last_recv, un->seqno + un->len))
-			tp_vars->last_recv += to_ack;
+		if (batadv_seq_before(tp_vars->last_recv, to_ack))
+			tp_vars->last_recv = to_ack;
 
 		list_del(&un->list);
 		kfree(un);

-- 
2.47.3

