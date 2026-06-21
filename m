Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id xIrWIgL4N2ojWQcAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 21 Jun 2026 16:41:06 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DB356AB198
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 21 Jun 2026 16:41:06 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=narfation.org header.s=20121 header.b=MfExY04P;
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 136.243.236.17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	dmarc=pass (policy=none) header.from=narfation.org;
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 061F5844A7
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 21 Jun 2026 16:41:06 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1782052866;
 b=V8GXjQmTTfdyiqz/s695sxYTSVwP/yQndZj6H9E/azT0FwJvRlZ6MEqLKiQakTr7Di6Lw
 /FlYF+Cqclvwg67FDNuBH8Ty+1aBzdvXkAtymBoo/55ceSQNOBGCx5ess30jQA838Qlt7Mp
 ijIBX9QSCOtG+4CUeR4mJ1dpRhKooFk=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1782052866; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=t4hxBJyNxh0yPFCvx4ZMas5VgGxvvJnqfGrQKHkl+RI=;
 b=L9sOLf4kCRI2251nAZt/2xIMiyQG6qffYH2UU/qfCQYA8mnU2XD1Yp5Ow9nnyEDv5LJYq
 ccVs3RwfBNM8eHWQ5eqmS2iOpUNeagR3o+0bE/wtNH6T57Nrsj26eDVnOkMSVEnRmk6+cTP
 t67cxZvaax9F8OFheB691Z6Ggcq7QeA=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org
 [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id 90A0C8424F
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 21 Jun 2026 16:25:47 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1782051947;
	b=wWCf5F+OiAXOHfsiJ+zeox5jSWZ1WeLk6BitjmcdvkguTqthNdSZjhLK17rbCECBOp6VNu
	7rgQRbB4ILT8JBrLXWPAKWfK7ea7JFXkbOhV0bVWYBbYNOgIi2b9Jy/HABKHJeqs2ky8BJ
	4kI57+m8g5V/imrDO2tQKZTIEImTteI=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1782051947;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=t4hxBJyNxh0yPFCvx4ZMas5VgGxvvJnqfGrQKHkl+RI=;
	b=g6Rb9VOhBZ/ufJgBpBI1UxQlkWMhvFSMlYvmuXwxa2e9RRminc4Hr5TB6EFm8B5ZmjNuK7
	+roBq27knAuGcMSAHa5AFeO2FudXmAcMReLpSHJ+HfdW9hq9cWy5+YVkFYeePi9dAgzshw
	MUJntyt1Hll4JK56Th3eX3iX+KlXt0Y=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=MfExY04P;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
Received: by dvalin.narfation.org (Postfix) id 3C3DD20131;
	Sun, 21 Jun 2026 14:25:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1782051947;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=t4hxBJyNxh0yPFCvx4ZMas5VgGxvvJnqfGrQKHkl+RI=;
	b=MfExY04PkLxUVazNGG+GYJDDSqXUto1eMwRFPQsrMe4EGhbKBfAFVQ1z4Ar+guaDfx/we6
	F2686rJ3meSG6+Xa602smnIE8cRRyNaVwfPYlAvyga047QjUzfHhWQvh9oISmRRdKaQT+J
	jQdZ7l3wKRg615QtA1nyZXEi0NwqNbw=
From: Sven Eckelmann <sven@narfation.org>
Date: Sun, 21 Jun 2026 16:24:12 +0200
Subject: [PATCH 22/28] batct: bat-hosts: compare full path for
 deduplication
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260621-bugfixes-v1-22-b09736288a4a@narfation.org>
References: <20260621-bugfixes-v1-0-b09736288a4a@narfation.org>
In-Reply-To: <20260621-bugfixes-v1-0-b09736288a4a@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=932; i=sven@narfation.org;
 h=from:subject:message-id; bh=M0wbZ89pUmeemmITyv4jls9dm9qDDqFP4MUvauORKqU=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDFnmX9jnLO05/PJvSESQud3MKYeND4W5cVveWrk3yEpfc
 YPZFrb5HaUsDGJcDLJiiix7ruSf38z+Vv7ztI9HYeawMoEMYeDiFICJbHFn+J+491DNJdaHEg7V
 wTeEt/V1hVusOyn8RUT/ZqJGhOHeVXUM/0u+Ls5bc6C5o2bj4YD9vySa3qhH+21TOMhvLjPN9UT
 /M24A
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: RJJ5VQCUWKBBNJ4V5SXSSOE53VQFY6XT
X-Message-ID-Hash: RJJ5VQCUWKBBNJ4V5SXSSOE53VQFY6XT
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/RJJ5VQCUWKBBNJ4V5SXSSOE53VQFY6XT/>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[diktynna.open-mesh.org:rdns,diktynna.open-mesh.org:helo,lists.open-mesh.org:from_smtp,narfation.org:dkim,narfation.org:email,narfation.org:mid,narfation.org:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2DB356AB198

The deduplication code uses realpath to store the real path of a provided
configuration file. The code then tries to compare these paths but
accidentally only comparse only the first CONF_DIR_LEN (256) bytes of the
path.

The number of bytes must be set to the same length as the path size slot in
the normalized buffer.

Fixes: db97c2a77e81 ("batctl: fix crash in bat-hosts parser on embedded systems")
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 bat-hosts.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/bat-hosts.c b/bat-hosts.c
index 57e7d69..6ad8247 100644
--- a/bat-hosts.c
+++ b/bat-hosts.c
@@ -203,7 +203,7 @@ void bat_hosts_init(int read_opt)
 		for (j = 0; j < i; j++) {
 			if (strncmp(normalized + (i * PATH_MAX),
 				    normalized + (j * PATH_MAX),
-				    CONF_DIR_LEN) == 0) {
+				    PATH_MAX) == 0) {
 				parse = 0;
 				break;
 			}

-- 
2.47.3

