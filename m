Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id IArTOWhHJ2oluQIAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 09 Jun 2026 00:51:20 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ADF665B168
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 09 Jun 2026 00:51:20 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="EBQEJL+/";
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 2a01:4f8:241:fc1:136:243:236:17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 6E0D28405F
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 09 Jun 2026 00:51:20 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1780959080;
 b=RbG4kbD7TQ9XYSX3wGyXgCC2IS6+L7EK+F9UWtC6nrE5/yTaPIjzbLc4V+o8XwxqN7Twb
 H2YG1ly1xb2nbFQv1zAmBRTLf9uD+mY4KdDzqxiNgSkjM2khEIf2kPJGHCYbI6PboYq/G+M
 VWBQGLwDdnahGx/L3huUXijJB3kf640=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1780959080; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=CPTRs0V+7zqr6gSzloTr0HtLD32F3BoDoQnWfccf2T0=;
 b=jLiTTNMNqypvaufmEOljgUiVmae/xuHa0Rv3IUsGYWoyIQRJPgglKHnC+IEYco9RGIvyL
 +WFFn1xjLHeuM1UBi+n1KM39ynQdQ/dVnaOxB0Fzv5hXq5QYN1q6fZZHcPTFCtOrFi0JwXh
 Oqc51mf0pjAAUPq7/x0Jeivc9t4y9wI=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=kernel.org;
 arc=pass;
 dmarc=pass header.from=kernel.org policy.dmarc=quarantine
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 81F9C80807
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 09 Jun 2026 00:50:26 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1780959036;
	b=VtbchUNyj5agIUHYL7jgatdDZfQvrGdoc7mRY1hxXIIUPCO3F35c7w06mKjEHomZ2R2FZS
	G3FvGho4N+7mmlnVHLUegbKtlL16aOWZxc3nbau0fr6QxDm1TIC8t9kwSRxbk9srC44/8t
	gqW/M/xLqTaL9jzwt7wVm9CaYWNVC5I=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="EBQEJL+/";
	spf=pass (diktynna.open-mesh.org: domain of
 patchwork-bot+netdevbpf@kernel.org designates 2600:3c04:e001:324:0:1991:8:25
 as permitted sender) smtp.mailfrom=patchwork-bot+netdevbpf@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1780959036;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=CPTRs0V+7zqr6gSzloTr0HtLD32F3BoDoQnWfccf2T0=;
	b=jBsf22BnWVK8zsuzPwXDS5RW0mXcApwyeDgnQM3NvPQyWCnm6Lo+F/5y9SgnEe4qClg/Cd
	qJOTahbYE3nPLuOPsW2QX2+u3rCecBE8DzDrJnFWW8knDxXawYEwE6xSYBJ3hwI/frFAbs
	cOj44SX/rnC3lnkqbTYq8EitRlCdlMs=
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id EC1DF60098;
	Mon,  8 Jun 2026 22:50:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9F7F71F00893;
	Mon,  8 Jun 2026 22:50:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780959024;
	bh=CPTRs0V+7zqr6gSzloTr0HtLD32F3BoDoQnWfccf2T0=;
	h=Subject:From:Date:References:In-Reply-To:To:Cc;
	b=EBQEJL+/JJ3L+gsqFtArAS22gzpurELFW1X1tm+gk3C0KdzMnXlg5wDE1ceIpQM41
	 cgh4+9xAKfZNnFL+sGpBlPBLjr+EvyDmAB5mrmvRKev1RHvdPgYuWnNvtpZyXTfZX6
	 4GfRtPHPBqj+tppEYiB/cksUKj4dVqrTgLsZi4kZXKF3h7ERXpNj4AE5yDB/ClkE6Y
	 HGD4KUIj8YVWHdwSYx2GtF+B6hy3SoxP8V0qwUtEWiC5c1LU2cyHcAW4fhWuKJ6Xzn
	 axY8HoTTOyY9WmAXtQjectsDkmhhJYTtCkxgZEDXKX1yayWpbQrtGGTBACjnu03kVb
	 BERBAAGWR2WNw==
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id
 939BF3812FD9;
	Mon,  8 Jun 2026 22:50:24 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: Re: [PATCH net-next 01/11] batman-adv: tp_meter: initialize
 last_recv_time during init
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: 
 <178095902313.1702157.1003156200575946314.git-patchwork-notify@kernel.org>
