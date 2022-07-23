Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id C86C357F00F
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 23 Jul 2022 17:20:11 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 87144804BC;
	Sat, 23 Jul 2022 17:20:07 +0200 (CEST)
Received: from ams.source.kernel.org (ams.source.kernel.org [IPv6:2604:1380:4601:e00::1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id CA9FF83247
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 23 Jul 2022 17:20:03 +0200 (CEST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id D9A69B80C82;
	Sat, 23 Jul 2022 15:20:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3A048C341C0;
	Sat, 23 Jul 2022 15:20:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1658589601;
	bh=3c1+Tq4+d9WEvGjjOx7Mqmh4s0+I6+YZvK+ozBWzaCo=;
	h=Subject:To:Cc:From:Date:In-Reply-To:From;
	b=d4L7ZrkFBiDEK4of1dGwDeUm8si3fLY9zIom66ggMjvQFlEJVNvgqbqMSiwMPXAAQ
	 eqAJ38/1sJQfEp2BrII3vC9+U5gCYWOziFp4cIkjpfPi9f51flNq5P5Zg28+rvtFDw
	 MpcFYA0/OGIWe3M/xr/mFYoJ7UZQoWT8LifTuUJE=
Subject: Patch "batman-adv: Use netif_rx_any_context() any." has been added to the 5.15-stable tree
To: a@unstable.cc,b.a.t.m.a.n@lists.open-mesh.org,bigeasy@linutronix.de,davem@davemloft.net,gregkh@linuxfoundation.org,mareklindner@neomailbox.ch,sashal@kernel.org,sven@narfation.org,sw@simonwunderlich.de,tglx@linutronix.de
From: <gregkh@linuxfoundation.org>
Date: Sat, 23 Jul 2022 17:19:55 +0200
In-Reply-To: <YtbW7Ca3t4/3qB7k@linutronix.de>
Message-ID: <1658589595237141@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=ANSI_X3.4-1968
X-stable: commit
X-Patchwork-Hint: ignore 
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=linuxfoundation.org header.s=korg header.b=d4L7ZrkF;
	spf=pass (diktynna.open-mesh.org: domain of gregkh@linuxfoundation.org designates 2604:1380:4601:e00::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
	dmarc=pass (policy=none) header.from=linuxfoundation.org
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1658589603; a=rsa-sha256;
	cv=none;
	b=04W09fV60hSYXJA/DrO5Aym1Uvb/5Bs9Ty4zBgrZ4CKisZUnNE3BShpbLFQGD/pfdG/eCb
	qkWunaq7NsAz9im+cxcsCGCxWN4ZdcrObbmOsmdQeaRIUnUM33GzKdXY8z+XpNHM+NXAss
	vyIayxAi+Abns7YZagddraumP8efdGY=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1658589603;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:dkim-signature;
	bh=N7s5aC4Rp/S3e3KUsD6Vn50XruGEX3slheoA2MLFTis=;
	b=j3/djFhwrCXnizoqbdK+PeCLvrJFTZDxtDwSf8WsWcIsc1birhJTcZJFx/Zj5zuPy1cb8c
	gofZ7IkLTNTcMxJg3Te15HPqFFBca9V936mVPc1rIW5VQT1sRoxuwUyNCl4al0AQU/TCaI
	+0hBJaHGbTAW82ALRSbLGw/P0CyMzBI=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: ZIGSMBPBUU57PRG5LMFJFDIMJG22ZC34
X-Message-ID-Hash: ZIGSMBPBUU57PRG5LMFJFDIMJG22ZC34
X-MailFrom: gregkh@linuxfoundation.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
CC: stable-commits@vger.kernel.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/ZIGSMBPBUU57PRG5LMFJFDIMJG22ZC34/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>


This is a note to let you know that I've just added the patch titled

    batman-adv: Use netif_rx_any_context() any.

to the 5.15-stable tree which can be found at:
    http://www.kernel.org/git/?p=3Dlinux/kernel/git/stable/stable-queue.g=
it;a=3Dsummary

The filename of the patch is:
     batman-adv-use-netif_rx_any_context-any.patch
and it can be found in the queue-5.15 subdirectory.

If you, or anyone else, feels it should not be added to the stable tree,
please let <stable@vger.kernel.org> know about it.


From bigeasy@linutronix.de  Sat Jul 23 17:18:39 2022
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Date: Tue, 19 Jul 2022 18:08:12 +0200
Subject: batman-adv: Use netif_rx_any_context() any.
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Sasha Levin <sashal@=
kernel.org>
Cc: linux-kernel@vger.kernel.org, stable@vger.kernel.org, Antonio Quartul=
li <a@unstable.cc>, Marek Lindner <mareklindner@neomailbox.ch>, Simon Wun=
derlich <sw@simonwunderlich.de>, Sven Eckelmann <sven@narfation.org>, b.a=
.t.m.a.n@lists.open-mesh.org, "David S. Miller" <davem@davemloft.net>, Th=
omas Gleixner <tglx@linutronix.de>
Message-ID: <YtbW7Ca3t4/3qB7k@linutronix.de>
Content-Disposition: inline

From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>

This reverts the stable commit
   e65d78b12fbc0 ("batman-adv: Use netif_rx().")

The commit message says:

| Since commit
|    baebdf48c3600 ("net: dev: Makes sure netif_rx() can be invoked in an=
y context.")
|
| the function netif_rx() can be used in preemptible/thread context as
| well as in interrupt context.

This commit (baebdf48c3600) has not been backported to the 5.15 stable
series and therefore, the commit which builds upon it, must not be
backported either.

Revert the backport and use netif_rx_any_context() again.

Signed-off-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 net/batman-adv/bridge_loop_avoidance.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

--- a/net/batman-adv/bridge_loop_avoidance.c
+++ b/net/batman-adv/bridge_loop_avoidance.c
@@ -443,7 +443,7 @@ static void batadv_bla_send_claim(struct
 	batadv_add_counter(bat_priv, BATADV_CNT_RX_BYTES,
 			   skb->len + ETH_HLEN);
=20
-	netif_rx(skb);
+	netif_rx_any_context(skb);
 out:
 	batadv_hardif_put(primary_if);
 }


Patches currently in stable-queue which might be from bigeasy@linutronix.=
de are

queue-5.15/batman-adv-use-netif_rx_any_context-any.patch
