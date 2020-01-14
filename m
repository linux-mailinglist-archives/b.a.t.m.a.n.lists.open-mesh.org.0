Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [78.46.248.236])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C12013AC49
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 14 Jan 2020 15:26:07 +0100 (CET)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 06E97809F3;
	Tue, 14 Jan 2020 15:25:38 +0100 (CET)
Received: from simonwunderlich.de (packetmixer.de
 [IPv6:2001:4d88:2000:24::c0de])
 by open-mesh.org (Postfix) with ESMTPS id 5E6E380340
 for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 14 Jan 2020 15:25:31 +0100 (CET)
Received: from kero.packetmixer.de
 (p200300C5970F1B0095082C17D9AE8553.dip0.t-ipconnect.de
 [IPv6:2003:c5:970f:1b00:9508:2c17:d9ae:8553])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by simonwunderlich.de (Postfix) with ESMTPSA id C843D6205D;
 Tue, 14 Jan 2020 15:16:48 +0100 (CET)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: davem@davemloft.net
Subject: [PATCH 1/1] batman-adv: Fix DAT candidate selection on little endian
 systems
Date: Tue, 14 Jan 2020 15:16:46 +0100
Message-Id: <20200114141646.23598-2-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200114141646.23598-1-sw@simonwunderlich.de>
References: <20200114141646.23598-1-sw@simonwunderlich.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1579011931;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Oth8F/a/VC6RnEv/xzWO9Vb1geMi24pHAR+Sm3jQZQk=;
 b=lJSaCpr0sD2OmGSAy6uObw+zj4ukrSTXk8rtDKr8b3E3YnNfvOdCvSTMkXYIxVKbmoo56G
 1RnXl8dPsAgw3+bJU6c0qQNOqSnlh/8NrRe9sHNh36NIB3prvhj/tgPgRfn0QAa55HyPQK
 cYf2/IbrH+9rFaVmlnnUN8b6lZ74Vxk=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1579011931; a=rsa-sha256; cv=none;
 b=QIutf5YOR6jAdHIBXytbwJ+P5Yq7uzvdceB+r24jbYFhQDE/7ZQqz0pRjGomSAEIWIORiZ
 gBAmNA685dc+kVEb5HSDRnjWEoRx2aWv6a4NZT8xkfsPv4nrdcOA3J2ZOC+1DVgf2cK6PF
 LZvDPzQXRfJKs+EfZVPDmoGsmySxu6k=
ARC-Authentication-Results: i=1; open-mesh.org; dkim=none;
 spf=pass (open-mesh.org: domain of sw@simonwunderlich.de designates
 2001:4d88:2000:24::c0de as permitted sender)
 smtp.mailfrom=sw@simonwunderlich.de
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
Cc: netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

From: Sven Eckelmann <sven@narfation.org>

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
---
 net/batman-adv/distributed-arp-table.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/net/batman-adv/distributed-arp-table.c b/net/batman-adv/distributed-arp-table.c
index b0af3a11d406..ec7bf5a4a9fc 100644
--- a/net/batman-adv/distributed-arp-table.c
+++ b/net/batman-adv/distributed-arp-table.c
@@ -285,6 +285,7 @@ static u32 batadv_hash_dat(const void *data, u32 size)
 	u32 hash = 0;
 	const struct batadv_dat_entry *dat = data;
 	const unsigned char *key;
+	__be16 vid;
 	u32 i;
 
 	key = (const unsigned char *)&dat->ip;
@@ -294,7 +295,8 @@ static u32 batadv_hash_dat(const void *data, u32 size)
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

