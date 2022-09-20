Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 33BFC5BDD9D
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 20 Sep 2022 08:49:09 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 1D30280FFD;
	Tue, 20 Sep 2022 08:49:08 +0200 (CEST)
Received: from ams.source.kernel.org (ams.source.kernel.org [IPv6:2604:1380:4601:e00::1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 82DC080607
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 20 Sep 2022 03:20:17 +0200 (CEST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id D99A8B822E3;
	Tue, 20 Sep 2022 01:20:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 02F35C43470;
	Tue, 20 Sep 2022 01:20:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663636815;
	bh=MukzcpKQbZSw3x6/nwB8kRUDzfGBIV8c2MxRPXhbWDc=;
	h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
	b=tyEYs29CL7L4YR23RAeifeSYO7F+GaZqYD247nRjMwn7TrIqF+lB8JRQWBU9B2giJ
	 5zZZ5jdpDDmamWONeNsbzZGWmzTjRu7FP8tlNu491sFPuYX1JcmNePjvtBVDqz0hUG
	 wAw+QGeAVDUVcwI3/Zqy0GzM80hYMQYLkblJOhjBNMy++44ERx5VHSzV4VaUwpmYZo
	 +lBt0TJb/k9UnaHCTkRlxP3WKR1gZLnskkNJPjxETIcoZ1N1KUlgeoiGAY7Tp5VwH9
	 GzYATnB46aG713fvVQjQRWPXtYPAXbLbPaP0NSDp+WFB84ieRSZCbKr7YtwaMRqfCm
	 Y9NiAn2ABbjTA==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id DFA28E52538;
	Tue, 20 Sep 2022 01:20:14 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Subject: Re: [PATCH 1/1] batman-adv: Fix hang up with small MTU hard-interface
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: 
 <166363681491.30260.14164726870306150299.git-patchwork-notify@kernel.org>
Date: Tue, 20 Sep 2022 01:20:14 +0000
References: <20220916160931.1412407-2-sw@simonwunderlich.de>
In-Reply-To: <20220916160931.1412407-2-sw@simonwunderlich.de>
To: Simon Wunderlich <sw@simonwunderlich.de>
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1663636817;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=jUzm3zebReFcKgNXKlJq88A+XVRT5KDYZYGTAlqb+/Q=;
	b=gKy2MyAtx7h2O1H7d+odn73gOe6zVvnoA+hRSLdsiHQcviiGR/41a3aYqhgKeVljasYuZq
	7df4RQpkdGDJIaX6ADuIsn2DNwrobV4701Olm6xQ9l1eALx8121S/ozcDMm2ji/gCxNa1a
	y0vvUw0MdUra/ePmSsS7UhhZYij7sRU=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=tyEYs29C;
	dmarc=pass (policy=none) header.from=kernel.org;
	spf=pass (diktynna.open-mesh.org: domain of patchwork-bot+netdevbpf@kernel.org designates 2604:1380:4601:e00::1 as permitted sender) smtp.mailfrom=patchwork-bot+netdevbpf@kernel.org
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1663636817; a=rsa-sha256;
	cv=none;
	b=MwmFX1i1jkzqCCSDgY0faVhbnSV7dXOlh5F8hnvyfnL04L2qe8XWs6d2xp3P3vlEsaYWot
	Yz+GJbpjGdKoQ+PwFLHf/7+FyXkSm8hQ/ecsWHe9QSGXb1b2UdwvmAU8fjn/u0xgJvvSfK
	ypupcFS6RM0Eb/jZHTWvuA4swkvrJBU=
Content-Transfer-Encoding: quoted-printable
X-MailFrom: patchwork-bot+netdevbpf@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
Message-ID-Hash: ZAHRLLVOWVSCBVTWNLUPEWCR5OIRL5HG
X-Message-ID-Hash: ZAHRLLVOWVSCBVTWNLUPEWCR5OIRL5HG
X-Mailman-Approved-At: Tue, 20 Sep 2022 06:49:06 +0200
CC: davem@davemloft.net, kuba@kernel.org, netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org, syoshida@redhat.com
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/RZU7MPZY5JC2M5SCAA6OGFULZEGGXPCO/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Hello:

This patch was applied to netdev/net.git (master)
by Simon Wunderlich <sw@simonwunderlich.de>:

On Fri, 16 Sep 2022 18:09:31 +0200 you wrote:
> From: Shigeru Yoshida <syoshida@redhat.com>
>=20
> The system hangs up when batman-adv soft-interface is created on
> hard-interface with small MTU.  For example, the following commands
> create batman-adv soft-interface on dummy interface with zero MTU:
>=20
>   # ip link add name dummy0 type dummy
>   # ip link set mtu 0 dev dummy0
>   # ip link set up dev dummy0
>   # ip link add name bat0 type batadv
>   # ip link set dev dummy0 master bat0
>=20
> [...]

Here is the summary with links:
  - [1/1] batman-adv: Fix hang up with small MTU hard-interface
    https://git.kernel.org/netdev/net/c/b1cb8a71f1ea

You are awesome, thank you!
--=20
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html

