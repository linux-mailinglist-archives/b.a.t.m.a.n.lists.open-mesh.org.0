Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 84AFB4CB78A
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu,  3 Mar 2022 08:16:23 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 7942A81511;
	Thu,  3 Mar 2022 08:16:22 +0100 (CET)
Received: from ams.source.kernel.org (ams.source.kernel.org [IPv6:2604:1380:4601:e00::1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id F3867805DA
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu,  3 Mar 2022 07:00:13 +0100 (CET)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 4250AB823BC;
	Thu,  3 Mar 2022 06:00:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 099B8C340F1;
	Thu,  3 Mar 2022 06:00:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1646287212;
	bh=gOFaSiWkUzNCFCDAMWRMe0qD1DwcWk92Pwj/zdcZOQU=;
	h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
	b=fhO+UAbYCQupcdvbmwktIlYis/+sM56YKPm+Yy8gfeVJu1ML5dDpvvf4VxvhQniVg
	 ztxsghBDN8KgMbUTY6FQTbUiKHVqd586kGVYAcTTYUY5JHfTI4QNAXG3S6k09TA8g7
	 5arClQiEfAH/d4N9bbxgedpr1n7Bfq/itNfrOctOXSXw7/EkQ33drdMqBctq86tCGm
	 lVknsRBtfXq3mjX0XQ+XMudrXMg5dOr775TVTBkNM+G6zD9oZ15qIWgi7mBR/LiICN
	 tiiQnz+7xdxH/r5eQnKuBC/P9pJlRw2bCZ9K9TKBdCHKuK/ENkYXyzjkpR1+ARtqOg
	 7bThiNRvisKBg==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id E17EEE7BB08;
	Thu,  3 Mar 2022 06:00:11 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Subject: Re: [PATCH 1/3] batman-adv: Request iflink once in batadv-on-batadv check
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: 
 <164628721191.27095.7549108056265161167.git-patchwork-notify@kernel.org>
Date: Thu, 03 Mar 2022 06:00:11 +0000
References: <20220302163049.101957-2-sw@simonwunderlich.de>
In-Reply-To: <20220302163049.101957-2-sw@simonwunderlich.de>
To: Simon Wunderlich <sw@simonwunderlich.de>
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=fhO+UAbY;
	dmarc=pass (policy=none) header.from=kernel.org;
	spf=pass (diktynna.open-mesh.org: domain of patchwork-bot+netdevbpf@kernel.org designates 2604:1380:4601:e00::1 as permitted sender) smtp.mailfrom=patchwork-bot+netdevbpf@kernel.org
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1646287214; a=rsa-sha256;
	cv=none;
	b=I7UVg9JAaU18Fhm+RSaVOp0BlCGAuprSiWBB5fE+Qk4UY3fhNfg3fcBiiP2SVFohYZnpNA
	l8YsYeAqO09w/cQDOO+nn9zKOquX2X0lJBsttmc0sZAwje2AMvox9dQRVKPxkmS/47oUhN
	hZaifkz2QfjJ3Ts0ok5WPlFb+BgiL10=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1646287214;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=AItKlxzARxMjbcMJcQddqDNp6u7HV7OSIa3P+eUFzY8=;
	b=Xh7mn4/H7wKVnHu+/6CF5aY20sZuIbTcbJeagXy8FP5PC7huSZWT/h652GCeG32xHi97tQ
	Ah1k3+n6wXUlrdsHOfCnoRDQK2Ju7tZyz1nrOsUZcQkLUATfiSN+zuLsCoSBhC4frEpQFy
	wZW20xXClqHZtjeWirgOlTlBB4HIIG0=
Content-Transfer-Encoding: quoted-printable
X-MailFrom: patchwork-bot+netdevbpf@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
Message-ID-Hash: LZNOFSJW2N5DTXCPOPR6UMNJNG5CKPL5
X-Message-ID-Hash: LZNOFSJW2N5DTXCPOPR6UMNJNG5CKPL5
X-Mailman-Approved-At: Thu, 03 Mar 2022 07:16:20 +0100
CC: davem@davemloft.net, kuba@kernel.org, netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/2I3PPITDNU42B3EW7UUP2ZUYODHXLPS4/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Hello:

This series was applied to netdev/net.git (master)
by Simon Wunderlich <sw@simonwunderlich.de>:

On Wed,  2 Mar 2022 17:30:47 +0100 you wrote:
> From: Sven Eckelmann <sven@narfation.org>
>=20
> There is no need to call dev_get_iflink multiple times for the same
> net_device in batadv_is_on_batman_iface. And since some of the
> .ndo_get_iflink callbacks are dynamic (for example via RCUs like in
> vxcan_get_iflink), it could easily happen that the returned values are =
not
> stable. The pre-checks before __dev_get_by_index are then of course bog=
us.
>=20
> [...]

Here is the summary with links:
  - [1/3] batman-adv: Request iflink once in batadv-on-batadv check
    https://git.kernel.org/netdev/net/c/690bb6fb64f5
  - [2/3] batman-adv: Request iflink once in batadv_get_real_netdevice
    https://git.kernel.org/netdev/net/c/6116ba09423f
  - [3/3] batman-adv: Don't expect inter-netns unique iflink indices
    https://git.kernel.org/netdev/net/c/6c1f41afc1db

You are awesome, thank you!
--=20
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html

