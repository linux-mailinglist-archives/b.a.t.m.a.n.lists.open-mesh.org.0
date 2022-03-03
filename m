Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EB7F4CB78B
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu,  3 Mar 2022 08:16:27 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 0C79F844B6;
	Thu,  3 Mar 2022 08:16:24 +0100 (CET)
Received: from ams.source.kernel.org (ams.source.kernel.org [IPv6:2604:1380:4601:e00::1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 8F034805DA
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu,  3 Mar 2022 07:10:15 +0100 (CET)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id EAE61B823F1;
	Thu,  3 Mar 2022 06:10:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 23FF1C340F3;
	Thu,  3 Mar 2022 06:10:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1646287813;
	bh=QeiWLA8P3C7WPC5i3YJOZzowxr3+zfZgljiExCND4ss=;
	h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
	b=fYBH5jA1BSJMoEwHKvuUsLmLuZ8skdFWiIovG3zQHTTba6ohBopA9juoedUg569T8
	 BAwTshUHRj4Of6IahU6OQhqETk2PfHMSntyczsleYciNxB6DiXUYt+9JLF4nkBfvIC
	 EK6X6JcWmqEdYbrPQybdGxtpf/gWOtaWOAVabOGkGNbJqq7viIy4SQ+hy8iZk7z9RS
	 05yn97DKq3Gigjnv+YmloBEYd+PEitK3HSoonwHdBxuYb+3/nUPoesDi1zIVao5inX
	 qNFhA+lOmehRb6dwVK7wB0ftKIFR0lP9uDMw98o735ylxRBqAxKjLeIJ7zdKOA0eVx
	 dzdtgJAiStVBg==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 022CAEAC096;
	Thu,  3 Mar 2022 06:10:13 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Subject: Re: [PATCH 1/4] batman-adv: Start new development cycle
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: 
 <164628781300.31171.6191462436150067665.git-patchwork-notify@kernel.org>
Date: Thu, 03 Mar 2022 06:10:13 +0000
References: <20220302163522.102842-2-sw@simonwunderlich.de>
In-Reply-To: <20220302163522.102842-2-sw@simonwunderlich.de>
To: Simon Wunderlich <sw@simonwunderlich.de>
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=fYBH5jA1;
	dmarc=pass (policy=none) header.from=kernel.org;
	spf=pass (diktynna.open-mesh.org: domain of patchwork-bot+netdevbpf@kernel.org designates 2604:1380:4601:e00::1 as permitted sender) smtp.mailfrom=patchwork-bot+netdevbpf@kernel.org
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1646287815; a=rsa-sha256;
	cv=none;
	b=nqDBicmIuazMyRf4R0CqJDiDndNeltaukfd3Ww3FsOGoSiI5F/tKSIJKRUbZVaf8APWPb4
	ZytF3Rr0G2illv8aq9ca0dpdwxl3jXvQAdndVm/6/GpZalAG2wnzI1m8TZhshhWbMNJaUI
	ZxmaKhutb1w8vmaw7z5SBy91kWCZTIQ=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1646287815;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=zaiKyxquR8WGf/P6Eb6enQJ1HKxDg7YQIrw5V6Jwsoo=;
	b=MoAmnxmReJTf0EQnyshHoYsRnQ1T2G1o3IVeC5Hny2RNOIkMoqvPGoi8W6XHPpfa4/W0Ml
	jxi0jqF4Mg7IQ++/3RANKuziT2rR2L3nRAL+ycOC6qpW6JR7WgRKMoDmOVq7+7Wn9+M8KX
	B2t0m/WIKP/oXD9vKcx8sN4nOB3KIRY=
Content-Transfer-Encoding: quoted-printable
X-MailFrom: patchwork-bot+netdevbpf@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
Message-ID-Hash: B4CQWTYFBAGIOASF44AJIEY3LEY55GXV
X-Message-ID-Hash: B4CQWTYFBAGIOASF44AJIEY3LEY55GXV
X-Mailman-Approved-At: Thu, 03 Mar 2022 07:16:20 +0100
CC: kuba@kernel.org, davem@davemloft.net, netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/DI3IZK6A4MURKHKKO3NRL3PWUD4MQYGX/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Hello:

This series was applied to netdev/net-next.git (master)
by Simon Wunderlich <sw@simonwunderlich.de>:

On Wed,  2 Mar 2022 17:35:19 +0100 you wrote:
> This version will contain all the (major or even only minor) changes fo=
r
> Linux 5.18.
>=20
> The version number isn't a semantic version number with major and minor
> information. It is just encoding the year of the expected publishing as
> Linux -rc1 and the number of published versions this year (starting at =
0).
>=20
> [...]

Here is the summary with links:
  - [1/4] batman-adv: Start new development cycle
    https://git.kernel.org/netdev/net-next/c/94ea9392e113
  - [2/4] batman-adv: Remove redundant 'flush_workqueue()' calls
    https://git.kernel.org/netdev/net-next/c/c138f67ad472
  - [3/4] batman-adv: Migrate to linux/container_of.h
    https://git.kernel.org/netdev/net-next/c/eb7da4f17dfc
  - [4/4] batman-adv: Demote batadv-on-batadv skip error message
    https://git.kernel.org/netdev/net-next/c/6ee3c393eeb7

You are awesome, thank you!
--=20
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html

