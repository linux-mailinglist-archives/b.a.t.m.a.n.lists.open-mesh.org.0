Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id B1100B7D579
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 17 Sep 2025 14:25:02 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 3BFA5846C2
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 17 Sep 2025 02:41:03 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1758069663;
 b=WqYXX8P2weidlo+1EX2vqj2aluetluMJq1FLyw0hFc0Wpr1LG0lMeWd3lExIpkcqyf37t
 LuSg9x9G68Rs7DNLD5wghpITlpXcmsAgLEbFHpHqqM3Q3x8JUy0He3gAM/zl+dhuSj8QAc7
 lGXZ0XesHNq4w5UprhXuS61/E1WAh1g=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1758069663; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=T6CnkjreI8YMimuUvgp4iY4EQ0pHKzTxrDcHHIDEziQ=;
 b=BObUQ/xKdnTMxDE8JpJsWHlNkGHCdfcAHpS4V4ooo89S9dAIieQnNwgyKY3YqLnMckhB1
 V6345w7CEOEynWh01HXKlfpZeSCXB5I3I0b8uTzOXxxJx2Pme55RrewNnVPffg+OQuJtqvq
 8FHPAVrI/XztZHq3waS3I5LRGC9XgqA=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=kernel.org;
 arc=pass;
 dmarc=pass header.from=kernel.org policy.dmarc=quarantine
Authentication-Results: open-mesh.org; dkim=pass header.d=kernel.org;
 arc=pass;
 dmarc=pass (Used From Domain Record) header.from=kernel.org policy.dmarc=quarantine
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 2739F84356
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 17 Sep 2025 02:40:18 +0200 (CEST)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1758069628;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=T6CnkjreI8YMimuUvgp4iY4EQ0pHKzTxrDcHHIDEziQ=;
	b=Ut+ySFzfCQ73F/x0sXxqGR/nIPWfUYcOma1otO5GldXFZLGRUYQtf6WvYRIXYyDtTFwqPH
	kDD055ct/YpbxsZqVuRciCEvcmIqBfeb6WR7HbX1aBAMCF58PGtYpCRHOePWEHMXDjvxzv
	1tB3hjL5hDs5ocpXVTT3LDMmL6eqNPQ=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=l0hP5AXc;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (diktynna.open-mesh.org: domain of
 patchwork-bot+netdevbpf@kernel.org designates 172.105.4.254 as permitted
 sender) smtp.mailfrom=patchwork-bot+netdevbpf@kernel.org
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1758069628; a=rsa-sha256;
	cv=none;
	b=JjO/pMXoxgPcaJvOZdRO8WEPFCRzSX0mMJHUeaWy/aq5mxJBTsYmJ1OcsFgpaa3I6jLEJr
	sS/C6Zytkpzr3QTCZgXNL3ZKjx+DuQ/u7PNVy5yzmzJ93dqTwqyS/etaU7GIldYZbFfZ0c
	Q5QGBz/wEP6OYJaAWMYYw2sovtrepiM=
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 0B8E8600BB;
	Wed, 17 Sep 2025 00:40:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A8BF0C4CEEB;
	Wed, 17 Sep 2025 00:40:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758069616;
	bh=rnDkxy/4mWZk9SkftVtBJu0BQs1wlm10vns+kUnGYNw=;
	h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
	b=l0hP5AXcwPeYBvMEvlEmlVvBsl6m6jUSC93yAG/BD9y8jn3IKysIoZ/jjW2HvPYG5
	 tjBKeSfdHwFtleLXnhUKFMllM98p6OFkuJUKCNO1AnxyM+oN/SE8j/TtlAhTRoHXVK
	 LDAScw8CDRJGrDcoQsQbErJ7L1BH9AMDJeP+EV3s79jh/BO4zoHctarF67SetFjW3+
	 JEcAs/QMdmioyBjDay3ERpZr+wS8hUjGEoVRqtm6JgKajhKLESThnC+ANc+vlSo3XX
	 3jcTUpDJkmP87eBEyYooWU1LKZtS3lcEPXmUQPaI/xRKfi0ht5V9Pa3t1saaf0qg6F
	 k3pD12SKBnZCQ==
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id
 EAFA339D0C1A;
	Wed, 17 Sep 2025 00:40:18 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: Re: [PATCH net-next 1/4] batman-adv: Start new development cycle
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: 
 <175806961775.1416090.18211005840484684861.git-patchwork-notify@kernel.org>
Date: Wed, 17 Sep 2025 00:40:17 +0000
References: <20250916122441.89246-2-sw@simonwunderlich.de>
In-Reply-To: <20250916122441.89246-2-sw@simonwunderlich.de>
To: Simon Wunderlich <sw@simonwunderlich.de>
Message-ID-Hash: 4HVD5HXTKHE2IH2TTFLAYZYQ7VXGKAEE
X-Message-ID-Hash: 4HVD5HXTKHE2IH2TTFLAYZYQ7VXGKAEE
X-MailFrom: patchwork-bot+netdevbpf@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; header-match-b.a.t.m.a.n.lists.open-mesh.org-0;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-1;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-2; emergency; member-moderation
CC: kuba@kernel.org, davem@davemloft.net, netdev@vger.kernel.org,
 b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.3.10
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/4HVD5HXTKHE2IH2TTFLAYZYQ7VXGKAEE/>
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

On Tue, 16 Sep 2025 14:24:38 +0200 you wrote:
> This version will contain all the (major or even only minor) changes for
> Linux 6.18.
> 
> The version number isn't a semantic version number with major and minor
> information. It is just encoding the year of the expected publishing as
> Linux -rc1 and the number of published versions this year (starting at 0).
> 
> [...]

Here is the summary with links:
  - [net-next,1/4] batman-adv: Start new development cycle
    https://git.kernel.org/netdev/net-next/c/e89888a1e778
  - [net-next,2/4] batman-adv: remove network coding support
    https://git.kernel.org/netdev/net-next/c/87b95082db32
  - [net-next,3/4] batman-adv: keep skb crc32 helper local in BLA
    https://git.kernel.org/netdev/net-next/c/d5d80ac74f80
  - [net-next,4/4] batman-adv: remove includes for extern declarations
    https://git.kernel.org/netdev/net-next/c/629a2b18e872

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


