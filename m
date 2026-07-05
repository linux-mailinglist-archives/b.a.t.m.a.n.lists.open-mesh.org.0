Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id I5lHDDd+SmpxEAEAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 05 Jul 2026 17:54:31 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id BB27270A83D
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 05 Jul 2026 17:54:30 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=narfation.org header.s=20121 header.b=H350XlPN;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 136.243.236.17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 9AA1A8237A
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 05 Jul 2026 17:54:30 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1783266870;
 b=JlY4rFN75O/JpEJE8sw/kTCteJgu2gjfkxxYE82FQaOWC0SQDeagdV699ZaBqpxMAXNs7
 cxicVsrmDblKw5NuOXgSHgfI+OgKYZ0RIrA+2QAzGVg9hP0orBGmTR1LmyyNAWc12j/63Gs
 B2S8NCPYFVhTyQAyOGLkeN6dQTkx4SY=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1783266870; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=h71XnDTPNIJnW6lSnl/+SzEr19zoJW39v+ybRY3tVlE=;
 b=TG7QhdJDprUxo8SUrpdNEFOJxelNBaNLlXbNySrqpCTEAKD/typhN0iSV133KnKo+aOk8
 5Yb5cW6aAhXPj1LBU8K8nIJkrDL6iJF+POzPDpJtN43+7ALdUym1PopSsrViiIPIcS2bv2y
 9thL0GihiXH66+tN88NVvtQwqDlORMk=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id C6FAE818CD
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 05 Jul 2026 17:54:08 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1783266853;
	b=WbtFFu7bR/I1ZORMJZgKMEs/FAqrgEg6bHpn81rasoc7TL90BU6ybGWgIiWKAkx+8rEex/
	hiI8GNJsWBu37MnJMtLxpa8jmcAm6rTjefhJgfaEN8ho1+m/fIplQWPT+3+jCA5cwU9Tzi
	p2+UVVM7pr9S1HuYYB4dLbFTkptrWBM=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1783266853;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=h71XnDTPNIJnW6lSnl/+SzEr19zoJW39v+ybRY3tVlE=;
	b=AhTewaJFpWxVz86kNJvf5a3dOaMhilL42m3ueDSuvbG3fAscAbkjvnNJX4UVndjGMW/o+a
	HX0Jmu598BHKt/uc3wg7EuEWkvFL3K6zfteG2AQAcfJLKW/iXo9368jhm8OnufFwuJbldW
	T29QIYxk4jcIyfoHEfmSJ1Utyba9mck=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=H350XlPN;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
Received: by dvalin.narfation.org (Postfix) id 6AE2120539;
	Sun, 05 Jul 2026 15:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1783266848;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=h71XnDTPNIJnW6lSnl/+SzEr19zoJW39v+ybRY3tVlE=;
	b=H350XlPNzfW0IuLDSHYH7ygzExEa7MlOKhS4qVSwHIaOs2xC11Kn5x2u6q59vvrZCGHdIA
	VkJHKXWta+MdkeCjtwov45KC6cZtDQWJZTmGAC0mN6olnyzA0w/4QLXT7wdPAPAouVatU8
	ezJEhoRF7F1uRcLGd8M/oIv+2NOAgiQ=
From: Sven Eckelmann <sven@narfation.org>
Date: Sun, 05 Jul 2026 17:53:35 +0200
Subject: [PATCH 1/5] batctl: genl_json: avoid negative chars in
 sanitize_string
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260705-bugfixes-genl_json-v1-1-8cc79129012c@narfation.org>
References: <20260705-bugfixes-genl_json-v1-0-8cc79129012c@narfation.org>
In-Reply-To: <20260705-bugfixes-genl_json-v1-0-8cc79129012c@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1095; i=sven@narfation.org;
 h=from:subject:message-id; bh=DAfZJAlk1DBVgywL44vy3fIHnyvpWfPR28eGRHiYhj8=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDFledfy63S8OZsrpzZnQ+r80KeBE0GTpeiVLRcYjD9x8W
 u7GMlZ2lLIwiHExyIopsuy5kn9+M/tb+c/TPh6FmcPKBDKEgYtTACby4g0jw6PLmRF1yUzHeO8t
 +dwWkbdHX6D1dFVCdbraofrz99PP8jP899s/iWHtx5/z9Y8emvlcLNvxVZlvw9xJa+781yg64/J
 hEh8A
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: ZMXYCD43SUEKCLEIJYNTXMWEQCMHZELP
X-Message-ID-Hash: ZMXYCD43SUEKCLEIJYNTXMWEQCMHZELP
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/ZMXYCD43SUEKCLEIJYNTXMWEQCMHZELP/>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[diktynna.open-mesh.org:helo,diktynna.open-mesh.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: BB27270A83D

char is signed on common platforms. Passing a "negative" string byte to
isprint() is undefined behavior when it is not EOF. The manpage for isprint
is therefore requesting to provide the argument as unsigned char.

Fixes: ae1a3d3f0bb7 ("batctl: genl_json: Add generic JSON interface")
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 genl_json.c | 16 +++++++++-------
 1 file changed, 9 insertions(+), 7 deletions(-)

diff --git a/genl_json.c b/genl_json.c
index 8aa97b4..ee83ab2 100644
--- a/genl_json.c
+++ b/genl_json.c
@@ -33,16 +33,18 @@ struct nla_policy_json {
 
 static void sanitize_string(const char *str)
 {
-	while (*str) {
-		if (*str == '"' || *str == '\\') {
+	const unsigned char *c = (const unsigned char *)str;
+
+	while (*c) {
+		if (*c == '"' || *c == '\\') {
 			putchar('\\');
-			putchar(*str);
-		} else if (!isprint(*str)) {
-			printf("\\x%02x", *str);
+			putchar(*c);
+		} else if (!isprint(*c)) {
+			printf("\\x%02x", *c);
 		} else {
-			putchar(*str);
+			putchar(*c);
 		}
-		str++;
+		c++;
 	}
 }
 

-- 
2.47.3

