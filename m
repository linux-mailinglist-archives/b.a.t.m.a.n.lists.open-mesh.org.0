Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 7218E763931
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 26 Jul 2023 16:33:32 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 45D65819ED
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 26 Jul 2023 16:33:32 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1690382012;
 b=yoX66Jxn6M+f4YmD3kfovegyJjnhpPoStVQLx56g/8y5Dk7Fub4W3wFFR3h/kvgl0Ermq
 bTU8fp2erUAasfB/zf4LXJ6BeLcuTXNZE8v9B4FzIrNXqn6cHuinvjGnyowdNL1fUIYNG3w
 TlfevThLjm/f6r5uvPEhCm9PtnDCw6g=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1690382012; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=JEk0oN8up0PQzpQFqA6fuCCUtYz9jMjhoWDO+U6ZZ3U=;
 b=fk7OH+9vq/2eGXvn09U52JNRP2CE80oXnlOxBrBKk1WhKMe4/p0tq9NTZT+UUh4w8qCI0
 2FpaJa+sARcLtSNkYtn8hdUlVVQmYPBZysvgpcmQyzhY4pNCyPnGr5pAIw9V1GB6z/gLN4g
 /3g+NCRwv5NOIuTe0/WnF7sTslMq6v0=
ARC-Authentication-Results: i=2; open-mesh.org; dkim=fail;
  arc=pass;
  dmarc=fail (Used From Domain Record) header.from=huawei.com
 policy.dmarc=quarantine
Authentication-Results: open-mesh.org; dkim=fail; arc=pass;
 dmarc=fail (Used From Domain Record) header.from=huawei.com
 policy.dmarc=quarantine
Received: from szxga02-in.huawei.com (szxga02-in.huawei.com [45.249.212.188])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 34A518092B
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 26 Jul 2023 16:26:37 +0200 (CEST)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1690381599;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
	bh=JEk0oN8up0PQzpQFqA6fuCCUtYz9jMjhoWDO+U6ZZ3U=;
	b=tI1BHDKgswggcUvMrtvC1LoQ11ZYzhVl7ym2HeKuE2fKMuNWc1qEVzhUEkMW6IVYhnf8NF
	6J14GwwLY/ubeJ7dZB1xbcfaQNrfZ7D6qDx1IM1QlEvvxCdtogYUFGQB3XBitXjbKh9AT8
	tuvrHhP+3EzpBL/MXYOEmwm01pOs4uA=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	dmarc=pass (policy=quarantine) header.from=huawei.com;
	spf=pass (diktynna.open-mesh.org: domain of yuehaibing@huawei.com designates
 45.249.212.188 as permitted sender) smtp.mailfrom=yuehaibing@huawei.com
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1690381599; a=rsa-sha256;
	cv=none;
	b=CqIfpQU5proCSmJ//hBEmp+oPCBMpgF7o+7D5lOBlkOSw2A1zXySoM/VKHxjqgHNafkUS/
	9Z5Z0pCY7U5naAbUseBgJbdSuG+yHwjFKqkjnceKwirxKoqal5udwnzk3IrFMvzOJAPkOy
	hgh+nOd5ct+2drTgey5pHtdbpyBOs3E=
Received: from canpemm500007.china.huawei.com (unknown [172.30.72.53])
	by szxga02-in.huawei.com (SkyGuard) with ESMTP id 4R9x4T22F7zTkyW;
	Wed, 26 Jul 2023 22:24:57 +0800 (CST)
Received: from localhost (10.174.179.215) by canpemm500007.china.huawei.com
 (7.192.104.62) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.27; Wed, 26 Jul
 2023 22:26:31 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: <mareklindner@neomailbox.ch>, <sw@simonwunderlich.de>, <a@unstable.cc>,
	<sven@narfation.org>, <davem@davemloft.net>, <edumazet@google.com>,
	<kuba@kernel.org>, <pabeni@redhat.com>, <yuehaibing@huawei.com>
Subject: [PATCH net-next] batman-adv: Remove unused declarations
Date: Wed, 26 Jul 2023 22:25:25 +0800
Message-ID: <20230726142525.29572-1-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.10.2.windows.1
MIME-Version: 1.0
Content-Type: text/plain
X-Originating-IP: [10.174.179.215]
X-ClientProxiedBy: dggems706-chm.china.huawei.com (10.3.19.183) To
 canpemm500007.china.huawei.com (7.192.104.62)
X-CFilter-Loop: Reflected
X-MailFrom: yuehaibing@huawei.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency;
 loop; banned-address; member-moderation;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-0;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-1
Message-ID-Hash: BHCYAW2ZS56MZBMNPWQICHEK5ZILRFM6
X-Message-ID-Hash: BHCYAW2ZS56MZBMNPWQICHEK5ZILRFM6
X-Mailman-Approved-At: Wed, 26 Jul 2023 16:33:07 +0200
CC: b.a.t.m.a.n@lists.open-mesh.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.8
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/BHCYAW2ZS56MZBMNPWQICHEK5ZILRFM6/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Since commit 335fbe0f5d25 ("batman-adv: tvlv - convert tt query packet to use tvlv unicast packets")
batadv_recv_tt_query() is not used.
And commit 122edaa05940 ("batman-adv: tvlv - convert roaming adv packet to use tvlv unicast packets")
left behind batadv_recv_roam_adv().

Signed-off-by: YueHaibing <yuehaibing@huawei.com>
---
 net/batman-adv/routing.h | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/net/batman-adv/routing.h b/net/batman-adv/routing.h
index 5f387786e9a7..afd15b3879f1 100644
--- a/net/batman-adv/routing.h
+++ b/net/batman-adv/routing.h
@@ -27,10 +27,6 @@ int batadv_recv_frag_packet(struct sk_buff *skb,
 			    struct batadv_hard_iface *iface);
 int batadv_recv_bcast_packet(struct sk_buff *skb,
 			     struct batadv_hard_iface *recv_if);
-int batadv_recv_tt_query(struct sk_buff *skb,
-			 struct batadv_hard_iface *recv_if);
-int batadv_recv_roam_adv(struct sk_buff *skb,
-			 struct batadv_hard_iface *recv_if);
 int batadv_recv_unicast_tvlv(struct sk_buff *skb,
 			     struct batadv_hard_iface *recv_if);
 int batadv_recv_unhandled_unicast_packet(struct sk_buff *skb,
-- 
2.34.1

