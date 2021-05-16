Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CAB9382178
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 17 May 2021 00:33:24 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id BF1E183DE8;
	Mon, 17 May 2021 00:33:18 +0200 (CEST)
Received: from mail.aperture-lab.de (mail.aperture-lab.de [116.203.183.178])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 0346E80990
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 17 May 2021 00:33:15 +0200 (CEST)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 71CD43ED8D;
	Mon, 17 May 2021 00:33:15 +0200 (CEST)
From: =?UTF-8?q?Linus=20L=C3=BCssing?= <linus.luessing@c0d3.blue>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: =?UTF-8?q?Linus=20L=C3=BCssing?= <linus.luessing@c0d3.blue>
Subject: [PATCH v3 2/3] batman-adv: bcast: avoid skb-copy for (re)queued broadcasts
Date: Mon, 17 May 2021 00:33:08 +0200
Message-Id: <20210516223309.12596-2-linus.luessing@c0d3.blue>
In-Reply-To: <20210516223309.12596-1-linus.luessing@c0d3.blue>
References: <20210516223309.12596-1-linus.luessing@c0d3.blue>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Last-TLS-Session-Version: TLSv1.2
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1621204396; a=rsa-sha256;
	cv=none;
	b=zWAWu2AjRcUkRdJEUWp90J+wgtF438E44ZXwb6O+Q0BvmFgzbtl5dNaInfCN4JXUcs93B9
	qwFlYlhrX6Z9weNBhwVOqBlV4RYIiO7t3tw1mC6ljYfuPW/aGzF4B/oXDGnPcAuYVIfuYp
	lvVsn6HVy2OZbHtIb60hqihl0S36PWM=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=none (diktynna.open-mesh.org: domain of linus.luessing@c0d3.blue has no SPF policy when checking 116.203.183.178) smtp.mailfrom=linus.luessing@c0d3.blue
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1621204396;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=bRxs+DTZxBlEyMUeTWGEtRh3gRUPUTveZPau1884Hj0=;
	b=Q9RsOkyNhWdAd2Yn4vPYYelcxFycVmN2EDKxbi3jtAFEWMXOAtlgx8D5OvHf53QRn0zqwi
	KMA9jzrDoA6oemXZHOTPhtPXKq6FAFiebGzIf4NRqos8PYLvF5zbuft7+w1MHZcjN8bZSH
	I6zMY2KfUJMjW3G/wlacCIiM3Pjd95c=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: UIHURWWDZ7XHJ4WHGY6EUSOBTU6OISCL
X-Message-ID-Hash: UIHURWWDZ7XHJ4WHGY6EUSOBTU6OISCL
X-MailFrom: linus.luessing@c0d3.blue
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/UIHURWWDZ7XHJ4WHGY6EUSOBTU6OISCL/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Broadcast packets send via batadv_send_outstanding_bcast_packet() were
originally copied in batadv_forw_bcast_packet_to_list() before being
queued. And after that only the ethernet header will be pushed through
batadv_send_broadcast_skb()->batadv_send_skb_packet() which works safely
on skb clones as it uses batadv_skb_head_push()->skb_cow_head().

Signed-off-by: Linus L=C3=BCssing <linus.luessing@c0d3.blue>
---

Changelog v3:

* newly added this patch, to move skb_copy()->skb_clone() change from
  PATCH 01/03 to a separate patch with its own explanation

 net/batman-adv/send.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/batman-adv/send.c b/net/batman-adv/send.c
index 07b0ba26..0b9dd29d 100644
--- a/net/batman-adv/send.c
+++ b/net/batman-adv/send.c
@@ -1072,7 +1072,7 @@ static void batadv_send_outstanding_bcast_packet(st=
ruct work_struct *work)
 	}
=20
 	/* send a copy of the saved skb */
-	skb1 =3D skb_copy(forw_packet->skb, GFP_ATOMIC);
+	skb1 =3D skb_clone(forw_packet->skb, GFP_ATOMIC);
 	if (!skb1)
 		goto out;
=20
--=20
2.31.0
