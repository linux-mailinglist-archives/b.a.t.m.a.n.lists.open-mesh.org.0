Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [78.46.248.236])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C557148A33
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 24 Jan 2020 15:43:31 +0100 (CET)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id C77B480B95;
	Fri, 24 Jan 2020 15:43:03 +0100 (CET)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by open-mesh.org (Postfix) with ESMTPS id 7D74580689
 for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 24 Jan 2020 15:30:45 +0100 (CET)
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6280222464;
 Fri, 24 Jan 2020 14:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579875743;
 bh=JndqAaWRMQuy3nm1R4jhkd9XYrsf/vtVro7uCNEVFKM=;
 h=From:To:Cc:Subject:Date:From;
 b=KI/GcPLd6KfqXV9yU5S80WXJbymr8HUI7P/pB1VyFJM3NuPllbY6Lc/0NAhhrw3MI
 vRFRz5KND5iBuTf0b88ErKMfHU+wtPDnF0AtEDdNPFa9OiY0Of/RJ3C3ECYgpBcfTA
 c0PNvEWIespWB5mK+7IDIbbcjktTEendDzmkPPWo=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.4 1/9] batman-adv: Fix DAT candidate selection on
 little endian systems
Date: Fri, 24 Jan 2020 09:22:13 -0500
Message-Id: <20200124142221.31201-1-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
Content-Transfer-Encoding: 8bit
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1579876245;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:dkim-signature;
 bh=ZxmWBtVP1QrzMTAJsP1tO9NYixg8cokCor1HWZ4IqjI=;
 b=OQn2bLOGzd9ZwL3ctIGVdl4nHojilXvx3DqjUKUdtBPFZFra6J4JQcokdVSEgLUIcoCLfd
 2wwU8CDJ3katIPz9t4CeeNMrmfSszhcz2nA+8SALRxW2byrfrR+FBmAKkFlrhkdnOPLdtM
 lQSYooTuMPR5vNj8aQmgUe4aqhb4xR0=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1579876245; a=rsa-sha256; cv=none;
 b=ZVd/3uLIAXmfSLfkxi6qgl3PmvLLLKuv+3Z6L07Tv58gdxsxvt4No6mXAb+vCfenTDaaRT
 kHrShGe9dStK0ewCB9THmV1y6NceojcB9ylJoEzA79PNaKd5OijAok4H3Z4UfNQW8Z9ElJ
 jkBh2e8y1uHK/ahqlcqRpPjZy3vBF9Y=
ARC-Authentication-Results: i=1; open-mesh.org;
 dkim=pass header.d=kernel.org header.s=default header.b=KI/GcPLd;
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
index c2dff7c6e9607..76808c5e81836 100644
--- a/net/batman-adv/distributed-arp-table.c
+++ b/net/batman-adv/distributed-arp-table.c
@@ -226,6 +226,7 @@ static u32 batadv_hash_dat(const void *data, u32 size)
 	u32 hash = 0;
 	const struct batadv_dat_entry *dat = data;
 	const unsigned char *key;
+	__be16 vid;
 	u32 i;
 
 	key = (const unsigned char *)&dat->ip;
@@ -235,7 +236,8 @@ static u32 batadv_hash_dat(const void *data, u32 size)
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

