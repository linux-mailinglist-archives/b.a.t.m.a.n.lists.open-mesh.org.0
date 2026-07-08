Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id +E+NN14XTmryCwIAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 08 Jul 2026 11:24:46 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 817BB723AC4
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 08 Jul 2026 11:24:46 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=simonwunderlich.de header.s=09092022 header.b=muBAzhwl;
	dmarc=pass (policy=none) header.from=simonwunderlich.de;
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 136.243.236.17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 5D20B85446
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 08 Jul 2026 11:24:46 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1783502686;
 b=sZNKS+1dj+8cwfXG4ejxCpq8IhdomhxvfarBHwh6s520KmfXFI7R/kB6lnWK3mcsOOYbg
 I3xbrTLPrLX5j6Q5wBEROqeirheD11xn6D/qa/vkq4O+Yy6AKeoPqJHaAw/sXO7JqZ1g2fe
 FNbsRWsrNsX45yxh3T/XvmD1Djx4JYk=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1783502686; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=5U8UISu70rMYz9drDEm9dQtE1+U1aVr9Myb/+AxDp0w=;
 b=uRWLaIUwVo+E/pZgSxs2jsv8IJRL/Ni296j63Wx+4OHai8uSddwhk3u1GQHq33MoyYADL
 xtiAsx8aFyA7veJh1IaHT/S09gac4LfEKG66iXcJivWtuVPUwrmmWvk/tBtL1hDi9G0oVi2
 pWIH1u/h2xsfaBmFGePGx3I4rtJPYb4=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=simonwunderlich.de;
 arc=pass;
 dmarc=pass header.from=simonwunderlich.de policy.dmarc=none
Received: from mail.simonwunderlich.de (mail.simonwunderlich.de [23.88.38.48])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 52E7D83704
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 08 Jul 2026 11:18:46 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1783502326;
	b=qsBX3cEWaJBzczqZ24j7YPyUeN04hakKWz4QK+38UOoHyjUI35yPWC+0hnEA7CxwdSj3O3
	Z/qWiIjivwCmMhgcjnGLnRIiQl5n9I+J8uiGsyGHCtGM2hSRAdC0R9deUXDmPhSLXHrE8T
	Zc87LnvKx2mbmux8AEpYH8IZUtQmXEg=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1783502326;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=5U8UISu70rMYz9drDEm9dQtE1+U1aVr9Myb/+AxDp0w=;
	b=LQ1KtNoenLKFOzqVpjy238QqOGPggUmmcwP+IrnnuDGGsOEjA9Coe1TijvDVGSMEUYN8/p
	u9uVJ2j2sywloOjYAIoMWz+buymdI5qwm37qB+CIYHw4XJijb+L/0WZrFtjBQkI4bWrcyG
	6ox2V5d6pOFJ1obj/wxuXijqzhZQW7k=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=simonwunderlich.de header.s=09092022 header.b=muBAzhwl;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates
 23.88.38.48 as permitted sender) smtp.mailfrom=sw@simonwunderlich.de;
	dmarc=pass (policy=none) header.from=simonwunderlich.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=simonwunderlich.de;
	s=09092022; t=1783502324;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=5U8UISu70rMYz9drDEm9dQtE1+U1aVr9Myb/+AxDp0w=;
	b=muBAzhwl74D3W/iPlVV2Ovb/bVoaPw6ZLpszOTHLeFfvbl0ZscfwKvPsXFEOoF5wThik4V
	980JR9Mupm0Gbo0JHsyZ3FFmdX6i9ASXihka8cL0OQUO1v4A8RH4Ys+9iNmNQ3bzFURcXm
	Lhwjnt7T8IyI2XsZ9JT0LC0w7Vhr+qbOl2epPrmkeJvKiZffS95abLFD/1HWbdnr5ledHM
	BllMMsFgCKccIpKsvdwIe4ThjGxMVMRq7UVdagPc/ozINuNx3ecMfI+7ETqGWhwCHzC8ll
	5K43jF0siA5VcHVAwzhagDsEg9yg5kG9dSvLkvlBoTywR+neC1X1GvPcEEcijg==
