Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id nNfmDBb2N2qsWAcAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 21 Jun 2026 16:32:54 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id C86AB6AB127
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 21 Jun 2026 16:32:53 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=narfation.org header.s=20121 header.b=yQlfIdR7;
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 2a01:4f8:241:fc1:136:243:236:17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	dmarc=pass (policy=none) header.from=narfation.org;
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id A4AAE81CD4
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 21 Jun 2026 16:32:53 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1782052373;
 b=g7tfnzFEX+M5WtoeGuIC40b5k1u/FQOkjfmAycpvYac6mP86LPKjImtZ9zhz96BBCZwnB
 uA5NmflxYIAuqqTgoDuWXbNfAI7rx1J6aCsBEgNR3zZSXMd2ubUrU0rAnYrzuJ7lh069zpt
 1Txe36HZELjlMWiLl3f45a2XywctdqU=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1782052373; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=ndoHB2JqaTnOpG6F4Oa/aa9F4E7FYE4SdrD/AVD+YTQ=;
 b=MsrdA7Y0iCnr/f7H5LfdIaIvesTFOUxIY8cgoGjcO2xN2uCleg+JTc2pU/mWYnUr1M3r6
 qaQLXXYkUvaJY5c5vIjZ1ff34ypsPOk1eEGu/BKbFBRxMNcEea/HAYuCJiIk5VciT+N7HfW
 sBx/I629oLOIWnfbtvvNefHci4adWUU=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org
 [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id 418E4840E5
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 21 Jun 2026 16:25:06 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1782051906;
	b=0WgUu8r4q1kYmJCxaNcVM98qyRRPkVZBD3qLkHu/F2MKf/jPavz6R1gJ3mbhaG55o/kMvT
	JcRyiGVExp8hy+D62RH2X8KRVCdJNy8YaWgEQfwG87y4oK2H1l61mF3OHa301qt/bViX29
	lAmqNXSpB9U2K/F+8rdHD0Qyc4mb/is=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1782051906;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=ndoHB2JqaTnOpG6F4Oa/aa9F4E7FYE4SdrD/AVD+YTQ=;
	b=akQiguck8PFlL2eLf2bRStv6fulIkjDr366eKhRhkYTUbFtoBCVUJh1i+L0CkjUqwume7k
	cH7MsEShmUOPBlVTKU693zIL8HLaHBLljFKU/05B9ooEMg9e46Hym7I2zsE9n71XE6lKnl
	DtgLdR6FTN80QPWNfHcYX2S9ppAcsrU=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=yQlfIdR7;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
Received: by dvalin.narfation.org (Postfix) id BB87E20059;
	Sun, 21 Jun 2026 14:25:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1782051905;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ndoHB2JqaTnOpG6F4Oa/aa9F4E7FYE4SdrD/AVD+YTQ=;
	b=yQlfIdR7K1YJtv3HOOJ84I29eJAYROkuK7x8SUydKo8WOKbpOb3uEY92Aw4tOhAyJF+TOJ
	XqN4KX0VcSVGnAJhjkYLSjTjTGtSNkY3UZiwWGno8GtLmbDgawVlL7LvHXOVi97pokUSnm
	nx1SCb5bBcVKu9HQcSKzMaCh8WjBv2A=
From: Sven Eckelmann <sven@narfation.org>
Date: Sun, 21 Jun 2026 16:24:01 +0200
Subject: [PATCH 11/28] batctl: tcpdump: correct output of VLAN IDs
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260621-bugfixes-v1-11-b09736288a4a@narfation.org>
References: <20260621-bugfixes-v1-0-b09736288a4a@narfation.org>
In-Reply-To: <20260621-bugfixes-v1-0-b09736288a4a@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1099; i=sven@narfation.org;
 h=from:subject:message-id; bh=UpOxcgf53y1/Da5aDFHjHu2F1uvEyGV7i0eTRXnA/4w=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDFnmX1h/lBmtLLOdIFJgJM/9xZrxv1+j7OYD2qohNZf3b
 D7JH2HVUcrCIMbFICumyLLnSv75zexv5T9P+3gUZg4rE8gQBi5OAZhIGzvDL+a7iw68+bV4Hsv0
 G1pV0yqMN9c45qT3Gd49y671/fy3XlmG/8G7xW/pq5yMrvy4IdXH2WOHmULd2Yd2sdY7paWL9Fa
 s5QYA
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: 5WKRXPAB3ZR67GK4PMD35GV5WQS6MW26
X-Message-ID-Hash: 5WKRXPAB3ZR67GK4PMD35GV5WQS6MW26
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/5WKRXPAB3ZR67GK4PMD35GV5WQS6MW26/>
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
X-Rspamd-Queue-Id: C86AB6AB127

The 16 bit TCI header for VLAN tagging (IEEE 802.1Q) stores 12 bit for the
12 bit VID, 1 bit DEI and 3 bit PCP. It is therefore unexpected to print
the 16 bit as vlan identifier without masking out the upper 4 bit.

At the same time, also split the DEI ( Drop Eligible Indicator) and the PCP
(Priority Code Point) in separate output fields.

Fixes: 7738b534fb07 ("batctl: tcpdump - add vlan support")
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 tcpdump.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/tcpdump.c b/tcpdump.c
index ddcee03..e417cd1 100644
--- a/tcpdump.c
+++ b/tcpdump.c
@@ -823,7 +823,8 @@ static void dump_vlan(unsigned char *packet_buff, ssize_t buff_len, int read_opt
 		time_printed = print_time();
 
 	vlanhdr->vid = ntohs(vlanhdr->vid);
-	printf("vlan %u, p %u, ", vlanhdr->vid, vlanhdr->vid >> 12);
+	printf("vlan %u, d %u, p %u, ", vlanhdr->vid & 0x0fff, (vlanhdr->vid >> 12) & 0x1,
+	       vlanhdr->vid >> 13);
 
 	/* overwrite vlan tags */
 	memmove(packet_buff + 4, packet_buff, 2 * ETH_ALEN);

-- 
2.47.3

