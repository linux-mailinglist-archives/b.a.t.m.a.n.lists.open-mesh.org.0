Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D74B483D38
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue,  4 Jan 2022 08:52:29 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id E61D084138;
	Tue,  4 Jan 2022 08:52:25 +0100 (CET)
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id AE72C8073F
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue,  4 Jan 2022 05:10:12 +0100 (CET)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 4B5B3B81145;
	Tue,  4 Jan 2022 04:10:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 052C0C36AEF;
	Tue,  4 Jan 2022 04:10:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1641269411;
	bh=vl194+AQ1xJktz6Zg8Z1UoNbJXjlThmJGc34Fw/vApM=;
	h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
	b=h51/A2qsX626TKZN20dKijV7mA18Dhx1x+lPI04N+8ZaID3kwaYn4t9aQCE9dlL6T
	 qYH/xEle+eaUBaFEMyOmUo/Ipnt1Vu+MiehbV4US8/SpiwIf5ggxUcvSfQmM/p3+PA
	 euX1TTfa8bERdOqmxW94DARqjOP3nTbIsSFhyLechigE5Izp9MjIvYz4GFShIUNB7h
	 qGMKidRBAm09mkP2hn1w1ihDqaHAS0fdX/es0i1EQfEYjslH94u5gX0/w9urWU0fWJ
	 HdhbUXFv684LmrwgO8vqWo9MBHtsLtlErNBPJHYoJ4BOC5iCwUuySFMqNGKyWOR3Pn
	 W27sJ9Q1ZvJqg==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id E01CBF79408;
	Tue,  4 Jan 2022 04:10:10 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Subject: Re: [PATCH 1/3] batman-adv: Start new development cycle
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: 
 <164126941090.3337.3399710514018347761.git-patchwork-notify@kernel.org>
Date: Tue, 04 Jan 2022 04:10:10 +0000
References: <20220103171722.1126109-2-sw@simonwunderlich.de>
In-Reply-To: <20220103171722.1126109-2-sw@simonwunderlich.de>
To: Simon Wunderlich <sw@simonwunderlich.de>
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b="h51/A2qs";
	dmarc=pass (policy=none) header.from=kernel.org;
	spf=pass (diktynna.open-mesh.org: domain of patchwork-bot+netdevbpf@kernel.org designates 145.40.68.75 as permitted sender) smtp.mailfrom=patchwork-bot+netdevbpf@kernel.org
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1641269412; a=rsa-sha256;
	cv=none;
	b=MovUEF9exztMTj+QxGre7fTqjoI6lfBsIV30NEGpP4WGxkSqm4rzKsDgOSRvvM09p2vh+H
	mHyhuXv7akSn1nGbGj/dI9VuKp8cj2y8p4AwvDCRhLdNob2VaYiZ8MZzTPK7SXe1KVIvNg
	0pNMlenWPKbdkRCuNauEsfZcmI/0ynI=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1641269412;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=kCjT8hkV72WYLuDnzagpGqnFvPdAIdonSy0lQCvKmaY=;
	b=hC5kmNbyUEhPpO9DiF8KB17EBpxt8xgjhDkHR9VgzKc/QLOLWkdYiCeUP4MqKVomC+vJln
	ddEqYtb8WIMxUeLjw16/SSDgTmXMKmLqpFjjDtAHH/e7vc7quIiQqlXWPeUIWFgx7zJjt1
	D40ghoYAUggJi36yfYOXoTVFKn9NQoc=
Content-Transfer-Encoding: quoted-printable
X-MailFrom: patchwork-bot+netdevbpf@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
Message-ID-Hash: 6FLV5TAMX4LYY2QRLJIEPSOP3MJN6CSY
X-Message-ID-Hash: 6FLV5TAMX4LYY2QRLJIEPSOP3MJN6CSY
X-Mailman-Approved-At: Tue, 04 Jan 2022 07:52:21 +0100
CC: kuba@kernel.org, davem@davemloft.net, netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/4ZOQXUEWE7LUS3OLGJG5PNYGASMD6OBQ/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Hello:

This series was applied to netdev/net-next.git (master)
by Simon Wunderlich <sw@simonwunderlich.de>:

On Mon,  3 Jan 2022 18:17:20 +0100 you wrote:
> This version will contain all the (major or even only minor) changes fo=
r
> Linux 5.17.
>=20
> The version number isn't a semantic version number with major and minor
> information. It is just encoding the year of the expected publishing as
> Linux -rc1 and the number of published versions this year (starting at =
0).
>=20
> [...]

Here is the summary with links:
  - [1/3] batman-adv: Start new development cycle
    https://git.kernel.org/netdev/net-next/c/c2262123cc49
  - [2/3] batman-adv: allow netlink usage in unprivileged containers
    https://git.kernel.org/netdev/net-next/c/9057d6c23e73
  - [3/3] batman-adv: remove unneeded variable in batadv_nc_init
    https://git.kernel.org/netdev/net-next/c/cde3fac565a7

You are awesome, thank you!
--=20
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html

