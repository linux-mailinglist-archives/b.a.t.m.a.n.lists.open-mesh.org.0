Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A90F43B4A5
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 26 Oct 2021 16:46:12 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id EA8C580905;
	Tue, 26 Oct 2021 16:46:10 +0200 (CEST)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 8E40E803DC
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 26 Oct 2021 15:50:08 +0200 (CEST)
Received: by mail.kernel.org (Postfix) with ESMTPS id C24EE61002;
	Tue, 26 Oct 2021 13:50:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1635256206;
	bh=e2eq+OvgX7av0CHumTLIbp3yo/firkDnnaRKg2NNHAY=;
	h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
	b=oWREKgZA4a+FsvnRax7ajgDugmRAv4c3Xhy7nKsm6ld5LlTy49DxL/7PgcE6AP5bn
	 vQuNU72Ue8aQNSnLEYDqsw76cmavZr9ctLYEof91PMOIyYb0+gMBt4MfHPV/fVMUZt
	 B6Pts1mdKCAjtyOHQbpHTwxsahbNP1Wufy7spM1IsRftynAze0HlzzfwIpBByUVYHY
	 FfOoXG7z4pr2uyapRjnGlw+w9yaUiwh38KRcKPAekHlcaHw0bYJY38CVfyfX9S5WGe
	 qYK3cPUnDIrnhtzsEf6GTyGuYW8S+W7YQ6SlFr9POi3N6m1FUvmGfwb7Rq0yrYF6e0
	 LkQ2ac1OeKQaw==
Received: from pdx-korg-docbuild-2.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by pdx-korg-docbuild-2.ci.codeaurora.org (Postfix) with ESMTP id B4C1D60726;
	Tue, 26 Oct 2021 13:50:06 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Subject: Re: [PATCH] net: batman-adv: fix error handling
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: 
 <163525620673.3700.4010737178045204457.git-patchwork-notify@kernel.org>
Date: Tue, 26 Oct 2021 13:50:06 +0000
References: <20211024131356.10699-1-paskripkin@gmail.com>
In-Reply-To: <20211024131356.10699-1-paskripkin@gmail.com>
To: Pavel Skripkin <paskripkin@gmail.com>
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1635256208;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=0mknEJpBrGGinpL8pzZP8SZgh/w3ikJeoQ8zzpYLqSY=;
	b=OG9GKg3gLD8OYWYBGV/jfWPmjHM7KCxqXJJWUIDRdsSk6/7DPw334fHqdFcu9QCk3816bR
	AKaBHkW9MLtgXwxNz2HBAKEU67gVHGnl4Skt1b2sSMsy1bv/n8+PCDwyOpvEvfOBsXeF63
	gLhN7FgLCSsC9M1OqObldbUeIcBlgtg=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=oWREKgZA;
	dmarc=pass (policy=none) header.from=kernel.org;
	spf=pass (diktynna.open-mesh.org: domain of patchwork-bot+netdevbpf@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=patchwork-bot+netdevbpf@kernel.org
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1635256208; a=rsa-sha256;
	cv=none;
	b=NI7ObSELe0ZrI39w3MiOLUKUW3GdHFyOXXjrHuwRAi8H+gGh12XxwwMDDgzwB7wKOTzhhY
	EHzzvIh2xmvAT7xorpwmtntYf9EnRfj2xD4lT7nq9YvRmN9JknsDjUcFvW98Qh8uNzcx6y
	l2dXNyRXs65pyPG97kSrdlI1+nGIA8I=
Content-Transfer-Encoding: quoted-printable
X-MailFrom: patchwork-bot+netdevbpf@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
Message-ID-Hash: 7J3WM7XIJAGO2P53PVVKPAGWJ4OWNR2T
X-Message-ID-Hash: 7J3WM7XIJAGO2P53PVVKPAGWJ4OWNR2T
X-Mailman-Approved-At: Tue, 26 Oct 2021 14:46:08 +0200
CC: mareklindner@neomailbox.ch, a@unstable.cc, davem@davemloft.net, kuba@kernel.org, b.a.t.m.a.n@lists.open-mesh.org, netdev@vger.kernel.org, linux-kernel@vger.kernel.org, syzbot+28b0702ada0bf7381f58@syzkaller.appspotmail.com
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/CF7LSNNGV6N77UILI4E576PROLHQUIET/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Hello:

This patch was applied to netdev/net.git (master)
by David S. Miller <davem@davemloft.net>:

On Sun, 24 Oct 2021 16:13:56 +0300 you wrote:
> Syzbot reported ODEBUG warning in batadv_nc_mesh_free(). The problem wa=
s
> in wrong error handling in batadv_mesh_init().
>=20
> Before this patch batadv_mesh_init() was calling batadv_mesh_free() in =
case
> of any batadv_*_init() calls failure. This approach may work well, when
> there is some kind of indicator, which can tell which parts of batadv a=
re
> initialized; but there isn't any.
>=20
> [...]

Here is the summary with links:
  - net: batman-adv: fix error handling
    https://git.kernel.org/netdev/net/c/6f68cd634856

You are awesome, thank you!
--=20
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html

