Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 11B8C24EBB0
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 23 Aug 2020 07:52:33 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 7D8B68138C;
	Sun, 23 Aug 2020 07:52:28 +0200 (CEST)
Received: from merlin.infradead.org (merlin.infradead.org [IPv6:2001:8b0:10b:1231::1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 44A20801C6
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 23 Aug 2020 02:12:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=jENYl1OSBF/+Iv8H/gJatl840RBcx43dTVhR8Z4P6Rc=; b=duG/Yx9w3D25esHS6yp0wBGvw3
	airUMb6FHz7mxoESAMOft2NzH4tuS/K3lf3gezqhWtQFMpXnOH5Op++bn6QvSWMzxiF1qd2GIow/L
	U3PUyyLy2GF68o1Rsrf1xXsKvly+QkxzKacipmdJJoWbyCLz59vj8WHglu/hK6d30Iqwsj2IJuSrp
	KJYPrx95Y3ouZi83I6Bm2jdWl1Ezy2vcDNYgEpZ5n+7K1qgCKt2EcaXWrM2SRM0iLwDpOubyRgBx7
	TvDrLNCD0tF9URcqTIlW9BHKirF5DtgYLJzPguMVK7XOhyYsptR3y8A7MtnIkNFKfNkBRVahL8DSo
	Qr2SRZUg==;
Received: from [2601:1c0:6280:3f0::19c2] (helo=smtpauth.infradead.org)
	by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1k9chu-0006Nf-0O; Sat, 22 Aug 2020 23:13:54 +0000
From: Randy Dunlap <rdunlap@infradead.org>
To: netdev@vger.kernel.org
Subject: [PATCH 4/8] net: batman-adv: multicast.c: delete duplicated word
Date: Sat, 22 Aug 2020 16:13:31 -0700
Message-Id: <20200822231335.31304-5-rdunlap@infradead.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200822231335.31304-1-rdunlap@infradead.org>
References: <20200822231335.31304-1-rdunlap@infradead.org>
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1598141531;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=jENYl1OSBF/+Iv8H/gJatl840RBcx43dTVhR8Z4P6Rc=;
	b=mCnnS1pV6nFbzSKgGGBGqc8+FbWdxZ3hE4CP5PplXKTGcMZPQg925xtp2EUT6IoHv4rS2j
	W5uzCtVtMWyjLHLVUWdtKfz5uERQtdftmv7dEjBlfWjxxvAXLJYijUptJtJym90ZzqieAj
	XrpnLiuCPE0rQEKSLOWuJQPA0HrcAbI=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1598141531; a=rsa-sha256;
	cv=none;
	b=c/u/ZFALClMU/3ZiTgiOl6V4Qi528tuma2vNq80SsQd1pNstswYyqP4YeamOc7UBsVvPlZ
	z9yxtaQenTKw2NatgZAcGn6PAdP1d99YEuqpVhCdkYTO9RQwGGGXOVojxRnbYwauhV2M2e
	/gu4vG0fxKtfjuJtE3v5zOPwpvJE2ew=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=infradead.org header.s=merlin.20170209 header.b=duG/Yx9w;
	spf=none (diktynna.open-mesh.org: domain of rdunlap@infradead.org has no SPF policy when checking 2001:8b0:10b:1231::1) smtp.mailfrom=rdunlap@infradead.org
Content-Transfer-Encoding: quoted-printable
X-MailFrom: rdunlap@infradead.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
Message-ID-Hash: SHY4PN627IY7P5IUEEBEEFWDTWCAWMW6
X-Message-ID-Hash: SHY4PN627IY7P5IUEEBEEFWDTWCAWMW6
X-Mailman-Approved-At: Sun, 23 Aug 2020 05:52:26 +0200
CC: Randy Dunlap <rdunlap@infradead.org>, Marek Lindner <mareklindner@neomailbox.ch>, Antonio Quartulli <a@unstable.cc>, b.a.t.m.a.n@lists.open-mesh.org, "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/SHY4PN627IY7P5IUEEBEEFWDTWCAWMW6/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Drop the repeated word "multicast".

Signed-off-by: Randy Dunlap <rdunlap@infradead.org>
Cc: Marek Lindner <mareklindner@neomailbox.ch>
Cc: Simon Wunderlich <sw@simonwunderlich.de>
Cc: Antonio Quartulli <a@unstable.cc>
Cc: Sven Eckelmann <sven@narfation.org>
Cc: b.a.t.m.a.n@lists.open-mesh.org
Cc: "David S. Miller" <davem@davemloft.net>
Cc: Jakub Kicinski <kuba@kernel.org>
---
 net/batman-adv/multicast.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

--- linux-next-20200731.orig/net/batman-adv/multicast.c
+++ linux-next-20200731/net/batman-adv/multicast.c
@@ -207,7 +207,7 @@ static u8 batadv_mcast_mla_rtr_flags_bri
 		return BATADV_MCAST_WANT_NO_RTR4 | BATADV_MCAST_WANT_NO_RTR6;
=20
 	/* TODO: ask the bridge if a multicast router is present (the bridge
-	 * is capable of performing proper RFC4286 multicast multicast router
+	 * is capable of performing proper RFC4286 multicast router
 	 * discovery) instead of searching for a ff02::2 listener here
 	 */
 	ret =3D br_multicast_list_adjacent(dev, &bridge_mcast_list);
