Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 0623C483D37
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue,  4 Jan 2022 08:52:25 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id E959983DEC;
	Tue,  4 Jan 2022 08:52:23 +0100 (CET)
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id CF5C080220
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue,  4 Jan 2022 05:00:13 +0100 (CET)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 3740CB81142;
	Tue,  4 Jan 2022 04:00:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7BE7C36AEF;
	Tue,  4 Jan 2022 04:00:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1641268811;
	bh=6LKcbLDBAWDxgGS1n/i55l5BNGoGk778boBlco/391w=;
	h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
	b=T5wwpWpDJgyc/axSvP4MoN3kP8v3lwPNwy2R3h5x+5z3EFX5SY9DsF2+6NIuMd6It
	 lPKXf00j0Nhcd6kfidpxWTwvXMwENTwxIjQdVxD+hHTuqC7jfty5bt3s8nysUaLloO
	 RJXJqnAnUdzKsxV6RKmj8oOdRe8jjfIMD2Qt8G0XKV23KolwI5KT/KrEkSgaQCW38s
	 Yq6MbbWm5soEwP8n68ctk5jViYEy9nOt8hlYaKKjZYJsoXRasu8CyagMUHMt/9SlH0
	 nE1XD2eQqgQ7ey/LEjdvpj+c+nvHeKOMsyPiu3Zte6LIDj22S50dzM46btQO231B16
	 fspAKzTg4o++A==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id BA90FF79400;
	Tue,  4 Jan 2022 04:00:11 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Subject: Re: [PATCH 1/1] batman-adv: mcast: don't send link-local multicast to
 mcast routers
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: 
 <164126881175.32247.1012598310655037825.git-patchwork-notify@kernel.org>
Date: Tue, 04 Jan 2022 04:00:11 +0000
References: <20220103171203.1124980-2-sw@simonwunderlich.de>
In-Reply-To: <20220103171203.1124980-2-sw@simonwunderlich.de>
To: Simon Wunderlich <sw@simonwunderlich.de>
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=T5wwpWpD;
	dmarc=pass (policy=none) header.from=kernel.org;
	spf=pass (diktynna.open-mesh.org: domain of patchwork-bot+netdevbpf@kernel.org designates 145.40.68.75 as permitted sender) smtp.mailfrom=patchwork-bot+netdevbpf@kernel.org
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1641268813; a=rsa-sha256;
	cv=none;
	b=thj1iNoWj+4PB3mAzXoE06HtH9iyGvaEP0eMJOyQhtmseYQWT/cXz8QP0Z1ICJh9yPT55o
	qiNYCKlf1z+5h2pmIP37Fpg6Eb3GyOea37+bh6MyChPsb2sS/e6f0AGZ9fsZ7EyiaN4A0d
	PAJYu+RBUTsz6vS4Ep8bCn25A++Lxug=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1641268813;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=nIAjmR9WE9Blh7Qjyhj9u/97z5CFlkwDKqylLRyx23w=;
	b=dRGXlMrJDXR9RE7kMYyZM7pA860xoGXXcfWjRV1t6nqIPiRVFEhQ16M62Jsl04AmSjsu8+
	/S2x8QfqbVa4mjHdM+pWqLg7nelTi6va2FxCR7H7zJyeEE67+4M8TkNH0JPCbUF8KwPcZp
	8b1LOV5vUPAwbMpkuSVQ+w6gnUUJ+0Y=
Content-Transfer-Encoding: quoted-printable
X-MailFrom: patchwork-bot+netdevbpf@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
Message-ID-Hash: TGWBRUCBNSLTQKDA6NGRZYPDSP2QDVKF
X-Message-ID-Hash: TGWBRUCBNSLTQKDA6NGRZYPDSP2QDVKF
X-Mailman-Approved-At: Tue, 04 Jan 2022 07:52:21 +0100
CC: davem@davemloft.net, kuba@kernel.org, netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/FITUX42DYXKJ4LEUBBFM23SN2YMCCH3P/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Hello:

This patch was applied to netdev/net.git (master)
by Simon Wunderlich <sw@simonwunderlich.de>:

On Mon,  3 Jan 2022 18:12:03 +0100 you wrote:
> From: Linus L=C3=BCssing <linus.luessing@c0d3.blue>
>=20
> The addition of routable multicast TX handling introduced a
> bug/regression for packets with a link-local multicast destination:
> These packets would be sent to all batman-adv nodes with a multicast
> router and to all batman-adv nodes with an old version without multicas=
t
> router detection.
>=20
> [...]

Here is the summary with links:
  - [1/1] batman-adv: mcast: don't send link-local multicast to mcast rou=
ters
    https://git.kernel.org/netdev/net/c/938f2e0b57ff

You are awesome, thank you!
--=20
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html

