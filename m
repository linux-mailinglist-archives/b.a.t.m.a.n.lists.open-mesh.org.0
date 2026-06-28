Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id tS6qNzu0QGqlhQkAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 28 Jun 2026 07:42:19 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 752EF6D33BD
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 28 Jun 2026 07:42:19 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=narfation.org header.s=20121 header.b=ZPyBsvxt;
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 136.243.236.17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	dmarc=pass (policy=none) header.from=narfation.org;
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 2376683EF9
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 28 Jun 2026 07:42:19 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1782625339;
 b=mvzBZzcqze/GtqGRWEdLjfMAo/BBp59QB6CmBHo2D25shlsJI2+ADbHRVzWGSOsgpcL2H
 vr9xQLCOamK55rXYGeg97+Lh58JcA9TdH9Oc8jkougkeBhuVvsS9XfHRNEsLfYhe4XQrmrd
 e+/2xCcAWNZuHV68evcvxcIamFnFwZM=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1782625339; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=5LSnIwquaXIdodFd6wEaGmfWIJqwzucCdnCRmg+q8AY=;
 b=TKrhtkKOq1WLWQReMdQhXWiMW+ajYQqWYNXTBuSv4UQL4ABIGRJDyUxDjjVss4sJ+LIMU
 m+azu08MRYb+ufJw8ARHjYuM1u7BVQ5k/t3S+6xG+8+V/szT7Hc6HSzy6ozv6/m7wdT9KyZ
 8rtAiB4rh+oaG47RZVVSJXn6PuoCI5U=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org
 [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id 6B76E8112C
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 28 Jun 2026 07:41:52 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1782625322;
	b=cqDU5MBtpyb4nCxweAQKfu2oglTX9AV/hbso5hZXlYsyFkl2ATbESi3jWiJ+5R7mDB6awU
	+qRva6f2qGxdrgC4S8yhB7v+RNJi7rkgRE350cdnxmnbWrxbEpsL4fhQXh3WqIzmvQ1+4i
	aVmC1grWzIcf9ngD4Wa8dUJLOOw+Yag=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1782625322;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=5LSnIwquaXIdodFd6wEaGmfWIJqwzucCdnCRmg+q8AY=;
	b=0gkia7gzR3w+D5e/7o08LQWrYcQ0BE/NAd0x9bglHb3UUhDVW1BM2QRRXS2vB+z761vuPE
	FR6ksL33E0AyZzajRwXgxmJIOeQXZGqWNQbHxWZ4KIMxCFrdmqy/vd0qtQcNEqEiFHhvKw
	b/pw6DZp51Mjfx1p8s68fzqKkcANd5I=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=ZPyBsvxt;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
Received: by dvalin.narfation.org (Postfix) id 8234D20272;
	Sun, 28 Jun 2026 05:41:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1782625311;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=5LSnIwquaXIdodFd6wEaGmfWIJqwzucCdnCRmg+q8AY=;
	b=ZPyBsvxtfaadyaWUCM9ZdkBIQGYDVWzLpf+emAve16KerrzrtnQa6XiiO4kDxsdEMB3Lkh
	pzaJHTuU0p/A2+PJPcyk30XOFPPoAsCyt5th+en4bkK3FKZVEHLn0mrY0XmJmGCBOmFBUv
	YAULRLl+lkIOsNvdm3Yjkq/UFTWkDyg=
From: Sven Eckelmann <sven@narfation.org>
Date: Sun, 28 Jun 2026 07:40:50 +0200
Subject: [PATCH batadv] batman-adv: retrieve ethhdr after potential skb
 realloc on RX
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260628-skb-post-realloc-v1-1-6218ffb71633@narfation.org>
X-B4-Tracking: v=1; b=H4sIAOGzQGoC/yWMywqDMBAAf0X27EISUaS/Ih7y2LarYiQbpSD+e
 1N7nIGZE4QSk8CjOiHRwcJxLaDrCvzbri9CDoXBKNOpzvQos8MtSsZEdlmiR02u1aFVfWgaKNm
 W6MmfezmAs9mGA8a/l91N5PPvB9f1BVUcqnd8AAAA
X-Change-ID: 20260628-skb-post-realloc-1eb51d508d33
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sashiko <sashiko-bot@kernel.org>, Sven Eckelmann <sven@narfation.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1296; i=sven@narfation.org;
 h=from:subject:message-id; bh=xd0M2vxpH48FeHrI0dxP4eM+4kivptekCiOnkxEEIbE=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDFkOm3+FfsqzMNyzms03z3TeSflfy4IuVATlfnMU7P0Vm
 5y10OJYRykLgxgXg6yYIsueK/nnN7O/lf887eNRmDmsTCBDGLg4BWAiVvqMDBsfyIjfXz5tPXt1
 gXl8jFRP+Qae3ijVrqX12e/yNdexTmf4H/+mr3NOCPf0OUuMXns+Tvq83zfErC5kw09ru2USm+v
 juAE=
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: 3QYB2YJNDQJACMWKMPK4FOI6TOPCP5Z7
X-Message-ID-Hash: 3QYB2YJNDQJACMWKMPK4FOI6TOPCP5Z7
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/3QYB2YJNDQJACMWKMPK4FOI6TOPCP5Z7/>
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
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,b.a.t.m.a.n=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS(0.00)[m:b.a.t.m.a.n@lists.open-mesh.org,m:sashiko-bot@kernel.org,m:sven@narfation.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sven@narfation.org,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	RCPT_COUNT_THREE(0.00)[3];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.open-mesh.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 752EF6D33BD

pskb_may_pull() in batadv_interface_rx() could reallocate the buffer behind
the skb. Variables which were pointing to the old buffer need to be
reassigned to avoid an use-after-free.

This was done correctly for the VLAN header but missed for the ethernet
header which is later used for the TT and AP isolation handling.

Reported-by: Sashiko <sashiko-bot@kernel.org>
Fixes: 48628bb9419f ("batman-adv: softif bridge loop avoidance")
Fixes: 7d2f8a773bae ("batman-adv: Check skb size before using encapsulated ETH+VLAN header")
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 net/batman-adv/mesh-interface.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/net/batman-adv/mesh-interface.c b/net/batman-adv/mesh-interface.c
index e5a55d24..907968a1 100644
--- a/net/batman-adv/mesh-interface.c
+++ b/net/batman-adv/mesh-interface.c
@@ -434,6 +434,7 @@ void batadv_interface_rx(struct net_device *mesh_iface,
 		if (!pskb_may_pull(skb, VLAN_ETH_HLEN))
 			goto dropped;
 
+		ethhdr = eth_hdr(skb);
 		vhdr = skb_vlan_eth_hdr(skb);
 
 		/* drop batman-in-batman packets to prevent loops */

---
base-commit: 70dab058ebed0bc0c66dc40113039129b3089780
change-id: 20260628-skb-post-realloc-1eb51d508d33

Best regards,
--  
Sven Eckelmann <sven@narfation.org>

