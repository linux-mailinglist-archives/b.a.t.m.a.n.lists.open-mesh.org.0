Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EF11262A15
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed,  9 Sep 2020 10:20:38 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 21364807A5;
	Wed,  9 Sep 2020 10:20:36 +0200 (CEST)
Received: from mail-oi1-x236.google.com (mail-oi1-x236.google.com [IPv6:2607:f8b0:4864:20::236])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 3B92B8037E
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed,  9 Sep 2020 10:20:33 +0200 (CEST)
Received: by mail-oi1-x236.google.com with SMTP id u126so1505216oif.13
        for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 09 Sep 2020 01:20:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=netter-io.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=KjbvdTA7zbIKNWFPcuXuAA2BSyJq0wJY/8yuQEhiZJA=;
        b=wyqMxKJCthOkwEGy6V9VZJdd/qm0uutzcHsDBhf3lE9AZOtCHsz+EHOYs4fJ5GRfM6
         TltbceL4LG4xEDKSbRVLDxCfvs+asFh1ZvNaBpwjeesDd15/4w54Zi71/kNU24mWH7sx
         NZgq27R7crdHhko4eXM8EY00T43I0J3rVZRsCk+4RRhUsTWLAHfJg+gWux1V+MyyhLmA
         r/HCvE5e/2ZZXtZayUqu8Txi2gY+IimOuiadq8kMbzDwNS1EoV9ZWoopQsQDfv/H77jH
         ddUne5R1akaldLppbN2vkNTR3ZI7aPEmyH3QngeWN12XWR/fJlhqDr1BzHofA3DVCyh4
         90jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=KjbvdTA7zbIKNWFPcuXuAA2BSyJq0wJY/8yuQEhiZJA=;
        b=hzhVz2PB1EYXZtH2E8TgfMb371Xzg57LOFOx2hhyKDt/6DWHGWy+MgyynY++Q/1HzH
         ou7YKplU6xze+VpTqVRZfBPlYc91yj6gNIFF7R0htc8S6svG5WiR57YLzFBcp1D+Laud
         maj19vr13VEjfK+Ve2jm9EFtnoaKBnz0X1bkMU7raciq1SzH+aJXDkPpzSzG5MiHK8Yj
         n+sIjCzfk/wWOcjVzxn358Omk78DTWnnWWM8oOMxe/ErynDpn+m/UIUMZ+dluDxn901f
         ONYH9i8AkJ6HPj2Vc08gdbDpf1Mt+30UFc3OXm22GmuLTh6Ak5pY67VEDJnzM9M4qQi/
         scuA==
X-Gm-Message-State: AOAM533Tf5Pvt7uJM8NF5nSavh9FdRs7UnBG5BTUK8NG5VQAG8FWjOZZ
	FNGnqCPqPZQxB4w00RCQeOf1dwVCrp2VnjxlweZZYKcsUpg=
X-Google-Smtp-Source: ABdhPJwAEAtPtrpJIhfqL0JhWpbhSbV+Kg1U54v5Ma0vCVtygc1xsAE264b6rUcwdhaNb1q1x+xLUWgyqYwctQshv+0=
X-Received: by 2002:aca:af94:: with SMTP id y142mr1839753oie.141.1599639631195;
 Wed, 09 Sep 2020 01:20:31 -0700 (PDT)
MIME-Version: 1.0
References: <CADJ1cUTq=Bpj9SQdS5Y6aXKcPR9XqkxKn_Sj5sRMmN1R=qX_2g@mail.gmail.com>
 <17582207.Wjj8Q8S2kB@ripper>
In-Reply-To: <17582207.Wjj8Q8S2kB@ripper>
From: Alessandro Bolletta <abolletta@netter.io>
Date: Wed, 9 Sep 2020 10:20:20 +0200
Message-ID: <CADJ1cUSNtDrR-C-L7MHXF3JohbkmBbQBsFzBvBxE2WntUd9Yqw@mail.gmail.com>
Subject: Re: Running multiple batman-adv namespaces on the same broadcast domain
To: Sven Eckelmann <sven@narfation.org>
Content-Type: text/plain; charset="UTF-8"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1599639633;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=KjbvdTA7zbIKNWFPcuXuAA2BSyJq0wJY/8yuQEhiZJA=;
	b=FCbYuYzeENQw7xxLLATSgRzhPe7J6NhqS9NCUlPEnYkcx7nSVaS1op0HIQJiwLwHOzzpoC
	NnVF68OjxC+gNJOc4iXjNbk17ernlLGv3miVpbZDmub8UY62Ln4sRkebJaw2Vqjg8qfBpO
	mgzyt1ZVohRTXC0p/iwYLqSknuiBE1A=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1599639633; a=rsa-sha256;
	cv=none;
	b=kY34grucMkSfWupiY5dNMJE9dA8qWe4dEa+ka921luIIRepsinYlgBUnUyEaLD/UO76O3t
	FfyQO4PP+ecsJFHMGHjNZF6wQjYkVsxXW6udcz1T8pWQ/U9MXOY1DN1RLiTCUzuNM5BsAq
	uNLMlquNr6T3Dhj4wb2VeS5FpiyNku0=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=netter-io.20150623.gappssmtp.com header.s=20150623 header.b=wyqMxKJC;
	spf=fail (diktynna.open-mesh.org: domain of abolletta@netter.io does not designate 2607:f8b0:4864:20::236 as permitted sender) smtp.mailfrom=abolletta@netter.io
Message-ID-Hash: YTPZW342KHKXPO4HGNQUS54RXFKOI2B3
X-Message-ID-Hash: YTPZW342KHKXPO4HGNQUS54RXFKOI2B3
X-MailFrom: abolletta@netter.io
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/YTPZW342KHKXPO4HGNQUS54RXFKOI2B3/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Thank you for your tip.

Just one more info: is there an hard limit for the number of "bat"
interfaces on the same host?
Moreover, is the multiple batX namespaces a scenario that it is
supposed to work fine, is it well tested or it still does need some
love?

Il giorno mar 8 set 2020 alle ore 13:28 Sven Eckelmann
<sven@narfation.org> ha scritto:
>
> On Tuesday, 8 September 2020 13:23:32 CEST Alessandro Bolletta wrote:
> > i'm trying to reproduce a PoC where i'm running multiple batman-adv
> > instances(eg. bat0, bat1, batX) on the same broadcast domain.
> [...]
> > Is this kind of scenario supported?
>
> No, you need something which implements separation of top of ethernet to avoid
> that bat0/bat1/.../batX see each other. E.g. VLAN, VXLAN, ...
>
> Kind regards,
>         Sven
