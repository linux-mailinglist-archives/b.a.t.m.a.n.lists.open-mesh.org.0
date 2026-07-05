Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id b4j5NNhUSmrcBQEAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 05 Jul 2026 14:58:00 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 9341170A01D
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 05 Jul 2026 14:58:00 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=narfation.org header.s=20121 header.b=NcmDj6xu;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 2a01:4f8:241:fc1:136:243:236:17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 708CF83101
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 05 Jul 2026 14:58:00 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1783256280;
 b=0c5BslZdWyASHTw09E2dv9iDY0UpSzsESlaZS+9VT5PaNG7qzPZxdqNo5qXhH2w7qfkPR
 HorpqYHemp2bfxkZWV4o1ZPVG5HKGnX7TM3+0VFa4yVfcEzxRfwuzAzbQ2lIPGZkwH8Trdd
 Su5HcejJMhoH8sXw3FZGi/E3QW7xzF4=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1783256280; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=ssihRUwXq4FnS6CP6opyEEqsOK+lZXoafkOE3Ne2VN0=;
 b=p5c7QNUFrwybqb/ry7fGBSKanATL162YRkJiH4asqnLNJ7mJEzPOm4HgCTmRqhqjKbC/x
 R0ObBCGfgcPWdV5vvZfPGJss6FMjBJ5VXGH6j28lT5yBs3FDwVZWAF+oPJiqnYQks/+HuCE
 rVu9lRa4PTCAh1I57yu8FU5FSQiCSs0=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id 965D584300
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 05 Jul 2026 14:55:35 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1783256135;
	b=3kmm7DscIwhH74+uojzBB62ZJj+sxuPy6oIUeKNo7j3eiA0fMGj4uSVTHHZ6EeemSxKjsZ
	Mq2GZCBmeCDCpphHViBZ5O+SuxBlVGamAYi+tVhNLakbloYXlOxUya93be+dQXQgu7X6ZQ
	ntLczFFrE2Lcpho66Nz/mCzakyDaVG0=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1783256135;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=ssihRUwXq4FnS6CP6opyEEqsOK+lZXoafkOE3Ne2VN0=;
	b=mPrTFjzjnku1UDQzkZQystHCYiyJ3aEAOdzPWgwoV8DcwT/0txFTKVzYegwI0GupQ7jFVn
	EHTO1Q3QtUAk5VJc1ISlFQAh0AL+Jmht2tRlbLnCoNW/Y4rtgm3OUWRI+tPLPEXqnQSvr+
	HUIazZvaMAP2xQpTvcmgI/rwdHNmHos=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=NcmDj6xu;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
Received: by dvalin.narfation.org (Postfix) id 57233201CF;
	Sun, 05 Jul 2026 12:55:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1783256135;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ssihRUwXq4FnS6CP6opyEEqsOK+lZXoafkOE3Ne2VN0=;
	b=NcmDj6xuxFOo49I1EAQNu2X6qfZYUo0SgcDPZ41UEs0DWo1QMNVF7UdUURFRsnvJxZIEU5
	G1tFKPbMPb17Mr3QAPq8kLWCHtYEWOAYB5rSbma++0JaNcDb5gUvSOCZzeKfL8OoSQ+dJa
	jx4DhG95iK2LL2+Vn0aRexkO7fuyzHU=
From: Sven Eckelmann <sven@narfation.org>
Date: Sun, 05 Jul 2026 14:55:08 +0200
Subject: [PATCH 3/3] batctl: version: don't strip newline for empty buffer
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260705-bugfixes-version-v1-3-5f02046c7eea@narfation.org>
References: <20260705-bugfixes-version-v1-0-5f02046c7eea@narfation.org>
In-Reply-To: <20260705-bugfixes-version-v1-0-5f02046c7eea@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=917; i=sven@narfation.org;
 h=from:subject:message-id; bh=RcY9413TxCXq/O/jAjyqVMNUgwxbsICFtHp52LkXsrA=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDFleIXrZn948PvTsiULbbLZAUYvCO8lzZ6jbPWaabBvnO
 LFM8mFSRykLgxgXg6yYIsueK/nnN7O/lf887eNRmDmsTCBDGLg4BWAi7VsZ/tknn4oyac/Rs16q
 8nS7+jL/6yv/9qz6sJ+VLzClx9f/uhnDX4kPky1zPme/OjP/9WevKSaHz9zLva22TWyJwsHTrT7
 V89kA
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: IVWZOGUCUXD7LEMXEOXJFGAGZ2PFFART
X-Message-ID-Hash: IVWZOGUCUXD7LEMXEOXJFGAGZ2PFFART
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/IVWZOGUCUXD7LEMXEOXJFGAGZ2PFFART/>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.open-mesh.org:from_smtp,narfation.org:from_mime,narfation.org:email,narfation.org:mid,narfation.org:dkim]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9341170A01D

When read_file() would return an empty buffer, then version() must not
strip the last byte. Otherwise it would try to access 1 byte before the
start of the buffer.

Fixes: dbc4a8c8e585 ("batctl: version also prints the kernel module version if available")
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 main.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/main.c b/main.c
index e625291..0cf99d7 100644
--- a/main.c
+++ b/main.c
@@ -133,8 +133,10 @@ static void version(void)
 
 	ret = read_file(module_ver_path, USE_READ_BUFF | SILENCE_ERRORS);
 	if (ret == EXIT_SUCCESS) {
-		if (line_ptr[strlen(line_ptr) - 1] == '\n')
-			line_ptr[strlen(line_ptr) - 1] = '\0';
+		size_t line_len = strlen(line_ptr);
+
+		if (line_len > 0 && line_ptr[line_len - 1] == '\n')
+			line_ptr[line_len - 1] = '\0';
 
 		printf("%s]\n", line_ptr);
 	} else {

-- 
2.47.3

