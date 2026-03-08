Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eDHROZSWrWn84gEAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 08 Mar 2026 16:32:36 +0100
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AAC2230F3A
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 08 Mar 2026 16:32:36 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 4BE3585A2F
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 08 Mar 2026 16:32:36 +0100 (CET)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1772983956;
 b=wpzcMtc//F22Vwel1ogFVPidQwLoXSV5xY5ik/lnZAVM8d5Vs9U+m4cJxwqqNexJ4WiIg
 I6i6c7cthBTTlXsTWCYKxLSTmnCf2qK1GyBZx5X9gt0es5L6bwBG9WzpdZp4/BpsulFTAUf
 +Batb3aUClKeJ3QMc9aPphxDXV4ZiC8=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1772983956; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=gWrD5E8W1w9eaMuNnaC3Yf8/sux57DiErwPjO/HT0HI=;
 b=aY8+dxIvWY7bmJq/oC5FrCjwejEk/hFRaQOScVEqM4F/mmAC9Rwez7In5V6tDaX/XZanh
 Sbjv66SaZ8JjC0B2+SD5G2byHuIYocnvlCknTJuiKFBLav7VQQVUOQCZCd46avJ5NwKnGty
 mLJOEOVCkKAnLFCZesV0M6bSgL8b1F4=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass (Used From Domain Record) header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org
 [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id 4785381FCD
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 08 Mar 2026 16:31:50 +0100 (CET)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1772983920;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=gWrD5E8W1w9eaMuNnaC3Yf8/sux57DiErwPjO/HT0HI=;
	b=S5JBWz+v4fZF/sNU+RGw9Z+aSWHwDmfEkOFS2Kh5RRQmD1hTuf6Osc/f3d+5zS9ZwvdPB/
	Tc6bdQtehNAtE/e2iI4S9eyJM41rEzA40VlxjG4A32AE2xYDlvgsgD4QEk55NaQ8PH+Rpo
	VV7JbPmczqOY/M5RNAoXRdyNfwHsPqE=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=sZFfSwhG;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1772983920;
	b=UFMBP3H55IPfPD8F7qezx+vtPpMiYfVgek2VWDdxipxmpeZdUdT3QxXQLv1umxUjtzbHoc
	HrBRzdvOIJZnAxoJDZl2WpEK9qjvU3XMdVCf/lBPgdt6S86S7G1Q/QlgHK6a8A7pLRdjVy
	RkVQXHtHsBZO/K/04r56bJ+7ppAs5A4=
Received: by dvalin.narfation.org (Postfix) id A8710211C4;
	Sun, 08 Mar 2026 15:31:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1772983909;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=gWrD5E8W1w9eaMuNnaC3Yf8/sux57DiErwPjO/HT0HI=;
	b=sZFfSwhGdt0l2he4UcRdXZ93Vx393Y0MopgFhgQFlAewvLfLWr9PPtMf2h62Si2BnM9nz5
	FxRn+pZng10TmKAkEJlFiWYFFJ+nmbiZmeSlTNt/NEbM4djPDcGrlZsCWjWWIIzus9jNZd
	mYU0DjhHEKdGZp78oJ7iVebQdYGQg1A=
From: Sven Eckelmann <sven@narfation.org>
Date: Sun, 08 Mar 2026 16:31:39 +0100
Subject: [PATCH] batctl: Run manpage through tbl preprocessor
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260308-manpage-fmt-v1-1-0cb32a726d2a@narfation.org>
X-B4-Tracking: v=1; b=H4sIAFuWrWkC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIzMDYwML3dzEvIJEoHBabolukrF5ikWaoWFimqm5ElBHQVFqWmYF2LTo2Np
 aAHJ/F8hdAAAA
X-Change-ID: 20260308-manpage-fmt-b37d8f11af57
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1313; i=sven@narfation.org;
 h=from:subject:message-id; bh=O4AJIMul+6fDAnP+/HFPZe0uIafRkF43V8j7F+cgVFs=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDJlrp8Uf7F4a993TKcGG0/dcQcxrxyY+98sf9UKX2K/1C
 fqZEt/XUcrCIMbFICumyLLnSv75zexv5T9P+3gUZg4rE8gQBi5OAZiIshQjwyb3/dpanKxCSV+u
 3nhtnx+4+3zX6R2lhxWjG3gTzu1OkGNk2LIntoLn4qxerw3cN+1XtCVwf/YsOHXmw/rw6xO+S/4
 7ww0A
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: LTBDN6A6EBQOSY5EG2R6GQ3RXMZ523KO
X-Message-ID-Hash: LTBDN6A6EBQOSY5EG2R6GQ3RXMZ523KO
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
X-Rspamd-Queue-Id: 8AAC2230F3A
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.01 / 15.00];
	ARC_ALLOW(-1.00)[open-mesh.org:s=20121:i=2];
	DMARC_POLICY_ALLOW(-0.50)[narfation.org,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[narfation.org:s=20121];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.970];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[diktynna.open-mesh.org:rdns,diktynna.open-mesh.org:helo];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,b.a.t.m.a.n=lfdr.de];
	RCPT_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[narfation.org:+]
X-Rspamd-Action: no action

When checking the manpage for errors/warning, it shows the output:

  an.tmac:<standard input>:119: warning: tbl preprocessor failed, or it or soelim was not run; table(s) likely not rendered (TE macro called with TW register undefined)

This can be fixed by instructing the explicit usage of the tbl preprocessor
via the first line in the file.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 man/batctl.8 | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/man/batctl.8 b/man/batctl.8
index ccc7b4a..54745da 100644
--- a/man/batctl.8
+++ b/man/batctl.8
@@ -1,3 +1,4 @@
+'\" t
 .\" SPDX-License-Identifier: GPL-2.0
 .\" License-Filename: LICENSES/preferred/GPL-2.0
 .\"                                      Hey, EMACS: -*- nroff -*-
@@ -21,7 +22,7 @@
 .\" Process this file with
 .\" groff -man batctl.8 -Tutf8
 .\" Retrieve format warnings with
-.\" man --warnings batctl.8 > /dev/null
+.\" LC_ALL=C.UTF-8 MANROFFSEQ='' MANWIDTH=80 man --warnings -E UTF-8  -l -Tutf8 -Z batctl.8 >/dev/null
 .\" --------------------------------------------------------------------------
 .ad l
 .SH NAME

---
base-commit: 8d256ac07c7dada8607ae792dcd0524d91eef127
change-id: 20260308-manpage-fmt-b37d8f11af57

Best regards,
-- 
Sven Eckelmann <sven@narfation.org>

