Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EETCDGaNrWlE4QEAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 08 Mar 2026 15:53:26 +0100
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id C55E9230C9A
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 08 Mar 2026 15:53:25 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 7AB4085993
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 08 Mar 2026 15:53:25 +0100 (CET)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1772981605;
 b=MG5hUz0AxR0Qi2uO3ThbgnuJ/lk62VX3TmwGVY8pEXwISsDixdeY+MC+P2j727lucp03y
 oYs5Lphl866pIdEReBU9NRYOZvNQs6rhCxxXf2ERwsgdfzrTC5cHotc/lj92RGKn7ehE+zS
 NG9jr5+fp80MNWB/n4JO0aLMX9qFYNk=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1772981605; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=dfiOdzhLgNO8ATiPYY9wVxeS0LjRjjc5jzGWToy0eTk=;
 b=RzbKfZBnj1sB1PDE4zg9Nm6/dqzlq6iaX3sRoh1fYSTI3IZYPGi84qTz+VA1iNvF0nw7X
 Gtt6cWduQwUaGdxoJIbIr7fw2Vy8UabuFgG6vEeZ6/CcySj0WwkOifUFauADLNSZ2lRigJu
 bhl+a41U5yn9CKOI2/oYKB61eIy9kUw=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass (Used From Domain Record) header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org
 [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id E5AB883AFF
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 08 Mar 2026 15:52:39 +0100 (CET)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1772981570;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=dfiOdzhLgNO8ATiPYY9wVxeS0LjRjjc5jzGWToy0eTk=;
	b=Rx6kXBBukv/a6tiQqcXlVY/1jpHJpWR1unvR7CzHilrgs1DkJ6bNfSwssrqr60MCTKY62G
	HK3+5NftuKJlsPoIkqeygpgYPCtLHyCnLbyYa3r/snQhu2zcgaJkJ1pRB5jkJ7G3CWJWn0
	XOLVEs1W8oC6AE1DWAPWm95Yj7vjXA0=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=thwY5P+C;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1772981570;
	b=lF6bfPGkLerjr4HDUZHCoVezb65NKOKf3LEJfJhKGmm0BTUZv3OKVrfbgolDb/3SO5oE02
	wcfNnfgTcXMe0ZZAX5MI8HQXEyapgx28GIETHMnpOVuzZ3QcuY4OQUZI8l6nM85TB+eNAc
	FpWBrYGwdPUx3/4rm8yLSN8tdEft4Go=
Received: by dvalin.narfation.org (Postfix) id 098E9201FE;
	Sun, 08 Mar 2026 14:52:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1772981558;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=dfiOdzhLgNO8ATiPYY9wVxeS0LjRjjc5jzGWToy0eTk=;
	b=thwY5P+CGjeuuwksx7JUV/XqClrM+iXwPQezUDTAK5Xto2qeAIbGNUho/7ioToHTz2uuUO
	22yH86AxNtIPfZpSB44rt3t04mJ65DCxl47qtzvS0+ymYqu7JHKlKLgA1t1GxwnHNkh4zG
	c1rdWzJqk6dNNG1qAfw0m5Pb+2WYYSs=
From: Sven Eckelmann <sven@narfation.org>
Date: Sun, 08 Mar 2026 15:52:30 +0100
Subject: [PATCH] batctl: tcpdump: Fix printing of usecs
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260308-t64-v1-1-ec68b80a2e68@narfation.org>
X-B4-Tracking: v=1; b=H4sIAC2NrWkC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIzMDYwML3RIzE11L00RDYyNDI8NUkzQloMqCotS0zAqwKdGxtbUAv0CWj1U
 AAAA=
X-Change-ID: 20260308-t64-95a132121e4f
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1055; i=sven@narfation.org;
 h=from:subject:message-id; bh=ZllT51qzTHOVk/qnjc8hZ+Xvb562vs+DxzbTzDHmwRg=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDJlrew2vVjvVGMg+fr7Eo6ng2cFKfc5X/7j8I7fnp117J
 3w8emNHRykLgxgXg6yYIsueK/nnN7O/lf887eNRmDmsTCBDGLg4BWAi+naMDPtNl94UUJu+qGnR
 pG2POdKNp4SfYv7Pe8iMkSUizez07jCGf8r3XcMDK6dw/9aTOn+yrLHuz+68c6vFFh2S+WMh94J
 pEhsA
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: 5RB4SO75DE5GDQHFECRZHNGBLI47YVBW
X-Message-ID-Hash: 5RB4SO75DE5GDQHFECRZHNGBLI47YVBW
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
Archived-At: <>
List-Archive: <>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>
X-Rspamd-Queue-Id: C55E9230C9A
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.01 / 15.00];
	ARC_ALLOW(-1.00)[open-mesh.org:s=20121:i=2];
	DMARC_POLICY_ALLOW(-0.50)[narfation.org,none];
	R_DKIM_ALLOW(-0.20)[narfation.org:s=20121];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_RCPT(0.00)[b.a.t.m.a.n];
	R_SPF_NA(0.00)[no SPF record];
	NEURAL_HAM(-0.00)[-0.967];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:24940, ipnet:136.243.0.0/16, country:DE];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sven@narfation.org,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,b.a.t.m.a.n=lfdr.de];
	DKIM_TRACE(0.00)[narfation.org:+]
X-Rspamd-Action: no action

musl on a 32 bit system still uses a 64-bit value (long long) for the
storage of microseconds. But the printf was evaluating this argument always
only as long.

During the print of this usec value, range of 0-999_999 is only possible.
20 bit is therefore enough to store this range. For simplicity, just use an
unsigned int.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 tcpdump.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/tcpdump.c b/tcpdump.c
index 32f9a04..c89b5a7 100644
--- a/tcpdump.c
+++ b/tcpdump.c
@@ -102,7 +102,8 @@ static int print_time(void)
 	tm = localtime(&tv.tv_sec);
 
 	if (tm)
-		printf("%02d:%02d:%02d.%06ld ", tm->tm_hour, tm->tm_min, tm->tm_sec, tv.tv_usec);
+		printf("%02d:%02d:%02d.%06u ", tm->tm_hour, tm->tm_min, tm->tm_sec,
+		       (unsigned int)tv.tv_usec);
 	else
 		printf("00:00:00.000000 ");
 

---
base-commit: 8d256ac07c7dada8607ae792dcd0524d91eef127
change-id: 20260308-t64-95a132121e4f

Best regards,
-- 
Sven Eckelmann <sven@narfation.org>

