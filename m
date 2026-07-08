Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 5YC3DRitTmrySAIAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 08 Jul 2026 22:03:36 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id D0B5572A125
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 08 Jul 2026 22:03:35 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=narfation.org header.s=20121 header.b=kee4O5Jd;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 2a01:4f8:241:fc1:136:243:236:17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id AE36984190
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 08 Jul 2026 22:03:35 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1783541015;
 b=CslvNrz1tKDAnGvSTMUyf2ZwVPIBqZZWrKXqm/CJkn9zw8f//PC+/5t0S2gvAhJ3H43q9
 NznV1XxU3DUrVZ0YUAe6rizWXZTNYxP0AdriezHVtyJn4amB6ff/WLtoaz0WYWaENu/ujId
 94u342mrWKz7QU8jbY1Epcu/MWgV8GU=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1783541015; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=FCKgJ2DYWkscBTrND68wiLIJCltejFwMLvi7A2DSTlw=;
 b=bS0I80b+lv8mxtObsNOT9w68GJcvFL5VW15NBkNdTSTjupAz7nDhfELRUFq/9YijFrMKn
 wJvZkpMtfQkTIsjyVMTJ6EpUPYVIGWjo/Q0qkDTxFbgKXzawuXemuFHAGyo/vdilE3VgmlR
 xo3BbO7MHcaVRTogdrUfHZMnqem3t5s=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id 428AB83EF3
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 08 Jul 2026 22:00:30 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1783540830;
	b=0bIHjworbeQdUuEyWBN2ZOXdXfde+tl/oHW1LcEGqU+Tyi9OLH0B3cgSRlvxSoq9us7g8n
	uWjDprFkL4wVBktuqTyH1JyzEx8QECgOK6J0qMvtN58CPuBG7hrvWnNcjsI1B3J4ic8jUg
	lvBJ/bph2pVCnmh0rN01oU3AjExQCAA=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1783540830;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=FCKgJ2DYWkscBTrND68wiLIJCltejFwMLvi7A2DSTlw=;
	b=qxZCtmRKgXfW8H2HQyIui0rJNUN/vB33PP0FdpdESdrF0AQxnWlWg8FDXIXpfsLXplX/nr
	pkZTTvr97hziHXaqRosGtXk2j3OOtfZugNsyvTZZWceYGVRJSr+f9GOi2KjSEPPHuuScL5
	lfe3gBOnD1vx9XDQhP3ucJ1bg9or0ZA=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=kee4O5Jd;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
Received: by dvalin.narfation.org (Postfix) id CD2771FD9C;
	Wed, 08 Jul 2026 20:00:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1783540829;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=FCKgJ2DYWkscBTrND68wiLIJCltejFwMLvi7A2DSTlw=;
	b=kee4O5JdpBoNnksNg4a6QlGIJaGf2iERsEYu7c53IN6xI1/5/PmgSuRgCk4caoc9dITumB
	bW78Bgwzse7o/tf+lZgZq/uTvunL2ggTQ0wmdkK+LS5JC8uHBDW8XAKnAovtNExkfp6gEf
	1z1VpFIyghRCnc7PZ2xwpHq5NLC9/Go=
From: Sven Eckelmann <sven@narfation.org>
Date: Wed, 08 Jul 2026 22:00:11 +0200
Subject: [PATCH 05/12] batctl: netlink: detect receive errors in
 netlink_print_common
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260708-bugfixes-netlink-v1-5-8ce03e37f17b@narfation.org>
References: <20260708-bugfixes-netlink-v1-0-8ce03e37f17b@narfation.org>
In-Reply-To: <20260708-bugfixes-netlink-v1-0-8ce03e37f17b@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1252; i=sven@narfation.org;
 h=from:subject:message-id; bh=3h/z9DA8GEEWqlW0HzVMYup/SfkQKhCU3TBwoDM2FoE=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDFl+azwOFlTXuq3ZIH68jTGg5+m9D1bplsvZBE9/+Oee0
 mY+f8urjlIWBjEuBlkxRZY9V/LPb2Z/K/952sejMHNYmUCGMHBxCsBE3v5k+F/zYE5cj6nhnl/B
 /kcm9Dg48mR9br4fs6c+pizfduX2C9GMDHuMf4T4zMpibGpnnlaY5DUta1Ls/iKVzNPnHqwQ+iW
 RxwEA
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: ZZJ5GHTPOMKKEKWRBLABPU7M72CIFAZA
X-Message-ID-Hash: ZZJ5GHTPOMKKEKWRBLABPU7M72CIFAZA
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/ZZJ5GHTPOMKKEKWRBLABPU7M72CIFAZA/>
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
X-Rspamd-Queue-Id: D0B5572A125

netlink_print_common() clears last_err to 0 before each dump and then
ignores the return value of nl_recvmsgs(). It will therefore only print
errors which were received in netlink messages - but not the major errors
when communicating with the kernel.

Capture the nl_recvmsgs() return value, matching the sibling helper
netlink_query_common().

Fixes: d8dd1ff1a0fe ("batctl: Use netlink to replace some of debugfs")
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 netlink.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/netlink.c b/netlink.c
index e8b41cf..6e0d35a 100644
--- a/netlink.c
+++ b/netlink.c
@@ -537,6 +537,7 @@ int netlink_print_common(struct state *state, char *orig_iface, int read_opt,
 	};
 	int hardifindex = 0;
 	struct nl_msg *msg;
+	int ret;
 
 	if (!state->sock) {
 		last_err = -EOPNOTSUPP;
@@ -588,7 +589,9 @@ int netlink_print_common(struct state *state, char *orig_iface, int read_opt,
 		nlmsg_free(msg);
 
 		last_err = 0;
-		nl_recvmsgs(state->sock, state->cb);
+		ret = nl_recvmsgs(state->sock, state->cb);
+		if (ret < 0)
+			last_err = -EIO;
 
 		/* the header should still be printed when no entry was received */
 		if (!last_err)

-- 
2.47.3

