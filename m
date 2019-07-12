Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [IPv6:2a01:4f8:141:3341:78:46:248:236])
	by mail.lfdr.de (Postfix) with ESMTPS id D9C3D66518
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 12 Jul 2019 05:38:36 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id B895081620;
	Fri, 12 Jul 2019 05:38:31 +0200 (CEST)
Received: from mail-yb1-xb42.google.com (mail-yb1-xb42.google.com
 [IPv6:2607:f8b0:4864:20::b42])
 by open-mesh.org (Postfix) with ESMTPS id 57FE980529
 for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 12 Jul 2019 05:38:28 +0200 (CEST)
Received: by mail-yb1-xb42.google.com with SMTP id j199so3390044ybg.5
 for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 11 Jul 2019 20:38:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=hXAu6n3bZzhHx9kK2I6p8MabO82OkmAGhR3+J+eYhPw=;
 b=W+4bcWgLmnEVVaU0wa3dEzuljcHU0o5WLB4DRhgwR3Ct8lyTo7R4tZtLhKWcLi2PSd
 eZ3HZ1QNkJAPuoD6hVrChUeWqg+5SStTlWeerdIcTBR/mRtbchZxTa8BfzcCUFwdil+v
 CQ/RpwKgi1XWwLVnq1wUmBCtC66Fm2sqnFQi1a0oKEcSkTDknvJOWPfnSaQ3OHH7AMax
 wbaLIW4yAhqsL3j8hTfHr5aCdEFsQUuI4E6Uj49ybnmy7gb2fvd9hLYkN8ZprLL64Bwj
 959/1zNg5d0Gusn2CUHA+A2h/1XyX8OkDVxfXvy86L9JkGDWPLbcrRKpM3FuYkYoG+l+
 EG8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hXAu6n3bZzhHx9kK2I6p8MabO82OkmAGhR3+J+eYhPw=;
 b=AEule4Ay0i1YetBfz/3U1RsWrKxQMX3u9dSAX3hQ572vhKaP2RTyqdwQChl0At7GP9
 e2nKUHqnqzhknaGSDju1LaOmAdwMYadJo7mSXkpj4q+6nGO5Rnxa2jkBuorDM17A+7Sq
 KXT+mvwMv+zJpkQlzIy7brXSWQIvRpewVHAOhwVLk4b576EXqDOrOMFg9RqQ0nwO2Gc+
 wLs7saX5AxN7rJnKm5R9wGA7OJQ/flnl0T59dqo1fiy+lbw8HnnRopppBzUEYjpa6JBs
 oV/tZ92doKb0Ka3n7Q6O8uXt8H6JAZETLyadTc/TUVhgKm3FHciVN18juIGSmIo4Q/6H
 DxeA==
X-Gm-Message-State: APjAAAWhF7ez29CXza2rVn9s6vnDpUQGfj1PUeQh51B74nu2QuuQlFzD
 fA5+Xe+Iq2fbIRfj465tp90gmKnKuwL2iclEBABFOA==
X-Google-Smtp-Source: APXvYqwfn6mRGIrVC18koObttdg/IksYWmriXR29Dt+efPE0Uva9jdU1mF8SbeT1Blih1ozdSTy8UcmrpkVmTsVamx8=
X-Received: by 2002:a25:2085:: with SMTP id g127mr4915279ybg.442.1562902706954; 
 Thu, 11 Jul 2019 20:38:26 -0700 (PDT)
MIME-Version: 1.0
References: <CAH-WULkD2g8KvzWT0=CxcvF5ja54p3qW_OZukM52gtoTkQXb_w@mail.gmail.com>
 <10085991.EQm6kMviFh@bentobox>
In-Reply-To: <10085991.EQm6kMviFh@bentobox>
From: Ricardo Cerrato <kurschev@gmail.com>
Date: Thu, 11 Jul 2019 22:38:15 -0500
Message-ID: <CAH-WUL=KX0SNLJYu+FhFCQFLma7PDE9UPA=FM5va5LFuG-KWHQ@mail.gmail.com>
Subject: Re: How to run batman-adv on interfaces in AP / Station mode?
To: Sven Eckelmann <sven@narfation.org>
Content-Type: text/plain; charset="UTF-8"
X-BeenThere: b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 2.1.23
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
List-Unsubscribe: <https://lists.open-mesh.org/mm/options/b.a.t.m.a.n>,
 <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=unsubscribe>
