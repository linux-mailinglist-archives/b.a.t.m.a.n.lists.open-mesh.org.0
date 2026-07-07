Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 1eiyL+hJTWrmxgEAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 07 Jul 2026 20:48:08 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 575C571EB90
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 07 Jul 2026 20:48:08 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=narfation.org header.s=20121 header.b=Ylsxp8op;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 2a01:4f8:241:fc1:136:243:236:17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 38571846DF
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 07 Jul 2026 20:48:08 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1783450088;
 b=RaICyCgPererb6MXIZZyKS9r6Q77l/gE8j/qaexE4JDZHakD1Y2eHOIWqDgx88ji9L6Wb
 Ph5PCbhJOlmVurXNH6oXTeNZR3fITgx0zF3inPBSOqIrL5SDnfoi1ofumzTtyLLwq+5dtYI
 DDSHpixmVCx8Kv79HXOu4+1u19YKHb8=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1783450088; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=3dmzHretJY1gH/HmQVAR2OJGY72SB3le/4uSVtPZCeA=;
 b=IfLH97rQvapl/qm52dy6NlIM0cLQRh4GSasoWtSwXIXLe3Ga1a4kHOjrvpViVimcnN1aI
 BCzpQkocFYRYHfcdpXOHQsljULCDQDuuqlDubKgMuadpgYmFa6vmvd3zmnOpxI6HBvcMvlT
 Dz86kn9i4fFnnZHHSqRx86DFtmM8A9g=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org
 [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id 41DA282726
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 07 Jul 2026 20:46:54 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1783450020;
	b=Jn6mMXrcvmPwvlKS3hcD3HSpfOSJ0zKcz0Qp6c6sC05INW+uGFOHWAwxmnk/ZaR9Aq1NIL
	ryqdyqqIrEjzWTQ/YuzKTQF2VcpAFKXDYKxRlhVZH8L/mLHRCE3qSsq8tfWokL2h4vz4Wx
	k81Fz2FW7EMZjAVvRG4GRwnu2JQS4Oc=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1783450020;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=3dmzHretJY1gH/HmQVAR2OJGY72SB3le/4uSVtPZCeA=;
	b=KwWlgmdVcL2rVK16iCmc2NHL2Js4EtNNPCzT7k1ccBp7WoZR1yvgWYuXw4Cv7SMEu3VWbR
	7fSavS1y/7b+259IK3GCuC7KG54Ee1YKgLWSjasUOyd7AaI0k1QFqU+Mz9mDE5EzPgBqjf
	bDcYSusv2pBMR/Re7CruFP9nZL0Cwd4=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=Ylsxp8op;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
Received: by dvalin.narfation.org (Postfix) id B910D204D8;
	Tue, 07 Jul 2026 18:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1783450012;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=3dmzHretJY1gH/HmQVAR2OJGY72SB3le/4uSVtPZCeA=;
	b=Ylsxp8opvMyqM2d4vGuh0EaPaTNUKkGJspJYN4Glk9zuk6eEbLhnF3Zc9Lg70yrrlsvmq9
	4NMMrKh+gB4EqACglV8Y4hX2xkhswU2FxzzXyWHC2te2uK1p3x+utSPehrQ7NGmp/vIUP0
	RdGRODsy5lF/w7GXWVuXNr3mpZHP5F8=
From: Sven Eckelmann <sven@narfation.org>
Date: Tue, 07 Jul 2026 20:46:43 +0200
Subject: [PATCH 01/11] batctl: traceroute: return EXIT_NOSUCCESS when
 destination not reached
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260707-bugfixes-icmp-v1-1-ee563a984acf@narfation.org>
References: <20260707-bugfixes-icmp-v1-0-ee563a984acf@narfation.org>
In-Reply-To: <20260707-bugfixes-icmp-v1-0-ee563a984acf@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1048; i=sven@narfation.org;
 h=from:subject:message-id; bh=rlmGfGYMxOMQOLtxdK9EBJM7IiZpfC9ATFZceKBuQVg=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDFm+nlOnrU9k+Kwj6Gt0wluRPfXPzH1cxXHKzzkK9gTFP
 n8i9uNPRykLgxgXg6yYIsueK/nnN7O/lf887eNRmDmsTCBDGLg4BWAi+S0M//NCXPaE5TGmzjuT
 GzxzmejPZSkH5C2+i982lp4zV212SSjDT0bGLdevLWpacvDziTuVt+/Lr9Cw5UppfuW6VSWjX8L
 7DCcA
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: EJZYOTEDEHUPCHC5CT6BDKHX2GK5MALO
X-Message-ID-Hash: EJZYOTEDEHUPCHC5CT6BDKHX2GK5MALO
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/EJZYOTEDEHUPCHC5CT6BDKHX2GK5MALO/>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[diktynna.open-mesh.org:helo,diktynna.open-mesh.org:rdns,lists.open-mesh.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 575C571EB90

traceroute sets ret to EXIT_SUCCESS unconditionally once the probe loop
finishes. dst_reached is only set on an actual echo reply, so when the
target never answers within TTL_MAX hops, it is unreachable or all
probes time out. But this information is ignored when traceroute exits. A
script will not be able to distinguish a failed and working traceroute.

Use the same error codes as the ping but make it depend on the dst_reached
variable.

Fixes: e1c83d9260e8 ("[batctl] traceroute utility updated to latest batman adv")
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 traceroute.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/traceroute.c b/traceroute.c
index 441cd77..94443d7 100644
--- a/traceroute.c
+++ b/traceroute.c
@@ -212,7 +212,10 @@ static int traceroute(struct state *state, int argc, char **argv)
 		printf("\n");
 	}
 
-	ret = EXIT_SUCCESS;
+	if (dst_reached)
+		ret = EXIT_SUCCESS;
+	else
+		ret = EXIT_NOSUCCESS;
 
 out:
 	icmp_interfaces_clean();

-- 
2.47.3

