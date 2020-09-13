Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id E09BB26817A
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 13 Sep 2020 23:30:35 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id DAEE08061F;
	Sun, 13 Sep 2020 23:30:33 +0200 (CEST)
Received: from mail.aperture-lab.de (mail.aperture-lab.de [IPv6:2a01:4f8:171:314c::100:a1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 7E2C680590
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 13 Sep 2020 23:30:31 +0200 (CEST)
From: =?UTF-8?q?Linus=20L=C3=BCssing?= <linus.luessing@c0d3.blue>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c0d3.blue; s=2018;
	t=1600032631;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=cxNgcpMhqNf+YL2SevGOAq7rTzb0p/Ge1skbeCJMux4=;
	b=QBU0OTpmvrVfKX3NzhcDLI1lzcuzi0cfDoyrmgCUemljnQFViGEPat+ig6cUXbdhI8Iznn
	N4In/eNfystDPnoArscjOfvx6WyaKnl4moWwL4+oWV7+GAYEJ53mpEIrjcPz9PahrPqXrw
	bJVsgN/mvVKo54rzMaRPqWp9PBIyqZxroRfuUjF3SGcO1fpZTiJ2L2Mapf9HR/PQy8dwcK
	p6MFHjGj8Y1adHLWThcP/O8tGrR9m68RbyyZKlXfL7/ZCm/EeteGSbaCHed7SkZl+K1hH9
	jwrPcvn+2kfhUlewAEVyq6QBKyBvKGrNMgG6fY+prJB+8CNYX1WUjLPslAl17w==
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: =?UTF-8?q?Linus=20L=C3=BCssing?= <linus.luessing@c0d3.blue>
Subject: [PATCH] batctl: tcpdump: Fix endianness in ICMPv6 Echo Request/Reply parsing
Date: Sun, 13 Sep 2020 23:30:19 +0200
Message-Id: <20200913213019.4250-1-linus.luessing@c0d3.blue>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=linus.luessing@c0d3.blue smtp.mailfrom=linus.luessing@c0d3.blue
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1600032631;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=cxNgcpMhqNf+YL2SevGOAq7rTzb0p/Ge1skbeCJMux4=;
	b=helUqfU0zrnAKdulEHLDV8fu5nStnR7CTt8MwO3PMhEJyzHyRxlFwuURZyJHjDp8JiS/6Y
	Dd1ISD1Rx1/zydGTXHP+Zb+Hka4S0JJku1P/tnvI/PaEQb7FZz9WQBcMJxtAoqZlM63jJh
	lYdbn1FCuUyCgmkd86QiX9DjvY8SfHQ=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1600032631; a=rsa-sha256;
	cv=none;
	b=vpxzo6n+qOs1frchGZ19yfXjqMDzY83kVDoekJjepTMWYu83isGLVBxHiegfs100DYfKrJ
	2aBnT4c6n2w/9q/Rn3yCL9gvrGZ7tjCf8Q+b6zHo8K5PSozEiJ32ypfrRK5sSK/u9ifytH
	Qj+LPiTb6xGKmVFRfmeAzgw+YLHnXz8=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none (invalid DKIM record) header.d=c0d3.blue header.s=2018 header.b=QBU0OTpm;
	spf=none (diktynna.open-mesh.org: domain of linus.luessing@c0d3.blue has no SPF policy when checking 2a01:4f8:171:314c::100:a1) smtp.mailfrom=linus.luessing@c0d3.blue
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: QXDVWVJYFEQLWDAPVBFMGTGW6Y5KFK2U
X-Message-ID-Hash: QXDVWVJYFEQLWDAPVBFMGTGW6Y5KFK2U
X-MailFrom: linus.luessing@c0d3.blue
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/QXDVWVJYFEQLWDAPVBFMGTGW6Y5KFK2U/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

The ICMPv6 Echo Request/Reply sequence number and id as well as the
IPv6 header length are two byte long fields and therefore might need a
conversion on a little endian system. Otherwise the output will be
broken on such a machine.

Fixes: 35b37756f4a3 ("add IPv6 support to tcpdump parser")
Signed-off-by: Linus L=C3=BCssing <linus.luessing@c0d3.blue>
---
 tcpdump.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/tcpdump.c b/tcpdump.c
index db93681..b9edc20 100644
--- a/tcpdump.c
+++ b/tcpdump.c
@@ -589,13 +589,15 @@ static void dump_ipv6(unsigned char *packet_buff, s=
size_t buff_len,
 			break;
 		case ICMP6_ECHO_REQUEST:
 			printf(" echo request, id: %d, seq: %d, length: %hu\n",
-			       icmphdr->icmp6_id, icmphdr->icmp6_seq,
-			       iphdr->ip6_plen);
+			       ntohs(icmphdr->icmp6_id),
+			       ntohs(icmphdr->icmp6_seq),
+			       ntohs(iphdr->ip6_plen));
 			break;
 		case ICMP6_ECHO_REPLY:
 			printf(" echo reply, id: %d, seq: %d, length: %hu\n",
-			       icmphdr->icmp6_id, icmphdr->icmp6_seq,
-			       iphdr->ip6_plen);
+			       ntohs(icmphdr->icmp6_id),
+			       ntohs(icmphdr->icmp6_seq),
+			       ntohs(iphdr->ip6_plen));
 			break;
 		case ICMP6_TIME_EXCEEDED:
 			printf(" time exceeded in-transit, length %zu\n",
--=20
2.28.0
