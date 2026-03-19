Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CJSmIXJIu2kliQIAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 19 Mar 2026 01:50:58 +0100
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 29FB82C433F
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 19 Mar 2026 01:50:58 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id CF15E8597B
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 19 Mar 2026 01:50:57 +0100 (CET)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1773881457;
 b=LziVc8sHKhBv0ZjowLUWZZdo5Gs3K48Ouw3+iUFF9jFrVsx5uI2SxaTfJKGCoOdepfjfb
 Cn8ZK0FoggmfvxStluid11mCWF39WXifjRETDRXQvchTT+p820bq6LTjli20awwC9LqMZKj
 R4tXEBsxXryolmjbOYgzd5RLthQfLHE=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1773881457; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=ega4L27UBVxGCNGqNWh0YNIXEat3fnjfMirbCjMX8Wc=;
 b=v53sjiNfw83OA2XtfjIByT0itxhrVOL28D2rr207i9VuLrG1vmxgMD1ySxBzJihvKK81G
 X2aZ2Mk1C/AdNDQMTIBw+6QKDx2RwrHE9gaZbd1qyEBCBEAHBksgyDd4hL4t7nZTKnj6CYw
 lw0loCyMWz0YfgBoqkCKZuILPGJ67bM=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=kernel.org;
 arc=pass;
 dmarc=pass header.from=kernel.org policy.dmarc=quarantine
Authentication-Results: open-mesh.org; dkim=pass header.d=kernel.org;
 arc=pass;
 dmarc=pass (Used From Domain Record) header.from=kernel.org policy.dmarc=quarantine
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 514EE84746
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 19 Mar 2026 01:50:16 +0100 (CET)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1773881416;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=ega4L27UBVxGCNGqNWh0YNIXEat3fnjfMirbCjMX8Wc=;
	b=MchttkUE/gdS6YuS3S145AdeAKyemDEFQ0SjloG2mYkSqahBHaiVsQ03dh4FLn5HH1iQIe
	Q7LpNhEku6I1ovDO/awG7FW7rZS1HAwpd8xEwLvdrsD98CVagKuCtOH+/mmqDX0r9K/a9U
	5quJZEALdyCorF6Z/KNJvi5Wp6Ch5kg=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=HJYLeSb3;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (diktynna.open-mesh.org: domain of
 patchwork-bot+netdevbpf@kernel.org designates 2600:3c0a:e001:78e:0:1991:8:25
 as permitted sender) smtp.mailfrom=patchwork-bot+netdevbpf@kernel.org
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1773881416;
	b=IfjrWRK5yiHff/nZmo4hcdso4wBbY6cVxsMAzrJmZdTU/xUL2rsVvfx07X4CUR0N5xGc/x
	JViahMVMwS79OVlLwOT+JGicY7Y4Ewoy4KGmUBJCPuhAD75UorLyAljKysIpUz1tHLbUCu
	uMvBCj87+u6uRIb5Fbq3HNkodL1Gov4=
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 0B15E401DD;
	Thu, 19 Mar 2026 00:50:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D77EDC19421;
	Thu, 19 Mar 2026 00:50:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773881413;
	bh=zVSPhyCN3HbYx/+zS8Jfh3txHDqhUdsmp5XEI4vKPxI=;
	h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
	b=HJYLeSb3Qctac8TOmNF1fAn23HOhFKSi8Do0r/T8SKNAsdZ1RTY5Gy8jN3e3bJGdu
	 mRsTbN6wEIqIhjGCf8/0VBNiA9cqow0jj99tM4Rf+pnZMFiKkyUrud1yJlTAx0qdtq
	 pY5TgBBGclYnwaeFoDKO85n4h/0pqtfCLxPqOeiIfCbF0wIb5nrlsLmL3Pl4pwx/Xk
	 4w0dW5GC7m+2jdY/zThw2G2gP+BA+TqV6285NnqDH7sSHWnv+Gb4zVq4bgpJ5NzvSH
	 iqD+EyqOHpv5usvkeR6ZYE7BenDX7gpwzS2xKvJp4XGbl2t7xQZIN+kqRxsznho2q5
	 6F7N4EI1wb9EQ==
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id
 7D1053808200;
	Thu, 19 Mar 2026 00:50:06 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: Re: [PATCH net 1/1] batman-adv: avoid OGM aggregation when skb
 tailroom
 is insufficient
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: 
 <177388140529.969605.9189456516645267942.git-patchwork-notify@kernel.org>
Date: Thu, 19 Mar 2026 00:50:05 +0000
References: <20260317160002.1869478-2-sw@simonwunderlich.de>
In-Reply-To: <20260317160002.1869478-2-sw@simonwunderlich.de>
To: Simon Wunderlich <sw@simonwunderlich.de>
Cc: davem@davemloft.net, kuba@kernel.org, netdev@vger.kernel.org,
 b.a.t.m.a.n@lists.open-mesh.org, n05ec@lzu.edu.cn, stable@vger.kernel.org,
 yifanwucs@gmail.com, tomapufckgml@gmail.com, tanyuan98@outlook.com,
 bird@lzu.edu.cn, sven@narfation.org
Message-ID-Hash: FEMLYKRRLDWQSVMK6P6VBMQFLTQ7UTJJ
X-Message-ID-Hash: FEMLYKRRLDWQSVMK6P6VBMQFLTQ7UTJJ
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/FEMLYKRRLDWQSVMK6P6VBMQFLTQ7UTJJ/>
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
	FREEMAIL_CC(0.00)[davemloft.net,kernel.org,vger.kernel.org,lists.open-mesh.org,lzu.edu.cn,gmail.com,outlook.com,narfation.org];
	RCVD_TLS_LAST(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NO_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.997];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[patchwork-bot@kernel.org,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	MISSING_XM_UA(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[b.a.t.m.a.n];
	ASN(0.00)[asn:24940, ipnet:136.243.0.0/16, country:DE];
	DBL_BLOCKED_OPENRESOLVER(0.00)[simonwunderlich.de:email,lzu.edu.cn:email]
X-Rspamd-Queue-Id: 29FB82C433F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hello:

This patch was applied to netdev/net.git (main)
by Simon Wunderlich <sw@simonwunderlich.de>:

On Tue, 17 Mar 2026 17:00:02 +0100 you wrote:
> From: Yang Yang <n05ec@lzu.edu.cn>
> 
> When OGM aggregation state is toggled at runtime, an existing forwarded
> packet may have been allocated with only packet_len bytes, while a later
> packet can still be selected for aggregation. Appending in this case can
> hit skb_put overflow conditions.
> 
> [...]

Here is the summary with links:
  - [net,1/1] batman-adv: avoid OGM aggregation when skb tailroom is insufficient
    https://git.kernel.org/netdev/net/c/0d4aef630be9

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


