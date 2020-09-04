Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id C9A0D25E179
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri,  4 Sep 2020 20:28:15 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 1D9738061F;
	Fri,  4 Sep 2020 20:28:10 +0200 (CEST)
Received: from mail.aperture-lab.de (mail.aperture-lab.de [IPv6:2a01:4f8:171:314c::100:a1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 7F1D98029D
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri,  4 Sep 2020 20:28:07 +0200 (CEST)
From: =?UTF-8?q?Linus=20L=C3=BCssing?= <linus.luessing@c0d3.blue>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c0d3.blue; s=2018;
	t=1599244087;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=EDUwi0/GITZ2Lp55iQqZ9p3U9MWRMTMcdviy8WCgYqs=;
	b=CmUZ3XKcJzXwaho+0KOC99fEC0X2qlvl9f1DSrIThOPSuwQ2AteSeNuLQk++IvfrUdP8jM
	fT5uTZWyORGqWELycyrQ2ayPAlXwtBZKg10o92HRk4idaDnPLxPKWdiAzyWg+H7MzdfSmP
	9bcsIwD4CJwUQkt8iDS72RU30Nnp9PU23LFDO3nVEnCrS9/yCoX44hXaWCTj7uVYwsw0x5
	60rcrWHh0dcK41nvlwwayjVWrkbDRIX4EE1mLEy1IKLOt/fJ4A4vR0zUVgRSel11fBumb0
	TTOGUYnmkx7k0USdkoqB/J9YOqzew0ijj6GV513MlJU7j8hQsYyXfZTmnAMMVw==
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: =?UTF-8?q?Linus=20L=C3=BCssing?= <linus.luessing@c0d3.blue>
Subject: [PATCH maint v2 1/4] batman-adv: mcast/TT: fix wrongly dropped or rerouted packets
Date: Fri,  4 Sep 2020 20:28:00 +0200
Message-Id: <20200904182803.8428-2-linus.luessing@c0d3.blue>
In-Reply-To: <20200904182803.8428-1-linus.luessing@c0d3.blue>
References: <20200904182803.8428-1-linus.luessing@c0d3.blue>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=linus.luessing@c0d3.blue smtp.mailfrom=linus.luessing@c0d3.blue
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1599244087;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=EDUwi0/GITZ2Lp55iQqZ9p3U9MWRMTMcdviy8WCgYqs=;
	b=N4aOHgC+gz3P29X50UzD8c5ST5Y19t+vk+cAYiznDL3nNELgVamHFb0VxlFaS+rP+P5N0b
	ShHizn/dONON+NcuiGaCaUdqW8K+6YAm9r5wT+X0PQtdSZii0nypV2BK9gK/t+2aiSYpgO
	HInjHKmSE6fiIrf8yLPOrmtnttw9B58=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1599244087; a=rsa-sha256;
	cv=none;
	b=uSS0DhVHv8lki+uLv1olEbvIQwHplHq+0ReIf8GfNOJLEBNYnQLokvV7sIRY6D//jQjNFQ
	BdTMoKvXM2OHbsHE8Vyuww6zEOg+J1n7QUFjVmGjBPmdtya8YL8Znhq98I9VbaHqx+XxHM
	JuLkwJZTiSXZiUPAJLzTplcKrf+SYO4=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none (invalid DKIM record) header.d=c0d3.blue header.s=2018 header.b=CmUZ3XKc;
	spf=none (diktynna.open-mesh.org: domain of linus.luessing@c0d3.blue has no SPF policy when checking 2a01:4f8:171:314c::100:a1) smtp.mailfrom=linus.luessing@c0d3.blue
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: SEQM4UCLN36JRSXWCDM3M5VVJSCTL47P
X-Message-ID-Hash: SEQM4UCLN36JRSXWCDM3M5VVJSCTL47P
X-MailFrom: linus.luessing@c0d3.blue
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/SEQM4UCLN36JRSXWCDM3M5VVJSCTL47P/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

The unicast packet rerouting code makes several assumptions. For
instance it assumes that there is always exactly one destination in the
TT. This breaks for multicast frames in a unicast packets in several ways=
:

For one thing if there is actually no TT entry and the destination node
was selected due to the multicast tvlv flags it announced. Then an
intermediate node will wrongly drop the packet.

For another thing if there is a TT entry but the TTVN of this entry is
newer than the originally addressed destination node: Then the
intermediate node will wrongly redirect the packet, leading to
duplicated multicast packets at a multicast listener and missing
packets at other multicast listeners or multicast routers.

Fixing this by not applying the unicast packet rerouting to batman-adv
unicast packets with a multicast payload. We are not able to detect a
roaming multicast listener at the moment and will just continue to send
the multicast frame to both the new and old destination for a while in
case of such a roaming multicast listener.

Fixes: cea194d90b11 ("batman-adv: improved client announcement mechanism"=
)
Signed-off-by: Linus L=C3=BCssing <linus.luessing@c0d3.blue>
---
 net/batman-adv/routing.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/net/batman-adv/routing.c b/net/batman-adv/routing.c
index 27cdf5e4..9e5c71e4 100644
--- a/net/batman-adv/routing.c
+++ b/net/batman-adv/routing.c
@@ -826,6 +826,10 @@ static bool batadv_check_unicast_ttvn(struct batadv_=
priv *bat_priv,
 	vid =3D batadv_get_vid(skb, hdr_len);
 	ethhdr =3D (struct ethhdr *)(skb->data + hdr_len);
=20
+	/* do not reroute multicast frames in a unicast header */
+	if (is_multicast_ether_addr(ethhdr->h_dest))
+		return true;
+
 	/* check if the destination client was served by this node and it is no=
w
 	 * roaming. In this case, it means that the node has got a ROAM_ADV
 	 * message and that it knows the new destination in the mesh to re-rout=
e
--=20
2.28.0
