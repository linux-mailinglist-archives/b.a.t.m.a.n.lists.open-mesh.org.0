Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id DE7FA2C5458
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 26 Nov 2020 14:02:05 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 8AB2F8121A;
	Thu, 26 Nov 2020 14:02:04 +0100 (CET)
Received: from dvalin.narfation.org (dvalin.narfation.org [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 012AA8009A
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 26 Nov 2020 14:02:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1606395197;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=u9brxP8N0Zad68RDWJ6eU6Uvj+b8EOgYlFMeuq6xuxs=;
	b=P8W/YmhcdPLxb73c6tYExpaaeX0D3QinuxJz9eVJOdwWiECUgQI4YSQGS1zE0Fha1CiIMZ
	fTIu8AYvOnPYsbK6ULiGhmT3WE76Or/i/X40vq40v2+Wy+ZRQ11mWFs1MYcIrP+vb/gowU
	Xlg8GATDkz+tutA7cotNBETv8pL+nbU=
From: Sven Eckelmann <sven@narfation.org>
To: netdev@vger.kernel.org
Subject: [PATCH 1/2] vxlan: Add needed_headroom for lower device
Date: Thu, 26 Nov 2020 13:52:46 +0100
Message-Id: <20201126125247.1047977-1-sven@narfation.org>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1606395722;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=u9brxP8N0Zad68RDWJ6eU6Uvj+b8EOgYlFMeuq6xuxs=;
	b=2laKxS8rXVDnwvBaJXfBixW0r+Ngf8OllRJQPUIWyW4gH9BaslxR28Ll443/ZZcO70v7DM
	10KPH9haD82Cbl/oc60mrJdzsR4yY/h+rrtrwQN4M/W+sxb4J8ZSnpfUOFkStEWkbJnMH6
	iHmLYeF9JB5azoiFMhlmokdz89C6cZo=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1606395722; a=rsa-sha256;
	cv=none;
	b=o3Sa6XlVhEjERHTVPJsrPxIQF1Gc1giZfjPRKJhtFxgnXitMrH2PadJAajpLZMYj+cBbBL
	IzudEUsbnGbKeGG88KAmP0PftzPigKQuuGaA5lnIVzS6E6nhDijYeqM5tKi1f8rWaAr3Qv
	7uCUdlAEe497d+8Tt1rgIT7fvdxvFcs=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=P8W/Ymhc;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: 2SUWRI6VVSCHRXIRGTQ3TIOTLU64UZY2
X-Message-ID-Hash: 2SUWRI6VVSCHRXIRGTQ3TIOTLU64UZY2
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: b.a.t.m.a.n@lists.open-mesh.org, linux-kernel@vger.kernel.org, Annika Wickert <annika.wickert@exaring.de>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/2SUWRI6VVSCHRXIRGTQ3TIOTLU64UZY2/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

It was observed that sending data via batadv over vxlan (on top of
wireguard) reduced the performance massively compared to raw ethernet or
batadv on raw ethernet. A check of perf data showed that the
vxlan_build_skb was calling all the time pskb_expand_head to allocate
enough headroom for:

  min_headroom =3D LL_RESERVED_SPACE(dst->dev) + dst->header_len
  		+ VXLAN_HLEN + iphdr_len;

But the vxlan_config_apply only requested needed headroom for:

  lowerdev->hard_header_len + VXLAN6_HEADROOM or VXLAN_HEADROOM

So it completely ignored the needed_headroom of the lower device. The fir=
st
caller of net_dev_xmit could therefore never make sure that enough headro=
om
was allocated for the rest of the transmit path.

Cc: Annika Wickert <annika.wickert@exaring.de>
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 drivers/net/vxlan.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/vxlan.c b/drivers/net/vxlan.c
index 236fcc55a5fd..25b5b5a2dfea 100644
--- a/drivers/net/vxlan.c
+++ b/drivers/net/vxlan.c
@@ -3799,6 +3799,7 @@ static void vxlan_config_apply(struct net_device *d=
ev,
 		dev->gso_max_segs =3D lowerdev->gso_max_segs;
=20
 		needed_headroom =3D lowerdev->hard_header_len;
+		needed_headroom +=3D lowerdev->needed_headroom;
=20
 		max_mtu =3D lowerdev->mtu - (use_ipv6 ? VXLAN6_HEADROOM :
 					   VXLAN_HEADROOM);
--=20
2.29.2
