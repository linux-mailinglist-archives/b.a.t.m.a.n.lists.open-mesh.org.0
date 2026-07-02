Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 4W59ND4kRmqQKgsAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 02 Jul 2026 10:41:34 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C47F6F4E69
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 02 Jul 2026 10:41:34 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=erLP9qVF;
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 136.243.236.17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 459F0802ED
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 02 Jul 2026 10:41:34 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1782981694;
 b=iiWjoG8ZPJpb554GqZ6/3/DaQywjLd7QPD00rq7qBP4gr/+RpZHMmpjE8uNvkIoCiGqKR
 RrY499QD7EvzRWR+xFsuZBicRQqNwfQGzBf94+sCm4W/RvnRwcvXBhfO2CjYf0oPPK8ejKn
 gm204j0HXaNfe4o+MUByzJuFk6wolLE=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1782981694; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=rlECEzGVBnRQcX1PJHlOlcimtBsMPxut6cTFhxNIhiU=;
 b=mJ38zQIPxnEzMwKkeQd7QIADwJGOTgUcOUVA8LSJXA0JYTg4EYBT2VrlnLA9q7P4es5uz
 2NoqI1Itj8zT7AcZnyybFOrcYDACuaruVWTN3R85ZOMenKGKY9Y515vc5mYq9wHVV2hDivQ
 dZdxpAbSNAalGkPStvpaHBG82ANbyFI=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=kernel.org;
 arc=pass;
 dmarc=pass header.from=kernel.org policy.dmarc=quarantine
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 3DAC184361
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 02 Jul 2026 10:41:01 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1782981661;
	b=T35DqGNdgi1Cx1XWSZYZqkwVajjnYXmONyWB/EWus7iskcIQlI60blYjXTjBE5ehvWvXrc
	3BAXT+v94+HSDozojsbtctqlX4dKduTd327GHbeaxHNvj6rSu/GY1C14EqAIBPz3vzZ0A0
	Uqp+IbUIyJXaVpZ/x9kRvH+YT4DMkfU=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1782981661;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=rlECEzGVBnRQcX1PJHlOlcimtBsMPxut6cTFhxNIhiU=;
	b=y5CXU/JYhoWZATxRky8VEDRSSbtzpQOoeyeBptbvxZOL+nJmg0ytusI5F2vMbaaEzzPiUq
	zeB7jGK5BdIZRo0JorqqRQ57mc+wPjuHD0mu+rvhLu6OvZRHVDNUBnu0xwCBB64bFa3WYp
	c2qUkHGoOp8Z84vnbq8LQDFk+sgdnsU=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=erLP9qVF;
	spf=pass (diktynna.open-mesh.org: domain of
 patchwork-bot+netdevbpf@kernel.org designates 172.234.252.31 as permitted
 sender) smtp.mailfrom=patchwork-bot+netdevbpf@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id F22DF42A14;
	Thu,  2 Jul 2026 08:40:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D390B1F00A3A;
	Thu,  2 Jul 2026 08:40:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782981659;
	bh=rlECEzGVBnRQcX1PJHlOlcimtBsMPxut6cTFhxNIhiU=;
	h=Subject:From:Date:References:In-Reply-To:To:Cc;
	b=erLP9qVFeoBKHxbL5S7+0GXPVVPi5R49WQM/bQe7BGucsZeYJHSIwc775V9xTS0R+
	 7XJBgRHKLvByjqT5507N6HqkIjNazNm7Kvf2DUIjuuW0uHWVvmi8o6xOw4Ms6r2i9A
	 JkipjPf2QxfmpN7YZExKSQ0MPYVL46OG/WvkQdKxsI3E9a68Sk4SxwB/e3vlxREcPy
	 3bQK3G/E4e/bzUADxS+xEiZNO/v9evCWmajFbbunWQjVyboDAizqr9LMZE1fE/zdPD
	 dnBh6a9eZGWsvNAThX8HmB0pS3DMLgEtGZ00O7KyZn524+suXM4pqtDLqAI8T0RVSj
	 1FXzKgKN0QEGg==
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id
 1983C3926664;
	Thu,  2 Jul 2026 08:40:44 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: Re: [PATCH net-next 01/15] batman-adv: create hardif only for netdevs
 that are part of a mesh
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: 
 <178298164263.1523446.6187059831704914179.git-patchwork-notify@kernel.org>
Date: Thu, 02 Jul 2026 08:40:42 +0000
References: <20260630140623.88431-2-sw@simonwunderlich.de>
In-Reply-To: <20260630140623.88431-2-sw@simonwunderlich.de>
To: Simon Wunderlich <sw@simonwunderlich.de>
Cc: netdev@vger.kernel.org, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, horms@kernel.org,
 b.a.t.m.a.n@lists.open-mesh.org, neocturne@universe-factory.net,
 sven@narfation.org
