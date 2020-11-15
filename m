Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id A105D2B34BF
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 15 Nov 2020 12:56:44 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 7B055805C9;
	Sun, 15 Nov 2020 12:56:43 +0100 (CET)
Received: from mail-lf1-x143.google.com (mail-lf1-x143.google.com [IPv6:2a00:1450:4864:20::143])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id E712A80162
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 15 Nov 2020 12:48:30 +0100 (CET)
Received: by mail-lf1-x143.google.com with SMTP id r9so20628379lfn.11
        for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 15 Nov 2020 03:48:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=+rWu581OrazGHPv95N81dx338SLi76Bt5gvap2tKpUE=;
        b=Je54O44zy6IsoONWaK+1u6RdXVCXSsA/pujw9+ifutOOQ3ZuAqS1MTPB4Tkn766duf
         vmEmcZEpuBrSj9nOfyb7Xmh9QojBiEUhxbRCF7yhwK3bvZB8fYij7mNrCy6k0H4P3NYM
         Vccx3aXaiCuFxlA55IkxRRnG+dGmnWsiT1+5ae48PapSjDUMvTlQGgbC2zSMbXXxMtJQ
         UDr1arkQdZRLFZLL0bH//rRcE43wOAFryuIi+RTcuK89yh2kkKfujjffSvZMx8dK4w5A
         L+w9yeKTog+AjjaERJsYT055E4KqSDhUJiEiwTXz6SH3QFyUb3rUhtAJdfvZJvd7Hqeo
         NLaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=+rWu581OrazGHPv95N81dx338SLi76Bt5gvap2tKpUE=;
        b=o28LSph83SUkcNWxFuJXN5X/4tXXN0C3rdiEoKYwQoCHjAZWY/fZOeCQPn3A4WTZjT
         /kRILvLLGkhPIw07RaPcQqT2SfDwHHgOa0ZteJekgYKKppXYgdyQln34xdmuI3/lCPPk
         BIbtfxDY7OBR0UQ7GMc43+4aW3H/qdjohDv067MKHd2xDD6PqbcjfQjUb8kYg1m+EZDx
         NgTDhAIVTxmJiuuLvB963CkW5uQPzhrGzJlImlHni5aFDz5NZf3mv92pot34lJV04GZQ
         d6jkfeQjeW33GjKDDCsoLG22Vwa97CspC+e7Sw6l7eXGBq8QkekZz90eNNKVkmYSV0DZ
         +bMA==
X-Gm-Message-State: AOAM530pN5F9u76ldh+teEIJBhCsyl4oLwsS/Pax7UJCN5LpPXneKdUH
	BNw+K+ecgk63bc5fkBOKpMjDIwnZ2rykM7mhQe0=
X-Google-Smtp-Source: ABdhPJx4T3Eam7blnHBROXdm2FZnrAgELhjv7Jz3bmR0J4BkAD07w1nTgazBvqShLhD59dQAQkmDFjljSgDnT1dSeNY=
X-Received: by 2002:a19:c1c4:: with SMTP id r187mr4238777lff.518.1605440910166;
 Sun, 15 Nov 2020 03:48:30 -0800 (PST)
MIME-Version: 1.0
References: <20201115103004.30618-1-ap420073@gmail.com> <4602363.31r3eYUQgx@sven-edge>
In-Reply-To: <4602363.31r3eYUQgx@sven-edge>
From: Taehee Yoo <ap420073@gmail.com>
Date: Sun, 15 Nov 2020 20:48:19 +0900
Message-ID: <CAMArcTWH0Lk1nFOcva2+_Yhdgt9q8XA=QAVjShCFeGFoK04bdQ@mail.gmail.com>
Subject: Re: [PATCH v3 net] batman-adv: set .owner to THIS_MODULE
To: Sven Eckelmann <sven@narfation.org>
Content-Type: text/plain; charset="UTF-8"
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=gmail.com header.s=20161025 header.b=Je54O44z;
	spf=pass (diktynna.open-mesh.org: domain of ap420073@gmail.com designates 2a00:1450:4864:20::143 as permitted sender) smtp.mailfrom=ap420073@gmail.com
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1605440910; a=rsa-sha256;
	cv=none;
	b=ZG+K6K+6ZrBg+aM4JM9k+H6wbSRWF45NsWIjRXWoxKmLPdrOExCLdnMNaXl/I76blvQRb9
	iuFQ9TgDOWhYrrnDVAowCpqytILqhWI20Wv3Q8lUAhHF1tK/c80FN4SeG2WdB/B0CoL0+C
	bWw75zWlVFAIXS6OR6BpPh2vw8Y2odw=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1605440910;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=+rWu581OrazGHPv95N81dx338SLi76Bt5gvap2tKpUE=;
	b=BEn5lWgV0u8tqfM1wEey2qnWWO5gwDuM7DR75OkF3V2Id37ZxUEgbN240q1T82Tev3+Gzq
	/yKicqIEKAm2jk0sPZl/hwrZb8idsUrClN9pxqgguWRy2A6JztUUdRZOmx7vEyxJG8669e
	I9LFupwsoD5tpMTsw3Kz6I275ZBYcxY=
X-MailFrom: ap420073@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
Message-ID-Hash: 5WLVKWDVYJJKPMO436YKDJCI6OU2DJRI
X-Message-ID-Hash: 5WLVKWDVYJJKPMO436YKDJCI6OU2DJRI
X-Mailman-Approved-At: Sun, 15 Nov 2020 11:56:41 +0100
CC: mareklindner@neomailbox.ch, a@unstable.cc, b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/5WLVKWDVYJJKPMO436YKDJCI6OU2DJRI/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

On Sun, 15 Nov 2020 at 19:40, Sven Eckelmann <sven@narfation.org> wrote:
>

Hi Sven

> On Sunday, 15 November 2020 11:30:04 CET Taehee Yoo wrote:
> > If THIS_MODULE is not set, the module would be removed while debugfs is
> > being used.
> > It eventually makes kernel panic.
> >
> > Fixes: 9e466250ede3 ("batman-adv: Prefix bat_debugfs local static functions with batadv_")
>
> This Fixes: is bogus. The code was already present with the first commit
> c6c8fea29769 ("net: Add batman-adv meshing protocol"). I have now changed it
> before it was applied to the net branch.
>
> >  net/batman-adv/log.c | 1 +
> >  1 file changed, 1 insertion(+)
> >
> > diff --git a/net/batman-adv/log.c b/net/batman-adv/log.c
> > index a67b2b091447..c0ca5fbe5b08 100644
> > --- a/net/batman-adv/log.c
> > +++ b/net/batman-adv/log.c
> > @@ -180,6 +180,7 @@ static const struct file_operations batadv_log_fops = {
> >       .read           = batadv_log_read,
> >       .poll           = batadv_log_poll,
> >       .llseek         = no_llseek,
> > +     .owner          = THIS_MODULE,
> >  };
> >
> >  /**
> >
>
> General info: This causes a merge problem with the net-next branch [1] because
> the debugfs files were dropped in preparation of the Linux 5.11 release in
> 2021. I might rebase the currently pending patches for net-next to avoid this
> weird merge conflict.
>
> Kind regards,
>         Sven
>
> [1] https://git.open-mesh.org/linux-merge.git/shortlog/refs/heads/batadv/net-next

Thank you so much for fixing the Fixes tag and providing information.
Thanks again,
Taehee Yoo
