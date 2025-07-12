Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 79923B028B5
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 12 Jul 2025 03:01:10 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id CC8CA849F9
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 12 Jul 2025 03:00:53 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1752282053;
 b=Y9tz8/SDLSwNxki5zz31pjMX7ixJU8EEt941cVOvkX2UpzLhil2LVzW5Xr7UDFNu7S+uQ
 OoFaCKsR5FRI47VWfaOYQ6XEXTFX/4zWMrriiGz9QNfTKdKsSZfvgNrCoObKE7G5ROfQIpZ
 rgc0xG1kMufHtEJoBGgRRrMQk1141/s=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1752282053; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=CYG98Pj9qah+BvxY6LcTjvtkEQTRCFUijv6nAwJdEuA=;
 b=GampiGymXn4WZsOG5WirV0Sht430VHoES1w+b3ikyQO1xGU232lrG97D7BZm7fnFnhtdD
 q0QOdq1cY/vahu+95OtGmMCMDPd0M3MorsUDxQPduKQ1T28VVtHVlG0BMh3Odng7bgLpyXM
 PBrxFDjeA0CWYIqawxkkHu2nhJPqhOE=
ARC-Authentication-Results: i=2; open-mesh.org; dkim=pass header.d=kernel.org;
  arc=pass;
  dmarc=pass (Used From Domain Record) header.from=kernel.org
 policy.dmarc=quarantine
Authentication-Results: open-mesh.org; dkim=pass header.d=kernel.org;
 arc=pass;
 dmarc=pass (Used From Domain Record) header.from=kernel.org policy.dmarc=quarantine
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 537A28107E
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 12 Jul 2025 03:00:04 +0200 (CEST)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1752282014;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=CYG98Pj9qah+BvxY6LcTjvtkEQTRCFUijv6nAwJdEuA=;
	b=LrxLjs2CiJKH9VmJ3mwKxrtgMk+EGGZp7ique0k0tEKYwbPpSWUpqpSEkcyEpttqcpCmDL
	A4q5DKya8MhJI7a+5+HVRV1I3PcMzuswcBJLGQ8MX+bCOZGM77abjYlny0O4RQaC2VINgH
	CGeMqJsN5tQZU8CQT6okWxWqsOZ9arA=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1752282014; a=rsa-sha256;
	cv=none;
	b=IvMXeKlopvOZzkfUp1z9SAX2zqWohr18UtMdaSePN2t3Ontwg+GfmaBB+8NU+aryk1Je4V
	HJnq1hwOTmhzCsNX677iUf00IeVLw4nYSWRJ06lwOw0Gd8OwZHfxFTJy4ExDYZ3gmqsNh/
	LLVFI/tGWBLhssyvTLQWzFQzNa4KC0Y=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b="S6bviAK/";
	spf=pass (diktynna.open-mesh.org: domain of
 patchwork-bot+netdevbpf@kernel.org designates 2600:3c04:e001:324:0:1991:8:25
 as permitted sender) smtp.mailfrom=patchwork-bot+netdevbpf@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 0472F614A3;
	Sat, 12 Jul 2025 01:00:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 87212C4CEF8;
	Sat, 12 Jul 2025 01:00:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752282002;
	bh=6LdEOpzm7IVRajkkuKb0kY8axZudpEMSiah9ep/cbQU=;
	h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
	b=S6bviAK/Y/Sdw4DJ5Ne4xEaylLjySOttkJJXwYGLjVZXttmB+rbUVKAgSa+wWzm99
	 sl/Tw8dlAfEyV6kDKsrnG/AXWQi884iHvlpFK4TTG/Pfjfr/TAoYIP4XbOwdm4gQ3y
	 6wwTvL5JGPZIMKMvJ73NPTouvoBBskL+SIpQAXQU8pTvMGz3Hvr/QSkoQZ/M27tjNH
	 GJJEswRzeuusY1hnB3hq9cYaNa9ApCRR0RG+vUELcPmf30N8w4MUKuh5nk6JzdxUm8
	 ySzCTTx1QArEPmEsZAc1fAMdMPSBFT1mx7KmQ/3CdYWBtMQGUfvlyfxF7dbxhD4UOV
	 dywlgmhTiyaAA==
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id
 70CD5383B275;
	Sat, 12 Jul 2025 01:00:25 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: Re: [PATCH net-next 1/2] batman-adv: Start new development cycle
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: 
 <175228202400.2451869.2203148362118898235.git-patchwork-notify@kernel.org>
Date: Sat, 12 Jul 2025 01:00:24 +0000
References: <20250710164501.153872-2-sw@simonwunderlich.de>
In-Reply-To: <20250710164501.153872-2-sw@simonwunderlich.de>
To: Simon Wunderlich <sw@simonwunderlich.de>
Cc: kuba@kernel.org, davem@davemloft.net, netdev@vger.kernel.org,
 b.a.t.m.a.n@lists.open-mesh.org
Message-ID-Hash: JCHCDDRNNYFPT73LGCWDW34DUW3RMBBR
X-Message-ID-Hash: JCHCDDRNNYFPT73LGCWDW34DUW3RMBBR
X-MailFrom: patchwork-bot+netdevbpf@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency;
 loop; banned-address; member-moderation;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-0;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-1;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-2
X-Mailman-Version: 3.3.8
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/XY5LH5DTGVQNJTCURTRAZL7DHWZED4NM/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Hello:

This series was applied to netdev/net-next.git (main)
by Simon Wunderlich <sw@simonwunderlich.de>:

On Thu, 10 Jul 2025 18:45:00 +0200 you wrote:
> This version will contain all the (major or even only minor) changes for
> Linux 6.17.
> 
> The version number isn't a semantic version number with major and minor
> information. It is just encoding the year of the expected publishing as
> Linux -rc1 and the number of published versions this year (starting at 0).
> 
> [...]

Here is the summary with links:
  - [net-next,1/2] batman-adv: Start new development cycle
    https://git.kernel.org/netdev/net-next/c/2b05db6b8a10
  - [net-next,2/2] batman-adv: store hard_iface as iflink private data
    https://git.kernel.org/netdev/net-next/c/7dc284702bcd

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


