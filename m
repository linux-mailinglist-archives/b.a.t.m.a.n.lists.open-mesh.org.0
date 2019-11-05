Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [78.46.248.236])
	by mail.lfdr.de (Postfix) with ESMTPS id C9458EF9DE
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue,  5 Nov 2019 10:46:18 +0100 (CET)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 2004780C3F;
	Tue,  5 Nov 2019 10:45:36 +0100 (CET)
Received: from simonwunderlich.de (simonwunderlich.de [79.140.42.25])
 by open-mesh.org (Postfix) with ESMTPS id 7A35F804EF
 for <b.a.t.m.a.n@lists.open-mesh.org>; Tue,  5 Nov 2019 10:45:22 +0100 (CET)
Received: from kero.packetmixer.de
 (p200300C5970F5D00F0ACF07C9CF9C7D8.dip0.t-ipconnect.de
 [IPv6:2003:c5:970f:5d00:f0ac:f07c:9cf9:c7d8])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by simonwunderlich.de (Postfix) with ESMTPSA id 6B48E6205F;
 Tue,  5 Nov 2019 10:35:35 +0100 (CET)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: davem@davemloft.net
Subject: [PATCH 5/5] batman-adv: Drop lockdep.h include for soft-interface.c
Date: Tue,  5 Nov 2019 10:35:31 +0100
Message-Id: <20191105093531.11398-6-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191105093531.11398-1-sw@simonwunderlich.de>
References: <20191105093531.11398-1-sw@simonwunderlich.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1572947122;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=gjdZ7tFpyb/IDXtc+NGPywmmPRLAbGFv/JAcq7vDNLQ=;
 b=265LneLjVdra2THoqWED/66ktjDAvUfVUVXcyChPo+2F038iokKx1czw9TPkRsOml/RL5G
 PYwxK4mWrUIBqJlohO8hg7KksjBu1UWYZQyq9zaL4X35PCXmqb6Oo6V0Cxzmxq6kzx1eWw
 bM3f2cri2EivHfI4l5vqshbwLhGVEi4=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1572947122; a=rsa-sha256; cv=none;
 b=1Um8803bSXPuTUeI2N5bR1kybF5muodnVJ6NPBJUhvHkR0VKMk67cdPtyHB9z6ixzLdKZK
 dozaT+alxex8ptHaRksuarnfdwIr0u85ufL0U61GnVnJiNHNC4CC4SToDxVVzyKVkdzLUB
 c7162xlZUwNXTjVv8Na3Fm6GHgbILtw=
ARC-Authentication-Results: i=1; open-mesh.org; dkim=none;
 spf=pass (open-mesh.org: domain of sw@simonwunderlich.de designates
 79.140.42.25 as permitted sender) smtp.mailfrom=sw@simonwunderlich.de
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

The commit ab92d68fc22f ("net: core: add generic lockdep keys") removed
all lockdep functionality from soft-interface.c but didn't remove the
include for this functionality.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
---
 net/batman-adv/soft-interface.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/net/batman-adv/soft-interface.c b/net/batman-adv/soft-interface.c
index 697f2da12487..832e156c519e 100644
--- a/net/batman-adv/soft-interface.c
+++ b/net/batman-adv/soft-interface.c
@@ -22,7 +22,6 @@
 #include <linux/kernel.h>
 #include <linux/kref.h>
 #include <linux/list.h>
-#include <linux/lockdep.h>
 #include <linux/netdevice.h>
 #include <linux/netlink.h>
 #include <linux/percpu.h>
-- 
2.20.1

