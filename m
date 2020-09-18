Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B62626FE1B
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 18 Sep 2020 15:20:13 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id B4C03806CC;
	Fri, 18 Sep 2020 15:20:03 +0200 (CEST)
Received: from simonwunderlich.de (simonwunderlich.de [79.140.42.25])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 8887C8066F
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 18 Sep 2020 15:19:59 +0200 (CEST)
Received: from kero.packetmixer.de (p200300c59714ead05d12fb7f5a0314d0.dip0.t-ipconnect.de [IPv6:2003:c5:9714:ead0:5d12:fb7f:5a03:14d0])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by simonwunderlich.de (Postfix) with ESMTPSA id 3A6A462075;
	Fri, 18 Sep 2020 15:19:59 +0200 (CEST)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: davem@davemloft.net
Subject: [PATCH 2/6] batman-adv: mcast/TT: fix wrongly dropped or rerouted packets
Date: Fri, 18 Sep 2020 15:19:52 +0200
Message-Id: <20200918131956.21598-3-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200918131956.21598-1-sw@simonwunderlich.de>
References: <20200918131956.21598-1-sw@simonwunderlich.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1600435199;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=GLaz+OUw/p2Rlw8OuVsKpToIQjd+Rg99AgjrqAzvpHU=;
	b=R7dR8hVDd/VWrnjLf7sVOEXe23WqE7XkKuyWTony7dPaYoe5Gnjf+AppZRQyz/iGSlc3jO
	JNTxoSwdSt3KgGGBiqrt3E/5fEWcSm/Oc3RzwqnXXcVstxcWh+D6g6jCc3oZi23fZmS+fM
	9irpN1cBWkz3sztNSmuXkHi13nNTsag=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1600435199; a=rsa-sha256;
	cv=none;
	b=CgwhOkZbAxbvQzvD2bukO/Ja3TUBfnDh0DCAwpkE8szHm1HPpyb5OvKYk5uLsonF/fO6MI
	pIQ7AceWsYSbt7+Y2CJbgaYE1Si2RXBTIjsvfsHvVdA1W64BgxDvw5X7ZPxl4AnhaqfNBV
	Qg+JFXDEkXclto6mWx6VVGxcUxOpZ9c=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates 79.140.42.25 as permitted sender) smtp.mailfrom=sw@simonwunderlich.de
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: RFHPRQ4WYA67IPADRW6C7AIEZGEVVLEO
X-Message-ID-Hash: RFHPRQ4WYA67IPADRW6C7AIEZGEVVLEO
X-MailFrom: sw@simonwunderlich.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/RFHPRQ4WYA67IPADRW6C7AIEZGEVVLEO/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

From: Linus L=C3=BCssing <linus.luessing@c0d3.blue>

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

Fixes: a73105b8d4c7 ("batman-adv: improved client announcement mechanism"=
)
Signed-off-by: Linus L=C3=BCssing <linus.luessing@c0d3.blue>
Signed-off-by: Sven Eckelmann <sven@narfation.org>
Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
---
 net/batman-adv/routing.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/net/batman-adv/routing.c b/net/batman-adv/routing.c
index 27cdf5e4349a..9e5c71e406ff 100644
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
2.20.1
