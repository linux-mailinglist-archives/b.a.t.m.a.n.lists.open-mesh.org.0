Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 98rMD/RKTWoWxwEAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 07 Jul 2026 20:52:36 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id D905871EC0C
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 07 Jul 2026 20:52:35 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=narfation.org header.s=20121 header.b=TZfQrthn;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 136.243.236.17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id B5B8284A42
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 07 Jul 2026 20:52:35 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1783450355;
 b=Wc08+UWZmrpb/SEZgaVCg1Ki3pkFoM7nNCc3fKbH1UNLHvWc2T+w80jeaiXO1v2wDsO8I
 DSB+knszlyKj/uYz1Aq76fJPVKMru2+Gc9bSIQhfjeGHMCnshJTHJUDgW+lSXxnHT2cmWfo
 tWdaOit9cb+xiEitajUZf2tEE+RK5tI=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1783450355; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=uOWNgaxNTGMtWuO+UU4p81t7p4GdqpmNJlloTuUIt4U=;
 b=qycZDnrvv3EmURvLZsDuil0B5ZB7ce6uZJo527vhnz49ksLeYQnqUZ72Uly44gXI/CdfW
 4CAkI/Are65FIL5pib1m9M0TAGAjrbNIMF4LmMtVgSX8vpL+8egHJS4oEUSP30IGi+TRAcl
 xphMEB0Ne3uLcSFWb6u9FrFbu8GjhgE=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org
 [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id F183983454
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 07 Jul 2026 20:47:07 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1783450028;
	b=UNV903XZ5W4nqecIAcDU1tcZT1qFpdpLv1+8aZlkMq1PL5LYaCUMqWyO5KyIrUxQ3dCz28
	WAdAIxW4MuBP3TwGsdQmyBL5MtfWWKY33pWwGVdxUkHPIRw5RQzrPygNx6ffaVcxy01F9j
	nlVO37zriJOJ92hDOYbf3+e/0ILJ5JA=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1783450028;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=uOWNgaxNTGMtWuO+UU4p81t7p4GdqpmNJlloTuUIt4U=;
	b=Uau2Ei1SMMvXaH5Gz6tkNtmOb5Lqydps5LxNh6ESQjdEfRvoUMbCcdrW8X4OxCl8elqH29
	CC8VxQ3JOt4Upk5uC4ixMEFEt/uL+diGplxXRcrwucK1KjzUdkTAGq6Opnn+JefOJupZAy
	v91yWs6L8jXKgWK1rMldJMfZEUmGCk4=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=TZfQrthn;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
Received: by dvalin.narfation.org (Postfix) id B0EB7202D1;
	Tue, 07 Jul 2026 18:47:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1783450027;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=uOWNgaxNTGMtWuO+UU4p81t7p4GdqpmNJlloTuUIt4U=;
	b=TZfQrthnsGmpJJttqQWJhHNZ3HPp52k/ZY41zA82XxeBi0wgmTYJbpfbOka7EWwVzsVgjH
	HXGPCxwdaniZRs59sf3QJNcyESQOnqy8+7mb4SVmWWyS9pYTcA7FccZmquScAPss8LDgGI
	QAHAtsuIGKfJ6qWLE4v0TsouytzPErU=
From: Sven Eckelmann <sven@narfation.org>
Date: Tue, 07 Jul 2026 20:46:49 +0200
Subject: [PATCH 07/11] batctl: ping: reject invalid packet count argument
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260707-bugfixes-icmp-v1-7-ee563a984acf@narfation.org>
References: <20260707-bugfixes-icmp-v1-0-ee563a984acf@narfation.org>
In-Reply-To: <20260707-bugfixes-icmp-v1-0-ee563a984acf@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1613; i=sven@narfation.org;
 h=from:subject:message-id; bh=j++tfR7wdXA7PPHlU739FUauzMYHXJ09efRcEYlUNrA=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDFm+ntMErfl0DkgpfD1/p9214rLrRV4/VtuCoxxHDi2bP
 vGgz8b1HaUsDGJcDLJiiix7ruSf38z+Vv7ztI9HYeawMoEMYeDiFICJPNvA8D93eniyfQGrzWNZ
 VqsjRVPvNKl8SVeLmyn7OffvleDfe4QZ/sr/fTSX67vOQyvGT+bK04xkwn8cX/hCSHDSy3WfLjY
 EbuYCAA==
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: 3UR7QTDY64LZZDZFYKO5T6T77KUWEK2M
X-Message-ID-Hash: 3UR7QTDY64LZZDZFYKO5T6T77KUWEK2M
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/3UR7QTDY64LZZDZFYKO5T6T77KUWEK2M/>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[diktynna.open-mesh.org:helo,diktynna.open-mesh.org:rdns,lists.open-mesh.org:from_smtp,narfation.org:from_mime,narfation.org:email,narfation.org:mid,narfation.org:dkim]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D905871EC0C

The -c option parsed its argument with strtol and only mapped the result to
the internal "endless" value when it was smaller than 1. But it ignores any
invalid parameter silently. The manpage also only documented the "missing
-c" as valid selection of the endless loop and not an invalid or smaller
than 1 value.

Use the same strto* validation as the rest of batctl and print a user
readable error in case of an parsing error.

Fixes: 87ade2869cf3 ("add interval and loop count options")
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 ping.c | 15 ++++++++++++---
 1 file changed, 12 insertions(+), 3 deletions(-)

diff --git a/ping.c b/ping.c
index c875c38..5551cd4 100644
--- a/ping.c
+++ b/ping.c
@@ -8,6 +8,7 @@
 
 #include <netinet/in.h>
 #include <errno.h>
+#include <limits.h>
 #include <stdio.h>
 #include <stdlib.h>
 #include <unistd.h>
@@ -90,15 +91,23 @@ static int ping(struct state *state, int argc, char **argv)
 	char *endptr;
 	int optchar;
 	int rr = 0;
+	long tmp;
 	int res;
 	int i;
 
 	while ((optchar = getopt(argc, argv, "hc:i:t:RT")) != -1) {
 		switch (optchar) {
 		case 'c':
-			loop_count = strtol(optarg, NULL, 10);
-			if (loop_count < 1)
-				loop_count = -1;
+			tmp = strtol(optarg, &endptr, 10);
+			if (!endptr || *endptr != '\0' || endptr == optarg ||
+			    tmp < 1 || tmp > INT_MAX) {
+				fprintf(stderr,
+					"Error - the supplied packet count is invalid: %s\n",
+					optarg);
+				ping_usage();
+				return EXIT_FAILURE;
+			}
+			loop_count = tmp;
 			break;
 		case 'h':
 			ping_usage();

-- 
2.47.3

