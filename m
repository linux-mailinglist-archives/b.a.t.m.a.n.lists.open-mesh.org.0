Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 37DA4457E64
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 20 Nov 2021 13:41:00 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 4E56C83EDA;
	Sat, 20 Nov 2021 13:40:14 +0100 (CET)
Received: from dvalin.narfation.org (dvalin.narfation.org [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 4460583E4F
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 20 Nov 2021 13:40:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1637412009;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=A03LyjbQVjk1DzgeTX6N3dXtPeTxRUSbE8J0ZkRfhoE=;
	b=gYaRgczTSUCAnZW0T4FQkrGpgc1JLdiUpROO6lLVU1Vr11zDhQ/Svgco0xhDU1cEvqNf8v
	CR/aeVakLKZLNJ3YP6pfDJxMmqadSYEA68pdyLXdY5nnqfl0xYJAWZkE2DUFsg/wQV+Zim
	d2cqSS/HlKeLIQFwOqy+ix3OWGkGxKU=
From: Sven Eckelmann <sven@narfation.org>
To: stable@vger.kernel.org
Subject: [PATCH 4.9 5/7] batman-adv: Consider fragmentation for needed_headroom
Date: Sat, 20 Nov 2021 13:39:56 +0100
Message-Id: <20211120123958.260826-6-sven@narfation.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211120123958.260826-1-sven@narfation.org>
References: <20211120123958.260826-1-sven@narfation.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1637412009; a=rsa-sha256;
	cv=none;
	b=UWx83tBLDzXtS2Tl4rEqlrcW9cD5HRAwJkgk3OO3aj1DJD5SytOGgva1f4uyK84aFgb9qh
	acq62n0A0+MUpoZyW0/hSaGMph4VJlgTOqgGDji+glwTw7nqKo/Mc88ILgJiOnVS41O0Tw
	JQRqy1VfHo98xX2Wy9AMyysMJopU2us=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1637412009;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=A03LyjbQVjk1DzgeTX6N3dXtPeTxRUSbE8J0ZkRfhoE=;
	b=Od2ABLEIJKOXHfyReSLSe7PI6wBrr5EN/rPXicr9D/mAQ+SdhtVO6i64cGwgUzLwvVQzrG
	aOe9kAMdcBOaiav7B9mAMcu/N2+YNcB6Gny6QQksPQM7Mc9O8fEvJSj5TTrL/VIcCuOrIS
	8sbU5Vo7X+ZFZx9wkHKOi3LXfpgz/0k=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=gYaRgczT;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: 3NEC6J4AY2VO76EP2UCM42CRLI6B7KWS
X-Message-ID-Hash: 3NEC6J4AY2VO76EP2UCM42CRLI6B7KWS
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/3NEC6J4AY2VO76EP2UCM42CRLI6B7KWS/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

commit 4ca23e2c2074465bff55ea14221175fecdf63c5f upstream.

If a batman-adv packets has to be fragmented, then the original batman-ad=
v
packet header is not stripped away. Instead, only a new header is added i=
n
front of the packet after it was split.

This size must be considered to avoid cost intensive reallocations during
the transmission through the various device layers.

Fixes: 7bca68c7844b ("batman-adv: Add lower layer needed_(head|tail)room =
to own ones")
Reported-by: Linus L=C3=BCssing <linus.luessing@c0d3.blue>
Signed-off-by: Sven Eckelmann <sven@narfation.org>
Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 net/batman-adv/hard-interface.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/net/batman-adv/hard-interface.c b/net/batman-adv/hard-interf=
ace.c
index f528761674df..4f384abb4ced 100644
--- a/net/batman-adv/hard-interface.c
+++ b/net/batman-adv/hard-interface.c
@@ -359,6 +359,9 @@ static void batadv_hardif_recalc_extra_skbroom(struct=
 net_device *soft_iface)
 	needed_headroom =3D lower_headroom + (lower_header_len - ETH_HLEN);
 	needed_headroom +=3D batadv_max_header_len();
=20
+	/* fragmentation headers don't strip the unicast/... header */
+	needed_headroom +=3D sizeof(struct batadv_frag_packet);
+
 	soft_iface->needed_headroom =3D needed_headroom;
 	soft_iface->needed_tailroom =3D lower_tailroom;
 }
--=20
2.30.2
