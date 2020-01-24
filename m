Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [IPv6:2a01:4f8:141:3341:78:46:248:236])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F57A148A2E
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 24 Jan 2020 15:43:07 +0100 (CET)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id C2B5980A3C;
	Fri, 24 Jan 2020 15:42:58 +0100 (CET)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by open-mesh.org (Postfix) with ESMTPS id 5F03E8021E
 for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 24 Jan 2020 15:25:45 +0100 (CET)
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A793720838;
 Fri, 24 Jan 2020 14:20:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579875614;
 bh=k0wiRCu1a2igqDZM9EqBr14Bpm2bdspGE7jmVAYkT1g=;
 h=From:To:Cc:Subject:Date:From;
 b=lTpDDWfEzbf9lh6a5Dkea6aHf5YXb/+VPjayAJePYzLutKQFptVGF3OECfh0hLsrZ
 RHLhxws1gkGTFUDSLl2erEOgMVrUdb00b8Lb1pfUgnQrC7WvnbmND+GF2oj0iGvZbm
 qYCOubc9IO7sp2PhhdP2YCc/toFoccnY8LIfJSNM=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.19 01/56] batman-adv: Fix DAT candidate selection on
 little endian systems
Date: Fri, 24 Jan 2020 09:19:17 -0500
Message-Id: <20200124142012.29752-1-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
Content-Transfer-Encoding: 8bit
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1579875945;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:dkim-signature;
 bh=ppscncM+9pWhROPDRoGOI1YMtH8D+9Euecj+aqY4go8=;
 b=R/3qj2fURfX8qIm+pQXaa+coYHExDalgQbC0ZQnvgRM/uM9nNjD2cq9mhrFpCFntnhQSpm
 zFj4ob0gjPWgVWICJwgyUzYWbBBsch5s8VfWw5eaxDkzr07+8yrDY0FEOLswm6bGRv5PMn
 pQ/B3xH6H1ZR9+Cueqv37Od0Wz7ezYE=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1579875945; a=rsa-sha256; cv=none;
 b=n/Fc7hDTGoaFrxOc2vjXp5LBl+29xjE0r7oYXIEJuQB09tUbIdfSCj+8OpO4Ct06b8jNif
 pn/xUVYkDT9F7WXcAKrE7Y3KpgTOu4JbX64XNLWCx06+c6TR2P0s8BjG7yUoL+lOzfbgHO
 99JUUcKKoQqqOcYP++dX7l8Y4dfdtys=
ARC-Authentication-Results: i=1; open-mesh.org;
 dkim=pass header.d=kernel.org header.s=default header.b=lTpDDWfE;
 spf=pass (open-mesh.org: domain of sashal@kernel.org designates 198.145.29.99
 as permitted sender) smtp.mailfrom=sashal@kernel.org
X-Mailman-Approved-At: Fri, 24 Jan 2020 15:42:54 +0100
X-BeenThere: b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
List-Unsubscribe: <https://lists.open-mesh.org/mm/options/b.a.t.m.a.n>,
 <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=unsubscribe>
List-Archive: <http://lists.open-mesh.org/pipermail/b.a.t.m.a.n/>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Subscribe: <https://lists.open-mesh.org/mm/listinfo/b.a.t.m.a.n>,
 <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=subscribe>
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n@lists.open-mesh.org>
Cc: Sasha Levin <sashal@kernel.org>, netdev@vger.kernel.org,
 b.a.t.m.a.n@lists.open-mesh.org
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

From: Sven Eckelmann <sven@narfation.org>

[ Upstream commit 4cc4a1708903f404d2ca0dfde30e71e052c6cbc9 ]

The distributed arp table is using a DHT to store and retrieve MAC address
information for an IP address. This is done using unicast messages to
selected peers. The potential peers are looked up using the IP address and
the VID.

While the IP address is always stored in big endian byte order, this is not
the case of the VID. It can (depending on the host system) either be big
endian or little endian. The host must therefore always convert it to big
endian to ensure that all devices calculate the same peers for the same
lookup data.

Fixes: be1db4f6615b ("batman-adv: make the Distributed ARP Table vlan aware")
Signed-off-by: Sven Eckelmann <sven@narfation.org>
Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 net/batman-adv/distributed-arp-table.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/net/batman-adv/distributed-arp-table.c b/net/batman-adv/distributed-arp-table.c
index 2895e3b26e930..f2dc7499d2663 100644
--- a/net/batman-adv/distributed-arp-table.c
+++ b/net/batman-adv/distributed-arp-table.c
@@ -251,6 +251,7 @@ static u32 batadv_hash_dat(const void *data, u32 size)
 	u32 hash = 0;
 	const struct batadv_dat_entry *dat = data;
 	const unsigned char *key;
+	__be16 vid;
 	u32 i;
 
 	key = (const unsigned char *)&dat->ip;
@@ -260,7 +261,8 @@ static u32 batadv_hash_dat(const void *data, u32 size)
 		hash ^= (hash >> 6);
 	}
 
-	key = (const unsigned char *)&dat->vid;
+	vid = htons(dat->vid);
+	key = (__force const unsigned char *)&vid;
 	for (i = 0; i < sizeof(dat->vid); i++) {
 		hash += key[i];
 		hash += (hash << 10);
-- 
2.20.1

