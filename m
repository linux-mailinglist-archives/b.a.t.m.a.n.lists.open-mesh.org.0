Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id D13F91B76D2
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 24 Apr 2020 15:20:53 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 8CFAA802C9;
	Fri, 24 Apr 2020 15:20:52 +0200 (CEST)
Received: from huawei.com (szxga07-in.huawei.com [45.249.212.35])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 2D20B80091
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 24 Apr 2020 15:14:52 +0200 (CEST)
Received: from DGGEMS403-HUB.china.huawei.com (unknown [172.30.72.58])
	by Forcepoint Email with ESMTP id 3DDF3565A1EA18174230;
	Fri, 24 Apr 2020 21:14:50 +0800 (CST)
Received: from localhost (10.166.215.154) by DGGEMS403-HUB.china.huawei.com
 (10.3.19.203) with Microsoft SMTP Server id 14.3.487.0; Fri, 24 Apr 2020
 21:14:39 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: <mareklindner@neomailbox.ch>, <sw@simonwunderlich.de>, <a@unstable.cc>,
	<sven@narfation.org>, <davem@davemloft.net>, <kuba@kernel.org>
Subject: [PATCH net-next] batman-adv: remove unsued inline function batadv_arp_change_timeout
Date: Fri, 24 Apr 2020 21:14:37 +0800
Message-ID: <20200424131437.48124-1-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.10.2.windows.1
MIME-Version: 1.0
Content-Type: text/plain
X-Originating-IP: [10.166.215.154]
X-CFilter-Loop: Reflected
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1587734092;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
	bh=K9gzpvl1glSN5zSQnJSJt6alLv63L+8F/DDpJ15shlA=;
	b=F8A99ir4kg5OdcGnxlGfqPqAPP5To+t3p4JJHYc65sqfZmeECPtDqjGvPRJA9P2ddlc+qc
	Ieue8bKnzbR0eNh1i/SkWvoIqXIzV8QfvLcyOdASjOH/5YsfHwV0akCD12YTJBGKBR9/kk
	vwk+mAY/XxxHre5RrZ7Zcc8fkB671LQ=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1587734092; a=rsa-sha256;
	cv=none;
	b=pyl8MXqpXlVzLgSQInSJm3DMGVB3AmttDWH1jLeSLC0KDZl+AztjRY7jzvPthElroIw4kv
	E25ArHMzJsCNpXeJPb6XmyAWdx9KjB19zf4WGnxHw4Y3hMiSMsO20u4Y8knD1eShRt9CHz
	9MHFoLOe+l3xuP5WS/sZ2s++NArbpYg=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of yuehaibing@huawei.com designates 45.249.212.35 as permitted sender) smtp.mailfrom=yuehaibing@huawei.com
X-MailFrom: yuehaibing@huawei.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
Message-ID-Hash: RE5DHHPGIUI4KWQSO3HIBYHI473CDMKP
X-Message-ID-Hash: RE5DHHPGIUI4KWQSO3HIBYHI473CDMKP
X-Mailman-Approved-At: Fri, 24 Apr 2020 13:20:50 +0200
CC: b.a.t.m.a.n@lists.open-mesh.org, netdev@vger.kernel.org, linux-kernel@vger.kernel.org, YueHaibing <yuehaibing@huawei.com>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/RE5DHHPGIUI4KWQSO3HIBYHI473CDMKP/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

There's no callers in-tree.

Signed-off-by: YueHaibing <yuehaibing@huawei.com>
---
 net/batman-adv/distributed-arp-table.h | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/net/batman-adv/distributed-arp-table.h b/net/batman-adv/distributed-arp-table.h
index 2bff2f4a325c..4e031661682a 100644
--- a/net/batman-adv/distributed-arp-table.h
+++ b/net/batman-adv/distributed-arp-table.h
@@ -163,11 +163,6 @@ static inline void batadv_dat_init_own_addr(struct batadv_priv *bat_priv,
 {
 }
 
-static inline void batadv_arp_change_timeout(struct net_device *soft_iface,
-					     const char *name)
-{
-}
-
 static inline int batadv_dat_init(struct batadv_priv *bat_priv)
 {
 	return 0;
-- 
2.17.1

