Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id AF1C49EDF19
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 12 Dec 2024 06:55:33 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id E979583F4B
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 12 Dec 2024 06:55:18 +0100 (CET)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1733982918;
 b=HGAfu0VtizdnqsvlCb3hZp0AdE/MA4ZwMzLU6A8psKwtPDRhr7UJVI1Y69UAUzhoh99mw
 Z1JcOV4zCPJqJ0Lacthgwd08AdEq1XLXyYyM7HR7T2RrWKG4xSVyIDqD30ATRMa0GBHAAgx
 gpF21L361XqsbRx+3W24l+mJSFgVOx0=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1733982918; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=U/5WTQAFI3Z/3cqbTt7/4y+azRGyvJ5M59NygskFYLs=;
 b=jestItYbb3CpsDWxDWWLilBfwHBUlimT4KnaOJbRfox1SpSWRHHkY8cGdhenSsZn8/BVX
 OMYoi23O7YdHwj8XCLiqq6MG+CtbiKt5DxB2EohT7UVxR/wpolQT7kjM8uMPXIVYC1jGPAS
 K0U4eIpahoXRw19dRvXdXqXunyf58ak=
ARC-Authentication-Results: i=2; open-mesh.org; dkim=pass header.d=kernel.org;
  arc=pass;
  dmarc=pass (Used From Domain Record) header.from=kernel.org
 policy.dmarc=quarantine
Authentication-Results: open-mesh.org; dkim=pass header.d=kernel.org;
 arc=pass;
 dmarc=pass (Used From Domain Record) header.from=kernel.org policy.dmarc=quarantine
Received: from nyc.source.kernel.org (nyc.source.kernel.org
 [IPv6:2604:1380:45d1:ec00::3])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 7DB2581CDD
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 12 Dec 2024 05:40:17 +0100 (CET)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1733978418;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=U/5WTQAFI3Z/3cqbTt7/4y+azRGyvJ5M59NygskFYLs=;
	b=d1rPriBLPwPJd9xhBQGP3ex2IjEnssM2sBtgQRo4afhb0dE7Z7+gZFmed+1jTpJZIQ3l4V
	+SotpMvqXIbXWqaq56jZ6tO4QaGDzIIymsjKI9Dp/0T2d9KVYkXX7Zy9HjeUcbQiOX/eF6
	Hs0H5NbWOQ4MYSKNio4+o1nVcKhItYE=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1733978418; a=rsa-sha256;
	cv=none;
	b=YQ/s/uumMKp38KON19gQmOR5kkpKlSatfAfYfwXqBRfn42/9e+yjE/bI0bu6COyC7xjjDh
	AJAw3HAhHpolLytoGW5ycKJ7CO2Ly2GWkmcwuhq9hNQqe77SugQFmEnYOEAxjaL0nqOiB5
	g7I4kufWU/Q4xThWEPSTOJ1A+Zlokho=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=UvfSK8BP;
	spf=pass (diktynna.open-mesh.org: domain of
 patchwork-bot+netdevbpf@kernel.org designates 2604:1380:45d1:ec00::3 as
 permitted sender) smtp.mailfrom=patchwork-bot+netdevbpf@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id B11ABA42162;
	Thu, 12 Dec 2024 04:38:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A06B3C4CECE;
	Thu, 12 Dec 2024 04:40:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733978415;
	bh=ZRjTd5l33pCCxwOixjMB1aMT5fgo66B6Y8yswTCODqI=;
	h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
	b=UvfSK8BPsogRainCffLv8M0TdfvAaRbHE4zNKZb8Ll5NZf/8dMObxL5Lhd4/a9TcE
	 VHxUDf/fBWdFyzvwE4YrM9u20Ivt2q338lkZZK+mfShQD3KrldHvxYVCcvbm769PuQ
	 0hLDoyTf5ovkvLy0ytVs6bTvbO5QLx50emAagTCVzAZOAaoSWPlEEbtJD2APHg6OoJ
	 W25/pzI5Y8BV82vDOM0p/54gbNSK9bQiD0q7guZiiESg7suoP3rk80Er3xhl+R/cuN
	 +ODPrObK1ZuzEJaGposXWNrZz8W5uRVHYwE4IhfaQdiebnRCeGTGKrPGD5v1eWsdro
	 mss5zKcK1HcmA==
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id
 EAF12380A959;
	Thu, 12 Dec 2024 04:40:32 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: Re: [PATCH 1/3] batman-adv: Do not send uninitialized TT changes
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: 
 <173397843176.1849456.10690571665535440668.git-patchwork-notify@kernel.org>
Date: Thu, 12 Dec 2024 04:40:31 +0000
References: <20241210135024.39068-2-sw@simonwunderlich.de>
In-Reply-To: <20241210135024.39068-2-sw@simonwunderlich.de>
To: Simon Wunderlich <sw@simonwunderlich.de>
Cc: davem@davemloft.net, kuba@kernel.org, netdev@vger.kernel.org,
 b.a.t.m.a.n@lists.open-mesh.org, repk@triplefau.lt, sven@narfation.org
X-MailFrom: patchwork-bot+netdevbpf@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency;
 loop; banned-address; member-moderation;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-0;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-1;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-2
Message-ID-Hash: OOVFDSUM2WWGUWX4G5LVNPGNXW6ETPJ5
X-Message-ID-Hash: OOVFDSUM2WWGUWX4G5LVNPGNXW6ETPJ5
X-Mailman-Approved-At: Thu, 12 Dec 2024 06:54:49 +0100
X-Mailman-Version: 3.3.8
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/MDNZDHVU2OQ7RKA724EDAA2A3KAUOTOA/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Hello:

This series was applied to netdev/net.git (main)
by Simon Wunderlich <sw@simonwunderlich.de>:

On Tue, 10 Dec 2024 14:50:22 +0100 you wrote:
> From: Remi Pommarel <repk@triplefau.lt>
> 
> The number of TT changes can be less than initially expected in
> batadv_tt_tvlv_container_update() (changes can be removed by
> batadv_tt_local_event() in ADD+DEL sequence between reading
> tt_diff_entries_num and actually iterating the change list under lock).
> 
> [...]

Here is the summary with links:
  - [1/3] batman-adv: Do not send uninitialized TT changes
    https://git.kernel.org/netdev/net/c/f2f7358c3890
  - [2/3] batman-adv: Remove uninitialized data in full table TT response
    https://git.kernel.org/netdev/net/c/8038806db64d
  - [3/3] batman-adv: Do not let TT changes list grows indefinitely
    https://git.kernel.org/netdev/net/c/fff8f17c1a6f

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


