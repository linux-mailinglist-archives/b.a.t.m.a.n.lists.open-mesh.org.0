Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [78.46.248.236])
	by mail.lfdr.de (Postfix) with ESMTPS id EC851EF9DF
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue,  5 Nov 2019 10:46:26 +0100 (CET)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 42CDD80C4B;
	Tue,  5 Nov 2019 10:45:44 +0100 (CET)
Received: from simonwunderlich.de (packetmixer.de
 [IPv6:2001:4d88:2000:24::c0de])
 by open-mesh.org (Postfix) with ESMTPS id 8A72E8085A
 for <b.a.t.m.a.n@lists.open-mesh.org>; Tue,  5 Nov 2019 10:45:22 +0100 (CET)
Received: from kero.packetmixer.de
 (p200300C5970F5D00F0ACF07C9CF9C7D8.dip0.t-ipconnect.de
 [IPv6:2003:c5:970f:5d00:f0ac:f07c:9cf9:c7d8])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by simonwunderlich.de (Postfix) with ESMTPSA id E7BDF62059;
 Tue,  5 Nov 2019 10:35:33 +0100 (CET)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: davem@davemloft.net
Subject: [PATCH 1/5] batman-adv: Start new development cycle
Date: Tue,  5 Nov 2019 10:35:27 +0100
Message-Id: <20191105093531.11398-2-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191105093531.11398-1-sw@simonwunderlich.de>
References: <20191105093531.11398-1-sw@simonwunderlich.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1572947123;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=BS0eNUcnP1bvpjDac7kQtIO75UOrrGM66UcQD7v33SE=;
 b=RTkEQ8iFSASsNCsg19BFBuaAq03K4JhDF+I9b7aYY7YFHC6Bz5RLF9Pk/uLwJsCfy8aE+s
 GJ9NNcj+DFD+rKXZOSnSkZWXk4NaPzzd/9ucfKrCxxBXgha+hQnjn7a0AJfgo2ZT7dcHLx
 RNt/1lPYK2tRQJh4216BvZyYx/17HpU=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1572947123; a=rsa-sha256; cv=none;
 b=Oe/1LfY/391ghM3lxpRoANYHbi5m7SOajax0Tf8BdS1hMaGOYDU3xXPTHMPkllh/zlBgEy
 OOiionvcwDRCzGQ8yx0CWPDq2lqg2+2Jhem+C07ERZ8WGrQT5PrLYLM9Qv7G7yJzj2viJ5
 2jJaiPx/OMLlIrNNIi4FP9eyRzrDi8g=
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

Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
---
 net/batman-adv/main.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/batman-adv/main.h b/net/batman-adv/main.h
index 6967f2e4c3f4..c7b340ddd0e7 100644
--- a/net/batman-adv/main.h
+++ b/net/batman-adv/main.h
@@ -13,7 +13,7 @@
 #define BATADV_DRIVER_DEVICE "batman-adv"
 
 #ifndef BATADV_SOURCE_VERSION
-#define BATADV_SOURCE_VERSION "2019.4"
+#define BATADV_SOURCE_VERSION "2019.5"
 #endif
 
 /* B.A.T.M.A.N. parameters */
-- 
2.20.1

