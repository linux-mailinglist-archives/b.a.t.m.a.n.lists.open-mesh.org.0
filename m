Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id B920CAB0E5F
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri,  9 May 2025 11:12:56 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 92EB6841D0
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri,  9 May 2025 11:12:56 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1746781976;
 b=JICg7msZu/d/1juxv/aP3lR8M8HgeFCWwkHcrUdE+/7PRzogSJ3kUiKgA0KnMZCIYyxqX
 /0p1bQhujZhyTRcTu147u589MfTXeqgooO1k7iePkn7EfsvlqsRtn2tpMvXYuxh13QPLqaY
 Kqt7zfny+r2j3B99xvU+l/+o2L0AKgY=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1746781976; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=l3L4FwPcr277dVrHXrOo1WDJrFUnjiEmZ5fP8Vo7iMU=;
 b=Lc0/uZxNbqHyBa67Q2jBPiDDB2AZ4J5dyxKP+Lqib6MU8udxPbM4P/pYSDdrYjaPY0AKc
 4pI0pyCiIs4CezAi8PTlIKiKBIquAmPvdTW+eScUPv/8nSKlrLu3MRnclkQ007AlqHZ7AjM
 YJc9IqyqEOhF7eBryi5e800KTBssCAw=
ARC-Authentication-Results: i=2; open-mesh.org; dkim=fail;
  arc=pass;
  dmarc=fail (Used From Domain Record) header.from=simonwunderlich.de
 policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=fail; arc=pass;
 dmarc=fail (Used From Domain Record) header.from=simonwunderlich.de
 policy.dmarc=none
Received: from mail.simonwunderlich.de (mail.simonwunderlich.de
 [IPv6:2a01:4f8:c17:e8c0::1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 77BDB84613
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri,  9 May 2025 11:10:45 +0200 (CEST)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1746781845;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=l3L4FwPcr277dVrHXrOo1WDJrFUnjiEmZ5fP8Vo7iMU=;
	b=O7iPcncecXwUaHyrCyFCZK62AeNe3TrfjjNKb+Sa5BXdQ0xY5ThfVc0iywH0ee8p605rb+
	vQlvXjsA++51sc1uA2YYTXD72DzTk6NotM9Kl6XckHqMiycDSddZr2DrGup/vBHNPpmJEh
	Ch7vfLllueecI0MPwtFdzre/Ej9FYsQ=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates
 2a01:4f8:c17:e8c0::1 as permitted sender)
 smtp.mailfrom=sw@simonwunderlich.de;
	dmarc=pass (policy=none) header.from=simonwunderlich.de
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1746781845; a=rsa-sha256;
	cv=none;
	b=NevhB3St7hTGNs3uJlVMTc8QdO2UoaC7vUB5Bq1T9XT/coXl5bAFlscPE8sDgJEZVBjbow
	TPg61A7YgOUiUXQZivFK+EqIFhiWiri/fi59GIXuESs08eG4nXpv3hmoMXWNUGU1ZSRrqh
	l6QJl9G/BUt/Kgjwz4R1FIko5cQnKlA=
Received: from kero.packetmixer.de
 (p200300c59736C7d829705d90aB67a755.dip0.t-ipconnect.de
 [IPv6:2003:c5:9736:c7d8:2970:5d90:ab67:a755])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits)
 server-digest SHA256)
	(No client certificate requested)
	by mail.simonwunderlich.de (Postfix) with ESMTPSA id CFD73FA362;
	Fri,  9 May 2025 11:10:44 +0200 (CEST)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: kuba@kernel.org,
	davem@davemloft.net
Cc: netdev@vger.kernel.org,
	b.a.t.m.a.n@lists.open-mesh.org,
	Antonio Quartulli <antonio@mandelbit.com>,
	Simon Wunderlich <sw@simonwunderlich.de>
Subject: [PATCH net-next 3/5] batman-adv: no need to start/stop queue on
 mesh-iface
Date: Fri,  9 May 2025 11:10:39 +0200
Message-Id: <20250509091041.108416-4-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250509091041.108416-1-sw@simonwunderlich.de>
References: <20250509091041.108416-1-sw@simonwunderlich.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Message-ID-Hash: WZ6VX3RDCMEG475R2NGIUGVJKRKU5W7F
X-Message-ID-Hash: WZ6VX3RDCMEG475R2NGIUGVJKRKU5W7F
X-MailFrom: sw@simonwunderlich.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency;
 loop; banned-address; member-moderation;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-0;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-1;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-2; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.8
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/WZ6VX3RDCMEG475R2NGIUGVJKRKU5W7F/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

From: Antonio Quartulli <antonio@mandelbit.com>

The batman-adv mesh-iface is flagged with IFF_NO_QUEUE,
therefore there is no reason to start/stop any queue in
ndo_open/close.

Signed-off-by: Antonio Quartulli <antonio@mandelbit.com>
Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
---
 net/batman-adv/mesh-interface.c | 14 --------------
 1 file changed, 14 deletions(-)

diff --git a/net/batman-adv/mesh-interface.c b/net/batman-adv/mesh-interface.c
index 59e7b5aacbc9..e48b683a033f 100644
--- a/net/batman-adv/mesh-interface.c
+++ b/net/batman-adv/mesh-interface.c
@@ -77,18 +77,6 @@ int batadv_skb_head_push(struct sk_buff *skb, unsigned int len)
 	return 0;
 }
 
-static int batadv_interface_open(struct net_device *dev)
-{
-	netif_start_queue(dev);
-	return 0;
-}
-
-static int batadv_interface_release(struct net_device *dev)
-{
-	netif_stop_queue(dev);
-	return 0;
-}
-
 /**
  * batadv_sum_counter() - Sum the cpu-local counters for index 'idx'
  * @bat_priv: the bat priv with all the mesh interface information
@@ -890,8 +878,6 @@ static int batadv_meshif_slave_del(struct net_device *dev,
 
 static const struct net_device_ops batadv_netdev_ops = {
 	.ndo_init = batadv_meshif_init_late,
-	.ndo_open = batadv_interface_open,
-	.ndo_stop = batadv_interface_release,
 	.ndo_get_stats = batadv_interface_stats,
 	.ndo_vlan_rx_add_vid = batadv_interface_add_vid,
 	.ndo_vlan_rx_kill_vid = batadv_interface_kill_vid,
-- 
2.39.5

