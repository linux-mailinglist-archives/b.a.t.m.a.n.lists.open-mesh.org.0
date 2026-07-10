Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id mbZdBaRPUWrLCAMAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 10 Jul 2026 22:01:40 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FDA373DF94
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 10 Jul 2026 22:01:39 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=narfation.org header.s=20121 header.b=Wazw9yke;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 2a01:4f8:241:fc1:136:243:236:17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 8542882AB1
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 10 Jul 2026 22:01:39 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1783713699;
 b=joG/I3fnQtRImbD+O5eLS8CoVJHPqSzwz92fy7LXUCYWiwSybsYpBnFyyZRVOQiBkcEdF
 cAy0XfsN6i70oqQy35rOnp1QS9c0GyP6FG16D88t4dEXph7eDYV08JCb1LK4HPDvpfR2VsY
 YYf75OVI+W3FcstJLNAthp3hShYszjc=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1783713699; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=7fFZl6cR6yJ1E0qC7Ojntbx6BoRWi2TDZrKor93CJYU=;
 b=MKAroaKq7gD7LVXAiNNIkXE6Pg6Oqq3KGHbxD73+zqiylG6B9u9q8eIjFiGUR/pK+clv8
 13O0dnhHxfeCfSHn1/tQXYrALVEJCkfJy7FOVbUqx219D2QVGMqZMopGQ1ElW/eD2g4S7iO
 V/bMako9HnNDGVprhpdUppN+2V21DM0=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org
 [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id A17AF8195C
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 10 Jul 2026 22:01:26 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1783713686;
	b=jvKcwSATFWo5n7qkXHMv47ILyDdQIiI2ToNeWRiG3m4HucMYzRTgr4FaMVrykp4dHglllR
	OjTjpCQvHjK6pzichK+xe4CbWzQXtmzJk0kpBDMsKLHbLyIflbZe2H04+GdHW9Eour12+M
	FafjVYNMD5SRtLkmDc2LlmRMowfs/po=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1783713686;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=7fFZl6cR6yJ1E0qC7Ojntbx6BoRWi2TDZrKor93CJYU=;
	b=vzbOYDnzUfvxCu0NF3xIsU4xm2OIa5yXo7tsXjjty36aVE62uY4J6OGoQssXnIjeNmatEB
	Lout+MD+ff5ugTjxhZWkTRLlEdWzsJvHHQ24g+yRlP5tAHYg9V0l/5Iljxdapa6rhAFiFP
	5n4mApiQkRMqFOsq5WrEI3hGs7xqkOI=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=Wazw9yke;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
Received: by dvalin.narfation.org (Postfix) id 37ED22058C;
	Fri, 10 Jul 2026 20:01:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1783713686;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=7fFZl6cR6yJ1E0qC7Ojntbx6BoRWi2TDZrKor93CJYU=;
	b=Wazw9ykeph8xFVYcD+ncanym90L0NyvCNS60JqnZpHJEJZPmUZ1+YTloSHQ5BsRV9mDo6U
	GwsCLWe7tafiq0TtBalLz9iHe/Qa5V9fF/9cfn2OcBRQ0noTXITzY07/HVK90zriX3Q5a5
	ohYMXl8gigkxW7930p3Uw8z1hZexYmQ=
From: Sven Eckelmann <sven@narfation.org>
Date: Fri, 10 Jul 2026 22:01:16 +0200
Subject: [PATCH batadv v2 2/3] batman-adv: mcast: ensure unshared skb for
 multicast packets
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: 
 <20260710-mcast-header-generation-bugs-v2-2-06cd83c0f534@narfation.org>
References: 
 <20260710-mcast-header-generation-bugs-v2-0-06cd83c0f534@narfation.org>
In-Reply-To: 
 <20260710-mcast-header-generation-bugs-v2-0-06cd83c0f534@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1073; i=sven@narfation.org;
 h=from:subject:message-id; bh=dfABjvIHlTgEg16wDCrHhwR6iRePazqbgA9CvHcQab0=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDFmB/n1bbs/o/Srss7Bid9w1032ntIM6GtTitON2eOyYv
 dhpfYplRykLgxgXg6yYIsueK/nnN7O/lf887eNRmDmsTCBDGLg4BWAiu10Z/tnc43wn9aDxwcLu
 XO/8c1/YDutJHj2srPytZ5J32pPLtVEMf+XzFs7drbzgo4emuvuJzxXdWrobJP5+nKDj58/t9km
 SiQMA
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: H6XMWQQ7FHT3P3J3QA4C35YGK2KE53MB
X-Message-ID-Hash: H6XMWQQ7FHT3P3J3QA4C35YGK2KE53MB
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/H6XMWQQ7FHT3P3J3QA4C35YGK2KE53MB/>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[diktynna.open-mesh.org:helo,diktynna.open-mesh.org:rdns,lists.open-mesh.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9FDA373DF94

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

