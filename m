Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id kNAqBGisTmrESAIAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 08 Jul 2026 22:00:40 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AF6572A0C9
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 08 Jul 2026 22:00:39 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=narfation.org header.s=20121 header.b=TfitS5bP;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 2a01:4f8:241:fc1:136:243:236:17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 744EB8413A
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 08 Jul 2026 22:00:39 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1783540839;
 b=Y69mnokQqGiuRpIed6Z+3BGot84zW/8Byu+3l+3WCK0ZlU/2LxcEbGSPPD2CuN+peomCu
 LPBqvzAgcK08ZFzDktYiBsYPoSWRmqKbCZ3IixicHOez0tPoWvdiKdP+Q8NJGgswhEJcJaQ
 vmpsy5lqu3lNQH7u7xPqIs3VsEIB5J4=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1783540839; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=39yYQMxuVqXfR2JeNGgKX22qp53gt1mct/ymev7+bj8=;
 b=QlhbhiqwfUT1Q/VNcDCdw0PHY5JDfbf1MJrSNwt0Cp/0UpK5Pk8MK+MWv52hzerUf+Ie0
 IEIJEv02Q1kMaazr7McaL+P/HxuDkOIIW13IFatZeGhc7ddmCU7MAbAd1ZdhdEaoNhI9WvX
 kMNKlaQbRQg0ZeOwEo5XeycRd5FUDkc=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org
 [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id 7D59081461
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 08 Jul 2026 22:00:26 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1783540826;
	b=lrSjTn5BTsJqU1zehouxPHB0Mr2E47wJXIwhv1LhMS2HsbqullMIRFTjJO1NQM1pnWV49j
	z32P4M2KNNlZ+l3JZryrH9uzWwrKDqKInmNJrfGrzQ6a/g3WH8qdc/XfGgF7+XCfSRMrGa
	QMqmw8kcRfHH79ACEWxT+jVmMN/gZJ4=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1783540826;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=39yYQMxuVqXfR2JeNGgKX22qp53gt1mct/ymev7+bj8=;
	b=EuC/g6S8jhEMbyXsDSOQh4SXGteASDxD8Xfs2NMLlMyz4I0WTtKF6RFmIvqNgsS+XmIsQt
	RthMb1TxCXHoRzXrqtXgH9S4nNseqBatPumiLVKO432m1QkyQmEsOXqrZpTqFHNyJZKE94
	wnPKIC0TAMbbyB2BEDDaODiliTATF9g=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=TfitS5bP;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
Received: by dvalin.narfation.org (Postfix) id E88212058C;
	Wed, 08 Jul 2026 20:00:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1783540826;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=39yYQMxuVqXfR2JeNGgKX22qp53gt1mct/ymev7+bj8=;
	b=TfitS5bPG04CDAq9j1qGyXWcYXAGm37nuV1gEUNrw+QQAvjQ6h/aiF8wxFZ1aOc2Jx462O
	dTwmFewYuPl2r9IrXs/yT4mBR+Bb2xx3j1kHSniURufCxC5VukX69U+p/xNtgmAV5bdE3r
	0k+FXjoMDeNe+0UD7t+ZJGgc05wW9Q8=
From: Sven Eckelmann <sven@narfation.org>
Date: Wed, 08 Jul 2026 22:00:09 +0200
Subject: [PATCH 03/12] batctl: netlink: don't format NULL extra_info in
 info_callback
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260708-bugfixes-netlink-v1-3-8ce03e37f17b@narfation.org>
References: <20260708-bugfixes-netlink-v1-0-8ce03e37f17b@narfation.org>
In-Reply-To: <20260708-bugfixes-netlink-v1-0-8ce03e37f17b@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1002; i=sven@narfation.org;
 h=from:subject:message-id; bh=S7zlInkuwxiO/IT2rdKs3/xRlKvzYjZOmfZZ0zGg3F0=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDFl+azzYvy6LmlNs8yhYzOlwXFTxmwo+x7m9nY+TWd4Gh
 wpl/FnaUcrCIMbFICumyLLnSv75zexv5T9P+3gUZg4rE8gQBi5OAZiI+FOGf/bxnWtOetbqvpWZ
 Xxrln53LcLhS879cUPCVjskewhenGTL8U85err/Yq9uqxMbTqWyCxvolCd0Cm9LbZueURk7J6oh
 gAQA=
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: PSNDQLECVOYX4WX2POUPWOCDBYEC7NIM
X-Message-ID-Hash: PSNDQLECVOYX4WX2POUPWOCDBYEC7NIM
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/PSNDQLECVOYX4WX2POUPWOCDBYEC7NIM/>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[narfation.org:from_mime,narfation.org:email,narfation.org:mid,narfation.org:dkim,diktynna.open-mesh.org:helo,diktynna.open-mesh.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9AF6572A0C9

When asprintf() or strdup() fail to create the extra_info string,
info_callback() continues with extra_info set to NULL and passes it as
%s argument to the following asprintf(). Passing NULL to %s is
undefined behavior.

Fall back to an empty string when extra_info could not be allocated.

Fixes: d8dd1ff1a0fe ("batctl: Use netlink to replace some of debugfs")
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 netlink.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/netlink.c b/netlink.c
index cb65655..dd0275e 100644
--- a/netlink.c
+++ b/netlink.c
@@ -440,7 +440,8 @@ static int info_callback(struct nl_msg *msg, void *arg)
 			       mesh_name,
 			       mesh_mac[0], mesh_mac[1], mesh_mac[2],
 			       mesh_mac[3], mesh_mac[4], mesh_mac[5],
-			       algo_name, extra_info, extra_header);
+			       algo_name, extra_info ? extra_info : "",
+			       extra_header);
 		if (ret < 0)
 			opts->remaining_header = NULL;
 

-- 
2.47.3

