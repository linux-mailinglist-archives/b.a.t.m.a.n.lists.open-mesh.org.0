Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E713539196
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 31 May 2022 15:13:56 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 91FB882E4A;
	Tue, 31 May 2022 15:13:51 +0200 (CEST)
Received: from mail.aperture-lab.de (mail.aperture-lab.de [IPv6:2a01:4f8:c2c:665b::1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id B54D380748
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 31 May 2022 14:54:16 +0200 (CEST)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id C911F3EA15;
	Tue, 31 May 2022 14:54:13 +0200 (CEST)
Date: Tue, 31 May 2022 14:54:12 +0200
From: Linus =?utf-8?Q?L=C3=BCssing?= <linus.luessing@c0d3.blue>
To: Baligh Gasmi <gasmibal@gmail.com>
Subject: Re: [RFC PATCH v3 1/1] mac80211: use AQL airtime for expected
 throughput.
Message-ID: <YpYP9NBD+Wmzup+s@sellars>
References: <20220531100922.491344-1-gasmibal@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20220531100922.491344-1-gasmibal@gmail.com>
X-Last-TLS-Session-Version: TLSv1.3
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1654001657;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=uRB7fwzVP05JlwUWVWAGeUntleexUXcn7VqM+G1XA/s=;
	b=Dm0ioLMSSNLdswGYmfqeS7J6Yw+VTb77USRF3BGklxWSdsJLxIsfvC9f9clgzhDVOs6cTi
	QJf2IXFl4UcZoDBXUbe8NKUuFw8mgc/a0B5KEq2ADMSYom4FPsNbC4CaE4aaYniX3lEYYq
	1uYqe4cNdYUU87KBLpBsr6wDw/T3vgg=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	dmarc=none;
	spf=none (diktynna.open-mesh.org: domain of linus.luessing@c0d3.blue has no SPF policy when checking 2a01:4f8:c2c:665b::1) smtp.mailfrom=linus.luessing@c0d3.blue
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1654001657; a=rsa-sha256;
	cv=none;
	b=OT5jLseXPuoh0jNM4XBOedXZVormvDH4wLTw8vgUJXRefol3gKFvWIhTaSKv5QNR5liQGO
	s6WJvQbOBdpiXqLJg3SGw4YEE5vmpLwSmF0Kl6W+jFRXdJ5k6aCbc279rRW+v208QSMbh4
	WMOhd/t2pPV2CeFah8kJk/ZtBCDh+I0=
X-MailFrom: linus.luessing@c0d3.blue
X-Mailman-Rule-Hits: max-recipients
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-size; news-moderation; no-subject; suspicious-header
Message-ID-Hash: DMI3DGZIDIQMVMW3FVHSVHC5RSX35YK4
X-Message-ID-Hash: DMI3DGZIDIQMVMW3FVHSVHC5RSX35YK4
X-Mailman-Approved-At: Tue, 31 May 2022 13:13:47 +0200
CC: Johannes Berg <johannes@sipsolutions.net>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "open list:MAC80211" <linux-wireless@vger.kernel.org>, "open list:NETWORKING [GENERAL]" <netdev@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>, b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/DMI3DGZIDIQMVMW3FVHSVHC5RSX35YK4/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

On Tue, May 31, 2022 at 12:09:22PM +0200, Baligh Gasmi wrote:
> Since the integration of AQL, packet TX airtime estimation is
> calculated and counted to be used for the dequeue limit.
> 
> Use this estimated airtime to compute expected throughput for
> each station.
> 
> It will be a generic mac80211 implementation. If the driver has
> get_expected_throughput implementation, it will be used instead.
> 
> Useful for L2 routing protocols, like B.A.T.M.A.N.
> 
> Signed-off-by: Baligh Gasmi <gasmibal@gmail.com>

Hi Baligh,

Thanks for your work, this indeed sounds very relevant for
batman-adv. Do you have some test results on how this compares to
real throughput? And maybe how it compares to other methods we
already have in the kernel, like expected throughput via
minstrel_ht rate control or the estimates performed in 802.11s
HWMP [0]?

Is there a certain minimum amount of traffic you'd suggest to have
enough samples to get a meaningful result?

I'm also wondering if we are starting to accumulate too many
places to provide wifi expected throughput calculations. Do you
see a chance that this generic mac80211 implementation could be made
good enough to be used as the sole source for both batman-adv and
802.11s HWMP, for instance? Or do you see some pros and cons
between the different methods?

Regards, Linus


[0]: https://elixir.bootlin.com/linux/v5.18/source/net/mac80211/mesh_hwmp.c#L295
