Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id DFE8539407A
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 28 May 2021 11:58:32 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 97BA582229;
	Fri, 28 May 2021 11:58:31 +0200 (CEST)
Received: from szxga03-in.huawei.com (szxga03-in.huawei.com [45.249.212.189])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 231A7804CC
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 28 May 2021 11:56:42 +0200 (CEST)
Received: from dggeml751-chm.china.huawei.com (unknown [172.30.72.56])
	by szxga03-in.huawei.com (SkyGuard) with ESMTP id 4Fs0Nq2lZTz65Yq;
	Fri, 28 May 2021 17:52:59 +0800 (CST)
Received: from dggpeml500023.china.huawei.com (7.185.36.114) by
 dggeml751-chm.china.huawei.com (10.1.199.150) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.2176.2; Fri, 28 May 2021 17:56:38 +0800
Received: from localhost.localdomain (10.69.192.56) by
 dggpeml500023.china.huawei.com (7.185.36.114) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.2; Fri, 28 May 2021 17:56:38 +0800
From: Shaokun Zhang <zhangshaokun@hisilicon.com>
To: <b.a.t.m.a.n@lists.open-mesh.org>, <netdev@vger.kernel.org>
Subject: [PATCH] batman-adv: Remove the repeated declaration
Date: Fri, 28 May 2021 17:56:25 +0800
Message-ID: <1622195785-55920-1-git-send-email-zhangshaokun@hisilicon.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
Content-Type: text/plain
X-Originating-IP: [10.69.192.56]
X-ClientProxiedBy: dggems704-chm.china.huawei.com (10.3.19.181) To
 dggpeml500023.china.huawei.com (7.185.36.114)
X-CFilter-Loop: Reflected
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1622195803; a=rsa-sha256;
	cv=none;
	b=KafEYv64fcxGPUoygIJ2KHOTUWWwsA34YG8TaHo1Dy9uPoRvjQAFH58eJaUKL0vX2fkNJS
	0LKfP3IjwPWG6+Uvk99aR1RmRY/GLB4KKfK2g2//vu+6/LxSQ0rywM4IeyupMfxzQIzEOd
	riZ719G5YMBMW/eTlT2qxaGA5blUDSI=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of zhangshaokun@hisilicon.com designates 45.249.212.189 as permitted sender) smtp.mailfrom=zhangshaokun@hisilicon.com
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1622195803;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
	bh=HgAJJUKJyBXg5gJzUIPils3qALGiMyCVdEllkNW7JGc=;
	b=k8RtdaiHO0LVtSuS0arSuPTfiS9IxBHGcu+OhYyVZWj9Tt1lWlh2yX89W6stLvh5ZfDZko
	9Ej+LBuEFcBZSCfi8dDecjDV0BByysPx5ahCjRzFunlMezHQzXiukbJDs72FlkvqJTdBvq
	FS3JVX5ygiFWcAi/tHDRISvETVZSo1k=
X-MailFrom: zhangshaokun@hisilicon.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
Message-ID-Hash: TQPXXSERQDWJYYTCGJRGDYJEDT63SFV7
X-Message-ID-Hash: TQPXXSERQDWJYYTCGJRGDYJEDT63SFV7
X-Mailman-Approved-At: Fri, 28 May 2021 09:58:29 +0200
CC: Shaokun Zhang <zhangshaokun@hisilicon.com>, Marek Lindner <mareklindner@neomailbox.ch>, Antonio Quartulli <a@unstable.cc>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/TQPXXSERQDWJYYTCGJRGDYJEDT63SFV7/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Function 'batadv_bla_claim_dump' is declared twice, so remove the
repeated declaration.

Cc: Marek Lindner <mareklindner@neomailbox.ch>
Cc: Simon Wunderlich <sw@simonwunderlich.de>
Cc: Antonio Quartulli <a@unstable.cc>
Cc: Sven Eckelmann <sven@narfation.org>
Signed-off-by: Shaokun Zhang <zhangshaokun@hisilicon.com>
---
 net/batman-adv/bridge_loop_avoidance.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/net/batman-adv/bridge_loop_avoidance.h b/net/batman-adv/bridge_loop_avoidance.h
index 5c22955bb9d5..8673a265995f 100644
--- a/net/batman-adv/bridge_loop_avoidance.h
+++ b/net/batman-adv/bridge_loop_avoidance.h
@@ -52,7 +52,6 @@ void batadv_bla_update_orig_address(struct batadv_priv *bat_priv,
 void batadv_bla_status_update(struct net_device *net_dev);
 int batadv_bla_init(struct batadv_priv *bat_priv);
 void batadv_bla_free(struct batadv_priv *bat_priv);
-int batadv_bla_claim_dump(struct sk_buff *msg, struct netlink_callback *cb);
 #ifdef CONFIG_BATMAN_ADV_DAT
 bool batadv_bla_check_claim(struct batadv_priv *bat_priv, u8 *addr,
 			    unsigned short vid);
-- 
2.7.4
