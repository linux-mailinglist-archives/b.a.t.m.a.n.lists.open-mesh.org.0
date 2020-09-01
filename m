Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id F268E25851E
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue,  1 Sep 2020 03:26:30 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id BCF5080603;
	Tue,  1 Sep 2020 03:26:26 +0200 (CEST)
Received: from mail.aperture-lab.de (mail.aperture-lab.de [IPv6:2a01:4f8:171:314c::100:a1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id A289D80019
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue,  1 Sep 2020 03:26:23 +0200 (CEST)
From: =?UTF-8?q?Linus=20L=C3=BCssing?= <linus.luessing@c0d3.blue>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c0d3.blue; s=2018;
	t=1598923583;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=hG5dDmEgsXyO4QLAZnNHb06TLwZurFBZbwxvWafniyE=;
	b=IAt4EEtO4c1wXIP5JIWXVdvczQy0pgM4Qqvf+FLld/O9qsHUivgSXq4BhGu/szEq24X+xW
	QmZeI3+OTUz9vMLu5Sev0JoXtLoq31hEScloui8QeS/J5GLlp+3N3WwCEHPlFALssAwqTI
	2V9uoKJcv3QaarF+8qTqW02bMEx91yCGQK3Jyc3gIMp0px62Nl8l13XdflzUfv7jkANJXc
	P5+9uKU755tJDuhbAruc0liJer9Lk9YNxpvJyUuNHYgBScthp/U0zOLdvJ/JDIRGT/I9M4
	9PFyalCEqz7wGqyz5KUAWfHs3kcMY+l+YjsyEXzNZXRqR3TLrw95UY5MjC/HDg==
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: =?UTF-8?q?Linus=20L=C3=BCssing?= <linus.luessing@c0d3.blue>
Subject: [PATCH maint 2/4] batman-adv: mcast: fix duplicate mcast packets in BLA backbone from LAN
Date: Tue,  1 Sep 2020 03:26:04 +0200
Message-Id: <20200901012606.7620-2-linus.luessing@c0d3.blue>
In-Reply-To: <20200901012606.7620-1-linus.luessing@c0d3.blue>
References: <20200901012606.7620-1-linus.luessing@c0d3.blue>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=linus.luessing@c0d3.blue smtp.mailfrom=linus.luessing@c0d3.blue
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1598923583;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=hG5dDmEgsXyO4QLAZnNHb06TLwZurFBZbwxvWafniyE=;
	b=3A2H9r/ltXYnfiV2vevkQPsX6bCfENoBI4Gk4eWzYgo8zH7SV2o2U0jNC1IVbwpvH0M4Q3
	pBkSFyhIemF+s6H1HqZVWfT3BY/XYSaSxjmuUdTWQ0/fJquWMVk7hq+TfEUFTwjBY6VZn/
	i19Gs2FU48PWpxAolkJK+oqdy20upqo=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1598923583; a=rsa-sha256;
	cv=none;
	b=0ybWR88TCAJjSH1RLIw4nAnig0MmC7EMNiCzAY+DFHTr8BfJh640stYk2ypGM/mw1t4V4J
	B0mG9UVTTwCBgih4Ytt5BBbz6Ixlrrp+VRzfPXVPMiuPgAEFES8CIiUgmXIrpVuSqICV6x
	vAohIEkRwbePQwd5n8qa2QQbQ90v/Lw=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none (invalid DKIM record) header.d=c0d3.blue header.s=2018 header.b=IAt4EEtO;
	spf=none (diktynna.open-mesh.org: domain of linus.luessing@c0d3.blue has no SPF policy when checking 2a01:4f8:171:314c::100:a1) smtp.mailfrom=linus.luessing@c0d3.blue
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: W24FGM77DXOGNJOKUHMTZ6WA2LMLC6NZ
X-Message-ID-Hash: W24FGM77DXOGNJOKUHMTZ6WA2LMLC6NZ
X-MailFrom: linus.luessing@c0d3.blue
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/W24FGM77DXOGNJOKUHMTZ6WA2LMLC6NZ/>
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
