Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id W7LYG0OtTmr8SAIAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 08 Jul 2026 22:04:19 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 134D772A136
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 08 Jul 2026 22:04:19 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=narfation.org header.s=20121 header.b=bBec75jd;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 2a01:4f8:241:fc1:136:243:236:17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id E53FD85404
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 08 Jul 2026 22:04:18 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1783541058;
 b=x2aa8IXmX9+Ky7KoXQQIHaJyNd4Pr2zVKiV3Lqt25rcDF0VJGo0udlHoihdq2w3XoC/IJ
 wnbcYYdchpRU/D+Xc5SCq62HFOejz9QuJ+5VVDQAL7xBwYSc+tvMu2qkk8gGDoIPF39GyNV
 SRuVBe7IPfTrYkHOIjMfGZBB9Y0Dz4Y=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1783541058; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=CBZlxtIV1zTGwIc8/o/rVGbsQEvk/wWRL+lTaksrO7Y=;
 b=XQ9UDi2la2I/7u0UqMUMpwbpnkoxKNrKylo/VowWY+sn+MpAiqzV9BDzF9a1A5efzy1Ly
 h8VtUU3LhovkpYyulc3Jme4JQQAMqjjzii86htKhniU2+pGJQEl3pxcvCx/zl/EhbiNs7X4
 6DpSIxQbKSKuO0SlEBOS6MfKupSncv8=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org
 [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id DFF9283E5F
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 08 Jul 2026 22:00:20 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1783540830;
	b=Gf+CxtM+AFHZxbXsQlT3NxWJ3F3qlOvOADFF08Tb6iP2LhgkW42rHVFDMvITzBM/GtbJv3
	hwlIhN6idHYwgvybCSNEvOTtzZswji8NeJWy0acY5vSlCGir2mOoxrFn7zG+6R2cEW9aZf
	aoxsgR6nz1iy6boaquXE49x3/RbmRmg=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1783540830;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=CBZlxtIV1zTGwIc8/o/rVGbsQEvk/wWRL+lTaksrO7Y=;
	b=CQmx/9PeczxwOp0yLQ0vRdnWGbxQjAYOf9w6h9WzugFBqFxyTz5bG2/ELNbBEFAJExyJR2
	UQus2LOlTjfvbzcIcJySz19nO4ZllnpKkOK/0KAal9VpPqfJequyB72yozAyHejQ8Im/3K
	+XQOLXxsQJk8GW96/im3rVpM0igQMRE=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=bBec75jd;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
Received: by dvalin.narfation.org (Postfix) id A491B20019;
	Wed, 08 Jul 2026 20:00:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1783540819;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=CBZlxtIV1zTGwIc8/o/rVGbsQEvk/wWRL+lTaksrO7Y=;
	b=bBec75jd8zOI5gE1HJB1mdhioJCUtqL452s2TZnlrWG1J68gIPI4ugW+S22YLMPoWSYY+D
	04QOIUwSTtHaotTXII9ygOymDgWxgpoqykH1foqq4xBDupuAeHAZ+JsyKqvIZ8UXZugelE
	chPyVojcJXIzxxQaQV4TPvQGW4LdhdY=
From: Sven Eckelmann <sven@narfation.org>
Subject: [PATCH 00/12] batctl: netlink bugfixes
Date: Wed, 08 Jul 2026 22:00:06 +0200
Message-Id: <20260708-bugfixes-netlink-v1-0-8ce03e37f17b@narfation.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAEasTmoC/yXMyw5AMBCF4VeRWWtS4hJeRSxopwxS0imRiHdXL
 L/k/OcCRkfIUEcXODyIabUBSRyBGjs7oCAdDKlMC1nKTPT7YOhEFhb9QnYW2pi80JlJVFlByDa
 H3yBUTfub935C5d8fuO8HrnXFpnQAAAA=
X-Change-ID: 20260704-bugfixes-netlink-dff56d4f1c79
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1618; i=sven@narfation.org;
 h=from:subject:message-id; bh=HdSpKn/MtAyZGtFEzaCgb+8gW3Tzw5gArehMeWnIALw=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDFl+a9wtX+jJSnndiWm0YonX2VYn9fPWL2v5r5WlxgXCD
 HsdNyR1lLIwiHExyIopsuy5kn9+M/tb+c/TPh6FmcPKBDKEgYtTACbyjpOR4cyK6kuHGR98eyG8
 eV9NSLrYnmdJMvmKLfdW3r5UdbuR4zkjQ0f6/xMXH2lu+v6CwZ3z5Cfh1Xc5vHYyPM5ve1H/72d
 INDsA
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: KXI72XWQ2L6SVAZNWD4RRWLAZEZZCYLM
X-Message-ID-Hash: KXI72XWQ2L6SVAZNWD4RRWLAZEZZCYLM
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/KXI72XWQ2L6SVAZNWD4RRWLAZEZZCYLM/>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.open-mesh.org:from_smtp,narfation.org:from_mime,narfation.org:email,narfation.org:mid,narfation.org:dkim,diktynna.open-mesh.org:helo,diktynna.open-mesh.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 134D772A136

I have now splitted the bugfixes for batctl in topic branches to make it a
little bit easier to review. Similar to the "random bugfixes 2026-06-21"
patchset, they are just various (mostly minor) problems which should be
tackled at some point.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
Sven Eckelmann (12):
      batctl: handle netlink callback object on error
      batctl: netlink: abort netlink_print_common when message allocation fails
      batctl: netlink: don't format NULL extra_info in info_callback
      batctl: netlink: report dump errors signalled in the NLMSG_DONE message
      batctl: netlink: detect receive errors in netlink_print_common
      batctl: netlink: report kernel errors when writing settings
      batctl: netlink: report send errors in netlink_simple_request
      batctl: netlink: detect receive errors in query_rtnl_link
      batctl: netlink: detect receive errors in netlink_simple_request
      batctl: netlink: detect receive errors in query_rtnl_link_single
      batctl: netlink: report error on query_rtnl_link send failure
      batctl: netlink: use kernel-style error codes for nl_recvmsgs

 functions.c       | 67 ++++++++++++++++++++++++++++++++++++++++++-------------
 netlink.c         | 27 ++++++++++++++++------
 routing_algo.c    |  1 +
 sys.c             | 10 +++++++--
 throughputmeter.c | 10 ++++++++-
 5 files changed, 90 insertions(+), 25 deletions(-)
---
base-commit: eb9597d4ca6db17c579f5ae9443c51b013e2fe65
change-id: 20260704-bugfixes-netlink-dff56d4f1c79

Best regards,
--  
Sven Eckelmann <sven@narfation.org>

