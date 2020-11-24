Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EAAE2C28B6
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 24 Nov 2020 14:53:17 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 29824803D5;
	Tue, 24 Nov 2020 14:53:16 +0100 (CET)
Received: from simonwunderlich.de (simonwunderlich.de [79.140.42.25])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 611478026D
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 24 Nov 2020 14:53:13 +0100 (CET)
Received: from kero.packetmixer.de (p200300c59720c9e082fbfcd64a8e5ba3.dip0.t-ipconnect.de [IPv6:2003:c5:9720:c9e0:82fb:fcd6:4a8e:5ba3])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by simonwunderlich.de (Postfix) with ESMTPSA id 4107B174060;
	Tue, 24 Nov 2020 14:44:19 +0100 (CET)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: davem@davemloft.net,
	kuba@kernel.org
Subject: [PATCH 1/1] batman-adv: set .owner to THIS_MODULE
Date: Tue, 24 Nov 2020 14:44:17 +0100
Message-Id: <20201124134417.17269-2-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201124134417.17269-1-sw@simonwunderlich.de>
References: <20201124134417.17269-1-sw@simonwunderlich.de>
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1606225993;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=kqHtIremu6XGkTJIpqmXRZbCdkKvlS8xjuzVxdI4C1w=;
	b=oJ6aE2kkOqb6sNNw11OJ3hT20NX5hnyXTrR+dGpFXnYTBmTSrt16bBYg46YSvF+vWt6v9Z
	IxtfdCLHa1SyoZZUDRHW+zbHGEISMajVo/8Rbs4n3XD3ZQpsNxJCgTZmyFtwe+PO3vDr+C
	zKe8YeHtADLLSDkxDpDHaA0iJNlzUMY=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1606225993; a=rsa-sha256;
	cv=none;
	b=Zmi9K0+eYsI0cfKAxI60InTD8ZbO/fOMgfMySpQhzDJCFck5g4zrVEC+eiScx0r7BvboM1
	4QuxT9grn1hx094qEW2ZdHUg7kGUhaonwslUSdShhR2gtDIpo0d7QWGHBnNs0iRJjZchC0
	ISvXOwd/Z36he+emqVVB6bw/xo+tXMQ=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates 79.140.42.25 as permitted sender) smtp.mailfrom=sw@simonwunderlich.de
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: M6NAFH6VULGKA3UBDASYSI5YT6BBB4EA
X-Message-ID-Hash: M6NAFH6VULGKA3UBDASYSI5YT6BBB4EA
X-MailFrom: sw@simonwunderlich.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org, Taehee Yoo <ap420073@gmail.com>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/M6NAFH6VULGKA3UBDASYSI5YT6BBB4EA/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

From: Taehee Yoo <ap420073@gmail.com>

If THIS_MODULE is not set, the module would be removed while debugfs is
being used.
It eventually makes kernel panic.

Fixes: c6c8fea29769 ("net: Add batman-adv meshing protocol")
Signed-off-by: Taehee Yoo <ap420073@gmail.com>
Signed-off-by: Sven Eckelmann <sven@narfation.org>
Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
---
 net/batman-adv/log.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/net/batman-adv/log.c b/net/batman-adv/log.c
index a67b2b091447..c0ca5fbe5b08 100644
--- a/net/batman-adv/log.c
+++ b/net/batman-adv/log.c
@@ -180,6 +180,7 @@ static const struct file_operations batadv_log_fops =3D=
 {
 	.read           =3D batadv_log_read,
 	.poll           =3D batadv_log_poll,
 	.llseek         =3D no_llseek,
+	.owner          =3D THIS_MODULE,
 };
=20
 /**
--=20
2.20.1
