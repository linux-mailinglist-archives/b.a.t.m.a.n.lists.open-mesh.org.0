Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id CA9653A0C28
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed,  9 Jun 2021 08:08:28 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 8A6FA80487;
	Wed,  9 Jun 2021 08:08:27 +0200 (CEST)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 6DAE680691
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue,  8 Jun 2021 21:20:05 +0200 (CEST)
Received: by mail.kernel.org (Postfix) with ESMTPS id CA75D610A1;
	Tue,  8 Jun 2021 19:20:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1623180003;
	bh=ro5NKQTYjlHQUSk2hsY8ng0jsC7W2HUXYh1ZNdRxNkk=;
	h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
	b=IS7VXkKcW8UZZgjTSPM0XixYwwmD037TUWBRmC2t3Ki/4OqKSp7loPNGt3c/NCofO
	 5YAog4Vpvit7eX9jDla7MsyP/jYAVvxbVGgQ6IwfC97zOCJzbxkKGYWy46gnWGNVuW
	 VRGUcvQeDspo73LVF7QNAZslOxRhNzB4/Hlvw1hGUbMrjCo3O8uybgY0A6lFtTiOQs
	 9Vo0nM7TyMFyG1pP/OTWwrp3Nuhl2HxLjRPTgUGjy1Fm0xuEQwnG6w7cWrb1GW+Ld/
	 ZBs29VOwk83XPGZ9KySg+xvF1jlva5zY+JBxVcSFDVrTsrAV+kgWBE74gOWsh3dAVf
	 8/+z1kiUFn+Ug==
Received: from pdx-korg-docbuild-2.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by pdx-korg-docbuild-2.ci.codeaurora.org (Postfix) with ESMTP id BDFFD60A22;
	Tue,  8 Jun 2021 19:20:03 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Subject: Re: [PATCH 1/1] batman-adv: Avoid WARN_ON timing related checks
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: 
 <162318000377.7737.11699354745969828257.git-patchwork-notify@kernel.org>
Date: Tue, 08 Jun 2021 19:20:03 +0000
References: <20210608152947.30833-2-sw@simonwunderlich.de>
In-Reply-To: <20210608152947.30833-2-sw@simonwunderlich.de>
To: Simon Wunderlich <sw@simonwunderlich.de>
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1623180005; a=rsa-sha256;
	cv=none;
	b=JkfhFQAHVScpIJfA5AHDIinOoZLQbn7CYivSCI/gCF/55gTqAnyQsFaEtMWUpe1X8TA6AI
	RLNOTV7ljqZp5sqdnTANWDZyGaoGXbY8eoD6hjTyvEO0/jMSJRw5TV5C8oWis3FJVZ0/s9
	eVkjVJRby28/25Jg5Srovgw5ckAjZSc=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=IS7VXkKc;
	spf=pass (diktynna.open-mesh.org: domain of patchwork-bot@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=patchwork-bot@kernel.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1623180005;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=9G8sZNtX/XZjgg7gEvr/qFCQorB3b1dlfYaXEWbHYR0=;
	b=OWwKKiVZdQzAV92dUiWUI/oARmqlbruUQY4308BqkAPD8sO67Xsnygy10/eMmSnCH9O+FA
	rOpaozObHFJddLX/uJDQrqJDKk1+Dop16d9+tDhRoGZtAXMSl63yeb5oCCThRmt1zWlJqP
	/tvyc35wzW8J8Q/4mqZjZ2qKd6JhtRQ=
Content-Transfer-Encoding: quoted-printable
X-MailFrom: patchwork-bot+netdevbpf@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
Message-ID-Hash: VMPOJBVV5VHV5BLC4QVC6ML4TWHEWJYL
X-Message-ID-Hash: VMPOJBVV5VHV5BLC4QVC6ML4TWHEWJYL
X-Mailman-Approved-At: Wed, 09 Jun 2021 06:08:25 +0200
CC: davem@davemloft.net, kuba@kernel.org, netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org, penguin-kernel@i-love.sakura.ne.jp, syzbot+c0b807de416427ff3dd1@syzkaller.appspotmail.com
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/GXP6Q2L363MZ6UKGJWPHANWK23VOT2U7/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Hello:

This patch was applied to netdev/net.git (refs/heads/master):

On Tue,  8 Jun 2021 17:29:47 +0200 you wrote:
> From: Sven Eckelmann <sven@narfation.org>
>=20
> The soft/batadv interface for a queued OGM can be changed during the ti=
me
> the OGM was queued for transmission and when the OGM is actually
> transmitted by the worker.
>=20
> But WARN_ON must be used to denote kernel bugs and not to print simple
> warnings. A warning can simply be printed using pr_warn.
>=20
> [...]

Here is the summary with links:
  - [1/1] batman-adv: Avoid WARN_ON timing related checks
    https://git.kernel.org/netdev/net/c/9f460ae31c44

You are awesome, thank you!
--
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html

