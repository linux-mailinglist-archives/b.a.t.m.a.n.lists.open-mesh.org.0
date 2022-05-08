Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 4152851EEF7
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun,  8 May 2022 18:34:08 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 3C39282EB5;
	Sun,  8 May 2022 18:34:07 +0200 (CEST)
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 325A9805C1
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun,  8 May 2022 18:20:14 +0200 (CEST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 04D22B80D40;
	Sun,  8 May 2022 16:20:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA6ACC385AF;
	Sun,  8 May 2022 16:20:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1652026811;
	bh=8rG+mcVAvIn0kPnX9bUskgyPc3GgqvMzqQU/AY9DJO8=;
	h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
	b=IIgkbjwqjuzFrwb9f6ta40psb4uZkerwrIFDdenn55xV+5P5mb12VcmEldlXsQ6j0
	 nIlpDJJfZblsXRjTaIGFFPc2WQVc8F8rwhYddjOOr+ySvftBm2R4W5rNWxzXz+b3hW
	 eQwFqo7khR1oeLoE0idefdxjIG3W3YPew7TS93Jx0Hh1ApXfxDR6oW6wdYZoVuqhaA
	 NuJCB7Kan1Ea6FdKanTwdJv59pNkWNWkEh4qGcCUAgs2iB3yeRWLk/1L2kFhQq8IEP
	 T+L5pWvvaRROBwKcT6vrZfeWkIrwmDFtcoZ544lQwnqMEM2pD9LjeQ2TIg3PXFIMkM
	 bLc4noOpUfE9Q==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id AADDAE8DBDA;
	Sun,  8 May 2022 16:20:11 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Subject: Re: [PATCH 1/2] batman-adv: Start new development cycle
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: 
 <165202681169.7776.6221908264196100235.git-patchwork-notify@kernel.org>
Date: Sun, 08 May 2022 16:20:11 +0000
References: <20220508132616.21232-2-sw@simonwunderlich.de>
In-Reply-To: <20220508132616.21232-2-sw@simonwunderlich.de>
To: Simon Wunderlich <sw@simonwunderlich.de>
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1652026814; a=rsa-sha256;
	cv=none;
	b=wWWTGxpoPb7gXKf2Sl8ZfNMxMopoHSK6xcQ7vHr0ARhC91ZP3SKsr29js3PjtKy3jMTVmZ
	HDQK8V51rao2AuuTW7KB/FBrKkH2CJv4wbpaVp/wUmvtBGq27HnqCtYCrDRJkiNKyrwqPR
	6nZJqw59qVqNKtCt0hOijdQTrRlOOzQ=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=IIgkbjwq;
	spf=pass (diktynna.open-mesh.org: domain of patchwork-bot+netdevbpf@kernel.org designates 145.40.68.75 as permitted sender) smtp.mailfrom=patchwork-bot+netdevbpf@kernel.org;
	dmarc=pass (policy=none) header.from=kernel.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1652026814;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=D30DTHWAXopkQnsAFOHxdFUFQr2M9D1LzO0pL3OnmVM=;
	b=EBD9UEuhHQGsv6IX6SFVNgoABU/vBQ6zDTWtTMZdYUySD1hrUh6nfV7u1ozna1CMI6U8wt
	yjJlfBc+TFToMfs0HRaa7ryhoA171RzNOieL+f/jBUQsZW1Mf5CN+NvD6lZN7eN1MK0AOL
	XFjmKqeTnE/HChoH1n8nlWooZ+Lbul8=
Content-Transfer-Encoding: quoted-printable
X-MailFrom: patchwork-bot+netdevbpf@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
Message-ID-Hash: JWUDQXHPK2RIUYCTQ4MVGHDBELSXZBZJ
X-Message-ID-Hash: JWUDQXHPK2RIUYCTQ4MVGHDBELSXZBZJ
X-Mailman-Approved-At: Sun, 08 May 2022 16:34:04 +0200
CC: kuba@kernel.org, davem@davemloft.net, netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/AWESNR7TWO6MJBJOJZKAKX7I5LUDTHG6/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Hello:

This series was applied to netdev/net-next.git (master)
by Simon Wunderlich <sw@simonwunderlich.de>:

On Sun,  8 May 2022 15:26:15 +0200 you wrote:
> This version will contain all the (major or even only minor) changes fo=
r
> Linux 5.19.
>=20
> The version number isn't a semantic version number with major and minor
> information. It is just encoding the year of the expected publishing as
> Linux -rc1 and the number of published versions this year (starting at =
0).
>=20
> [...]

Here is the summary with links:
  - [1/2] batman-adv: Start new development cycle
    https://git.kernel.org/netdev/net-next/c/cfa4e7b1bcf8
  - [2/2] batman-adv: remove unnecessary type castings
    https://git.kernel.org/netdev/net-next/c/8864d2fcf043

You are awesome, thank you!
--=20
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html

