Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 2axTE65USmqnBQEAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 05 Jul 2026 14:57:18 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id E02F170A004
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 05 Jul 2026 14:57:17 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=narfation.org header.s=20121 header.b=jRZSXpd3;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 2a01:4f8:241:fc1:136:243:236:17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id BE447846BD
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 05 Jul 2026 14:57:17 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1783256237;
 b=1Wb6b1GWudYmdfwTQTsN8paTzAtcdAXqmohVEygOaGqQ5uej3JqYcsZ8bEnK4Te2ucz+j
 CgK6Wxay0ZPw5RBlBzerx2DvF5GTdM8BMO8lFk0C3aFz9GX8eUAjU3rjy6OayTyEEhUY8Va
 5imrDcbQ1POQcuYRGsWCVF0FPhs5Xd4=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1783256237; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=zA+r67xjDk1CAsCZYshekOWjm1sihjlP5iFC68AhrQQ=;
 b=213iC+3SetWeR2Y+kP1Fc/7R8d6EU5CsIiA1ZktspOGer3IZA0FpbjNNA7BV0J8GvHEI0
 ysLTxXpStZshugBNn+hQ5DNwWQZmP1HoeJKqepU5ZTzOL9VdasR/X5M1fkPoFBsMc4ipXEx
 ZeED0CiWULcY0uY8C+IEOY8OpwtHw80=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id 9A9BF84189
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 05 Jul 2026 14:55:32 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1783256132;
	b=JJIaKiZbW5xBdsNmcsJmogjkNTns4jH6/v5ZXwWDDKvWGPKbwUvlxgRm9ljBb4NZhbNGpB
	+8h1mg5waicnPDyInX0/1vmb7ss2w+tANQGGp5iBccUWeEYB+17hvkggjZ9xC9C2wfEqPz
	taadoGokOQZVFTPI2/XOTD9IHZ1i7R0=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1783256132;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=zA+r67xjDk1CAsCZYshekOWjm1sihjlP5iFC68AhrQQ=;
	b=f3GmkIloP2Tiyca02raJxz/bRGg3Fk5uRwgc6xv7fRiYRU5zAHH8XFdkNkQVuUojbCmU0o
	InnoZwDIbCbYEMoBGr3mE+VVCiVKLNX2hoINWn8ovHaoOFm9aNIcw6y8PrGaR7+CvP72KF
	MNvSYLNv6/ENup4BxC+YOhuaZVFGEVw=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=jRZSXpd3;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
Received: by dvalin.narfation.org (Postfix) id 3DA47201CF;
	Sun, 05 Jul 2026 12:55:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1783256132;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=zA+r67xjDk1CAsCZYshekOWjm1sihjlP5iFC68AhrQQ=;
	b=jRZSXpd3j+FJd+ua4fAC2fLvMUMSOjwI1BZt7XJJUq16RdA2K1Sh8oD9qDY4BGKVdvEx5D
	Nia8Wd8MUbTKBL97/iwfBDJSiGcNsIsR2LPSeWzOk9Ed6gPAu5U9FTnBNnqGmY5Eabtaaj
	Sf9KXW5CIEF5dj3rs3T9dZrpcmElxBc=
From: Sven Eckelmann <sven@narfation.org>
Date: Sun, 05 Jul 2026 14:55:07 +0200
Subject: [PATCH 2/3] batctl: version: avoid use of uninitialized read
 buffer
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260705-bugfixes-version-v1-2-5f02046c7eea@narfation.org>
References: <20260705-bugfixes-version-v1-0-5f02046c7eea@narfation.org>
In-Reply-To: <20260705-bugfixes-version-v1-0-5f02046c7eea@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1347; i=sven@narfation.org;
 h=from:subject:message-id; bh=zeKn8ZqUprK0KvVv2P54nCj5EnUuiXTpwiOMY/hDaNA=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDFleIXrXHe1F3/qdsnK7tyGvpC3znVnTqtoi1kXFN85eO
 OCx1tW8o5SFQYyLQVZMkWXPlfzzm9nfyn+e9vEozBxWJpAhDFycAjCRVZwM/72U9fJLYmT7ypMc
 HbQ2CrUrirp4X0sr2Lotq7/a+myAOyPDo2CnTtUFMfJOaRM+Vms/V1N85RMswBAvd29nvO75a+7
 MAA==
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: M47CMP42IUBRSLOEZPMCARXLPPLGTG65
X-Message-ID-Hash: M47CMP42IUBRSLOEZPMCARXLPPLGTG65
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/M47CMP42IUBRSLOEZPMCARXLPPLGTG65/>
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
X-Rspamd-Queue-Id: E02F170A004

version() strips the trailing newline from line_ptr before checking whether
read_file() actually succeeded. If the read_file() returned an error, it
could be that line_ptr was allocated buyt not yet initialized. It could
therefore not contain any \0 delimiter - making the strlen read outside the
buffer. The write of the \0 could therefore also be outside the buffer.

Only attempt to access the buffer when a success was indicated.

Fixes: dbc4a8c8e585 ("batctl: version also prints the kernel module version if available")
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 main.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/main.c b/main.c
index 79ed4ef..e625291 100644
--- a/main.c
+++ b/main.c
@@ -132,13 +132,14 @@ static void version(void)
 	printf("batctl %s [batman-adv: ", SOURCE_VERSION);
 
 	ret = read_file(module_ver_path, USE_READ_BUFF | SILENCE_ERRORS);
-	if ((line_ptr) && (line_ptr[strlen(line_ptr) - 1] == '\n'))
-		line_ptr[strlen(line_ptr) - 1] = '\0';
+	if (ret == EXIT_SUCCESS) {
+		if (line_ptr[strlen(line_ptr) - 1] == '\n')
+			line_ptr[strlen(line_ptr) - 1] = '\0';
 
-	if (ret == EXIT_SUCCESS)
 		printf("%s]\n", line_ptr);
-	else
+	} else {
 		printf("module version unknown]\n");
+	}
 
 	free(line_ptr);
 	exit(EXIT_SUCCESS);

-- 
2.47.3