From: Simon Wunderlich <sw@simonwunderlich.de>
To: netdev@vger.kernel.org
Cc: "David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Simon Horman <horms@kernel.org>,
	b.a.t.m.a.n@lists.open-mesh.org,
	Sven Eckelmann <sven@narfation.org>,
	stable@vger.kernel.org,
	Simon Wunderlich <sw@simonwunderlich.de>
Subject: [PATCH net 9/9] batman-adv: dat: fix tie-break for candidate
 selection
Date: Wed,  8 Jul 2026 11:18:21 +0200
Message-ID: <20260708091821.314516-10-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260708091821.314516-1-sw@simonwunderlich.de>
References: <20260708091821.314516-1-sw@simonwunderlich.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Message-ID-Hash: N3UPPIAWLL7QVMTHL6JHHJZ3Q6JKWZ4F
X-Message-ID-Hash: N3UPPIAWLL7QVMTHL6JHHJZ3Q6JKWZ4F
X-MailFrom: sw@simonwunderlich.de
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/N3UPPIAWLL7QVMTHL6JHHJZ3Q6JKWZ4F/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.51 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[open-mesh.org:s=20121:i=2];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[simonwunderlich.de,none];
	R_DKIM_ALLOW(-0.20)[simonwunderlich.de:s=09092022];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:netdev@vger.kernel.org,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:horms@kernel.org,m:b.a.t.m.a.n@lists.open-mesh.org,m:sven@narfation.org,m:stable@vger.kernel.org,m:sw@simonwunderlich.de,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[lists,b.a.t.m.a.n=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[sw@simonwunderlich.de,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	DKIM_TRACE(0.00)[simonwunderlich.de:+];
	ASN(0.00)[asn:24940, ipnet:136.243.0.0/16, country:DE];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DBL_BLOCKED_OPENRESOLVER(0.00)[diktynna.open-mesh.org:helo,diktynna.open-mesh.org:rdns,simonwunderlich.de:from_mime,simonwunderlich.de:email,simonwunderlich.de:mid,simonwunderlich.de:dkim,narfation.org:email,lists.open-mesh.org:from_smtp];
	FROM_NEQ_ENVFROM(0.00)[sw@simonwunderlich.de,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[b.a.t.m.a.n];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	R_SPF_NA(0.00)[no SPF record]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 817BB723AC4

From: Sven Eckelmann <sven@narfation.org>

The original version of the candidate selection for DAT attempted to
compare both candidate and max_orig_node to identify which has the smaller
MAC address. This comparison is required as tie-break when a hash collision
happened.

But the used function returned 0 when the function was not equal and a
non-zero value when it was equal. As result, the actually selected
node was dependent on the order of entries in the orig_hash and not
actually on the mac addresses. The last originator in the hash collision
would always win.

To have a proper ordering, it must diff the actual MAC address bytes and
reject the candidate when the diff is not smaller than 0.

Cc: stable@vger.kernel.org
Fixes: 785ea1144182 ("batman-adv: Distributed ARP Table - create DHT helper functions")
Signed-off-by: Sven Eckelmann <sven@narfation.org>
Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
---
 net/batman-adv/distributed-arp-table.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/batman-adv/distributed-arp-table.c b/net/batman-adv/distributed-arp-table.c
index c40c9e02391be..a6fe4820f65b9 100644
--- a/net/batman-adv/distributed-arp-table.c
+++ b/net/batman-adv/distributed-arp-table.c
@@ -546,7 +546,7 @@ static bool batadv_is_orig_node_eligible(struct batadv_dat_candidate *res,
 	 * the one with the lowest address
 	 */
 	if (tmp_max == max && max_orig_node &&
-	    batadv_compare_eth(candidate->orig, max_orig_node->orig))
+	    memcmp(candidate->orig, max_orig_node->orig, ETH_ALEN) >= 0)
 		goto out;
 
 	ret = true;
-- 
2.47.3

