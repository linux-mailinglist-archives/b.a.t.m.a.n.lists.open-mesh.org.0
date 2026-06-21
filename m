Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id l7gEEOv1N2qXWAcAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 21 Jun 2026 16:32:11 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id D4B2A6AB124
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 21 Jun 2026 16:32:10 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=narfation.org header.s=20121 header.b=lpkwCFPD;
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 2a01:4f8:241:fc1:136:243:236:17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	dmarc=pass (policy=none) header.from=narfation.org;
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id BC12A844FA
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 21 Jun 2026 16:32:10 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1782052330;
 b=hiDqxY5BzBFxnChxEnp/5gRSQMZOG26siazlq0ytfTc4aMPHaukPV71DeBv0KZrn4AD+8
 mVjjo264tC5UlPwS4U+7je6L9TJsMYUcOVlkGEAOPlEvX+ZZ3KMKB3YNvvVdos2+0r/y/yS
 HgrNs7G/CMcD1Pb4PuqX7eNVzv+DmH0=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1782052330; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=F5J9ROC3BkkgoTA9CmkYa3oPapnVHalRUn6fCPUtr6E=;
 b=wdr+V0dYqaoP0Rviou8m9BVG8W4Nl7djNm2nEbl8r9bCdhfsx4jQ0c12Yuzppiznm8ust
 WfXB4hORiKgoHTtZlYqel2ZHVcdXkWh6uorJDEtNi5Dx/ReYz/b6OpWANxCMGZZBCkv0uGo
 6y5dvOFcIBnTRiM8/gupYqMPG0tFP4k=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id AFA8C84077
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 21 Jun 2026 16:25:03 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1782051903;
	b=Hg5NMeeHfzU5TdnRrgaePYm9s1XP373zfjr5NLYjWxTU4H7B/Ea/YLj8B9rci0fGPrSUxt
	Z3hMdNecsjN7GMU2x6OQ1GU20x7ll1HjIMrkVa555mtxlqmrKWP0BDf6s0SE80+wcwoIfq
	eNoXhjiAQ45G3dN7iuxE+CiP9i1w1Vw=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1782051903;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=F5J9ROC3BkkgoTA9CmkYa3oPapnVHalRUn6fCPUtr6E=;
	b=z3xaIhEE9e1r6qvdk387FyQX9AN/cfEOJn3koAhr32bi5GC5FmW/kXS5sVdnnwiPIlEiAk
	liV52ZO8kgaJN9du1Cw16bz5glOBkfUO87L1IOxZRlwE6GqGIU3OZ3s/L965M8809syJkF
	ccsTTSvYvd3e6tF6rPq+wHNIvR1+Sl0=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=lpkwCFPD;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
Received: by dvalin.narfation.org (Postfix) id 67D4520059;
	Sun, 21 Jun 2026 14:25:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1782051903;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=F5J9ROC3BkkgoTA9CmkYa3oPapnVHalRUn6fCPUtr6E=;
	b=lpkwCFPDgVe6tCaeGbMBRAcorDfuh+ppEtnyJqz0PTuFXKZp1aBUyL3SsXn9tommwvblZT
	ER1vCDEqo8XTjUSiVQycwEz/xInLUu5zdE9y32QMdkGgX1oxDr6Ttm4fLJhcwoYoRYQt0g
	Cd7c3hNEq7ZNEoJonDy/9XsB229L6EI=
From: Sven Eckelmann <sven@narfation.org>
Date: Sun, 21 Jun 2026 16:24:00 +0200
Subject: [PATCH 10/28] batctl: tcpdump: fix endianness of fragmentation
 sequence number
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260621-bugfixes-v1-10-b09736288a4a@narfation.org>
References: <20260621-bugfixes-v1-0-b09736288a4a@narfation.org>
In-Reply-To: <20260621-bugfixes-v1-0-b09736288a4a@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1005; i=sven@narfation.org;
 h=from:subject:message-id; bh=GoEfJpsRyr/FI8xNrQHKVgyoAk934eSr+agfsXqCaH4=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDFnmX1g5mtbntfqmTf3uKXJ+t4mYXniu9+mZ5cf9T79pW
 af3IPBIRykLgxgXg6yYIsueK/nnN7O/lf887eNRmDmsTCBDGLg4BWAi0s8ZGWae11Pv5be/wdEQ
 0361zOLk3p9F//tL755Ou21dabuvz5SRYf5p/07xpRotVYb3Ljycrxjm/86g1P3+7jZbromzj/h
 bsAMA
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: 6RZHTWELHCGEQ67FNAUR3KKX3V4JDW2H
X-Message-ID-Hash: 6RZHTWELHCGEQ67FNAUR3KKX3V4JDW2H
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/6RZHTWELHCGEQ67FNAUR3KKX3V4JDW2H/>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[narfation.org:dkim,narfation.org:email,narfation.org:mid,narfation.org:from_mime,diktynna.open-mesh.org:rdns,diktynna.open-mesh.org:helo,lists.open-mesh.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D4B2A6AB124

The kernel returns the unicast fragmentation packet in network (big endian)
byte order. But the system might be little endian. In this case, the bytes
must be first reordered before they can be printed.

Fixes: 30f8fe9c105a ("batctl: tcpdump: Add support for unicast fragmentation")
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 tcpdump.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/tcpdump.c b/tcpdump.c
index aced4d3..ddcee03 100644
--- a/tcpdump.c
+++ b/tcpdump.c
@@ -1050,7 +1050,7 @@ static void dump_batman_ucast_frag(unsigned char *packet_buff, ssize_t buff_len,
 	printf("%s: UCAST FRAG, seqno %d, no %d, ttl %hhu\n",
 	       get_name_by_macaddr((struct ether_addr *)frag_packet->dest,
 				   read_opt),
-	       frag_packet->seqno, frag_packet->no, frag_packet->ttl);
+	       ntohs(frag_packet->seqno), frag_packet->no, frag_packet->ttl);
 }
 
 static void dump_batman_bcast(unsigned char *packet_buff, ssize_t buff_len,

-- 
2.47.3

