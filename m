Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id mW+CGoL0N2rMVwcAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 21 Jun 2026 16:26:10 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 154AC6AB0EF
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 21 Jun 2026 16:26:10 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=narfation.org header.s=20121 header.b=mCw647iT;
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 136.243.236.17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	dmarc=pass (policy=none) header.from=narfation.org;
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id B9A1B842BA
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 21 Jun 2026 16:26:09 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1782051969;
 b=wD08W2poqQAq6VgG0RZciVrQgefQgpnk6xgkSO+He9ck4dye62+xjVXGOhcPDwgnghv7J
 WQrXt+s06VTwHqD81wlaDYuzW2Mw+9AuSTCDqUU2ltVa+YkgPsg4ILS3uYJgZWIXNEDmqQn
 SGUSXbJvYC3D0Km4edyO68tOSrY5R/0=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1782051969; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=HFA3fk2r95Nlq5HzUqqIchwXY6D62yjLlk2I93M9jh0=;
 b=Z0oq4drsil5YpqkaS5kvXe1/A5J6cGolyZWy25RbUhY9s4DlWXeyV5h+KWayAeuv/kG5m
 oO5VYxpyHw6BGh0UN78rth45K9b0mVEJ7QsutVzPt/k2WL8Zppbr32/e7vYEMibp4peOchF
 I7KpHs5EvMTABhqLJzH27kqSB3ToqUI=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org
 [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id 9A49980951
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 21 Jun 2026 16:24:21 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1782051861;
	b=EqWgILqCIcplL8ttqgZ0f8nb9SWUyAb5iilf8Ce62xrKMJ85n6AGUq7pXU1qDhvjn6ewpV
	3pD0NTMwuKn5WQXzP6RS97doBsVSoBeukC/mtSJg8vHnfTMtV4vZoNCMWF4HFhztgkUaU3
	NqLFqUDispHNYp3JaYIVIZM8+EE2R4I=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1782051861;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=HFA3fk2r95Nlq5HzUqqIchwXY6D62yjLlk2I93M9jh0=;
	b=YpbC1W0dkVdbOIKd8eRPbY86Duq5r2b2JWudZl6U2fFPFHIOTyU2wSlaySWyWLv9e5+esV
	D1V7yWvNAzc00HIr/34klHfzHDSkfdcfnMJv0EiZYnQUmXcjj2e16pAoN4SUIbQrXGUiUh
	Pirs2iDvSOsBNvcJ1gVfcCZ36TqBO3E=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=mCw647iT;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
Received: by dvalin.narfation.org (Postfix) id 48CD720059;
	Sun, 21 Jun 2026 14:24:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1782051861;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=HFA3fk2r95Nlq5HzUqqIchwXY6D62yjLlk2I93M9jh0=;
	b=mCw647iTozWdB+KD1ZlHeVTDNDRo8T3CNlqkvRJj020inaC9ZDX8DW6Dcu7BTyiZWKDgJO
	Z7v6pAEfuInhmrlja6FhaxvvIHffJs1IYC/e94DBsZ8F2jNFLInz1iA301WZZSJzwx16AE
	FiFYwRwwgVXGpYsiS1hnV8rml1obPGM=
From: Sven Eckelmann <sven@narfation.org>
Date: Sun, 21 Jun 2026 16:23:54 +0200
Subject: [PATCH 04/28] batctl: use strict interval/timeout parsing
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260621-bugfixes-v1-4-b09736288a4a@narfation.org>
References: <20260621-bugfixes-v1-0-b09736288a4a@narfation.org>
In-Reply-To: <20260621-bugfixes-v1-0-b09736288a4a@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1289; i=sven@narfation.org;
 h=from:subject:message-id; bh=SrsJsfHwSTTUG3ejRBUNo1zWG3AGD096q2ksCNQGTiU=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDFnmX1jqW6OEDzg+EhBI0+SdPvXzpMvzrszeKdY+v7fx3
 7qVUtN+d5SyMIhxMciKKbLsuZJ/fjP7W/nP0z4ehZnDygQyhIGLUwAm0rOW4X/BgZUHMpPeupWH
 RVvr51zr0DBfcmzDJbYKndjGWw1Xrm1n+MMRrd3sGM5+e3FBUsMNMYfrrbkP3Zep9DDUmhp4PuT
 uZQcA
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: LRMC66O52PLSEDQZBAF776DOR2EUGY3B
X-Message-ID-Hash: LRMC66O52PLSEDQZBAF776DOR2EUGY3B
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/LRMC66O52PLSEDQZBAF776DOR2EUGY3B/>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[diktynna.open-mesh.org:rdns,diktynna.open-mesh.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 154AC6AB0EF

The sscanf() function does not only return 0 when the value could not be
parsed from the string. Also EOF is a potential return value. To make the
check more strict, just compare the returned value with the expected number
of scanned/parsed items.

Fixes: 302a41a73915 ("batctl: Add timeout filtering option for originators")
Fixes: e4a7b7733faf ("batctl: Add an optional interval for watch-mode")
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 debug.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/debug.c b/debug.c
index 163a46b..5bf6d5f 100644
--- a/debug.c
+++ b/debug.c
@@ -68,7 +68,7 @@ int handle_debug_table(struct state *state, int argc, char **argv)
 				break;
 			}
 
-			if (!sscanf(optarg, "%f", &watch_interval)) {
+			if (sscanf(optarg, "%f", &watch_interval) != 1) {
 				fprintf(stderr,
 					"Error - provided argument of '-%c' is not a number\n",
 					optchar);
@@ -83,7 +83,7 @@ int handle_debug_table(struct state *state, int argc, char **argv)
 			}
 
 			read_opt |= NO_OLD_ORIGS;
-			if (!sscanf(optarg, "%f", &orig_timeout)) {
+			if (sscanf(optarg, "%f", &orig_timeout) != 1) {
 				fprintf(stderr,
 					"Error - provided argument of '-%c' is not a number\n",
 					optchar);

-- 
2.47.3

