Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id bvR3I0aWSmqXEwEAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 05 Jul 2026 19:37:10 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 36DAC70AB81
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 05 Jul 2026 19:37:10 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=narfation.org header.s=20121 header.b=S4Q984zy;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 2a01:4f8:241:fc1:136:243:236:17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 0C34084612
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 05 Jul 2026 19:37:10 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1783273030;
 b=arqbsFMBCfP5l03JX6bXwOA0cY7ix1sp8tC+lEQPgQ5qAQwaELmFMQRdZ+h5OKY9eozP6
 vdkmzIUMqi1wDjS1FYhiLG7KJxL8fy6bd+KjGwLIisALt2+IePfpYrgOwc/eFV2IZ4tPDYM
 SsOcKfAIhR+/kvnW5JGjd1yXCpa9bw8=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1783273030; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=wofGB+KRFcU90b+Onh8ATvCKEv8aVZfJw2Gb9HKaR4s=;
 b=VSVONKru8xsm6cFy634Nmf0kAuq5ovdzyuZocPMIwtba5Zzvr/rSVoBjeucWs6sISsOuu
 bJ3Yn8l8K5eFTmx6NpgnMw7rvx5SvQz7TUfvV4uoy3dPNWseNpA9OBSQ8yq2NxmkGqseSaZ
 +FC6VGgzSL22bk7zpL4HqftF+8I3tCg=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org
 [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id 9A64382F09
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 05 Jul 2026 19:30:28 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1783272628;
	b=ei0yDgZUl4bLBV+HhUAhVp+NaFTIHDkCmu1+kWdGAWNr/CXE75+Lo8B2E2qNYlWGlh1Kp3
	8/mJXTturble2TjWPINuoNbnoG63TSAAABm9yluV5NxiSLjLzbNfNlDMTQyPccAhLZbdOz
	I8g18efaOIrgQ2354esvGAR7AaWqhCQ=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1783272628;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=wofGB+KRFcU90b+Onh8ATvCKEv8aVZfJw2Gb9HKaR4s=;
	b=B6UMo+hFMhull9aBIHQLMVQq4SAtbqLIY2LBSddNs81Sp3jq95XgxgCnEC94hG0wH2M9ly
	gB9GymTlVEfSEDelM6ZG0q35GsxLz/8p/57e3+CdURRogmPh9JrwF3O+Ku1SC7nat6rsTN
	5fBtc1M22nPKNo4reLOIbZBfJPgnIxQ=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=S4Q984zy;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
Received: by dvalin.narfation.org (Postfix) id 4094E1FEE6;
	Sun, 05 Jul 2026 17:30:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1783272628;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=wofGB+KRFcU90b+Onh8ATvCKEv8aVZfJw2Gb9HKaR4s=;
	b=S4Q984zyKPmzS4DsOi+ZOstLLzzsJNgsyxv+v/nuwLoIgAi6Z1hHRcaELtu2RhZdvsiUZB
	be9NG3tQOLido9/oUVWx4rZYMGDOniP8ZqHH1GntrnauC2jGsYAsHsWfZzwgMoKhvzvP8F
	FjRdla0zcB1W8EIVuf3w3AgP4fPp+ks=
From: Sven Eckelmann <sven@narfation.org>
Date: Sun, 05 Jul 2026 19:30:12 +0200
Subject: [PATCH 9/9] batctl: tcpdump: fix source address selection for
 802.11 data frames
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260705-bugfixes-tcpdump-v1-9-c37f6f82eed1@narfation.org>
References: <20260705-bugfixes-tcpdump-v1-0-c37f6f82eed1@narfation.org>
In-Reply-To: <20260705-bugfixes-tcpdump-v1-0-c37f6f82eed1@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1182; i=sven@narfation.org;
 h=from:subject:message-id; bh=7UzXbjTQhRGdHYFFmRZHMv4Y772Q1NArsPi12/Cd3Xs=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDFleU+brSZrlTOOZ+rLthqLZ6fSfN5+aaGpuUd88Mduts
 3j/dqb1HaUsDGJcDLJiiix7ruSf38z+Vv7ztI9HYeawMoEMYeDiFICJ6Dgx/HdjCWrxetnkuyac
 Sa3Ptlp6+s3TwUK/Hx9vmH3+rv3MTh1GhiWtKqxFim6ZN0y6JVg1uZltv95b+eWefLlXxWEt7V0
 n+QE=
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: RIN23B5SZTN7HT36LQIJKNKSSHDPNCR3
X-Message-ID-Hash: RIN23B5SZTN7HT36LQIJKNKSSHDPNCR3
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/RIN23B5SZTN7HT36LQIJKNKSSHDPNCR3/>
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
X-Rspamd-Queue-Id: 36DAC70AB81

For non-AMSDU data frame, we need to select as source host:

* neither from/to DS: addr2
* from DS: addr3
* to DS: addr2
* from+to DS: addr4

But the code is actually selecting:

* neither from/to DS: addr2
* from DS: addr3
* to DS: addr4
* from+to DS: addr3

Instead of checking single bits, the special cases "from+to DS" and "from
DS" have to be checked separately.

Fixes: 5143e351a77b ("batctl: add raw wifi packet decapsulation support")
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 tcpdump.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/tcpdump.c b/tcpdump.c
index 48744ea..764b484 100644
--- a/tcpdump.c
+++ b/tcpdump.c
@@ -1369,10 +1369,10 @@ static void parse_wifi_hdr(unsigned char *packet_buff, ssize_t buff_len,
 		return;
 
 	shost = wifi_hdr->addr2;
-	if (fc & IEEE80211_FCTL_FROMDS)
-		shost = wifi_hdr->addr3;
-	else if (fc & IEEE80211_FCTL_TODS)
+	if ((fc & IEEE80211_FCTL_FROMDS) && (fc & IEEE80211_FCTL_TODS))
 		shost = wifi_hdr->addr4;
+	else if (fc & IEEE80211_FCTL_FROMDS)
+		shost = wifi_hdr->addr3;
 
 	dhost = wifi_hdr->addr1;
 	if (fc & IEEE80211_FCTL_TODS)

-- 
2.47.3

