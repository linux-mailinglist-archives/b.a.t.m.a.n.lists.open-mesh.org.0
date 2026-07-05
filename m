Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id m5tPKTiVSmp0EwEAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 05 Jul 2026 19:32:40 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C3FB70AB4C
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 05 Jul 2026 19:32:40 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=narfation.org header.s=20121 header.b=UUWkwXEF;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 136.243.236.17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 336DE83D16
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 05 Jul 2026 19:32:40 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1783272760;
 b=2PlVhk0eR1r6o2Uz9Zlp657gaavndTJPRjkAHJkt8XXnbDQl16IRO2Tyok1wWdwcS9Vct
 ZD4+9TKPLpT87crONnT492F6qqIv9P2/HxdZzsyI/DVuG/EQRqAhMgGSI1jagTgkcGpCea8
 5wgHg47Mk5UwVR24VBi8WkAO0A0/6wk=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1783272760; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=fSv2VWEzh7vbMyoZq8qUziP64axAYnTpZQ3barC72mc=;
 b=BKhhoPfCVdSQCZdk9qGnliSG4objoC+39FFDsWqnpB/fZ7jzAfddPRyXjB8I8ZK1HDKTV
 QLDl5ghx3c0uVOE+M14Qh53iG0ISbRFLGooe6+LvOTEMMrPnqhtrLloFnBV1ZwA3PMNEBRv
 ouy6O06CL4TkPc9IKVn6i80qGweYn3c=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org
 [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id B59828239D
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 05 Jul 2026 19:30:16 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1783272616;
	b=uiWwr/fbNvfkkaZl8ozuIdcOGasKvE78v6xWijUYODailittvwQhD6Rm6uafj65RVtMiiS
	704tMNiZtMRWMTxcbMfx8jQ5oIdNH1RtCOkSRXtkW76Gnpx6dwSX+tZhmn+nT+1KZEh0eU
	Vh9titGDPqffb9xN1YUZecla3IQPP2E=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1783272616;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=fSv2VWEzh7vbMyoZq8qUziP64axAYnTpZQ3barC72mc=;
	b=mHWfamQm9IR6v+m+46/LVqvUA1+/PEMhkZsZ/Qgjxy2jasdM8WEPsWcSFpQJBqfBsQY1nC
	JKx9exsH22qWqfvJl/hwdhxIil2HSAMHug3L8gTJjR/JSz6TvoQl4F/UxLR7c78TR/vgPY
	vws41DumTjNNX10PsbN8P917bKpEr2Q=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=UUWkwXEF;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
Received: by dvalin.narfation.org (Postfix) id 4540D1FEE6;
	Sun, 05 Jul 2026 17:30:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1783272616;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=fSv2VWEzh7vbMyoZq8qUziP64axAYnTpZQ3barC72mc=;
	b=UUWkwXEFWTlrdOyguYeQyyIyfTKfBB+YRiMm4kHOVJHQ8uLWfJLjEU1NKE2J/bzZcI6IzT
	kBrIRLxVoARz/GmIs9UIE8HmUmDu6QQYhb1f1HaIKliDUvO5d7rtyIk3FRb8cxt/p0fv4Y
	7WtHmtEtVGdSVuzCkWpygK/pti35TaM=
From: Sven Eckelmann <sven@narfation.org>
Date: Sun, 05 Jul 2026 19:30:06 +0200
Subject: [PATCH 3/9] batctl: tcpdump: check frame length before reading the
 ethernet header
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260705-bugfixes-tcpdump-v1-3-c37f6f82eed1@narfation.org>
References: <20260705-bugfixes-tcpdump-v1-0-c37f6f82eed1@narfation.org>
In-Reply-To: <20260705-bugfixes-tcpdump-v1-0-c37f6f82eed1@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=809; i=sven@narfation.org;
 h=from:subject:message-id; bh=8divBEm/68qu6UVcvbQAVMQ2fAUl+Bjg26AvC7RdgQQ=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDFleU+ZdrVma5blkjrRB0btVTtx3T+86didkl3bOrdwGq
 bX20+Ye7ChlYRDjYpAVU2TZcyX//Gb2t/Kfp308CjOHlQlkCAMXpwBMZMsNhn9KIpMWTP34YSHv
 r5O98tUuqs0msrdOH8gITn5QN4OlNSKZkeHErFXnHBL3NHFwqKaaS315mdHKdWtRW5FKuL7Mo/v
 CU7kB
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: GIHCIQ37JCAYFDIZUNRQBJOGVSLRXMV6
X-Message-ID-Hash: GIHCIQ37JCAYFDIZUNRQBJOGVSLRXMV6
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/GIHCIQ37JCAYFDIZUNRQBJOGVSLRXMV6/>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[narfation.org:from_mime,narfation.org:email,narfation.org:mid,narfation.org:dkim,diktynna.open-mesh.org:helo,diktynna.open-mesh.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4C3FB70AB4C

parse_eth_hdr() reads ether_type without checking that the buffer actually
contains a complete ethernet header. Use an header length check like in all
other functions.

Fixes: 3bdfc388e74b ("implement simple tcpdump, first only batman packets")
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 tcpdump.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/tcpdump.c b/tcpdump.c
index 33b7226..b6305fd 100644
--- a/tcpdump.c
+++ b/tcpdump.c
@@ -1200,6 +1200,8 @@ static void parse_eth_hdr(unsigned char *packet_buff, ssize_t buff_len,
 	struct batadv_ogm_packet *batman_ogm_packet;
 	struct ether_header *eth_hdr;
 
+	LEN_CHECK(buff_len, sizeof(*eth_hdr), "ETH HEADER");
+
 	eth_hdr = (struct ether_header *)packet_buff;
 
 	switch (ntohs(eth_hdr->ether_type)) {

-- 
2.47.3

