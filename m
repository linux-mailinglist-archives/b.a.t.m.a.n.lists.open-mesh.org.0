Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 67E09A160EB
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 19 Jan 2025 09:47:39 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 216EB8413E
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 19 Jan 2025 09:47:39 +0100 (CET)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1737276459;
 b=B/mLCkL1OCn9Ku4IN6+oHWWSNSB3cB7IOjVNMRsNGmsuMpJ6vyop8+APtQq8wdgYtEo/i
 OTOAUv++IxKpI9MvDpSvi54pg/N19OvV5IgRs/9tW1FK+0VrUzbGNYeWnnhgVW6CIAkd4j+
 US19L2sQfstBp/tUuKt/2lEMcvUEbHk=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1737276459; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=4KtUbx5Jy64nHwziKc67G3rxvsAxrZtY3XUM5SR6+eA=;
 b=DBhCiX89E9MX9p2ZHPL61VzFYv/OnOgn/tZ5xY415VpM+0zYu9/skGXjeEXACP1wahAXo
 nkorcQLkfoq+kjPQk5VMV8xjcWm+rEuhOitc4v4m08UTdWYVyFuB9gRWgn2RKZkcHH1CSGG
 gRL8ZNqONB52CSRgoquNfkU3lZ3d4n8=
ARC-Authentication-Results: i=2; open-mesh.org; dkim=pass header.d=kernel.org;
  arc=pass;
  dmarc=pass (Used From Domain Record) header.from=kernel.org
 policy.dmarc=quarantine
Authentication-Results: open-mesh.org; dkim=pass header.d=kernel.org;
 arc=pass;
 dmarc=pass (Used From Domain Record) header.from=kernel.org policy.dmarc=quarantine
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 1BFD981747
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 19 Jan 2025 03:10:09 +0100 (CET)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1737252609;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=4KtUbx5Jy64nHwziKc67G3rxvsAxrZtY3XUM5SR6+eA=;
	b=aU/3aEd02q4yFs/5w5yML4dhjD5+XtKmq8GYpyLgKpwAdKlck456gVGABsRQi672ywjncv
	pkrB52S3VLDKwr47BeObuGEYCAPw7gHaeT7ygC9RsMlH53SLi5Gpt7+pGJ/0uj8OMsZCE9
	0TyQ9f3eCdmMKsR/DF+5UR3Z8c8lA1I=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b="hm1mK/XM";
	spf=pass (diktynna.open-mesh.org: domain of
 patchwork-bot+netdevbpf@kernel.org designates 139.178.84.217 as permitted
 sender) smtp.mailfrom=patchwork-bot+netdevbpf@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1737252609; a=rsa-sha256;
	cv=none;
	b=EB6uaRfeGsNtEAz6b3pxHqJgla6aTFxPiHKV1ylLv591ZTE0p4tvhStxaSnOgdl2r9jpqM
	6dZs5Iof1w0DlW0FRrbxYYsHw9yB8H9/skbNOx6+iijayfbVQG2o0qx9lwmPmuwfjFf753
	UtG6C8J5EKC2NKd0S7nYBaJDkJqveaU=
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 16F3E5C2735;
	Sun, 19 Jan 2025 02:09:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 59A31C4CED1;
	Sun, 19 Jan 2025 02:10:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737252607;
	bh=6sm0M78ese8lxeNTgxiyh3oVucEfww6ppQI9MaBhTrc=;
	h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
	b=hm1mK/XMoP4Eimcsnceuf4TiJC6DBarElQU4Z0JuWud5ZNhoO7gDJ1NIrt9x/ydKl
	 ifSPobXHKv2lCxpcpYWk22D90YkPlaFVJBjXU2G8GJjihbClVY7gU949S5J1E0Wz6o
	 6OoTFsD/Kdhe+cQauRBS+XnhNZHKUSKrUjfpd7xm4POZYg1ETTrJ9jlnS4pRVaVGQ0
	 cSzGFRTWoTZ2FDlnWdHe+auxwdQTSUQwi/RTNwXvidRT7pgfCGlQ8Lzxjt+61/TAMI
	 gWINKgRVuZFlp942TaliI1BllaLrhYmOy3E5XFKYPWznTq5frJwcXoMZxLA8NxsMtz
	 Bv9XrKdTejpgg==
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id
 33BFE380AA62;
	Sun, 19 Jan 2025 02:10:32 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: Re: [PATCH 01/10] batman-adv: Start new development cycle
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: 
 <173725263101.2537111.8912233175272298509.git-patchwork-notify@kernel.org>
Date: Sun, 19 Jan 2025 02:10:31 +0000
References: <20250117123910.219278-2-sw@simonwunderlich.de>
In-Reply-To: <20250117123910.219278-2-sw@simonwunderlich.de>
To: Simon Wunderlich <sw@simonwunderlich.de>
Cc: kuba@kernel.org, davem@davemloft.net, netdev@vger.kernel.org,
 b.a.t.m.a.n@lists.open-mesh.org
X-MailFrom: patchwork-bot+netdevbpf@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency;
 loop; banned-address; member-moderation;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-0;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-1;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-2
Message-ID-Hash: RDMDVDZWA247IUL2IKBEVBQT3YYVUIDL
X-Message-ID-Hash: RDMDVDZWA247IUL2IKBEVBQT3YYVUIDL
X-Mailman-Approved-At: Sun, 19 Jan 2025 09:46:54 +0100
X-Mailman-Version: 3.3.8
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/PYEUD5SCCRBOQQ6NHAF2PE7JMP6SXP73/>
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

On Fri, 17 Jan 2025 13:39:01 +0100 you wrote:
> This version will contain all the (major or even only minor) changes for
> Linux 6.14.
> 
> The version number isn't a semantic version number with major and minor
> information. It is just encoding the year of the expected publishing as
> Linux -rc1 and the number of published versions this year (starting at 0).
> 
> [...]

Here is the summary with links:
  - [01/10] batman-adv: Start new development cycle
    https://git.kernel.org/netdev/net-next/c/77a214317a6a
  - [02/10] batman-adv: Reorder includes for distributed-arp-table.c
    https://git.kernel.org/netdev/net-next/c/a7d5100ed009
  - [03/10] batman-adv: Remove atomic usage for tt.local_changes
    https://git.kernel.org/netdev/net-next/c/8587e0e3f562
  - [04/10] batman-adv: Don't keep redundant TT change events
    https://git.kernel.org/netdev/net-next/c/fca81aa3e653
  - [05/10] batman-adv: Map VID 0 to untagged TT VLAN
    https://git.kernel.org/netdev/net-next/c/bf2a5a622a50
  - [06/10] MAINTAINERS: update email address of Marek Linder
    https://git.kernel.org/netdev/net-next/c/7bce3f75189c
  - [07/10] mailmap: add entries for Simon Wunderlich
    https://git.kernel.org/netdev/net-next/c/1f5f7ff46435
  - [08/10] mailmap: add entries for Sven Eckelmann
    https://git.kernel.org/netdev/net-next/c/285c72be9440
  - [09/10] MAINTAINERS: mailmap: add entries for Antonio Quartulli
    https://git.kernel.org/netdev/net-next/c/425970f94b3c
  - [10/10] batman-adv: netlink: reduce duplicate code by returning interfaces
    https://git.kernel.org/netdev/net-next/c/6ecc4fd6c2f4

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


