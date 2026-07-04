Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id DcggEkZhSWqy0wAAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 04 Jul 2026 21:38:46 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id DF1A9708438
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 04 Jul 2026 21:38:45 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=narfation.org header.s=20121 header.b="0bv/8MWZ";
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 136.243.236.17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id BC8288071A
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 04 Jul 2026 21:38:45 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1783193925;
 b=ExARzY/nSGeR+GBqlfRssP3YjtByCJM0kzwi5wb9uRVnSAFSApaYZGmRdrdc2QL/6L2jW
 Vf0deL/4O1xVeXVF2kvkdXIv63+JNZrSAtRA763z0w3ePYl9ueULE4uDmnWETYmuGkeLZHv
 SR++AiAzHwqalcb/3Fq6qCi0r3KoWC8=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1783193925; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=fHAQ26mTO/hglD8/nUjokn3GOrrlBsa2A8tqYrmvDts=;
 b=vmDFQ8S4BMTY2yz3YMzVjAc0nAlMsugm4xBH1/Tg7bFaTR4J4v+D9YCtfYUcRWzBwd3V6
 orhTTmVxwP4Gm3Xhk0RZlqI7r1NbOs42LcPta5HoKtG+9eDTPMk3YfGxWLw+6qMDwmnOt+8
 30IdVgZRAP3VsdRWa2D0CrRzzvbfog0=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org
 [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id 1498E84206
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 04 Jul 2026 21:36:34 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1783193794;
	b=XxGmrYQ8LLZCdABOTXSQVvlgeFVLSMqDy4Wj06SKJwPAp2DZO5ILbr3NS1KMCNxvomy4gb
	B0ho7E6mfyouqr7jnZKHp+T3Xb2F05kvoKS/Ekn2hpCGNX/TryjowKIhNyv/Z5ygANslS6
	muPL87TZTxyKorN3WlZen/wdjKyzDTU=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1783193794;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=fHAQ26mTO/hglD8/nUjokn3GOrrlBsa2A8tqYrmvDts=;
	b=yq4Ci2Rzx94l4hqly7HD2A16KBl+PwM8ugur/0a6r6p6pboSaLMGfHpYyWwIH2K9Fk/DBE
	aKEmgEXGvbLJTLHUPplM+5uEeVvwvdj+pANhT1BaKFLkA2jwjNc79L5nvD4oanFoqXyNv3
	sF4lu0EKa7pTT87NVI6drLbTS2Htr90=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b="0bv/8MWZ";
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
Received: by dvalin.narfation.org (Postfix) id C99D420685;
	Sat, 04 Jul 2026 19:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1783193793;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=fHAQ26mTO/hglD8/nUjokn3GOrrlBsa2A8tqYrmvDts=;
	b=0bv/8MWZb/Kp8xqFobMPKJzO+y2I7CPWGkcUYNlbGW2NrTNrixDq5sMQfa0sT+wKpaybky
	cR7ejWT9oetxw+I7G46CiRdt92dDiczXPIt9wJAtKa+62DVMDIigPDMDaRSFr1D4KheSew
	MudNYRknflCbImloPRS0ugvzLTrI8Xc=
From: Sven Eckelmann <sven@narfation.org>
Date: Sat, 04 Jul 2026 21:36:01 +0200
Subject: [PATCH 3/5] batctl: debug: reject trailing garbage for intervals
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260704-bugfixes-debug-v1-3-888ddc878206@narfation.org>
References: <20260704-bugfixes-debug-v1-0-888ddc878206@narfation.org>
In-Reply-To: <20260704-bugfixes-debug-v1-0-888ddc878206@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1610; i=sven@narfation.org;
 h=from:subject:message-id; bh=qHqQlcl94C7OiB7QkFIAdvt2A2OAAmoGlS98QFfCH9o=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDFmeCcuvzl7AZXfB9rzeYv2JnXFijCkfMqI8DlmnTFjk1
 bpn/fFZHaUsDGJcDLJiiix7ruSf38z+Vv7ztI9HYeawMoEMYeDiFICJGBgwMuyp3ahqF9FhMiFj
 2ydfVquSyUwvwo+X7NKv8Tvwjc3Ovpjhv9/6N0t21XdwBf1XMGCZzRzRtsBn0qpt28V4FSLOZDo
 ocQEA
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: OMFOWFGX4R24FNV54L4HWRV5LYOW7CVE
X-Message-ID-Hash: OMFOWFGX4R24FNV54L4HWRV5LYOW7CVE
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/OMFOWFGX4R24FNV54L4HWRV5LYOW7CVE/>
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
X-Rspamd-Queue-Id: DF1A9708438

 A "%f" sscanf conversion stops at the first
character it cannot consume and reports success for the leading numeric
part, so trailing garbag are still accepted silently.

Append a "%c" conversion so any trailing character makes sscanf() report
more than the one expected item.

Fixes: 302a41a73915 ("batctl: Add timeout filtering option for originators")
Fixes: e4a7b7733faf ("batctl: Add an optional interval for watch-mode")
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 debug.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/debug.c b/debug.c
index ae13dce..1cceea6 100644
--- a/debug.c
+++ b/debug.c
@@ -51,6 +51,7 @@ int handle_debug_table(struct state *state, int argc, char **argv)
 	float watch_interval = 1;
 	char *orig_iface = NULL;
 	int optchar;
+	char tmp;
 	int err;
 
 	while ((optchar = getopt(argc, argv, "hnw::t:Humi:")) != -1) {
@@ -67,7 +68,7 @@ int handle_debug_table(struct state *state, int argc, char **argv)
 			if (!optarg)
 				break;
 
-			if (sscanf(optarg, "%f", &watch_interval) != 1) {
+			if (sscanf(optarg, "%f%c", &watch_interval, &tmp) != 1) {
 				fprintf(stderr,
 					"Error - provided argument of '-%c' is not a number\n",
 					optchar);
@@ -82,7 +83,7 @@ int handle_debug_table(struct state *state, int argc, char **argv)
 			}
 
 			read_opt |= NO_OLD_ORIGS;
-			if (sscanf(optarg, "%f", &orig_timeout) != 1) {
+			if (sscanf(optarg, "%f%c", &orig_timeout, &tmp) != 1) {
 				fprintf(stderr,
 					"Error - provided argument of '-%c' is not a number\n",
 					optchar);

-- 
2.47.3

