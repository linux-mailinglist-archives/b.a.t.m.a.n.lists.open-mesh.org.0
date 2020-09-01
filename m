Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CF8425851D
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue,  1 Sep 2020 03:26:26 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 49881803C8;
	Tue,  1 Sep 2020 03:26:25 +0200 (CEST)
Received: from mail.aperture-lab.de (mail.aperture-lab.de [IPv6:2a01:4f8:171:314c::100:a1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 228E680250
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue,  1 Sep 2020 03:26:23 +0200 (CEST)
From: =?UTF-8?q?Linus=20L=C3=BCssing?= <linus.luessing@c0d3.blue>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c0d3.blue; s=2018;
	t=1598923582;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=EKdRTZH5S4oLJFB/ZW441UbcY2dBoZ+O56INMPt3BGk=;
	b=Kw074C6OGSjS/Fp+gKVAQbtnxrZ1WFO4PyxQ+vm8TEHlvB7OMAeJ1x2LM89DbdrbX/QapG
	7UuDEHDxlbru0C825lpzShe2zp0MVS4saz27gqhxCyNZhV/4k7u96vlJMARwb6oEjQt8qQ
	879dUQbl7W1+5Up7dotgO350xnT207M9BnBHqzFhPx7+dWB6iPfxTIiGbLJ9rGYqiIjl/p
	d7Wn/2gfC9pDwYmz7jm3dmtRAYBbMswR8BxctnFlIhgc4df5zu6nukA9koQiD7Ipt+MZoL
	99q2TgVZojn2779eB/77Prspk972078otLeaEQZI0bsKSOKUE1fkixM/lIG6/Q==
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: =?UTF-8?q?Linus=20L=C3=BCssing?= <linus.luessing@c0d3.blue>
Subject: [PATCH maint 1/4] batman-adv: mcast/TT: fix wrongly dropped or rerouted packets
Date: Tue,  1 Sep 2020 03:26:03 +0200
Message-Id: <20200901012606.7620-1-linus.luessing@c0d3.blue>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=linus.luessing@c0d3.blue smtp.mailfrom=linus.luessing@c0d3.blue
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1598923583;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=EKdRTZH5S4oLJFB/ZW441UbcY2dBoZ+O56INMPt3BGk=;
	b=tfSbfNidLRHNvGEGaiVNA2EMBSlKkpLx2aScbFsMN+22Kwe9sZI0cq0zympmF8ae/aGYhM
	IcAWt3TRS5A+XIXqnIdjaF2K2VGz0C8yJmlJsnNRKQikOq4f982e/Sqk3fD565v/NqDPsd
	m4AL5vaw+GH6s2OZ6PgpdtPtE9vmSdY=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1598923583; a=rsa-sha256;
	cv=none;
	b=zwPD5F4WD0aWPkLcShKz7rc9pvO/FeY9eQKdut9ZbZOEaloXBv1MlO0JBjCwJ+ipc57Pox
	BymzGJNHHrXp5SNwXA8eQQcTYXY50g4HhBTyNgdA2QVNF0iJMWQjheaFnpcy4iHAOY65Vy
	2/3v4hjxiw90A+mnqzSXPGJEWCAywtw=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none (invalid DKIM record) header.d=c0d3.blue header.s=2018 header.b=Kw074C6O;
	spf=none (diktynna.open-mesh.org: domain of linus.luessing@c0d3.blue has no SPF policy when checking 2a01:4f8:171:314c::100:a1) smtp.mailfrom=linus.luessing@c0d3.blue
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: F44AQNGVOS22C7RXKMMOR5SA4QYKEF6H
X-Message-ID-Hash: F44AQNGVOS22C7RXKMMOR5SA4QYKEF6H
X-MailFrom: linus.luessing@c0d3.blue
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/F44AQNGVOS22C7RXKMMOR5SA4QYKEF6H/>
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
