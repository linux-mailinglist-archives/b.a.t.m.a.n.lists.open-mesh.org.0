Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id bNB8BpCVSmp+EwEAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 05 Jul 2026 19:34:08 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id B559270AB55
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 05 Jul 2026 19:34:07 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=narfation.org header.s=20121 header.b=Z9vHDbW6;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 2a01:4f8:241:fc1:136:243:236:17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 91D6C8076A
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 05 Jul 2026 19:34:07 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1783272847;
 b=Ut37efs3WxAtl+dk/pzVU8wo1BD7qSAdcbZsbTBgPCB4b6MAALef3QcHkaPCAClLuGo99
 ZsKT9QKTGlFYu+KnaAMdwZpRdW30nvh2TpF4H9SkvGkul3g7IXNsfRqdWVleVNfy0PU8KHr
 DGfOYRiuROgz7Fu5eHjmMfzdfN6SGiI=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1783272847; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=WYyMcoet5lHRQkZ5vhkguejKoPyCUwDcvR+zJlKn0Mo=;
 b=A1SnxpgE35ihOmZE0KM5uOaNFTJZvWLSaM/gRSP2Ws/6jIbcwMTyyxIlV2KdUCy1iHNA6
 mKpO0jBVNd/oTHpQXCHO1XCDnFMIADcmNmC5ti36/gkALOkMBuZMzRJwSRpAJmty1TokAXq
 BUtDIm4bwJOsV4vd3cx0orgYBBvsAQA=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id 07C7781712
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 05 Jul 2026 19:30:21 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1783272621;
	b=jmqeF5U2oF62i7M/YnTW4pKnWU5jj/oCtJSeTKX81KO26xWN2H4ydaw+6CxAj5jYI5sTz+
	+hP0WRxl/xK4VG8xQFykL1p5EmR40YOUbdomRMto0Y+zrM6LFu7s/u6C+aiufnHpIgsPlz
	iPPak64IhpmdRsyrt1TG1K/Ri5Sd/pA=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1783272621;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=WYyMcoet5lHRQkZ5vhkguejKoPyCUwDcvR+zJlKn0Mo=;
	b=tUkKpyxhXha2oPvGQoJfoTkSNgHVIdtQhuqS90ePlIHlFWwi2xUKWTmoW+7He7ZrMuU2W0
	dytfnKn2BHTfyZh3OQVBAyX8gEVK0ISVPgAUd65oTsMCiPAIMcC44XOlKIc7xny8ywg2Xg
	7ZaWyi6LruXgCQ4RhWG7sMxOfiyOUZw=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=Z9vHDbW6;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
Received: by dvalin.narfation.org (Postfix) id B6F511FEE6;
	Sun, 05 Jul 2026 17:30:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1783272620;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=WYyMcoet5lHRQkZ5vhkguejKoPyCUwDcvR+zJlKn0Mo=;
	b=Z9vHDbW6z6nnjqI73aWO5kVdoO/c2BBjmh+3i/DesGqlAuyYpp/64qQWVvVHHjKgzK9lwI
	XbhMeRfTHUWpnfqzkeqS3npa70TfHxcX6YjztUricUJMb2T5F9I51izePUsEm4CW4tcbtg
	jqXR2FaZEQrviecBGG3Z7hBHhtAv5oo=
From: Sven Eckelmann <sven@narfation.org>
Date: Sun, 05 Jul 2026 19:30:08 +0200
Subject: [PATCH 5/9] batctl: tcpdump: print the unreachable host for ICMP
 port unreachable
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260705-bugfixes-tcpdump-v1-5-c37f6f82eed1@narfation.org>
References: <20260705-bugfixes-tcpdump-v1-0-c37f6f82eed1@narfation.org>
In-Reply-To: <20260705-bugfixes-tcpdump-v1-0-c37f6f82eed1@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1502; i=sven@narfation.org;
 h=from:subject:message-id; bh=vML4ZjufpCzLBzDU/EOvnReVDgulJXt5bmLBH0PwF4Q=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDFleU+ad/GffN+9q3ynu+xsYemotL8v9XT2/bcIhpy1zm
 axDhOf/7yhlYRDjYpAVU2TZcyX//Gb2t/Kfp308CjOHlQlkCAMXpwBMhOcYI8O8VPmP67YdEZjW
 kenr/vWQtkK6+9Ym8wc/MyaL/r/877stw2/W2r+eyXOFDth77N8wSVn4+cOOpSyBwg897J8usyw
 6spMfAA==
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: F3NXPVFDJH7DBATSACXWDO7367EVNJCJ
X-Message-ID-Hash: F3NXPVFDJH7DBATSACXWDO7367EVNJCJ
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/F3NXPVFDJH7DBATSACXWDO7367EVNJCJ/>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.open-mesh.org:from_smtp,narfation.org:from_mime,narfation.org:email,narfation.org:mid,narfation.org:dkim,diktynna.open-mesh.org:helo,diktynna.open-mesh.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B559270AB55

When decoding an ICMP port-unreachable message, tcpdump prints the
destination of the ICMP repply packet. The actual relevant IP (the original
destination) is only in the inner IP header.

The destinatin IP from the already validated tmp_udphdr must be used
instead.

Fixes: f08a28dcffb1 ("batctl: tcpdump - fix IP header parsing")
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 tcpdump.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/tcpdump.c b/tcpdump.c
index b01581e..c532ad1 100644
--- a/tcpdump.c
+++ b/tcpdump.c
@@ -714,6 +714,7 @@ static void dump_ip(unsigned char *packet_buff, ssize_t buff_len,
 		    int time_printed)
 {
 	static const char ip_string[] = "IP";
+	char ipinner[INET_ADDRSTRLEN];
 	char ipsrc[INET_ADDRSTRLEN];
 	char ipdst[INET_ADDRSTRLEN];
 	struct udphdr *tmp_udphdr;
@@ -770,9 +771,15 @@ static void dump_ip(unsigned char *packet_buff, ssize_t buff_len,
 
 				tmp_udphdr = (struct udphdr *)(((char *)tmp_iphdr) + (tmp_iphdr->ihl * 4));
 
+				if (!inet_ntop(AF_INET, &tmp_iphdr->daddr, ipinner,
+					       sizeof(ipinner))) {
+					fprintf(stderr, "Cannot decode unreachable destination IP\n");
+					return;
+				}
+
 				printf("%s: ICMP ", ipdst);
 				printf("%s udp port %hu unreachable, length %zu\n",
-				       ipdst, ntohs(tmp_udphdr->dest),
+				       ipinner, ntohs(tmp_udphdr->dest),
 				       (size_t)buff_len - (iphdr->ihl * 4));
 				break;
 			default:

-- 
2.47.3

