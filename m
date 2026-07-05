Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id nkwTIguVSmpyEwEAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 05 Jul 2026 19:31:55 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 1791E70AB47
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 05 Jul 2026 19:31:55 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=narfation.org header.s=20121 header.b=tirZX13T;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 136.243.236.17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id EE83584544
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 05 Jul 2026 19:31:54 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1783272714;
 b=rtTrK7k5W/eSWetczXIfomhakqNWsF9rzMOqqjiobEZ7FszYMQEU3QwMBdEhNNZ0Kdsg1
 XoixEGJEpVEuu2bqp+VrSF4Z7KRw7DafazHCHRTbPUrCGOnSDzjmjrx42ARuvw/LabTkhyQ
 Tcxrat6IsrWlB+nyXQviOjyerC/LbCw=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1783272714; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=9VIMuAmUMflfvPJR7elaeznJTg/RIWHfrk6M3UACTbg=;
 b=nax9tAQgWgouaQYFeGDElIXb8cJgsFl4+gCjRUGsnLGlZBJKjbOZFOTJx+3fXJ9BQjnNk
 I2OP14flxUXlETFSOGs63tJOBk1USZrX7WByv0fX5FPZDdJ1bF2VXVYZ2xRvZecMXivPfX6
 9em2l7lPYHY/ZyhCSZAkTcPOjGr6PZ0=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org
 [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id 80CED821A1
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 05 Jul 2026 19:30:15 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1783272615;
	b=bnylu4SvbDKJpH1KslJsygyeAkn8Ntofdp1GuXwOfQYlKerwRRMkJiUBx2SRiCCGjLgztC
	YFpzcR8RUfX0wbzYN7tsYb4sto0kav0hn4LDyjYLrfcNmFMS9GHGkJZQa4Yg8NtAq9hG98
	O1ArKvBs130KgTNWt44s9UeB37NPo88=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1783272615;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=9VIMuAmUMflfvPJR7elaeznJTg/RIWHfrk6M3UACTbg=;
	b=iVfEiWn7VbwLdH0VUC0D+YH/RCr4RONwD/EQnmEHu76kVpTQv5X1ouLuqlXO/kr1vb7mQt
	ipAcl8nBmHOhAGxMZQqjZeUhXtbknR320O8sG8siMpizJM2V6ioGmZFutWpI8Zbpvj7TmR
	UNvVHxCP4H26RppC7bflvzYoKVH8nFg=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=tirZX13T;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
Received: by dvalin.narfation.org (Postfix) id 58B7F1FEE6;
	Sun, 05 Jul 2026 17:30:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1783272614;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=9VIMuAmUMflfvPJR7elaeznJTg/RIWHfrk6M3UACTbg=;
	b=tirZX13TubX5DUM6O5rfzya1s9fPpFhS+M01C1N/5MExLF/Hekp9JsBchw25qxwSrS6zNx
	3kK8eq06d2kedeFgfKJ5rv36EbQO/T+F6BLH6JdelvL5HsJuzSwnlL2AMUdGG4kfIA5u8u
	HRSEV3symAENNouq2IRrmGFLHmeevyE=
From: Sven Eckelmann <sven@narfation.org>
Date: Sun, 05 Jul 2026 19:30:05 +0200
Subject: [PATCH 2/9] batctl: tcpdump: return EXIT_SUCCESS on normal
 termination
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260705-bugfixes-tcpdump-v1-2-c37f6f82eed1@narfation.org>
References: <20260705-bugfixes-tcpdump-v1-0-c37f6f82eed1@narfation.org>
In-Reply-To: <20260705-bugfixes-tcpdump-v1-0-c37f6f82eed1@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=628; i=sven@narfation.org;
 h=from:subject:message-id; bh=bNLi63nTJHSqDhDy+AE4GRjzUdZG+fQMHHH5SUTVAL8=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDFleU+a96wthrElJ/Dltz0GOv+sftcbF9Urqr/7iJRIut
 7fy/MyrHaUsDGJcDLJiiix7ruSf38z+Vv7ztI9HYeawMoEMYeDiFICJPOhjZHjFbM9u72TCu709
 gDVAQKZ8Zsfrtt/tjDlftzNfl93eU8bw32/5mw9BX5nVd2zxnraqadXZpZ5m4TczS9vWcLBzJjv
 lcQAA
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: MKLY3T4CYAZNWGSFZ4ZTNNCNPBNREUDS
X-Message-ID-Hash: MKLY3T4CYAZNWGSFZ4ZTNNCNPBNREUDS
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/MKLY3T4CYAZNWGSFZ4ZTNNCNPBNREUDS/>
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
X-Rspamd-Queue-Id: 1791E70AB47

The main capture loop of tcpdump ends when SIGINT/SIGTERM sets
is_aborted. In this case, the return value should reflect this clean
shutdown.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 tcpdump.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/tcpdump.c b/tcpdump.c
index a48f8ad..33b7226 100644
--- a/tcpdump.c
+++ b/tcpdump.c
@@ -1618,6 +1618,8 @@ static int tcpdump(struct state *state __maybe_unused, int argc, char **argv)
 		}
 	}
 
+	ret = EXIT_SUCCESS;
+
 out:
 	list_for_each_entry_safe(dump_if, dump_if_tmp, &dump_if_list, list) {
 		if (dump_if->raw_sock >= 0)

-- 
2.47.3

