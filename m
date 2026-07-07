Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Ey6yKipRTWosyQEAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 07 Jul 2026 21:19:06 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D4D071F1FF
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 07 Jul 2026 21:19:06 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=narfation.org header.s=20121 header.b="JXZh3/AQ";
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 136.243.236.17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id F0C31852A1
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 07 Jul 2026 21:19:05 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1783451945;
 b=lhrgw/zMt7GIr24PXdfH9Is0H0B9z9zKAq+0i9aKfMenHDfjgQbn8+f2j8zvXmwPR7/uc
 Y7YBgPv3XjfhGz8vCjtZ6vNvqYp8xZiiaM9q14Eqx5+JA10+QfULQ6qu3cvnBY/Xxhx+nq0
 M4OiKj6yBGVYnoKqyOalG/LqxJguOE0=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1783451945; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=gbYc8xcF0q9bAA4MhA94lHCDC7p1pqmWXebMfuexv98=;
 b=hHvh2K1R/HXufVWyUPof+gyxIKH/LirYvZjAlAPcBHpzk4jYBVcJr0NkH9OUxb0ZsAElr
 2ocl696NkiCjfqJgKBUAZV0XPZzbjP2RfVaz35g6TbP0171dkVZHdMQk07RG/TwRM0YnUia
 FMnwJ7joyAXrgV4PGDRV7Q5nEc7QjHk=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id B213B825D6
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 07 Jul 2026 21:17:12 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1783451837;
	b=uifBbKzaErvneWpU1XsAmrpFKdtFjmn/bOi8Rl0lYUT+ax+h+SvUDAlMY/ugEMplXW2mA6
	PaoTZTSDCfXU6tEKIBxRVL0NJBr34eLbTS6dVDKpWOa6vjhpfvBmtUqKVeN2tAx3rugFcv
	iMpeKPzcYBy0CM9JQOTlBX+dVCmbq8M=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1783451837;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=gbYc8xcF0q9bAA4MhA94lHCDC7p1pqmWXebMfuexv98=;
	b=zIZMe1SNaaaf27d/SBIwF30nIiqZ500ki+5IfAOH4RJZtHmQ5TaGZeJxjGOPiYxdffnzQm
	g30P6yRJAPByBHTOU7AnQ6E657GKB/A0VIQ3Loe5XQiDVWjaPTcnBlLJFybv6il310YUqA
	kMdSNfwneYnNB8pedtApzvOs54vV8pw=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b="JXZh3/AQ";
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
Received: by dvalin.narfation.org (Postfix) id 53EA32059F;
	Tue, 07 Jul 2026 19:17:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1783451832;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=gbYc8xcF0q9bAA4MhA94lHCDC7p1pqmWXebMfuexv98=;
	b=JXZh3/AQO5QMzH6RKpb52BjKgeYuX3cxqV2iTV/xusVXzSgiqscYllSlLCos8zY2zyD2Qe
	C0AxBzdAjn5PywpYcpdXIMuhMGa31EFDhIYaUvZlWoJhNO2MbCjeP+1CXOV7tDNV85A8ZD
	WofbEnnT2/DAZ/jADAbhW8hmkSykCc4=
From: Sven Eckelmann <sven@narfation.org>
Date: Tue, 07 Jul 2026 21:17:01 +0200
Subject: [PATCH 2/5] batctl: tpmeter: abort result wait on receive errors
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260707-bugfixes-tpmeter-v1-2-78d96fb7b36c@narfation.org>
References: <20260707-bugfixes-tpmeter-v1-0-78d96fb7b36c@narfation.org>
In-Reply-To: <20260707-bugfixes-tpmeter-v1-0-78d96fb7b36c@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1469; i=sven@narfation.org;
 h=from:subject:message-id; bh=BTBvjSSHY6ecRsFkilZC1jW+LHyrRohSzdX+JzwRh2M=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDFm+AeuTfU89XMv804nD+NnLoJSE3CfTJkTGC0j951URj
 f1xkpmto5SFQYyLQVZMkWXPlfzzm9nfyn+e9vEozBxWJpAhDFycAjAREwaG/1XutYceWNgrry9Q
 MmxM9ry7e4u5XUUSA9ePPyvPyjMfms/wT3nxlPb92U85BHXX+UpfDLi+7+feO5LOPJ5aZVwm/BO
 lWQE=
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: QFWL7D4IIM2XQVCMROL6OQ5OLHSVBXO6
X-Message-ID-Hash: QFWL7D4IIM2XQVCMROL6OQ5OLHSVBXO6
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/QFWL7D4IIM2XQVCMROL6OQ5OLHSVBXO6/>
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
X-Rspamd-Queue-Id: 3D4D071F1FF

tp_recv_result() loops on nl_recvmsgs() until the tp_meter result
notification arrives, but never checks its return value. When the receive
fails (receive queue overrun and drops notification, socket failed
completely, ...), the loop just calls nl_recvmsgs() again and blocks
forever in recvmsg() waiting for a message that will never arrive.

Leave the receive loop on errors instead; the existing checks below then
report the failure to the caller.

Fixes: f109b3473f86 ("batctl: introduce throughput meter support")
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 throughputmeter.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/throughputmeter.c b/throughputmeter.c
index 10f4f24..fd4165c 100644
--- a/throughputmeter.c
+++ b/throughputmeter.c
@@ -198,6 +198,7 @@ static int tp_recv_result(struct nl_sock *sock, struct tp_result *result)
 {
 	struct nl_cb *cb;
 	int err = 0;
+	int ret;
 
 	cb = nl_cb_alloc(NL_CB_DEFAULT);
 	nl_cb_set(cb, NL_CB_SEQ_CHECK, NL_CB_CUSTOM, no_seq_check, NULL);
@@ -205,8 +206,11 @@ static int tp_recv_result(struct nl_sock *sock, struct tp_result *result)
 		  result);
 	nl_cb_err(cb, NL_CB_CUSTOM, tpmeter_nl_print_error, result);
 
-	while (result->error == 0 && !result->found)
-		nl_recvmsgs(sock, cb);
+	while (result->error == 0 && !result->found) {
+		ret = nl_recvmsgs(sock, cb);
+		if (ret < 0)
+			break;
+	}
 
 	nl_cb_put(cb);
 

-- 
2.47.3

