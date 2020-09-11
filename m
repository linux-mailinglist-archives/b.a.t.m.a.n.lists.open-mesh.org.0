Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EF3E266090
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 11 Sep 2020 15:46:33 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 5AE3C807FC;
	Fri, 11 Sep 2020 15:46:32 +0200 (CEST)
Received: from mail-oo1-xc35.google.com (mail-oo1-xc35.google.com [IPv6:2607:f8b0:4864:20::c35])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 805718026B
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 11 Sep 2020 15:46:29 +0200 (CEST)
Received: by mail-oo1-xc35.google.com with SMTP id y25so2298846oog.4
        for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 11 Sep 2020 06:46:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=netter-io.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=hXEXWMbOy7EvPYGmgdz9sIaAr6fjmT8bpcqQalX0hC0=;
        b=fKjx54K4aC9jNpKEV7k9SLzbjzal+joknSFFHAnHAJKQ9dnwB2RhMLJAecC5EUXEQq
         5kut3V2nwpgu2jkgVoMAbPrVokaBuiDHKGVMDtGZFkUYxAE2Pbubb6SZvVPoxcoGTJGw
         QFXvBHyckM8i6vY/DsisXLz/Ubqsbuim9bRywASgR447QVmVD1Xjija+GoQ2vF02b6k/
         KPu+yPBs4lw/zFb4BzdPjynS1m88T3c2L0N5I9th35JvTOc6jd+OR5l6Aq5qluHYEpLY
         BJqTS/2MJ3tESpEYFILP4qxn01BEYRZR7hYBoxn6+oUNbB1EGbqEpsG4I0htv7O1HJ2c
         kMfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=hXEXWMbOy7EvPYGmgdz9sIaAr6fjmT8bpcqQalX0hC0=;
        b=EgFY0d5RjDTNHbx3LfjXm1jshal7dCCBUzIehboQAnbJpedjXYvScyRk7r5ite8NoL
         088dOifFZJBT7PwVqhytpJaF0ssaqTr4VhGPk4lm/A3gGOSo7zRP81yEiDWrHeW98lzv
         mrYPXJjG3S3s6eaoCZgxXWBjm3AtWD+ft1boQW09jqnqL1DUQBLGaC46SFiUWgn3BzEn
         Bfhxmfv4Bc64XyxaxdE8aGBadoekQHoFlB+q2TiWTHDrU/71d6/X8G2xtkxJusIIjfS3
         V3g/ScdlWij6EX96Fw8hMgP+hbHq9rtIEET5zXUTI9HuEZqvsc5mmu3NXkZ5SQateNPB
         LIeQ==
X-Gm-Message-State: AOAM530wEJyxSvPJsJRxSL9P4c5EoU6koSl3BZUOqhYJIzAaoqBNwETM
	ZkcD8BkjIR1psmS0VY6THYvmPNELo1PV2/jR0Z+9s5e44z24JO1D
X-Google-Smtp-Source: ABdhPJw/UYCfy399bFXhKMxZPqR83OxW01zucVJpp5jyyEWqZASgf5fX5nnhZ5dskrXqixFKobXanYAlPkMMlsY4JHw=
X-Received: by 2002:a4a:da4e:: with SMTP id f14mr1710534oou.40.1599831988059;
 Fri, 11 Sep 2020 06:46:28 -0700 (PDT)
MIME-Version: 1.0
References: <CADJ1cURtCsWdy6rovfgb_XPhbsTc5epCv3yLgRCLcOVjfNSFdw@mail.gmail.com>
 <CADJ1cUSum9bHHBZB3gKdXukoqqDxk_f2nO38YKEDjvyHs0=qXA@mail.gmail.com>
 <38142483.hY40ij8To5@ripper> <2590739.vkdJLyYtQh@ripper>
