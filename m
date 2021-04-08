Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 75ACE36A8A5
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 25 Apr 2021 19:47:56 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 1BBBF82F32;
	Sun, 25 Apr 2021 19:47:55 +0200 (CEST)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id E9D0E803D8
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu,  8 Apr 2021 23:30:15 +0200 (CEST)
Received: by mail.kernel.org (Postfix) with ESMTPS id 46C0561055;
	Thu,  8 Apr 2021 21:30:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1617917414;
	bh=wFHkypvvUGXI+5ZmEk9IO7qK7xbLhHXoFcmwZqW/4pM=;
	h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
	b=ltfYka7ylaNuckpkxitj5eRK+Hd5iPJE6TNozH1Oikud2SKoGk7jy9yFDFjavYdCC
	 22fa28mahXI36lS03ZdVZzzArU+vCcUbSadq3fxz9BXerfQKmZ6GfiCLOlPpahgE3R
	 7KAzleTWpNbbed51nim0xvFOlWqKrTk/OLOjMApYth2gc+1Lv81XaTcqJHU2g6MJ97
	 jEXgo9j/L9mso+FarwBxsHEvi8KYcmLcqFJ5O7TuDQV6eoSdC+oh0O516Tj90bHf6M
	 jyTXlgPaBu3aorO6tZpJryHT4AT34OICPaqFXHcpu6FWbnA/sBjwIC0BjebJb5Wxru
	 duqrFwINeYNkQ==
Received: from pdx-korg-docbuild-2.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by pdx-korg-docbuild-2.ci.codeaurora.org (Postfix) with ESMTP id 3892B60BE6;
	Thu,  8 Apr 2021 21:30:14 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Subject: Re: [PATCH 1/3] batman-adv: Fix order of kernel doc in batadv_priv
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: 
 <161791741422.16984.11272846748570435794.git-patchwork-notify@kernel.org>
Date: Thu, 08 Apr 2021 21:30:14 +0000
References: <20210408115401.16988-2-sw@simonwunderlich.de>
In-Reply-To: <20210408115401.16988-2-sw@simonwunderlich.de>
To: Simon Wunderlich <sw@simonwunderlich.de>
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=ltfYka7y;
	spf=pass (diktynna.open-mesh.org: domain of patchwork-bot@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=patchwork-bot@kernel.org
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1617917416; a=rsa-sha256;
	cv=none;
	b=fRM4Di8tPf0Nr9t8LorBmzo3jpXiDogE7W5IzfZPHoKVqLhXEwlpInImoLCky2GmxYeIRJ
	Q1+p7CwgU8DIcEf4iBoOGIk9EpBUKmG7dPedx+AfV85Km85RIpsyaoRncbWU6vmI5Or/f2
	fsOIq0m1tzndly3brjBTpWZSVRK9aAU=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1617917416;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=mx2DaAmLwO6nz7wGlBpSxisZeRe4NN3w405J3s0DL8U=;
	b=c4+MZX90IloL2BvEfOtOlMA8ta8XCe+QaI82QUGMOxIdaxrssiyZTTpbmX/9NVu7rFzjCB
	SUDOUSZ77XyTTKZDaHEy4dOr/hXVW4olAfymT/GO0h+01RE1SBA6mPLbK59067NtLdT29i
	4eXNxOAkVybnpRxE+RW79nNIHr6PpAg=
Content-Transfer-Encoding: quoted-printable
X-MailFrom: patchwork-bot+netdevbpf@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
Message-ID-Hash: MI642HKB4T6VSDXGUIEWNQ5EM6MKRY4B
X-Message-ID-Hash: MI642HKB4T6VSDXGUIEWNQ5EM6MKRY4B
X-Mailman-Approved-At: Sun, 25 Apr 2021 17:47:53 +0200
CC: kuba@kernel.org, davem@davemloft.net, netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/23DR5FJEKWJ3IV7XRCWTP5EJDEFV7MGI/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Hello:

This series was applied to netdev/net-next.git (refs/heads/master):

On Thu,  8 Apr 2021 13:53:59 +0200 you wrote:
> From: Linus L=C3=BCssing <linus.luessing@c0d3.blue>
>=20
> During the inlining process of kerneldoc in commit 8b84cc4fb556
> ("batman-adv: Use inline kernel-doc for enum/struct"), some comments we=
re
> placed at the wrong struct members. Fixing this by reordering the comme=
nts.
>=20
> Signed-off-by: Linus L=C3=BCssing <linus.luessing@c0d3.blue>
> Signed-off-by: Sven Eckelmann <sven@narfation.org>
> Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
>=20
> [...]

Here is the summary with links:
  - [1/3] batman-adv: Fix order of kernel doc in batadv_priv
    https://git.kernel.org/netdev/net-next/c/549750babea1
  - [2/3] batman-adv: Drop unused header preempt.h
    https://git.kernel.org/netdev/net-next/c/5fc087ff96fd
  - [3/3] batman-adv: Fix misspelled "wont"
    https://git.kernel.org/netdev/net-next/c/35796c1d3438

You are awesome, thank you!
--
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html

