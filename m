Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DFD352A0A4
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 17 May 2022 13:43:27 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 893E382670;
	Tue, 17 May 2022 13:43:26 +0200 (CEST)
Received: from ams.source.kernel.org (ams.source.kernel.org [IPv6:2604:1380:4601:e00::1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 969DE8014E
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 10 May 2022 03:20:16 +0200 (CEST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id D6780B81A69;
	Tue, 10 May 2022 01:20:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0A1C3C385C7;
	Tue, 10 May 2022 01:20:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1652145613;
	bh=3CWkc1QD+14BPOojWsyLteAn9/GOrTidNxwF2KiexpA=;
	h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
	b=tp2/iHxjfCA9n+GE8ZyCrVD5GkhvWbFOfHwBvRNg5ipuwkYDi8L/coBzkZVhC2tCl
	 hd91vEWgrmIILT1rO5MVLvhxwsRkH9aerNiA0sk8U4o4hxCGBvqwKIPH/1LqOlEVaO
	 ZgWefZFZ8hse2C+4BAwcT4t+lrckeLi8rNIqPAfwMHOrzfuXhvjragbXiNSCr1vnO3
	 GOw7RgPXAyrYVK3mb1euUgbfFA2GDnptPNQyHUeoAfHR4Ik0vQIleWH6GuH3NJ8OpO
	 cEhW0K+PwZu4y8psqjaSMlbGoQ6BV70TflCXBAQWRd+vQsboTjMBy37L7s15l7Jbmw
	 8zVxcZLMlABUA==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id D9B83F03931;
	Tue, 10 May 2022 01:20:12 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Subject: Re: [PATCH 1/1] batman-adv: Don't skb_split skbuffs with frag_list
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: 
 <165214561288.15844.2929287601845577779.git-patchwork-notify@kernel.org>
Date: Tue, 10 May 2022 01:20:12 +0000
References: <20220508132110.20451-2-sw@simonwunderlich.de>
In-Reply-To: <20220508132110.20451-2-sw@simonwunderlich.de>
To: Simon Wunderlich <sw@simonwunderlich.de>
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1652145616; a=rsa-sha256;
	cv=none;
	b=rZOk5GpzZh1FHBKjpdFNPf7mGwfT8RmQc4WMCwWpLnSlZjzW8/h6mKG5ySOa0tWexoEcPa
	YFBB+GNEllCDXgY5FAskjEL8nTY7TKSLBstR+ZqiDKQtBt3JeiF91LCNGYQJICWPyQLIjE
	QubLr8xTNLmUsTx0Un3LvKZawz7hTTg=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b="tp2/iHxj";
	spf=pass (diktynna.open-mesh.org: domain of patchwork-bot+netdevbpf@kernel.org designates 2604:1380:4601:e00::1 as permitted sender) smtp.mailfrom=patchwork-bot+netdevbpf@kernel.org;
	dmarc=pass (policy=none) header.from=kernel.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1652145616;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=IUi4r2kKf//wF2Tps7wyvyJYNPPBXvqPTU8UAmXv6VE=;
	b=d6A61DaEarWs1fM5F2H4LKIUh3ZopAYIS/YXvb21c3Pul4DKzwJD1f+54CXqXo0ICnf9Uh
	SSUVxUW+SoFNZTL90HnLzA8gIwnGAyPwkfVfLlXqPY0yWX2P83T2ouKczRROaY28TU+QrW
	Bps/V9vrEogZ9OncaV2no840HkhVnyE=
Content-Transfer-Encoding: quoted-printable
X-MailFrom: patchwork-bot+netdevbpf@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
Message-ID-Hash: P2JQQAZQLTYRP27GNIPCLPBUK7KVP6JM
X-Message-ID-Hash: P2JQQAZQLTYRP27GNIPCLPBUK7KVP6JM
X-Mailman-Approved-At: Tue, 17 May 2022 11:43:25 +0200
CC: davem@davemloft.net, kuba@kernel.org, netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/KFRVK3FEBKZ72QFZXLL627TAYUNR646N/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Hello:

This patch was applied to netdev/net.git (master)
by Simon Wunderlich <sw@simonwunderlich.de>:

On Sun,  8 May 2022 15:21:10 +0200 you wrote:
> From: Sven Eckelmann <sven@narfation.org>
>=20
> The receiving interface might have used GRO to receive more fragments t=
han
> MAX_SKB_FRAGS fragments. In this case, these will not be stored in
> skb_shinfo(skb)->frags but merged into the frag list.
>=20
> batman-adv relies on the function skb_split to split packets up into
> multiple smaller packets which are not larger than the MTU on the outgo=
ing
> interface. But this function cannot handle frag_list entries and is onl=
y
> operating on skb_shinfo(skb)->frags. If it is still trying to split suc=
h an
> skb and xmit'ing it on an interface without support for NETIF_F_FRAGLIS=
T,
> then validate_xmit_skb() will try to linearize it. But this fails due t=
o
> inconsistent information. And __pskb_pull_tail will trigger a BUG_ON af=
ter
> skb_copy_bits() returns an error.
>=20
> [...]

Here is the summary with links:
  - [1/1] batman-adv: Don't skb_split skbuffs with frag_list
    https://git.kernel.org/netdev/net/c/a063f2fba3fa

You are awesome, thank you!
--=20
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html

