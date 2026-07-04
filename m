Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id aRY1Mu9gSWqe0wAAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 04 Jul 2026 21:37:19 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 73105708420
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 04 Jul 2026 21:37:19 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=narfation.org header.s=20121 header.b=Oja+2UYw;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 136.243.236.17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 4FBF6844C6
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 04 Jul 2026 21:37:19 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1783193839;
 b=nUZxmcYUuweIkpxT1zWl/nIe+jvknnKLu78klJxwaE8f1X2m6zyWHu58EK1+0//bBPOEL
 aCqwrzWKeMI/yMvP4c9g9gWEjM7zvIEaIICrDWHKawmtMr/My3ggcfwZHymig+Wnu4ZMzHN
 MSGNVeuRyDC7oFZ63pr8D+DNlXw0Uqk=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1783193839; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=51aWigFqzXYRFGpCT3ewKUzDGpRFaF0H8k4TYd3QZLQ=;
 b=VjnGfMWlBqaQQ89/6OhZlJemdtzMv+/lUx2aRr+Rd6eQNJ6XpJb+/xG/xrtM93JrdJ0vb
 qwgmnN/v5ox6DnehBK+Ew9A7JIwU8pUwuaN7dQPK1Grt7fpp13xwgYcdfv7JPFdlV22dOyc
 wNZj91amc7/hrm5jKd8JEMyU9mzKqqc=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id 688D684206
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 04 Jul 2026 21:36:29 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1783193789;
	b=c7qcLjd/M3Hrw8OmV+JPdhjCCOc31FzMp83BmIq7hxSssk1k3Ked8Kjaz+Wfv14vOgT1cl
	PhqRHRyNlUb1sCV2oBa31Pe+sIK0TwYb4Q+WNNVQLjU16pDRUgEvY+Ng1/JQtbDhuI+zAz
	yXea9S9BmebUUoM3uW2QaH6ddITVp+U=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1783193789;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=51aWigFqzXYRFGpCT3ewKUzDGpRFaF0H8k4TYd3QZLQ=;
	b=fArI+6os8KuqUGkULYGfillcFaWamDtPeV3nbvm/a+Q4CmhYUpPx/xxFMsQaWkcedp3cVb
	22UWcSL/KYyUvZcJTzUJ69NUsn0GI1zIs9xYozMe09jvsGj5+jyxjxT1J3pldgiyk//++H
	ShNL4+++3pzGC0RwTS1TXIBWlDzQ4Ts=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=Oja+2UYw;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
Received: by dvalin.narfation.org (Postfix) id DB22020685;
	Sat, 04 Jul 2026 19:36:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1783193788;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=51aWigFqzXYRFGpCT3ewKUzDGpRFaF0H8k4TYd3QZLQ=;
	b=Oja+2UYw+EINMvoMiILgndNqDGbVrXNy012CW1oc5QHgxuwQemwI1BnyIhGxmfyoy/sFCR
	lvcORCbdC7G10LjYxmo2bdX6K64PgpYZa9CvDQ4k1cqEIBNx9QvTspGKazkGSavAhlkrwx
	SCsuv/AqvUWlB5+zn2BeTVKwKNHIZ3k=
