Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C4ED250258
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 24 Aug 2020 18:30:52 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 89D5E80489;
	Mon, 24 Aug 2020 18:30:49 +0200 (CEST)
Received: from simonwunderlich.de (simonwunderlich.de [79.140.42.25])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 29E6D8010F
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 24 Aug 2020 18:30:46 +0200 (CEST)
Received: from kero.packetmixer.de (p200300c5970d68d0e0160e8a82c5fd76.dip0.t-ipconnect.de [IPv6:2003:c5:970d:68d0:e016:e8a:82c5:fd76])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by simonwunderlich.de (Postfix) with ESMTPSA id 92AA76205E;
	Mon, 24 Aug 2020 18:21:14 +0200 (CEST)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: davem@davemloft.net
Subject: [PATCH 1/3] batman-adv: Avoid uninitialized chaddr when handling DHCP
Date: Mon, 24 Aug 2020 18:21:09 +0200
Message-Id: <20200824162111.29220-2-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200824162111.29220-1-sw@simonwunderlich.de>
References: <20200824162111.29220-1-sw@simonwunderlich.de>
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1598286646;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=uDCN1bAanxSVwYKLfioX796nmmxpa6n9BAyBGA0ffgs=;
	b=Sn2l2lmg7hoKurMD1PQdIZHdadagvFF+HOn6OqYWmsFlRNPl1yCrzztmrXNqy9wUqW8NgC
	h7lSF79ce7+abOtULwL+QUZMIkhQ4CK3fEhyvurZ0md1l40olFK9ZXgSwlu9IXvgYqRGzz
	I7V/ZSq/enwRKhiR2ksIRYvgN3mZt30=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1598286646; a=rsa-sha256;
	cv=none;
	b=H4ItI6WGhJ2vnECQ8xhZPyl1xzKsZd9vIJGDsLLym5zLVkmzrIuR6e1d2bpYW5USk4AUFo
	19X9qzqIRIfiFmDWaeGztWqpLDbIvJ4H7FUVr/jG7fxwy0pZD05aZaXt2mIbIOpGLw7S6V
	WsOZ2fy4dJnQdUGit63C0Nc17GaYpAA=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates 79.140.42.25 as permitted sender) smtp.mailfrom=sw@simonwunderlich.de
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: SQCWR3PWFOS55V7BWTWEMAY24UMOMIDX
X-Message-ID-Hash: SQCWR3PWFOS55V7BWTWEMAY24UMOMIDX
X-MailFrom: sw@simonwunderlich.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org, syzbot+ab16e463b903f5a37036@syzkaller.appspotmail.com, Antonio Quartulli <a@unstable.cc>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/SQCWR3PWFOS55V7BWTWEMAY24UMOMIDX/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

From: Sven Eckelmann <sven@narfation.org>

The gateway client code can try to optimize the delivery of DHCP packets =
to
avoid broadcasting them through the whole mesh. But also transmissions to
the client can be optimized by looking up the destination via the chaddr =
of
the DHCP packet.

But the chaddr is currently only done when chaddr is fully inside the
non-paged area of the skbuff. Otherwise it will not be initialized and th=
e
unoptimized path should have been taken.

But the implementation didn't handle this correctly. It didn't retrieve t=
he
correct chaddr but still tried to perform the TT lookup with this
uninitialized memory.

Reported-by: syzbot+ab16e463b903f5a37036@syzkaller.appspotmail.com
Fixes: 6c413b1c22a2 ("batman-adv: send every DHCP packet as bat-unicast")
Signed-off-by: Sven Eckelmann <sven@narfation.org>
Acked-by: Antonio Quartulli <a@unstable.cc>
Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
---
 net/batman-adv/gateway_client.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/net/batman-adv/gateway_client.c b/net/batman-adv/gateway_cli=
ent.c
index a18dcc686dc3..ef3f85b576c4 100644
--- a/net/batman-adv/gateway_client.c
+++ b/net/batman-adv/gateway_client.c
@@ -703,8 +703,10 @@ batadv_gw_dhcp_recipient_get(struct sk_buff *skb, un=
signed int *header_len,
=20
 	chaddr_offset =3D *header_len + BATADV_DHCP_CHADDR_OFFSET;
 	/* store the client address if the message is going to a client */
-	if (ret =3D=3D BATADV_DHCP_TO_CLIENT &&
-	    pskb_may_pull(skb, chaddr_offset + ETH_ALEN)) {
+	if (ret =3D=3D BATADV_DHCP_TO_CLIENT) {
+		if (!pskb_may_pull(skb, chaddr_offset + ETH_ALEN))
+			return BATADV_DHCP_NO;
+
 		/* check if the DHCP packet carries an Ethernet DHCP */
 		p =3D skb->data + *header_len + BATADV_DHCP_HTYPE_OFFSET;
 		if (*p !=3D BATADV_DHCP_HTYPE_ETHERNET)
--=20
2.20.1
