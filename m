Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id EE75C209E8A
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 25 Jun 2020 14:35:52 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id D7275809B7;
	Thu, 25 Jun 2020 14:35:51 +0200 (CEST)
Received: from mail-lj1-x236.google.com (mail-lj1-x236.google.com [IPv6:2a00:1450:4864:20::236])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 0A47580314
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 25 Jun 2020 14:35:49 +0200 (CEST)
Received: by mail-lj1-x236.google.com with SMTP id s1so6338681ljo.0
        for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 25 Jun 2020 05:35:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=BrSjd4bMFBy5YpMhMbOpe8lpqSEe7vsaL5pUXyUXnOw=;
        b=QnY5sfIiYz/dyA5MNszxTWi5Z/NVxnNp6gCAf7hOn3oj8AmWYXABbl7KnO7tgazVjc
         ZYdQVY8ee0YXx4EYKYq/k4cDYrq66S8AB996SFlLEeMdyj6hrML2cZPRuTUgMDNwLvgD
         uIDMH2035X+qisyxq3pZ4yPJLwjwCAl1XW1C0UtePjTetdzd4fEnmFR1pVEw4I5UAxfF
         h2FzbYzFjbybvTKp5EVCJNK8Lh1QImsQeXe4PWhFevFVwpVcrGtbQPFyboXX7srf63UG
         Z5DTd6cYZvr13riKFpdzjzqWR257Ko/g51QAWgMpEqkwQUHgpz2ZDR+DdZrAe6s4faqs
         KGJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=BrSjd4bMFBy5YpMhMbOpe8lpqSEe7vsaL5pUXyUXnOw=;
        b=UWitB/FWfGv1t3jKdZ5z1aa68/WBmVr0cX9W9GmKg5yFbmgP16IfLy6KZYLmRYOsc+
         yVi78r5hK43B7V2CkPeRQn8tvwoGXGQVKJNY4X0TtjWGHCIVRH3WIgjSPU08pEcc6lmi
         IWdAK9GMSnWA5ZDh3BCePIP7FtugpSA9lAFbWtKFbnHuokjursL4dmEQh1xsx7MFm77L
         mv7zmLUK3jpJK6dXrStLaLN1L47f8GW/PTBPlyexaPOUYGMh8Bt8crZRcpqkHcIyG2Gr
         xQwzYjv3LF0viMKh8h2UIi2VgMPGtTBnWrBhXFz5oMFb1zLzjO5ExryJnoyMr0oBp1Li
         GTxg==
X-Gm-Message-State: AOAM530fuTzXy3Qv1n1YKv2wkeSt0FIs+OD0DXKjPzn9RflEJEZ/nPwG
	jNyzWmn/2e0/bp3xUCIn2XFweeuNZr253wpJJcvpY3rMAkE=
X-Google-Smtp-Source: ABdhPJzepRcpGDSWXZe4nJtbgn1BagPjn1+cgaMKiNOoM+Lwwmmm7lRZg7XnbP0k5NOLgd2/M2USeDzWxAcDVxaVra4=
X-Received: by 2002:a2e:890d:: with SMTP id d13mr17113079lji.75.1593088548220;
 Thu, 25 Jun 2020 05:35:48 -0700 (PDT)
MIME-Version: 1.0
References: <CADg1mwL-H_PULsXqVb0r58k0_zkAYWTOm=cM5QZrDoqRxKqdLw@mail.gmail.com>
 <2538029.hbpEtBUb1E@prime>
In-Reply-To: <2538029.hbpEtBUb1E@prime>
From: Mark Birss <markbirss@gmail.com>
Date: Thu, 25 Jun 2020 14:35:37 +0200
Message-ID: <CADg1mwLp=nk5W4L47P-4qvTKB9wyiL9wO7vSR7pqjhhSwaDnSw@mail.gmail.com>
Subject: Re: Batman-adv Tweaking - bonding
To: Simon Wunderlich <sw@simonwunderlich.de>
Content-Type: text/plain; charset="UTF-8"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1593088549;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=BrSjd4bMFBy5YpMhMbOpe8lpqSEe7vsaL5pUXyUXnOw=;
	b=EV0afPEcCOPhnm6USEfyfSGo+OHd8r/3ptkM8XJ/MU/VnAR4fHERfXgv9GZz/b+Dyian7r
	DaXRgVsyfJmKcRSlclkkMAiOnrWKS1Xg5gOVGRg28C68RoiM23c5h4bfdS78vatah+5YqS
	8j/BLJVCzD8z0xqzaClNMHUJdYOdcNc=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1593088549; a=rsa-sha256;
	cv=none;
	b=jD+w2cm4pF/zSfaQXzxcJ3AVKqc95I9AUaaBfEVNexdt4GhvODJ+RvZU/BBghADZEZfgGZ
	CUt64z1LQj2/lNb+nj++tAo9dKNXS7ipjfE4gjoLVuszYOWQgUcJFIkvUEjVd3aCVLSWK+
	1MY0S/AeXfcboTKy4s3RckMdfkE85Tg=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=gmail.com header.s=20161025 header.b=QnY5sfIi;
	spf=pass (diktynna.open-mesh.org: domain of markbirss@gmail.com designates 2a00:1450:4864:20::236 as permitted sender) smtp.mailfrom=markbirss@gmail.com
Message-ID-Hash: QQC7M2DIKS7L5LTKDIFCJIMOYVUB7ZKW
X-Message-ID-Hash: QQC7M2DIKS7L5LTKDIFCJIMOYVUB7ZKW
X-MailFrom: markbirss@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/QQC7M2DIKS7L5LTKDIFCJIMOYVUB7ZKW/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Ah, okay understood. Thank you for the explanation.

My focus currently is on batman-adv over ethernet.
I will get around to see how this works out

Regards

On Thu, Jun 25, 2020 at 2:23 PM Simon Wunderlich <sw@simonwunderlich.de> wrote:
>
> On Thursday, June 25, 2020 2:14:06 PM CEST Mark Birss wrote:
> > Hi
> >
> > With reference to the wiki topic at
> > https://www.open-mesh.org/projects/batman-adv/wiki/Tweaking
> > bonding
> >
> > Available since: batman-adv 2010.1.0
> >
> > When running the mesh over multiple WiFi interfaces per node
> > batman-adv is capable of optimizing the traffic flow to gain maximum
> > performance. Per default it operates in the "interface alternating"
> > mode (which is suitable for most situations) that switches the WiFi
> > interface with each hop to avoid store & forward. Alternatively,
> > batman-adv can be switched into "bonding mode" in which batman-adv is
> > using all interfaces at the same time to send & receive data. However,
> > this mode is only recommended in special one-hop cases. You can read
> > about our alternatebonding test results to see what suits you best.
> >
> >
> > The wiki shows that this is the only change required on both nodes to
> > use it in default interface alternating mode
> >
> > batctl meshif bat0 bonding enabled
> >
> > The wiki does not say how the throughput was measured after bonding was
> > enabled
> >
> > Will batctl tp be ok?
>
> Hi Mark,
>
> bonding was measured on 802.11a/g routers (yes, before there was 11n) back in
> the day using iperf. There was no throughput meter at this point, but it might
> work just as well. In general, there were many situations where bonding
> actually decreased the throughput because the buffers of the radios were not
> synchronized, causing packet re-ordering on the receiver which TCP is very
> sensitive to. In general, I can't really recommend to activate bonding at this
> point, but you can enable it and see if it helps you.
>
> Cheers,
>       Simon
