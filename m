Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id EE2A31E7513
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 29 May 2020 06:42:25 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id BB06982302;
	Fri, 29 May 2020 06:42:24 +0200 (CEST)
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id C585B8040D
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 29 May 2020 06:42:21 +0200 (CEST)
Received: by mail-wm1-x32a.google.com with SMTP id r9so1700486wmh.2
        for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 28 May 2020 21:42:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=f92aBklhrUkSsTowvMnRI+XNz5gXliR842mpsp+NDWA=;
        b=f6aDQVktA5elG3qHYo0VFCnhcdtG3mVROttV8CrKlztKDVDhouIqKTf+3bAgsYJ89X
         nYIzi9eSyRcrz81BAbyKiEIBWOMcbwmBMIJcyiIyic8O5t1YVJLXw0qTECQrux7JXHzn
         xbgG5+mNkC/tt2Hm650lsAR4y8Jm0WV6kIwsHcstfX1GbX7R66FK9GJWXsiymnm8nahz
         B8Sp5Jx7dfAvyWROlsvOvQDZS6DhKPrBYdQL5aGf94Y5Fbdjng7WCA3ZSPq1TwO3thyu
         psGMTyq9tyvYKW2wd+lu23ZZCcHhKv1heZpMPquwEfvuMlDgbaGQwlUy6MwxsApAkdFm
         UOvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=f92aBklhrUkSsTowvMnRI+XNz5gXliR842mpsp+NDWA=;
        b=mjOO+ZsGFoIO0fdmfUney9qIAOQBPF/ftbA2m49YmLm6tTt0XeI+7ViclXGrpekwvM
         +vsisFdnGuUuZ5Ez7fG2kjhRm+K0nrgWVkoPERVBhhbKN3oariwZ6hog6VYo9/Ju7jkW
         /XmJDdKQ5sTGk4+AMw5VrqQu92iYAeJEBy3/XCFPIXORfGU8SOvh9imvDvutDdGoH/Dk
         U9ya1ybJS5LTDPO+OHSZFUb6jF5A6PGkYbj9ZZRe0t9X3ZMuW7TXRYhF+dJGQ+Aq9bYT
         TR3ScxiwiA93jW+NQ73ORO3AlW8J3foyPOdgHPy6wVZTD9wUl0E4MthqA4uRc5vggDWs
         WW9Q==
X-Gm-Message-State: AOAM531sBs+XZZlNZJfFCIq5FPjfZJrY+nZDSJmc577s2dhb8ccuq7az
	xD5JXnf/4YloqjgVIadg8DBBe/Iv45eZ5CqkA6g=
X-Google-Smtp-Source: ABdhPJxRFdJsZNed3npccWnlf9n6UHujPt1CZV6MYZwsPhKmXg9ew5nivOd0VHPtbtbiQRPZZNDMD1PWG3hrr45ZMB8=
X-Received: by 2002:a1c:740e:: with SMTP id p14mr7070901wmc.155.1590727341360;
 Thu, 28 May 2020 21:42:21 -0700 (PDT)
MIME-Version: 1.0
References: <CAG5qQ7j1FzdwTqcAPcG=tBp5YTFm4UiOgVdSuk0qL5-pT6KB+A@mail.gmail.com>
 <2200656.2eICcKID6T@bentobox>
In-Reply-To: <2200656.2eICcKID6T@bentobox>
From: Xuebing Wang <xbing6@gmail.com>
Date: Fri, 29 May 2020 12:42:10 +0800
Message-ID: <CAG5qQ7j+YwcoEeGnsGZUHtd1uBN8n+BEfYqm0zp5o1B4TsT_KA@mail.gmail.com>
Subject: Re: QoS over batman-adv
To: Sven Eckelmann <sven@narfation.org>
Content-Type: text/plain; charset="UTF-8"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1590727341;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=f92aBklhrUkSsTowvMnRI+XNz5gXliR842mpsp+NDWA=;
	b=z4zfrMXlV5XTfs3W333FR1DAWDjqYt22tF6idn/kjE4qOaAxGI12oPpScmb55bvW0hzi3Q
	Rpi1gtMxz28ZW+FyBRlrSZkqiZnFD3QhFwN1/Co5IrOYGwh3U36TCRszBByORjodBJUXic
	0Qn+reDpXuzu8qDr1AoMMsQhOzo4QQg=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1590727341; a=rsa-sha256;
	cv=none;
	b=y/L3+p9LyoTJ3SvGxejwiOsPVfZO7ouctEZPyhz9KyrDPXLhtu0WQqrNCOu4M1ydJRCRfC
	MlLW8gS0KXNPjL/qu+cQT0sB+DWsm1899gu91X5zKnQFnvI5DGxV8xESg5hLntNYaclzdQ
	PDd55x3/8tPBIgzhePGNFBPP7myDrhw=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=gmail.com header.s=20161025 header.b=f6aDQVkt;
	spf=pass (diktynna.open-mesh.org: domain of xbing6@gmail.com designates 2a00:1450:4864:20::32a as permitted sender) smtp.mailfrom=xbing6@gmail.com
Message-ID-Hash: GE433ANNVNWAYEK3C2J2FY2M43SC2HYM
X-Message-ID-Hash: GE433ANNVNWAYEK3C2J2FY2M43SC2HYM
X-MailFrom: xbing6@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/GE433ANNVNWAYEK3C2J2FY2M43SC2HYM/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Hi Sven,

Thank you very much for your help. From air medium contention
perspective, 802.11e (part of 802.11-2007 and 802.11-2012) specifies 2
ways to support QoS:
-  EDCA (Enhanced distributed channel access)
-  HCCA (HCF Controlled Channel Access)

As Wi-Fi Alliance WMM (Wi-Fi Multimedia) requires EDCA, I assume ath9k
driver supports QoS (specifically EDCA) for infrastructure mode.

Any idea if anybody uses QoS (EDCA) on ath9k for IBSS which batman-adv
is based on? Thanks.

The reason I am exploring 802.11e is that we are running relatively
large batman-adv networks, and there can be multiple hops from node A
to node B, and I hope hops can quickly forward QoS traffic.

Xuebing Wang


On Mon, May 11, 2020 at 2:38 PM Sven Eckelmann <sven@narfation.org> wrote:
>
> On Monday, 11 May 2020 05:33:39 CEST Xuebing Wang wrote:
> > Hi Simon and community,
> >
> > We have been using batman-adv on OpenWRT 15.05
> [...]
> > We are exploring the idea of QoS over batman-adv to transmit small
> > quantity of high priority data. Any suggestions? Thanks.
>
> First step: Update OpenWrt to something which is not EOL since many years.
> This will also update the batman-adv version to a version which is actually
> supported in openwrt-routing.
>
> And then you will get the dsfield or 802.1Q values propagated to the mac80211
> layer (as part of the priority field of the skbuff).
>
> If you want to have QoS on a higher layer (before it enters batman-adv) then
> just use the normal queuing disciplines of the Linux kernel.
>
> Kind regards,
>         Sven
