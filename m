Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 65807655C80
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 25 Dec 2022 07:20:13 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 229E683EB9;
	Sun, 25 Dec 2022 07:20:12 +0100 (CET)
Received: from gw.red-soft.ru (red-soft.ru [188.246.186.2])
	by diktynna.open-mesh.org (Postfix) with ESMTP id B9B7F803C8
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 25 Dec 2022 00:39:40 +0100 (CET)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1671925180;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=puLRAMgYIXVDOP6+93hdug8XDjkLwLUW6zHDCkzr+KI=;
	b=T473KcHxpYXfDkkmP99oL3bHMSOcvJW4Kg6aX1FzXpQD155qeF4vAyW51ntKG7vBHyBiYq
	vamTiss549yJLcP25fg/h43yOE8Fc4MpIfK2P92OQ9KonsA0vNLEPNfISPCcyjoUw8lVou
	NkjSkDNkVtPhKz2jwpv8At2scNYvMB8=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	dmarc=none;
	spf=pass (diktynna.open-mesh.org: domain of artem.chernyshev@red-soft.ru designates 188.246.186.2 as permitted sender) smtp.mailfrom=artem.chernyshev@red-soft.ru
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1671925180; a=rsa-sha256;
	cv=none;
	b=dusm3I4DmfnIPDgpwnwI9VpNLuOwjGJ0Ix202VleRuZJ7gf9whI9fFRw3qqnEgpMm9yoBC
	Z44nxC5cTCzdtQjcutd2pCP611+NCzCkjCzElfdpj2scEbt61vd3d/G6gr1YiNxj5RnAn9
	AbAfctgJ8pInnHobgnfifrKnqe0ABQw=
Received: from localhost.biz (unknown [10.81.81.211])
	by gw.red-soft.ru (Postfix) with ESMTPA id 689123E1A04;
	Sun, 25 Dec 2022 02:33:16 +0300 (MSK)
From: Artem Chernyshev <artem.chernyshev@red-soft.ru>
To: Sven Eckelmann <sven@narfation.org>
Subject: [PATCH] batman-adv: Check return value
Date: Sun, 25 Dec 2022 02:33:11 +0300
Message-Id: <20221224233311.48678-1-artem.chernyshev@red-soft.ru>
X-Mailer: git-send-email 2.30.3
MIME-Version: 1.0
X-KLMS-Rule-ID: 1
X-KLMS-Message-Action: clean
X-KLMS-AntiSpam-Lua-Profiles: 174384 [Dec 24 2022]
X-KLMS-AntiSpam-Version: 5.9.59.0
X-KLMS-AntiSpam-Envelope-From: artem.chernyshev@red-soft.ru
X-KLMS-AntiSpam-Rate: 0
X-KLMS-AntiSpam-Status: not_detected
X-KLMS-AntiSpam-Method: none
X-KLMS-AntiSpam-Auth: dkim=none
X-KLMS-AntiSpam-Info: LuaCore: 502 502 69dee8ef46717dd3cb3eeb129cb7cc8dab9e30f6, {Tracking_from_domain_doesnt_match_to}, red-soft.ru:7.1.1;d41d8cd98f00b204e9800998ecf8427e.com:7.1.1;127.0.0.199:7.1.2;localhost.biz:7.1.1
X-MS-Exchange-Organization-SCL: -1
X-KLMS-AntiSpam-Interceptor-Info: scan successful
X-KLMS-AntiPhishing: Clean, bases: 2022/12/24 20:53:00
X-KLMS-AntiVirus: Kaspersky Security for Linux Mail Server, version 8.0.3.30, bases: 2022/12/24 20:35:00 #20705035
X-KLMS-AntiVirus-Status: Clean, skipped
Content-Transfer-Encoding: quoted-printable
X-MailFrom: artem.chernyshev@red-soft.ru
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
Message-ID-Hash: O3DLCBZVT3OJMSX4XBXXCLPKRIH3IUPO
X-Message-ID-Hash: O3DLCBZVT3OJMSX4XBXXCLPKRIH3IUPO
X-Mailman-Approved-At: Sun, 25 Dec 2022 06:20:09 +0100
CC: Artem Chernyshev <artem.chernyshev@red-soft.ru>, Marek Lindner <mareklindner@neomailbox.ch>, b.a.t.m.a.n@lists.open-mesh.org, netdev@vger.kernel.org, linux-kernel@vger.kernel.org, lvc-project@linuxtesting.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/O3DLCBZVT3OJMSX4XBXXCLPKRIH3IUPO/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Check, if rtnl_link_register() call in batadv_init() was successful

Found by Linux Verification Center (linuxtesting.org) with SVACE.

Fixes: a4ac28c0d06a ("batman-adv: Allow to use rntl_link for device creat=
ion/deletion")
Signed-off-by: Artem Chernyshev <artem.chernyshev@red-soft.ru>
---
 net/batman-adv/main.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/net/batman-adv/main.c b/net/batman-adv/main.c
index e8a449915566..04cd9682bd29 100644
--- a/net/batman-adv/main.c
+++ b/net/batman-adv/main.c
@@ -113,7 +113,11 @@ static int __init batadv_init(void)
 		goto err_create_wq;
=20
 	register_netdevice_notifier(&batadv_hard_if_notifier);
-	rtnl_link_register(&batadv_link_ops);
+	ret =3D rtnl_link_register(&batadv_link_ops);
+	if (ret) {
+		pr_err("Can't register link_ops\n");
+		goto err_create_wq;
+	}
 	batadv_netlink_register();
=20
 	pr_info("B.A.T.M.A.N. advanced %s (compatibility version %i) loaded\n",
--=20
2.30.3
