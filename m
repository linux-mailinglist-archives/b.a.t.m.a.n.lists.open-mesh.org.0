Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 7938E4318FD
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 18 Oct 2021 14:23:12 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 4FEBD80E8A;
	Mon, 18 Oct 2021 14:23:11 +0200 (CEST)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 0191580671
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 18 Oct 2021 14:10:12 +0200 (CEST)
Received: by mail.kernel.org (Postfix) with ESMTPS id 3D2D161351;
	Mon, 18 Oct 2021 12:10:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1634559011;
	bh=HqaSPhUMlFlcfNoprF3LE///eSpUVIhd/IiotTyQ6o4=;
	h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
	b=lNk3VSo6ST1EAX8d4naHiv4PcjmuiBL57/1MdRtVgD7TbouYUP39Vpq49Kye9Xy3Z
	 MU9nso5x0zCzVmXkWgqgUHwttllaNAfhyTMT2lHxtsdZYdEf+V4hs9BtqCSUKmei8D
	 4ItRpDCRo56EtBYbwfG2jjvKakDUCqHWp42FTtBbUgusyvJOv6Ds54oM6yyjzEZKSx
	 MtoDJeRoGFa1z8j3rS5q5h/6HMrLOz02OLcXVSFMCt51gnhljdrrZXwMkb/b6pdLeo
	 xlvJ4RmqV+F9YipzHKdvRFNmFFNWYMlSvMgWR3XU0CjYAvtCp3w+jrzZS5p2uVd093
	 jCsDbtQ0BtXKw==
Received: from pdx-korg-docbuild-2.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by pdx-korg-docbuild-2.ci.codeaurora.org (Postfix) with ESMTP id 35F0860971;
	Mon, 18 Oct 2021 12:10:11 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Subject: Re: [PATCH v3 net-next] net: make use of helper netif_is_bridge_master()
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: 
 <163455901121.7340.10701802688930426386.git-patchwork-notify@kernel.org>
Date: Mon, 18 Oct 2021 12:10:11 +0000
References: <20211016112137.18858-1-acadx0@gmail.com>
In-Reply-To: <20211016112137.18858-1-acadx0@gmail.com>
To: Kyungrok Chung <acadx0@gmail.com>
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1634559013;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=8NfvmKnG0k+zA04xPheBKom28BVySssYzgbRz10JYE0=;
	b=CmX+iLgCJWEX8iSmtDHuk3Tm0w/j0jHE7t6vaYVem4ZorC4xC6yw7fjNfSpqPDpkmfeteE
	m6yJMGLvB5gG7f4etQztUPLqVPypLedX0ZQG8k4ILjWG3KfyaQByJVqfqIT0y0QySDWeHA
	7Md9E9biEbeBjQjRisybGzPCSiKdlck=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=lNk3VSo6;
	dmarc=pass (policy=none) header.from=kernel.org;
	spf=pass (diktynna.open-mesh.org: domain of patchwork-bot+netdevbpf@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=patchwork-bot+netdevbpf@kernel.org
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1634559013; a=rsa-sha256;
	cv=none;
	b=BsevWGGarQ70YZjfu3zh4uMrTXJz6X86b+BfKmQUWSCZ9z4P28rcAebtJXLX+lnsySPzrl
	ZPTnuvVvWfLaBIQiQYCDBZIA+Ev9VHAQ/JjmIvJB/wPoLZCC/LJZy2ayoq3Z+1gB5Ojl83
	WMyUSsNlmTeIsPT0D372hXNxyFjnURQ=
Content-Transfer-Encoding: quoted-printable
X-MailFrom: patchwork-bot+netdevbpf@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
Message-ID-Hash: DXDBDOFTJZXMMIZFQBERUVT3RDUZXR36
X-Message-ID-Hash: DXDBDOFTJZXMMIZFQBERUVT3RDUZXR36
X-Mailman-Approved-At: Mon, 18 Oct 2021 12:23:08 +0200
CC: mareklindner@neomailbox.ch, a@unstable.cc, davem@davemloft.net, kuba@kernel.org, roopa@nvidia.com, nikolay@nvidia.com, pablo@netfilter.org, kadlec@netfilter.org, fw@strlen.de, b.a.t.m.a.n@lists.open-mesh.org, netdev@vger.kernel.org, linux-kernel@vger.kernel.org, bridge@lists.linux-foundation.org, netfilter-devel@vger.kernel.org, coreteam@netfilter.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/GGKULRRX62ZNITZXD5J54MUYOL62KGE7/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Hello:

This patch was applied to netdev/net-next.git (master)
by David S. Miller <davem@davemloft.net>:

On Sat, 16 Oct 2021 20:21:36 +0900 you wrote:
> Make use of netdev helper functions to improve code readability.
> Replace 'dev->priv_flags & IFF_EBRIDGE' with netif_is_bridge_master(dev=
).
>=20
> Signed-off-by: Kyungrok Chung <acadx0@gmail.com>
> ---
>=20
> v1->v2:
>   - Apply fixes to batman-adv, core too.
>=20
> [...]

Here is the summary with links:
  - [v3,net-next] net: make use of helper netif_is_bridge_master()
    https://git.kernel.org/netdev/net-next/c/254ec036db11

You are awesome, thank you!
--
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html

