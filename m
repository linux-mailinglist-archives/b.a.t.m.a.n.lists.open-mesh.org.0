Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id CB531457E59
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 20 Nov 2021 13:40:35 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 0117881A7E;
	Sat, 20 Nov 2021 13:39:57 +0100 (CET)
Received: from dvalin.narfation.org (dvalin.narfation.org [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 49E3F83DBD
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 20 Nov 2021 13:39:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1637411987;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=4maUAAS44X66FxWwAzQabuiiYD7i+Wp6i2zb+oOcTlg=;
	b=lPRpHNnNnRf9/6aY+Y/kI+k7HE3xH3EOkP3uTDMovdz/YQvHnUmC1tAxh77aQ5m6U8iguP
	0IK7r2+TDGdsQNJK2gGRztKs/pNp/snz3cE5J1aUWm1qBsgjF63NCQ9LtPzJOep3iENp+g
	9ze9w2Y6xd1dOItWXLu3xKleXtNxKh4=
From: Sven Eckelmann <sven@narfation.org>
To: stable@vger.kernel.org
Subject: [PATCH 4.4 11/11] batman-adv: Avoid WARN_ON timing related checks
Date: Sat, 20 Nov 2021 13:39:39 +0100
Message-Id: <20211120123939.260723-12-sven@narfation.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211120123939.260723-1-sven@narfation.org>
References: <20211120123939.260723-1-sven@narfation.org>
MIME-Version: 1.0
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1637411988; a=rsa-sha256;
	cv=none;
	b=rNi4DwhS6MvMHrj3p6umvxEEEvsGRrkGd360kjvmwPmEUpfCUkVBGPQAqhIOjkvLLV9855
	RiirUJ5SevwJsWEgkuNe42dyW3xJaBMB/+XwY3gVzb4rFQVBLGoGUFZPZGrI3sCVNnNaqh
	OFhyhHqRrk9Bs10PdupPevdX8IjIEj4=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1637411988;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=4maUAAS44X66FxWwAzQabuiiYD7i+Wp6i2zb+oOcTlg=;
	b=jj3ngFUHRSdn3uTV3SGLnbHneJjAHt1lZ9XoFUxeGeIxcw9dVzB56yZGgMNReV0YvMMIX6
	shvJwW52ICik3VangWiCnJpJgCu50+n5S4YGqZ6NekVLjxjrhvhJJnIwEaLo76ceP1FvMR
	DxGgb1hnHT8JSq2hG0tXsZx80Smw9uQ=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=lPRpHNnN;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: DULIJR5ZXAF35A5RD3YMUXECT66KQG7T
X-Message-ID-Hash: DULIJR5ZXAF35A5RD3YMUXECT66KQG7T
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: b.a.t.m.a.n@lists.open-mesh.org, Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>, syzbot+c0b807de416427ff3dd1@syzkaller.appspotmail.com
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/DULIJR5ZXAF35A5RD3YMUXECT66KQG7T/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

commit 9f460ae31c4435fd022c443a6029352217a16ac1 upstream.

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
[ bp: 4.4 backported: adjust context. ]
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 net/batman-adv/bat_iv_ogm.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/net/batman-adv/bat_iv_ogm.c b/net/batman-adv/bat_iv_ogm.c
index caea5bb38d4b..6f8d2fe114f6 100644
--- a/net/batman-adv/bat_iv_ogm.c
+++ b/net/batman-adv/bat_iv_ogm.c
@@ -526,8 +526,10 @@ static void batadv_iv_ogm_emit(struct batadv_forw_pa=
cket *forw_packet)
 	if (WARN_ON(!forw_packet->if_outgoing))
 		goto out;
=20
-	if (WARN_ON(forw_packet->if_outgoing->soft_iface !=3D soft_iface))
+	if (forw_packet->if_outgoing->soft_iface !=3D soft_iface) {
+		pr_warn("%s: soft interface switch for queued OGM\n", __func__);
 		goto out;
+	}
=20
 	if (forw_packet->if_incoming->if_status !=3D BATADV_IF_ACTIVE)
 		goto out;
--=20
2.30.2
