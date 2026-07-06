Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id LrcRNFHvS2oNdQEAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 06 Jul 2026 20:09:21 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 6637C7144E6
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 06 Jul 2026 20:09:21 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=narfation.org header.s=20121 header.b=FuFemNrh;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 136.243.236.17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 44A638428B
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 06 Jul 2026 20:09:21 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1783361361;
 b=s5rDSbaAdkczhv4sCGkXzoA3FAeDVDemerVYXay+cRf667CGYSlt7b38gpSXYP+oUoMA+
 yT2GtwziOmMdbZUCCFN8r7WUsmd5MxPEI5J8xFXKYG7Z8fD/mpHRPa1EXhUSeAHYgV3zb0S
 XY08guo+CWZrgkKxOG2SYsCYlDeWKzs=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1783361361; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=+zXgTP4EoRuyMLfnSNaac8+SrcqdEtr5jQ86S+RKK6g=;
 b=plQzpfUgWL6vLSPIiGp1BJ4EaPLIpNkbMru3oKW1BzoHPNSu9c1sulvJ90V0MGXMY21lj
 C+X3o5GE5W1OQmNnoXZhWvF9Mi/jfH5S3iSgMMl5JaIunNjNf+hlAv28XPLt09tZsYEkD/4
 f4lDqoyRoEQtBS4eCGAOQ7ChgVzuML0=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id C95F3818CD
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 06 Jul 2026 20:08:44 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1783361334;
	b=3GSo1GYY143ChWxQ1AKHueVrHFEi5WjbWvQiATAjOIsBpuenHcpFe+FryrKY5Ba09tm2Ck
	DTw8nxgznYIPTJVREmcFKUzGQe02EoqGloQgvwooLXAouc7ijVcPqt8bXtTcc8PH03Fx3H
	m0j/Mr7lxKCOEZW8OcQkF382wx/4DDE=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1783361334;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=+zXgTP4EoRuyMLfnSNaac8+SrcqdEtr5jQ86S+RKK6g=;
	b=wTHljXwq1zt0+vtrrOPCf9spj1p9o9IYVgmvGOaki9NP3VIbhVrvWQFEBx88Lw/8yFFUvt
	NEJ5PJK+v3Nj+6hO87/tQo8fazCUFs7ZNIETBDV1l7/dWAgMIfGqe68WXTPBw8jhSx44qV
	/K9QVe/gB4Ju20ctefAd4WYrgHaxl0k=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=FuFemNrh;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
Received: by dvalin.narfation.org (Postfix) id 2E45E2026A;
	Mon, 06 Jul 2026 18:08:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1783361323;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=+zXgTP4EoRuyMLfnSNaac8+SrcqdEtr5jQ86S+RKK6g=;
	b=FuFemNrhfcugXKJJOkSYlV0D2K1PrtFmney+Jxzmpc30S4ODc39CnWeL2Xkm3eep+jYCkT
	SFrFM/oKLF8OJclhTl7uITe3fDDO79vlH5X22eKZ1DtrCJgJ5K+3bkgpSvPfGGcHfp/Qtc
	Tel6aBiEHq9xxI4a6nBvrLlPcqvzL2E=
From: Sven Eckelmann <sven@narfation.org>
Date: Mon, 06 Jul 2026 20:08:35 +0200
Subject: [PATCH batadv] batman-adv: dat: avoid unaligned fault in IP
 extraction
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260706-dat-unaligned-ip-access-v1-1-c86e560cc47b@narfation.org>
X-B4-Tracking: v=1; b=H4sIACLvS2oC/yWMQQrCMBAAv1L27EIMklS/Ih42yVpXJJZsWgqlf
 ze2xxmYWUG5CCvcuhUKz6LyzQ3Opw7ii/LAKKkxWGOd8cZhoopTpo8MmRPKiBQjq6IPV2+od73
 lC7R6LPyUZT/fIVClNMPj8DqFN8f638K2/QCkjrUwgwAAAA==
