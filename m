Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ONM3NYAI12myKggAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 09 Apr 2026 04:01:36 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 750CD3C56BF
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 09 Apr 2026 04:01:36 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 37455858D1
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 09 Apr 2026 04:01:36 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1775700096;
 b=t0l+PEA93YDCYIIgFpx9Wr/zh7NImPkndWCUJwvR755nOdz4chY1bfwkBPPGlNS8n2Jsn
 zoAlY0hgH4z9V6vRCLsAmwGREhdzMzGM8b+HQC6kv3IcNE+LQlgOZE6N8TR7xomcz1W3YgO
 kfaEIUXdwtL5ZM02Gr9Mn7mjDb89TPk=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1775700096; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=Kk5K/A/sMVGVkN4ygliOG6H4kKR7yDH4Q+h3jYcxC9g=;
 b=ZUOHytFWrJ5rwB7WV8GyT1IbPw2+si6uy/bYOr+awgrzXIqRyrb9XlXxEjxNJFLI609VD
 J7Kj0AcLQo73j9surXWF2AUs6vQ1twjx0puDWTuXSJ7wcJDuSMDnv6aw7FGtBmKck+chmkA
 YoDW/405shN1e+ofXO8lIFJCgDvPhPw=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=kernel.org;
 arc=pass;
 dmarc=pass header.from=kernel.org policy.dmarc=quarantine
Authentication-Results: open-mesh.org; dkim=pass header.d=kernel.org;
 arc=pass;
 dmarc=pass (Used From Domain Record) header.from=kernel.org policy.dmarc=quarantine
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 9B5688449E
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 09 Apr 2026 04:00:49 +0200 (CEST)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1775700059;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=Kk5K/A/sMVGVkN4ygliOG6H4kKR7yDH4Q+h3jYcxC9g=;
	b=eZE9vz0M1/gvcYQZUIH3U0L34ULUkp9fbW7+F/deoY90DXBWxoxNBfvgaibRrh3LtHSUtI
	3i1fQDLFB0mA0IugNaH0jhXPHBGcoun0l5ZVq4ryb8x0pFkeq/Nvov671x9BTHC8FWx1XE
	OywIlA5D9DqaHiG6vyWnGQS3btAFlOI=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=FjwvgFiB;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (diktynna.open-mesh.org: domain of
 patchwork-bot+netdevbpf@kernel.org designates 2600:3c0a:e001:78e:0:1991:8:25
 as permitted sender) smtp.mailfrom=patchwork-bot+netdevbpf@kernel.org
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1775700059;
	b=PGG4YEnrab2nOT038lRZwl4a2qUxCl3nm8tVDMclgQEr+OMWLMQ2pajamVzdDRPEdY2+ZZ
	gTZ3DzlZCj0SiqNstdM9TtFhLMzlxuhpqkKu5CKCmnyMcfYKZm+DdgfezK4cWb+BJsmAS7
	WGTdcLY+8RImZK5WJljf7GZ0hh+cS1g=
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id AD6C2443BA;
	Thu,  9 Apr 2026 02:00:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 86D42C19421;
	Thu,  9 Apr 2026 02:00:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775700047;
	bh=1Ik+p3abS9OZ07JrhV9UEcCWYqEcGNXF8R5GBJ4RPVE=;
	h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
	b=FjwvgFiBMyCtNwwXzcfNa6Q8Utw8WVRESvs3jnFmy1+N1crR6+PhaJMCEgUDLIBLy
	 fALZYODDBYRvnTbhuA5TDmlzrZpXzJkPs4JKCzEKqquHbYPvJmiRPaeel9Q338NLHF
	 pxRWob3QZwwNqI1phJ/hk4dbUdVCu4qzcLlbfqU33egYopt0FpSLzWGAbL4K1986xt
	 3wO5VLEwPYMghS0jJr0gw5hEkapNEkkaHs//nsidEGbA7uTPg5mW7IlJG3uh4BZsER
	 ugKGw0S+gVzvWnDylmeK2UWECtDjuDSa7TIyjcdZkM8euCHbBI6mwYBA6OuXQan+lw
	 PGn9aOVTQ0uXg==
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id
 030783930793;
	Thu,  9 Apr 2026 02:00:25 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: Re: [PATCH net 1/2] batman-adv: reject oversized global TT response
 buffers
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: 
 <177570002357.953143.3280189136454174077.git-patchwork-notify@kernel.org>
Date: Thu, 09 Apr 2026 02:00:23 +0000
References: <20260408110255.976389-2-sw@simonwunderlich.de>
In-Reply-To: <20260408110255.976389-2-sw@simonwunderlich.de>
To: Simon Wunderlich <sw@simonwunderlich.de>
Cc: davem@davemloft.net, kuba@kernel.org, netdev@vger.kernel.org,
 b.a.t.m.a.n@lists.open-mesh.org, caoruide123@gmail.com,
 stable@vger.kernel.org, yifanwucs@gmail.com, tomapufckgml@gmail.com,
 yuantan098@gmail.com, bird@lzu.edu.cn, enjou1224z@gmail.com,
 n05ec@lzu.edu.cn, sven@narfation.org
Message-ID-Hash: MLNKZNAJXRKEJ7TDIE45YJALQDZJ5B6S
X-Message-ID-Hash: MLNKZNAJXRKEJ7TDIE45YJALQDZJ5B6S
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/MLNKZNAJXRKEJ7TDIE45YJALQDZJ5B6S/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>
X-Spamd-Result: default: False [-2.01 / 15.00];
	ARC_ALLOW(-1.00)[open-mesh.org:s=20121:i=2];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,b.a.t.m.a.n=lfdr.de,netdevbpf];
	FREEMAIL_CC(0.00)[davemloft.net,kernel.org,vger.kernel.org,lists.open-mesh.org,gmail.com,lzu.edu.cn,narfation.org];
	RCVD_TLS_LAST(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NO_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[patchwork-bot@kernel.org,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	MISSING_XM_UA(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[b.a.t.m.a.n];
	ASN(0.00)[asn:24940, ipnet:136.243.0.0/16, country:DE];
	DBL_BLOCKED_OPENRESOLVER(0.00)[simonwunderlich.de:email]
X-Rspamd-Queue-Id: 750CD3C56BF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hello:

This series was applied to netdev/net.git (main)
by Simon Wunderlich <sw@simonwunderlich.de>:

On Wed,  8 Apr 2026 13:02:54 +0200 you wrote:
> From: Ruide Cao <caoruide123@gmail.com>
> 
> batadv_tt_prepare_tvlv_global_data() builds the allocation length for a
> global TT response in 16-bit temporaries. When a remote originator
> advertises a large enough global TT, the TT payload length plus the VLAN
> header offset can exceed 65535 and wrap before kmalloc().
> 
> [...]

Here is the summary with links:
  - [net,1/2] batman-adv: reject oversized global TT response buffers
    https://git.kernel.org/netdev/net/c/3a359bf5c61d
  - [net,2/2] batman-adv: hold claim backbone gateways by reference
    https://git.kernel.org/netdev/net/c/82d8701b2c93

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


