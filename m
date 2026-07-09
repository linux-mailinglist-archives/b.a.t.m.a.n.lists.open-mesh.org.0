Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id lpECJB37T2rcrQIAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 09 Jul 2026 21:48:45 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F9FF7352B7
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 09 Jul 2026 21:48:45 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=narfation.org header.s=20121 header.b=kih5IK4e;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 2a01:4f8:241:fc1:136:243:236:17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id EAA51853B9
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 09 Jul 2026 21:48:44 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1783626524;
 b=uapk5DCsCQR3ObFmJEokLIjxSkh4ijEUUhpiMVxnxH+Yqa2Cp9GHhq70jSEvb1dCaqikK
 SgeOm5l8rxDZIY9fVbceIT2na8cO0Af9cDYd5I9puYZWbZ5hI1qSkwcSHqc4Jt/X1whTYpz
 hmTQXvzC7w7NOTEZEHG/3DP4lnFR0/U=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1783626524; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=7fFZl6cR6yJ1E0qC7Ojntbx6BoRWi2TDZrKor93CJYU=;
 b=TqBw7FVFjdsxQz91RQ7Xg89zZqT5L/2SsbUU/GzoPVJWe3sYsc6cvC+3ZmdAaUMrEyeql
 aI49ilb43H6/3SG0pb8bWgTPLnm9inwaMoc97JcsYdUBvvZPhxDp1yfgc54a0KabP8+lzA7
 RnXqL/dMkSeEeHTAPuMKXww7rvqQ6Us=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id 9D91083F88
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 09 Jul 2026 21:46:21 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1783626386;
	b=RlSDsQyomF1OFKGGdr6O4Y9gmmo/0+mWR31uWaffKHnZaCZYK/toIS+Jjo2Elp+PDPsscn
	CCaDSYV9fVvpSkeBfLrdcfQ4wa4LQCd1G/dKl9VgznFGlTG1BRcSCofs4BB/Ayvkrhvnbp
	/qVD8lHplaGrLPwZni4XtiTtgkW8cDw=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1783626386;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=7fFZl6cR6yJ1E0qC7Ojntbx6BoRWi2TDZrKor93CJYU=;
	b=Iqxz4wdQ/uKQEWCIWOFPJEmW1gzq5hwZZKjaKddJKMM2m5wXtqabUOWaxbNlP7Ci466HJa
	Ozm+BJ8z61Gg+GQk4ZU2EuJz70i1m/HF7luLioDlsehoDQBXalodI7u7WJCR3VB/Ua8pv6
	AGmQ76imKSUgGTeIln+CzbvPzxbAVHk=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=kih5IK4e;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
Received: by dvalin.narfation.org (Postfix) id 1357E20535;
	Thu, 09 Jul 2026 19:46:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1783626381;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=7fFZl6cR6yJ1E0qC7Ojntbx6BoRWi2TDZrKor93CJYU=;
	b=kih5IK4e/jf5pO0E+nEaEm9zUhHR1JgTkUK+JgXxxRIGZylxjUsoR4Pi5ovBrtnHDfXhlH
	42W/577zl+53w/eCyDZDs9zPj90Bwu+ClYfAjuglRbJJNQy/nMu0C+BaeElHvSgAFVaY9/
	iGPrd8IESLur0gc+zp6VnSz3WlnlYlc=
From: Sven Eckelmann <sven@narfation.org>
Date: Thu, 09 Jul 2026 21:45:56 +0200
Subject: [PATCH batadv 2/3] batman-adv: mcast: ensure unshared skb for
 multicast packets
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: 
 <20260709-mcast-header-generation-bugs-v1-2-c7c111fa45b6@narfation.org>
References: 
 <20260709-mcast-header-generation-bugs-v1-0-c7c111fa45b6@narfation.org>
In-Reply-To: 
 <20260709-mcast-header-generation-bugs-v1-0-c7c111fa45b6@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1073; i=sven@narfation.org;
 h=from:subject:message-id; bh=dfABjvIHlTgEg16wDCrHhwR6iRePazqbgA9CvHcQab0=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDFn+v8rY3FZ84ljUznPD/1pH4ISsOyyZDDm6h1Ym1JfM6
 m0KFHjYUcrCIMbFICumyLLnSv75zexv5T9P+3gUZg4rE8gQBi5OAZjIsdmMDGvtlJL/yd5yYD2Y
 f9W/tKj9tdlVlS22/NPZwqpube8u6GRk2Do3/+L96ctXrBJ6VZR69ukXvY96os4vmH5Ubiyd6VC
 XyQEA
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: GQ32KXGV77A22WAY6O3LHPOJ6QGNBERC
X-Message-ID-Hash: GQ32KXGV77A22WAY6O3LHPOJ6QGNBERC
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/GQ32KXGV77A22WAY6O3LHPOJ6QGNBERC/>
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
X-Rspamd-Queue-Id: 2F9FF7352B7

When a packet is transmitted via a batman-adv interface and has already
enough room for the header then the nothing will make sure that the skbuff
is unshared. But it is now allowed to modify a currently shared skbuff.

Always make sure that the pskb_expand_head() is not only called for a too
small header but also for shared skbuffs.

Fixes: be9b0169c840 ("batman-adv: mcast: implement multicast packet generation")
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 net/batman-adv/multicast_forw.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/net/batman-adv/multicast_forw.c b/net/batman-adv/multicast_forw.c
index 60ad3a55..c5b8e2e3 100644
--- a/net/batman-adv/multicast_forw.c
+++ b/net/batman-adv/multicast_forw.c
@@ -1100,8 +1100,7 @@ static int batadv_mcast_forw_expand_head(struct batadv_priv *bat_priv,
 		return -EINVAL;
 	}
 
-	if (skb_headroom(skb) < hdr_size &&
-	    pskb_expand_head(skb, hdr_size, 0, GFP_ATOMIC) < 0)
+	if (skb_cow(skb, hdr_size) < 0)
 		return -ENOMEM;
 
 	return 0;

-- 
2.47.3

