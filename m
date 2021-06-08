Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C9ED39FAE8
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue,  8 Jun 2021 17:36:00 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 8075183F22;
	Tue,  8 Jun 2021 17:35:56 +0200 (CEST)
Received: from simonwunderlich.de (packetmixer.de [IPv6:2001:4d88:2000:24::c0de])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 45F2E81708
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue,  8 Jun 2021 17:35:29 +0200 (CEST)
Received: from kero.packetmixer.de (p200300c5970dd3e020a52263b5aabfb3.dip0.t-ipconnect.de [IPv6:2003:c5:970d:d3e0:20a5:2263:b5aa:bfb3])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by simonwunderlich.de (Postfix) with ESMTPSA id 6F9B217405D;
	Tue,  8 Jun 2021 17:29:54 +0200 (CEST)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: davem@davemloft.net,
	kuba@kernel.org
Subject: [PATCH 1/1] batman-adv: Avoid WARN_ON timing related checks
Date: Tue,  8 Jun 2021 17:29:47 +0200
Message-Id: <20210608152947.30833-2-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210608152947.30833-1-sw@simonwunderlich.de>
References: <20210608152947.30833-1-sw@simonwunderlich.de>
MIME-Version: 1.0
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1623166529; a=rsa-sha256;
	cv=none;
	b=LbyJef2VNNLvR/XGmqNts7WirZZbN9gYY22039gDeksdRjh60TEA26tfOLV1/4rJ7/qJ2+
	k5jsQdfPlwNsB3VaBsh7hl2H6wVZ5H9R+sCy4348F/JX8q3QEXenvL54UJK2EGjDdINdk8
	Xgy87tO4XpoTQHlnu8bTOWcdHO9BeOw=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates 2001:4d88:2000:24::c0de as permitted sender) smtp.mailfrom=sw@simonwunderlich.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1623166529;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=0fqWiq6suCtvs5P/w7XJcEx7Ieyw2OjkWP5JV5pESEo=;
	b=rwT2LUZAxL9zIScGbLhrxBT6th4MxZZFtk65x9HrtMgow7QXQwc4LLz6xhfHJP5NMf/dZy
	pNvZ/Ci3pjvQ+JlsCeWir1BR/seN7FkK2dtTqft+fYlqRIhRKANdXXzM7b+mg2V3lPKM4W
	jCgq+Hh9KR4q7i7Z6Riq2O7q2mN+Wv0=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: U6WWC6ROIXWGZ4LRAW3KKJHX5SAWC3V2
X-Message-ID-Hash: U6WWC6ROIXWGZ4LRAW3KKJHX5SAWC3V2
X-MailFrom: sw@simonwunderlich.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org, Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>, syzbot+c0b807de416427ff3dd1@syzkaller.appspotmail.com
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/U6WWC6ROIXWGZ4LRAW3KKJHX5SAWC3V2/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

From: Sven Eckelmann <sven@narfation.org>

The soft/batadv interface for a queued OGM can be changed during the time
the OGM was queued for transmission and when the OGM is actually
transmitted by the worker.

But WARN_ON must be used to denote kernel bugs and not to print simple
warnings. A warning can simply be printed using pr_warn.

Reported-by: Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>
Reported-by: syzbot+c0b807de416427ff3dd1@syzkaller.appspotmail.com
Fixes: ef0a937f7a14 ("batman-adv: consider outgoing interface in OGM send=
ing")
Signed-off-by: Sven Eckelmann <sven@narfation.org>
Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
---
 net/batman-adv/bat_iv_ogm.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/net/batman-adv/bat_iv_ogm.c b/net/batman-adv/bat_iv_ogm.c
index 789f257be24f..fc8be49010b9 100644
--- a/net/batman-adv/bat_iv_ogm.c
+++ b/net/batman-adv/bat_iv_ogm.c
@@ -409,8 +409,10 @@ static void batadv_iv_ogm_emit(struct batadv_forw_pa=
cket *forw_packet)
 	if (WARN_ON(!forw_packet->if_outgoing))
 		return;
=20
-	if (WARN_ON(forw_packet->if_outgoing->soft_iface !=3D soft_iface))
+	if (forw_packet->if_outgoing->soft_iface !=3D soft_iface) {
+		pr_warn("%s: soft interface switch for queued OGM\n", __func__);
 		return;
+	}
=20
 	if (forw_packet->if_incoming->if_status !=3D BATADV_IF_ACTIVE)
 		return;
--=20
2.20.1
