Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Xk+PHbSUSmpmEwEAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 05 Jul 2026 19:30:28 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B86A70AB3A
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 05 Jul 2026 19:30:28 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=narfation.org header.s=20121 header.b=gWHKgTfc;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 2a01:4f8:241:fc1:136:243:236:17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id DF832832E0
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 05 Jul 2026 19:30:27 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1783272627;
 b=Q+QJfjvgRWuQR80Zh6HpTwpr8j9IHc8aUkS3o/kgVyxjmfHe5BA3KDdnnaz07Elv+8lrR
 seETh0fRZ60Rqcb5rlsuPLKOAfBfwQhbk0MHvtXzWeLSQxDJC0RbP7JAwrEKMW0lPrEJRVw
 vECTBVMEAjKSm6/jtHGS0d1tJY+lbT8=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1783272627; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=4M3oQpWbsiYDNbyz36B342vgsfb3gwwIhyYhFF6y8BM=;
 b=JO0xHDFtN+p/36/N/VpRDbvqnJ0rlq3e+qAHUPHRwjfofSaL/bDAz9pgtutB4p8pxeueP
 ecmVnEfWHiTxxZgwOoqPb/TlQUfbSaSVdJmZIQ/6DXinaT+tRtARfuX9lvdVlHfnDTTTVCa
 h97Q/qGCtdjB+Oq02dKt0iejH7kTeEk=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id C9802814FE
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 05 Jul 2026 19:30:10 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1783272610;
	b=n9fDokKoMhxaOjCiTQsaiWDboOraPWBhfDffDoImAYKaZBlxuEJA9YOeZbKzpZqNu/pobx
	4V/iYiV8hCONBL/AdOb/arc/fGzasKLtZhGU9qo8hbbzMm1Gz9MC8IBoo/UKf66A1oVVoZ
	vg/vZ0uq0lwj8pXjJzqsxXrxJC2Supw=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1783272610;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=4M3oQpWbsiYDNbyz36B342vgsfb3gwwIhyYhFF6y8BM=;
	b=scQGs2halLbVPAxaSMncKEQoltcy4ViigX1T0MC899Si4TCu+proE0zDwVbEAjNRexjRvH
	kAnl+0KUN9jWftyc3lbpsgsEnO7RBKRHyYPMOh+etcMpotuTGgB6cKXWbPRsolP2pHDO44
	MVYbsyPgm25FwzBvjDhKdDTgr9JgwPQ=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=gWHKgTfc;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
Received: by dvalin.narfation.org (Postfix) id 09B831FEE6;
	Sun, 05 Jul 2026 17:30:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1783272610;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=4M3oQpWbsiYDNbyz36B342vgsfb3gwwIhyYhFF6y8BM=;
	b=gWHKgTfc1YcZkIXXUL8WkfonRmLaNDxKxOuwbxDSn8teaDBD5lYd3uNk8VmZfGE1+mVuTW
	t4N03Rp1In7pAozwC2KIE4MMKdhXjHwSeVhd52FceFw5g6ikvlPPnrApN7HwDNDj7Ic/qu
	hlqJD8cxSP/O1uZjpc/fNtcpUi0O4S8=
From: Sven Eckelmann <sven@narfation.org>
Subject: [PATCH 0/9] batctl: tcpdump bugfixes
Date: Sun, 05 Jul 2026 19:30:03 +0200
Message-Id: <20260705-bugfixes-tcpdump-v1-0-c37f6f82eed1@narfation.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAJuUSmoC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIzMDcwMT3aTS9LTMitRi3ZLkgpTS3AJd47Rks6Q0AyNL05RUJaC2gqJUsAK
 gruhYCL+4NCkrNbkEZI5SbS0ARJ13wXQAAAA=
X-Change-ID: 20260704-bugfixes-tcpdump-3fc6bf0295de
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1251; i=sven@narfation.org;
 h=from:subject:message-id; bh=6aZIIS4vYdMrEz6Q6ljgEr9lVxwtsfjf/auvhlhi5Ik=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDFleU+Z6mWV/LQibpMcRuU+086v3qezCtx6BeW97uuPER
 Jpm8Ph0lLIwiHExyIopsuy5kn9+M/tb+c/TPh6FmcPKBDKEgYtTACbSlszwV4Y78cCUZTvC98w5
 s2envdJ7u4J7rxjnblyQfGf+s5MG+v6MDL8Vd538lT75QsT6i57eQW3vHxu/5eF3LTlm8pvh79O
 zkWwA
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: LUQB2N72L6UWY3RJUY2FV257OO7SGHGY
X-Message-ID-Hash: LUQB2N72L6UWY3RJUY2FV257OO7SGHGY
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/LUQB2N72L6UWY3RJUY2FV257OO7SGHGY/>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.open-mesh.org:from_smtp,narfation.org:from_mime,narfation.org:email,narfation.org:mid,narfation.org:dkim]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0B86A70AB3A

I have now splitted the bugfixes for batctl in topic branches to make it a
little bit easier to review. Similar to the "random bugfixes 2026-06-21"
patchset, they are just various (mostly minor) problems which should be
tackled at some point.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
Sven Eckelmann (9):
      batctl: tcpdump: fix "subtybe" typo in 4ADDR output
      batctl: tcpdump: return EXIT_SUCCESS on normal termination
      batctl: tcpdump: check frame length before reading the ethernet header
      batctl: tcpdump: resolve bat-host name for ROAMv1 client
      batctl: tcpdump: print the unreachable host for ICMP port unreachable
      batctl: tcpdump: skip partial line for oversized ICMPv6 errors
      batctl: tcpdump: don't label unknown ICMPv6 types as unreachable
      batctl: tcpdump: reject invalid packet type arguments
      batctl: tcpdump: fix source address selection for 802.11 data frames

 tcpdump.c | 58 ++++++++++++++++++++++++++++++++++++++++++----------------
 1 file changed, 42 insertions(+), 16 deletions(-)
---
base-commit: eb9597d4ca6db17c579f5ae9443c51b013e2fe65
change-id: 20260704-bugfixes-tcpdump-3fc6bf0295de

Best regards,
--  
Sven Eckelmann <sven@narfation.org>