List-Archive: <http://lists.open-mesh.org/pipermail/b.a.t.m.a.n/>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Subscribe: <https://lists.open-mesh.org/mm/listinfo/b.a.t.m.a.n>,
 <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=subscribe>
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n@lists.open-mesh.org>
Cc: b.a.t.m.a.n@lists.open-mesh.org
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

Hi Sven,

You're right! I was looking on the wrong place.
Following your advice I was able to use create the meshpoint and AP
with the same usb wifi stick and batman-adv is working as expected.
I promise the next time I'll only ask questions related to batman.

Thank you!


On Thu, Jul 11, 2019 at 1:48 AM Sven Eckelmann <sven@narfation.org> wrote:
>
> On Thursday, 11 July 2019 05:44:07 CEST Ricardo Cerrato wrote:
> > I recently configured a mesh with two nodes running Debian and
> > batman-adv and two wireless adapters TP-LINK TL-WN422G configured in
> > IBSS mode, and to allow non-mesh clients (like my cellphone) to use
> > the mesh I had to use another wireless adapter (same TL-WN422G)
> > configured in AP mode and bridged to the mesh interface (bat0).
> > Recently I found in the FAQ:
> >
> > "Can batman-adv run on interfaces in AP / Station / etc mode ?
> > Q: Can BATMAN advanced run on interfaces in AP / Station mode?
> > A: Yes, because batman-adv doesn't know anything about stuff below the
> > ethernet interface. So you could also use it over layer 2 ethernet
> > tunnels, wifi ap, wifi sta, wifi adhoc, ethernet or even write a
> > virtual interface which prints everything on paper and scans the paper
> > on the remote machine (but you should be fast or increase the ogm
> > interval)."
> >
> > I guess it is possible use the same adapter as AP and mesh client..
>
> Yes, but this is a question for the linux-wireless folks. And the FAQ entry
> doesn't talk about this at all. You want to run AP and IBSS (which most likely
> doesn't work with your adapter; search for vif and interface combinations) in
> parallel and the FAQ entry talks about running batman-adv on top of something
> which is not IBSS.
>
> > I my tests I found the AP mode and IBSS modes are mutually exclusive,
> > but I didn't find examples on how to create a mesh without IBSS...
>
> There are plenty of examples out there which for example use 11s/meshpoint
> (with mesh_fwding set to 0) as an actual useful way to run batman-adv without
> IBSS. Just create the AP as normal and then create the the secondary vif for
> the mesh. It seems like most adapters today support meshpoint better than IBSS
> and thus you can just try to switch your underlying mode from IBSS to
> meshpoint. I also posted the commands to create a meshpoint interface on this
> mailing list a while back [1].
>
> You can then just add the meshpoint interface to batman-adv and use it like
> IBSS (just with the difference that it is NOT IBSS).
>
> But this doesn't seem to be batman-adv related question but questions for the
> linux-wireless community.
>
> [...]
> > valid interface combinations:
> >  * #{ managed, P2P-client } <= 2, #{ AP, mesh point, P2P-GO } <= 2,
> >    total <= 2, #channels <= 1
>
> Here you can see that you can for example run an AP interface and mesh_point
> (just make sure that you disabled mesh_fwding) at the same time. batman-adv
> would run on top of the meshpoint interface.
>
> Btw. you will most likely observer some odd behavior when you try to scale the
> mesh - these are most likely caused by the limitations [2] of the usb wifi
> stick.
>
> Kind regards,
>         Sven
>
> [1] https://lists.open-mesh.org/pipermail/b.a.t.m.a.n/2015-December/013924.html
> [2] https://wireless.wiki.kernel.org/en/users/drivers/ath9k_htc
