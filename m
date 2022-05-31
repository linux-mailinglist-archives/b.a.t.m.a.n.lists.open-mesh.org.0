Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E21554F356
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 17 Jun 2022 10:46:21 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id A5D5F8250E;
	Fri, 17 Jun 2022 10:46:20 +0200 (CEST)
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com [IPv6:2a00:1450:4864:20::631])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 5181C802C6
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 31 May 2022 16:26:22 +0200 (CEST)
Received: by mail-ej1-x631.google.com with SMTP id wh22so27031405ejb.7
        for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 31 May 2022 07:26:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Ue5buJT5E74XVP8su1RZHoIggsGgw6wVZdFRERN/nS8=;
        b=hgm+W3VXAjq8KZl44XJVDPCmVbKiuFupXTbDOVwFC/i0SqYIQ7UGGXAhfRgmtv81Hc
         itxje5RSqtyfD0IFFuT2sVn3J+IcYltNd6YRTKKaqaEyqZo6sZksPASZqPehhiiXvOtl
         LbvNPw0sr2XhZODz8SFIb6D2pa3PdTSG6OaIjLbL0FCsdWE23dHfQ8hu0su8UIf9vvgl
         wZJdedI/9rIsMKySJ9YYpz00156vE8t4ThRdhuAmgnE9aF4Myl5pSoQ6J4xp0UXTFnD1
         B1r3YCRiLdnHtVobebASgYSTS4pl+wncuBxoFNJBVtfDGRwQkvmCr5GYvWPqGMbvJci9
         N69w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Ue5buJT5E74XVP8su1RZHoIggsGgw6wVZdFRERN/nS8=;
        b=7Tyaya5yeFybd8BYMogn0hFNfMdzgnDvMXThDX4E5uoAQZHIzXELOSGilB6PS84KTZ
         A6KmGeUC94s5pz7ppsTZmzwNXZj9+y9ogfgxvGLxg2QQ0R2DFW5CfDiZSVxyIBRq/5jh
         1fQkrNFHtBazvSBbBYuLHErViYrLKtEnr3gNzUHMXjjeSr7c4dqkzz5fZLQIBCH4Cied
         l8adKtA1CyLlF/VOfAeWoKCvZ70ul8WTRkz+YxnhJdqgXnHP/tt6e63k7pPqixoDUDq6
         md1cZSEiXCnYS3SJ5ByOHZd6I33XQsgRItsVC+wIl1mPq/vWR2gqW26t0Uz7tkkjBwO9
         lRNw==
X-Gm-Message-State: AOAM5310nIxGjLNdyQHwjsHPtjT5V4f0vRGXW2NI86XC783S8WtyFCZh
	ASauOlUKw6Jl7n6+gtJ+a0UCWgEZfyiFPw9DthE=
X-Google-Smtp-Source: ABdhPJwBblXBQpuq4eyjn/5jPqzK2zt6AmKmybKN3QSOEhS9NRtAo9tw8rodqQhFfF4khOtqBj9J89KlQUawOwUNwyU=
X-Received: by 2002:a17:907:9712:b0:6ff:c09:33a2 with SMTP id
 jg18-20020a170907971200b006ff0c0933a2mr28418873ejc.50.1654007181855; Tue, 31
 May 2022 07:26:21 -0700 (PDT)
