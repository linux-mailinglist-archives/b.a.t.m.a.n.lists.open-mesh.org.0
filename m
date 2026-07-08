Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 1Fd/BlOuTmo5SQIAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 08 Jul 2026 22:08:51 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id B3B8972A19A
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 08 Jul 2026 22:08:50 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=narfation.org header.s=20121 header.b=IKns1qRC;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 2a01:4f8:241:fc1:136:243:236:17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 9118F85793
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 08 Jul 2026 22:08:50 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1783541330;
 b=pxldy1MjPJy4bA/Pejys1Bi8gpKCu/b819/j6SyVzW2opO+aQ3AFlgak4KnMOzMDJRmON
 8v+Qspr9cpBbQMIxyLg4Wl4mxYbKf5K9VEMxkay3SYjg6813tmxYUdbQNFIFN5Hbn5UHpW9
 UhuCY4wx3qc5UFLcYpsSPWV0/cg47Vk=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1783541330; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=nF84nEKPwtQl0J6Ix6DY57HxIsdnNjlZzjOYRZjNaOA=;
 b=tPVXlxEnNYwi1MH7EpIGswfsfunC+GCsnIgWsYNSC0NKEQ91hLpn++U2V17JHvc29Pa31
 5U0/GEAc0vovbzyIqrChsF7UEfWBqHCMFWX1+qrqrfdAYf/7se7xVqcLDgz9/YeikPIQGpS
 o4WPfVp9MdVzTv0fP8hemgllFOxOr3k=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id 0708C848AE
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 08 Jul 2026 22:01:07 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1783540867;
	b=jiBPzizLn+2rbtWBzUyRc2c6zRJLHJdBdP9W5RBgKn8AmDq8VifzLtGqFrx5288PAnb2as
	xMFZ+eUovyD2vxKQ4BJaIL6tCpaaCe2l8/vEirm3TmJTRr1NTa4I1FBEr5UpOLk4ZfN37W
	6nIP7KSVc1gJnqfKti5e2odz1sj0AiY=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1783540867;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=nF84nEKPwtQl0J6Ix6DY57HxIsdnNjlZzjOYRZjNaOA=;
	b=Zq3zodG6tQWlIEMrU9A5CsmvkTybBY+MvdbO8mYNv32aCbKj8E6uNU29GI+cUBuse0mVCA
	Xxvqy5BdARNgPPmKxUvovnmH6zXQR1WraIT3TWaDnWjWlsugrqJ8nUfkLC23t020KzRQzT
	JrpTqTRrdofA0nSvTQpY9kMyfkzaFsg=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=IKns1qRC;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
Received: by dvalin.narfation.org (Postfix) id B575F20019;
	Wed, 08 Jul 2026 20:01:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1783540866;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=nF84nEKPwtQl0J6Ix6DY57HxIsdnNjlZzjOYRZjNaOA=;
	b=IKns1qRCdH6PmAeIzYsYn+rJvYbFVlKF2OusKtCxiHbyvcDpb8AsTM6OscWXyDpnQanw2C
	WQk1iCPEu2qMO/Qc/g9bTLZGEAX1lbkJcRIfnO1giPNj5HFfhBYu0kHcw6IgL4Msa9tTpU
	6V2RhTQmo1P9gYOCj3lBscOpdLo1T+Q=
From: Sven Eckelmann <sven@narfation.org>
Date: Wed, 08 Jul 2026 22:00:17 +0200
Subject: [PATCH 11/12] batctl: netlink: report error on query_rtnl_link
 send failure
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260708-bugfixes-netlink-v1-11-8ce03e37f17b@narfation.org>
References: <20260708-bugfixes-netlink-v1-0-8ce03e37f17b@narfation.org>
In-Reply-To: <20260708-bugfixes-netlink-v1-0-8ce03e37f17b@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=728; i=sven@narfation.org;
 h=from:subject:message-id; bh=MdfjJOU6wXMuGlJ/5adx03q8asasEWS6Q85/sgliTPA=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDFl+azxdlP5Wfs2fVW90LOLXprJ6vR9/7+ew2Ib/OF1QO
 XnWRoMLHaUsDGJcDLJiiix7ruSf38z+Vv7ztI9HYeawMoEMYeDiFICJ3NNj+Kd29CLHpWnFV3/Y
 bL657qhrINt9parrR1/o3nievjJ/ipgQI8N+LmajaR8PhF1+N/HtKsFWs4OMR9+cCjwt91D7i57
 XxmomAA==
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: B2DOEJGT3FGG5L53MGHGY3THDPBENEJG
X-Message-ID-Hash: B2DOEJGT3FGG5L53MGHGY3THDPBENEJG
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/B2DOEJGT3FGG5L53MGHGY3THDPBENEJG/>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[diktynna.open-mesh.org:helo,diktynna.open-mesh.org:rdns,lists.open-mesh.org:from_smtp,narfation.org:from_mime,narfation.org:email,narfation.org:mid,narfation.org:dkim]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B3B8972A19A

When nl_send_auto_complete() fails, an explicit error must be set or
otherwise query_rtnl_link() will return 0 (no error).

Fixes: 60e519bfeaa3 ("batctl: Use rtnl to query list of softif devices")
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 functions.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/functions.c b/functions.c
index 56bacdf..213ba83 100644
--- a/functions.c
+++ b/functions.c
@@ -493,8 +493,10 @@ int query_rtnl_link(int ifindex, nl_recvmsg_msg_cb_t func, void *arg)
 	}
 
 	ret = nl_send_auto_complete(sock, msg);
-	if (ret < 0)
+	if (ret < 0) {
+		err = -EIO;
 		goto err_free_msg;
+	}
 
 	ret = nl_recvmsgs(sock, cb);
 	if (ret < 0)

-- 
2.47.3

