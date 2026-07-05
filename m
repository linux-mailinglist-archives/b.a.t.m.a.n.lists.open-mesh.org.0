Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id d0AyOhqWSmqTEwEAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 05 Jul 2026 19:36:26 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F59170AB7E
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 05 Jul 2026 19:36:26 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=narfation.org header.s=20121 header.b=QriHf8H9;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 136.243.236.17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 6DE00821B3
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 05 Jul 2026 19:36:26 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1783272986;
 b=DrWI4VvcN1xC1K7RqgJZjdYUPxGNGA4OgXvQVzuFIt4rz9hpc+CPKNL+r/EWO9lh0rO55
 0kBMjF01IlE78QjlPBva1KiI7ceZFA1P1HrACitLTs+pkkDMTbsLNk+rF7Fb2cnQeHYnrOO
 gyeUzwKkM0S09YZfnjEaNH81yrpJGLs=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1783272986; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=xo3MlOwsMVj9FAvwSmgU+3tlXbEQRgwGWi5hnFiGJpM=;
 b=qtcY3qniOzeRWsPxLNJDq9v72baQr9uaZLDrz7mdAuiS3lq4vmhNseNDtGVhvUTLFH/Wu
 KLd9iQIi3/HGQ40M9POXw3EG01q8HMFyKIyHTOMV6e2E/cnyGn3Lh/WeWEzhcL/d4of0+pf
 C834vuoryggEQUIhdG4E042/Xywf/RM=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org
 [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id B197482E1A
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 05 Jul 2026 19:30:26 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1783272626;
	b=e4YWmuW97PdiXda0DMbpVej7NTL6rTGh9irW8A3uULbC7OfjQNVaTboRse9uIB/q3JGdNS
	Say1F/3ts7GA3qMFtFMQ+ftXmZqaMhbyCNCDMURnfBOJFbGQwD4FByhWHUTFUULriTpUKQ
	MbYBqnfoa4DKnCizjnDibHueLjjb2FA=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1783272626;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=xo3MlOwsMVj9FAvwSmgU+3tlXbEQRgwGWi5hnFiGJpM=;
	b=caZNLXNoWPrrxUHgYfVI7E52SZoJeq+S9Nh0OnqsftThuQknEBOA8IX5ZZzltyKrydBqVK
	7ADDRuV0j5UZn+RTCDJabpZZtEdZI2ZnLkXZhjXbiyrIH2t+nCvfQQ5WJJzjyT7aHJm8oN
	Ok/D+5ONTXdgPvnfvTJHZ8rEkuBLjDM=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=QriHf8H9;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
Received: by dvalin.narfation.org (Postfix) id 5C0061FEE6;
	Sun, 05 Jul 2026 17:30:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1783272626;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=xo3MlOwsMVj9FAvwSmgU+3tlXbEQRgwGWi5hnFiGJpM=;
	b=QriHf8H9MwWKe975Z8J3cG+t5iz8bMmKuoV3hgLKgp0U71iSRd7giDKoDZUdnRClO65Tbf
	9XQeSmzETK/BOZ3or2gkCtlLLcccD4+dor+rXC/KWa5p71oPtIDx2Wbm5TagBDubCuGDVG
	Icsd0k6HO7UzGxT7xUpljy5BtRWydHQ=
From: Sven Eckelmann <sven@narfation.org>
Date: Sun, 05 Jul 2026 19:30:11 +0200
Subject: [PATCH 8/9] batctl: tcpdump: reject invalid packet type arguments
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260705-bugfixes-tcpdump-v1-8-c37f6f82eed1@narfation.org>
References: <20260705-bugfixes-tcpdump-v1-0-c37f6f82eed1@narfation.org>
In-Reply-To: <20260705-bugfixes-tcpdump-v1-0-c37f6f82eed1@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2684; i=sven@narfation.org;
 h=from:subject:message-id; bh=e0Q7ydS5e30naXVD+PphQBEcLrykB/r6xwbPVby6HyM=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDFleU+aH3ClVvjvjxm+lhjPKsToCeZzulZJN+37tqfvyb
 eqL9NnCHaUsDGJcDLJiiix7ruSf38z+Vv7ztI9HYeawMoEMYeDiFICJ8BcxMjwp63vw75LweZt9
 eVve6Bi/+35jmt/VWWs/MXgdmXLI4u8tRobXyxa8Dq2TmVbSUaBev1tgvp+fwv1JQQ92s0ndf73
 90nw+AA==
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: W2TRXGXP33H5ZYNTXDFULVHL5HD3OJOD
X-Message-ID-Hash: W2TRXGXP33H5ZYNTXDFULVHL5HD3OJOD
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/W2TRXGXP33H5ZYNTXDFULVHL5HD3OJOD/>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.open-mesh.org:from_smtp,narfation.org:from_mime,narfation.org:email,narfation.org:mid,narfation.org:dkim,diktynna.open-mesh.org:helo,diktynna.open-mesh.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8F59170AB7E

The strtol error handling is rather complicated and it is not only about
checking the return value. The possible error indicators are:

* endptr is NULL
* endptr is not pointing to end delimiter
* endptr is pointing at nptr (because it might have been an empty string)
* returned value is larger/smaller than the expected maximum/minimum value
  range

The first tree conditions were not checked even when it is a potential
problem for multiple places. And the user was never informed about the
parsing errors. The old value was simply used.

Perform the needed validation steps and stop with an user readable error on
parsing problems. At the same time, switch to the unsigned number parsing
function strtoul because no negative numbers are allowed as inputs.

Fixes: fca4ef98aa99 ("change mac convert functions, add icmp packet output")
Fixes: c6ed60c0f6fd ("batctl: tcpdump - add option to select all packet types except specified")
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 tcpdump.c | 29 ++++++++++++++++++++++-------
 1 file changed, 22 insertions(+), 7 deletions(-)

diff --git a/tcpdump.c b/tcpdump.c
index f9fb0c1..48744ea 100644
--- a/tcpdump.c
+++ b/tcpdump.c
@@ -1506,12 +1506,13 @@ static int tcpdump(struct state *state __maybe_unused, int argc, char **argv)
 	fd_set tmp_wait_sockets;
 	int ret = EXIT_FAILURE;
 	fd_set wait_sockets;
+	unsigned long tmp;
 	struct timeval tv;
 	int max_sock = 0;
 	ssize_t read_len;
+	char *endptr;
 	int optchar;
 	int res;
-	int tmp;
 
 	dump_level = dump_level_all;
 
@@ -1527,14 +1528,28 @@ static int tcpdump(struct state *state __maybe_unused, int argc, char **argv)
 			read_opt &= ~USE_BAT_HOSTS;
 			break;
 		case 'p':
-			tmp = strtol(optarg, NULL, 10);
-			if (tmp > 0 && tmp <= dump_level_all)
-				dump_level = tmp;
+			tmp = strtoul(optarg, &endptr, 10);
+			if (!endptr || *endptr != '\0' || endptr == optarg ||
+			    tmp == 0 || tmp > dump_level_all) {
+				fprintf(stderr,
+					"Error - the supplied packet type is invalid: %s\n",
+					optarg);
+				tcpdump_usage();
+				return EXIT_FAILURE;
+			}
+			dump_level = tmp;
 			break;
 		case 'x':
-			tmp = strtol(optarg, NULL, 10);
-			if (tmp > 0 && tmp <= dump_level_all)
-				dump_level &= ~tmp;
+			tmp = strtoul(optarg, &endptr, 10);
+			if (!endptr || *endptr != '\0' || endptr == optarg ||
+			    tmp == 0 || tmp > dump_level_all) {
+				fprintf(stderr,
+					"Error - the supplied packet type is invalid: %s\n",
+					optarg);
+				tcpdump_usage();
+				return EXIT_FAILURE;
+			}
+			dump_level &= ~tmp;
 			break;
 		default:
 			tcpdump_usage();

-- 
2.47.3

