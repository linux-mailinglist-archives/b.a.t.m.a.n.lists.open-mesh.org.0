Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [78.46.248.236])
	by mail.lfdr.de (Postfix) with ESMTPS id 5630413AC42
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 14 Jan 2020 15:25:31 +0100 (CET)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 7ADCE80A22;
	Tue, 14 Jan 2020 15:24:15 +0100 (CET)
Received: from simonwunderlich.de (packetmixer.de
 [IPv6:2001:4d88:2000:24::c0de])
 by open-mesh.org (Postfix) with ESMTPS id 29F12803AF
 for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 14 Jan 2020 15:23:55 +0100 (CET)
Received: from kero.packetmixer.de
 (p200300C5970F1B0095082C17D9AE8553.dip0.t-ipconnect.de
 [IPv6:2003:c5:970f:1b00:9508:2c17:d9ae:8553])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by simonwunderlich.de (Postfix) with ESMTPSA id E97CF62072;
 Tue, 14 Jan 2020 15:23:54 +0100 (CET)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: davem@davemloft.net
Subject: [PATCH 7/7] batman-adv: Disable CONFIG_BATMAN_ADV_SYSFS by default
Date: Tue, 14 Jan 2020 15:23:51 +0100
Message-Id: <20200114142351.26622-8-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200114142351.26622-1-sw@simonwunderlich.de>
References: <20200114142351.26622-1-sw@simonwunderlich.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1579011835;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=E2Nxq2hOz57h0dWxULb+FbmsM7B95qR8cdxylXrSnLE=;
 b=gcA4MyEC/r5K1ePknrcEBoHTfKbyeZ0wta9qglKZn+t5C0WZ1lgAlrJ7nfJXQQu9Agt2XM
 TxxNVxxYWqhNDkbAqP+8Sm4Gg8UWnyUoSO0bwBlxWdDhtufByjW/hBdujvA/bWMVWLXeZC
 +FM0h0hD3XRNvK5qqEVTLAQicKB5Huc=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1579011835; a=rsa-sha256; cv=none;
 b=I30VcgKtoBg+YhqFrdSEzCj+5ytfucWRgeVGrgVhK06Ruv1C6VrUvEOUa/kTUVOUoj/DQG
 J/rRuHPuCDenCEMId4lbkFZlGCWv2xRDVHm/Eovn1oC7nqnOxyWX5O/Zxc2d9MhuxmkjvP
 3jk58JymZJTzu5UBBqUD+aH7RTPU1lQ=
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

The sysfs support in batman-adv is deprecated since a while and will be
removed completely next year.

All tools which were known to the batman-adv development team are
supporting the batman-adv netlink interface since a while. Thus
disabling CONFIG_BATMAN_ADV_SYSFS by default should not cause problems on
most systems. It is still possible to enable it in case it is still
required in a specific setup.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
---
 net/batman-adv/Kconfig | 1 -
 1 file changed, 1 deletion(-)

diff --git a/net/batman-adv/Kconfig b/net/batman-adv/Kconfig
index 045b2b183213..c762758a4649 100644
--- a/net/batman-adv/Kconfig
+++ b/net/batman-adv/Kconfig
@@ -100,7 +100,6 @@ config BATMAN_ADV_DEBUG
 config BATMAN_ADV_SYSFS
 	bool "batman-adv sysfs entries"
 	depends on BATMAN_ADV
-	default y
 	help
 	  Say Y here if you want to enable batman-adv device configuration and
 	  status interface through sysfs attributes. It is replaced by the
-- 
2.20.1

