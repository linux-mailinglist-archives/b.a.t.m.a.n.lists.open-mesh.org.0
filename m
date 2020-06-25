Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 11A60209DF0
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 25 Jun 2020 13:56:34 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id EFD5980A1C;
	Thu, 25 Jun 2020 13:56:32 +0200 (CEST)
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 831C580743
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 25 Jun 2020 13:56:30 +0200 (CEST)
Received: by mail-lf1-x12f.google.com with SMTP id g139so3038569lfd.10
        for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 25 Jun 2020 04:56:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=u+5yfeEECvqZAz07J3amu3fwiri8Xf2X5R1wKfjqu6Y=;
        b=TAUQpUWqTWLsvB61NwqhjaZVvIuD1FB/Cknc89rgWEgLIFmLzOQhv3FgOq9f3EtJxf
         6jk7RoKk+aHnrQIp88DepYwvmBwtNzDCwEMP5QiEEaa4ktfjXIT0iQlNzjRfLw3HMy/f
         OvK8qPeoCMyUOHdMISaqJC4yNSgmVDT44F7QwicSJe/v8yC1TxjnQZIQQMFeoy7xJy07
         FiBsrAu1khUfK4Iv4i6Pi9SowZ8P24W5Ob4RXzGTYq4N3HqtkPU/bWjE4c1UwwsgkUBT
         kRZN7ptz5KKEmZoGgCVYXi0lh0mf7ojuMxOS9T6YFf6xBBcR0QQMbaL2wn52qFOyBZLO
         OaOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=u+5yfeEECvqZAz07J3amu3fwiri8Xf2X5R1wKfjqu6Y=;
        b=Kc7MUCP3cN8uWGELrsv2mfyAaiFPdqi6ECkVlUHv8z/UzcuYeckE6cEiV8wy0TXBsg
         cmoAzWDzPI8C59yVAAC67gIkhDLsJTp4aEIAO2QYg0xhjF+HF4htZjDWXJqSucqYo7Zu
         qKgSHQ7X3tfYzAn/wtYt/WvANoLY4e5p+a2d4rjQwKJivbZndtto8EcVHsJoqeEAx9WC
         Amj32nx5cfyREz1Gs3BAUkba8dPHslZ3nRijRZtkbeGNQ6xzm70J3vMhFdoG9Ih8ak4V
         2C1otVioG/gpsqQiK5YFKwL45eN/0qGJFE5lFm8gY5MAuI6//+ybab4RV05YVQ7cDaPx
         iKTQ==
X-Gm-Message-State: AOAM531f6qljA+ibeVyILZhSDg55N2isgxWxqFt/a4MeuvMZOmR9X0lL
	czd2Sg4aNWA9WXajWQF2xjBKEuoe97jmfGVz4Lo=
X-Google-Smtp-Source: ABdhPJy6y7rAoXDbncjhusuECvr2+J/NLjavyhbGPkt/UqnEXlsbn62L7/kRro2/q39hdp2tfVUzPVLnygbekRius18=
X-Received: by 2002:ac2:521a:: with SMTP id a26mr17807758lfl.192.1593086189649;
 Thu, 25 Jun 2020 04:56:29 -0700 (PDT)
MIME-Version: 1.0
References: <CADg1mwL07UQqmUctQexAFCgFMrXBiF=rB1EdRqb3agveSEkckQ@mail.gmail.com>
 <1986026.lAXmxmQttu@sven-edge> <CADg1mwLTTq-wjxvPvkTBb2J9qtSs_+BxhNsSW0DGTeo6QiWXbA@mail.gmail.com>
 <12351834.0eS7jaRIYG@bentobox>
In-Reply-To: <12351834.0eS7jaRIYG@bentobox>
From: Mark Birss <markbirss@gmail.com>
Date: Thu, 25 Jun 2020 13:56:18 +0200
Message-ID: <CADg1mwLt_cw7frwgYC6hyjQ4wO35UA0GNLw=MERAgUjNvM4SjQ@mail.gmail.com>
Subject: Re: BATMAN-adv Debug options
To: Sven Eckelmann <sven@narfation.org>
Content-Type: text/plain; charset="UTF-8"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1593086190;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=u+5yfeEECvqZAz07J3amu3fwiri8Xf2X5R1wKfjqu6Y=;
	b=wg9ExVnoPubhSbe0URMQ4qJ04D2u0gQKAnWY/cLG7nfoke6wluz9jH/OqcrAZntLx5VtcZ
	F5igAV8r2+aUn9Cqy1qKPYAzKjYzaJFaBfqq2ksODAxYLRV3v46eKWBtwGIja3GM1CxfGz
	CgrOtfx7bt2SBh60BBc3Tr6NpbJJj3Q=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1593086190; a=rsa-sha256;
	cv=none;
	b=KmyYPKMTqr/W2lsODNV0rBQO8/RTXLKDwkPg6bodF3o6MHjJk4J9fK98l+C3+83xZYovT4
	yypIPvsXhwippArA0AINZCurJYs7RyVUA+ZNeGCazPIOQMXH7d5Uxb53194jjXCHVMZptb
	9DXPtdJOyAe5Mb1ys/ZcmOS4cuWznbE=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=gmail.com header.s=20161025 header.b=TAUQpUWq;
	spf=pass (diktynna.open-mesh.org: domain of markbirss@gmail.com designates 2a00:1450:4864:20::12f as permitted sender) smtp.mailfrom=markbirss@gmail.com
