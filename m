Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 8LMYDSPzSGpYvwAAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 04 Jul 2026 13:48:51 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id CA67770770B
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 04 Jul 2026 13:48:50 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=narfation.org header.s=20121 header.b=M4Oca2F4;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 2a01:4f8:241:fc1:136:243:236:17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id A8B6484182
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 04 Jul 2026 13:48:50 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1783165730;
 b=ZGNhkKngQd+TE54GDZ35rogwaNl2zjgW3SZTXfBsdLRbX5vLEvU2Il2V+JzE467Tc/iFt
 LwWxphLkNanC6EHpWQLCx9siRG7XpTtCyGd5TG3Tj/MdGHDmRCMNgs8iC7JDRZosQEQbcmx
 pXa/ua8eILP0BoERZUcDUT++oebMnSk=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1783165730; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=0RTT3tyaqCh38hX5R7GPYQMTuyoqEkW0enx2ssrsE28=;
 b=UPXwgHqAzdhJyajkexPDIR4A6MsoGi62A0qiY4+Qf2gS+WyprYBQaQ5+0xltOh4JNbKAb
 j1vUTFl/xtklVVfibe1iEIVnVqa1uv0KSGpGyT6zli2/i5Zg5aONb3sT+qv2F6PgqT2KSOz
 l6gKlsSxnbgsR7LzJzmH/is7p94hLMM=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id 7C14681466
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 04 Jul 2026 13:48:34 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1783165714;
	b=KSSGJWHBq2bOwpfSaVxeKgv3iscCfebswXSydBMY4xLE2+6njBtRSN04Mx/lc+LKa01cC/
	89Qx0mVP8xx3+6sG8xGnOtMuoeUo0t6k9pu4Fam/lQJ9UnK1DmEt9PTzkYvTIzpWDpxla8
	hhYMPxRt9w3qeTxx4ZCUPiDU7LELNDM=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1783165714;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=0RTT3tyaqCh38hX5R7GPYQMTuyoqEkW0enx2ssrsE28=;
	b=wkFL19SBleji+d7shmprmsmM+bQRjbqo4vt6Bg8Ug4MnciWZcuVw6gSFzvQHY0YVZA/cFS
	iPShdegE7H+eJ/3SRhfth5qEuByhkEhL1Rmb+s/pneKOqQirzmWhFDGDG5VF82bZ33V/Te
	RGKlnWF/KECNkoYYoic5SfnmM5uG7tM=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=M4Oca2F4;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
Received: by dvalin.narfation.org (Postfix) id D22141FEA4;
	Sat, 04 Jul 2026 11:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1783165713;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=0RTT3tyaqCh38hX5R7GPYQMTuyoqEkW0enx2ssrsE28=;
	b=M4Oca2F4m47GtYLjm5lEieMGaNw6D+63GrylAnSAzqW9Vr553ypUwwZdCt0ACFQI9v500n
	G+vOrr195F2D2S8ujnPiG+Aby592hVAMZwzG1WcNkmwI5w6+q+x5ZoPqCwMJr9Uyhj69Q+
	jjVdOxerDDZbuuFcw81LwOamDZJzDhI=
From: Sven Eckelmann <sven@narfation.org>
Date: Sat, 04 Jul 2026 13:48:18 +0200
Subject: [PATCH] batctl: isolation_mark: fix error message for invalid
 mark/mask values
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260704-bugfixes-isolation-v1-1-247e221a6e5a@narfation.org>
X-B4-Tracking: v=1; b=H4sIAAHzSGoC/yWM2wpAQBBAf0XzbGvd41fkYa1ZRkI7SMm/GzyeO
 udcwOgJGargAo8HMS2zQBQGYAcz96ioE4ZYx7kudKravXd0IiviZTKb6CpzOnFYFmliLEi4evw
 U6ermZ97bEe32nuC+HxQnFfd2AAAA
X-Change-ID: 20260704-bugfixes-isolation-5f03fe9743ac
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1212; i=sven@narfation.org;
 h=from:subject:message-id; bh=MlCCZmlVXY+RNAKNj+GobE+4iopVvk0S2APuywtWZKY=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDFken5n2HfQ9t2SS2t15Fz+sjpP+YNnC7DCJY2afysaME
 2d2/zSS6ihlYRDjYpAVU2TZcyX//Gb2t/Kfp308CjOHlQlkCAMXpwBMpG4dI8PyuevNbi7sMX7h
 ZZpyY+LkHvV9MhcFlBmnak788eXGHeMuhv/FMbE5PWsnxy76WCV/Pui3QjiHRdXiddONdJ8t23U
 xOogTAA==
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: 3IVWD6ZH625CEA47NCO5RQXQYNFKNQBQ
X-Message-ID-Hash: 3IVWD6ZH625CEA47NCO5RQXQYNFKNQBQ
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/3IVWD6ZH625CEA47NCO5RQXQYNFKNQBQ/>
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
X-Rspamd-Queue-Id: CA67770770B

When the mark or mask argument fails to parse, error message claims
"incorrect number of arguments (expected 1)" even though exactly one
argument was given.

Print the offending value and say that the format is invalid instead.

Fixes: a319ec4dcbff ("batctl: Support generic netlink for isolation_mark command")
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 isolation_mark.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/isolation_mark.c b/isolation_mark.c
index cef4de0..8770fad 100644
--- a/isolation_mark.c
+++ b/isolation_mark.c
@@ -67,7 +67,8 @@ static int parse_isolation_mark(struct state *state, int argc, char *argv[])
 	return 0;
 
 inval_format:
-	fprintf(stderr, "Error - incorrect number of arguments (expected 1)\n");
+	fprintf(stderr, "Error - invalid isolation mark/mask format: %s\n",
+		argv[1]);
 	fprintf(stderr, "The following formats for mark(/mask) are allowed:\n");
 	fprintf(stderr, " * 0x12345678\n");
 	fprintf(stderr, " * 0x12345678/0xabcdef09\n");

---
base-commit: e93995999e80513db80eba200ea682b5b15556af
change-id: 20260704-bugfixes-isolation-5f03fe9743ac

Best regards,
--  
Sven Eckelmann <sven@narfation.org>

