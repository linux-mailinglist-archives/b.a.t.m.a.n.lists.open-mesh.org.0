Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id A259B3A0C29
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed,  9 Jun 2021 08:08:32 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id C2CBD83EEE;
	Wed,  9 Jun 2021 08:08:28 +0200 (CEST)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 771E583EB5
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue,  8 Jun 2021 21:20:07 +0200 (CEST)
Received: by mail.kernel.org (Postfix) with ESMTPS id C847261001;
	Tue,  8 Jun 2021 19:20:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1623180005;
	bh=nw5MqRXnweT8FGg25O6okzeBS3+VNiSk5E9vXjzH/yY=;
	h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
	b=CwA9WQGlzhIgeYifmOxj/+wWoFZiZxs224j0ZfP8BXphEj+73l7Xsf+Xq0FdDu5Hn
	 Wmp6Co1OgEBezxq2Fv3nShyXIQvY8V3atLqhPopMQvoBzFTPjHYkaKR2yCRByU8LRg
	 AWA0kUDbmwipqi2KMImxE1c/iIn+nY0bxSRsX4RhtptYUfeyxZYA0IjiHk1+eiksCv
	 trRw7fS8Xz1VYCRFH8WaIV/8SSKrYwsl3snH9Ghx1z0+TzrO6YLFE0X9FAgib4Q73q
	 y3qyLujxXHcOD/QTu3wvi0sOW/VXfGZEVPE2p5JT3f0Oqvvdt3/yxREgk6IRXrNTcS
	 vN56gHXUAR+ZA==
Received: from pdx-korg-docbuild-2.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by pdx-korg-docbuild-2.ci.codeaurora.org (Postfix) with ESMTP id C299460A22;
	Tue,  8 Jun 2021 19:20:05 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Subject: Re: [PATCH 01/11] batman-adv: Start new development cycle
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: 
 <162318000579.7737.13404086203664485668.git-patchwork-notify@kernel.org>
Date: Tue, 08 Jun 2021 19:20:05 +0000
References: <20210608152700.30315-2-sw@simonwunderlich.de>
In-Reply-To: <20210608152700.30315-2-sw@simonwunderlich.de>
To: Simon Wunderlich <sw@simonwunderlich.de>
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1623180007; a=rsa-sha256;
	cv=none;
	b=nFozjWq+GuKWsATfxB1PEH+Gx1qSSaFdssKXQMKciAktHZPGGT476OaZc7yCmKfB1rbHpw
	CC6ICUgEJbBmsjRK8n2efrEtrjiBFCOX7l6Tu6BPxiHT72HELg1sv4u0yK3U6zU7BWZm97
	4RbWOJPqbr8IY7z+CkE6pSrJQR3FcGc=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=CwA9WQGl;
	spf=pass (diktynna.open-mesh.org: domain of patchwork-bot@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=patchwork-bot@kernel.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1623180007;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=0uU/10Otym3eMpt8n3/a0qZ/AHcnt0RXee4fRTjAzUc=;
	b=Gr+3ChGOEjtgpfdmj+GSIwRWLQUfEkIMKmIXU3clJ3nMYuHDPzqVmkcKN3KmJTIAYvt7M3
	gaKsgOWUE9F+mePdBDazZHgjGkRRrEdquagQWuLk+7oQPBfNzkuJOGey8L08sm8zRVvx8V
	i3aVeeKTs5z8VQdORJL/Btx/y7CTP44=
Content-Transfer-Encoding: quoted-printable
X-MailFrom: patchwork-bot+netdevbpf@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
Message-ID-Hash: X6MB7HGEDFXMT5GPCIY5DAOPG45MWIJ7
X-Message-ID-Hash: X6MB7HGEDFXMT5GPCIY5DAOPG45MWIJ7
X-Mailman-Approved-At: Wed, 09 Jun 2021 06:08:25 +0200
CC: kuba@kernel.org, davem@davemloft.net, netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/YDKQOBCN7GOU27SEXCULAXVRXOELZJP6/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Hello:

This series was applied to netdev/net-next.git (refs/heads/master):

On Tue,  8 Jun 2021 17:26:50 +0200 you wrote:
> This version will contain all the (major or even only minor) changes fo=
r
> Linux 5.14.
>=20
> The version number isn't a semantic version number with major and minor
> information. It is just encoding the year of the expected publishing as
> Linux -rc1 and the number of published versions this year (starting at =
0).
>=20
> [...]

Here is the summary with links:
  - [01/11] batman-adv: Start new development cycle
    https://git.kernel.org/netdev/net-next/c/9a959cab2219
  - [02/11] batman-adv: Always send iface index+name in genlmsg
    https://git.kernel.org/netdev/net-next/c/d295345abb3e
  - [03/11] batman-adv: bcast: queue per interface, if needed
    https://git.kernel.org/netdev/net-next/c/3f69339068f9
  - [04/11] batman-adv: bcast: avoid skb-copy for (re)queued broadcasts
    https://git.kernel.org/netdev/net-next/c/4cbf055002c5
  - [05/11] batman-adv: mcast: add MRD + routable IPv4 multicast with bri=
dges support
    https://git.kernel.org/netdev/net-next/c/7a68cc16b82c
  - [06/11] batman-adv: Remove the repeated declaration
    https://git.kernel.org/netdev/net-next/c/1cf1ef60a1a6
  - [07/11] batman-adv: Fix spelling mistakes
    https://git.kernel.org/netdev/net-next/c/791ad7f5c17e
  - [08/11] batman-adv: Drop implicit creation of batadv net_devices
    https://git.kernel.org/netdev/net-next/c/bf6b260b8a96
  - [09/11] batman-adv: Avoid name based attaching of hard interfaces
    https://git.kernel.org/netdev/net-next/c/fa205602d46e
  - [10/11] batman-adv: Don't manually reattach hard-interface
    https://git.kernel.org/netdev/net-next/c/170258ce1c71
  - [11/11] batman-adv: Drop reduntant batadv interface check
    https://git.kernel.org/netdev/net-next/c/020577f879be

You are awesome, thank you!
--
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html

