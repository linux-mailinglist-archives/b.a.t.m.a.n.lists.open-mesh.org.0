Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E3D335DA21
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 13 Apr 2021 10:33:06 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 29105814EE;
	Tue, 13 Apr 2021 10:33:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1618302785;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=0Lq58bYZ4Q8ZY2t4S6QuoaJHzOMj7IXAbMKJ26MD4WU=;
	b=NmatXZWeAHTGEXfkG7YV+/DMEMmriG4LboQbrs6bDyqUE7jff64bln1gHjNrlhKmrKqZFY
	+KKDym4EX+x7grGqwJvLQsDW2ceJX1PNO5tXeUCxf31u7N1cdp1bBWWB7vd3JcQ/8IRrYP
	eFEt5FO0gNtdLCQFIMnxAD2c+w6PgYs=
References: <00000000000073afff05bbe9a54d@google.com> <00000000000020564605bedb716e@google.com>
 <20210401133037.GA1052133@rowland.harvard.edu>
In-Reply-To: <20210401133037.GA1052133@rowland.harvard.edu>
Date: Tue, 13 Apr 2021 10:32:50 +0200
Subject: Re: [syzbot] WARNING in ieee802154_del_seclevel
To: Alan Stern <stern@rowland.harvard.edu>
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
X-Mailman-Version: 3.2.1
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/4YMZNST5YN3NSBXOOHHDK66LXCFFWD2G/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>
MIME-Version: 1.0
Message-ID: <161830278446.1314.15897464295017178506@diktynna.open-mesh.org>
From: "Dmitry Vyukov via B.A.T.M.A.N" <b.a.t.m.a.n@lists.open-mesh.org>
Cc: syzbot <syzbot+fbf4fc11a819824e027b@syzkaller.appspotmail.com>, a@unstable.cc, alex.aring@gmail.com, b.a.t.m.a.n@lists.open-mesh.org, David Miller <davem@davemloft.net>, info@sophiescuban.com, Jiri Kosina <jkosina@suse.cz>, Jakub Kicinski <kuba@kernel.org>, LKML <linux-kernel@vger.kernel.org>, linux-wpan@vger.kernel.org, mareklindner@neomailbox.ch, netdev <netdev@vger.kernel.org>, stefan@datenfreihafen.org, syzkaller-bugs <syzkaller-bugs@googlegroups.com>, Dmitry Vyukov <dvyukov@google.com>
Content-Type: multipart/mixed; boundary="===============4826855006011690555=="

--===============4826855006011690555==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============4826855006011690555==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from mail-qk1-x731.google.com (mail-qk1-x731.google.com [IPv6:2607:f8b0:4864:20::731])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 4E6B78024F
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 13 Apr 2021 10:33:02 +0200 (CEST)
Received: by mail-qk1-x731.google.com with SMTP id o17so8580923qkl.13
        for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 13 Apr 2021 01:33:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=8nrqvVxvltpzH7RYZqpvLzY8XnwRwce2q6/g0kk8slc=;
        b=QAOG0RG8adp5ycX0lJkHwnEJPjkPyROHvocgANgIV0TKKHsqDrBvWVkwkq0BMm3fl0
         pREAlHcCXQ5OYela9E9tkJ+wZ2gDhE734EADbRRQ+Ag9u5PxdtAOEXpyaC8+pYFRDZmK
         l8brOtdr8mZdh2GQ+udPuWKEUwz5HbwWkfsBfEdZrslLlB+s3NDz+mf5B3Hx7cbqaBnj
         lA7G3VKGQUJ0eAyrGYvUHMDbMd0HEVuDJwjc4SxzCwXRuUZyClngI3BKmCWooSluJggB
         oq/VXu9s2qS04lfZtV1WOSmyn5+nDLEV3hZCamvFizFtXYnll6OekZ/41AIHgdRlRKlI
         sKcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=8nrqvVxvltpzH7RYZqpvLzY8XnwRwce2q6/g0kk8slc=;
        b=YIm+uIfow4iR9vVootYKzVgIMKG5scTrOJ6xOE3ewre4rhxP/hUMgM1hXfKD/RBhcx
         YIO3WGszFWcLyJ48AFqu0HLe8DC+o1cvsW3l9wAgp5yhoa/FxUyI/bGo42mcoy4xC/v9
         Tz1w3i9/nLwV4sKS751nPUGgm/r8aVFFILy62VM3AXkOny5leVyJ2FR93d5DoFOkVqM4
         O0EIfn/QOCLXsBJrX4luszObtUjdbYFZaCUlT3r/m4CAiQdIx5gPCsSy9hb86yl77P4m
         R3ZEFnz5mo56wMLmeaoy1VusrEX0LCsr0G7UmtboyKSTGEdtoUbKYkzeWAeDsS/A2r0y
         MfNw==
X-Gm-Message-State: AOAM533IU+2U10PIkBvswdXxMId/sZtR8orazJR8C3WSKUlEV+UB/nWH
	BIM4y2JERCGzrs7ab0ZPVUqi1UdGkULjTrSQR9euTw==
X-Google-Smtp-Source: ABdhPJz+1ReMEouOSg1zddV3GpTwRAtGceqbdLT5e7gbK5z0KeIyb0y7vjOodqSziBb/LhSo5KaJKtJZG8vCt6jwMU4=
X-Received: by 2002:a05:620a:a47:: with SMTP id j7mr8648989qka.350.1618302780925;
 Tue, 13 Apr 2021 01:33:00 -0700 (PDT)
