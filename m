Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ztzuABMkRmp9KgsAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 02 Jul 2026 10:40:51 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 75AB56F4E33
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 02 Jul 2026 10:40:50 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Z31ohw48;
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 2a01:4f8:241:fc1:136:243:236:17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 38FBA84269
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 02 Jul 2026 10:40:50 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1782981650;
 b=cIwT8FBxGM+ag8AL0rbZtiHPQWDvxd4t8UfbD4KA8JKYYNGfVLLdybBN7QbyPg9aRT8Cu
 3aBeHsf6XiT+lDyft4AAQeScOPzQvsI8aYOYLbrYFoMNhMFRc74LeK6bi59oWFlUkE1ilAS
 toac7XluX2Ok/INiUJWuVtU4YjLkfqE=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1782981650; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=8VMSXycOlH9NOdnFXl3zUFIjdbZj01HF3XqLUjhwnBE=;
 b=sxszud71o9JX67O38qaYqYkBwKbStO5lwwrq96cvjsDoP98Vll98vvaT1ln5IZ/Rqe+f+
 0YHg+PvGpu/8X6Uuw6kByC5Ux4bgvS399Et3XpClRnwIA1Wm+s9pndF6B7AKJmjPQ9VdD/W
 gwQZtg4HA8aBcZJCjbVQrwOrDNcDyqE=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=kernel.org;
 arc=pass;
 dmarc=pass header.from=kernel.org policy.dmarc=quarantine
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 0704481678
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 02 Jul 2026 10:40:32 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1782981633;
	b=36QWUGeLLpyDeZOh+fxr8EIVp3nfm0h0RdjTPcdJP1zn+hsVKsZT/VpifuQU/UDRPg7eWq
	gCFQTEgWhec3qVC30AKqbY57jujCa9wlcU6QN40Tk1owMq8OL2gTyhwAR2lgN3wFNWeR/Y
	jTgfx741dkoKUiCLiMIGrggk7YByLIA=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1782981633;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=8VMSXycOlH9NOdnFXl3zUFIjdbZj01HF3XqLUjhwnBE=;
	b=pd3Dh9+ueRhKwpcipVJ2dAak1UlxcytfqIpu1CDw0Q8CtAssppKst82vxP/ZLDxwNspMge
	g0GA4EQW/6RpJ/jAMGBgitHje7OtaNWDcisAutTfmPg9172akFtjd+dAwlE3QsNlwTUIAF
	q+rliB53o8Wcbln8a7AllMWmsm4DaCU=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Z31ohw48;
	spf=pass (diktynna.open-mesh.org: domain of
 patchwork-bot+netdevbpf@kernel.org designates 172.234.252.31 as permitted
 sender) smtp.mailfrom=patchwork-bot+netdevbpf@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 3AA6943A5D;
	Thu,  2 Jul 2026 08:40:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1B3101F00A3A;
	Thu,  2 Jul 2026 08:40:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782981631;
	bh=8VMSXycOlH9NOdnFXl3zUFIjdbZj01HF3XqLUjhwnBE=;
	h=Subject:From:Date:References:In-Reply-To:To:Cc;
	b=Z31ohw480/a+WZo5w5EtGFtkYcOU1iUyJYJv7BmItjzGwbOECslT1FWeCTQ28wtrz
	 2pSTwQ/FcVhfh6FnolFmA+J6vSVec9vuIaI3Ipb0iqbgAjquqaec3K2HpaWlFRJeVj
	 h9urMOP0fijHjMVXGZh64j9UQqFCfy2A/JbFgHMmgi0VBBYxhcwynHkKlKSP1mbeK9
	 bofT7WRBT2M1UWuCqcQrLpOoAJw+6mhvgo3Ta+D6i077um3QpV9xUQXlKJ9MC5tM6B
	 JmRjicF1lA9yyLdE08SgA34efQ/2Cuv0UaQwyXm/SWN93BOL6yQ9rWee2sKaUWQv0U
	 jcnDFSDM6R2jg==
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id
 5688D3926664;
	Thu,  2 Jul 2026 08:40:15 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: Re: [PATCH net 1/6] batman-adv: retrieve ethhdr after potential skb
 realloc on RX
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: 
 <178298161396.1523446.3039520497502044353.git-patchwork-notify@kernel.org>
Date: Thu, 02 Jul 2026 08:40:13 +0000
References: <20260630134430.85786-2-sw@simonwunderlich.de>
In-Reply-To: <20260630134430.85786-2-sw@simonwunderlich.de>
To: Simon Wunderlich <sw@simonwunderlich.de>
Cc: netdev@vger.kernel.org, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, horms@kernel.org,
 b.a.t.m.a.n@lists.open-mesh.org, sven@narfation.org, stable@vger.kernel.org,
 sashiko-bot@kernel.org
Message-ID-Hash: LM3GQ5TQJDAH4AIV5HXBKRC45Z7BCNU7
X-Message-ID-Hash: LM3GQ5TQJDAH4AIV5HXBKRC45Z7BCNU7
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/LM3GQ5TQJDAH4AIV5HXBKRC45Z7BCNU7/>
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
	FORGED_RECIPIENTS(0.00)[m:sw@simonwunderlich.de,m:netdev@vger.kernel.org,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:horms@kernel.org,m:b.a.t.m.a.n@lists.open-mesh.org,m:sven@narfation.org,m:stable@vger.kernel.org,m:sashiko-bot@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[patchwork-bot@kernel.org,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:24940, ipnet:2a01:4f8::/32, country:DE];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[patchwork-bot@kernel.org,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	FROM_NO_DN(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	TAGGED_RCPT(0.00)[b.a.t.m.a.n];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[diktynna.open-mesh.org:rdns,diktynna.open-mesh.org:helo,narfation.org:email,lists.open-mesh.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 75AB56F4E33

Hello:

This series was applied to netdev/net.git (main)
by Sven Eckelmann <sven@narfation.org>:

On Tue, 30 Jun 2026 15:44:25 +0200 you wrote:
> From: Sven Eckelmann <sven@narfation.org>
> 
> pskb_may_pull() in batadv_interface_rx() could reallocate the buffer behind
> the skb. Variables which were pointing to the old buffer need to be
> reassigned to avoid an use-after-free.
> 
> This was done correctly for the VLAN header but missed for the ethernet
> header which is later used for the TT and AP isolation handling.
> 
> [...]

Here is the summary with links:
  - [net,1/6] batman-adv: retrieve ethhdr after potential skb realloc on RX
    https://git.kernel.org/netdev/net/c/035e1fed892d
  - [net,2/6] batman-adv: access unicast_ttvn skb->data only after skb realloc
    https://git.kernel.org/netdev/net/c/7141990add3f
  - [net,3/6] batman-adv: gw: acquire ethernet header only after skb realloc
    https://git.kernel.org/netdev/net/c/77880a3be88d
  - [net,4/6] batman-adv: dat: acquire ARP hw source only after skb realloc
    https://git.kernel.org/netdev/net/c/48067b2ae450
  - [net,5/6] batman-adv: bla: reacquire gw address after skb realloc
    https://git.kernel.org/netdev/net/c/cdf3b5af2bc4
  - [net,6/6] batman-adv: dat: ensure accessible eth_hdr proto field
    https://git.kernel.org/netdev/net/c/26560c4a03dc

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


