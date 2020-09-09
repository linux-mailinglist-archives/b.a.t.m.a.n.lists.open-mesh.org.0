Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id A246A262AEF
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed,  9 Sep 2020 10:50:41 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 59DD9805CE;
	Wed,  9 Sep 2020 10:50:40 +0200 (CEST)
Received: from mail-oi1-x233.google.com (mail-oi1-x233.google.com [IPv6:2607:f8b0:4864:20::233])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 21C9A800A1
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed,  9 Sep 2020 10:50:37 +0200 (CEST)
Received: by mail-oi1-x233.google.com with SMTP id t76so1597237oif.7
        for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 09 Sep 2020 01:50:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=netter-io.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=qR1tkUwwZh7NMeFymsIP93HU4yOIDlhFkhX1tacmm0s=;
        b=kmrx4t4hon0fQqSKvT8Qa5wsEshleq0j/TqWSlKaungyxoOtrt0DxiT/LdDdyxWpa9
         q170qHwrs58HjmLgU3XxRVcV6vfXeeMclwNvINvoK7SA+sMO0F1qwmUIAmIs/F8CyPF/
         yVuq/0p/Xl4K9wvWdEeLlaoErWrGEAWthSY9IgkDba0ThnrwR01Bx3n/yHABcitIM8NS
         zK5qOVEQaVdjy+qREMAMZu8j+RP4VWBAqf1tTbCm9oaKsxBXEOC5CXrK2aOyVjiG7iX3
         AzHc9dmJDKxAkNE7YA041F1gxdvcRpQGoYstMZZtgvF2tOKfNrFbgKCWVI0Kw7a9GB0R
         g+OA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=qR1tkUwwZh7NMeFymsIP93HU4yOIDlhFkhX1tacmm0s=;
        b=fBi+jkY9PRxN8xAiQht4FzMnuofCm4HyFSBp1YbEgxJA1jW5Y0FtdPNoRBZPluJdlp
         6XcCVqtAcGQp5qSy3Z5VTA9TLQ4mvD3qSnfVWubxrAnB8HHx8CVCcGuHyVvm2cf/5YMx
         ypmwjdZDD5XaOVYHO7mj+WvzdG832EjtMutRI0Rat8e7uicncba0MI0Gp0GixcGN25iU
         N/+yUI+A+EqoU3iwRcIyFwohX7DP6Nz3WBLJmSFtClmZdhIZHDBnsK0nw06aUUc7JsYi
         ks5RUKkHCyoaZvV8BrmD/bjgbuORQeVpKReiM7gKB+08m3NjbhONgiLISXiUkc4nHwMh
         vq2Q==
X-Gm-Message-State: AOAM530OLl9PtF/wvKY9KYdmng4yi3rack8dBFu5iNSIOfgq2PQU9XA1
	bgIAy8skhLRwX0EzrknOdMhp8q5QY+GxshrMeD4EHaAr5qc=
X-Google-Smtp-Source: ABdhPJzq3nM81OeW3ipz57CQcM1roQ07HHXDCyAR2AIOwauNkXKt8I+V+hVGJflPpkZh2c6Sn5I4dmKbfphsdiZ3UmE=
X-Received: by 2002:a05:6808:183:: with SMTP id w3mr819393oic.176.1599641435335;
 Wed, 09 Sep 2020 01:50:35 -0700 (PDT)
MIME-Version: 1.0
References: <CADJ1cUTq=Bpj9SQdS5Y6aXKcPR9XqkxKn_Sj5sRMmN1R=qX_2g@mail.gmail.com>
 <17582207.Wjj8Q8S2kB@ripper> <CADJ1cUSNtDrR-C-L7MHXF3JohbkmBbQBsFzBvBxE2WntUd9Yqw@mail.gmail.com>
 <34120415.8pMx1AJBNe@ripper>
In-Reply-To: <34120415.8pMx1AJBNe@ripper>
From: Alessandro Bolletta <abolletta@netter.io>
Date: Wed, 9 Sep 2020 10:50:24 +0200
Message-ID: <CADJ1cUSff_g-tB28HHeR5GrYHHtch7f+bdQQ85HdZx4dhLdTvw@mail.gmail.com>
Subject: Re: Running multiple batman-adv namespaces on the same broadcast domain
To: Sven Eckelmann <sven@narfation.org>
Content-Type: text/plain; charset="UTF-8"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1599641437;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=qR1tkUwwZh7NMeFymsIP93HU4yOIDlhFkhX1tacmm0s=;
	b=o3P9QpNha995em/MumQYidVkV2EAXaILICBlA/5xMem1tXTNGa/rnhy0RksENk8iRmp6HL
	hQiOFF2z5oIID5JJszQpOTwQ49cVW9KTmgQic7hmqH7rpHO57irsP2vrbnOmz5tUf8aBRL
	cGEV81XjO/LQW68Ul0zYiM0UMJ4QR24=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1599641437; a=rsa-sha256;
	cv=none;
	b=pYtcbvjUxtybrvUGjGemxVkdUXv3IUOBtqrbPPba0zdLlnV9gAqNJk9YNUtv3MkwLQGQ0S
	GikuQSrxc1qhK0mUcxcntsvHvXutMXBctYnPe4hiQbSQXe1XxQCh8ZZZXSyrTOuOvgMC9C
	ibx5vt/GcuEl/0WQZfZOPOwraTTvw+s=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=netter-io.20150623.gappssmtp.com header.s=20150623 header.b=kmrx4t4h;
	spf=fail (diktynna.open-mesh.org: domain of abolletta@netter.io does not designate 2607:f8b0:4864:20::233 as permitted sender) smtp.mailfrom=abolletta@netter.io
Message-ID-Hash: V4I6RHQPXQ6TQZCGG2SFDXPQGXQUU27Z
X-Message-ID-Hash: V4I6RHQPXQ6TQZCGG2SFDXPQGXQUU27Z
X-MailFrom: abolletta@netter.io
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/V4I6RHQPXQ6TQZCGG2SFDXPQGXQUU27Z/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Il giorno mer 9 set 2020 alle ore 10:30 Sven Eckelmann
<sven@narfation.org> ha scritto:
>
> On Wednesday, 9 September 2020 10:20:20 CEST Alessandro Bolletta wrote:
> > Just one more info: is there an hard limit for the number of "bat"
> > interfaces on the same host?
>
> But yes, running multiple batman-adv interfaces on the same host works fine. I
> am currently using 8 in parallel. The lower/hardif/slave interfaces are using
> VXLAN (to connect some servers in other datacenters), fastd (to connect remote
> "clients") and some other "ethernet" protocol compatible things.

Great, this is exactly what I'm looking for! I'm running this for some
experimental purposes. Are you running VXLANs in multicast modes?

>
> And the hard limit is most likely the number of netdev's the Linux kernel can
> create (id wise and memory wise).
>
> > Moreover, is the multiple batX namespaces a scenario that it is
> > supposed to work fine, is it well tested or it still does need some
> > love?
>
> I don't like the word "namespaces" here. Because this reverse to a completely
> different concept in the linux kernel.
>

Yeah, I'm sorry but I didn't know how to call them. "Mesh clouds" is a
more exact term to call our batX?

> And I don't know what you will end using - so I cannot say if this will work
> or is tested.
>

I will use them in a scenario where a have 3 hosts connected by an
ethernet card each and a switch. Then, I have to connect at layer 2
these hosts to batman, but I need to separate their traffic through
different batman-adv "mesh clouds" (in my case I can't use VLANs, QinQ
or stuff like that to do so)

> Kind regards,
>         Sven
