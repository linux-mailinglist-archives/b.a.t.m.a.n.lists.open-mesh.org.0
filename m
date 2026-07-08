Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id FGl6L6CtTmoNSQIAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 08 Jul 2026 22:05:52 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E8EB72A154
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 08 Jul 2026 22:05:52 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=narfation.org header.s=20121 header.b=HfX7mfIH;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 136.243.236.17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 3C1D185327
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 08 Jul 2026 22:05:52 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1783541152;
 b=h1va8gj+wH4PRq/OLAYcnS1wY/OvlnuFXMIR4fomAdPPjh8uz7onK9KdYR3+Zb+z4autl
 BBAHJLSiiymhhXNHqJ9MWtGkPqts8/K/dn8dxodxT7cwnRKSNcEsRVRQoBt7z5C2gC0X3x+
 ig0ziZiFIxrekWs6r/bX5YaPFjRhwjU=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1783541152; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=4r8OREAOsSPJyxRgIWkpdVwPmLeztFcGnnythYcOBPI=;
 b=GYx9pKu5U7fIm0ZGL8RJiBA3/kqyCVfw/5XlpgMixGUttVGRpZ7XUsM/67c8w7zYj1/i4
 KhKRxTV3Z8xvsXoFr8vblfdszrckPwrJ14AKe//rac0o8V8TK8Nmdn1Gx7L3cWcDseRKgqd
 npysajOSJP0q2qs2tCpyVNuro1kbo7I=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id 1CF0284694
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 08 Jul 2026 22:00:58 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1783540858;
	b=GKBpjZRjAYZi+BOX4Fw2Pcc170MAeJNUna+ibzCLcOBuzgOHgioKHPxrCQy1VOS59TpXOp
	H6KpJnARLrP8/bzM0tDWk+ETSoP9zT9+Od+zPNz5WkgO3DpR6LRA3joT90KGCsE7i2T2yf
	X6F7BmWW8elAXfGexNqpoQ0PfoHSXNk=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1783540858;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=4r8OREAOsSPJyxRgIWkpdVwPmLeztFcGnnythYcOBPI=;
	b=x2Xk/78TVeIycH87RHpvAWaQGDnehqVdHPnUUZRmUpYKS40XtQjV9lEaxiqJi2YnN+H1Ss
	TzDeXrdjmT18Cvu3oCgfcex+zOe0kKIyNoGO2nNPfoiFCCPpRowbcnk48f665I0mrBN7u2
	X0sJyTtrlcG7JUr0YM8PLG9BCP4Ak+g=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=HfX7mfIH;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
Received: by dvalin.narfation.org (Postfix) id BD9F81FD9C;
	Wed, 08 Jul 2026 20:00:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1783540857;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=4r8OREAOsSPJyxRgIWkpdVwPmLeztFcGnnythYcOBPI=;
	b=HfX7mfIHmO1nEmZL1IohBw4fPmzO1JNhHLt+X9nc1JadZmfQmg6goOE8zRX7nkGExgz6kY
	cQfGdhSuXHJHuFObDoXkdNlVd7G41asB8Jnr/+T/2TqYuTPGImqTqzJ9QpHcrPfF+OVxC7
	rZRllDzAUGuS2FTFUZ+XT1Zyvv5S8PY=
From: Sven Eckelmann <sven@narfation.org>
Date: Wed, 08 Jul 2026 22:00:13 +0200
Subject: [PATCH 07/12] batctl: netlink: report send errors in
 netlink_simple_request
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260708-bugfixes-netlink-v1-7-8ce03e37f17b@narfation.org>
References: <20260708-bugfixes-netlink-v1-0-8ce03e37f17b@narfation.org>
In-Reply-To: <20260708-bugfixes-netlink-v1-0-8ce03e37f17b@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1119; i=sven@narfation.org;
 h=from:subject:message-id; bh=WOZJO3X3eMQVRo7M9vsamHSYzhIH7M1mfMNYJJqQtgg=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDFl+azwCNT3P8thyx2zTv7ph0etHXf+UpgStVvp0+PZrk
 S+zeY4zd5SyMIhxMciKKbLsuZJ/fjP7W/nP0z4ehZnDygQyhIGLUwAm0neZ4TdrVFPZws6FHiGl
 17P4Dm/3uW8irFoby3CiaX33LkvWDScY/tkE34nOKdRmfJAvKftIyXnCH7kHJ2Ve7jStcjm9YP2
 O9fwA
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: HCFVSRBFRMS2TKBSUTQKP6SOVMOMEBDA
X-Message-ID-Hash: HCFVSRBFRMS2TKBSUTQKP6SOVMOMEBDA
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/HCFVSRBFRMS2TKBSUTQKP6SOVMOMEBDA/>
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
X-Rspamd-Queue-Id: 5E8EB72A154

netlink_simple_request() initializes err to 0 and only lets
ack_errno_handler() update it while receiving. When nl_send_auto_complete()
fails, the function jumps to the cleanup path with err still set to 0 and
reports success even though the request never reached the kernel. Callers
like the interface create/destroy handling then exit without any error
indication.

Set err to -EIO on the send error path to let the caller handle it as
actual error.

Fixes: dd2bbe182780 ("batctl: Add command to create/destroy batman-adv interface")
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 functions.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/functions.c b/functions.c
index 00dbd3d..a3f6639 100644
--- a/functions.c
+++ b/functions.c
@@ -552,8 +552,10 @@ int netlink_simple_request(struct nl_msg *msg)
 	nl_cb_set(cb, NL_CB_ACK, NL_CB_CUSTOM, ack_wait_handler, NULL);
 
 	ret = nl_send_auto_complete(sock, msg);
-	if (ret < 0)
+	if (ret < 0) {
+		err = -EIO;
 		goto err_free_cb;
+	}
 
 	// ack_errno_handler sets err on errors
 	err = 0;

-- 
2.47.3

