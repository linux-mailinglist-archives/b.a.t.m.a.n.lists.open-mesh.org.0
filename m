Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id E4EF52C545D
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 26 Nov 2020 14:02:09 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 3642B819D4;
	Thu, 26 Nov 2020 14:02:05 +0100 (CET)
Received: from dvalin.narfation.org (dvalin.narfation.org [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 2E1B08121A
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 26 Nov 2020 14:02:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1606395200;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=zV9ZqDHzPB9d6PtOImamgvuZOteIZ+VW/oQO+TRb7O4=;
	b=sq37VNJcpPUyveuutj+PATo+Uq9ER3tH2NTmSO/Ymq+2rWJByIjSZsbSO3D8KnbeAYSOWD
	h+vj9d0RVPDjKVJ0uhAJRD+YuvDCUJqL4ZjMfwgPbGnW+nKoBe6bm1Bgi/U0Mair7BtMBH
	yj656QvWwdBxWj/6VXVP6WZpcZmAl9A=
From: Sven Eckelmann <sven@narfation.org>
To: netdev@vger.kernel.org
Subject: [PATCH 2/2] vxlan: Copy needed_tailroom from lowerdev
Date: Thu, 26 Nov 2020 13:52:47 +0100
Message-Id: <20201126125247.1047977-2-sven@narfation.org>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20201126125247.1047977-1-sven@narfation.org>
References: <20201126125247.1047977-1-sven@narfation.org>
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1606395722;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=zV9ZqDHzPB9d6PtOImamgvuZOteIZ+VW/oQO+TRb7O4=;
	b=rLccsLzUsD4WOivYumxj33S0W6KsI9lIJoaVBd9HeCcWIR1Hn03834TC4aNJFLhjfNqlfD
	j8jR1ZiQyw6W1s0MWSn06W+ua+ux609r7vW+gt9xhcLhvNu4O6xs6j2jpmhSpeSSEuha+/
	hPflFoLeqcPDWUOBgSvla9uv/WFxgq4=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1606395722; a=rsa-sha256;
	cv=none;
	b=iHHwh8rbzv1lBZmglIf+ms0sbykLZrv28iJ6PlUtROgyJwf/pzKlEFbxl/Z5VRaHwuy5af
	6AGRRmXOJz6MkSuzQ61ij8vw4gRI/4T+Z1N7jUaR6NLun7FL7Mq1n7BRNf9Ofp+YBc3pCE
	CraiTGhIy6fVejjt4r6IKbBUQ5QWSyI=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=sq37VNJc;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: GG3UMOVUEE3F6A6VS6IFVCARA5OU7UKG
X-Message-ID-Hash: GG3UMOVUEE3F6A6VS6IFVCARA5OU7UKG
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: b.a.t.m.a.n@lists.open-mesh.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/GG3UMOVUEE3F6A6VS6IFVCARA5OU7UKG/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

While vxlan doesn't need any extra tailroom, the lowerdev might need it. =
In
that case, copy it over to reduce the chance for additional (re)allocatio=
ns
in the transmit path.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 drivers/net/vxlan.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/net/vxlan.c b/drivers/net/vxlan.c
index 25b5b5a2dfea..44bb02122526 100644
--- a/drivers/net/vxlan.c
+++ b/drivers/net/vxlan.c
@@ -3801,6 +3801,8 @@ static void vxlan_config_apply(struct net_device *d=
ev,
 		needed_headroom =3D lowerdev->hard_header_len;
 		needed_headroom +=3D lowerdev->needed_headroom;
=20
+		dev->needed_tailroom =3D lowerdev->needed_tailroom;
+
 		max_mtu =3D lowerdev->mtu - (use_ipv6 ? VXLAN6_HEADROOM :
 					   VXLAN_HEADROOM);
 		if (max_mtu < ETH_MIN_MTU)
--=20
2.29.2
