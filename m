Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EBE633D4D6
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 16 Mar 2021 14:28:20 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 01D0480815;
	Tue, 16 Mar 2021 14:28:19 +0100 (CET)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 792AC80636
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 13 Mar 2021 23:40:11 +0100 (CET)
Received: by mail.kernel.org (Postfix) with ESMTPS id 7068664ED6;
	Sat, 13 Mar 2021 22:40:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1615675209;
	bh=KOjdqEridVJsrO9NOj9znay+1g9zcvM0sm24EU/0hY4=;
	h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
	b=j9mRvVeWfCfhPNi900SF2FLjcWhC65luKQIRtVqpANwRoxvx2TqsPiWjAqCypovbr
	 sS0CEIRAf6ejRyFYjQkMltVah1YJiwTHYqe+hQdaTr8tByKU5FcGjzYGJYF2Cmr+IB
	 rI0PRstbYxfoDka6Y+kChAoJ6rtKJDo8UfUa68wIBbqOOP3B0CPjpUZBvWKFJguy5l
	 M++aalX6Q3P7vEmi+WcJBnhAUf9WSqya7oDel6OZFomveGFxdTCFm6csX4RaBzo+uu
	 WaqlLzQzVeMERpRFABqQHJD54drE33fodm3pX0weFp4pqnk6r+Cd1BJg6maTdoEWg4
	 nio44d81KypBA==
Received: from pdx-korg-docbuild-2.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by pdx-korg-docbuild-2.ci.codeaurora.org (Postfix) with ESMTP id 6147460A6C;
	Sat, 13 Mar 2021 22:40:09 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Subject: Re: [PATCH 1/1] batman-adv: Use netif_rx_any_context().
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: 
 <161567520939.31370.1035945046701206897.git-patchwork-notify@kernel.org>
Date: Sat, 13 Mar 2021 22:40:09 +0000
References: <20210312154724.14980-2-sw@simonwunderlich.de>
In-Reply-To: <20210312154724.14980-2-sw@simonwunderlich.de>
To: Simon Wunderlich <sw@simonwunderlich.de>
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1615675211; a=rsa-sha256;
	cv=none;
	b=JuwYV8cPDO85g+7TI15elgF2wgOyuBwXkGX+tmgeMomdr0XqmHj5Dkwh1nAK6ZFQ5/qW9T
	m1kZWrj8ttvYtYEHjTETZ1gHfsI+2A/PkBz4uxu1GdCdpNuytRHpcNC7IX4K/waXrvxE8F
	q3u+ec5Pqiq6dMHjf5m3BEHV50659r8=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=j9mRvVeW;
	spf=pass (diktynna.open-mesh.org: domain of patchwork-bot@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=patchwork-bot@kernel.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1615675211;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=cg90M5EjA2zAy23BVOTPkcSNk1SE6aKrHpEQDGs3Sew=;
	b=p73B75+YAi/m4BM5dAIjXLEoMxymmaD/dMmqO51SUk9boUAFr3QFIIjTPRfMcnHPGT7dh3
	LrKzoj4k0UxHYtg07ilE28WSwePdMGLwpxOmK5XYj1Di9+t7WtYmpzNNIOKT50XbQwB3w5
	1kUOsRKvhxo/Csclw0hz+5i9D7PFGuc=
Content-Transfer-Encoding: quoted-printable
X-MailFrom: patchwork-bot+netdevbpf@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
Message-ID-Hash: FG53AQNTJKX2YZMRYKPWZFZRCK6UKPFM
X-Message-ID-Hash: FG53AQNTJKX2YZMRYKPWZFZRCK6UKPFM
X-Mailman-Approved-At: Tue, 16 Mar 2021 13:28:17 +0100
CC: kuba@kernel.org, davem@davemloft.net, netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org, bigeasy@linutronix.de
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/T4LI2KID7QS45A76Y3FAJRTOQIZZD2QU/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Hello:

This patch was applied to netdev/net-next.git (refs/heads/master):

On Fri, 12 Mar 2021 16:47:24 +0100 you wrote:
> From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
>=20
> The usage of in_interrupt() in non-core code is phased out. Ideally the
> information of the calling context should be passed by the callers or t=
he
> functions be split as appropriate.
>=20
> The attempt to consolidate the code by passing an arguemnt or by
> distangling it failed due lack of knowledge about this driver and becau=
se
> the call chains are hard to follow.
>=20
> [...]

Here is the summary with links:
  - [1/1] batman-adv: Use netif_rx_any_context().
    https://git.kernel.org/netdev/net-next/c/b1de0f01b011

You are awesome, thank you!
--
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html

