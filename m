Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id UJ4LDpkyImoPTwEAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 05 Jun 2026 04:21:13 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id C5D5D644A99
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 05 Jun 2026 04:21:12 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=TKwfaRGp;
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 136.243.236.17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 9F16D847C1
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 05 Jun 2026 04:21:12 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1780626072;
 b=BoJmKVYrT52XpRyhy1wi4jmHoOdm6I0GkNBYPDnPmgmOTJK6twLnIVMV2ZDlbF1hPWshk
 9cFCkSegb01/QeZnX/JFcRmFvCYK0Gqjaz5JwaVAFE2U26JzFsdvsQFKZCmR+sdh9aauV2C
 M7jq1QRAiEPpdQDN/gRURnZiWwbL7Y8=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1780626072; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=jotGDupi4iQAmLABa7Kyj5lMOG8HIUM3cxsM7Q8P6lk=;
 b=gA3B/mVG2SMMWOYV8BVBPVqhFyM4i09lzolPlQB7U0lp+oxAiN14n/5Ez6UyczfxItut9
 SnbfqLmK4uhbTuXl+8v6H/rqZD56QqVqIKoKNeQDgbJjny9IY8+NR4KS5171KpaSatjv3XW
 HwSZgPjXrC+hRQUYAcVVPP10ts6NDqQ=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=kernel.org;
 arc=pass;
 dmarc=pass header.from=kernel.org policy.dmarc=quarantine
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 9A89D83F4C
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 05 Jun 2026 04:20:27 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1780626028;
	b=Dj7NqPD5gGBa7XOPvbEomeU0XSJrr8Q+kTyrhTou7X6F56jr4WNusemLx4WFAaVbO6J+NN
	C8HDzUqv8DxaFC89FI6ddofRo1wKJYpS2ytlcMIF66kAghO8aQ9SSt0KJrLAiWn3hdV0Dz
	otzS6Ek8LbkxpwrIcquORZWyylV64OI=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=TKwfaRGp;
	spf=pass (diktynna.open-mesh.org: domain of
 patchwork-bot+netdevbpf@kernel.org designates 2600:3c0a:e001:78e:0:1991:8:25
 as permitted sender) smtp.mailfrom=patchwork-bot+netdevbpf@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1780626027;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=jotGDupi4iQAmLABa7Kyj5lMOG8HIUM3cxsM7Q8P6lk=;
	b=0dOHcpbnTivKu+WUElYlzCUoXIoy6q6/DW5pn4fEc8FAYbLpQEzDb5EADTEQkKgAVY7vF2
	m46xXZA3APGINMfwu2l/FZ+8sZ2IijYo0+vnc/tGuTMquLe8DhEx5XA2RXulaWqm2B0SdO
	RVHvLg2eU96H0PuY80gLtl8HZpNLu18=
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 1F0BE42A7D;
	Fri,  5 Jun 2026 02:20:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F38A71F00898;
	Fri,  5 Jun 2026 02:20:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780626026;
	bh=jotGDupi4iQAmLABa7Kyj5lMOG8HIUM3cxsM7Q8P6lk=;
	h=Subject:From:Date:References:In-Reply-To:To:Cc;
	b=TKwfaRGphFiecyTJtfFEEnhATgP6fIhkxVWaiLQ1HUxMoXdES0VxtNtBil8ZA5y+2
	 bSxNDtkUcXbBtzYX6RjhreMxUq5zByf/cq/ihMMieoaC3y2Og0UiToaDDPfzkQcuxj
	 Ym5G136RKVNV8Cv8lFPApiLOLhIwNFMx/3QpkhYJ24vVaXDAwIYZjpFWPw2w+SysGM
	 XcaB82C+x+dd7C9Y9rumOMW73yd0WvacbCZSIZLjFbh+PEyN/0lzwlxW+hwmtXedE7
	 ba9rrycqrU+gdmG84rvdtjZZSbCEQGHh/TRVN3DCebinYjDAWdFlEH84bXuwOT/Y41
	 w/VK/L7kTDLVA==
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id
 D0D473930A8D;
	Fri,  5 Jun 2026 02:20:27 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: Re: [PATCH net-next 01/15] batman-adv: tp_meter: keep unacked list in
 ascending ordered
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: 
 <178062602640.3107573.11057765265590457796.git-patchwork-notify@kernel.org>
