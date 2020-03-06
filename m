Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id BC86717BC75
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri,  6 Mar 2020 13:13:29 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 702148098B;
	Fri,  6 Mar 2020 13:13:28 +0100 (CET)
Received: from simonwunderlich.de (packetmixer.de
 [IPv6:2001:4d88:2000:24::c0de])
 by diktynna.open-mesh.org (Postfix) with ESMTPS id 7ADAC801D6
 for <b.a.t.m.a.n@lists.open-mesh.org>; Fri,  6 Mar 2020 13:13:19 +0100 (CET)
Received: from kero.packetmixer.de
 (p200300C597077300B0A48B46F0435C76.dip0.t-ipconnect.de
 [IPv6:2003:c5:9707:7300:b0a4:8b46:f043:5c76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by simonwunderlich.de (Postfix) with ESMTPSA id 40D5B6205E;
 Fri,  6 Mar 2020 13:13:19 +0100 (CET)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: davem@davemloft.net
Subject: [PATCH 1/3] batman-adv: Start new development cycle
Date: Fri,  6 Mar 2020 13:13:15 +0100
Message-Id: <20200306121317.28931-2-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200306121317.28931-1-sw@simonwunderlich.de>
References: <20200306121317.28931-1-sw@simonwunderlich.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1583496799;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=j02pm7EYl4aZr4F7SbbUXiNe6gVDfIF4HYHeQfkR3pI=;
 b=VH+BseI3wTV3mfXqS0t5z3knSM0OBr6YVxn3JRmJ/M+rwPoNTHTCa8sH1MljyTmRe4RO+l
 T4ot0ZJ8TVOGLdcdHfR1/KBtafvzArmw5V50Xb+sOgc1kNGeQVcyFjYJZMYorKqkUcKA/Z
 V0Ec8qT+FdH1aqQCudwjyRBMDSl/U3o=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1583496799; a=rsa-sha256; cv=none;
 b=CSmeR8V/hQcrDaI7MCWS4k/MwtI9dqZJAmwtFNFhY5CunzrUZhVgm9KjlogIwo5X4jRgWe
 8ubrMsvji8xkEck5WPlwtU7XPnX3XbwPCYv3vps84x9ptSt6gSlEo2BT8YPoocpxt58H6j
 Rvb/LxKAcS8+sj/dzDBWB2tc1DbgMGQ=
ARC-Authentication-Results: i=1; diktynna.open-mesh.org; dkim=none;
 spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates
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

Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
---
 net/batman-adv/main.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/batman-adv/main.h b/net/batman-adv/main.h
index 692306df7b6f..2a234d0ad445 100644
--- a/net/batman-adv/main.h
+++ b/net/batman-adv/main.h
@@ -13,7 +13,7 @@
 #define BATADV_DRIVER_DEVICE "batman-adv"
 
 #ifndef BATADV_SOURCE_VERSION
-#define BATADV_SOURCE_VERSION "2020.0"
+#define BATADV_SOURCE_VERSION "2020.1"
 #endif
 
 /* B.A.T.M.A.N. parameters */
-- 
2.20.1

