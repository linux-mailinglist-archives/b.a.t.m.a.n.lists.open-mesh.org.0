Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id QXk8N3WtTmoJSQIAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 08 Jul 2026 22:05:09 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 81D0B72A14F
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 08 Jul 2026 22:05:09 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=narfation.org header.s=20121 header.b=Rntcsage;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 136.243.236.17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 6224085600
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 08 Jul 2026 22:05:09 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1783541109;
 b=ue2NJaFV/2GOQF3fBrvpOW+QqW57800NFcH8YyHpkaCEflNFyT1qSKehY0Zmv0YjZABwZ
 kgPKruaV8/s8kTwG5nJHUN9csaiybLtW7XHsE3r0dqKynAqr0Vf1vE24AYjTkZbtS0kuWV2
 Pt3SOYoR8Qc6xoGwtPdN8NIWmSHNGxM=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1783541109; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=PfxZGwXq4ATCgUy4e9pB4oD25V+Fw1B/JUCEG58jE0o=;
 b=Csv03dU71uUccrIv1wMrvNOjSEE8VQ1a0d3O8zhQBj6pCQAjGyMxytElDSZXScdldgJfk
 5e6/U53F4s7SUuDjBbGLEociUyEflpQqD10yWJgGGJGogfZi1MRrY7FNb90G5rVEUI6y0bq
 FTuPj9pIDeltwGgGlEvST7oWKRvGSWo=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org
 [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id 484D883EC5
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 08 Jul 2026 22:00:32 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1783540832;
	b=TpQRsZ3DZ2HyPHX7p34qTy47AazoxNh2CnmRuRwCtDBj2m3gqgbD/LsoIaruMI3AgdcAPQ
	EJ68IOoKunZLKe1TA3QJul93v1/MRrS2OLaPwMAQGHs8JcerZs6iajJVVNq6mgKG3PhXrb
	EJLCrC2JVjki7Fc4sp9VCywT9adlSac=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1783540832;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=PfxZGwXq4ATCgUy4e9pB4oD25V+Fw1B/JUCEG58jE0o=;
	b=w7OS7V2D5a1XFHBpn9r8QWO4z/8/O0qq2yofUUrzGK5LrwcC9773HIZVqXfxaek9d5otAU
	ju9lmQl5ipsU5mVrBYZVkfnw6nvSxhGWV2ua62Ik+L4dVmMG4I9VEXE/7YzeJogBJVg8dZ
	Xjw6kQe1Jk+lk2mbrQIgQhJAquv2F3A=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=Rntcsage;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
Received: by dvalin.narfation.org (Postfix) id DFE371FD9C;
	Wed, 08 Jul 2026 20:00:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1783540832;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=PfxZGwXq4ATCgUy4e9pB4oD25V+Fw1B/JUCEG58jE0o=;
	b=RntcsageDfQ7WzZG1E2h06i2pP2cmMMWLx3z+gBMiUuukWcuPBRn9KSpNgoAGJ72N1bP8J
	k9/0Vd2bHNN/q0kZKkDqma3Qnw0F6igpmbrV22lKMvPoRAy62SnR6fvyLskjFg/3uLeH95
	+InNK9Rc9C9dwoORdEWlFo1qTvnsC4E=
From: Sven Eckelmann <sven@narfation.org>
Date: Wed, 08 Jul 2026 22:00:12 +0200
Subject: [PATCH 06/12] batctl: netlink: report kernel errors when writing
 settings
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260708-bugfixes-netlink-v1-6-8ce03e37f17b@narfation.org>
References: <20260708-bugfixes-netlink-v1-0-8ce03e37f17b@narfation.org>
In-Reply-To: <20260708-bugfixes-netlink-v1-0-8ce03e37f17b@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1384; i=sven@narfation.org;
 h=from:subject:message-id; bh=6U9RxCMNd5Ow/bzh+g0G3YlW94ykX9OFM2Zf9JD8aFA=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDFl+azz+npPpU7jpenF6eOz81O/GmjMSX047tKEs/9Rtd
 fkfpzdd6ShlYRDjYpAVU2TZcyX//Gb2t/Kfp308CjOHlQlkCAMXpwBMJESQ4Z/mRLMfni+bHrHu
 DSmasoZfIJvF+eW0yOMsv3Qj5h6a82YFI8OB382L2851Ws12+M15yenNW4fejsunxaui3+kdUtg
 yRZ4fAA==
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: QFVGNICORLW64CVX76OR6ZEMLLKJXJTB
X-Message-ID-Hash: QFVGNICORLW64CVX76OR6ZEMLLKJXJTB
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/QFVGNICORLW64CVX76OR6ZEMLLKJXJTB/>
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
X-Rspamd-Queue-Id: 81D0B72A14F

When writing a setting, sys_simple_nlquery() consumes the kernel reply via
nl_wait_for_ack(). This helper uses the socket's default callbacks instead
of state->cb, so sys_simple_nlerror() never runs and its (negative) return
value is discarded. A set request rejected by the kernel therefore prints
no error message and exits with EXIT_SUCCESS.

This can be seen easily by calling: "batctl meshif bat0 aggregation 1"
without CAP_NET_ADMIN.

Receive the reply through state->cb instead, like the read path already
does. The error handler then prints the kernel error, stores it in result
and the command exits with EXIT_FAILURE.

Fixes: 0b81e8fbaed5 ("batctl: Consume genl ACKs after setting reads")
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 sys.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/sys.c b/sys.c
index 35a026e..a4d531f 100644
--- a/sys.c
+++ b/sys.c
@@ -110,10 +110,16 @@ int sys_simple_nlquery(struct state *state, enum batadv_nl_commands nl_cmd,
 	if (callback) {
 		ret = nl_recvmsgs(state->sock, state->cb);
 		if (ret < 0)
-			return ret;
+			return -EIO;
+
+		nl_wait_for_ack(state->sock);
+
+		return result;
 	}
 
-	nl_wait_for_ack(state->sock);
+	ret = nl_recvmsgs(state->sock, state->cb);
+	if (ret < 0 && result >= 0)
+		result = -EIO;
 
 	return result;
 }

-- 
2.47.3

