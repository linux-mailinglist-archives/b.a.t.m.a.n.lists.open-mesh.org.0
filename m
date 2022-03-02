Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 203B34CAA60
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed,  2 Mar 2022 17:35:36 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id A699880871;
	Wed,  2 Mar 2022 17:35:28 +0100 (CET)
Received: from simonwunderlich.de (simonwunderlich.de [23.88.38.48])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id A991F80871
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed,  2 Mar 2022 17:35:25 +0100 (CET)
Received: from kero.packetmixer.de (p200300c597470fC0d439FbE5C3508408.dip0.t-ipconnect.de [IPv6:2003:c5:9747:fc0:d439:fbe5:c350:8408])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by simonwunderlich.de (Postfix) with ESMTPSA id 6E633FA74D;
	Wed,  2 Mar 2022 17:35:25 +0100 (CET)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: kuba@kernel.org,
	davem@davemloft.net
Subject: [PATCH 2/4] batman-adv: Remove redundant 'flush_workqueue()' calls
Date: Wed,  2 Mar 2022 17:35:20 +0100
Message-Id: <20220302163522.102842-3-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220302163522.102842-1-sw@simonwunderlich.de>
References: <20220302163522.102842-1-sw@simonwunderlich.de>
MIME-Version: 1.0
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	dmarc=none;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates 23.88.38.48 as permitted sender) smtp.mailfrom=sw@simonwunderlich.de
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1646238925; a=rsa-sha256;
	cv=none;
	b=NoPyWuIIvUbISp+BYvd2MHofvXJ2ay8QVZCgLZFoUHF/3pAa5lz0/0LyWAFtoBPY4SaIJs
	or57awCF2LuPjsHf4DWKAyRpZiOpcb7/mzvR1pzYuqkostlnBoWy4lSCoU+iUVBuoWXw84
	nGcyk2onkcXnOBrFWsjYhgX5Wadupw8=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1646238925;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=+3Zz2WOLPcQ8Je3YQs+HlkCBiCdkcGpVPwCNFMQwMMU=;
	b=t+loJNqmqrGT5xkL47+ycO4I/b7Zmfm5MqJQeUtQ15uWEb9HgPKT32UG7xZp2L2nxZko7v
	P2tHmZo1ICf3Wx/hbCpkhspr/nnE9Wq1SPBlUFcAzQbd917u5nVs07z1hQmM31YV02BIsd
	SQYG9IWfJtrxjzRz6xGycTXg0BVdhtc=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: SSYEI7IHZ5LLH265SFYNQLPAP32UV7MR
X-Message-ID-Hash: SSYEI7IHZ5LLH265SFYNQLPAP32UV7MR
X-MailFrom: sw@simonwunderlich.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org, Christophe JAILLET <christophe.jaillet@wanadoo.fr>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/SSYEI7IHZ5LLH265SFYNQLPAP32UV7MR/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>

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
Signed-off-by: Sven Eckelmann <sven@narfation.org>
Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
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
2.30.2
