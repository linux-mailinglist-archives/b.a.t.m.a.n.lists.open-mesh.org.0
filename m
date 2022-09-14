Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 9389B5B8EF1
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 14 Sep 2022 20:37:29 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 69E8181529;
	Wed, 14 Sep 2022 20:37:28 +0200 (CEST)
Received: from s2.neomailbox.net (s2.neomailbox.net [5.148.176.60])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 8B67F808E5
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 14 Sep 2022 20:37:24 +0200 (CEST)
From: Marek Lindner <mareklindner@neomailbox.ch>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: [PATCH] batman-adv: remove unused struct definitions
Date: Wed, 14 Sep 2022 20:37:11 +0200
Message-Id: <20220914183711.1399253-1-mareklindner@neomailbox.ch>
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1663180644;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=5vjxo3jQeNiaHStphn1AZHVUwqMH5EK2O47+W40bIPs=;
	b=p7aX/61HR5DH/KVnaOLxNIhX5IGZVbghMdOxwwMZ6B+Sk5fY70vjh8DZad9Cp1zWLlU6gh
	wfZy5kn7CzQVZqCYqB+pRxEAQG5DMub2/HxqM3ySBJoh+mMKFA/eNNybDGWkFzpqPNd5U4
	tbCPb/flzdjS0IzlZnPx+aabq0Aby9U=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	dmarc=none;
	spf=pass (diktynna.open-mesh.org: domain of mareklindner@neomailbox.ch designates 5.148.176.60 as permitted sender) smtp.mailfrom=mareklindner@neomailbox.ch
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1663180644; a=rsa-sha256;
	cv=none;
	b=Tll6+qu8MUojg+cVdFi3DTy3T7xSPOHTKkTNejw0WCjZ9R2Cq3ol+lsFYXc4pHe1JweQtr
	X1V4HrDnzAveKfvAnMhIMbePdHEsAN69yP6vzvmvYo5n7LYcNHuEYFe9fqam/WdUwQBOfL
	CAM/Tu14VnSbhQSU/RYDFkWuOkT2E40=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: P4PVTU7BDQKK6ZRTGNJ4QJGOQEBIEROG
X-Message-ID-Hash: P4PVTU7BDQKK6ZRTGNJ4QJGOQEBIEROG
X-MailFrom: mareklindner@neomailbox.ch
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: Marek Lindner <mareklindner@neomailbox.ch>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/P4PVTU7BDQKK6ZRTGNJ4QJGOQEBIEROG/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Signed-off-by: Marek Lindner <mareklindner@neomailbox.ch>
---
 net/batman-adv/types.h | 39 ---------------------------------------
 1 file changed, 39 deletions(-)

diff --git a/net/batman-adv/types.h b/net/batman-adv/types.h
index 2be5d4a7..758cd797 100644
--- a/net/batman-adv/types.h
+++ b/net/batman-adv/types.h
@@ -1740,45 +1740,6 @@ struct batadv_priv {
 #endif
 };
=20
-/**
- * struct batadv_socket_client - layer2 icmp socket client data
- */
-struct batadv_socket_client {
-	/**
-	 * @queue_list: packet queue for packets destined for this socket clien=
t
-	 */
-	struct list_head queue_list;
-
-	/** @queue_len: number of packets in the packet queue (queue_list) */
-	unsigned int queue_len;
-
-	/** @index: socket client's index in the batadv_socket_client_hash */
-	unsigned char index;
-
-	/** @lock: lock protecting queue_list, queue_len & index */
-	spinlock_t lock;
-
-	/** @queue_wait: socket client's wait queue */
-	wait_queue_head_t queue_wait;
-
-	/** @bat_priv: pointer to soft_iface this client belongs to */
-	struct batadv_priv *bat_priv;
-};
-
-/**
- * struct batadv_socket_packet - layer2 icmp packet for socket client
- */
-struct batadv_socket_packet {
-	/** @list: list node for &batadv_socket_client.queue_list */
-	struct list_head list;
-
-	/** @icmp_len: size of the layer2 icmp packet */
-	size_t icmp_len;
-
-	/** @icmp_packet: layer2 icmp packet */
-	u8 icmp_packet[BATADV_ICMP_MAX_PACKET_SIZE];
-};
-
 #ifdef CONFIG_BATMAN_ADV_BLA
=20
 /**
--=20
2.37.2
