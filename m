Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id B9A504361EF
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 21 Oct 2021 14:40:04 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 8EA4782367;
	Thu, 21 Oct 2021 14:40:03 +0200 (CEST)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 6D82E805E3
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 20 Oct 2021 15:30:12 +0200 (CEST)
Received: by mail.kernel.org (Postfix) with ESMTPS id AC3AD61391;
	Wed, 20 Oct 2021 13:30:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1634736610;
	bh=M+4PQ+7k7nniQ24/ls1I3+8EoaNomf958sOxAUMoCM0=;
	h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
	b=Oget6Te01ZFvMy2CEmlzfLxxYH3jhQGIbRsiArzpFYP3v7fB8p7Ead0ENAPra8p7R
	 xjSuiJZu1CxWWPDlAdSA6SibsuiCym6vYakh8Ey1o9Hk1pGzleqa+PJHR5DL5qDgy2
	 5bZUk4BYPOyB2VGikf5qjHQivKI4kxqm4JTxrqBwvbC61CXp+oLw+1eOaiKDSGVucq
	 TWyLvFn11aVQb4EAFEY4n9vuXmW5eGgvmFciJfVx7+V2sIW2DRBvydepgonEfXrSp8
	 fwRcKq/E0mPBI+KHtu2LhAoYlMCL4Nbet5rYSM2vl1KtOWTWyOg1O5KVt4aAI0uSVM
	 IxKsSVT3cd92A==
Received: from pdx-korg-docbuild-2.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by pdx-korg-docbuild-2.ci.codeaurora.org (Postfix) with ESMTP id A19F9609D1;
	Wed, 20 Oct 2021 13:30:10 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Subject: Re: [PATCH] batman-adv: prepare for const netdev->dev_addr
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: 
 <163473661065.3411.17859623036163871066.git-patchwork-notify@kernel.org>
Date: Wed, 20 Oct 2021 13:30:10 +0000
References: <20211019163007.1384352-1-kuba@kernel.org>
In-Reply-To: <20211019163007.1384352-1-kuba@kernel.org>
To: Jakub Kicinski <kuba@kernel.org>
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1634736612;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=yomLkucarB8Kx450tdNH5Vy48rHmoVOLam6JGTUq15I=;
	b=hDzD4evrPpnzg3V76NKXURiGfxZUGTK7NZ1o3Wm6ItjAVWLZnpTW97o+HTb64EFtan+7I4
	S745Au3kNNMoVwzQXPcx91s5w2lCJXJJQmFYC8SJlylYePOdk2oU7n9+azkG7RbdfxzTK3
	E4Q71nKVDyfagA+Eg7fYI2i0Zanod50=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=Oget6Te0;
	dmarc=pass (policy=none) header.from=kernel.org;
	spf=pass (diktynna.open-mesh.org: domain of patchwork-bot+netdevbpf@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=patchwork-bot+netdevbpf@kernel.org
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1634736612; a=rsa-sha256;
	cv=none;
	b=x9+cXoVJpAxquWBKIkqkgXza9zQdlljPP5W3wpGFxf/a/zh+GYqyWq3N0wF7FuYozy0oPt
	AcRytZX6NAcToIQG5o30FwHb4Aq67ZlckUDMCmJhG4MamW234UoSayKU6mj82ecRzpunt+
	ulzhAy1wKG46ZuCRBHinbzqmpq+cqe4=
Content-Transfer-Encoding: quoted-printable
X-MailFrom: patchwork-bot+netdevbpf@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
Message-ID-Hash: YJM4K3FMA64LMNRU3XQ2ZA2OI5VXUOQU
X-Message-ID-Hash: YJM4K3FMA64LMNRU3XQ2ZA2OI5VXUOQU
X-Mailman-Approved-At: Thu, 21 Oct 2021 12:40:02 +0200
CC: netdev@vger.kernel.org, mareklindner@neomailbox.ch, a@unstable.cc, b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/KDQB66SZ4LN3AEP3FIK2YXEU2RWLFFBU/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Hello:

This patch was applied to netdev/net-next.git (master)
by David S. Miller <davem@davemloft.net>:

On Tue, 19 Oct 2021 09:30:07 -0700 you wrote:
> netdev->dev_addr will be constant soon, make sure
> the qualifier is propagated thru batman-adv.
>=20
> Signed-off-by: Jakub Kicinski <kuba@kernel.org>
> ---
> CC: mareklindner@neomailbox.ch
> CC: sw@simonwunderlich.de
> CC: a@unstable.cc
> CC: sven@narfation.org
> CC: b.a.t.m.a.n@lists.open-mesh.org
>=20
> [...]

Here is the summary with links:
  - batman-adv: prepare for const netdev->dev_addr
    https://git.kernel.org/netdev/net-next/c/47ce5f1e3e4e

You are awesome, thank you!
--
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html

