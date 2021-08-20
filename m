Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 86A353F2E79
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 20 Aug 2021 17:03:25 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 5E9A380671;
	Fri, 20 Aug 2021 17:03:24 +0200 (CEST)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 817358035A
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 20 Aug 2021 14:52:33 +0200 (CEST)
Received: by mail.kernel.org (Postfix) with ESMTPS id 9E083610CC;
	Fri, 20 Aug 2021 12:52:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1629463951;
	bh=PvLygdkRwhGOuqZPClClVkX9QulBbtkOMymA4jk7Tbg=;
	h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
	b=sM/eiOXcKxk39Cl2RoLJzg2I6WznjGAKvRK0HvHXKMDtRvzB/7i4LkF6P+DEqvwiD
	 ojQ/62/Rzzs5wRGxodE3e2cKoZ4ByCFf0kRC0aA/I0LBBykkQgFioN0QvHBTru8Y3G
	 jgLrFmzWR/87bOy3Ww3la8cAdWvDJJ7fw6dchkeM7h8UwEPKXayoDstlL1WVuZE7MM
	 uk+MAVWHhpNtYBl3Eqb9DA7wGJcORz9e3fPiV7Zex/EILTJxfz5jAVs/EMkzyMwJvN
	 uQSqoRMlrVVqc3OfBrVN1U95QdKcaJuq1tpyDuxZJTDLD8W0inZJDnAsTsdqIuOnl8
	 IAUg0UaemoQEA==
Received: from pdx-korg-docbuild-2.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by pdx-korg-docbuild-2.ci.codeaurora.org (Postfix) with ESMTP id 9324160A6B;
	Fri, 20 Aug 2021 12:52:31 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Subject: Re: [PATCH 1/6] batman-adv: Start new development cycle
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: 
 <162946395159.27725.6381822484284696109.git-patchwork-notify@kernel.org>
Date: Fri, 20 Aug 2021 12:52:31 +0000
References: <20210820083300.32289-2-sw@simonwunderlich.de>
In-Reply-To: <20210820083300.32289-2-sw@simonwunderlich.de>
To: Simon Wunderlich <sw@simonwunderlich.de>
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b="sM/eiOXc";
	dmarc=pass (policy=none) header.from=kernel.org;
	spf=pass (diktynna.open-mesh.org: domain of patchwork-bot+netdevbpf@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=patchwork-bot+netdevbpf@kernel.org
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1629463953; a=rsa-sha256;
	cv=none;
	b=bjKhlPq0RHK+31vUSjBTVBlVjoRws0v3NqGUND2KX2flAZ27Tzy36tnyhfl8tD2o2jcJCY
	zL3JdoUKvdqbmX6nTY0xFSzFE4zjiCZUcywim/QNbdFaWnht57HCZpkdzZcknBrTlqUc9D
	mkmIfaJFD+LNCcVxl0dCRnTbzOZdyCQ=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1629463953;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=tvHFHjoM1FXVba3N3XYgh+Ot62kXhspzlp+9EKs0MIw=;
	b=Fgl8R2iAh5Oc9dtBF0aRX9zO3arzxuVbL09RiD2Gr/z/cTk17stekOaEetOmZ2M6WMCK6U
	ttSZamNqBiOLkXZzWjcOFKbxXWXQPufB3WxSrYplJVz6a4KNBogWF4l3vLUhrVWw+Eurno
	UC/84VHHGgbhftd6dSXuYr2Inu605zY=
Content-Transfer-Encoding: quoted-printable
X-MailFrom: patchwork-bot+netdevbpf@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
Message-ID-Hash: G33XUY3XPO62F2JCORWRUKQN2JRKCKSG
X-Message-ID-Hash: G33XUY3XPO62F2JCORWRUKQN2JRKCKSG
X-Mailman-Approved-At: Fri, 20 Aug 2021 15:03:21 +0200
CC: kuba@kernel.org, davem@davemloft.net, netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/3S4PU2NLIDI63V4MJGGBXVJ2IYYU32TV/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Hello:

This series was applied to netdev/net-next.git (refs/heads/master):

On Fri, 20 Aug 2021 10:32:55 +0200 you wrote:
> This version will contain all the (major or even only minor) changes fo=
r
> Linux 5.15.
>=20
> The version number isn't a semantic version number with major and minor
> information. It is just encoding the year of the expected publishing as
> Linux -rc1 and the number of published versions this year (starting at =
0).
>=20
> [...]

Here is the summary with links:
  - [1/6] batman-adv: Start new development cycle
    https://git.kernel.org/netdev/net-next/c/53972e43d4a7
  - [2/6] batman-adv: Move IRC channel to hackint.org
    https://git.kernel.org/netdev/net-next/c/71d41c09f1fa
  - [3/6] batman-adv: Switch to kstrtox.h for kstrtou64
    https://git.kernel.org/netdev/net-next/c/70eeb75d4c4d
  - [4/6] batman-adv: Check ptr for NULL before reducing its refcnt
    https://git.kernel.org/netdev/net-next/c/6340dcbd6194
  - [5/6] batman-adv: Drop NULL check before dropping references
    https://git.kernel.org/netdev/net-next/c/79a0bffb835a
  - [6/6] batman-adv: bcast: remove remaining skb-copy calls
    https://git.kernel.org/netdev/net-next/c/808cfdfad579

You are awesome, thank you!
--
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html

