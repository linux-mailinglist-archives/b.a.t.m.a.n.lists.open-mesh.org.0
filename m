Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iB2AG128AGpGMAEAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 10 May 2026 19:11:57 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E6F2505570
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 10 May 2026 19:11:56 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id A516085B3A
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 10 May 2026 19:11:56 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1778433116;
 b=qKjyUBuXLThgVu2IhVaNMCaUZnzYN0Gz0JiN1inyeOWNuCT5mElh4aWziAmvZUuKlpCtz
 BJa3OWBoRSFAtRZvcfBeUg2DUwfvtcyRNObZt6AnnChd12SK50zYGa8w4UFub0YIbo+SOn0
 HtiyPbeZWcPWDYHkFlvmLnnhhBOlC4c=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1778433116; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=JSRq3xHVR0hS8REhWSyvZPVBpMxjZC1biD34OLr9Ipk=;
 b=P5QDMAaoA8KJZOtejFCAdXB5tLO6siruCP99XTwUTfzMnUDjInZ3T7zcATEhtcF1lXdEX
 XRS2SZ7xn1KHbQGOxqRumJ8BWJb37/98aV48cDhl2BOAa42Wa/H8ioCL851xg63GLB+uVMd
 ojPyOUge3yIlE5k0Z7wg7jhY3WebFAU=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=kernel.org;
 arc=pass;
 dmarc=pass header.from=kernel.org policy.dmarc=quarantine
Authentication-Results: open-mesh.org; dkim=pass header.d=kernel.org;
 arc=pass;
 dmarc=pass (Used From Domain Record) header.from=kernel.org policy.dmarc=quarantine
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 525FA854D9
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 10 May 2026 19:11:11 +0200 (CEST)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1778433071;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=JSRq3xHVR0hS8REhWSyvZPVBpMxjZC1biD34OLr9Ipk=;
	b=yz75Le9efxwGTYthizLjJxoprnTd6pnHhoI0Erth4y5JZDOazig1CC/qsR/g8SaRbaWuz4
	hp7SHDHnjbXHFzbOCV3aQK4lRSQ1IeokCSMRdHKEdQ22amRVo8EIte+rD+JftKtTnLoFpN
	w/RkKjgHYFEpta+8cAAbik802gO//HE=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=PgozvB4x;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (diktynna.open-mesh.org: domain of
 patchwork-bot+netdevbpf@kernel.org designates 2600:3c0a:e001:78e:0:1991:8:25
 as permitted sender) smtp.mailfrom=patchwork-bot+netdevbpf@kernel.org
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1778433071;
	b=wd0bNBTDlBZHErlYk5dPyLwN4Vc1jYrzM19er86kcOon3vHZXup0rc/K1+1lYllC4w+6U5
	spvBb3QItO+nrnUMq3NYWHZhDOtYgy3wAIBxp/1LKG9KVy4647x4IlyiKJDnxeebvXFliM
	HhqkwuIOApo0s2C04bB2h9xzTKRvm6s=
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 913DD41B3F;
	Sun, 10 May 2026 17:11:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6E811C2BCB8;
	Sun, 10 May 2026 17:11:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778433069;
	bh=uWkCMdpb0fYzHgP/nseR1GXrOlMzTE9gaiu7Q4LlA5M=;
	h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
	b=PgozvB4xMsa5xQ2J2CmGLTA7DB3MlAmS4wKfwEqbECDp2dDmW1BybGKL5KQs7OlqW
	 lWUQuX0jzq2CsG3PWLaCI0LvisMaadxc7D2kNKLQmQgfzB3Qz9AhQMxg7LY6QzzWHv
	 bCTv4TjMurOETsuy2HAXofb3CwfUvwgLmUPwYA0LWqcR7M6lrVU4Li7D68/plhu/bJ
	 1JDp7Fp2iT7PGSD8ypt6o1UgfFp3WVHWrEQWZ+SQStByri+hXkFUMddBq3AAwbddud
	 yNkWIgGRaW7Qvb4qzvDHAWixSAPFIy0ADjZaaZ4ixo7pGxeLy5sJjbhUAKLDFFvK+9
	 j9NinvjLYZ4qA==
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id
 02CFC393001F;
	Sun, 10 May 2026 17:10:18 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: Re: [PATCH net 1/8] batman-adv: fix integer overflow on buff_pos
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: 
 <177843301655.1434286.16917643691644742198.git-patchwork-notify@kernel.org>
Date: Sun, 10 May 2026 17:10:16 +0000
References: <20260508154314.12817-2-sw@simonwunderlich.de>
In-Reply-To: <20260508154314.12817-2-sw@simonwunderlich.de>
To: Simon Wunderlich <sw@simonwunderlich.de>
Cc: netdev@vger.kernel.org, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, horms@kernel.org,
 b.a.t.m.a.n@lists.open-mesh.org, lbourennani@fuzzinglabs.com,
 stable@vger.kernel.org, apinson@fuzzinglabs.com, sven@narfation.org
Message-ID-Hash: 2D675AYS3UBO4NB6O6NEPVZQQ4HFYJWK
X-Message-ID-Hash: 2D675AYS3UBO4NB6O6NEPVZQQ4HFYJWK
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/2D675AYS3UBO4NB6O6NEPVZQQ4HFYJWK/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>
X-Rspamd-Queue-Id: 0E6F2505570
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.01 / 15.00];
	ARC_ALLOW(-1.00)[open-mesh.org:s=20121:i=2];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,b.a.t.m.a.n=lfdr.de,netdevbpf];
	R_SPF_NA(0.00)[no SPF record];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_TWELVE(0.00)[12];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[fuzzinglabs.com:email,narfation.org:email]
X-Rspamd-Action: no action

Hello:

This series was applied to netdev/net.git (main)
by Sven Eckelmann <sven@narfation.org>:

On Fri,  8 May 2026 17:43:07 +0200 you wrote:
> From: Lyes Bourennani <lbourennani@fuzzinglabs.com>
> 
> Fixing an integer overflow present in batadv_iv_ogm_send_to_if. The size
> check is done using the int type in batadv_iv_ogm_aggr_packet whereas the
> buff_pos variable uses the s16 type. This could lead to an out-of-bound
> read.
> 
> [...]

Here is the summary with links:
  - [net,1/8] batman-adv: fix integer overflow on buff_pos
    https://git.kernel.org/netdev/net/c/0799e5943611
  - [net,2/8] batman-adv: reject new tp_meter sessions during teardown
    https://git.kernel.org/netdev/net/c/324354359242
  - [net,3/8] batman-adv: stop tp_meter sessions during mesh teardown
    https://git.kernel.org/netdev/net/c/3d3cf6a7314a
  - [net,4/8] batman-adv: stop caching unowned originator pointers in BAT IV
    https://git.kernel.org/netdev/net/c/f03e85835329
  - [net,5/8] batman-adv: tp_meter: fix tp_num leak on kmalloc failure
    https://git.kernel.org/netdev/net/c/ce425dd05d0f
  - [net,6/8] batman-adv: bla: prevent use-after-free when deleting claims
    https://git.kernel.org/netdev/net/c/4ae1709a3140
  - [net,7/8] batman-adv: bla: only purge non-released claims
    https://git.kernel.org/netdev/net/c/cf6b60401159
  - [net,8/8] batman-adv: bla: put backbone reference on failed claim hash insert
    https://git.kernel.org/netdev/net/c/ba9d20ee9076

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


