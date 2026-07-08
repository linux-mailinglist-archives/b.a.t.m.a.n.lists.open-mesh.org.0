Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id kqLTCcytTmofSQIAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 08 Jul 2026 22:06:36 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id B0BF072A183
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 08 Jul 2026 22:06:35 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=narfation.org header.s=20121 header.b="qpn95q/V";
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 2a01:4f8:241:fc1:136:243:236:17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 8EC36855BB
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 08 Jul 2026 22:06:35 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1783541195;
 b=ZOekj+RrGx4TGc72AcQ2y3xzPknU7VPhk42770erDDWzm9gLNNZZbJfCSwtsS45zhju9L
 IYRxqdzbP5pfiv4jKXZhLvvzA1Cq83U7a/xNnU2wzingfzc9sFZeau1wW3SImQq7P5fbprf
 lOTdrgC+6HTmX4Ev35eZ2Pce23BIiOc=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1783541195; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=o4DRNJ1fQz7pRQD2yIKsX0/Ead9xySfPggwuvrykHpw=;
 b=lF4GI5l+GCYjCKYRJTCBALPkQiDShcaQpC9IWjuc+SREIIUO7AuBoljndqU3doPXGQMWN
 FWYdG2PqkZgjDPYh0OFFlHYeHRaTjscGbWZgFbn8uYBxn1ttxEySYmTbCAI9rBnztxMeaPn
 GVqxxhwNczxLzN5RBmvGXENkhSq5Rc0=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org
 [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id AFF4D846D5
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 08 Jul 2026 22:01:00 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1783540860;
	b=0WWz4IMT0osF7De2gGc8BTv/hxUfYL5sxDL/ecubKGoA1G7AryYkpP651vp9NnJOk5C+Dg
	Jxw+Lwso2EZJR3Ty+aOqENKmidGs403Gr4MH+ZRKrMAzT06mWXSD/U4EhGXBmBtQxk/slD
	fP0QvLWYmp4jrbladv5OplGoWecDfNw=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1783540860;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=o4DRNJ1fQz7pRQD2yIKsX0/Ead9xySfPggwuvrykHpw=;
	b=cce0Zg78bZL+NmiWHtycsXrvlg0V60aoE+c3aL0saYayfYQN5SObWBlaNAms+wgoghrlZo
	2XLXaAgQcabMsGa9nyNHNDSx5VDvVVkAxERye3ffAW7z29TuBRAN1y46yBgUATekJF1RR0
	BBxHsFyW9A8c2+VljfpR95jfbFTaIHY=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b="qpn95q/V";
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
Received: by dvalin.narfation.org (Postfix) id 6F14F1FD9C;
	Wed, 08 Jul 2026 20:01:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1783540860;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=o4DRNJ1fQz7pRQD2yIKsX0/Ead9xySfPggwuvrykHpw=;
	b=qpn95q/VUDSo/qu1yYTcyTYcCiwm+5GIItQUSrHkK9q+k+H4VdwifQ73BMt4wzvXugpCPf
	wBbMeYLW/JREIlaU180jk0cgUu2L2Ju7Iaz8MDlii7f8al2LWRBJn/Pc7W98sH6TVYoj63
	iHDjQ2G85UzFrXpFWX6BquckIWeQFe8=
From: Sven Eckelmann <sven@narfation.org>
Date: Wed, 08 Jul 2026 22:00:14 +0200
Subject: [PATCH 08/12] batctl: netlink: detect receive errors in
 query_rtnl_link
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260708-bugfixes-netlink-v1-8-8ce03e37f17b@narfation.org>
References: <20260708-bugfixes-netlink-v1-0-8ce03e37f17b@narfation.org>
In-Reply-To: <20260708-bugfixes-netlink-v1-0-8ce03e37f17b@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=919; i=sven@narfation.org;
 h=from:subject:message-id; bh=64mj0MaKpKnzzdL+kJkq/EqT9OcQenBBu0eE5Kl25QI=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDFl+azxWXGHYJV4l0TQ7Wux1fXvExW+fZqap2UlWGJyZ6
 vriDid/RykLgxgXg6yYIsueK/nnN7O/lf887eNRmDmsTCBDGLg4BWAid4sY/ge3ViWXHb3e33ND
 sHja1IVOd4JErjkX9Gpbs/fbNWv6qDP8s993k8vo/M2l4WV3MnRtTY53zT27KHxec4rht4cpx5g
 UWQA=
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: FVRMFL7LRHGYAGCWC7TSTEOWNSKTCV5N
X-Message-ID-Hash: FVRMFL7LRHGYAGCWC7TSTEOWNSKTCV5N
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/FVRMFL7LRHGYAGCWC7TSTEOWNSKTCV5N/>
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
X-Rspamd-Queue-Id: B0BF072A183

query_rtnl_link() ignores the return value of nl_recvmsgs(). Once
nl_send_auto_complete() succeeds, the local err stays 0 no matter what
happens while receiving the RTM_GETLINK dump, so a failed or truncated dump
is reported as success.

Set err to -EIO on an receive error to let the caller handle it as actual
error.

Fixes: 45548f578683 ("batctl: Use rtnl to query list of softif devices")
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 functions.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/functions.c b/functions.c
index a3f6639..f3ad560 100644
--- a/functions.c
+++ b/functions.c
@@ -496,7 +496,9 @@ int query_rtnl_link(int ifindex, nl_recvmsg_msg_cb_t func, void *arg)
 	if (ret < 0)
 		goto err_free_msg;
 
-	nl_recvmsgs(sock, cb);
+	ret = nl_recvmsgs(sock, cb);
+	if (ret < 0)
+		err = -EIO;
 
 err_free_msg:
 	nlmsg_free(msg);

-- 
2.47.3

