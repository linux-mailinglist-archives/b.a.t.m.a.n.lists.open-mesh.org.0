Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 6F+OEeCUSmpwEwEAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 05 Jul 2026 19:31:12 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id E695A70AB41
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 05 Jul 2026 19:31:11 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=narfation.org header.s=20121 header.b=U0DaBhMI;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 2a01:4f8:241:fc1:136:243:236:17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id C1DD184091
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 05 Jul 2026 19:31:11 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1783272671;
 b=CKoFhIyYztgTDtIu6qC0mPCz6+s6XGb+xmP6xaOVsWPavMNNygyGbu0s3PH03tJVTmWju
 6vk0Mk0Jdt6C0IotXtFc6UJMgmuyISjaCwugaPSoa3XOkl2PKybfbtyppns99uMUAknsX7+
 vpuSFOM550e7CKinN/v/RymWz7E//Yc=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1783272671; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=F31yD2qX1hiapmis53ajEeAGbHw0cUpgvpg7UKw+ZXw=;
 b=cFQJ9b55or625MGe2TQFYtBMmWYs/HkoMRjXbHitww+MCyXbx8xYWGsEUm5uKVla6f1Xr
 /p7NuhBxolhA1lxBiLfowcBLB1qAbbPF/WJ6TpRQpkSvKTjvKV/U8BNQ/Yv2fCfSQhUu7N7
 LbtK1/apD0QwxKdf0QEf3bwNNpi4wGs=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id 7ECB881D9B
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 05 Jul 2026 19:30:12 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1783272612;
	b=hNP6H2Am0ZqxdTgV3E0kOLT0mbibpIlwZ+VMIeuBKu5nIkFKomDPQcOMAn7dYuNWQI7BzT
	fPeA6mExe5e7qqCPsAv7XfI1jeaNxR/uudgGQ967DkYLkYDhYfmbVb7mLA3BNFADdHahOU
	Nnu7Ece3OHrrkXfY8NTXaNAkJq5J6KI=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1783272612;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=F31yD2qX1hiapmis53ajEeAGbHw0cUpgvpg7UKw+ZXw=;
	b=mvD3j7dIIP0GbJLq1NQ6w3v/DTXwGIiXr7ZG9fSel8udH28d88iTQEGcBmDs0UFgTnXpDq
	BWWPVexWbi75W4tQ4LJgBpLdyCJc66rAsohmDbZnSmPvEVHrK8R7wIdwJx3DEnXOA+PAby
	3SdNSXHw3Qu7INnM7iwhZsYMM7vXyOk=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=U0DaBhMI;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
Received: by dvalin.narfation.org (Postfix) id 3E6BC1FEE6;
	Sun, 05 Jul 2026 17:30:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1783272612;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=F31yD2qX1hiapmis53ajEeAGbHw0cUpgvpg7UKw+ZXw=;
	b=U0DaBhMIFAFl5/1sz2OtvyC5S+wIONAmvmVAntlFVyi1hIuqzXDIsi/gwkERed19Sk9Cqp
	NNMhBD7FJRwWZcB0VrT7unn/cOk1I4Ey9+av8PXUNeO9EDXHapBlDUhpZVya36E3UgkKY5
	QGtS4fOym+86Gqix2yWCb3597Ads10s=
From: Sven Eckelmann <sven@narfation.org>
Date: Sun, 05 Jul 2026 19:30:04 +0200
Subject: [PATCH 1/9] batctl: tcpdump: fix "subtybe" typo in 4ADDR output
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260705-bugfixes-tcpdump-v1-1-c37f6f82eed1@narfation.org>
References: <20260705-bugfixes-tcpdump-v1-0-c37f6f82eed1@narfation.org>
In-Reply-To: <20260705-bugfixes-tcpdump-v1-0-c37f6f82eed1@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=950; i=sven@narfation.org;
 h=from:subject:message-id; bh=vPPY72hGFIQgVYDlNwjz6nHu04asaF2N4ZCaSDqJsKg=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDFleU+ZllOzQnN8ysz38lV2nmWiI+CyRKwvilCs1G1wca
 pM3HPrVUcrCIMbFICumyLLnSv75zexv5T9P+3gUZg4rE8gQBi5OAZjI8w2MDDf3Xzys3SpXFcC9
 2Fdh+9oTUg+E5ZesmPZ1dmXvDIGCL+yMDHtf/dTaOflNxW7Ru1q314avUd20/V1c3G5NxuDdGa4
 ayiwA
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: LWYW7OQLXHCJQ5SZW4V76SEYM3COWLDK
X-Message-ID-Hash: LWYW7OQLXHCJQ5SZW4V76SEYM3COWLDK
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/LWYW7OQLXHCJQ5SZW4V76SEYM3COWLDK/>
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
X-Rspamd-Queue-Id: E695A70AB41

The unicast-4addr packet dump prints the field label as "subtybe"
instead of "subtype".

Fixes: 02921f7519a2 ("batctl: tcpdump - print subtype for UNICAST4ADDR packets")
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 tcpdump.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/tcpdump.c b/tcpdump.c
index 7769cbf..a48f8ad 100644
--- a/tcpdump.c
+++ b/tcpdump.c
@@ -1184,7 +1184,7 @@ static void dump_batman_4addr(unsigned char *packet_buff, ssize_t buff_len,
 	printf("BAT %s > ",
 	       get_name_by_macaddr((struct ether_addr *)ether_header->ether_shost, read_opt));
 
-	printf("%s: 4ADDR, subtybe %hhu, ttvn %d, ttl %hhu, ",
+	printf("%s: 4ADDR, subtype %hhu, ttvn %d, ttl %hhu, ",
 	       get_name_by_macaddr((struct ether_addr *)unicast_4addr_packet->u.dest, read_opt),
 	       unicast_4addr_packet->subtype, unicast_4addr_packet->u.ttvn,
 	       unicast_4addr_packet->u.ttl);

-- 
2.47.3

