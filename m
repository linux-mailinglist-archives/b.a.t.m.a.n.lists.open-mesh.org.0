Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 63D533F2881
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 20 Aug 2021 10:33:39 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id C8CF0827E1;
	Fri, 20 Aug 2021 10:33:15 +0200 (CEST)
Received: from simonwunderlich.de (simonwunderlich.de [79.140.42.25])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 5CDC4810E3
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 20 Aug 2021 10:33:07 +0200 (CEST)
Received: from kero.packetmixer.de (p200300c5970e73c0a32126881010a2d4.dip0.t-ipconnect.de [IPv6:2003:c5:970e:73c0:a321:2688:1010:a2d4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by simonwunderlich.de (Postfix) with ESMTPSA id 1287A174029;
	Fri, 20 Aug 2021 10:33:07 +0200 (CEST)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: kuba@kernel.org,
	davem@davemloft.net
Subject: [PATCH 6/6] batman-adv: bcast: remove remaining skb-copy calls
Date: Fri, 20 Aug 2021 10:33:00 +0200
Message-Id: <20210820083300.32289-7-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210820083300.32289-1-sw@simonwunderlich.de>
References: <20210820083300.32289-1-sw@simonwunderlich.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates 79.140.42.25 as permitted sender) smtp.mailfrom=sw@simonwunderlich.de
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1629448387; a=rsa-sha256;
	cv=none;
	b=EHrWWh8Ddq52wb133uG/NkTn05OMgs2qvbJL14L0RJfdkSu/OMUe2lnOgpcizAAY/mkWeA
	VDn2jJ8EunCWebGaTClY7GMHE+P9EcuAC4mQzJwg51Q0I0UoLUfFTxLvmBzd2HoEEQBqIM
	FajeSgqCr7eCI1sMYBfoOWRvxvgd0O8=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1629448387;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=cRhvXrW3u8a11StXbIatzDT879zXAEebn8HO/6CT5AA=;
	b=Iu5FbwARpMvz7JjAJcKLsPzhlwO6njd1X3c1hUJyTSQiGWds6IAquCOZoCq4ecAycZ7NG+
	+F3Yk9iindWmA2daM9EXO3UGqllkg1C7tSovqVjcJnPFIbyg1YTEF96BpvfHrlF//6pa5+
	JiqqrBVk2d/lD0YoxVvG4RF/TxBhkyM=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: LQMJIFUFIEO2VYJ4ROQXTN5JGWTFIHLI
X-Message-ID-Hash: LQMJIFUFIEO2VYJ4ROQXTN5JGWTFIHLI
X-MailFrom: sw@simonwunderlich.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/LQMJIFUFIEO2VYJ4ROQXTN5JGWTFIHLI/>
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

The only modifications to the skb data is the ethernet header which is
added/pushed to the skb in
batadv_send_broadcast_skb()->batadv_send_skb_packet(). However before
doing so, batadv_skb_head_push() is called which calls skb_cow_head() to
unshare the space for the to be pushed ethernet header. So for this
case, it is safe to use skb clones.

For B), received/forwarded packets:

The same applies as in A) for the to be forwarded packets. Only the
ethernet header is added. However after (queueing for) forwarding the
packet in batadv_recv_bcast_packet()->batadv_forw_bcast_packet(), a
packet is additionally decapsulated and is sent up the stack through
batadv_recv_bcast_packet()->batadv_interface_rx().

Protocols higher up the stack are already required to check if the
packet is shared and create a copy for further modifications. When the
next (protocol) layer works correctly, it cannot happen that it tries to
operate on the data behind the skb clone which is still queued up for
forwarding.

Co-authored-by: Sven Eckelmann <sven@narfation.org>
Signed-off-by: Sven Eckelmann <sven@narfation.org>
Signed-off-by: Linus L=C3=BCssing <linus.luessing@c0d3.blue>
Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
---
 net/batman-adv/send.c | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/net/batman-adv/send.c b/net/batman-adv/send.c
index 2a33458be65c..477d85a3b558 100644
--- a/net/batman-adv/send.c
+++ b/net/batman-adv/send.c
@@ -742,6 +742,10 @@ void batadv_forw_packet_ogmv1_queue(struct batadv_pr=
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
@@ -755,7 +759,7 @@ static int batadv_forw_bcast_packet_to_list(struct ba=
tadv_priv *bat_priv,
 	unsigned long send_time =3D jiffies;
 	struct sk_buff *newskb;
=20
-	newskb =3D skb_copy(skb, GFP_ATOMIC);
+	newskb =3D skb_clone(skb, GFP_ATOMIC);
 	if (!newskb)
 		goto err;
=20
@@ -794,6 +798,10 @@ static int batadv_forw_bcast_packet_to_list(struct b=
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
@@ -808,7 +816,7 @@ static int batadv_forw_bcast_packet_if(struct batadv_=
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
2.20.1
