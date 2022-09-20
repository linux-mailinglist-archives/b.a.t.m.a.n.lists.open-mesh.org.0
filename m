Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id D231B5BDD9E
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 20 Sep 2022 08:49:13 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id DBD9C8167E;
	Tue, 20 Sep 2022 08:49:09 +0200 (CEST)
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id C852480FFD
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 20 Sep 2022 03:20:17 +0200 (CEST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 771E5B822E5;
	Tue, 20 Sep 2022 01:20:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 12F90C433B5;
	Tue, 20 Sep 2022 01:20:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663636816;
	bh=zReI1/NFCoX2Iq8CrByW8zJnC3urjvsDRIqE5Uk/Fr8=;
	h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
	b=slqdKDW+1xARur+V71rBQ2xVUBGtey845m0NFinT1DaHSbfMA8t5IlHNQW2Q5M08E
	 ANv2SKux9DhxhFRGqNkFVPwGAHt8Weuyl9r9VHaasY/b2D7d5g3FC59L5QMU3POSvf
	 X52wjToZe2sYc0GIpd+YRq/4XIfiOCLw9QjTpJDh/aosxfLiMefU4S3WYN7gpuyuxh
	 YMvzw21G9II+7lYDmJkjqPjmr0dEe7uo9PHm0C7pZBiiG6w0rPlhCVmQ3Emc1WDinA
	 t75yWLufHb4Hq1WOKh8jxAT6NbQ+iuhOQa5k5OC8ui/RIxZxaIleJOM1ujafxS47JQ
	 P8o9W5allH0rg==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id F2BA7E52535;
	Tue, 20 Sep 2022 01:20:15 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Subject: Re: [PATCH 1/4] batman-adv: Start new development cycle
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: 
 <166363681598.30260.16186925512365052536.git-patchwork-notify@kernel.org>
Date: Tue, 20 Sep 2022 01:20:15 +0000
References: <20220916161454.1413154-2-sw@simonwunderlich.de>
In-Reply-To: <20220916161454.1413154-2-sw@simonwunderlich.de>
To: Simon Wunderlich <sw@simonwunderlich.de>
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1663636817;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=OcxqwVhmk9XVOtPqCg4efPH2adtuj7qINsiAug6xkdY=;
	b=2W+6/dNbfCqNKI5BwhFj807iRt+LinI+z5dVqcuM5uSRKP7/qLdjDAs0uim/TsvY+Tu19m
	Z/vLKlDbJm4oT9vda02s+2wq6oGlaTSUTYQlr9mH+1hRmSoQxe/OlE1LIyhEoS4Y14NIVy
	WMUZpyL+wUr9JvG4iBi/ga8OUNL86s0=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=slqdKDW+;
	dmarc=pass (policy=none) header.from=kernel.org;
	spf=pass (diktynna.open-mesh.org: domain of patchwork-bot+netdevbpf@kernel.org designates 145.40.68.75 as permitted sender) smtp.mailfrom=patchwork-bot+netdevbpf@kernel.org
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1663636817; a=rsa-sha256;
	cv=none;
	b=Ad9jk2Kl4tjSQm0s8PSgW10HuO7gt8KX5ph6wVpRz+aAYlF0swKwfxStPdbsvxvBP6RzEb
	o6W8vK+UrfS/kCNbVfqr5xo0kTPB+V9Ow/WBI5pHEKlKzVCfqsWqrTOd4qw62qCOjZ6hmY
	onLxHQkwsdZt0h8p3P4vQ55SPD4sn7c=
Content-Transfer-Encoding: quoted-printable
X-MailFrom: patchwork-bot+netdevbpf@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
Message-ID-Hash: 5S7ZGXQT45Z7FYCEG7RJCF4G3DJG3FL4
X-Message-ID-Hash: 5S7ZGXQT45Z7FYCEG7RJCF4G3DJG3FL4
X-Mailman-Approved-At: Tue, 20 Sep 2022 06:49:06 +0200
CC: kuba@kernel.org, davem@davemloft.net, netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/HFXCB75N742UYS5456CYOLSRP4LOJXC2/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Hello:

This series was applied to netdev/net-next.git (master)
by Simon Wunderlich <sw@simonwunderlich.de>:

On Fri, 16 Sep 2022 18:14:51 +0200 you wrote:
> This version will contain all the (major or even only minor) changes fo=
r
> Linux 6.1.
>=20
> The version number isn't a semantic version number with major and minor
> information. It is just encoding the year of the expected publishing as
> Linux -rc1 and the number of published versions this year (starting at =
0).
>=20
> [...]

Here is the summary with links:
  - [1/4] batman-adv: Start new development cycle
    https://git.kernel.org/netdev/net-next/c/ea92882b1fd8
  - [2/4] batman-adv: Drop unused headers in trace.h
    https://git.kernel.org/netdev/net-next/c/7d315c07eda7
  - [3/4] batman-adv: Drop initialization of flexible ethtool_link_ksetti=
ngs
    https://git.kernel.org/netdev/net-next/c/813e62a6fe75
  - [4/4] batman-adv: remove unused struct definitions
    https://git.kernel.org/netdev/net-next/c/76af7483b3c7

You are awesome, thank you!
--=20
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html

