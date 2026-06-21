Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id v3k2Np72N2rRWAcAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 21 Jun 2026 16:35:10 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CAB96AB157
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 21 Jun 2026 16:35:10 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=narfation.org header.s=20121 header.b=2NSXWbFh;
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 2a01:4f8:241:fc1:136:243:236:17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	dmarc=pass (policy=none) header.from=narfation.org;
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 58CC880DC3
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 21 Jun 2026 16:35:10 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1782052510;
 b=3LQb8zUXwCrfB4ACWCLeKRlhzrUnX/1ee9h3pDT/SNJyboPMK3rF4pqlVQTySPRKEpY4R
 fvZPa4W+dQAVhHiRT1H7iJLCVj/jIZRZ5MoqqD1rpuOaeQ0+svnLVW/T1lfaq68Lc/lyqXB
 oeQYs343fXBFdeHRgOAkn+x/C1lMwoI=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1782052510; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=Oog+h8G+rl7vK2kIedlCQXJV1O+4WFXfJlgCeLKToQc=;
 b=NwcV5GxJBVGKM3CUpslwZ5qHkCtrpnzI0Q4rLVplDTPc9vtBAP/q2o9eNn2vdFqxIDD1/
 qcvVf99D7Xj7Hwld+AfSo4x+i+ByrFGiHK/KRjH3ed3EITKTH35joqhT+Z10p+Urr1M2SkF
 JYhnFmEKMTc/MgzkO4/MsNii3pkeb5g=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id AA0AA80CC7
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 21 Jun 2026 16:25:12 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1782051912;
	b=XPOLcn3l575OavlbhR8zR54fVvWalWAHLJOQZv2YJIxMc8aT9zFuN6M1whIokiJIrUg5U/
	RTWdT95zkx69yOLF+jaBYc1QLaZxI3ATFnqO+RdH1C6FKDHe/OnTzkhO2ZY8lDy+U9yC/c
	1jR4PwSpxJr6EfIGCvyThcpfatvWJcQ=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1782051912;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=Oog+h8G+rl7vK2kIedlCQXJV1O+4WFXfJlgCeLKToQc=;
	b=wCwM+Sx9vdpkNFtgHfiRn3gqdvnravoYRWaWQgONb8LLyCLlT8Q915npqEd20WvuvCIVNb
	/1IHFI+0Alzxhji28YaagOrckbaCHl7kH1pz5xmj6qsP+obiZIdsjGk91pRv8fw1pth7hF
	NqaaR+678jlTIwAjCffe8Zd1OKw/0ck=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=2NSXWbFh;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
Received: by dvalin.narfation.org (Postfix) id 2CBAF20059;
	Sun, 21 Jun 2026 14:25:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1782051912;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Oog+h8G+rl7vK2kIedlCQXJV1O+4WFXfJlgCeLKToQc=;
	b=2NSXWbFh6UadMWoPhSviKjJ+TlR4fT8xewYkFwY1Jw1/6ZEWDiNxtZkJxKLeF7eIRmpfh5
	8BSdhFjQx0taAoWLocolB8i/V/fFc4ZnlUmKWCb5Ry1lLv7MpUGj+pHzr5s9pGtHRnGU+g
	D3PnDTTgppL3Y5wHj+vT6evjmBlTTmA=
From: Sven Eckelmann <sven@narfation.org>
Date: Sun, 21 Jun 2026 16:24:04 +0200
Subject: [PATCH 14/28] batctl: tcpdump: handle TCP packet with bogus data
 offset
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260621-bugfixes-v1-14-b09736288a4a@narfation.org>
References: <20260621-bugfixes-v1-0-b09736288a4a@narfation.org>
In-Reply-To: <20260621-bugfixes-v1-0-b09736288a4a@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1677; i=sven@narfation.org;
 h=from:subject:message-id; bh=rIWxfV5wtiyt+LHhBhZFV2Amuk7UfXaIVhQW3xHIQag=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDFnmX9hyG5Ta3qXGe54y5/9e08rBNava7emR6b/19pu8u
 9v8O/hDRykLgxgXg6yYIsueK/nnN7O/lf887eNRmDmsTCBDGLg4BWAiO4UZ/tnmNzvb/9x/yenA
 7bI26ZmzJLxXd0/e7qZilaPzIcaQ/yLDX9GN+TM3T7u/YuHLTSqTTNKWVL99M/9Fl9ss1nXMSwR
 eCPEDAA==
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: 4MV6MQY6KII4XNMKKH2U3E26LPRMAGBQ
X-Message-ID-Hash: 4MV6MQY6KII4XNMKKH2U3E26LPRMAGBQ
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/4MV6MQY6KII4XNMKKH2U3E26LPRMAGBQ/>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[narfation.org:dkim,narfation.org:email,narfation.org:mid,narfation.org:from_mime,lists.open-mesh.org:from_smtp,diktynna.open-mesh.org:rdns,diktynna.open-mesh.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7CAB96AB157

dump_tcp() computes length as (buff_len - ip6_header_len - tcp_header_len),
but the only bounds guard ensures 20 bytes, while doff allows a higher
header length (60 bytes). With a doff of 15 (60 bytes) and only 20 bytes
available in the buffer, the calculation would underflow and show a bugus
length of the TCP payload. For now, set the payload length to zero for such
a packet.

Fixes: 35b37756f4a3 ("add IPv6 support to tcpdump parser")
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 tcpdump.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/tcpdump.c b/tcpdump.c
index 9c90f36..7769cbf 100644
--- a/tcpdump.c
+++ b/tcpdump.c
@@ -537,18 +537,20 @@ static void dump_tcp(const char ip_string[], unsigned char *packet_buff,
 {
 	uint16_t tcp_header_len;
 	struct tcphdr *tcphdr;
+	size_t tcp_len;
 
 	LEN_CHECK((size_t)buff_len - ip6_header_len,
 		  sizeof(struct tcphdr), "TCP");
 	tcphdr = (struct tcphdr *)(packet_buff + ip6_header_len);
 	tcp_header_len = tcphdr->doff * 4;
+	tcp_len = (size_t)buff_len - ip6_header_len;
 	printf("%s %s.%i > ", ip_string, src_addr, ntohs(tcphdr->source));
 	printf("%s.%i: TCP, Flags [%c%c%c%c%c%c], length %zu\n",
 	       dst_addr, ntohs(tcphdr->dest),
 	       (tcphdr->fin ? 'F' : '.'), (tcphdr->syn ? 'S' : '.'),
 	       (tcphdr->rst ? 'R' : '.'), (tcphdr->psh ? 'P' : '.'),
 	       (tcphdr->ack ? 'A' : '.'), (tcphdr->urg ? 'U' : '.'),
-	       (size_t)buff_len - ip6_header_len - tcp_header_len);
+	       tcp_len > tcp_header_len ? tcp_len - tcp_header_len : 0);
 }
 
 static void dump_udp(const char ip_string[], unsigned char *packet_buff,

-- 
2.47.3

