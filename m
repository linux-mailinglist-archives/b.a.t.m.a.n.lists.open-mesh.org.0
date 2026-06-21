Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id q7tXHkdfOGqVbgcAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 22 Jun 2026 00:01:43 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 198EC6ABB00
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 22 Jun 2026 00:01:43 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=hVJwVjj9;
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 136.243.236.17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id F066384316
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 22 Jun 2026 00:01:42 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1782079302;
 b=FCTc4IIXhRdzq9NK+FrYC0mIFxoriebM5++oa9sy56cdwKfKLjEIH3lJnbyhI+z5bPgj0
 tnjFnwC/OVKKB6Z8OXZh4oDqQey7AQZmGc4tpxzGhCXUHHca4YUE1NXCnJSrWZECwS7VfoA
 HAIoHG8DiJCMxFrdiaEgrgd6sRv/jBs=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1782079302; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=JsuGjancIB3kkaE8lcGEpPuGwIH1T+JObM1TkSSPMnk=;
 b=fPC4iCC6SbfqOd9yL4Hi51HK3Tt/V6MGcePqgHQNNOJ8yajUHmrjdmM4I6tHDCbJg5I9B
 5/zEH/IRmdC6xUKURqbcBNmietAH4yPwJRG1i56yAnEOyWjgjTCJsKuJy1yIk7yzF8nm/S8
 sM9Tdxoui34BDRL9G1YyUNawzM0ZlOM=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=kernel.org;
 arc=pass;
 dmarc=pass header.from=kernel.org policy.dmarc=quarantine
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 8B60A8421F
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 22 Jun 2026 00:01:08 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1782079278;
	b=JQfocFFsMYxHZhHc2e06xXV+bn6VIiIyf3Cu3X0JZEsTqsfAPyupISC/TxuuLcBgZR3rjV
	2FOUCdzcWBlC/rKtkDnsT+7JTzxBYEOI9xol3sndrYs7nYrmGzJIm7wbfhq4ZaYajjF3JV
	BAJxJG8CI3UE0tKVzKYdJtp27+FzrFM=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1782079278;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=JsuGjancIB3kkaE8lcGEpPuGwIH1T+JObM1TkSSPMnk=;
	b=1TqQdn1XwwPdg8/TulXg70tVra688D4ZxpLImS2KZ8JpsmLJbEWbrto812JvfwHW/W+yfn
	i1Z4RyzjfV/VqhqdNs4xi9boPlFi6XMi4K8CLFI3YMX4bDUWF2tmdk/MnEnEkTPEJtnwDU
	m4W7qKhfSp+wq+eWvrC8SVsdj8kPSTc=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=hVJwVjj9;
	spf=pass (diktynna.open-mesh.org: domain of
 patchwork-bot+netdevbpf@kernel.org designates 172.234.252.31 as permitted
 sender) smtp.mailfrom=patchwork-bot+netdevbpf@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id ACEF44414A;
	Sun, 21 Jun 2026 22:01:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8D9751F000E9;
	Sun, 21 Jun 2026 22:01:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782079266;
	bh=JsuGjancIB3kkaE8lcGEpPuGwIH1T+JObM1TkSSPMnk=;
	h=Subject:From:Date:References:In-Reply-To:To:Cc;
	b=hVJwVjj9jlzBF7ylv6HYk6gxMnz6gwTEqmOjiVxpnnB4HO9qFtkzoJPIBMcDvbazp
	 3zvsbR4p9E8L+9ekTH69f11sw9PMfkVAd0kiSKw7Wja6xhg2Nx3X6yu1GmSrEV3SmI
	 6UexNZylHjgTYQfpQjiUdfuy4cFU3Onn2iV2z6edw/MsXyqwFZT8oocDIdLuQoqvDh
	 ShJn1BJ7k7IiylyKFXxqeR/EK1ZQZIXKFsSrChttthOgFpgzeT9gdBeHR5KtP+nCVf
	 QVzhmlUekcvWKAu230jam6jGMsYkqNOJUnw7rIrQ7CPHB3BA/PsnILlyWKofyftV9z
	 SncsuOmmn5vng==
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id
 1988B3AAA6EA;
	Sun, 21 Jun 2026 22:00:59 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: Re: [PATCH net 01/15] batman-adv: gw: don't deselect gateway with
 active
 hardif
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: 
 <178207925758.516339.13920013302809099340.git-patchwork-notify@kernel.org>
