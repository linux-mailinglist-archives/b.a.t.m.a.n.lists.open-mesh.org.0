Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id KmGHHZ1hSWra0wAAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 04 Jul 2026 21:40:13 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 19B8E708460
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 04 Jul 2026 21:40:13 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=narfation.org header.s=20121 header.b=TrIQWUjV;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 136.243.236.17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id E82B1841F6
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 04 Jul 2026 21:40:12 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1783194012;
 b=3f0sjvxiNLY0fWnneYJpGVRK5NKLp+vwdFJwdg/apTc1f90AeFyVrmReuMcRxKir/ojKz
 2AF8anebikOExRID1vQgzuMRDgTEMu0ZFdhYVM0upVNjMS3WPWsc58RZOfuqaMYYS7Z5Ggz
 aMwp1n9csqu0qyRu8F0A8XlQ98qHKo0=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1783194012; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=2bTdEtsIddz4y8pwYuPEEyLnJYPefkG8Q98WvpouZ3Q=;
 b=1yvxW+5s4g++z+vWiPjjwPTbaz6Gvor01fACwKvQq6v1Sg1kMNjPa+2ZWx9Q3fz0yWebu
 R9sA9krkrWsyXalJYuMafDqfJBiwt9dLutAV+5Uw1RjRiN1mCXnw8KeNO8/7C4vxh/BQ6jM
 1Wju/oiAA6oxpTZZdDR/kdUfTOWR1YE=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org
 [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id 3890384226
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 04 Jul 2026 21:36:38 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1783193798;
	b=g3+XPVsmS+0TlxKKS+I490Swaqnlx626v5Bs38kr8juN9ssN/rGz2WLFzRWoIU3wX1tCgr
	3RwD2Al9AjrkBqgYU0OXpGXehx2wFOEy70/9QC0ilNIUJVtsMA8FFHof4pp6nzqUOCf2Ri
	jowkFGO4iQJQCVeOIFEFHVzKnQ9OQdU=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1783193798;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=2bTdEtsIddz4y8pwYuPEEyLnJYPefkG8Q98WvpouZ3Q=;
	b=UpDhsVH/rj1cnn9fPPd/y8KtOTuN89mLzvpdfhhfaITiYZkZRtn602XK1d2V8b8CuURJeQ
	PxM2trfVgkaHZzKc5yYPC7hT7vJpiIiWCq8e2w8f8seKFggUB4Pq5d6vCdQjkChUjXZnMt
	p9bOX95xDjH/kWXlWOe0lti68Ar1G3A=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=TrIQWUjV;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
Received: by dvalin.narfation.org (Postfix) id ECF9C20685;
	Sat, 04 Jul 2026 19:36:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1783193798;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=2bTdEtsIddz4y8pwYuPEEyLnJYPefkG8Q98WvpouZ3Q=;
	b=TrIQWUjVpDBSkVX5HGJeJbVEeMEA5QPPODRypNYgzjbh5eFmeD+alvc32FUX5xyL6vG8hA
	5iuRZ6CToRjCadwP+xY9tPmKyZeWa4Wpheq1TolmZ+AWnYqllh/Oz31P8tCKw9OnKC/hAR
	LFE3OZ/8f0+JDmXXu4sfQzXFwuwxRB4=
From: Sven Eckelmann <sven@narfation.org>
Date: Sat, 04 Jul 2026 21:36:03 +0200
Subject: [PATCH 5/5] batctl: debug: don't return negative error codes from
 handle_debug_table
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260704-bugfixes-debug-v1-5-888ddc878206@narfation.org>
References: <20260704-bugfixes-debug-v1-0-888ddc878206@narfation.org>
In-Reply-To: <20260704-bugfixes-debug-v1-0-888ddc878206@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=824; i=sven@narfation.org;
 h=from:subject:message-id; bh=ZOvP0W3FrzxlJ9lripI6Gth1fE75U211Kuh7oU4Cozg=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDFmeCctdrupovDS80CqxjlczSiLgytlnzL42BW7PN8q9X
 bjiTU1GRykLgxgXg6yYIsueK/nnN7O/lf887eNRmDmsTCBDGLg4BWAiImoM/5Nn+lVtN/4x00Il
 RCrzjGHOrU+/dzmK8WwUmmXjdF+oOZuR4exUnbZZ+7OXqD5TCzNJdglJMK1/vqcwO9TlhiX3npM
 HmAE=
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: IDZZDUY77GLDEFD5BITYC3TSXH3AJGQW
X-Message-ID-Hash: IDZZDUY77GLDEFD5BITYC3TSXH3AJGQW
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/IDZZDUY77GLDEFD5BITYC3TSXH3AJGQW/>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[diktynna.open-mesh.org:helo,diktynna.open-mesh.org:rdns,lists.open-mesh.org:from_smtp,narfation.org:from_mime,narfation.org:email,narfation.org:mid,narfation.org:dkim]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 19B8E708460

handle_debug_table() returns the result of the netlink dump function
directly. This is a negative errno code on failure and main() passes it
straight to exit(). The process then terminates with a mangled exit status
like 161 (-95 & 0xff).

Limit the return codes to EXIT_SUCCESS and EXIT_FAILURE.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 debug.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/debug.c b/debug.c
index 22cbcb8..13a0a43 100644
--- a/debug.c
+++ b/debug.c
@@ -152,5 +152,8 @@ int handle_debug_table(struct state *state, int argc, char **argv)
 
 	err = debug_table->netlink_fn(state, orig_iface, read_opt,
 				      orig_timeout, watch_interval);
-	return err;
+	if (err < 0)
+		return EXIT_FAILURE;
+
+	return EXIT_SUCCESS;
 }

-- 
2.47.3

