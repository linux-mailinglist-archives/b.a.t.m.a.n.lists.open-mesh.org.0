Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 10D0E25E17B
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri,  4 Sep 2020 20:28:26 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 1943280783;
	Fri,  4 Sep 2020 20:28:16 +0200 (CEST)
Received: from mail.aperture-lab.de (mail.aperture-lab.de [138.201.29.205])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id A3B3D803F5
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri,  4 Sep 2020 20:28:08 +0200 (CEST)
From: =?UTF-8?q?Linus=20L=C3=BCssing?= <linus.luessing@c0d3.blue>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c0d3.blue; s=2018;
	t=1599244088;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=N0suu9SmFCnuF08sj9iU30UuqseVIIpflbWICWb+qBE=;
	b=KqVJuQD5PYkcvlz1ZfkUS3gA8BOqcircH2VxySOkbK6gvlZPTh7dhAB6ZrzzjNEGUOkJ5K
	xibI/Y4T37T2EyKz23LpapvzZ7b003L1RDGNhHVz221PqLCZSikK6opI2iOWxZFZk+wPbl
	XI31JWcyn0ChK3fn6kW/fnPEJXujaiBsU9kWD0c8O7SeT89CXCufn8mmf6olUSz8ZCXeZv
	V5CpZWVdUR3kGFnbaGKar8WWNmVOun1wzXFkkh7R8o29R+OHDnsU0wkeQ5+Q/I/DYH4u7j
	TESEmQ/NEvWTACY8VLmJwL647frd0o+hy6t4P+bJAfC5rJ+bKoMTQEQzI6CYqQ==
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: =?UTF-8?q?Linus=20L=C3=BCssing?= <linus.luessing@c0d3.blue>
Subject: [PATCH maint v2 3/4] batman-adv: mcast: fix duplicate mcast packets in BLA backbone from mesh
Date: Fri,  4 Sep 2020 20:28:02 +0200
Message-Id: <20200904182803.8428-4-linus.luessing@c0d3.blue>
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
	bh=N0suu9SmFCnuF08sj9iU30UuqseVIIpflbWICWb+qBE=;
	b=D6e1+o9ysdgp+7G41P4s9W7t8zDKCO7eWo5fbP+BhGf1VasSxKI/9RCO4nmgyS5+3lNhPH
	/ZrvaMrhxq/rgaRKssZH9NlzR3w13jHFtt1m4ifvUof/tgcyXYwRreQqPu6mWjE2aHCUH/
	doIGcSPoU56wGBKomGQ8LnrKEBI1vwE=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1599244088; a=rsa-sha256;
	cv=none;
	b=NynJ4q3wv3qGzk09Nhmpbn/Ah/7RdYV7n0XAhrzG0S8geFcmbv5CPZz2YsxArwmlwj6tpZ
	wQW6QOvcwcUe4LKPh5bSJI5heSk8+x8Vq119rFZY9xbos+0P1j/hj91KTydFlltCDi17Sq
	avglO5P4kDrJbfeuxnELqUX2Zu7AZlA=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none (invalid DKIM record) header.d=c0d3.blue header.s=2018 header.b=KqVJuQD5;
	spf=none (diktynna.open-mesh.org: domain of linus.luessing@c0d3.blue has no SPF policy when checking 138.201.29.205) smtp.mailfrom=linus.luessing@c0d3.blue
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: QEB34OGOG3GECYXRTBFNO3T7JMQ3ZDW4
X-Message-ID-Hash: QEB34OGOG3GECYXRTBFNO3T7JMQ3ZDW4
X-MailFrom: linus.luessing@c0d3.blue
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/QEB34OGOG3GECYXRTBFNO3T7JMQ3ZDW4/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Scenario:
* Multicast frame send from mesh to a BLA backbone (multiple nodes
  with their bat0 bridged together, with BLA enabled)

Issue:
* BLA backbone nodes receive the frame multiple times on bat0,
  once from mesh->bat0 and once from each backbone_gw from LAN

For unicast, a node will send only to the best backbone gateway
according to the TQ. However for multicast we currently cannot determine
if multiple destination nodes share the same backbone if they don't share
the same backbone with us. So we need to keep sending the unicasts to
all backbone gateways and let the backbone gateways decide which one
will forward the frame. We can use the CLAIM mechanism to make this
decision.

One catch: The batman-adv gateway feature for DHCP packets potentially
sends multicast packets in the same batman-adv unicast header as the
multicast optimizations code. And we are not allowed to drop those even
if we did not claim the source address of the sender, as for such
packets there is only this one multicast-in-unicast packet.

How can we distinguish the two cases?

For DHCPv4: Here the broadcast MAC address is used and the multicast
optimizations will never send a broadcast frame via batman-adv unicast
packets (see the !is_broadcast_ether_addr() check in after the goto-send
in batadv_interface_tx().

For DHCPv6: This is even trickier... DHCPv6 potentially uses
non-broadcast multicast addresses. However according to RFC8415, section
7.1 it seems that currently multicast is only used from a DHCPv6 client
to a DHCPv6 server, but not the other way round.

Working through the gateway feature part in batadv_interface_tx() it can
be inferred that a DHCPv6 packet to a DHCP client would have been the onl=
y
option for a DHCPv6 multicast packet to be sent via unicast through the
gateway feature. Ergo, the newly introduced claim check won't wrongly
drop a DHCPv6 packet received via the gateway feature either.

Fixes: e32470167379 ("batman-adv: check incoming packet type for bla")
Signed-off-by: Linus L=C3=BCssing <linus.luessing@c0d3.blue>
---
 net/batman-adv/bridge_loop_avoidance.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/net/batman-adv/bridge_loop_avoidance.c b/net/batman-adv/brid=
ge_loop_avoidance.c
index d8c5d317..9603a6d0 100644
--- a/net/batman-adv/bridge_loop_avoidance.c
+++ b/net/batman-adv/bridge_loop_avoidance.c
@@ -1848,7 +1848,8 @@ bool batadv_bla_rx(struct batadv_priv *bat_priv, st=
ruct sk_buff *skb,
=20
 	if (unlikely(atomic_read(&bat_priv->bla.num_requests)))
 		/* don't allow broadcasts while requests are in flight */
-		if (is_multicast_ether_addr(ethhdr->h_dest) && is_bcast)
+		if (is_multicast_ether_addr(ethhdr->h_dest) &&
+		    (!is_broadcast_ether_addr(ethhdr->h_dest) || is_bcast))
 			goto handled;
=20
 	ether_addr_copy(search_claim.addr, ethhdr->h_source);
@@ -1885,7 +1886,8 @@ bool batadv_bla_rx(struct batadv_priv *bat_priv, st=
ruct sk_buff *skb,
 	}
=20
 	/* if it is a broadcast ... */
-	if (is_multicast_ether_addr(ethhdr->h_dest) && is_bcast) {
+	if (is_multicast_ether_addr(ethhdr->h_dest) &&
+	    (!is_broadcast_ether_addr(ethhdr->h_dest) || is_bcast)) {
 		/* ... drop it. the responsible gateway is in charge.
 		 *
 		 * We need to check is_bcast because with the gateway
--=20
2.28.0
