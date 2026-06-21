Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id II1QKcn2N2rZWAcAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 21 Jun 2026 16:35:53 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F5E86AB15F
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 21 Jun 2026 16:35:53 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=narfation.org header.s=20121 header.b=OGVqoQW9;
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 136.243.236.17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	dmarc=pass (policy=none) header.from=narfation.org;
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 2B71A8110E
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 21 Jun 2026 16:35:53 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1782052553;
 b=EeQdbgAD1va1e2FD9fip+V1+ogoDjP3zDIsopzhOVi0yDzgQc9QpWzRp1BCYueWykAkDx
 YJJ6olit53VZd32Pz6K2QvppN2RR2neLBfZAsP2t8xuYjw11xmJz3KvxLDbah7tgw6ILDDq
 iiGvT8CUaoyw2X3nkcckcpFgve+HQtM=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1782052553; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=yAwoQg23DciWt3DRTJS0gHg8GssqRICLukFPkHY/EZ8=;
 b=cqJ/qB1AGnyBDBR2SVsmzB0gWbsdsomOu+GgZIFTpFhVzdvT8wXPU3Kc79/q3ZnT1Jj2k
 bH1PIdZ5eG/6TfLZXrui6csQLz+4qVLyEBMsA7NkdyZhZt75RjfPcsAKMOmVURnadQ6k9ey
 lxm8gj6YYQ+GxYsBX6JZWLN4z4ufvDc=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org
 [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id F23E484047
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 21 Jun 2026 16:25:14 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1782051915;
	b=Y0ORqpQfHKl6E2RtLlG0GnwQU9dTGP0oywwHPU5l7Sdi6LKI1c5/Fxb8pme8tzmMyDcRH+
	UawcNbTVqipSnjCaLPWevSW4kBfMhFgXOntWYveoq6/x/FxfF5y4Ew/mrBauebss/k7dTg
	/RBw7rFTjh2EFeceSozHJk47Z38Anu4=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1782051915;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=yAwoQg23DciWt3DRTJS0gHg8GssqRICLukFPkHY/EZ8=;
	b=DWZkxp91elU6229BPgkCanarScoizdI9CJm0qjMWM0ADsK518thUrfJV6m9QqDDDsKYcnk
	1JiLnCWyD7zM0BfvYX//GExBryCWrU6YB97AGjpqX8DB1upnNujVyK9Gxyf3+gqk8lCoF1
	JdOE+lQqNJkxQW3D5YWaYGLgmqGDHQg=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=OGVqoQW9;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
Received: by dvalin.narfation.org (Postfix) id 92D2C200C4;
	Sun, 21 Jun 2026 14:25:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1782051914;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=yAwoQg23DciWt3DRTJS0gHg8GssqRICLukFPkHY/EZ8=;
	b=OGVqoQW94tPtt1mBL4I8CCrYv1Qcbx/nC0/MCFQk/K7ZrpheI5n7Eb44+V7BBYz/ib7DLZ
	b4g/ZryJZy0jcn5p+WWLwCXMEfhXfzS2eJR05NGLeqN010ukzajGyIVZwAldlu0zwd1ARA
	FMIN+geSxwyt6KdgzwHjF76A5EwlWY0=
From: Sven Eckelmann <sven@narfation.org>
Date: Sun, 21 Jun 2026 16:24:05 +0200
Subject: [PATCH 15/28] batctl: tpmeter: fix Gbps output
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260621-bugfixes-v1-15-b09736288a4a@narfation.org>
References: <20260621-bugfixes-v1-0-b09736288a4a@narfation.org>
In-Reply-To: <20260621-bugfixes-v1-0-b09736288a4a@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1012; i=sven@narfation.org;
 h=from:subject:message-id; bh=lG6m0zu+m/+8MlW3NxvbOoGkrMtsIeQm/N9/GYT7gGo=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDFnmX9iOVtUdX3DqVfpsflaNyj1zPKL3Cj/5uOqcvC9nX
 EK8+/yQjlIWBjEuBlkxRZY9V/LPb2Z/K/952sejMHNYmUCGMHBxCsBE9ocx/JW5axjHUt1gtnHa
 UbdIUxHGdRd93zfXOH+VV8qYwyggnMrIsDfo5tn8hr4Tt2fsffn/kHU9W3+UU2BJb8I51efzNfZ
 fZQcA
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: CMDMMASNIKYP5V42L3XDK56J4IQKAKEJ
X-Message-ID-Hash: CMDMMASNIKYP5V42L3XDK56J4IQKAKEJ
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/CMDMMASNIKYP5V42L3XDK56J4IQKAKEJ/>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[diktynna.open-mesh.org:rdns,diktynna.open-mesh.org:helo,lists.open-mesh.org:from_smtp,narfation.org:dkim,narfation.org:email,narfation.org:mid,narfation.org:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4F5E86AB15F

The formatter for the Gbps result should print 2 digits after the dot. But
the format specifier was different than in all other branches and didn't
specify the precision after the dot. Instead a minimal number of digits (or
spaces) before the dot was defined.

Fixes: f109b3473f86 ("batctl: introduce throughput meter support")
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 throughputmeter.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/throughputmeter.c b/throughputmeter.c
index d670c51..a45eb08 100644
--- a/throughputmeter.c
+++ b/throughputmeter.c
@@ -431,7 +431,7 @@ static int throughputmeter(struct state *state, int argc, char **argv)
 		if (throughput == UINT64_MAX)
 			printf("inf\n");
 		else if (throughput > (1UL << 30))
-			printf("%.2f GB/s (%2.f Gbps)\n",
+			printf("%.2f GB/s (%.2f Gbps)\n",
 			       (float)throughput / (1 << 30),
 			       (float)throughput * 8 / 1000000000);
 		else if (throughput > (1UL << 20))

-- 
2.47.3