Date: Sun, 21 Jun 2026 22:00:57 +0000
References: <20260619070045.438101-2-sw@simonwunderlich.de>
In-Reply-To: <20260619070045.438101-2-sw@simonwunderlich.de>
To: Simon Wunderlich <sw@simonwunderlich.de>
Cc: netdev@vger.kernel.org, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, horms@kernel.org,
 b.a.t.m.a.n@lists.open-mesh.org, sven@narfation.org, stable@kernel.org,
 neocturne@universe-factory.net
Message-ID-Hash: FUNA3ZFKCPXOM6VJGEXUKVRT45AUFFKY
X-Message-ID-Hash: FUNA3ZFKCPXOM6VJGEXUKVRT45AUFFKY
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/FUNA3ZFKCPXOM6VJGEXUKVRT45AUFFKY/>
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
	FORGED_RECIPIENTS(0.00)[m:sw@simonwunderlich.de,m:netdev@vger.kernel.org,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:horms@kernel.org,m:b.a.t.m.a.n@lists.open-mesh.org,m:sven@narfation.org,m:stable@kernel.org,m:neocturne@universe-factory.net,s:lists@lfdr.de];
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
	RCPT_COUNT_SEVEN(0.00)[11];
	TAGGED_RCPT(0.00)[b.a.t.m.a.n];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[diktynna.open-mesh.org:rdns,diktynna.open-mesh.org:helo,lists.open-mesh.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 198EC6ABB00

Hello:

This series was applied to netdev/net.git (main)
by Sven Eckelmann <sven@narfation.org>:

On Fri, 19 Jun 2026 09:00:31 +0200 you wrote:
> From: Sven Eckelmann <sven@narfation.org>
> 
> The batadv_hardif_cnt() was previously checking if there is an
> batadv_hard_iface->mesh_iface which is has the same mesh_iface. And since
> batadv_hardif_disable_interface() was resetting the
> batadv_hard_iface->mesh_iface after this check, it had to verify whether
> *1* interface was still part of the mesh_iface before it started the
> gateway deselection.
> 
> [...]

Here is the summary with links:
  - [net,01/15] batman-adv: gw: don't deselect gateway with active hardif
    https://git.kernel.org/netdev/net/c/df97a7107b16
  - [net,02/15] batman-adv: ensure bcast is writable before modifying TTL
    https://git.kernel.org/netdev/net/c/4cd6d3a4b96a
  - [net,03/15] batman-adv: fix (m|b)cast csum after decrementing TTL
    https://git.kernel.org/netdev/net/c/e728bbdf3266
  - [net,04/15] batman-adv: frag: ensure fragment is writable before modifying TTL
    https://git.kernel.org/netdev/net/c/b7293c6e8c15
  - [net,05/15] batman-adv: frag: avoid underflow of TTL
    https://git.kernel.org/netdev/net/c/493d9d2528e1
  - [net,06/15] batman-adv: v: prevent OGM aggregation on disabled hardif
    https://git.kernel.org/netdev/net/c/d11c00b95b2a
  - [net,07/15] batman-adv: tp_meter: restrict number of unacked list entries
    https://git.kernel.org/netdev/net/c/e7c775110e18
  - [net,08/15] batman-adv: tp_meter: annotate last_recv_time access with READ/WRITE_ONCE
    https://git.kernel.org/netdev/net/c/d67c728f07fc
  - [net,09/15] batman-adv: tp_meter: prevent parallel modifications of last_recv
    https://git.kernel.org/netdev/net/c/6dde0cfcb36e
  - [net,10/15] batman-adv: tp_meter: handle overlapping packets
    https://git.kernel.org/netdev/net/c/cbde75c38b21
  - [net,11/15] batman-adv: tt: don't merge change entries with different VIDs
    https://git.kernel.org/netdev/net/c/f08e06c2d5c3
  - [net,12/15] batman-adv: tt: track roam count per VID
    https://git.kernel.org/netdev/net/c/12407d5f61c2
  - [net,13/15] batman-adv: dat: prevent false sharing between VLANs
    https://git.kernel.org/netdev/net/c/20d7658b7416
  - [net,14/15] batman-adv: tvlv: enforce 2-byte alignment
    https://git.kernel.org/netdev/net/c/32a679925552
  - [net,15/15] batman-adv: tvlv: avoid race of cifsnotfound handler state
    https://git.kernel.org/netdev/net/c/edb557b2ba38

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


