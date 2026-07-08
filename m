Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 9w9iI/atTmooSQIAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 08 Jul 2026 22:07:18 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D55372A18B
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 08 Jul 2026 22:07:18 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=narfation.org header.s=20121 header.b=QOaHzsue;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 2a01:4f8:241:fc1:136:243:236:17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id E3E3D8578A
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 08 Jul 2026 22:07:17 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1783541237;
 b=y2nTbIOhxQzC3W5Uc8yWBSiYalHbZhO39Hx8rNQVfXA4rLG0lqTqTMFcDQsW8nav5wFNK
 voIxYMh3k1Gf7TVdE+CXOhGoWqsMlmkJqevzTXiwb/+0ANoBaPzsTtvhKpOVy/mhlUToEAa
 NZsCbfzxz740xaql8O/sTaUzIVScb/k=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1783541237; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=Q+X0DG0Xkf5bhwVtXCkXF7oeV5HSTc66ZqdkUQmLQJ4=;
 b=JAoZmmDiOrOQ62d7gQjSX6/ZBaL2hpkdDetau4HgPYj5yJeSN6ph7CLZ2GpJEuzbBBfcj
 UXb6cQAuZdzaUE9zQlaNGKh7KAWX0WyHfXqLXr8FuKO56iqxO4WuDOcJ96y1zqtmBFIqyA6
 t9/H2ngKV6Rz5B+O6ex4K7LpdZ139jg=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id D51ED83CF3
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 08 Jul 2026 22:01:02 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1783540862;
	b=v3j65FydKw0lqxDfBiBVPj74AwD0RWfLWmbKp21PIA9g/sibIaOAkmk40YQfTXLSMQ0U/U
	zw4yc+/e35asCAaEiz3bpzH5CpSa+suu/XaItm7MWP2cbdYk88ahnKmkKNvEE/gb1mos0w
	KUsU7tEebYPx8U3zsx0F+Y4lidNxtqs=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1783540862;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=Q+X0DG0Xkf5bhwVtXCkXF7oeV5HSTc66ZqdkUQmLQJ4=;
	b=IhH63CDO/h8Zknq3SrtaMxt90rYXuFCQ/XZFXjxc7ei2F7E+HJmjG2FtA7o285TCZQIsDZ
	wbgJIk5Po8VxmDv1fZiny1ThfMOJxtabupVbP/rZSB+00mvbwG8fOC4nvpYLC+uJY1wNjr
	Dzi1t5L4+woZnGCABdYvGvWPLM65Y0o=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=QOaHzsue;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
Received: by dvalin.narfation.org (Postfix) id 93A8720019;
	Wed, 08 Jul 2026 20:01:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1783540862;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Q+X0DG0Xkf5bhwVtXCkXF7oeV5HSTc66ZqdkUQmLQJ4=;
	b=QOaHzsuermlg4bPbeYj4XKLkyf/vKMdmLYr5PiNXurJMnY3xf/kB96PRa9sXomLplEvOUn
	AqKKxjxI/z2eMwrEi3paC8bvaltgA6VKJnAQztQNu9kwL/x1ZYBu8PhoKaG/fK8hmK5X9+
	toP7ULOgoDg2J/INIOFzBNuKTUB18co=
From: Sven Eckelmann <sven@narfation.org>
Date: Wed, 08 Jul 2026 22:00:15 +0200
Subject: [PATCH 09/12] batctl: netlink: detect receive errors in
 netlink_simple_request
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260708-bugfixes-netlink-v1-9-8ce03e37f17b@narfation.org>
References: <20260708-bugfixes-netlink-v1-0-8ce03e37f17b@narfation.org>
In-Reply-To: <20260708-bugfixes-netlink-v1-0-8ce03e37f17b@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=925; i=sven@narfation.org;
 h=from:subject:message-id; bh=MwUKBrGBCWCoNlEQ9jSvpt+VgOE7638d+7il9FGI98A=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDFl+azw7C33aN09e7tuw5YXnl5BNVgxzZk8xPn7jpV2yD
 IeDwMy2jlIWBjEuBlkxRZY9V/LPb2Z/K/952sejMHNYmUCGMHBxCsBETHcz/BW8WKJaX8MUvXmO
 sf714upDtW53/Dr3nxLnXe5+xNY7LIGR4emZqA+iBxe+mvxp4v8TNd4/38hI8hZvc7USV8j+693
 DyQ4A
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: ZZCUROLGHAKSNQOX5WOF4SWMLRR46D32
X-Message-ID-Hash: ZZCUROLGHAKSNQOX5WOF4SWMLRR46D32
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/ZZCUROLGHAKSNQOX5WOF4SWMLRR46D32/>
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
X-Rspamd-Queue-Id: 2D55372A18B

netlink_simple_request() ignores the return value of nl_recvmsgs(). Once
nl_send_auto_complete() succeeds, the local err stays 0 no matter what
happens while receiving the RTM_GETLINK dump, so a failed or truncated dump
is reported as success.

Set err to -EIO on an receive error to let the caller handle it as actual
error.

Fixes: dd2bbe182780 ("batctl: Add command to create/destroy batman-adv interface")
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 functions.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/functions.c b/functions.c
index f3ad560..36cae49 100644
--- a/functions.c
+++ b/functions.c
@@ -561,7 +561,9 @@ int netlink_simple_request(struct nl_msg *msg)
 
 	// ack_errno_handler sets err on errors
 	err = 0;
-	nl_recvmsgs(sock, cb);
+	ret = nl_recvmsgs(sock, cb);
+	if (ret < 0)
+		err = ret;
 
 err_free_cb:
 	nl_cb_put(cb);

-- 
2.47.3