Date: Mon, 08 Jun 2026 22:50:23 +0000
References: <20260605072005.490368-2-sw@simonwunderlich.de>
In-Reply-To: <20260605072005.490368-2-sw@simonwunderlich.de>
To: Simon Wunderlich <sw@simonwunderlich.de>
Cc: netdev@vger.kernel.org, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, horms@kernel.org,
 b.a.t.m.a.n@lists.open-mesh.org, sven@narfation.org, stable@kernel.org
Message-ID-Hash: LRCVBC5SDBEJ65YUGDGSLDDP7HS7OP5M
X-Message-ID-Hash: LRCVBC5SDBEJ65YUGDGSLDDP7HS7OP5M
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/LRCVBC5SDBEJ65YUGDGSLDDP7HS7OP5M/>
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
	FORGED_RECIPIENTS(0.00)[m:sw@simonwunderlich.de,m:netdev@vger.kernel.org,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:horms@kernel.org,m:b.a.t.m.a.n@lists.open-mesh.org,m:sven@narfation.org,m:stable@kernel.org,s:lists@lfdr.de];
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
	RCPT_COUNT_SEVEN(0.00)[10];
	TAGGED_RCPT(0.00)[b.a.t.m.a.n];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[narfation.org:email,lists.open-mesh.org:from_smtp,diktynna.open-mesh.org:rdns,diktynna.open-mesh.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8ADF665B168

Hello:

This series was applied to netdev/net-next.git (main)
by Sven Eckelmann <sven@narfation.org>:

On Fri,  5 Jun 2026 09:19:55 +0200 you wrote:
> From: Sven Eckelmann <sven@narfation.org>
> 
> The last_recv_time is the most important indicator for a receiver session
> to figure out whether a session timed out or not. But this information was
> only initialized after the session was added to the tp_receiver_list and
> after the timer was started.
> 
> [...]

Here is the summary with links:
  - [net-next,01/11] batman-adv: tp_meter: initialize last_recv_time during init
    https://git.kernel.org/netdev/net-next/c/811cb00fa8cd
  - [net-next,02/11] batman-adv: convert cancellation of work items to disable helper
    https://git.kernel.org/netdev/net-next/c/e9dc4072c549
  - [net-next,03/11] batman-adv: drop duplicated wifi_flags assignments
    https://git.kernel.org/netdev/net-next/c/b2e44a67ef4f
  - [net-next,04/11] batman-adv: use GFP_KERNEL allocations for the wifi detection cache
    https://git.kernel.org/netdev/net-next/c/ed497f64a617
  - [net-next,05/11] batman-adv: document cleanup of batadv_wifi_net_devices entries
    https://git.kernel.org/netdev/net-next/c/bb9e48e32d31
  - [net-next,06/11] batman-adv: correct batadv_wifi_* kernel-doc
    https://git.kernel.org/netdev/net-next/c/0e8c38fe9f50
  - [net-next,07/11] batman-adv: tp_meter: update stale kernel-doc after refactoring
    https://git.kernel.org/netdev/net-next/c/0c0f658d9abd
  - [net-next,08/11] batman-adv: bla: update stale kernel-doc
    https://git.kernel.org/netdev/net-next/c/219b4c46db7f
  - [net-next,09/11] batman-adv: uapi: keep kernel-doc in struct member order
    https://git.kernel.org/netdev/net-next/c/f3ff3eb0d6a4
  - [net-next,10/11] batman-adv: fix batadv_v_ogm_packet_recv error handling kernel-doc
    https://git.kernel.org/netdev/net-next/c/7b915cd40bb2
  - [net-next,11/11] batman-adv: fix kernel-doc typos and grammar errors
    https://git.kernel.org/netdev/net-next/c/1e2fa2b10c23

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


