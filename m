Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [IPv6:2a01:4f8:141:3341:78:46:248:236])
	by mail.lfdr.de (Postfix) with ESMTPS id D621B8629D
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu,  8 Aug 2019 15:06:38 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 9282D827B6;
	Thu,  8 Aug 2019 15:06:26 +0200 (CEST)
Received: from mail.mail.packetmixer.de (packetmixer.de
 [IPv6:2001:4d88:2000:24::c0de])
 by open-mesh.org (Postfix) with ESMTPS id 75C5081CE3
 for <b.a.t.m.a.n@lists.open-mesh.org>; Thu,  8 Aug 2019 15:06:22 +0200 (CEST)
Received: from kero.packetmixer.de
 (p200300C5971AA600E0A7EA13A3520353.dip0.t-ipconnect.de
 [IPv6:2003:c5:971a:a600:e0a7:ea13:a352:353])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mail.packetmixer.de (Postfix) with ESMTPSA id 2A00862076;
 Thu,  8 Aug 2019 15:06:22 +0200 (CEST)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: davem@davemloft.net
Subject: [PATCH 2/4] batman-adv: Replace usage of strlcpy with strscpy
Date: Thu,  8 Aug 2019 15:06:17 +0200
Message-Id: <20190808130619.4481-3-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190808130619.4481-1-sw@simonwunderlich.de>
References: <20190808130619.4481-1-sw@simonwunderlich.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-BeenThere: b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 2.1.23
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

The strscpy was introduced to fix some API problems around strlcpy. And
checkpatch started to report recently that strlcpy is deprecated and
strscpy is preferred.

The functionality introduced in commit 30035e45753b ("string: provide
strscpy()") improves following points compared to strlcpy:

* it doesn't read from memory beyond (src + size)
* provides an easy way to check for destination buffer overflow
* robust against asynchronous source buffer changes

Since batman-adv doesn't depend on any of the previously mentioned behavior
changes, the usage of strlcpy can simply be replaced by strscpy to silence
checkpatch.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
---
 net/batman-adv/soft-interface.c | 8 ++++----
 net/batman-adv/sysfs.c          | 2 +-
 2 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/net/batman-adv/soft-interface.c b/net/batman-adv/soft-interface.c
index c7a2e77ca1da..a1146cb10919 100644
--- a/net/batman-adv/soft-interface.c
+++ b/net/batman-adv/soft-interface.c
@@ -943,10 +943,10 @@ static const struct net_device_ops batadv_netdev_ops = {
 static void batadv_get_drvinfo(struct net_device *dev,
 			       struct ethtool_drvinfo *info)
 {
-	strlcpy(info->driver, "B.A.T.M.A.N. advanced", sizeof(info->driver));
-	strlcpy(info->version, BATADV_SOURCE_VERSION, sizeof(info->version));
-	strlcpy(info->fw_version, "N/A", sizeof(info->fw_version));
-	strlcpy(info->bus_info, "batman", sizeof(info->bus_info));
+	strscpy(info->driver, "B.A.T.M.A.N. advanced", sizeof(info->driver));
+	strscpy(info->version, BATADV_SOURCE_VERSION, sizeof(info->version));
+	strscpy(info->fw_version, "N/A", sizeof(info->fw_version));
+	strscpy(info->bus_info, "batman", sizeof(info->bus_info));
 }
 
 /* Inspired by drivers/net/ethernet/dlink/sundance.c:1702
diff --git a/net/batman-adv/sysfs.c b/net/batman-adv/sysfs.c
index 1efcb97039cd..e5bbc28ed12c 100644
--- a/net/batman-adv/sysfs.c
+++ b/net/batman-adv/sysfs.c
@@ -1070,7 +1070,7 @@ static ssize_t batadv_store_mesh_iface(struct kobject *kobj,
 	dev_hold(net_dev);
 	INIT_WORK(&store_work->work, batadv_store_mesh_iface_work);
 	store_work->net_dev = net_dev;
-	strlcpy(store_work->soft_iface_name, buff,
+	strscpy(store_work->soft_iface_name, buff,
 		sizeof(store_work->soft_iface_name));
 
 	queue_work(batadv_event_workqueue, &store_work->work);
-- 
2.20.1

