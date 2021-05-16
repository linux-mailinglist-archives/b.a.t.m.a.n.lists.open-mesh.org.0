Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id AB291382179
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 17 May 2021 00:33:28 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 6F92480B9A;
	Mon, 17 May 2021 00:33:20 +0200 (CEST)
Received: from mail.aperture-lab.de (mail.aperture-lab.de [IPv6:2a01:4f8:c2c:665b::1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 02B5F801FD
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 17 May 2021 00:33:16 +0200 (CEST)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 641263E8F5;
	Mon, 17 May 2021 00:33:16 +0200 (CEST)
From: =?UTF-8?q?Linus=20L=C3=BCssing?= <linus.luessing@c0d3.blue>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: =?UTF-8?q?Linus=20L=C3=BCssing?= <linus.luessing@c0d3.blue>
Subject: [PATCH v3 3/3] batman-adv: bcast: remove remaining skb-copy calls for broadcasts
Date: Mon, 17 May 2021 00:33:09 +0200
Message-Id: <20210516223309.12596-3-linus.luessing@c0d3.blue>
In-Reply-To: <20210516223309.12596-1-linus.luessing@c0d3.blue>
References: <20210516223309.12596-1-linus.luessing@c0d3.blue>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Last-TLS-Session-Version: TLSv1.2
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1621204397; a=rsa-sha256;
	cv=none;
	b=FSizWnrcBK7WMToDgtuOAApVE6Ye36mBwgxIYfMR4TVh67uFTdag7Oo7JVLsw40fH7ZYxo
	Vjn5q9xVdiLghR4cIdqF4fUSXBfRU3CyrwbAVEG7Y48stVmbvSuZ+PfthOybZtKJ3qt8Nr
	X8YMwmRuPIRAmA26tXMxjyVIm0L2fjo=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=none (diktynna.open-mesh.org: domain of linus.luessing@c0d3.blue has no SPF policy when checking 2a01:4f8:c2c:665b::1) smtp.mailfrom=linus.luessing@c0d3.blue
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1621204397;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=XLmqFg5jXoCN6pUBcw3zrTsezBNQv46dwfdqzlyDbgA=;
	b=vKKzStIsh8QP5ZekVI4tsAz7BY8CDwptEQax3AWELLgbegJEBGTjtp23QA7YC3iKD8bqCF
	N6q/P+tks6CVmvyNlNbYLYIF/5WyaVppripW/hAKFg+4w0E5y5nxA1QbjMZE9htK4VZA9L
	yoUJWSNCim21ZAJjY4VNrve0oejCfuc=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: EGKJPSVH7X5TSAZDDV2X354EFCF5YWLQ
X-Message-ID-Hash: EGKJPSVH7X5TSAZDDV2X354EFCF5YWLQ
X-MailFrom: linus.luessing@c0d3.blue
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/EGKJPSVH7X5TSAZDDV2X354EFCF5YWLQ/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

We currently have two code paths for broadcast packets: A)
self-generated, via batadv_interface_tx()->batadv_send_bcast_packet().
Or B) received/forwarded, via batadv_recv_bcast_packet()->
batadv_forw_bcast_packet().

For A), self-generated broadcast packets the only modifications to the
skb data is the ethernet header which is added/pushed to the skb in
batadv_send_broadcast_skb()->batadv_send_skb_packet(). However before
doing so batadv_skb_head_push() is called which calls skb_cow_head() to
unshare the space for the to be pushed ethernet header. So for this
case, it is safe to use skb clones.

For B), received/forwarded packets the same applies as in A) for the
to be forwarded packets. Only the ethernet header is added. However
after (queueing for) forwarding the packet in
batadv_recv_bcast_packet()->batadv_forw_bcast_packet() a packet is
additionally decapsulated and is sent up the stack through
batadv_recv_bcast_packet()->batadv_interface_rx(). Which needs an
unshared skb data for potential modifications from other protocols.
To be able to use skb clones for (re)broadcasted batman-adv broadcast
packets while still ensuring that interface_rx() has a freely writeable
skb we use skb_cow() to avoid sharing skb data with the skb clones in
the forwarding calls.

Signed-off-by: Linus L=C3=BCssing <linus.luessing@c0d3.blue>
---

Changelog v3:

* newly added this patch, to move skb_copy()->skb_clone() changes from
  PATCH 01/03 to a separate patch with its own explanation

 net/batman-adv/send.c | 24 +++++++++++++++++++++---
 1 file changed, 21 insertions(+), 3 deletions(-)

diff --git a/net/batman-adv/send.c b/net/batman-adv/send.c
index 0b9dd29d..1db6b217 100644
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
@@ -966,6 +974,8 @@ static int __batadv_forw_bcast_packet(struct batadv_p=
riv *bat_priv,
  * after that. Furthermore, queues additional retransmissions on wireles=
s
  * interfaces.
  *
+ * This call might reallocate skb data.
+ *
  * Return: NETDEV_TX_OK on success and NETDEV_TX_BUSY on errors.
  */
 int batadv_forw_bcast_packet(struct batadv_priv *bat_priv,
@@ -973,7 +983,15 @@ int batadv_forw_bcast_packet(struct batadv_priv *bat=
_priv,
 			     unsigned long delay,
 			     bool own_packet)
 {
-	return __batadv_forw_bcast_packet(bat_priv, skb, delay, own_packet);
+	int ret =3D __batadv_forw_bcast_packet(bat_priv, skb, delay, own_packet=
);
+
+	if (ret =3D=3D NETDEV_TX_BUSY)
+		return ret;
+
+	/* __batadv_forw_bcast_packet clones, make sure original
+	 * skb stays writeable
+	 */
+	return (skb_cow(skb, 0) < 0) ? NETDEV_TX_BUSY : NETDEV_TX_OK;
 }
=20
 /**
--=20
2.31.0
