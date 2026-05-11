Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YPzXL6oSAmqIngEAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 11 May 2026 19:32:26 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 151BE513829
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 11 May 2026 19:32:26 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id D942585BAE
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 11 May 2026 19:32:25 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1778520745;
 b=ITqCqEj7cto63utsUPHwPj6XGSK90XNzhHceRmxDz8rkOCstSBkc5qIDlN9c2LQVdwLGJ
 4CrYiVfxWa2d/K3uJg8oyyraP31Jgo1BGcH3Viyz1ZxbjJ7NB8q9CKtfquHYKHL9L2m5QKA
 hBcrMUqhRSEzoBU8ADi2Xi4IqTfPbm8=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1778520745; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=3OvGm4xhcF7+HztPj/kSKQhzpN6xNesOVrGxZcXnlro=;
 b=Ad+dNfmMyhCYIHUG0SYdY+R8bHaYF0+1lJLvOBxj9aIgQiRubnUoRTc5o/YvkFib0j0wD
 pBcVgQdrPi+7asVVAO6IIA2RM/cAfEGQxZVkFghEfEbK+L0f05H+XbL4H9UfiC7OHAX1XdG
 47KkKJ1kuonnQw9GU79ZRrNEAjIHSOo=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass (Used From Domain Record) header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id 1D2B4853E0
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 11 May 2026 19:30:13 +0200 (CEST)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1778520613;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=3OvGm4xhcF7+HztPj/kSKQhzpN6xNesOVrGxZcXnlro=;
	b=I0a1iPo2gNDg3P0lpgs7NfAi7JvSRZ4EkIVXZMMiKaF8WCSYgLOSMnDGCbSrz+F1bHKOM1
	4yczQ1izn2FeXdlk2mXBzuNZLk5GaxjwX6imJrqqaf3RAYi8CDXSc1GkW2lkCoXl2EE2++
	sooiRtlUE/UIOFtdQzkU6SXUTE9HdoQ=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=x6Q0rvx9;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1778520613;
	b=kl9YNaM6pSAkeopyXobbcjomz3FE1+BqS+LcZO9IjgkJ4nz0Yejv2PgjtC0X8aStSmfWif
	NkslP6RpB3Ewx+eMNkxZWGTpnpAXO+xt2gFhGOqlfyCbYOWOJvTc+sJ5vclF9e0+NciwJ0
	85ROole1DMxareqklJyTwOEvyIw6/dg=
Received: by dvalin.narfation.org (Postfix) id BE78121977;
	Mon, 11 May 2026 17:30:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1778520612;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=3OvGm4xhcF7+HztPj/kSKQhzpN6xNesOVrGxZcXnlro=;
	b=x6Q0rvx9LBlXJWwMAVaypmwxgLWkucGtY4Eiu7Co+Itf0bGjRahzJuFheoEthghkmcPCuM
	Gin1W3Ixvf+LAifDO+qNdpTFMhAP423H+mw1SWtJSDZ21iNTKXrvprX7P78P9haDZBizH7
	I6cct6adRM0h1K4pDgPm3q3WbO2nULo=
From: Sven Eckelmann <sven@narfation.org>
Date: Mon, 11 May 2026 19:30:00 +0200
Subject: [PATCH batadv 2/5] batman-adv: tp_meter: avoid use of uninit
 sender vars in recv_ack
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260511-yuantan098-bugfixes-v1-2-6adf6965f2b3@narfation.org>
References: <20260511-yuantan098-bugfixes-v1-0-6adf6965f2b3@narfation.org>
In-Reply-To: <20260511-yuantan098-bugfixes-v1-0-6adf6965f2b3@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Yuan Tan <yuantan098@gmail.com>, Sven Eckelmann <sven@narfation.org>,
 stable@kernel.org, Yifan Wu <yifanwucs@gmail.com>,
 Juefei Pu <tomapufckgml@gmail.com>, Xin Liu <bird@lzu.edu.cn>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1383; i=sven@narfation.org;
 h=from:subject:message-id; bh=aY4mfR+K1VRxFYYx44eBTsmzkT8oCkrF3dGavh9KqrY=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDFlMQlIqmSlFP2WytJZzyig/vXPMf6Lh9qa4NwuEfdIML
 m2PUo3oKGVhEONikBVTZNlzJf/8Zva38p+nfTwKM4eVCWQIAxenAEzkoRDDP1P3Sf1bCiukLdtk
 F/ZEnWeu0dvWfbBaNPtS058rEXtmvmRkaD99/l3VpKvT/sYwMQTf75yT8uVHtFiVO0/ealXGbWt
 n8gMA
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: FKUSLKFANZE3A2E3J3VTEABRS5BU2XVW
X-Message-ID-Hash: FKUSLKFANZE3A2E3J3VTEABRS5BU2XVW
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/FKUSLKFANZE3A2E3J3VTEABRS5BU2XVW/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>
X-Rspamd-Queue-Id: 151BE513829
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.01 / 15.00];
	ARC_ALLOW(-1.00)[open-mesh.org:s=20121:i=2];
	DMARC_POLICY_ALLOW(-0.50)[narfation.org,none];
	R_DKIM_ALLOW(-0.20)[narfation.org:s=20121];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	R_SPF_NA(0.00)[no SPF record];
	FREEMAIL_CC(0.00)[gmail.com,narfation.org,kernel.org,lzu.edu.cn];
	TAGGED_FROM(0.00)[lists,b.a.t.m.a.n=lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[narfation.org:+];
	ASN(0.00)[asn:24940, ipnet:136.243.0.0/16, country:DE];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sven@narfation.org,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[7];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[b.a.t.m.a.n];
	DBL_BLOCKED_OPENRESOLVER(0.00)[diktynna.open-mesh.org:helo,diktynna.open-mesh.org:rdns,narfation.org:email,narfation.org:mid,narfation.org:dkim,lzu.edu.cn:email]
X-Rspamd-Action: no action

batadv_tp_recv_ack() is only valid for tp_vars in the BATADV_TP_SENDER
role. When called with a BATADV_TP_RECEIVER role, it proceeds to read
sender-only members that were never initialized, leading to undefined
behavior.

This can be triggered when a node that is currently acting as a receiver in
an ongoing tp_meter session receives a malicious ACK packet.

Guard against this by checking tp_vars->role immediately after the
lookup and bailing out if it is not BATADV_TP_SENDER, before any of
those members are accessed.

Cc: stable@kernel.org
Fixes: 33a3bb4a3345 ("batman-adv: throughput meter implementation")
Reported-by: Yuan Tan <yuantan098@gmail.com>
Reported-by: Yifan Wu <yifanwucs@gmail.com>
Reported-by: Juefei Pu <tomapufckgml@gmail.com>
Reported-by: Xin Liu <bird@lzu.edu.cn>
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 net/batman-adv/tp_meter.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/net/batman-adv/tp_meter.c b/net/batman-adv/tp_meter.c
index 759ae923..84af22fa 100644
--- a/net/batman-adv/tp_meter.c
+++ b/net/batman-adv/tp_meter.c
@@ -664,6 +664,9 @@ static void batadv_tp_recv_ack(struct batadv_priv *bat_priv,
 	if (unlikely(!tp_vars))
 		return;
 
+	if (unlikely(tp_vars->role != BATADV_TP_SENDER))
+		goto out;
+
 	if (unlikely(atomic_read(&tp_vars->sending) == 0))
 		goto out;
 

-- 
2.47.3

