Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id CA107161CEB
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 17 Feb 2020 22:42:53 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id B3C72807DE;
	Mon, 17 Feb 2020 22:42:52 +0100 (CET)
Received: from gateway22.websitewelcome.com (gateway22.websitewelcome.com
 [192.185.47.79])
 by diktynna.open-mesh.org (Postfix) with ESMTPS id C90548001B
 for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 17 Feb 2020 22:40:21 +0100 (CET)
Received: from cm17.websitewelcome.com (cm17.websitewelcome.com [100.42.49.20])
 by gateway22.websitewelcome.com (Postfix) with ESMTP id 7199D68C0
 for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 17 Feb 2020 15:40:20 -0600 (CST)
Received: from gator4166.hostgator.com ([108.167.133.22]) by cmsmtp with SMTP
 id 3o7ojw6GeAGTX3o7oj7FBG; Mon, 17 Feb 2020 15:40:20 -0600
X-Authority-Reason: nr=8
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=embeddedor.com; s=default; h=Content-Type:MIME-Version:Message-ID:Subject:
 Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Up3NXkZ9MtOum0S7bVKL3huOyiNJmhlgLtMxveQ6vXs=; b=fQRsoHfiS305ia7mB6Tk7BCDh/
 zu8WsjITjAx40ENo5SGDIPWQAysvcReMoY1px5no4omSD8BUVo+NaTDaafIhYlocD9N2uhjf129cn
 q0LrXgtBRbkzJYjXJ5febzafT1u6lqfyUVKdIkDfNQaGdjCGxWnwYObZn+SMeBVTO+xO5+UsOgntB
 SUD4DLY8MuqHtf5wrhfWuTpdfgHWmUnDQ8/voYHayRkfOjtIKD4VOmLHOsm1sDkVCxG/hxiIk1r7b
 1ZsQSv8vO8GDPS5aWRsW0yXwDR4pHyPBTbPq6F4TZltM4pCR5sOSQ6mLRLRAqxOxlL3kIdTOAInYL
 nPOEal+w==;
Received: from [200.68.140.26] (port=16142 helo=embeddedor)
 by gator4166.hostgator.com with esmtpa (Exim 4.92)
 (envelope-from <gustavo@embeddedor.com>)
 id 1j3o7m-001GXx-EB; Mon, 17 Feb 2020 15:40:18 -0600
Date: Mon, 17 Feb 2020 15:43:00 -0600
From: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
To: Marek Lindner <mareklindner@neomailbox.ch>,
 Simon Wunderlich <sw@simonwunderlich.de>,
 Antonio Quartulli <a@unstable.cc>, Sven Eckelmann <sven@narfation.org>,
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
Subject: [PATCH][next] batman-adv: Replace zero-length array with
 flexible-array member
Message-ID: <20200217214300.GA14129@embeddedor>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator4166.hostgator.com
X-AntiAbuse: Original Domain - lists.open-mesh.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - embeddedor.com
X-BWhitelist: no
X-Source-IP: 200.68.140.26
X-Source-L: No
X-Exim-ID: 1j3o7m-001GXx-EB
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: (embeddedor) [200.68.140.26]:16142
X-Source-Auth: gustavo@embeddedor.com
X-Email-Count: 8
X-Source-Cap: Z3V6aWRpbmU7Z3V6aWRpbmU7Z2F0b3I0MTY2Lmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1581975622;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 dkim-signature; bh=Up3NXkZ9MtOum0S7bVKL3huOyiNJmhlgLtMxveQ6vXs=;
 b=jNcg7L1AG+HxBMr+IZcbwX1WSN5RpOoUG0LgiZ4ft9qZUOLR6fxiF9Xo2GU0ktjwOXIvmP
 d0D1V+VVbXyK4Wb6tFNUdZXfmVTRL5/kqX3rYR+7P/JAid29KfIrG4JRXSgNMooobgrVri
 mbQ+yAKvZkqF5Cqb3TZnACSMOdLKCEw=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1581975622; a=rsa-sha256; cv=none;
 b=LFXSdiqo3udFQRJ5D1TYqa9vbg5IgLtta31em8ckSJMj/rG8W3EsiMT3qGd7wYL3mxLyiE
 OVNf1fXEfYk7hiky+8MeBWw2TF8JZnhd/gGXqvC4xUmmryku4QRbfYlNdAQxjv1+iD8VKe
 GmWi8igatSEGqeKOEIeaxzWZ6k87KWM=
ARC-Authentication-Results: i=1; diktynna.open-mesh.org;
 dkim=pass header.d=embeddedor.com header.s=default header.b=fQRsoHfi;
 spf=pass (diktynna.open-mesh.org: domain of gustavo@embeddedor.com designates
 192.185.47.79 as permitted sender) smtp.mailfrom=gustavo@embeddedor.com
X-Mailman-Approved-At: Mon, 17 Feb 2020 22:42:50 +0100
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
Cc: netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org,
 linux-kernel@vger.kernel.org, "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

The current codebase makes use of the zero-length array language
extension to the C90 standard, but the preferred mechanism to declare
variable-length types such as these ones is a flexible array member[1][2],
introduced in C99:

struct foo {
        int stuff;
        struct boo array[];
};

By making use of the mechanism above, we will get a compiler warning
in case the flexible array does not occur last in the structure, which
will help us prevent some kind of undefined behavior bugs from being
inadvertently introduced[3] to the codebase from now on.

Also, notice that, dynamic memory allocations won't be affected by
this change:

"Flexible array members have incomplete type, and so the sizeof operator
may not be applied. As a quirk of the original implementation of
zero-length arrays, sizeof evaluates to zero."[1]

This issue was found with the help of Coccinelle.

[1] https://gcc.gnu.org/onlinedocs/gcc/Zero-Length.html
[2] https://github.com/KSPP/linux/issues/21
[3] commit 76497732932f ("cxgb3/l2t: Fix undefined behaviour")

Signed-off-by: Gustavo A. R. Silva <gustavo@embeddedor.com>
---
 net/batman-adv/distributed-arp-table.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/batman-adv/distributed-arp-table.c b/net/batman-adv/distributed-arp-table.c
index 3d21dd83f8cc..b85da4b7a77b 100644
--- a/net/batman-adv/distributed-arp-table.c
+++ b/net/batman-adv/distributed-arp-table.c
@@ -88,7 +88,7 @@ struct batadv_dhcp_packet {
 	__u8 sname[64];
 	__u8 file[128];
 	__be32 magic;
-	__u8 options[0];
+	__u8 options[];
 };
 
 #define BATADV_DHCP_YIADDR_LEN sizeof(((struct batadv_dhcp_packet *)0)->yiaddr)
-- 
2.25.0

