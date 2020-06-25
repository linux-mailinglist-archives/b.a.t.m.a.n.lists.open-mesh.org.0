Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id E7CDF20A1AB
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 25 Jun 2020 17:16:32 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id B8F9C80206;
	Thu, 25 Jun 2020 17:16:31 +0200 (CEST)
Received: from mail-qt1-x844.google.com (mail-qt1-x844.google.com [IPv6:2607:f8b0:4864:20::844])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 222DA80206
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 25 Jun 2020 17:16:29 +0200 (CEST)
Received: by mail-qt1-x844.google.com with SMTP id i16so4857282qtr.7
        for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 25 Jun 2020 08:16:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=ti8tHbb6pHB2JYScfKwiarshVMkcZVmm+2z6FTuPTW8=;
        b=dVW+0PV2xXnh80Rr1H8bvF8CpytAKsDSK7AbDUYv6brhno8f51/PvMU4Oppjew1bHU
         jlKQlXHjMpn7xJUmtKmnOjkWD5Up0RkswVwi8g/rCkYXVSEFmyQl/qs/J/xpDEW7yil+
         7tFxk/EmVO5GNT/M0fvGSEXCmjclgMygZdWp2dlLh+4us9eTC/JOUiFLD7VLpXroVsyN
         WveTU6BEdK3FqeuV/UJtviti7ttb4lBw3tP6kIGF9A7x3FLhPA9R++CCZqtpLJ2NtUcN
         /QBgcLNAhyvxaVbqtVYaBbOJ7cv89C/JsXLGOuHwe42avtT3jLe0uX35PiHHglNCLa/N
         2LmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ti8tHbb6pHB2JYScfKwiarshVMkcZVmm+2z6FTuPTW8=;
        b=cUT3+CD7Bbb94bJyceFgHBd+8khzW2zcanZ23E1lGHeZioz9P4JsD+vqaXvLwvneuS
         34A9DYbtms97M4dni6bvdscxCMWH7CTuhxVGm40aet5dJsNzXEhCKCMSVQtLA0VrwZLJ
         f44A4CB75JJ28Mts3QUD4zwOIEzi9dOCOJTAkpsMZOMUdEYbG2wf/3PoQpvT8keFfnPn
         tRXqLatLTtHm9+lMGEjusJLZR+5KsmfY21aHMHE7h45M4bU+dvijgLCayh4St2KVAPak
         J2sy+PzbBztVoh7kB68jPaQjz3AlGa+swOdbM4tTSm8YJDgFXoGdXRJMY5COiXj0mXG8
         /YgQ==
X-Gm-Message-State: AOAM533J/6iCpEJMMAH1kUMvwpMISb03R8osFHyIWp7OaMXZROSipHQ1
	xA3RRJxcSw4sBRyqw6bV57UwZT2K17ZjOqFRJ9I=
X-Google-Smtp-Source: ABdhPJxbis2qMmsrKaa4Ukv0XGR66tN9o8D24RyYVs7WI8sFcGLbY/qmiDMbSaXde1oa+cJVE//a3dU7ReiOI3qTSro=
X-Received: by 2002:ac8:75c4:: with SMTP id z4mr13050173qtq.371.1593098187655;
 Thu, 25 Jun 2020 08:16:27 -0700 (PDT)
MIME-Version: 1.0
References: <CADhofF8ExwW+kYPDTX1W4ZZz_6gs3zEvzu_7oe1WrkP3-+fpiQ@mail.gmail.com>
 <1752987.3nn1Mqi339@bentobox>
In-Reply-To: <1752987.3nn1Mqi339@bentobox>
From: Rahul Bothra <rrbothra@gmail.com>
Date: Thu, 25 Jun 2020 20:46:16 +0530
Message-ID: <CADhofF-z2bM0GxO=CeSuj3hBcBB6q8-jTwN7BFuh4SQ8EY17Sw@mail.gmail.com>
Subject: Re: bits 10 to 15 in OGM packets
To: Sven Eckelmann <sven@narfation.org>
Content-Type: text/plain; charset="UTF-8"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1593098189;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=ti8tHbb6pHB2JYScfKwiarshVMkcZVmm+2z6FTuPTW8=;
	b=QJdSCxtreZ6gw0BwzzsOTUKMa18AUzrT3FKmmRb43kidpuidoZfuXWoFBh8LzydspwAwp7
	OsTrbbZrTPrVpW7OmKf4qCb1IHjxx8hWeivhCXp3YSV2jNHIcQkaZrW5pR1VP5Nw40HwPU
	rNZOoWQPznYvnZ+ZS13nNHHVXIv6Lrw=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1593098189; a=rsa-sha256;
	cv=none;
	b=3kbhg6lKr+2KGXgKMPFp83F4+I5CU65pU//Q8YBh7grOlNk1e9yZKDSZWKg8t6m5RArAdR
	d9eFcn21YrKKypMO8ACiyDgSqZTSn4vKayQxmJsWQnKUTlTneRmUEpSpLTm61HuHCKCUFn
	DPdkGadC+gr3+Zta9vKWY4yXMTkU690=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=gmail.com header.s=20161025 header.b=dVW+0PV2;
	spf=pass (diktynna.open-mesh.org: domain of rrbothra@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=rrbothra@gmail.com
Message-ID-Hash: 46OPNASWMDR52MIRFV4AOZ3YC2R3YALS
X-Message-ID-Hash: 46OPNASWMDR52MIRFV4AOZ3YC2R3YALS
X-MailFrom: rrbothra@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: b.a.t.m.a.n@lists.open-mesh.org, Tom Henderson <tomh@tomh.org>, tahiliani.nitk@gmail.com
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/46OPNASWMDR52MIRFV4AOZ3YC2R3YALS/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Thanks, is there a published documentation / memo for B.A.T.M.A.N. V
currently present in the kernel tree?
If not, I'd be happy to join in writing one as I work on the NS-3 model.

Thanks
Rahul Bothra

On Thu, Jun 25, 2020 at 7:36 PM Sven Eckelmann <sven@narfation.org> wrote:
>
> On Thursday, 25 June 2020 15:22:46 CEST Rahul Bothra wrote:
> > I was going through the Internet Draft for B.A.T.M.A.N, and wanted to
> > confirm if the bits 10 to 15 in the OGM packet are supposed to be all
> > zeroes always?
>
> Please don't implement the legacy draft which was never finished. This is
> really, really, really, really, really, really, really, really, really,
> really, really, really, really, really, really, really, really, really,
> really, really, really, really, really, really, really, really, really,
> really, really, really, really, really, really, really, really, really,
> really, really, really, really, really, really, really, really, really,
> really, really, really, really outdated.
>
> But the batmand layer 3 compat version 5 handled these as reserved flags. So
> it would have been a good idea at that time not to leave them in a random
> state and just set them to 0. This would have allowed announcements of
> additional features in the future.
>
>
> See https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/
> include/uapi/linux/batadv_packet.h for the B.A.T.M.A.N. IV and B.A.T.M.A.N. V
> layer 2 packet definitions.
>
> Kind regards,
>         Sven
