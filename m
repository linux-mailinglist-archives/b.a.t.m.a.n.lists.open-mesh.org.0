Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id SmGdDsD1N2p/WAcAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 21 Jun 2026 16:31:28 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id D021A6AB118
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 21 Jun 2026 16:31:27 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=narfation.org header.s=20121 header.b=u6qCFYHK;
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 136.243.236.17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	dmarc=pass (policy=none) header.from=narfation.org;
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id AD48C84380
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 21 Jun 2026 16:31:27 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1782052287;
 b=DjPQc5U0Stg9HhJWcUChzGQJp5mqTSQexEyOscAgZqErk1hUYwjdW5mRH+FEc/sUW8jB8
 rgL41NWHMqevqVPhosVVLqViT4P5ckMFA77hg5OBnkP6VYIQNd77q8beVrsI7qVZNi8duPj
 UsGTf5EHP7qUQfirCNALuSM1OLk7Mpc=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1782052287; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=xfFIHVyRd75M3t1TKpC3QzrIceM9uQzubeg3M2KDdRE=;
 b=XoMEMsGs9h0VNaZuOIURiyp4zoYpyHxrU5jYXW9iFhze7vhFSnurf2T4JqBKZ2KnNRRUO
 oQAoaZLSGqx1poJO7Zmh5f0gEAaCywW3A7qkXjxDrYDrB8mg9bqE0JTeQZmj8dXDvBVh8wm
 WKZD7+Xwhg3473WRB9uihoxlBjOPb8U=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org
 [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id 8952481ADF
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 21 Jun 2026 16:25:01 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1782051901;
	b=1JiR/bCVHD1Y8OJ3i85frPs3bDnqA0X8laGyQMM/0+v+slzpu/6C6nEGVcOffwRXlHyI+e
	ArtJRkLi1SLE/PWkCCNf54kKiq3z9JIp5tNnU1t4Pv2xiBhgyWOMMxZLVLPvNRF0/xlfMe
	2Ic1hZUx8z4C0eXOUYb0ekU/nn+PGEs=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1782051901;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=xfFIHVyRd75M3t1TKpC3QzrIceM9uQzubeg3M2KDdRE=;
	b=Bgi4PyHcJekj5rGjppCXbbP+ZM6WP66V3wsy/zOA3jk9tJbpkCqdvkDtHyQs+/qXIu1DRn
	LCTIZA8nHhvDtygVzBm9I4EmrW3vxzt6A3uJLhhxCjq9B8pZpctzyZBVsVe/NoxRAOS1q8
	IEtHoFGpAbznczLXR3Nze/JHOpZKs8g=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=u6qCFYHK;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
Received: by dvalin.narfation.org (Postfix) id 41F5420059;
	Sun, 21 Jun 2026 14:25:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1782051901;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=xfFIHVyRd75M3t1TKpC3QzrIceM9uQzubeg3M2KDdRE=;
	b=u6qCFYHKvIufU9HABwlkp4bHFfSZY1Glj87EFc2qmFXstw2m2t4a3yc3195GiysVDvCDz9
	zaQjwbdiVhJg0JmKIsFRvtTmKuhvlHkrUAhZMRgqNIxSBCCxLq4ZPCYao14E0LR1WcQsIJ
	gMx8qvy4z6vtS/GGJCR8nO1JLwHFaBA=
From: Sven Eckelmann <sven@narfation.org>
Date: Sun, 21 Jun 2026 16:23:59 +0200
Subject: [PATCH 09/28] batctl: tcpdump: fix coded packet mac dest mac
 addresses
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260621-bugfixes-v1-9-b09736288a4a@narfation.org>
References: <20260621-bugfixes-v1-0-b09736288a4a@narfation.org>
In-Reply-To: <20260621-bugfixes-v1-0-b09736288a4a@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1089; i=sven@narfation.org;
 h=from:subject:message-id; bh=KYCLdg6TmqRzVHcjbPGpSALPkjcYGbF77jOev869/mU=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDFnmX1j5Egwvy+csP6w/O0Lqsema9v1BNuZr2ln+upWtu
 ZO37/61jlIWBjEuBlkxRZY9V/LPb2Z/K/952sejMHNYmUCGMHBxCsBEPhoyMlzZ+22tMR/f2blx
 n14JHQpczn+joONfs5hhUqXHxSna3w8w/JX6qiL8XSm3b5pmzuO65etKEjctmfIgMXFDbi6TtN2
 tKGYA
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: JP5HKXNFVN5HSG4BQ5A4FW4VCJPNM2ZL
X-Message-ID-Hash: JP5HKXNFVN5HSG4BQ5A4FW4VCJPNM2ZL
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/JP5HKXNFVN5HSG4BQ5A4FW4VCJPNM2ZL/>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[narfation.org:dkim,narfation.org:email,narfation.org:mid,narfation.org:from_mime,diktynna.open-mesh.org:rdns,diktynna.open-mesh.org:helo,lists.open-mesh.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D021A6AB118

get_name_by_macaddr uses returns shared buffer. The content of the buffer
must therefore be processed first before the next get_name_by_macaddr()
call is performed.

Fixes: 9aae3c9f27b8 ("batctl: tcpdump: Add support for coded packets")
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 tcpdump.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/tcpdump.c b/tcpdump.c
index 3409e59..aced4d3 100644
--- a/tcpdump.c
+++ b/tcpdump.c
@@ -1152,9 +1152,10 @@ static void dump_batman_coded(unsigned char *packet_buff, ssize_t buff_len,
 	       get_name_by_macaddr((struct ether_addr *)ether_header->ether_shost,
 				   read_opt));
 
-	printf("%s|%s: CODED, ttvn %d|%d, ttl %hhu\n",
+	printf("%s|",
 	       get_name_by_macaddr((struct ether_addr *)coded_packet->first_orig_dest,
-				   read_opt),
+				   read_opt));
+	printf("%s: CODED, ttvn %d|%d, ttl %hhu\n",
 	       get_name_by_macaddr((struct ether_addr *)coded_packet->second_dest,
 				   read_opt),
 	       coded_packet->first_ttvn, coded_packet->second_ttvn,

-- 
2.47.3

