Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id uNCjLXtUSmqlBQEAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 05 Jul 2026 14:56:27 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 653FE709FFE
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 05 Jul 2026 14:56:27 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=narfation.org header.s=20121 header.b=UAZy+98n;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 2a01:4f8:241:fc1:136:243:236:17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 417A48450F
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 05 Jul 2026 14:56:27 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1783256187;
 b=gOYIqE/aWVPe5vCHMwh+ZsYmgB+5K8o5YlfLa1QCXcFYb4eGMpT/B7wgx+gzx1Ar1xjrJ
 rDSRMFS1/sXqR89kxYUthQYXibjAfp4KOOWblQVIk5IG2Qj6MRDbbA1YTLN882CItFOKpf/
 S4dlgc0Y++mYGeS4aV6i1g9DhBAFFM8=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1783256187; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=38YjiZlk0OvT529zy6dg7WYO7YZlAykl/ntOgYDl9F0=;
 b=zGoU2/cHEHy1/MTU4XXrJ5EnkZ85Szc2/OHsY4wPa+KGbIkp3KMfq8sTZizvd5mhrZslG
 QSFdItOh/Nl3qb9UnSgVHH1enyROTv+OABEjsrAf0QzRmSfDV89SdBywoqvEfZWW1aEpLSo
 xvoX51O37S38/ajoro/ovq5FJZRw8vQ=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org
 [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id 2615A84005
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 05 Jul 2026 14:55:27 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1783256127;
	b=ZjQDSecZeTgEcH240c3mVmeLCuE3arcIu6xjxVTLFhe9sClvkHstYZOI1Z8T2wTTm3iOl6
	p0NTM5PAMf+gSQCc+OUvLsiDdSl/7LpYCp5yb54Wnw4O53WjppHbfQU4l0YPRr9YS4oEI+
	nlvC9BxT7VYIBGTb4FmirXuEwYfQkFk=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1783256127;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=38YjiZlk0OvT529zy6dg7WYO7YZlAykl/ntOgYDl9F0=;
	b=wDYkt0+un9MjZb+avhzsyDZic/KPcXr0sp2Yp4pdc74qkGyXLQoqrgwbi/0mvQamWG+XVs
	iuHeRfKVIZhq9Cn/VL5Q9lcLPBvRV5hrrbBlz6DLoH7wkmSmofggGYyhVLO18ZEYl+vcE3
	ck7CIGZTfiGIvftkQObOZYCs+xWGWzI=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=UAZy+98n;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
Received: by dvalin.narfation.org (Postfix) id DACD4201CF;
	Sun, 05 Jul 2026 12:55:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1783256126;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=38YjiZlk0OvT529zy6dg7WYO7YZlAykl/ntOgYDl9F0=;
	b=UAZy+98nD5Ryi0de/eDhkbvhyCwnDsVR/Uu8uFyTISAae95o+czGgzVXztZKrTdrxFMLe1
	d4JThNi8P5Aq/wun7mAoyaem+e+BP/Y3lIJr4h7kNQSV0UetZS1i4VcLRvkFc2ZtZ6kl5J
	Ort+LikGVoN8GncelgtRGroPCJ+xaBI=
From: Sven Eckelmann <sven@narfation.org>
Date: Sun, 05 Jul 2026 14:55:06 +0200
Subject: [PATCH 1/3] batctl: only mark file read successful on read line
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260705-bugfixes-version-v1-1-5f02046c7eea@narfation.org>
References: <20260705-bugfixes-version-v1-0-5f02046c7eea@narfation.org>
In-Reply-To: <20260705-bugfixes-version-v1-0-5f02046c7eea@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1171; i=sven@narfation.org;
 h=from:subject:message-id; bh=qByKRC0ggOxM9FtkpwFd3MB3Gvh1Chs5eTpnrz3PmX8=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDFleIXrXnESiMj2Xumf2/TZX6925aV7odEdLg9bE5a/6J
 n///yS6o5SFQYyLQVZMkWXPlfzzm9nfyn+e9vEozBxWJpAhDFycAjARrw5GhtsTr/guLWEytDu6
 fMenxpnF9YmpT6/q3CoNalcpUKvqk2X4K5enF7uuP/fkJW2VTI6S9SIpdmttwt/tfeb6JS53z5y
 PzAA=
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: OPYZMWMXHLXSIPJTP3Q7TOX6YK3XXIOK
X-Message-ID-Hash: OPYZMWMXHLXSIPJTP3Q7TOX6YK3XXIOK
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/OPYZMWMXHLXSIPJTP3Q7TOX6YK3XXIOK/>
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
X-Rspamd-Queue-Id: 653FE709FFE

The line_ptr is shared globally. It can happen that another function like
parse_hosts_file() allocated the buffer successfully. But the next
getline() in read_file() fails - but keeps the line_ptr valid. In this
case, the function would return a success - even when the buffer contains
stale data.

Instead only set the return value to EXIT_SUCCESS when a single line could
be read.

Fixes: deb324e65044 ("batctl: buffer based reading replaced by line-by-line reading")
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 functions.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/functions.c b/functions.c
index 00dbd3d..349569d 100644
--- a/functions.c
+++ b/functions.c
@@ -147,6 +147,8 @@ int read_file(const char *full_path, int read_opt)
 	}
 
 	while (getline(&line_ptr, &len, fp) != -1) {
+		res = EXIT_SUCCESS;
+
 		/* the buffer will be handled elsewhere */
 		if (read_opt & USE_READ_BUFF)
 			break;
@@ -154,9 +156,6 @@ int read_file(const char *full_path, int read_opt)
 		printf("%s", line_ptr);
 	}
 
-	if (line_ptr)
-		res = EXIT_SUCCESS;
-
 	fclose(fp);
 	return res;
 }

-- 
2.47.3