Message-ID-Hash: O7TIF3SX4JRJHOXHXR6K5HQYXICZYJ2Y
X-Message-ID-Hash: O7TIF3SX4JRJHOXHXR6K5HQYXICZYJ2Y
X-MailFrom: patchwork-bot+netdevbpf@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; header-match-b.a.t.m.a.n.lists.open-mesh.org-0;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-1;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-2;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-3; emergency; member-moderation
X-Mailman-Version: 3.3.10
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/O7TIF3SX4JRJHOXHXR6K5HQYXICZYJ2Y/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.01 / 15.00];
	ARC_ALLOW(-1.00)[open-mesh.org:s=20121:i=2];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,b.a.t.m.a.n=lfdr.de,netdevbpf];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	R_SPF_NA(0.00)[no SPF record];
	FORGED_RECIPIENTS(0.00)[m:sw@simonwunderlich.de,m:netdev@vger.kernel.org,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:horms@kernel.org,m:b.a.t.m.a.n@lists.open-mesh.org,m:neocturne@universe-factory.net,m:sven@narfation.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[patchwork-bot@kernel.org,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:24940, ipnet:136.243.0.0/16, country:DE];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[patchwork-bot@kernel.org,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	FROM_NO_DN(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	TAGGED_RCPT(0.00)[b.a.t.m.a.n];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.open-mesh.org:from_smtp,narfation.org:email,diktynna.open-mesh.org:rdns,diktynna.open-mesh.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5C47F6F4E69

Hello:

This series was applied to netdev/net-next.git (main)
by Sven Eckelmann <sven@narfation.org>:

On Tue, 30 Jun 2026 16:06:09 +0200 you wrote:
> From: Nora Schiffer <neocturne@universe-factory.net>
> 
> batman-adv is using netdev notifiers to create a hard_iface struct for
> every Ethernet-like netdev in the system. These hardifs are tracked in a
> global linked list, which results in a few performance issues:
> 
> Lookups in this list are O(n) in the total number of netdevs. As a
> hardif is looked up when a netdev is removed, this also takes O(n) in
> the number of netdevs, and removing n netdevs may take O(n^2). This
> slowdown will always happen when the batman-adv module is loaded, no
> mesh needs to be active.
> 
> [...]

Here is the summary with links:
  - [net-next,01/15] batman-adv: create hardif only for netdevs that are part of a mesh
    https://git.kernel.org/netdev/net-next/c/fcba102e0e4a
  - [net-next,02/15] batman-adv: remove global hardif list
    https://git.kernel.org/netdev/net-next/c/49e9de6e124f
  - [net-next,03/15] batman-adv: make hard_iface->mesh_iface immutable
    https://git.kernel.org/netdev/net-next/c/f846e779532e
  - [net-next,04/15] batman-adv: remove BATADV_IF_NOT_IN_USE hardif state
    https://git.kernel.org/netdev/net-next/c/48ea7b6b7b94
  - [net-next,05/15] batman-adv: move hardif generation counter into batadv_priv
    https://git.kernel.org/netdev/net-next/c/cbda6a6cf2a5
  - [net-next,06/15] batman-adv: drop unneeded goto and initialization from batadv_hardif_disable_interface()
    https://git.kernel.org/netdev/net-next/c/2b429dbc50b4
  - [net-next,07/15] batman-adv: drop NULL check for immutable hardif->mesh_iface
    https://git.kernel.org/netdev/net-next/c/b58c36b804f4
  - [net-next,08/15] Revert "batman-adv: v: stop OGMv2 on disabled interface"
    https://git.kernel.org/netdev/net-next/c/5fa5f64fc018
  - [net-next,09/15] batman-adv: iv: drop migration check for batadv_hard_iface
    https://git.kernel.org/netdev/net-next/c/ba2d97e8736e
  - [net-next,10/15] batman-adv: tvlv: extract tvlv header iterator
    https://git.kernel.org/netdev/net-next/c/278e5890704c
  - [net-next,11/15] batman-adv: tp_meter: simplify unordered ack calculation
    https://git.kernel.org/netdev/net-next/c/71b7987ec001
  - [net-next,12/15] batman-adv: tp_meter: combine adjacent/overlapping unacked entries
    https://git.kernel.org/netdev/net-next/c/936a1c10cece
  - [net-next,13/15] batman-adv: tp_meter: keep unacked list for receivers
    https://git.kernel.org/netdev/net-next/c/3bbb8b94217a
  - [net-next,14/15] batman-adv: tp_meter: adjust name of receiver lock
    https://git.kernel.org/netdev/net-next/c/6cd45ef4dfa5
  - [net-next,15/15] batman-adv: tp_meter: delay allocation of unacked entry
    https://git.kernel.org/netdev/net-next/c/247691642fd4

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


