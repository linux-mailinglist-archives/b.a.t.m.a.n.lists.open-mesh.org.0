Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id CA4B348A882
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 11 Jan 2022 08:36:45 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 952AC807EB;
	Tue, 11 Jan 2022 08:36:44 +0100 (CET)
Received: from smtp.smtpout.orange.fr (smtp02.smtpout.orange.fr [80.12.242.124])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 32668805DB
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 10 Jan 2022 22:32:47 +0100 (CET)
Received: from pop-os.home ([90.11.185.88])
	by smtp.orange.fr with ESMTPA
	id 72HTnAgehniux72HTnshQN; Mon, 10 Jan 2022 22:32:46 +0100
X-ME-Helo: pop-os.home
X-ME-Auth: YWZlNiIxYWMyZDliZWIzOTcwYTEyYzlhMmU3ZiQ1M2U2MzfzZDfyZTMxZTBkMTYyNDBjNDJlZmQ3ZQ==
X-ME-Date: Mon, 10 Jan 2022 22:32:46 +0100
X-ME-IP: 90.11.185.88
From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
To: Marek Lindner <mareklindner@neomailbox.ch>,
	Simon Wunderlich <sw@simonwunderlich.de>,
	Antonio Quartulli <a@unstable.cc>,
	Sven Eckelmann <sven@narfation.org>,
	"David S. Miller" <davem@davemloft.net>,
	Jakub Kicinski <kuba@kernel.org>
Subject: [PATCH] batman-adv: Remove redundant 'flush_workqueue()' calls
Date: Mon, 10 Jan 2022 22:32:27 +0100
Message-Id: <2c2454cd728f427cada2c24cdb1ef2609dec5efc.1641850318.git.christophe.jaillet@wanadoo.fr>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=none (diktynna.open-mesh.org: domain of christophe.jaillet@wanadoo.fr has no SPF policy when checking 80.12.242.124) smtp.mailfrom=christophe.jaillet@wanadoo.fr;
	dmarc=none
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1641850367; a=rsa-sha256;
	cv=none;
	b=TL1ABQJXkslurIr545xVgEa2GKI1w8aVlGPgSqbyh0sTe0sIHJB2/hrJHRQBtyxm8jt3OK
	SAf/Kon6DYJ0qyu/xjx//accyopyNtxkxIxIznfsNW0mw2a3et6FCrN2jCjvoDCV4begYK
	8sH/KEaGmRQkwoDFmfD+u76gYaUvIio=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1641850367;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=WV/hwa7DzSMGC05Hkv2zH3NWgBoEzGORvchROHE9BcY=;
	b=fI0TPM7YHmb24hRiGScf2aQvkF6+m5OHOfFSKP4ORvdR3IoOZZIWjG+jav26YqbReT6MBn
	zrzjYCiMg2BSapz21ktAC1FQtiVT5qUX3+LqIS9L8tPiDT4eWhuPNLfKa93Xg3DXhSovhY
	xMr+qMCXfWmzWuLoV8SHG1dsFy2mgF0=
Content-Transfer-Encoding: quoted-printable
X-MailFrom: christophe.jaillet@wanadoo.fr
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
Message-ID-Hash: WJEKASKH3FG32HFRUQQMRB667OAAIFGK
X-Message-ID-Hash: WJEKASKH3FG32HFRUQQMRB667OAAIFGK
X-Mailman-Approved-At: Tue, 11 Jan 2022 07:36:42 +0100
CC: linux-kernel@vger.kernel.org, kernel-janitors@vger.kernel.org, Christophe JAILLET <christophe.jaillet@wanadoo.fr>, b.a.t.m.a.n@lists.open-mesh.org, netdev@vger.kernel.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/WJEKASKH3FG32HFRUQQMRB667OAAIFGK/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

'destroy_workqueue()' already drains the queue before destroying it, so
there is no need to flush it explicitly.

Remove the redundant 'flush_workqueue()' calls.

This was generated with coccinelle:

@@
expression E;
@@
- 	flush_workqueue(E);
	destroy_workqueue(E);

Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
---
 net/batman-adv/main.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/net/batman-adv/main.c b/net/batman-adv/main.c
index 5207cd8d6ad8..8f1b724d0412 100644
--- a/net/batman-adv/main.c
+++ b/net/batman-adv/main.c
@@ -132,7 +132,6 @@ static void __exit batadv_exit(void)
 	rtnl_link_unregister(&batadv_link_ops);
 	unregister_netdevice_notifier(&batadv_hard_if_notifier);
=20
-	flush_workqueue(batadv_event_workqueue);
 	destroy_workqueue(batadv_event_workqueue);
 	batadv_event_workqueue =3D NULL;
=20
--=20
2.32.0
