Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id AC21956FAEA
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 11 Jul 2022 11:23:43 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 84C5C81751;
	Mon, 11 Jul 2022 11:23:42 +0200 (CEST)
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 08A2B80038
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 11 Jul 2022 11:23:37 +0200 (CEST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 458E3B80E86;
	Mon, 11 Jul 2022 09:23:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9849AC34115;
	Mon, 11 Jul 2022 09:23:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1657531416;
	bh=n3LKFrUOulNQYs64hrFzzY10neeo4Ui1IPzl+7axOZ8=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=uxeqcNxMF9LFyUhnab60zEBprl1WD3RNedjZq9CS5bOD8TfGXdk0I8ijeDbE1hmbb
	 tPyxV7OqAaz+G5e/r4Rbl1vRj7Jwx2j6L5uulCLBo/pFwpsQE4T00UEKb4a2qCbk7h
	 PO5cv3c83TpzJH2gwWAXDLh0VxtdoKPQ1f1QKe8w=
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 5.15 098/230] batman-adv: Use netif_rx().
Date: Mon, 11 Jul 2022 11:05:54 +0200
Message-Id: <20220711090606.849955061@linuxfoundation.org>
X-Mailer: git-send-email 2.37.0
In-Reply-To: <20220711090604.055883544@linuxfoundation.org>
References: <20220711090604.055883544@linuxfoundation.org>
User-Agent: quilt/0.66
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=linuxfoundation.org header.s=korg header.b=uxeqcNxM;
	spf=pass (diktynna.open-mesh.org: domain of gregkh@linuxfoundation.org designates 145.40.68.75 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
	dmarc=pass (policy=none) header.from=linuxfoundation.org
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1657531418; a=rsa-sha256;
	cv=none;
	b=hzi9j2ZHPi53Y17w4RJf8K6VYOz7FYg9L1kMTi1HevtRuxcHmIvP5I2nTx8bVPLzgSZvBG
	bo+mWzcsbOvn37kw/n99Q/s0KEQ/JLsYIfLdalqyRRmuC7tKf2cCMJr5s3WO/BIs9cI85D
	KLwh4ejEzR+7UswfMt0hlND4r47DNtE=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1657531418;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=tvG/B5sAzYyJKBnXqZR2WLFp61g1vBtq4z9Y6vsEsK0=;
	b=f3h1gTAgVG4F427A/RDpSwnQ7W1osLgB+aAW2taTOiydd9nWzYFIMM98qqyveSlqBFay2I
	0Zp7/yJiTcnyCBfKGO19bhVcTiWfDBNT6fcGxg3w1VOIBV70Wr8HlqwgLBMjjBVVjPNT5p
	56+rRrS7opdX18wXDJJ3F82cO90RmQA=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: Y5W2422GQZH6BFZHEA23LDMX3HP6UY5I
X-Message-ID-Hash: Y5W2422GQZH6BFZHEA23LDMX3HP6UY5I
X-MailFrom: gregkh@linuxfoundation.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
CC: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, stable@vger.kernel.org, Antonio Quartulli <a@unstable.cc>, Marek Lindner <mareklindner@neomailbox.ch>, b.a.t.m.a.n@lists.open-mesh.org, Sebastian Andrzej Siewior <bigeasy@linutronix.de>, "David S. Miller" <davem@davemloft.net>, Sasha Levin <sashal@kernel.org>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/Y5W2422GQZH6BFZHEA23LDMX3HP6UY5I/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>

[ Upstream commit 94da81e2fc4285db373fe9a1eb012c2ee205b110 ]

Since commit
   baebdf48c3600 ("net: dev: Makes sure netif_rx() can be invoked in any =
context.")

the function netif_rx() can be used in preemptible/thread context as
well as in interrupt context.

Use netif_rx().

Cc: Antonio Quartulli <a@unstable.cc>
Cc: Marek Lindner <mareklindner@neomailbox.ch>
Cc: Simon Wunderlich <sw@simonwunderlich.de>
Cc: Sven Eckelmann <sven@narfation.org>
Cc: b.a.t.m.a.n@lists.open-mesh.org
Signed-off-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Acked-by: Sven Eckelmann <sven@narfation.org>
Signed-off-by: David S. Miller <davem@davemloft.net>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 net/batman-adv/bridge_loop_avoidance.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/batman-adv/bridge_loop_avoidance.c b/net/batman-adv/brid=
ge_loop_avoidance.c
index 17687848daec..11f6ef657d82 100644
--- a/net/batman-adv/bridge_loop_avoidance.c
+++ b/net/batman-adv/bridge_loop_avoidance.c
@@ -443,7 +443,7 @@ static void batadv_bla_send_claim(struct batadv_priv =
*bat_priv, u8 *mac,
 	batadv_add_counter(bat_priv, BATADV_CNT_RX_BYTES,
 			   skb->len + ETH_HLEN);
=20
-	netif_rx_any_context(skb);
+	netif_rx(skb);
 out:
 	batadv_hardif_put(primary_if);
 }
--=20
2.35.1


