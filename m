Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 47715229FB9
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 22 Jul 2020 20:59:25 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 11A498033D;
	Wed, 22 Jul 2020 20:59:24 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id D94EC80208
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 22 Jul 2020 20:59:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1595443767;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=8ujn52A0nN7P0NvyqXXSIXlYUZe9csoWpItun1cWQlU=;
	b=lOATVvFXl+blwKgy1UcczdZButIL0eaVc7c+/J+jRGmFfRMpJQrZm/5ezX+UDW2Zvnd63n
	QLGMd8o5FcvpJ/wkZpm7cBmiww07bqAkRlONqtmriHcd44s4YI6/DPRuW6yMsNf9EQhRkn
	cGN9DaqcOo2Qtyx92sVSjC/aCCa9gms=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: [PATCH maint] batman-adv: Avoid uninitialized chaddr when handling DHCP
Date: Wed, 22 Jul 2020 20:49:23 +0200
Message-Id: <20200722184923.6577-1-sven@narfation.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1595444360;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=8ujn52A0nN7P0NvyqXXSIXlYUZe9csoWpItun1cWQlU=;
	b=tfdzL3sup4tA4RBunMrgLUJeL4jc8q4eYvs0RkPefcZq7HpKzSEmo6v+Euxgo7bkJh2maz
	6YD5eMHfehbOuxC5ORw89oFVL/gf34xMqjz17+xFQG+ttprcSlChhqjpfDivu0d/x+u7Ne
	XkSQJFk2X5x+3YnviHhAkuO+CzYhAAU=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1595444360; a=rsa-sha256;
	cv=none;
	b=V2N52DSYqxF40w3MQGyeOEY7HPQWZkT41SQLSa1anLHTUzzSRKukWpElOYjhky3HIL92WE
	6wv3U0HQawusbZ83KAtAzKyVEhUX/y3F2c4arOiIatjT6oEIgBr385ekRXS5KNA4RXcptK
	u1riGHrsDnwUw8fhJpfERNFICV4zZio=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=lOATVvFX;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: YXQCU3EBMILSZG32CJAENJBDD7KVG6NS
X-Message-ID-Hash: YXQCU3EBMILSZG32CJAENJBDD7KVG6NS
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: syzbot+ab16e463b903f5a37036@syzkaller.appspotmail.com
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/YXQCU3EBMILSZG32CJAENJBDD7KVG6NS/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

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
Fixes: 2d5b555644b2 ("batman-adv: send every DHCP packet as bat-unicast")
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 net/batman-adv/gateway_client.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/net/batman-adv/gateway_client.c b/net/batman-adv/gateway_cli=
ent.c
index a18dcc68..ef3f85b5 100644
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