MIME-Version: 1.0
References: <20220531100922.491344-1-gasmibal@gmail.com> <YpYP9NBD+Wmzup+s@sellars>
In-Reply-To: <YpYP9NBD+Wmzup+s@sellars>
From: Baligh GASMI <gasmibal@gmail.com>
Date: Tue, 31 May 2022 16:26:10 +0200
Message-ID: <CALxDnQYd5KzaBBxNnj7S_7joZFULY4pEsJ=gdePWcPM-K3i0cA@mail.gmail.com>
Subject: Re: [RFC PATCH v3 1/1] mac80211: use AQL airtime for expected throughput.
To: =?UTF-8?Q?Linus_L=C3=BCssing?= <linus.luessing@c0d3.blue>
Content-Type: text/plain; charset="UTF-8"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1654007182;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=Ue5buJT5E74XVP8su1RZHoIggsGgw6wVZdFRERN/nS8=;
	b=rt4AgSfD67217IdKRcLIUHVJL/xdNmmJcphPEbScPAIdqIabPVWTwCoV6c7f6H5I4W9ypl
	X394BvssBPB1YTFqjankcDyteWBQX7FEGfOHVqTtusv8U8H1L5cqDq0Fy6ccizWhcE72JA
	8tDHVqgRtY3IbrZvdjHSESLbX82bP7U=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=hgm+W3VX;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (diktynna.open-mesh.org: domain of gasmibal@gmail.com designates 2a00:1450:4864:20::631 as permitted sender) smtp.mailfrom=gasmibal@gmail.com
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1654007182; a=rsa-sha256;
	cv=none;
	b=mwodWuQE0pSzxd0dBgt7hWIqDjSUAYFZaO/Qyxtf6dLPYNyFbmSBpi7S0wffXUgXih+mxF
	215q4MFsx5flWlgBHcOUbeZOL4kFEEd0OwzhMvFkewt3lWsIFrjCqXdllBwra8+veQD6Wa
	sT89wEB2w+eO1pKv1e5SJb2d0CrrtWg=
X-MailFrom: gasmibal@gmail.com
X-Mailman-Rule-Hits: max-recipients
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-size; news-moderation; no-subject; suspicious-header
Message-ID-Hash: MKUSRDO5ZMQMX7WWIBAA6Z3UCKPMKJDV
X-Message-ID-Hash: MKUSRDO5ZMQMX7WWIBAA6Z3UCKPMKJDV
X-Mailman-Approved-At: Fri, 17 Jun 2022 08:46:18 +0200
CC: Johannes Berg <johannes@sipsolutions.net>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "open list:MAC80211" <linux-wireless@vger.kernel.org>, "open list:NETWORKING [GENERAL]" <netdev@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>, The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/MKUSRDO5ZMQMX7WWIBAA6Z3UCKPMKJDV/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Hi,
>
> On Tue, May 31, 2022 at 12:09:22PM +0200, Baligh Gasmi wrote:
> > Since the integration of AQL, packet TX airtime estimation is
> > calculated and counted to be used for the dequeue limit.
> >
> > Use this estimated airtime to compute expected throughput for
> > each station.
> >
> > It will be a generic mac80211 implementation. If the driver has
> > get_expected_throughput implementation, it will be used instead.
> >
> > Useful for L2 routing protocols, like B.A.T.M.A.N.
> >
> > Signed-off-by: Baligh Gasmi <gasmibal@gmail.com>
>
> Hi Baligh,
>
> Thanks for your work, this indeed sounds very relevant for
> batman-adv. Do you have some test results on how this compares to
> real throughput? And maybe how it compares to other methods we
> already have in the kernel, like expected throughput via
> minstrel_ht rate control or the estimates performed in 802.11s
> HWMP [0]?

I'll share a comparison between an iperf3 running and the current
value of this implementation.
What I can say, for now, is that they are close to each other.
The minstrel_ht still a better implementation for expected throughput.
That's why if there is minstrel_ht support, it will be used instead of
this implementation.
However, 802.11s metric is another story, it's a parameter used by the
HWMP routing protocol for the path selection, so it could be based on
the expected throughput, but it includes other factors that could be
mesh specific.
For me, 802.11s metric and expected throughput are not necessarily the
same values.

>
> Is there a certain minimum amount of traffic you'd suggest to have
> enough samples to get a meaningful result?

I'm using a burst of 50 ARP packets, padded to have 1024 bytes.
(to be optimized)

>
> I'm also wondering if we are starting to accumulate too many
> places to provide wifi expected throughput calculations. Do you
> see a chance that this generic mac80211 implementation could be made
> good enough to be used as the sole source for both batman-adv and
> 802.11s HWMP, for instance? Or do you see some pros and cons
> between the different methods?
>

I think that this implementation is still based on an estimation, so
it's not good as a minstrel.
It's based on the AQL airtime estimation. With a phy_rate of the last
sent packet, and average aggregated packets, and other stuff ...
The whole idea is not to replace current implementation, but to extend
other drivers (to have something is better than having nothing !)
Since batman-adv needs the expected throughput to make a decision, it
will get a value regardless of the driver implementation.

> Regards, Linus
>
>
> [0]: https://elixir.bootlin.com/linux/v5.18/source/net/mac80211/mesh_hwmp.c#L295
