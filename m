Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 940B43F0970
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 18 Aug 2021 18:44:53 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 7722781003;
	Wed, 18 Aug 2021 18:44:52 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id B3B7780122
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 18 Aug 2021 18:44:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1629305088;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=jj8t068nAP86yyqFBBUJ0hC/CGr67f/mjjpVCkT7BVA=;
	b=EdMmLmJOWY8qELF1N0c2oiwfqtkFcL1YOOuaJQpcszg8JS29sj4f54W1Q0FIbKdz12LMax
	WFWN6MHBR/6ptHspJzoK+A/Yp79+1Nxkr0+p5nZRBbm8eELkW7Y8nMTsy7pSovArqAJHsZ
	8eRKJZ5VeXWOtTmHrAmzHM87i/TD1CA=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: =?UTF-8?q?Linus=20L=C3=BCssing?= <linus.luessing@c0d3.blue>,
	Sven Eckelmann <sven@narfation.org>
Subject: [PATCH v4] batman-adv: bcast: remove remaining skb-copy calls
Date: Wed, 18 Aug 2021 18:44:33 +0200
Message-Id: <20210818164433.1873433-1-sven@narfation.org>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=EdMmLmJO;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1629305089; a=rsa-sha256;
	cv=none;
	b=0w0bbl13cT2mDtKAwUGiRz97tl6ldCUFHVftAdeuPjW0bxJQGGTGINLJzn8CJHS1cGlHRq
	vc6bPYz8EvK183EtOm/dkn8FnytwyXVdbrrCa6B/Q4g02aRKoyXb6z+kL09Jk0dVA8Q07i
	mneEtJtgC48M0DU1kUdwP65PDWDC/Z4=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1629305089;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=jj8t068nAP86yyqFBBUJ0hC/CGr67f/mjjpVCkT7BVA=;
	b=gfyxz4rCglu4BIFJzBmQFpqrnB83O7thnPdo64m3gAIdN55J4QcmDIp2mkdm0RfKgAIvyj
	47D8zlmyMpqszhYz6YnG4NbrXbyxH44wjMxHaLPWkoLD6yGB3YN+/4p0nBPVUctzBWqOet
	8d1GusrescamsLAMxKufQVCQEoGhy48=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: JZOFAJHM2DRQ4BUQKCCAOWQ33UHELAB3
X-Message-ID-Hash: JZOFAJHM2DRQ4BUQKCCAOWQ33UHELAB3
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/JZOFAJHM2DRQ4BUQKCCAOWQ33UHELAB3/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

From: Linus L=C3=BCssing <linus.luessing@c0d3.blue>

We currently have two code paths for broadcast packets:

A) self-generated, via batadv_interface_tx()->
   batadv_send_bcast_packet().
B) received/forwarded, via batadv_recv_bcast_packet()->
   batadv_forw_bcast_packet().

For A), self-generated broadcast packets:

the only modifications to the skb data is the ethernet header which is
added/pushed to the skb in
batadv_send_broadcast_skb()->batadv_send_skb_packet(). However before
doing so, batadv_skb_head_push() is called which calls skb_cow_head() to
unshare the space for the to be pushed ethernet header. So for this
case, it is safe to use skb clones.

For B), received/forwarded packets:

the same applies as in A) for the to be forwarded packets. Only the
ethernet header is added. However after (queueing for) forwarding the
packet in batadv_recv_bcast_packet()->batadv_forw_bcast_packet(), a
packet is additionally decapsulated and is sent up the stack through
batadv_recv_bcast_packet()->batadv_interface_rx().

Protocols higher up the stack are already required to check if the
packet is shared and create a copy for further modifications. When the
next (protocol) layer works correctly, it cannot happen that ot tries to
operate on the data behind the skb clone which is still queued up for
forwarding.

Signed-off-by: Linus L=C3=BCssing <linus.luessing@c0d3.blue>
Co-authored-by: Sven Eckelmann <sven@narfation.org>
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
v3:
* newly added this patch, to move skb_copy()->skb_clone() changes from
  PATCH 01/03 to a separate patch with its own explanation
v4:
* dropped skb_cow call in __batadv_forw_bcast_packet and adjusted the
  text for B) to explain the reasoning behind it

 net/batman-adv/send.c | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/net/batman-adv/send.c b/net/batman-adv/send.c
index 0b9dd29d..b1cb9eb3 100644
--- a/net/batman-adv/send.c
+++ b/net/batman-adv/send.c
@@ -748,6 +748,10 @@ void batadv_forw_packet_ogmv1_queue(struct batadv_pr=
iv *bat_priv,
  * Adds a broadcast packet to the queue and sets up timers. Broadcast pa=
ckets
  * are sent multiple times to increase probability for being received.
  *
+ * This call clones the given skb, hence the caller needs to take into
+ * account that the data segment of the original skb might not be
+ * modifiable anymore.
+ *
  * Return: NETDEV_TX_OK on success and NETDEV_TX_BUSY on errors.
  */
 static int batadv_forw_bcast_packet_to_list(struct batadv_priv *bat_priv=
,
@@ -761,7 +765,7 @@ static int batadv_forw_bcast_packet_to_list(struct ba=
tadv_priv *bat_priv,
 	unsigned long send_time =3D jiffies;
 	struct sk_buff *newskb;
=20
-	newskb =3D skb_copy(skb, GFP_ATOMIC);
+	newskb =3D skb_clone(skb, GFP_ATOMIC);
 	if (!newskb)
 		goto err;
=20
@@ -800,6 +804,10 @@ static int batadv_forw_bcast_packet_to_list(struct b=
atadv_priv *bat_priv,
  * or if a delay is given after that. Furthermore, queues additional
  * retransmissions if this interface is a wireless one.
  *
+ * This call clones the given skb, hence the caller needs to take into
+ * account that the data segment of the original skb might not be
+ * modifiable anymore.
+ *
  * Return: NETDEV_TX_OK on success and NETDEV_TX_BUSY on errors.
  */
 static int batadv_forw_bcast_packet_if(struct batadv_priv *bat_priv,
@@ -814,7 +822,7 @@ static int batadv_forw_bcast_packet_if(struct batadv_=
priv *bat_priv,
 	int ret =3D NETDEV_TX_OK;
=20
 	if (!delay) {
-		newskb =3D skb_copy(skb, GFP_ATOMIC);
+		newskb =3D skb_clone(skb, GFP_ATOMIC);
 		if (!newskb)
 			return NETDEV_TX_BUSY;
=20
--=20
2.30.2
