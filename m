Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id JNd4Je+VSmqIEwEAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 05 Jul 2026 19:35:43 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 3827170AB6F
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 05 Jul 2026 19:35:43 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=narfation.org header.s=20121 header.b=l7eNIWzP;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 136.243.236.17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 15974846B2
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 05 Jul 2026 19:35:43 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1783272943;
 b=1102TYI2aW2qXKFK65O6prmuqoPRN528rNqPS7EQTdt5Xkzo4F9Xo1KIGx5HC/nTWpotr
 jN0mRNZu1kNmshy1vrqpPY5SnDc891fHzGKco3cyaeNe7zVIUohX8tuYYAUkcAH/ytS9CDY
 UGcoUVMqS1P1/30Ds2roL8R1LOIXwmY=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1783272943; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=gmLCgM9s6DBwcZ5AjU7hW6gO+NTxwkqqCHpDefHaG/Q=;
 b=tH9ddXFKlToOYJN7EYNai/EHD+xxK8S/SJ0kZT4fMnO2gMiBt2zsF9EyajjFVExa694o2
 vVryWyor27+76LXDReSBVGWI9KJpUGCyu5+0h2xiNp+qw4oElLItVbXvjOL50wOL7NkyO2Z
 d391XD3wCFR222VjHCqFv9Wv1q7PnAA=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org
 [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id CE2A882F12
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 05 Jul 2026 19:30:24 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1783272624;
	b=XeSexkVGzEiAK+SxzkwoIKo+1bU0cC7yRxjus/G2dgpdlrWyeWkUD4baM3GOZ2/f3N1Vua
	EVrauFkpqNnvCtpDgatqjooY1o54wCTwIJr4FIGgySMmrCy+o0OSP+SZ64NzIDPf6bVSGg
	JriQqywlhrUoAlp/fdoESSFPEMgH6gQ=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1783272624;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=gmLCgM9s6DBwcZ5AjU7hW6gO+NTxwkqqCHpDefHaG/Q=;
	b=W8k1ZEBMyLj/fFd6SaaU++XSd/R+7/7so17jnU24U2BUi475pzaGE16RCJG8V5+UPosrCl
	2/HWYA3AvrfwLr/NVKJlbc6p2DrOxDRHJ+kbslHrgrdtFG7LJ2BckWmPTaGu072UXM94ic
	uMDEmCq4imSN87gXdWya3di4bBV1WlA=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=l7eNIWzP;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
Received: by dvalin.narfation.org (Postfix) id 879181FEE6;
	Sun, 05 Jul 2026 17:30:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1783272624;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=gmLCgM9s6DBwcZ5AjU7hW6gO+NTxwkqqCHpDefHaG/Q=;
	b=l7eNIWzPRcH//sADuqL2O+q/wquyB9o9tWyhMzs0mPdID2aWx/D+JONknFwFeZbFgXD4cp
	7izLMciBC1xwc3drArOL8DETSSWZjn5yEaPm0/OUSDfYsD5gcVydJQ5c+2Jok8rMA/GeG/
	trKz1cGtC3n0Ow2aHDP2eK9pLCcygnw=
From: Sven Eckelmann <sven@narfation.org>
Date: Sun, 05 Jul 2026 19:30:10 +0200
Subject: [PATCH 7/9] batctl: tcpdump: don't label unknown ICMPv6 types as
 unreachable
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260705-bugfixes-tcpdump-v1-7-c37f6f82eed1@narfation.org>
References: <20260705-bugfixes-tcpdump-v1-0-c37f6f82eed1@narfation.org>
In-Reply-To: <20260705-bugfixes-tcpdump-v1-0-c37f6f82eed1@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=883; i=sven@narfation.org;
 h=from:subject:message-id; bh=7fo3vS7Mh5TcOurHXbwpBO+eP/e8oFAAqYcO3KQBScA=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDFleU+ZnyvoGlZ67V6beX31vqWnJa/7LkkE1elcObN3Q+
 T5/gf+vjlIWBjEuBlkxRZY9V/LPb2Z/K/952sejMHNYmUCGMHBxCsBEzgowMnx8cN1PzqFk/pIF
 ok/efkjndKkWUujm2vmj9uvEZ4v6dV4w/M/rdn+rzbLh+W2FaS4fdkTPF3SflP93dmDdYkbnVyF
 HrjADAA==
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: XGKIM4WAY7RQPHU5N7YGX34O2JUWRUFT
X-Message-ID-Hash: XGKIM4WAY7RQPHU5N7YGX34O2JUWRUFT
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/XGKIM4WAY7RQPHU5N7YGX34O2JUWRUFT/>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.open-mesh.org:from_smtp,narfation.org:from_mime,narfation.org:email,narfation.org:mid,narfation.org:dkim,diktynna.open-mesh.org:helo,diktynna.open-mesh.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3827170AB6F

The default case of the ICMPv6 type switch prints ", destination
unreachable, unknown icmp6 type (N)". Every ICMPv6 type that is not
explicitly handled is therefore mislabelled as a destination unreachable
message.

Just report "unknown icmp6 type" instead.

Fixes: 35b37756f4a3 ("add IPv6 support to tcpdump parser")
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 tcpdump.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/tcpdump.c b/tcpdump.c
index 1094069..f9fb0c1 100644
--- a/tcpdump.c
+++ b/tcpdump.c
@@ -692,7 +692,7 @@ static void dump_ipv6(unsigned char *packet_buff, ssize_t buff_len,
 			       nd_nas_target, buff_len);
 			break;
 		default:
-			printf(", destination unreachable, unknown icmp6 type (%u)\n",
+			printf(", unknown icmp6 type (%u)\n",
 			       icmphdr->icmp6_type);
 			break;
 		}

-- 
2.47.3