Date: Fri, 05 Jun 2026 02:20:26 +0000
References: <20260603072527.174487-2-sw@simonwunderlich.de>
In-Reply-To: <20260603072527.174487-2-sw@simonwunderlich.de>
To: Simon Wunderlich <sw@simonwunderlich.de>
Cc: netdev@vger.kernel.org, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, horms@kernel.org,
 b.a.t.m.a.n@lists.open-mesh.org, sven@narfation.org, stable@kernel.org
Message-ID-Hash: PN5NIQGAU2LJML765BCETOH3OH3QPSYC
X-Message-ID-Hash: PN5NIQGAU2LJML765BCETOH3OH3QPSYC
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/PN5NIQGAU2LJML765BCETOH3OH3QPSYC/>
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
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_FROM(0.00)[lists,b.a.t.m.a.n=lfdr.de,netdevbpf];
	RCVD_TLS_LAST(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	FORGED_RECIPIENTS(0.00)[m:sw@simonwunderlich.de,m:netdev@vger.kernel.org,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:horms@kernel.org,m:b.a.t.m.a.n@lists.open-mesh.org,m:sven@narfation.org,m:stable@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[patchwork-bot@kernel.org,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:24940, ipnet:136.243.0.0/16, country:DE];
	MIME_TRACE(0.00)[0:+];
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
	TO_DN_SOME(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C5D5D644A99

Hello:

This series was applied to netdev/net-next.git (main)
by Sven Eckelmann <sven@narfation.org>:

On Wed,  3 Jun 2026 09:25:12 +0200 you wrote:
> From: Sven Eckelmann <sven@narfation.org>
> 
> When batadv_tp_handle_out_of_order inserts a new entry in the list of
> unacked (out of order) packets, it searches from the entry with the newest
> sequence number towards oldest sequence number. If an entry is found which
> is older than the newly entry, the new entry has to be added after the
> found one to keep the ascending order.
> 
> [...]

Here is the summary with links:
  - [net-next,01/15] batman-adv: tp_meter: keep unacked list in ascending ordered
    https://git.kernel.org/netdev/net-next/c/5aa8651527ea
  - [net-next,02/15] batman-adv: tp_meter: initialize dup_acks explicitly
    https://git.kernel.org/netdev/net-next/c/b2b68b32a715
  - [net-next,03/15] batman-adv: tp_meter: initialize dec_cwnd explicitly
    https://git.kernel.org/netdev/net-next/c/febfb1b86224
  - [net-next,04/15] batman-adv: tp_meter: avoid window underflow
    https://git.kernel.org/netdev/net-next/c/765947b81fb5
  - [net-next,05/15] batman-adv: tp_meter: avoid divide-by-zero for dec_cwnd
    https://git.kernel.org/netdev/net-next/c/33ccd52f3cc9
  - [net-next,06/15] batman-adv: tp_meter: fix fast recovery precondition
    https://git.kernel.org/netdev/net-next/c/2b0d08f08ed3
  - [net-next,07/15] batman-adv: tp_meter: handle seqno wrap-around for fast recovery detection
    https://git.kernel.org/netdev/net-next/c/f54c85ed42a1
  - [net-next,08/15] batman-adv: tp_meter: add only finished tp_vars to lists
    https://git.kernel.org/netdev/net-next/c/15ccbf685222
  - [net-next,09/15] batman-adv: tp_meter: split vars into sender and receiver types
    https://git.kernel.org/netdev/net-next/c/feb4a390a540
  - [net-next,10/15] batman-adv: tp_meter: use locking for all congestion control variables
    https://git.kernel.org/netdev/net-next/c/a7eff9402471
  - [net-next,11/15] batman-adv: tp_meter: consolidate congestion control variables
    https://git.kernel.org/netdev/net-next/c/4f117f562628
  - [net-next,12/15] batman-adv: bla: annotate lasttime access with READ/WRITE_ONCE
    https://git.kernel.org/netdev/net-next/c/98b0fb191c87
  - [net-next,13/15] batman-adv: prevent ELP transmission interval underflow
    https://git.kernel.org/netdev/net-next/c/5e50d4b8ae3e
  - [net-next,14/15] batman-adv: tt: sync local and global tvlv preparation return values
    https://git.kernel.org/netdev/net-next/c/5f80c363677c
  - [net-next,15/15] batman-adv: tt: directly retrieve wifi flags of net_device
    https://git.kernel.org/netdev/net-next/c/626fd1437161

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


