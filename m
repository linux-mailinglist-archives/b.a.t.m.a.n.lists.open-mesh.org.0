Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id AE66D57F00E
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 23 Jul 2022 17:20:06 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 2BB0883247;
	Sat, 23 Jul 2022 17:20:05 +0200 (CEST)
Received: from sin.source.kernel.org (sin.source.kernel.org [IPv6:2604:1380:40e1:4800::1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 6FF9580847
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 23 Jul 2022 17:20:01 +0200 (CEST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sin.source.kernel.org (Postfix) with ESMTPS id A9891CE0AC6;
	Sat, 23 Jul 2022 15:19:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ADED0C341C0;
	Sat, 23 Jul 2022 15:19:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1658589598;
	bh=IKWj0a/HfvVLYcT/bIqRy//jkSi5vKPspnLfv/oMmGA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ud8lphhIODAgW1NnifDqMNjf/SZnYHBYK3G2I/msx3yd3bo6xiSSI6XlCZwjrUClO
	 jnHNGqkOXNOEvxDkrUwWr1avnz/k//yb0zUQaeHw8eDlPamhj/C94st7f/AkdCDRNm
	 hjJtrmDeLJF0Ah/AD5g8KK7h8zfv0u5fvlJ+Ax+M=
Date: Sat, 23 Jul 2022 17:19:47 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Subject: Re: [PATCH 5.15] batman-adv: Use netif_rx_any_context() any.
Message-ID: <YtwRk2OVuALT3khr@kroah.com>
References: <YtbW7Ca3t4/3qB7k@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <YtbW7Ca3t4/3qB7k@linutronix.de>
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=linuxfoundation.org header.s=korg header.b=ud8lphhI;
	spf=pass (diktynna.open-mesh.org: domain of gregkh@linuxfoundation.org designates 2604:1380:40e1:4800::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
	dmarc=pass (policy=none) header.from=linuxfoundation.org
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1658589601; a=rsa-sha256;
	cv=none;
	b=004CwMQPv+YMCUmNNhXFG8TdoyeJ7cqar5Ba/3JargsAiuCUTsieeSOVhJOB5sDxb3kwKa
	oniICU4NchyhjEtRBjLt0ph5PGDbrL/xVIAGVNL0+lcWys1yJqk6pi9xwoJJWO4rtlyEGo
	otNhlFxtsiKt5agEps7qk6tiDOQkn4s=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1658589601;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=u5/7ZpX+jipvmtJzpMt3+5aaru0hvo3D94UnmQYMgWQ=;
	b=LZu6ciaGFrvIU44OzKAb0nZH+CAlD+LJ4txhUpo4VvF3pcSKarW7G0xqdcNEVsErB/DwOC
	b8qYYuGokBY0zqL83oqES70qDScGoCtSiAxrWOn/VYzHf+mvC7JGnZx5sPCQrCfVCoCAnr
	8qyP8/kqOJBv/tsUdHIVks6sdjx9+is=
Message-ID-Hash: HZPTCN4MODPHBFDPXS2GFQRTLDGRDTGO
X-Message-ID-Hash: HZPTCN4MODPHBFDPXS2GFQRTLDGRDTGO
X-MailFrom: gregkh@linuxfoundation.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
CC: Sasha Levin <sashal@kernel.org>, linux-kernel@vger.kernel.org, stable@vger.kernel.org, Antonio Quartulli <a@unstable.cc>, Marek Lindner <mareklindner@neomailbox.ch>, b.a.t.m.a.n@lists.open-mesh.org, "David S. Miller" <davem@davemloft.net>, Thomas Gleixner <tglx@linutronix.de>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/HZPTCN4MODPHBFDPXS2GFQRTLDGRDTGO/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

On Tue, Jul 19, 2022 at 06:08:12PM +0200, Sebastian Andrzej Siewior wrote:
> This reverts the stable commit
>    e65d78b12fbc0 ("batman-adv: Use netif_rx().")
> 
> The commit message says:
> 
> | Since commit
> |    baebdf48c3600 ("net: dev: Makes sure netif_rx() can be invoked in any context.")
> |
> | the function netif_rx() can be used in preemptible/thread context as
> | well as in interrupt context.
> 
> This commit (baebdf48c3600) has not been backported to the 5.15 stable
> series and therefore, the commit which builds upon it, must not be
> backported either.
> 
> Revert the backport and use netif_rx_any_context() again.
> 
> Signed-off-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
> ---
>  net/batman-adv/bridge_loop_avoidance.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Now queued up, thanks.

greg k-h
