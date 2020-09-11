Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 9910A266023
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 11 Sep 2020 15:25:33 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 4B6DB807F8;
	Fri, 11 Sep 2020 15:25:32 +0200 (CEST)
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com [IPv6:2a00:1450:4864:20::62f])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 7B0E780312
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 11 Sep 2020 15:25:30 +0200 (CEST)
Received: by mail-ej1-x62f.google.com with SMTP id q13so13768049ejo.9
        for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 11 Sep 2020 06:25:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=6C5A5L479YWYX1zGP4Ze/kVwzqHC4QHbgMZaeRHkQ4I=;
        b=uq5izlzA9wBh2uJLp5+ATMstk7TaMda/clWJN2WrdY/24mETe5EdGec4ZnlRLnkCIW
         jqyjxiJL4axLtkirAv6OFFwnQzI1/ETa+rcXnXkvf2JO7VfULgJNVDkcIxFwQY0elwBE
         ndXug+5qWKqgDOXc0EllRp0/QIOH1wnspDet5SFHjOEBNOEzX9tchjxqrjQvAu/9SRod
         GfJtOlrbC9e51t5NAaYChp5ObZiO7a5bh6fpWUOwCb7fSRPIET0+lkZz6Bwb+cmlETdf
         ywCsv36r+97nBzEEcPrJ1ZfmiQarZ3OwsfSuem2VEGN45aJSDvXZY2E4C/P/lWe3HOUD
         zR0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=6C5A5L479YWYX1zGP4Ze/kVwzqHC4QHbgMZaeRHkQ4I=;
        b=gh6bIo7ZpDuGt/OGTV8BV4a0c8/iP0I/dO9X5rWUM0Ypuz3rXhJgI7ATGHxr7d+Xzx
         nNUE6cDk8h7TjuCiVXMnGweHY+BGYSq+ZDBeQ/irpZ0L1uV0x7o9myEd2+ga4HcWTNBc
         141cgnTeEqTk9tq1V7MAiWYmL4iEWTzAM63hFrxIHjDuLWZgFT6fKKWsmGoX9GUONCEM
         /3wlLfA4NieyLC4iSnpRz+s3+55dyIf/2je5vwjifn31qToeMVy8cDqpgbpMSK12jy9d
         hRmxP31y4Pf5DjKqiTB49ZotnAoM7tefJgpHM05M+lvtlDq3RcZX2NFKS7UkNs2r/4om
         9OKA==
X-Gm-Message-State: AOAM533VJ8IPMvZmcZ9hTWXkPip9Rs7+SWn9Tjx3ozJns3u9gei4GWbe
	wY+nKHVBQSAHtT9iXzXuR63Q4zK9mAR0SAeJeUReYz3vdfI=
X-Google-Smtp-Source: ABdhPJwFMQybyT3O4b4HSE1txpL6zQhaH2XRzRlOx2KT46/j9iLEhGZR/f6vFfUeoNgpxy/gfgUNAvdvh1EHFsZXsDY=
X-Received: by 2002:a17:906:5206:: with SMTP id g6mr2116652ejm.292.1599830729660;
 Fri, 11 Sep 2020 06:25:29 -0700 (PDT)
MIME-Version: 1.0
References: <CADJ1cURtCsWdy6rovfgb_XPhbsTc5epCv3yLgRCLcOVjfNSFdw@mail.gmail.com>
 <CADJ1cUSum9bHHBZB3gKdXukoqqDxk_f2nO38YKEDjvyHs0=qXA@mail.gmail.com>
 <38142483.hY40ij8To5@ripper> <2590739.vkdJLyYtQh@ripper>
In-Reply-To: <2590739.vkdJLyYtQh@ripper>
From: dan <dandenson@gmail.com>
Date: Fri, 11 Sep 2020 07:25:17 -0600
Message-ID: <CAA_JP8URSGzzCRqG4wrOB585PqXyMud2AA8w0W1SAstxeHtYhg@mail.gmail.com>
Subject: Re: Passing VID-aware ethernet frames on plain batX interfaces
To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
Content-Type: text/plain; charset="UTF-8"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1599830730;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=6C5A5L479YWYX1zGP4Ze/kVwzqHC4QHbgMZaeRHkQ4I=;
	b=zH+9iATu6FXlHUlWL5RfsaHE3wuCynA3K/b2eSVBvfD0IBOV7wBotDY+25gQ9qv1LWMrgy
	sPxJJjzKZ1dwFBYp/1kABQGqI4laANbdiA5zfwZarrUZzhH5lCl/SNtlXBBPr13JvD1Yma
	pxXstwBC5d+GfjXZe0hBMIBGsoxJTbg=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1599830730; a=rsa-sha256;
	cv=none;
	b=uAtXs2iVtqCaAlHJ2Cmo8X0JsvNsluzNS1C8Ie1vryPwhLkC581IN4Mc5N0A1/WaZizKry
	GJ9kK8IiKD67l8GQf1LOWtAe1i4GDwf4Jyet/pOLSyknukGK2k3fLXsil7G80EokrxQiAI
	aLbeQ8VAcjA/6+vZ8XJgagxr0ttXqHM=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=gmail.com header.s=20161025 header.b=uq5izlzA;
	spf=pass (diktynna.open-mesh.org: domain of dandenson@gmail.com designates 2a00:1450:4864:20::62f as permitted sender) smtp.mailfrom=dandenson@gmail.com
Message-ID-Hash: NVDSH5PCSE6MAH6J3B7I6ITVQT4KP5L7
X-Message-ID-Hash: NVDSH5PCSE6MAH6J3B7I6ITVQT4KP5L7
X-MailFrom: dandenson@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/NVDSH5PCSE6MAH6J3B7I6ITVQT4KP5L7/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

I see value in both methods, but for my use case I'm most interested
in bat0 as the 'fabric' so the batman-adv nodes don't need any
additional configuration to carry the VLANs.

so, based on the previous statement, is the way to make bat0 agnostic
about VLANs to create a bridge br0 and put bat0 in br0 and then make a
br0.10 vlan interface?


On Fri, Sep 11, 2020 at 6:50 AM Sven Eckelmann <sven@narfation.org> wrote:
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
