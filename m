Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id p3trJcKVSmqCEwEAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 05 Jul 2026 19:34:58 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EB3870AB63
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 05 Jul 2026 19:34:58 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=narfation.org header.s=20121 header.b=Ue7n+LZe;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 136.243.236.17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 06E56840F4
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 05 Jul 2026 19:34:58 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1783272898;
 b=MEcLy3TJ/y2P78uswMF4IZEg2TmgJSameShSHeGBxX6CSiUR3WUKBVBlmrU46lBNB2QY8
 vMCwOW+sHYhVji13cm6BfyiKGg8beSCUOEcz7z9cLsLnEgV+o6M2x6Baz41UpT3T6obVMu6
 wSJ4YdbNGN11e5iDHT4YOFfpkbrlImk=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1783272898; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=uTUiChNl2xN/zmD9kEcL7BMO7kNjuA0MVFImz0GROyI=;
 b=tQa60rctRDguwbugdwlMEJvwJXCt42TSsZaOseb+siRJ/CKmCHb855HanB95mlWbHcmoG
 z5TjoH97mJl5kKfklGfKau1FK/zrDYrgPBh0YDJMe6pqDjSCxaATn6Sb1aINd90sIRDxHgf
 Yue/a8TfHUjZdBmeOf9fkfuh1LtlY58=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org
 [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id DDA68823B5
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 05 Jul 2026 19:30:22 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1783272622;
	b=dYBoqxceNrO0px77Oeqh/JrD/3N36+V2IJTiVlq7q/GHtvH4/wJwpjXug0TJDoWJeMeg9V
	DnxqdTfrrHUu71HhEsfV0tyz3GLyvG4aRl2bS2EhIZC+NLnb1mJ2WSD73mbZuh60l454ju
	G1CZgx0iata4DVmRjnJ/8pWvO4CcjcI=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1783272622;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=uTUiChNl2xN/zmD9kEcL7BMO7kNjuA0MVFImz0GROyI=;
	b=qMO9Aqq/0mf6YEPh3tvQMfAfXPWAm+Cg1SF2G1VEKZA4gpBbDoBaugU6B3UYEOGtau4r+B
	Hxg6h2qjhQQg6R7Uhoo7wXZ7ramPPpzC79oocFyGjsL3zlBcoLXkmQX3O2d6MfWA0rXWGr
	KDnSvX41XXh0dR9huSxS62Mn4BK+6iM=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=Ue7n+LZe;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
Received: by dvalin.narfation.org (Postfix) id 8C5AF1FEE6;
	Sun, 05 Jul 2026 17:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1783272622;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=uTUiChNl2xN/zmD9kEcL7BMO7kNjuA0MVFImz0GROyI=;
	b=Ue7n+LZedJdYdM3dhsedFvSK5cpJDepURhFEYUMDx2k6eakRZHSaWx5DUia/EpPeIKjesg
	/YwQbni11dCNOWa33rnJ8wVYAfDJ7z7177ySISNYUdAtQkySduUShR5rGhzqcP76fw3InB
	9ucaaLGLJv3SEaPi+9x6BtlhqSbjQ7M=
From: Sven Eckelmann <sven@narfation.org>
Date: Sun, 05 Jul 2026 19:30:09 +0200
Subject: [PATCH 6/9] batctl: tcpdump: skip partial line for oversized
 ICMPv6 errors
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260705-bugfixes-tcpdump-v1-6-c37f6f82eed1@narfation.org>
References: <20260705-bugfixes-tcpdump-v1-0-c37f6f82eed1@narfation.org>
In-Reply-To: <20260705-bugfixes-tcpdump-v1-0-c37f6f82eed1@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1243; i=sven@narfation.org;
 h=from:subject:message-id; bh=xS0Ld8OnA8R5Yo6tUzVP68UUWds93dsaG8qxgVVV0WE=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDFleU+bJVpqeqTA4mnZz4vxfjUv0th+TM1oeF7y4TjVS9
 WP0uaxlHaUsDGJcDLJiiix7ruSf38z+Vv7ztI9HYeawMoEMYeDiFICJ+LszMizz5eJzfXdyd/Gy
 TzztrdPy3y7O6jzDsuNLfIDoC3aNgwyMDBNYX94wkKgLjvp+Qf6enMDpB4tvqSfJf7h5+rP4s4x
 AazYA
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: KF3LNVYU7VIU72DHKMUGBS5HKDEVJP5S
X-Message-ID-Hash: KF3LNVYU7VIU72DHKMUGBS5HKDEVJP5S
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/KF3LNVYU7VIU72DHKMUGBS5HKDEVJP5S/>
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
X-Rspamd-Queue-Id: 3EB3870AB63

dump_ipv6() prints the "IP6 <src> > <dst> " line prefix before it checks
whether an ICMPv6 error message exceeds IPV6_MIN_MTU. The length check
might just stop the processing and causes some truncated output on stdout.
Which is then also not terminated by a newline.

Move the size check ahead of the printf to avoid this partial line.

Fixes: 35b37756f4a3 ("add IPv6 support to tcpdump parser")
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 tcpdump.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/tcpdump.c b/tcpdump.c
index c532ad1..1094069 100644
--- a/tcpdump.c
+++ b/tcpdump.c
@@ -624,7 +624,6 @@ static void dump_ipv6(unsigned char *packet_buff, ssize_t buff_len,
 		icmphdr = (struct icmp6_hdr *)(packet_buff +
 					       sizeof(struct ip6_hdr));
 
-		printf("%s %s > %s ", ip_string, ipsrc, ipdst);
 		if (icmphdr->icmp6_type < ICMP6_INFOMSG_MASK &&
 		    (size_t)(buff_len) > IPV6_MIN_MTU) {
 			fprintf(stderr,
@@ -633,6 +632,7 @@ static void dump_ipv6(unsigned char *packet_buff, ssize_t buff_len,
 			return;
 		}
 
+		printf("%s %s > %s ", ip_string, ipsrc, ipdst);
 		printf("ICMP6");
 		switch (icmphdr->icmp6_type) {
 		case ICMP6_DST_UNREACH:

-- 
2.47.3