From: Sven Eckelmann <sven@narfation.org>
Date: Sat, 04 Jul 2026 21:35:59 +0200
Subject: [PATCH 1/5] batctl: debug: avoid endless getopt loop for attached
 '-w' argument
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260704-bugfixes-debug-v1-1-888ddc878206@narfation.org>
References: <20260704-bugfixes-debug-v1-0-888ddc878206@narfation.org>
In-Reply-To: <20260704-bugfixes-debug-v1-0-888ddc878206@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=4968; i=sven@narfation.org;
 h=from:subject:message-id; bh=X7OZ+1aas1l4nF4sRjdo8hYQIwgFI2skbX6fBA0KFQ4=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDFmeCct53wa1nVma3dqSedVjorOtT/P/FStVv0eqSfeuT
 71v/XtWRykLgxgXg6yYIsueK/nnN7O/lf887eNRmDmsTCBDGLg4BWAiy54wMrS+5KjyL/L6+GSS
 6WpBk08CC4V+hehMeGTOUzeX9x271lxGhi+ZglcZypgEkm/5Rl9l6Hhztc5kwZv5Roa/tZ9kuMZ
 W8wMA
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: IHNVENC3O7GU27UFJEVPVSZCSQ6AUGYL
X-Message-ID-Hash: IHNVENC3O7GU27UFJEVPVSZCSQ6AUGYL
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/IHNVENC3O7GU27UFJEVPVSZCSQ6AUGYL/>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[narfation.org:from_mime,narfation.org:email,narfation.org:mid,narfation.org:dkim,lists.open-mesh.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 73105708420

The watch-mode "optinaparsing hack is not stable and breaks the assumptions
of getopt parsers. If something like "-w-" was specified as argument, then
the glibc and musl parsers would just cause an endless loop. And when no
argument was specified, an error "option requires an argument: w" was
always appearing.

It is better to use the optional parameter support which is directly
provided by glibc and musl:

  batctl meshif bat0 originators -w
  batctl meshif bat0 originators -w2.3

Fixes: e4a7b7733faf ("batctl: Add an optional interval for watch-mode")
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 debug.c      | 12 ++++--------
 man/batctl.8 | 18 +++++++++---------
 2 files changed, 13 insertions(+), 17 deletions(-)

diff --git a/debug.c b/debug.c
index 163a46b..bca81c8 100644
--- a/debug.c
+++ b/debug.c
@@ -26,7 +26,7 @@ static void debug_table_usage(struct state *state)
 	fprintf(stderr, " \t -h print this help\n");
 	fprintf(stderr, " \t -n don't replace mac addresses with bat-host names\n");
 	fprintf(stderr, " \t -H don't show the header\n");
-	fprintf(stderr, " \t -w [interval] watch mode - refresh the table continuously\n");
+	fprintf(stderr, " \t -w[interval] watch mode - refresh the table continuously\n");
 
 	if (debug_table->option_timeout_interval)
 		fprintf(stderr,
@@ -53,7 +53,8 @@ int handle_debug_table(struct state *state, int argc, char **argv)
 	int optchar;
 	int err;
 
-	while ((optchar = getopt(argc, argv, "hnw:t:Humi:")) != -1) {
+	while ((optchar = getopt(argc, argv, "hnw::t:Humi:")) != -1) {
+		printf("%c\n", optchar);
 		switch (optchar) {
 		case 'h':
 			debug_table_usage(state);
@@ -63,10 +64,8 @@ int handle_debug_table(struct state *state, int argc, char **argv)
 			break;
 		case 'w':
 			read_opt |= CLR_CONT_READ;
-			if (optarg[0] == '-') {
-				optind--;
+			if (!optarg)
 				break;
-			}
 
 			if (!sscanf(optarg, "%f", &watch_interval)) {
 				fprintf(stderr,
@@ -130,9 +129,6 @@ int handle_debug_table(struct state *state, int argc, char **argv)
 			} else if (optopt == 'i') {
 				fprintf(stderr,
 					"Error - option '-i' needs an interface as argument\n");
-			} else if (optopt == 'w') {
-				read_opt |= CLR_CONT_READ;
-				break;
 			} else {
 				fprintf(stderr, "Error - unrecognised option: '-%c'\n", optopt);
 			}
diff --git a/man/batctl.8 b/man/batctl.8
index 54745da..c0f3aa0 100644
--- a/man/batctl.8
+++ b/man/batctl.8
@@ -377,27 +377,27 @@ is printed.
 The local and global translation tables also support the "\-u" and "\-m" option to only display unicast or multicast translation table announcements respectively.
 
 .TP
-[\fBmeshif\fP \fInetdev\fP] \fBbackbonetable\fP|\fBbbt\fP [\fB-n\fP] [\fB-H\fP] [\fB-w\fP \fIinterval\fP]
+[\fBmeshif\fP \fInetdev\fP] \fBbackbonetable\fP|\fBbbt\fP [\fB-n\fP] [\fB-H\fP] [\fB-w\fP\fIinterval\fP]
 (compile time option)
 .TP
-[\fBmeshif\fP \fInetdev\fP] \fBclaimtable\fP|\fBcl\fP [\fB-n\fP] [\fB-H\fP] [\fB-w\fP \fIinterval\fP]
+[\fBmeshif\fP \fInetdev\fP] \fBclaimtable\fP|\fBcl\fP [\fB-n\fP] [\fB-H\fP] [\fB-w\fP[\fIinterval\fP]]
 .TP
-[\fBmeshif\fP \fInetdev\fP] \fBdat_cache\fP|\fBdc\fP [\fB-n\fP] [\fB-H\fP] [\fB-w\fP \fIinterval\fP]
+[\fBmeshif\fP \fInetdev\fP] \fBdat_cache\fP|\fBdc\fP [\fB-n\fP] [\fB-H\fP] [\fB-w\fP[\fIinterval\fP]]
 (compile time option)
 .TP
-[\fBmeshif\fP \fInetdev\fP] \fBgateways\fP|\fBgwl\fP [\fB-n\fP] [\fB-H\fP] [\fB-w\fP \fIinterval\fP]
+[\fBmeshif\fP \fInetdev\fP] \fBgateways\fP|\fBgwl\fP [\fB-n\fP] [\fB-H\fP] [\fB-w\fP[\fIinterval\fP]]
 .TP
-[\fBmeshif\fP \fInetdev\fP] \fBmcast_flags\fP|\fBmf\fP [\fB-n\fP] [\fB-H\fP] [\fB-w\fP \fIinterval\fP]
+[\fBmeshif\fP \fInetdev\fP] \fBmcast_flags\fP|\fBmf\fP [\fB-n\fP] [\fB-H\fP] [\fB-w\fP[\fIinterval\fP]]
 (compile time option)
 .TP
-[\fBmeshif\fP \fInetdev\fP] \fBneighbors\fP|\fBn\fP [\fB-n\fP] [\fB-H\fP] [\fB-w\fP \fIinterval\fP]
+[\fBmeshif\fP \fInetdev\fP] \fBneighbors\fP|\fBn\fP [\fB-n\fP] [\fB-H\fP] [\fB-w\fP[\fIinterval\fP]]
 .TP
-[\fBmeshif\fP \fInetdev\fP] \fBoriginators\fP|\fBo\fP [\fB-n\fP] [\fB-H\fP] [\fB-w\fP \fIinterval\fP] [\fB-t\fP \fItimeout_interval\fP] [\fB-i\fP \fIinterface\fP]
+[\fBmeshif\fP \fInetdev\fP] \fBoriginators\fP|\fBo\fP [\fB-n\fP] [\fB-H\fP] [\fB-w\fP[\fIinterval\fP]] [\fB-t\fP \fItimeout_interval\fP] [\fB-i\fP \fIinterface\fP]
 .TP
-[\fBmeshif\fP \fInetdev\fP] \fBtransglobal\fP|\fBtg\fP [\fB-n\fP] [\fB-H\fP] [\fB-w\fP \fIinterval\fP] [\fB-u\fP] [\fB-m\fP]
+[\fBmeshif\fP \fInetdev\fP] \fBtransglobal\fP|\fBtg\fP [\fB-n\fP] [\fB-H\fP] [\fB-w\fP[\fIinterval\fP]] [\fB-u\fP] [\fB-m\fP]
 (compile time option)
 .TP
-[\fBmeshif\fP \fInetdev\fP] \fBtranslocal\fP|\fBtl\fP [\fB-n\fP] [\fB-H\fP] [\fB-w\fP \fIinterval\fP] [\fB-u\fP] [\fB-m\fP]
+[\fBmeshif\fP \fInetdev\fP] \fBtranslocal\fP|\fBtl\fP [\fB-n\fP] [\fB-H\fP] [\fB-w\fP[\fIinterval\fP]] [\fB-u\fP] [\fB-m\fP]
 
 .SH JSON QUERIES
 

-- 
2.47.3

