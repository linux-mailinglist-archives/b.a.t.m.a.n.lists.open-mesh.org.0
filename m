Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EB2838804E
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 18 May 2021 21:07:08 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id D1A328274B;
	Tue, 18 May 2021 21:07:06 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 47397802C9
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 18 May 2021 21:07:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1621364442;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=rcbz4hBPWSDrER/T5B2XT5+r+5jz9YqLR2JW9zcK1sc=;
	b=D+5q3OiV7bMMSclz5faP7xisz2aNfhOlKWTMe4iHC4tGkyovpF9S8In0Qo21UN4EQQoEm6
	PGKl8DXtxEn4JF2xfkgToQgzDwpW+yIDnFFp9nFpaHuberV3KIUN1vGlcKu1ZHdhsiZ6S7
	cZTLtRt+BLKPeiWo1512X8A2cEWjL8E=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: [PATCH] batman-adv: Avoid WARN_ON timing related checks
Date: Tue, 18 May 2021 21:00:27 +0200
Message-Id: <20210518190027.547508-1-sven@narfation.org>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1621364824; a=rsa-sha256;
	cv=none;
	b=aQC/7zcFd+kW/ytbgy85oITj5/qDt7CB4+wzHQsFDKaudm4L0CbGRBZzU+zxRm73oaQoSK
	NF+los9x1bmEejdcyMgo7uNs8KEoZyQBQWZvJKOKuLuh8LgJ4YhalarVt2BG7X92SOM0dz
	cW3RoOohmchncjrJ7iktqNEXa31xKXY=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=D+5q3OiV;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1621364824;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=rcbz4hBPWSDrER/T5B2XT5+r+5jz9YqLR2JW9zcK1sc=;
	b=Uk9mtkg97aO/cDnwm26ytwByo0WTuhdaRu8JXpC+e3u7+u8r7VcKQsKyl/bqX0yUoOnad/
	ILOrxohLebVlD5XUYPGbFosNKbgZK8zVqW4NlIR7u2Iv9kRy3y7l6TQnUBe3T228RMFXRo
	h60BWZZ2fqTCtOX4njJGGEP25O2cNYs=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: STDN5Y2CAGVGMUQPSDYHB6P4YY426XV5
X-Message-ID-Hash: STDN5Y2CAGVGMUQPSDYHB6P4YY426XV5
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/STDN5Y2CAGVGMUQPSDYHB6P4YY426XV5/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

The soft/batadv interface for a queued OGM can be changed during the time
the OGM was queued for transmission and when the OGM is actually
transmitted by the worker.

But WARN_ON must be used to denote kernel bugs and not to print simple
warnings. A warning can simply be printed using pr_warn.

Reported-by: Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>
Reported-by: syzbot+c0b807de416427ff3dd1@syzkaller.appspotmail.com
Fixes: 29b9256e6631 ("batman-adv: consider outgoing interface in OGM send=
ing")
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 net/batman-adv/bat_iv_ogm.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/net/batman-adv/bat_iv_ogm.c b/net/batman-adv/bat_iv_ogm.c
index 680def80..12022378 100644
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
2.30.2
