Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id OG8mKv9QTWonyQEAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 07 Jul 2026 21:18:23 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 4912971F1F7
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 07 Jul 2026 21:18:23 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=narfation.org header.s=20121 header.b=tnr73k3X;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 2a01:4f8:241:fc1:136:243:236:17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 1062884A48
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 07 Jul 2026 21:18:23 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1783451903;
 b=QrQkBNyOWVjjVxEV8qB0U9ygqyX+3sn/E17ZrK6nE7aLc3bciwpPjfXdhS8Vx1MFNipb/
 zclxQTXqGMx8QCxsvz3nNTPyIjCbrtK4BMqhrrRqcvSa9SEIqHZtpah9iWGCOz/4GZ98UtE
 WTFVcquaZzjtMi0MWT+6up4ctxuaI/E=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1783451903; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=HjO9tQOG64JrYUZ4KEf0JipjM9WyhJMXyhPyVp4Mnb0=;
 b=Br/yKE5r6CWsiStzV5tT96b2hfRC13PP9/zQh2aHYmBa1HqccHvVUNIx/A2IkkYiA70up
 P7Y3/LsUw+q7+sTkZnsMHEmOHkPHyoMFtUy4rdw6I96prSfv4ZE04hVpxrwuUKcGftbWh7p
 cc6kmHZ82cA3Uf6AXw8Cwwk2/ESNfHw=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id F0972810D5
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 07 Jul 2026 21:17:10 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1783451836;
	b=JVSvB2jgUutTQ98ZqNt8naKWtaX+de4DQTqvwVtTSLudaaMEQp4JtdEOUZS+xwx86/6Ks8
	PKBrnm9pD3RaqGCQD1fCfs3Iitj3vq1l0YwsLqzRCnCIgFybthvf5QCMAKsTu+z0cIlwni
	A0UBnzk9H4KjyjeNlwrAFnrcBQ/K0Fw=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1783451836;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=HjO9tQOG64JrYUZ4KEf0JipjM9WyhJMXyhPyVp4Mnb0=;
	b=zSAP25NkxC1qkOewE48Ffo2h6tknbMJ3d7sUYt6BQUk/xJ44/j0wY/3jOs1QREtPaVZ+NS
	pj2CDY+QyyMafbpwjc7GuYlpMYdCxDtl/Ce2ko7eI5C8UFmTRcNsOr7Nu7abfh6FHu5mq9
	T5WjZJngQvlXJI1el5L2eevp3DNaMTo=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=tnr73k3X;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
Received: by dvalin.narfation.org (Postfix) id 98794204D8;
	Tue, 07 Jul 2026 19:17:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1783451830;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=HjO9tQOG64JrYUZ4KEf0JipjM9WyhJMXyhPyVp4Mnb0=;
	b=tnr73k3X70352Emwu4blruf/Eykq39Ym7F9n8AwzoYDMysfMWPDkNMH2tEjrg05vvMeN/q
	lNxW6daPp6CDnTHA0IKwQOg4JggbAeHZQZPcIpNDZxaYQ1oqEjdarDQ93l1zjZBzuPSZXo
	lJI7IbXH6i/GjU6As3Cs2Yr19GyAySM=
From: Sven Eckelmann <sven@narfation.org>
Date: Tue, 07 Jul 2026 21:17:00 +0200
Subject: [PATCH 1/5] batctl: tpmeter: don't use negative errno as exit
 status
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260707-bugfixes-tpmeter-v1-1-78d96fb7b36c@narfation.org>
References: <20260707-bugfixes-tpmeter-v1-0-78d96fb7b36c@narfation.org>
In-Reply-To: <20260707-bugfixes-tpmeter-v1-0-78d96fb7b36c@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1185; i=sven@narfation.org;
 h=from:subject:message-id; bh=g5TRM+VWSRWX/uXcydJHyqB3vybVLFYQnZdNrjGSTWo=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDFm+Aevf922++tBgZ9Psx41K06abH+ppthHaWRTmkPpre
 oYig8i5jlIWBjEuBlkxRZY9V/LPb2Z/K/952sejMHNYmUCGMHBxCsBEWJoZGY6f1NOeddH4jGF1
 GavoWT9JdsbDgZVLem9/n75f9a596iFGhisnVOa03TkdHzDRkd/EzG7PncmL0oo3lh4s71Ke8Nb
 yPA8A
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: UTIR7C2FOS5VL7XHKUBFXFUGUPX642QH
X-Message-ID-Hash: UTIR7C2FOS5VL7XHKUBFXFUGUPX642QH
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/UTIR7C2FOS5VL7XHKUBFXFUGUPX642QH/>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[narfation.org:from_mime,narfation.org:email,narfation.org:mid,narfation.org:dkim,diktynna.open-mesh.org:helo,diktynna.open-mesh.org:rdns,lists.open-mesh.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4912971F1F7

The netlink error codes from tp_meter_start() and tp_recv_result() are
returned unmodified as command result, which main() passes to exit(). A
failure like -EOPNOTSUPP therefore turns into the meaningless exit status
instead of EXIT_FAILURE.

Report EXIT_FAILURE after printing the error.

Fixes: f109b3473f86 ("batctl: introduce throughput meter support")
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 throughputmeter.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/throughputmeter.c b/throughputmeter.c
index 98a9490..10f4f24 100644
--- a/throughputmeter.c
+++ b/throughputmeter.c
@@ -383,6 +383,7 @@ static int throughputmeter(struct state *state, int argc, char **argv)
 	ret = tp_meter_start(state, dst_mac, time, &cookie);
 	if (ret < 0) {
 		printf("Failed to send tp_meter request to kernel: %d\n", ret);
+		ret = EXIT_FAILURE;
 		goto out;
 	}
 
@@ -390,6 +391,7 @@ static int throughputmeter(struct state *state, int argc, char **argv)
 	ret = tp_recv_result(listen_sock, &result);
 	if (ret < 0) {
 		printf("Failed to recv tp_meter result from kernel: %d\n", ret);
+		ret = EXIT_FAILURE;
 		goto out;
 	}
 

-- 
2.47.3

