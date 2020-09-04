Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 5238225E17A
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri,  4 Sep 2020 20:28:21 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 9346180767;
	Fri,  4 Sep 2020 20:28:10 +0200 (CEST)
Received: from mail.aperture-lab.de (mail.aperture-lab.de [IPv6:2a01:4f8:171:314c::100:a1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 139A08029D
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri,  4 Sep 2020 20:28:08 +0200 (CEST)
From: =?UTF-8?q?Linus=20L=C3=BCssing?= <linus.luessing@c0d3.blue>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c0d3.blue; s=2018;
	t=1599244087;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=b1kASZP59YOMScZ9vaL3FTS9eMn7igbssv6DMnu15sk=;
	b=IK3UBUYKs1B/kfs2QevJR5m6JUmzXP6iWITYekta2piIqVoauB3noA2d4cn84JwceF2dy0
	YwarrsMKcCH04pc8PHJD2ULbNKQ/SN192bzKPuiZqKO4rnqii3Mzxm3QOpS6odDpwH34zu
	cvG/vrm6DJaioUblVpvZW9NOKHQmt9Lkmcjn1jZL3AevoVQPvZTjt9VcC49CdwUflsIOWo
	ngxintykZdP+BKgGbI2V3zJ2hV7gPuOBnPZ8SvB5TuepaLvg5IH+39iFJIKc88Bqwwh5XA
	f9w/GOkKNWBJZ3QpVT7k0QhJZ5TbMSnSQMWZLSPhIgxirKlvVDZZF7nNRbkykQ==
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: =?UTF-8?q?Linus=20L=C3=BCssing?= <linus.luessing@c0d3.blue>
Subject: [PATCH maint v2 2/4] batman-adv: mcast: fix duplicate mcast packets in BLA backbone from LAN
Date: Fri,  4 Sep 2020 20:28:01 +0200
Message-Id: <20200904182803.8428-3-linus.luessing@c0d3.blue>
In-Reply-To: <20200904182803.8428-1-linus.luessing@c0d3.blue>
References: <20200904182803.8428-1-linus.luessing@c0d3.blue>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=linus.luessing@c0d3.blue smtp.mailfrom=linus.luessing@c0d3.blue
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1599244088;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=b1kASZP59YOMScZ9vaL3FTS9eMn7igbssv6DMnu15sk=;
	b=4PGTMgSuj22MlqV4VxOK/uY7/vF1TnQ1U6ofWaHQ4mNtpo0BrGHP4lhq5OxCPPu1qeZLNu
	QSA66Rkdv+VSpmph7wgikavqVgd7Nb2bC49l1KsdWy9pN3HuEPhygaNYzu/eb0cFh4goP3
	fLD5IKp/zujKHlbhl/k+U+GgRYtXMwc=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1599244088; a=rsa-sha256;
	cv=none;
	b=15yM2mOxvZWhv3EowyubhhB3MKjTucZx7O1+5gMGCo4Id8Piuz/4bbWKmQyRKfbt7pKvoW
	tWay5ZAdCRBB606MWWXGFDKMrdlSFXLQu9q/Mn5evAZJ48OvABeHtva2RoPQGeEZSnljvX
	IOooqiWOAYjI3KtIAa7f7FtZ9gpwK4Y=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none (invalid DKIM record) header.d=c0d3.blue header.s=2018 header.b=IK3UBUYK;
	spf=none (diktynna.open-mesh.org: domain of linus.luessing@c0d3.blue has no SPF policy when checking 2a01:4f8:171:314c::100:a1) smtp.mailfrom=linus.luessing@c0d3.blue
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: 26IZMV5EMXKD2OMQ5CABXSEJ3OXVMWZY
X-Message-ID-Hash: 26IZMV5EMXKD2OMQ5CABXSEJ3OXVMWZY
X-MailFrom: linus.luessing@c0d3.blue
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/26IZMV5EMXKD2OMQ5CABXSEJ3OXVMWZY/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Scenario:
* Multicast frame send from a BLA backbone (multiple nodes with
  their bat0 bridged together, with BLA enabled)

Issue:
* BLA backbone nodes receive the frame multiple times on bat0

For multicast frames received via batman-adv broadcast packets the
originator of the broadcast packet is checked before decapsulating and
forwarding the frame to bat0 (batadv_bla_is_backbone_gw()->
batadv_recv_bcast_packet()). If it came from a node which shares the
same BLA backbone with us then it is not forwarded to bat0 to avoid a
loop.

When sending a multicast frame in a non-4-address batman-adv unicast
packet we are currently missing this check - and cannot do so because
the batman-adv unicast packet has no originator address field.

However, we can simply fix this on the sender side by only sending the
multicast frame via unicasts to interested nodes which do not share the
same BLA backbone with us. This also nicely avoids some unnecessary
transmissions on mesh side.

Note that no infinite loop was observed, probably because of dropping
via batadv_interface_tx()->batadv_bla_tx(). However the duplicates still
utterly confuse switches/bridges, ICMPv6 duplicate address detection and
neighbor discovery and therefore leads to long delays before being able
to establish TCP connections, for instance. And it also leads to the Linu=
x
bridge printing messages like:
"br-lan: received packet on eth1 with own address as source address ..."

Fixes: 405cc1e5a81e ("batman-adv: Modified forwarding behaviour for multi=
cast packets")
Signed-off-by: Linus L=C3=BCssing <linus.luessing@c0d3.blue>
---
 net/batman-adv/send.c | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/net/batman-adv/send.c b/net/batman-adv/send.c
index d267b948..67f493c0 100644
--- a/net/batman-adv/send.c
+++ b/net/batman-adv/send.c
@@ -29,6 +29,7 @@
 #include <linux/stddef.h>
 #include <linux/workqueue.h>
=20
+#include "bridge_loop_avoidance.h"
 #include "distributed-arp-table.h"
 #include "fragmentation.h"
 #include "gateway_client.h"
@@ -343,6 +344,18 @@ int batadv_send_skb_unicast(struct batadv_priv *bat_=
priv,
 	if (!orig_node)
 		goto out;
=20
+	/* Avoid sending multicast-in-unicast packets to other BLA
+	 * gateways - they already got the frame from the LAN side
+	 * we share with them.
+	 * TODO: Refactor multicast code to anticipate this, to
+	 * avoid this check here.
+	 */
+	if (is_multicast_ether_addr(eth_hdr(skb)->h_dest) &&
+	    batadv_bla_is_backbone_gw_orig(bat_priv, orig_node->orig, vid)) {
+		dev_kfree_skb(skb);
+		return NET_XMIT_SUCCESS;
+	}
+
 	switch (packet_type) {
 	case BATADV_UNICAST:
 		if (!batadv_send_skb_prepare_unicast(skb, orig_node))
--=20
2.28.0