X-Change-ID: 20260706-dat-unaligned-ip-access-7b970a8682e4
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sashiko <sashiko-bot@kernel.org>, Sven Eckelmann <sven@narfation.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1685; i=sven@narfation.org;
 h=from:subject:message-id; bh=7Q4XpOSOK0NVaVHJL4NTCrfHSr5zfJJmdvjlPFDD4gI=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDFne71W4i3tUn0XkuFzdoWnxImDz5q0/z+tlHf9XZRm1b
 I9x4dGvHaUsDGJcDLJiiix7ruSf38z+Vv7ztI9HYeawMoEMYeDiFICJcBQwMmxvCl09w6M1JevE
 6U9HDil9Xyww3aH+J6/t2lO39tT+Y1Bn+GedYvlEgEm3/cFNdU3BtvMxlZ5he4070zSm7u6+eP2
 QJwcA
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: HIB7KI2GUCMP6EQWGHMQBDOLDKQI6IDJ
X-Message-ID-Hash: HIB7KI2GUCMP6EQWGHMQBDOLDKQI6IDJ
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/HIB7KI2GUCMP6EQWGHMQBDOLDKQI6IDJ/>
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
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,b.a.t.m.a.n=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS(0.00)[m:b.a.t.m.a.n@lists.open-mesh.org,m:sashiko-bot@kernel.org,m:sven@narfation.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sven@narfation.org,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	DKIM_TRACE(0.00)[narfation.org:+];
	R_SPF_NA(0.00)[no SPF record];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sven@narfation.org,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:24940, ipnet:136.243.0.0/16, country:DE];
	TAGGED_RCPT(0.00)[b.a.t.m.a.n];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.open-mesh.org:from_smtp,narfation.org:from_mime,narfation.org:email,narfation.org:mid,narfation.org:dkim,diktynna.open-mesh.org:helo,diktynna.open-mesh.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6637C7144E6

Independent of the alignment of the ARP packet in the SKB, either the
batadv_arp_ip_src or the batadv_arp_ip_dst will have an unaligned access
(on HW without native unaligned read support).

Use get_unaligned() to handle this properly on all architectures.

Reported-by: Sashiko <sashiko-bot@kernel.org>
Fixes: 0591c25abca9 ("batman-adv: Distributed ARP Table - add ARP parsing functions")
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 net/batman-adv/distributed-arp-table.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/net/batman-adv/distributed-arp-table.c b/net/batman-adv/distributed-arp-table.c
index a5c9b6d0..9e48077a 100644
--- a/net/batman-adv/distributed-arp-table.c
+++ b/net/batman-adv/distributed-arp-table.c
@@ -316,7 +316,10 @@ static u8 *batadv_arp_hw_src(struct sk_buff *skb, int hdr_size)
  */
 static __be32 batadv_arp_ip_src(struct sk_buff *skb, int hdr_size)
 {
-	return *(__force __be32 *)(batadv_arp_hw_src(skb, hdr_size) + ETH_ALEN);
+	u8 *src = batadv_arp_hw_src(skb, hdr_size) + ETH_ALEN;
+	__be32 *ip = (__force __be32 *)src;
+
+	return get_unaligned(ip);
 }
 
 /**
@@ -341,8 +344,9 @@ static u8 *batadv_arp_hw_dst(struct sk_buff *skb, int hdr_size)
 static __be32 batadv_arp_ip_dst(struct sk_buff *skb, int hdr_size)
 {
 	u8 *dst = batadv_arp_hw_src(skb, hdr_size) + ETH_ALEN * 2 + 4;
+	__be32 *ip = (__force __be32 *)dst;
 
-	return *(__force __be32 *)dst;
+	return get_unaligned(ip);
 }
 
 /**

---
base-commit: e281f6726677f7e8950dad1640d5386867e6d2e6
change-id: 20260706-dat-unaligned-ip-access-7b970a8682e4

Best regards,
--  
Sven Eckelmann <sven@narfation.org>

