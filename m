Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DE4AC1284D
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 28 Oct 2025 02:21:01 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 68DF683B47
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 28 Oct 2025 02:21:01 +0100 (CET)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1761614461;
 b=E7gateJKHfuhKGhxvipIFWQ+oMDs1wEBhvRQ87WlVCC3KrIJc7i+Q+SnRa8AiESdZBBrN
 FFhIyE26knmtRsOw+7H32+ehJByp4Zq8eyN3d3vI3CjCHTl4mf0Q46dEALJqS0ZWnp8kqdj
 ufrUhDyxHxHdB7g/b+o3pILjYG5pVnc=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1761614461; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=BnYbTbu7VWrfl/whFkd9zv0e7XYrtOxQf1poQTC09H0=;
 b=PJvmNONIYOO6q19DSZ3zSyyKKTt8m3SofWRFDvfnPtVwTyOFegYmlk29XDvVglbiaZ6Y+
 IamIGsQa3NhO5rT06s+NahMYiSEAZ530vuN5TfJRIl0g945bFN7vcUQcahr1G7qbCQKITRi
 fTdjkW50NXZMeFtdHxkF/i54gSH47O4=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=kernel.org;
 arc=pass;
 dmarc=pass header.from=kernel.org policy.dmarc=quarantine
Authentication-Results: open-mesh.org; dkim=pass header.d=kernel.org;
 arc=pass;
 dmarc=pass (Used From Domain Record) header.from=kernel.org policy.dmarc=quarantine
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 9D8AA84772
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 28 Oct 2025 02:20:55 +0100 (CET)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1761614455;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=BnYbTbu7VWrfl/whFkd9zv0e7XYrtOxQf1poQTC09H0=;
	b=UIjSp6Lt85HftcuuosYfErOOjbNcPByg+Bsh4IobFExelQzcjPK3AdQ8t10mPGZ+kFdRNc
	/IhLYDn0FKRcmYNjIsE4d/VpnzCYTziPheO2mUJwrF6VkIFXl7vxPs3/zYiefP3J33+MT6
	WRCssFjbOjKq6OBNCSMUCeC1Y5wLDLA=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=PvuTPhBa;
	spf=pass (diktynna.open-mesh.org: domain of
 patchwork-bot+netdevbpf@kernel.org designates 2600:3c04:e001:324:0:1991:8:25
 as permitted sender) smtp.mailfrom=patchwork-bot+netdevbpf@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1761614455; a=rsa-sha256;
	cv=none;
	b=NxK8aSImZkPj98O0xW3CPh83Abdtb/3kSlJxVmrBQ9nWEm4cOI09byobwfJolCT4BHow0i
	b5y4dMkZrCj/i2nI50F2PZ/SMSCqQWu1OaITxiYyCxva3/wIrC/U/dtV4ZDksKrioV+FT3
	bfCINKXcUYy34DgqpZdMug+mS4kL+xo=
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 6B1DF61EC9;
	Tue, 28 Oct 2025 01:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 202DDC4CEF1;
	Tue, 28 Oct 2025 01:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761614454;
	bh=iG62UREZT8DJmnlOSvLqmVDWri0tK8c/me48r3tGJ1o=;
	h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
	b=PvuTPhBaBus4B2vpKH5wFU74HEUgAhtzt1lAYLPkmtkd3KbmHUTrvTEyp9JmPt06S
	 UhI7ajANXXCIXeqPee6MBJRvGGQHzBMZS6u0atLYgCsbLqwdlG9DaDzl4AhRqJqIAr
	 5G3MuX32e5otR45Iz73K8PHlFyTYSfE0LVfAKlrRr+IYrHIulo/mKcdFkh8p8MyIUK
	 scFaVPe2THDr7oKArLB37u9bfsPyhnVGGRj0E0DSMU4+yrxkH1SsO2Syb+Uj7V+6+F
	 on1eIZXET2oI3sBoxR5qLPMgfUhY2zZk1WH7Q0j7H5S0yG4pDgzw79sUlM11gCo5V/
	 oT+f1NHHl6aVg==
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id
 70E6A39D60B9;
	Tue, 28 Oct 2025 01:20:33 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: Re: [PATCH net-next 1/2] batman-adv: Start new development cycle
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: 
 <176161443200.1651448.12590891600883134266.git-patchwork-notify@kernel.org>
Date: Tue, 28 Oct 2025 01:20:32 +0000
References: <20251024092315.232636-2-sw@simonwunderlich.de>
In-Reply-To: <20251024092315.232636-2-sw@simonwunderlich.de>
To: Simon Wunderlich <sw@simonwunderlich.de>
Cc: kuba@kernel.org, davem@davemloft.net, netdev@vger.kernel.org,
 b.a.t.m.a.n@lists.open-mesh.org
Message-ID-Hash: JZNKNOZNNMRDOAOCTMNT4EDME32XQ6RI
X-Message-ID-Hash: JZNKNOZNNMRDOAOCTMNT4EDME32XQ6RI
X-MailFrom: patchwork-bot+netdevbpf@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; header-match-b.a.t.m.a.n.lists.open-mesh.org-0;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-1;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-2; emergency; member-moderation
X-Mailman-Version: 3.3.10
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/JZNKNOZNNMRDOAOCTMNT4EDME32XQ6RI/>
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

On Fri, 24 Oct 2025 11:23:14 +0200 you wrote:
> This version will contain all the (major or even only minor) changes for
> Linux 6.19.
> 
> The version number isn't a semantic version number with major and minor
> information. It is just encoding the year of the expected publishing as
> Linux -rc1 and the number of published versions this year (starting at 0).
> 
> [...]

Here is the summary with links:
  - [net-next,1/2] batman-adv: Start new development cycle
    https://git.kernel.org/netdev/net-next/c/e5ae07b2ef86
  - [net-next,2/2] batman-adv: use skb_crc32c() instead of skb_seq_read()
    https://git.kernel.org/netdev/net-next/c/ed5730f3f733

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


