Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id A8217457E4F
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 20 Nov 2021 13:40:23 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id C783683E66;
	Sat, 20 Nov 2021 13:39:53 +0100 (CET)
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 5579983DC9
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 20 Nov 2021 13:39:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1637411986;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=CNXCqpdArSs3tZF6WPPEKyniqH5B9fDAONJTJvRSU6M=;
	b=O1Nyey3eKAim6zYdEHcStTWLTn5JWKK7V6igSK7BvWjSKia6XvfIVzJqSfHPtLYH8btOS7
	DWe6IzjZNVManagaRjEpm0NUVErnm8dmxKK1YYQNGoIR1Y/GWT4eiekEOsIPQu01k4Upwu
	SioGqXMXUpbCfiTOZHjtG/unD7bX7ow=
From: Sven Eckelmann <sven@narfation.org>
To: stable@vger.kernel.org
Subject: [PATCH 4.4 08/11] batman-adv: Consider fragmentation for needed_headroom
Date: Sat, 20 Nov 2021 13:39:36 +0100
Message-Id: <20211120123939.260723-9-sven@narfation.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211120123939.260723-1-sven@narfation.org>
References: <20211120123939.260723-1-sven@narfation.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1637411986; a=rsa-sha256;
	cv=none;
	b=HuzhPWYLZVmoKmBta1dtb04HNISUQpT3wSdVkhQmhZOHxg+OxbWXpAHMs6sG/pLse+wzmu
	EL0OpQ+bBbobTHzJZnth4jCmLnnB5EZtI3Z8Ce2mpdXU3+eGE0VngBavO6XjpqWBT1wlvo
	KY54ivk0ZEdiIUq5UUZADXJ/6VKbiww=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1637411986;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=CNXCqpdArSs3tZF6WPPEKyniqH5B9fDAONJTJvRSU6M=;
	b=aLTW8SAXNp2Ms/VuvHz8yqYGCCBIJDbNY98TCBqtlz5qov5obTpCV6QKamxS1ABPSFZDQF
	rjVRQddIqh5dVSe7kAPpl4qQmlo8OKJdamDagcRAxKtw1d1/WL08JVTyb4J0h/aJpfuxuj
	rHXHg2lKvibcQDDvV/LxbMKIMTcI4Zs=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=O1Nyey3e;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: PQDGXG5JY4UXUGNNXYZDI2EKTWDRB7ZT
X-Message-ID-Hash: PQDGXG5JY4UXUGNNXYZDI2EKTWDRB7ZT
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/PQDGXG5JY4UXUGNNXYZDI2EKTWDRB7ZT/>
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
Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 net/batman-adv/hard-interface.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/net/batman-adv/hard-interface.c b/net/batman-adv/hard-interf=
ace.c
index c59bbc327763..0bd7c9e6c9a0 100644
--- a/net/batman-adv/hard-interface.c
+++ b/net/batman-adv/hard-interface.c
@@ -316,6 +316,9 @@ static void batadv_hardif_recalc_extra_skbroom(struct=
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