MIME-Version: 1.0
References: <00000000000073afff05bbe9a54d@google.com> <00000000000020564605bedb716e@google.com>
 <20210401133037.GA1052133@rowland.harvard.edu>
In-Reply-To: <20210401133037.GA1052133@rowland.harvard.edu>
From: Dmitry Vyukov <dvyukov@google.com>
Date: Tue, 13 Apr 2021 10:32:50 +0200
Message-ID: <CACT4Y+ZMFwTLrdK+8YZifJR_7V21gwOxbVKnbRP3Yj=YQ+k7xQ@mail.gmail.com>
Subject: Re: [syzbot] WARNING in ieee802154_del_seclevel
To: Alan Stern <stern@rowland.harvard.edu>
Content-Type: text/plain; charset="UTF-8"
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=google.com header.s=20161025 header.b=QAOG0RG8;
	spf=pass (diktynna.open-mesh.org: domain of dvyukov@google.com designates 2607:f8b0:4864:20::731 as permitted sender) smtp.mailfrom=dvyukov@google.com
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1618302782; a=rsa-sha256;
	cv=none;
	b=gpWWs5EogbJM4nyicPn3KXjBYFJuqjqmhoSFwg9SVOqCjTkuIeCy0Pwq365g4fwLPpKvYK
	snf4cTlmd5v8Ip5RiiX2EbrvbbME3GCILS/Y9kUfGLTDth1G7C0FpSnBahkKJavUJqYuo3
	Hr0uFPhG3RHKJhYokEXcFM/BWLU0Iak=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1618302782;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=8nrqvVxvltpzH7RYZqpvLzY8XnwRwce2q6/g0kk8slc=;
	b=nxeDJBXTJZNJ4vGBOpnZpSWTXSWQcgPrHoAmwm3pXyGUVbqjFQy0YR1a7fkQUqmSJt/9oZ
	Zy6PGDzy9b+4piBFB39PredXLOgVrPaKEWFu0V+DaTKJjSmYWepu3qHn9CCWkw1koYqi/8
	F9TH7z0QaeB85luZInVHYSBZZ4LGXdE=
Message-ID-Hash: 4YMZNST5YN3NSBXOOHHDK66LXCFFWD2G
X-Message-ID-Hash: 4YMZNST5YN3NSBXOOHHDK66LXCFFWD2G
X-MailFrom: dvyukov@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
CC: syzbot <syzbot+fbf4fc11a819824e027b@syzkaller.appspotmail.com>, a@unstable.cc, alex.aring@gmail.com, b.a.t.m.a.n@lists.open-mesh.org, David Miller <davem@davemloft.net>, info@sophiescuban.com, Jiri Kosina <jkosina@suse.cz>, Jakub Kicinski <kuba@kernel.org>, LKML <linux-kernel@vger.kernel.org>, linux-wpan@vger.kernel.org, mareklindner@neomailbox.ch, netdev <netdev@vger.kernel.org>, stefan@datenfreihafen.org, syzkaller-bugs <syzkaller-bugs@googlegroups.com>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/4YMZNST5YN3NSBXOOHHDK66LXCFFWD2G/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

On Thu, Apr 1, 2021 at 3:30 PM Alan Stern <stern@rowland.harvard.edu> wrote:
>
> On Wed, Mar 31, 2021 at 02:03:08PM -0700, syzbot wrote:
> > syzbot has bisected this issue to:
> >
> > commit 416dacb819f59180e4d86a5550052033ebb6d72c
> > Author: Alan Stern <stern@rowland.harvard.edu>
> > Date:   Wed Aug 21 17:27:12 2019 +0000
> >
> >     HID: hidraw: Fix invalid read in hidraw_ioctl
> >
> > bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=127430fcd00000
> > start commit:   6e5a03bc ethernet/netronome/nfp: Fix a use after free in n..
> > git tree:       net
> > final oops:     https://syzkaller.appspot.com/x/report.txt?x=117430fcd00000
> > console output: https://syzkaller.appspot.com/x/log.txt?x=167430fcd00000
> > kernel config:  https://syzkaller.appspot.com/x/.config?x=daeff30c2474a60f
> > dashboard link: https://syzkaller.appspot.com/bug?extid=fbf4fc11a819824e027b
> > syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=13bfe45ed00000
> > C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=1188e31ad00000
> >
> > Reported-by: syzbot+fbf4fc11a819824e027b@syzkaller.appspotmail.com
> > Fixes: 416dacb819f5 ("HID: hidraw: Fix invalid read in hidraw_ioctl")
> >
> > For information about bisection process see: https://goo.gl/tpsmEJ#bisection
>
> It seems likely that the bisection ran off the rails here.  This commit
> could not have caused a problem, although it may have revealed a
> pre-existing problem that previously was hidden.

Hi Alan,

Yes, bisection log shows it was derailed by:
KASAN: use-after-free Read in batadv_iv_ogm_queue_add
and:
BUG: MAX_LOCKDEP_CHAIN_HLOCKS too low!

https://syzkaller.appspot.com/x/bisect.txt?x=127430fcd00000


> By the way, what happened to the annotated stack dumps that syzkaller
> used to provide in its bug reports?

Nothing has changed in this respect, they are still in bug reports:
https://lore.kernel.org/lkml/00000000000073afff05bbe9a54d@google.com/
--===============4826855006011690555==--