Message-ID-Hash: TJZNLOW3MR4DZZIVGBLYL7ZMAVJO7RP4
X-Message-ID-Hash: TJZNLOW3MR4DZZIVGBLYL7ZMAVJO7RP4
X-MailFrom: markbirss@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/TJZNLOW3MR4DZZIVGBLYL7ZMAVJO7RP4/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Sorry about the reply not including the mailing address, i  made error
clicking wrong reply icon

> As for originator and neighbours this can also be checked by batctl or1
> proc file system.

No i meant /sys/kernel/debug as I run recent Batman adv 2020-1

Thank you for pointing out the correct wiki links, I could not find them

I will create another topic for some other questions,

Thank you


On Thu, Jun 25, 2020 at 1:44 PM Sven Eckelmann <sven@narfation.org> wrote:
>
> [please never contact me privately about batman-adv without a really good
>  reason. Cc at least the mailing list]
>
> On Thursday, 25 June 2020 13:12:34 CEST Mark Birss wrote:
> > "Is the lower layer working or did the lower layer break? Can be
> > tested easily with multicast/broadcast and unicast pings on the lower
> > device."
> >
> > How to do this ?
>
> ping/ping6.
>
> * unicast: just ping as normal the lower device (not bat0) IPv4 address or
>   (link local) IPv6 address
> * multicast: just send from both sides an multicast ping. For example
>   ff02::1%wlan0 and check if the remote (not your own device) responds with a
>   unicast reply
>
> > As for originator and neighbours this can also be checked by batctl or
> > proc file system.
>
> proc? If you have batman-adv entries in proc then you should definitely
> upgrade. This was removed in 2010.
>
> Should this have been a question about where to find the originators and
> neighbors table? And you can see this via "batctl meshif bat0 originators"
> and "batctl meshif bat0 neighbors". The "meshif bat0" has to replaced with
> "-m bat0" on older batctl versions.
>
> > Another question is there a breakdown of the meaning of the messages for
> >
> > $ cat /sys/kernel/debug/batman_adv/bat0/log
> >
> > The additional debug output is by default disabled. It can be enabled
> > during run time. Following log_levels are defined:
>
> No idea what you want here. The help text already says what each message type
> is about. If you don't know what a specific feature is then please check the
> wiki [1].
>
> > and what is the Flags here
> >
> > root@LiMe-a376eb:~# batctl tl
> > [B.A.T.M.A.N. adv 2020.1-openwrt-2, MainIF/MAC:
> > dummy0/aa:84:86:a3:76:eb (bat0/72:8b:cf:a4:00:77 BATMAN_IV), TTVN: 4]
> > Client             VID Flags    Last seen (CRC       )
> > 72:8b:cf:a4:00:77   -1 [.P....]   0.000   (0x1c349131)
> > 50:3e:aa:06:6f:4d   -1 [......]   0.280   (0x1c349131)
> > 72:8b:cf:a4:00:77    0 [.P....]   0.000   (0x9243e316)
> > cc:2d:e0:47:b3:56   -1 [......]   0.980   (0x1c349131)
> > 72:8b:cf:a4:00:77    1 [.P....]   0.000   (0xdb7f9e31)
>
> The flags here are
>
> * 'R' BATADV_TT_CLIENT_ROAM
> * 'N' BATADV_TT_CLIENT_NEW
> * 'X' BATADV_TT_CLIENT_PENDING
> * 'W' BATADV_TT_CLIENT_WIFI
> * 'I' BATADV_TT_CLIENT_ISOLA
> * 'P' BATADV_TT_CLIENT_NOPURGE
>
> And they are documented in the wiki [2]
>
> Kind regards,
>         Sven
>
> [1] https://www.open-mesh.org/projects/batman-adv/wiki/Protocol_information
> [2] https://www.open-mesh.org/projects/batman-adv/wiki/TT-Flags
