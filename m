Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id TN7SAi/4N2oxWQcAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 21 Jun 2026 16:41:51 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id A3E9C6AB1A6
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 21 Jun 2026 16:41:50 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=narfation.org header.s=20121 header.b=JQWzXdl4;
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 2a01:4f8:241:fc1:136:243:236:17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	dmarc=pass (policy=none) header.from=narfation.org;
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 611F284AF0
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 21 Jun 2026 16:41:50 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1782052910;
 b=RKyRgkiVUAqpH/+qK5wBc9wrjffEVU1n7xshnXRUpLBmjT9ANbT9QgdrVyCrqpf7DQwCz
 9goAE1520/8xP/WYcGwHv1kEFfx1DE+FT+OxAhThaiPIJEeCFAjMP5tTS2Xw9kulzLnZU8+
 IJmYofRphOM9/BlfAwcwEAqo6FLMQsA=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1782052910; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=hEBSvxG0pzDF2Nnmq+mgqsLojTY8iBR407+2nUnPAbY=;
 b=Vm6+ngTYladmzTQBt4AeOfm6fdEnX8P1dVYJ9cwbwI8h3BHlM7w0lesPwIzyWF5rIH7o4
 OjLi5WyVvGpcmvxsnNXMjTeejs+Ej6SVqFIjl9ry2jmk5Liyy5DuSw1prPTVIK8jA8amkyM
 WzZE2NR52u2oev0TM5LUAZZn/1r2ZwQ=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org
 [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id A7DDA84240
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 21 Jun 2026 16:25:49 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1782051949;
	b=4IaVQIGqE6LyRAhGVOVG4PL/8ehn/5B9hAyfjpaJofyG6GIL8n5k7PAe1Fzu0Kb5SLBMqr
	q4F9B/rcXgYI3ew6iIe6JJISziUEc6AeyP+yZUB6MNFpxxoiV7q3nYwJXdtL0g+BentmAo
	g6n3g1zRPlIg3zxtY9FV60QwIqXnQ1I=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1782051949;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=hEBSvxG0pzDF2Nnmq+mgqsLojTY8iBR407+2nUnPAbY=;
	b=ozu4me0z1ynTii/8l/AMKP0eNvDUcyWhQUKlkxW7CmhGJV6875dUH63VOcnle8lndC75JN
	tBQn0O1UXCOBJkJWReDayBqDp8lgbAwtDPi+g1fVpP25iU2J9DVqfp2fD38rJ83EJ8S4J+
	4UchtWhE+CNWVbWD8pOyIFVRbJcFjqE=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=JQWzXdl4;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
Received: by dvalin.narfation.org (Postfix) id 5DD0E20131;
	Sun, 21 Jun 2026 14:25:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1782051949;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=hEBSvxG0pzDF2Nnmq+mgqsLojTY8iBR407+2nUnPAbY=;
	b=JQWzXdl4TBfZqwxWNlsTQNGpB/j61xQ9jdhlUFY+eLu2ndhmfsBXR4LumYvuuHm7a8320A
	3qUdyl50I+XkJ+hK6r6DX55MrANCjr9cdlmiqyXHr5uRFh5xicBYbJ/2FhXQEo077QIA3B
	bi1kJQ54TpOeUTtiSLhnSM1IzZsvw84=
From: Sven Eckelmann <sven@narfation.org>
Date: Sun, 21 Jun 2026 16:24:13 +0200
Subject: [PATCH 23/28] batctl: mark file read only succesful on read line
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260621-bugfixes-v1-23-b09736288a4a@narfation.org>
References: <20260621-bugfixes-v1-0-b09736288a4a@narfation.org>
In-Reply-To: <20260621-bugfixes-v1-0-b09736288a4a@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1171; i=sven@narfation.org;
 h=from:subject:message-id; bh=zDwwk9LAJ7pyC/ih/kL+i104kxQMnfAx5wfLT56ih5s=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDFnmX9gjpkybYpex5weHGMNMLTmnsxm6BQc1nB8ax3/0O
 llS4XKko5SFQYyLQVZMkWXPlfzzm9nfyn+e9vEozBxWJpAhDFycAjARGwNGhg8zm8LFP7geWNmb
 Gvlj/rSlHvxaTNqRn5uL+rjeP9lmeI+RYb7r5+WTpodq/gnvaqlgP/dkD9PDH+kaPMZZDcssxH/
 acAMA
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: MED4KA3TGKZZ5JUUN2G2SVOQ2PAZQYLX
X-Message-ID-Hash: MED4KA3TGKZZ5JUUN2G2SVOQ2PAZQYLX
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/MED4KA3TGKZZ5JUUN2G2SVOQ2PAZQYLX/>
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
X-Rspamd-Queue-Id: A3E9C6AB1A6

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
index ae1c5e2..bb0dc18 100644
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

