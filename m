Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 6g8rMWJ+SmqEEAEAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 05 Jul 2026 17:55:14 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F00570A84F
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 05 Jul 2026 17:55:14 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=narfation.org header.s=20121 header.b=mSQI4nww;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 136.243.236.17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 7C36883C53
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 05 Jul 2026 17:55:14 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1783266914;
 b=BeKukwk0ElakFvsRD4dMYiYmQqqP64DsPFj/N+A7ttHzFo6s3Mk1ffekcJWDGsBXOYGGp
 qYFlYLummqzyNYliehPQCUfywIJ/Q+V9SyipQRmoY62EQ18bpj3S+TO9FKzHdC+3I4QgC3a
 1rGppgYuW2O3BFWpF8cHWpKsBvwHdhA=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1783266914; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=07Xusib/tRUzDLRjg/lDQ4D/ZfnR68emeD+ovgQaECk=;
 b=JBCF3Suvh4Is7hMW8z8yPBs2/GmVw8ZEi9RgYVlEP5U6RRyxygEX1m1RDA4kHOf5xZ9dR
 7f3z+yRWRirBPwToy6reCeN8A0BAyingYlTpsMOvC+tWqpNCsxeFKjry42omM153cE56X9W
 Hc17R47H3epxEdpiVJoWvIzTjktOkFs=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id B5FB5818C3
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 05 Jul 2026 17:54:13 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1783266853;
	b=M0NPISQUCGTvZpUPdTWOW6heLFMplcqcaD3vMV3KcRNtsX/n1O+eNmt6YPBQWyqpVMPvwT
	2fQYY+1V8oqHblY+6BAD5lZ8YiLosgUV7rDu3kcIT9cxs9GVPLp6a/2WK9crhCEvOo67di
	Y3dlRMfRifK8ZMf5Z/oK/TBzgR7aST0=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1783266853;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=07Xusib/tRUzDLRjg/lDQ4D/ZfnR68emeD+ovgQaECk=;
	b=yZiT9qn4fO1npT0xx8TLTzQv7WS8fPVAeYnBmVvmFbcLeHbYVQ5p942GgrZ0Da5znrs8Pb
	3W8PywfkAop1uc9Jjc8g43HluDHwMTGTrxk8E4sMFKO/lpOrtoE7wbl8GoMD5wyOXqJN5q
	EGIyc8N8iblEEMBCVtgW8XNyAXnLkak=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=mSQI4nww;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
Received: by dvalin.narfation.org (Postfix) id F3FED2054D;
	Sun, 05 Jul 2026 15:54:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1783266853;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=07Xusib/tRUzDLRjg/lDQ4D/ZfnR68emeD+ovgQaECk=;
	b=mSQI4nww4cRDgHrT+d03M0Q5Fpxg+iK3xVKlho6KhlTKCEaL4JU7vg5kBgEOWndhnAICcd
	U6Kma5lEVoV2qvn0jeMG+BW8FXwPi4IodOWwmfRsQJCpnp4El14m11m79+V4c4A5utbpUU
	JMc/V3tq3V/UHsjT5/eP8ZSARgQ/LIw=
From: Sven Eckelmann <sven@narfation.org>
Date: Sun, 05 Jul 2026 17:53:37 +0200
Subject: [PATCH 3/5] batctl: genl_json: don't return negative error codes
 to main
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260705-bugfixes-genl_json-v1-3-8cc79129012c@narfation.org>
References: <20260705-bugfixes-genl_json-v1-0-8cc79129012c@narfation.org>
In-Reply-To: <20260705-bugfixes-genl_json-v1-0-8cc79129012c@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=872; i=sven@narfation.org;
 h=from:subject:message-id; bh=L0x9JXX6mWcMEZ6PDiChob+hSMmzJSY1VowVKskihrs=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDFledfz2Em7/D71ucxPt7bv+6vR5xrtbrFnymQu4LLRsV
 zuHeSV1lLIwiHExyIopsuy5kn9+M/tb+c/TPh6FmcPKBDKEgYtTACaips7IMDvo1pQfooZK8o+T
 vy+LKk1Q2T499vqp/rUbPBy1Z3I7JTL8j5FesJOzbcW6CMXItC2zjzbdvyx3Z+my6XPu3Tp53fx
 MEgcA
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: QKBJUKV3ZWA4OFYAPRYGZ2EEV56WYPYV
X-Message-ID-Hash: QKBJUKV3ZWA4OFYAPRYGZ2EEV56WYPYV
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/QKBJUKV3ZWA4OFYAPRYGZ2EEV56WYPYV/>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[diktynna.open-mesh.org:helo,diktynna.open-mesh.org:rdns,narfation.org:from_mime,narfation.org:email,narfation.org:mid,narfation.org:dkim,lists.open-mesh.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9F00570A84F

handle_json_query() returns the result of netlink_print_query_json()
directly. This is a negative errno code on failure and main() passes it
straight to exit(). The process then terminates with a mangled exit status
like 161 (-95 & 0xff).

Limit the return codes to EXIT_SUCCESS and EXIT_FAILURE.

Fixes: 57cc3c472a7d ("batctl: Introduce handler for JSON_* command types")
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 genl_json.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/genl_json.c b/genl_json.c
index 356c5d7..917b255 100644
--- a/genl_json.c
+++ b/genl_json.c
@@ -600,6 +600,8 @@ int handle_json_query(struct state *state, int argc, char **argv)
 	}
 
 	err = netlink_print_query_json(state, json_query);
+	if (err < 0)
+		return EXIT_FAILURE;
 
-	return err;
+	return EXIT_SUCCESS;
 }

-- 
2.47.3

