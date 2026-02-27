Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wHWOO+gPoWlDqAQAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 27 Feb 2026 04:30:49 +0100
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id DB9BF1B2457
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 27 Feb 2026 04:30:48 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id A4D60859D8
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 27 Feb 2026 04:30:48 +0100 (CET)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1772163048;
 b=QvJGJ63QHL8Eb2yvAC7V9Dgz7ux//oa6aiig4uVbzaP/lKEumta5FpN03HPWMnhvO8gPD
 cxhQhXQ29Kvcyj903A73m/77EErn4jpIOW9k1KCS7Ro8pnJtJDazCmPXVGvWVMtJV71nYvq
 VASHqzYQ9uYSDkJT4c+PCCmzlQKq8+c=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1772163048; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=QdwReOU7r5rDPJiFZPcJgBOeJ+msak9ZHx49dcXz00Y=;
 b=4Q/2bnpijOTOe8ugyNxyxb4i/SG1f0kvktoyyr6z95uN/XGYKIiBsCwq8Wv1k8dpgyaj+
 pq0Gc96WEDyGdNZD+hR2VsmQCRbZ/LWXWFq85JUE81WTxatBUSyiIDpK9Q+dol8qFbZgDJY
 iUjGFcOHMsT560AoGkMPMW8I/2O3+TM=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=kernel.org;
 arc=pass;
 dmarc=pass header.from=kernel.org policy.dmarc=quarantine
Authentication-Results: open-mesh.org; dkim=pass header.d=kernel.org;
 arc=pass;
 dmarc=pass (Used From Domain Record) header.from=kernel.org policy.dmarc=quarantine
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 526D283107
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 27 Feb 2026 04:30:03 +0100 (CET)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1772163003;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=QdwReOU7r5rDPJiFZPcJgBOeJ+msak9ZHx49dcXz00Y=;
	b=3sYLXbZ1Vh9IB5KPJJ16o7O/KgqpKIqOJA1/6qKRSaLTm3QHY3d31QwFokZo/BEuzCI2BA
	u9Na398ZpFdxTpmYclbHzKQyl7mS98ApxTiP1pa2Q7SkOWLxCuWZIJ/UluwT+vDwzmWifT
	xgks9vimHu3f5PquWf0zJRDC8EZgPJA=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=bNft+ry0;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (diktynna.open-mesh.org: domain of
 patchwork-bot+netdevbpf@kernel.org designates 2600:3c0a:e001:78e:0:1991:8:25
 as permitted sender) smtp.mailfrom=patchwork-bot+netdevbpf@kernel.org
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1772163003;
	b=VH4Mileo6cLD/mzWbQQYswghIlymHRWGqQr+l1Ye+vxzgtA4BxsMieBsJ0vZ4hcT0K1CvV
	A9qdaE6+Yw3JiRup+QMx/ojTmUoD3zcLgfnGpslJNWFkV+95oCBRLBYySglxMeUlzdgubk
	K65xpX2E0zNsa5fdq3AmUADFUPs8+lY=
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 23F84438DD;
	Fri, 27 Feb 2026 03:30:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F109EC19423;
	Fri, 27 Feb 2026 03:30:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772163001;
	bh=iiOwXb8uVifSZ7PySOcOmZe1Jp2tN1bt6v5sZO3UzmM=;
	h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
	b=bNft+ry00BO5EctoGu/4PmXQQ86TgRcDmWzuolyeWHWAhmBMewxuGH3u7cbn7Iy2j
	 LHrz9OM8PqFS2eZMNfVhLYkDTaVwatUHrYSuoU/z+xNNK36iTGavzwvQI+sUb0Jh9A
	 77JHtLwLPJO488k/5YUsBq4eMtDS0f+DS2tjBaJjMDMkT4dRpb+b35rqD0H2K5QLxc
	 Uv2jyAsB2vKScYj1VszyfeOvQJFAjmhMTLPdbT2D+ZX6S8xo9hyR1nYMX4sfu+zKvC
	 BGxsH6VzL3qa9ERcV7G6Fc4BcFVPBrKkGRuKPIIMrkCQOTBs4YyQSb6PuT1JKYwWil
	 njZyfXKeLxDsg==
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id
 3FE81393109B;
	Fri, 27 Feb 2026 03:30:06 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: Re: [PATCH net 1/1] batman-adv: Avoid double-rtnl_lock ELP metric
 worker
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: 
 <177216300504.1958105.15758262442071363378.git-patchwork-notify@kernel.org>
Date: Fri, 27 Feb 2026 03:30:05 +0000
References: <20260225084614.229077-2-sw@simonwunderlich.de>
In-Reply-To: <20260225084614.229077-2-sw@simonwunderlich.de>
To: Simon Wunderlich <sw@simonwunderlich.de>
Cc: davem@davemloft.net, kuba@kernel.org, netdev@vger.kernel.org,
 b.a.t.m.a.n@lists.open-mesh.org, sven@narfation.org, stable@vger.kernel.org,
 github@grische.xyz, freifunk_nordm4nn@gmx.de
Message-ID-Hash: LBR53QV4GORKIRKOD3GXSENKLXNY6NL6
X-Message-ID-Hash: LBR53QV4GORKIRKOD3GXSENKLXNY6NL6
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
Archived-At: <>
List-Archive: <>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.01 / 15.00];
	ARC_ALLOW(-1.00)[open-mesh.org:s=20121:i=2];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	R_SPF_NA(0.00)[no SPF record];
	DKIM_TRACE(0.00)[kernel.org:+];
	FREEMAIL_CC(0.00)[davemloft.net,kernel.org,vger.kernel.org,lists.open-mesh.org,narfation.org,grische.xyz,gmx.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[lists,b.a.t.m.a.n=lfdr.de,netdevbpf];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:24940, ipnet:136.243.0.0/16, country:DE];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[patchwork-bot@kernel.org,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	FROM_NO_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[b.a.t.m.a.n];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[simonwunderlich.de:email,narfation.org:email]
X-Rspamd-Queue-Id: DB9BF1B2457
X-Rspamd-Action: no action

Hello:

This patch was applied to netdev/net.git (main)
by Simon Wunderlich <sw@simonwunderlich.de>:

On Wed, 25 Feb 2026 09:46:14 +0100 you wrote:
> From: Sven Eckelmann <sven@narfation.org>
> 
> batadv_v_elp_get_throughput() might be called when the RTNL lock is already
> held. This could be problematic when the work queue item is cancelled via
> cancel_delayed_work_sync() in batadv_v_elp_iface_disable(). In this case,
> an rtnl_lock() would cause a deadlock.
> 
> [...]

Here is the summary with links:
  - [net,1/1] batman-adv: Avoid double-rtnl_lock ELP metric worker
    https://git.kernel.org/netdev/net/c/cfc83a3c7151

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