In-Reply-To: <2590739.vkdJLyYtQh@ripper>
From: Alessandro Bolletta <abolletta@netter.io>
Date: Fri, 11 Sep 2020 15:46:17 +0200
Message-ID: <CADJ1cUSZoW_ik=AFm8+LHY2eavo+i00=TFWmDKZnjXkbz6_JGg@mail.gmail.com>
Subject: Re: Passing VID-aware ethernet frames on plain batX interfaces
To: Sven Eckelmann <sven@narfation.org>
Content-Type: text/plain; charset="UTF-8"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1599831989;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=hXEXWMbOy7EvPYGmgdz9sIaAr6fjmT8bpcqQalX0hC0=;
	b=IWaIB45TNwW10k6eYYpVh0A0oIx51t9lFoT+v5EAuTvadtN2TCTJYzMGp5Cj3XGxsQNRx6
	LfWfMJmJS7Wx68C52SvQQ4jlmriURndOrrxUIqeuGqfKoXWnaCj4/lBaTt/MWpz/4tuH8u
	nblEEutYP+hzfGl+YhxqmDEi1quhCRo=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1599831989; a=rsa-sha256;
	cv=none;
	b=aPA97H2CbgeailUXERQSNnbXRECsblRRYsL5UWqCGjSPCb38hTM44RYbZSbe7AX8fLs/j6
	SABPi6cn6ImW5EAoZ9GMGCDizGXQqMlslHLmTXwfN+dwCnlpsTDLaifTx+UsAc/LCcQWNW
	Fqm8cy1LK4Lra1OlZ8S1m6WuyJaAICo=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=netter-io.20150623.gappssmtp.com header.s=20150623 header.b=fKjx54K4;
	spf=fail (diktynna.open-mesh.org: domain of abolletta@netter.io does not designate 2607:f8b0:4864:20::c35 as permitted sender) smtp.mailfrom=abolletta@netter.io
Message-ID-Hash: WNI3WLVPOGL7IBTFA4HTDURAGJS3EFBP
X-Message-ID-Hash: WNI3WLVPOGL7IBTFA4HTDURAGJS3EFBP
X-MailFrom: abolletta@netter.io
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/WNI3WLVPOGL7IBTFA4HTDURAGJS3EFBP/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

I see.
Ok for transmission purposes, but what if I want to receive a tagged
ethernet frame coming from the batman network?
Should I must only rely to the related 802.1q interface (eg. bat0.1)
or can I receive the whole traffic (untagged and tagged) from the
plain bat0 interface, just listening for the incoming traffic on it?
If the answer is the first choice, is it possible to have an approach
where I can receive coming from bat0 leveraging on a single interface
anyway? Could a linux bridge br0 on the top of bat0 interface make it
possible?
For example, if I connect an openvswitch port configured as trunk to a
linux bridge br0 that enslaves bat0, could I expect to see the whole
traffic inside the batman-adv mesh network (so I mean, both tagged and
untagged traffic) also flowing inside the OvS switch?
Is there also a wait to get rid of the linux bridge br0?

Thank you.

Il giorno ven 11 set 2020 alle ore 14:50 Sven Eckelmann
<sven@narfation.org> ha scritto:
>
> On Friday, 11 September 2020 14:48:19 CEST Sven Eckelmann wrote:
> > On Friday, 11 September 2020 14:19:59 CEST Alessandro Bolletta wrote:
> > > So you mean that it is not feasible to create a (single) linux network
> > > interface that let me send traffic on the batman-adv network in an
> > > untagged or tagged way, though the same interface I mean?
> >
> > batman-adv is depending on the Linux code telling it what VLAN it should
> > handle (through ndo_vlan_rx_add_vid and ndo_vlan_rx_kill_vid). So something
> > like the 8021q driver or the bridge code for vlans. Only when this was done,
> > it will also handle the addresses in TT. So no, bat0 is not enough to
> > transport something like an ethernet frame tagged as vlan1. You also need
> > bat0.1 (assuming this is the vlan interface for VID 1). But it is then not
> > really relevant for it whether the data was send through bat0.1 or was somehow
> > else tagged and then put into bat0.
>
> Btw. why are you now using VLANs on top of bat0 - weren't you trying before to
> have multiple mesh clouds by using VLAN (or VLAN-like) technologies below
> bat0?
>
> Kind regards,
>         Sven
