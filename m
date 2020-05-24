Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id E0E601E0043
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 24 May 2020 17:49:39 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id AC7C481196;
	Sun, 24 May 2020 17:49:38 +0200 (CEST)
Received: from mail-io1-xd30.google.com (mail-io1-xd30.google.com [IPv6:2607:f8b0:4864:20::d30])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 9425A801E5
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 24 May 2020 17:49:36 +0200 (CEST)
Received: by mail-io1-xd30.google.com with SMTP id u23so3366283iot.12
        for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 24 May 2020 08:49:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=i5UYjkO+6TmEWAQ8wLtyzMqVRizD+qpa2PEAOTZw/ko=;
        b=i61GXdJKipnMw61o4rIM+NQa6JNUVSVqhNoPRbE6QJ0NODqAGCusuQ8rxYh5TfFwMz
         VlPci1Jtvzw2xcaQb+hn/8GRWbMvh4BPp0UI6+lmxGUNpo2+8aZ/SUV9pSmc2ABz3WE/
         KbvHOfWMOVHpixjKFF0pB7WSLOFcVXzslqZ3zM+EN3Cnt4nZuX1b3bOGZ7r9/fB8SviQ
         5C8aaFaerzM2ZaiDAZf4z5jduH9adK/RxFvD6fmv3nMl0nK1x7gVjA+hQzi9+mkpRs0b
         vEiTCkQ39r9Hzy47MGsdJYRAC8uFWFmJDoLtteQ68U2fHd8bRpa0WcjmADeDegJ1/x2C
         PFpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:content-transfer-encoding;
        bh=i5UYjkO+6TmEWAQ8wLtyzMqVRizD+qpa2PEAOTZw/ko=;
        b=HqSXH7ae+xTPTrSZ7QLkgXXQrShB5eHN8tnxjJqChQ8tRY3NAnxUnkoSgm9EfzCdux
         q9r3pbfdcdaXwxxcPsZK7LHuCHY3ZANUJXVgBIPpi2AspEDuh/KRjSb+08Lt8To34/rn
         dnQwJK8wgduU2GsYrfiH7P5GNZkoiVWekLWDml7YTp+0Pbdwlwm4zg/fHH3IBP6H8ZF5
         LcSkehPqd2J+m3bVCSK+8at3LiJq9bqXK626yPg7k33yEcUzY2ZhQBBLuU2XRI+jZ0uL
         zLA5yqARUIw8z0z6GD07LAylN3+WvvWQIw26AKPMSWyrzyGlq7+8Svh7wGOJQHj/U2Q6
         VLaQ==
X-Gm-Message-State: AOAM533XQV4u6Q7uBswWN4k810sME4rUau7fyGlVtJCy2iRoDfhXt49W
	uEagu3tzX91SckzVF5PYPYQSOXV2iQJoCXq2meHyUNvx
X-Google-Smtp-Source: ABdhPJzhABQGVgW/t0uu6EXlBtMXG0WBizOko/k+z2T1FoJEUShM7xBLzPDJYS1kZeyLxmPdvbafHDYkP8fWK7uW5pg=
X-Received: by 2002:a02:c804:: with SMTP id p4mr9960054jao.115.1590335374996;
 Sun, 24 May 2020 08:49:34 -0700 (PDT)
MIME-Version: 1.0
References: <CAOVt3fEEaLx8-58NjVXU0L6XToB5FPvGjFaEoZBeRCL+Eh-QWw@mail.gmail.com>
 <4485194.d5W8GeZ6RB@sven-edge> <CAOVt3fE8-U73oJV2XjnxFzWc35LAMeXeaNsTUUgPaLqvchv-Cw@mail.gmail.com>
 <6286065.m5U1xfpyP1@rousseau>
In-Reply-To: <6286065.m5U1xfpyP1@rousseau>
From: Alexey Ermakov <axel101@gmail.com>
Date: Sun, 24 May 2020 18:49:23 +0300
Message-ID: <CAOVt3fHXmMbTeg1SN9Ngpf7ju6FeUvWzFa9ZsSBLuVhjF503_w@mail.gmail.com>
Subject: Re: Batman-adv packet retranslation
To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1590335376;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=i5UYjkO+6TmEWAQ8wLtyzMqVRizD+qpa2PEAOTZw/ko=;
	b=hCYoWr9tesQ2ScyGIQb6y9zeQfeXCEPWcKwLBpA7evFgjVMn31cesl2YksiR5faywMfKN5
	gSkvTs/MJNB1D+qRvuocYoGV8EcS0nqYgS7oXiuznu5onQveqaDc5JQTsCBEJOXoG5V4W2
	HRX3Y51rUqizASrd4HUTFn9wZ0qZi4k=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1590335376; a=rsa-sha256;
	cv=none;
	b=zxBZ5PYIUj3ucPwMmwSa+CkULJe0+/5MnHMBEXErP4fgKCpd16Q6DqUlqoGkz5wsoPkcFL
	dZIQAbCtOvO8b3quExVXRhMCI3mi4CgFbruHELRcLbLVFz4pwrHExhV65Cs4Fi4RAjdvap
	bIO6lvXmQuuu2ZaZ62zKsi6bK7qotMo=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=gmail.com header.s=20161025 header.b=i61GXdJK;
	spf=pass (diktynna.open-mesh.org: domain of axel101@gmail.com designates 2607:f8b0:4864:20::d30 as permitted sender) smtp.mailfrom=axel101@gmail.com
Message-ID-Hash: RBUEBAS5DJ3GNXK24DOC7DOULEGKVYG7
X-Message-ID-Hash: RBUEBAS5DJ3GNXK24DOC7DOULEGKVYG7
X-MailFrom: axel101@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/RBUEBAS5DJ3GNXK24DOC7DOULEGKVYG7/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Yes, in real world I set throughput overriode for each interface, but
in my example only one interface configured in batman network and if
it works as you said there are several questions:
- Why direct connections work properly (I mean connections Node1-Node2
and Node2-Node3 ) even with this throughput?
- Why this scheme works then all nodes had seen originators before
throughput overrided?
- If I override throughput to 10000, for example, will it work properly?

=D0=B2=D1=81, 24 =D0=BC=D0=B0=D1=8F 2020 =D0=B3., 18:29 Marek Lindner <mare=
klindner@neomailbox.ch>:
>
> On Sunday, 24 May 2020 16:43:55 CEST Alexey Ermakov wrote:
> > [B.A.T.M.A.N. adv 2020.1, MainIF/MAC: eth0/00:04:23:dc:3b:01
> > (bat0/62:7f:0f:87:43:78 BATMAN_V)]
> >   Originator        last-seen ( throughput)  Nexthop           [outgoin=
gIF]
> > * 00:04:23:dc:3b:10    0.580s (        0.1)  00:04:23:dc:3b:10 [      e=
th0]
>
> BATMAN V chooses routes based on link throughput. If the throughput drops
> below a certain value the route is dropped. As you can imagine, a through=
put
> of 0.1 is pretty close to non-usable.
>
> BATMAN V attempts to auto-detect the throughput using various methods whi=
ch
> does not work in a virtualized environment. I suggest you go with the per=
-
> interace /sys/class/net/<iface>/batman-adv/throughput_override setting.
>
> Kind regards,
> Marek Lindner
>
