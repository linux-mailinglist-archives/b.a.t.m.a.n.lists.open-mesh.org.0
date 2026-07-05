Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id nb0jAOR+SmqiEAEAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 05 Jul 2026 17:57:24 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 95C0470A871
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 05 Jul 2026 17:57:23 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=narfation.org header.s=20121 header.b=B5jKZWR5;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 136.243.236.17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 727948411F
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 05 Jul 2026 17:57:23 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1783267043;
 b=fwFRJIcKBcV/NfZ782BdAfQgewgo4P3uabF86TA7aoyTnjxmzCY+73QGhLqudyoC/xfjY
 VPAjwJCHn4CFhXF739c4v04MqZepoFpnPpsKbbdAef6t969PGc9bSerQ4IocOSdNZcmg7vY
 buth1jBFdMA1Y47d44b3TUTkEQRCQIo=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1783267043; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=o2YcPigbgeAoEAghvg3lpIJKcTNznmvynk7/zTUJPFY=;
 b=qi8G56sFmazyb+8iB6b22kEtTW+jvV1pY1pGOYMYH+06bT/uXb6ulv6lfuACIikqQGuzk
 UvyFGlcyQ9rt+0ennIthFScNwyOXASHZwGmGA2nXZCGIDfwM0uH87BuyoVwI/eTEXGNw+1d
 hjDV45yBVCzle0swGf9EDHnWJkcq4+k=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org
 [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id 5B37B819E6
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 05 Jul 2026 17:54:12 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1783266857;
	b=XVEe09DExDVMYaMUwsCDxFRKptUyeNMW2UYrnwYQZzxkhnTN1YzctdPEy/1wAPN2ixIT4z
	0t82Erf0urJOxKYkcntBvt7DTp4/9e6Ni10cMdEzD/gnlzz36EkHZQuFZuhFKjB4vl0B/6
	ybiPupc+SH34HkBsN1yrTed9Xi08yZA=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1783266857;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=o2YcPigbgeAoEAghvg3lpIJKcTNznmvynk7/zTUJPFY=;
	b=3NGJUVPlHvkpE1Mn2Oc1+5Ys+jmBFTVUCN4zbfkmgVKteiXLhUyBr8JSxcThWO1qROlPIf
	gYqbo2rVx5nXK9FNWGl2i8/Y3V2Bxs70ExvmDLMP20A87O3dR1B0F03SqAKVgyoO+M4pul
	euICioXPfgAmxwqu/uFZiiqQoljlyCc=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=B5jKZWR5;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
Received: by dvalin.narfation.org (Postfix) id C98A02053A;
	Sun, 05 Jul 2026 15:54:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1783266850;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=o2YcPigbgeAoEAghvg3lpIJKcTNznmvynk7/zTUJPFY=;
	b=B5jKZWR50l1sZz/6AG5798+Wysuu7JR4P2y4BpztxIwKPCIXT9dCN+MLlkyeMbqnj5dzu2
	p51DmGy03x6bW2PVxyirnsTAE5kSU1a6UgSvlfJCzXftsZ8lPNACfTbgMUAU0BwYwYbkvx
	44T5KnXHzQ9RNRc7dwotk0Iue22Gde4=
From: Sven Eckelmann <sven@narfation.org>
Date: Sun, 05 Jul 2026 17:53:36 +0200
Subject: [PATCH 2/5] batctl: genl_json: reject unknown options in
 handle_json_query
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260705-bugfixes-genl_json-v1-2-8cc79129012c@narfation.org>
References: <20260705-bugfixes-genl_json-v1-0-8cc79129012c@narfation.org>
In-Reply-To: <20260705-bugfixes-genl_json-v1-0-8cc79129012c@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=616; i=sven@narfation.org;
 h=from:subject:message-id; bh=5kCW5WIc0hgg23rjDjDlUCTRdM3vZJVeAdCDZQsYsDE=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDFledfwHPc+w/ePmm2Cx6ujE6X3p0W//xacVzDO5XRZ93
 GF6nUx6RykLgxgXg6yYIsueK/nnN7O/lf887eNRmDmsTCBDGLg4BWAi3taMDHuK81IYuq9YZsWm
 1FzguXnZ1eXzzW753XN/RP3dopp3+DDDX8n/B74Lv5jn+ECGa2r0jJtxQnHvZ4gxtc2VdPLxTKo
 OYAUA
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: XFM2Y6B2MMMQH77KHT2DYCBHYVHIRGM2
X-Message-ID-Hash: XFM2Y6B2MMMQH77KHT2DYCBHYVHIRGM2
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/XFM2Y6B2MMMQH77KHT2DYCBHYVHIRGM2/>
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
X-Rspamd-Queue-Id: 95C0470A871

Print the usage and return a failure for unknown options.

Fixes: 57cc3c472a7d ("batctl: Introduce handler for JSON_* command types")
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 genl_json.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/genl_json.c b/genl_json.c
index ee83ab2..356c5d7 100644
--- a/genl_json.c
+++ b/genl_json.c
@@ -593,6 +593,9 @@ int handle_json_query(struct state *state, int argc, char **argv)
 		case 'h':
 			json_query_usage(state);
 			return EXIT_SUCCESS;
+		default:
+			json_query_usage(state);
+			return EXIT_FAILURE;
 		}
 	}
 

-- 
2.47.3

