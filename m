Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 85162457E48
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 20 Nov 2021 13:40:19 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id E40E183E8B;
	Sat, 20 Nov 2021 13:39:52 +0100 (CET)
Received: from dvalin.narfation.org (dvalin.narfation.org [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id AECC783DA4
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 20 Nov 2021 13:39:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1637411985;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=GtMYygK9CveU6Qg0qkcv5EHFKfWIoCejXMN28DDIRIY=;
	b=mRFyaOYVDSJP4O2rjxp8DbsFExQjcs+wmPTu+x0xn0HNQX3IR5SRcjSsSc8/vzn+SANXIZ
	G9acRpR+yN4kRvtgNJjeWjFj8qLDY7TFlHfncl4CVTAeOtAeBSOA02O2wtQm2z9iuId35C
	kDixKdMqRh9WfV5iMnR0UaXwk+fxLmw=
From: Sven Eckelmann <sven@narfation.org>
To: stable@vger.kernel.org
Subject: [PATCH 4.4 07/11] batman-adv: set .owner to THIS_MODULE
Date: Sat, 20 Nov 2021 13:39:35 +0100
Message-Id: <20211120123939.260723-8-sven@narfation.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211120123939.260723-1-sven@narfation.org>
References: <20211120123939.260723-1-sven@narfation.org>
MIME-Version: 1.0
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1637411985; a=rsa-sha256;
	cv=none;
	b=mMAhrQTyaRv95OP/ULESCKLXg8hkMbYAsyriGgJTjCyUbWHXtp4KbS9N0ANbB/l/cocPtQ
	p8F/3mzPthL3eKk3exUebHFGpYZJizSvm2vZ/FkOH78o0jRiW16WtRze463Gbl3ca5FmN5
	6/AstmZCyzaSEhMS4skFMRnUFri4BsA=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1637411985;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=GtMYygK9CveU6Qg0qkcv5EHFKfWIoCejXMN28DDIRIY=;
	b=ZFLjn7WA7nY+V/csFrb/TeUZR/5dppzMxfd5WKEQI7DJFQeWXh6dtgFCXrxgRfn2rT4Zno
	/BpMSz8cJkizzIpsk5kfbdrlINt186YkWX9yfg0xV8opQNJYflrE6L3zqbNmbmJLZtvR+Q
	MO2Rn9DYwbCP5+w+tVlQ1lCrBNJbVqg=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=mRFyaOYV;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: AXALYBQOPBDKP5OOIZRJDQKBDCELTZHU
X-Message-ID-Hash: AXALYBQOPBDKP5OOIZRJDQKBDCELTZHU
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: b.a.t.m.a.n@lists.open-mesh.org, Taehee Yoo <ap420073@gmail.com>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/AXALYBQOPBDKP5OOIZRJDQKBDCELTZHU/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

From: Taehee Yoo <ap420073@gmail.com>

commit 14a2e551faea53d45bc11629a9dac88f88950ca7 upstream.

If THIS_MODULE is not set, the module would be removed while debugfs is
being used.
It eventually makes kernel panic.

Fixes: c6c8fea29769 ("net: Add batman-adv meshing protocol")
Signed-off-by: Taehee Yoo <ap420073@gmail.com>
Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
[ bp: 4.4 backported: switch to old filename. ]
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 net/batman-adv/debugfs.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/net/batman-adv/debugfs.c b/net/batman-adv/debugfs.c
index b2ef03a3a2d4..b905763dc2e7 100644
--- a/net/batman-adv/debugfs.c
+++ b/net/batman-adv/debugfs.c
@@ -214,6 +214,7 @@ static const struct file_operations batadv_log_fops =3D=
 {
 	.read           =3D batadv_log_read,
 	.poll           =3D batadv_log_poll,
 	.llseek         =3D no_llseek,
+	.owner          =3D THIS_MODULE,
 };
=20
 static int batadv_debug_log_setup(struct batadv_priv *bat_priv)
--=20
2.30.2
