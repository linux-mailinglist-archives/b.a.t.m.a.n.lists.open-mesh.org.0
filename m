Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id q0sBMKn3N2oRWQcAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 21 Jun 2026 16:39:37 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 6212F6AB189
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 21 Jun 2026 16:39:37 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=narfation.org header.s=20121 header.b=SNU8IWjz;
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 2a01:4f8:241:fc1:136:243:236:17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	dmarc=pass (policy=none) header.from=narfation.org;
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 4878283E8B
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 21 Jun 2026 16:39:37 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1782052777;
 b=cnxjC0EscjM6zYYKqEVmubMIU141IfcLQdMSdNWzYyq8VpVJlLL7Ma2tAf0/bJHfY64xx
 kxiqeJyJvccLh7h2rk3CXaEzAAOEXJBabeKlEPfWL5DoeN9DBqw5pCa8LfKyHZ7nmQBoMj8
 OmF12I1FypoNso2yuIp+RBRPNwYaC1w=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1782052777; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=1WJ7faYQ+LkVtycnMyAFriNfa/axPtfLZMHfa9MTSy0=;
 b=AA6Pywc8NV8us83o8ddk6xBzhIVMpd85C7nUXd0eWqwdERc9uVc6j2RxfeizJxPta5izI
 t9DY3zZHvnn4kbc+I2yrpGVV6Cht7AZwofWnb+YzWp0Rsqp/vTeulP96QIl4WR56mxIK7zu
 5NEE12+kNqdXanlR4sq3L1MmxfiBK5E=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org
 [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id 0FAAA84241
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 21 Jun 2026 16:25:43 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1782051943;
	b=ZEXYPBls8AksgBckzkeDU/Yaz2CUkaUoYcpqZsFBr4smxmhLACXYK7v/unlItzt8xjHdsm
	3jdY4gNcp6jX6+FTYfFtW6cZF7l0CMdZsp6AtpBUntM0fwNbh+GCVsaJxcIonLI197j8yw
	j/M1s9t50iGgNMOrR3JBIKugHv4TgKY=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1782051943;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=1WJ7faYQ+LkVtycnMyAFriNfa/axPtfLZMHfa9MTSy0=;
	b=JxqUWGCWRIyhIhwdecNMmfiuRsjLfsxg80YVPPQ9JQAuc163KsXY+PwtA9tNrHQOyYYoRN
	xPfWh3d1z8WGIHpWt0TyAOOqhP1chp157jYidjk9ZX/CVC1GgZ2Tkz/+/Momb7ibQq9vmW
	f3sp4G10qQJp44TlpA6VazSFkrog208=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=SNU8IWjz;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
Received: by dvalin.narfation.org (Postfix) id BB9C720131;
	Sun, 21 Jun 2026 14:25:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1782051942;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=1WJ7faYQ+LkVtycnMyAFriNfa/axPtfLZMHfa9MTSy0=;
	b=SNU8IWjzP+/+VXi2GjREHB4qCR8QjhtAbQB9jkGMDkYQ2jCrTN2y9l/maiKTYUkC7PT/Bt
	q1beBYRR79rDsiIBj1N418sPslxTDCrtRFEKrimn8wi5nxEwBjIq+eX52GuhWmttB+etRc
	fLNDCpoj/R8AKMkShy4oEzXrdcMr3/o=
From: Sven Eckelmann <sven@narfation.org>
Date: Sun, 21 Jun 2026 16:24:10 +0200
Subject: [PATCH 20/28] batctl: version: don't strip newline for empty
 buffer
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260621-bugfixes-v1-20-b09736288a4a@narfation.org>
References: <20260621-bugfixes-v1-0-b09736288a4a@narfation.org>
In-Reply-To: <20260621-bugfixes-v1-0-b09736288a4a@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=881; i=sven@narfation.org;
 h=from:subject:message-id; bh=37TTFUPZHMXd1rizsEv3RjYdk+V44TWCmHhyGGbTlxI=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDFnmX9hPrbKeXG7+8Mf7mimeu1bd2pJSquHNyLpJt1FIv
 iBjmi9PRykLgxgXg6yYIsueK/nnN7O/lf887eNRmDmsTCBDGLg4BWAi5T8Z/pn7LVOaZn1C6uKS
 TdF/DjW3ydWLbzW4Y+OpvHP5tkq3vl0Mf/g2pnrvnn/shVHXpNViF5rZMnnfX9ALlStM3cYxfUf
 iR0YA
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: ZHRG5GL22TI75PFHXCMT4K5E223WKWG5
X-Message-ID-Hash: ZHRG5GL22TI75PFHXCMT4K5E223WKWG5
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/ZHRG5GL22TI75PFHXCMT4K5E223WKWG5/>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[diktynna.open-mesh.org:rdns,diktynna.open-mesh.org:helo,lists.open-mesh.org:from_smtp,narfation.org:dkim,narfation.org:email,narfation.org:mid,narfation.org:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6212F6AB189

When read_file() would return an empty buffer, then version() must not
strip the last byte. Otherwise it would try to access 1 byte before the
start of the buffer.

Fixes: dbc4a8c8e585 ("batctl: version also prints the kernel module version if available")
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/main.c b/main.c
index 79ed4ef..94db4a1 100644
--- a/main.c
+++ b/main.c
@@ -132,7 +132,7 @@ static void version(void)
 	printf("batctl %s [batman-adv: ", SOURCE_VERSION);
 
 	ret = read_file(module_ver_path, USE_READ_BUFF | SILENCE_ERRORS);
-	if ((line_ptr) && (line_ptr[strlen(line_ptr) - 1] == '\n'))
+	if (line_ptr && strlen(line_ptr) > 0 && line_ptr[strlen(line_ptr) - 1] == '\n')
 		line_ptr[strlen(line_ptr) - 1] = '\0';
 
 	if (ret == EXIT_SUCCESS)

-- 
2.47.3

