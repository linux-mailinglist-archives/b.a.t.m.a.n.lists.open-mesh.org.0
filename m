Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 38C13280E3A
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri,  2 Oct 2020 09:48:59 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id F1C76808CE;
	Fri,  2 Oct 2020 09:48:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1601624938;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=lseAI46RIjE7cE3N9FzF0VrSYKpYAhMMd2Yhsa/WXfY=;
	b=vTrwGSeaV33gDEJuKI7dGd1N4lp3cij8b5PYDF/6o1OAow/FfYO0CY8Sc42vMrbCMmV3hp
	hetvMLsXF6AmX6BdLNa4UpDe6KSvtUw93Gm8FrBfeeVBS9vtphFZUYHb19AvX4TfBM2suG
	O54GmV3+3WjZUsMWTeXGYJ4RhSzXlz8=
References: <0000000000000a954d05b0a89a86@google.com> <7bf217ced62816b1bd3404bcfe279082347fb265.camel@sipsolutions.net>
In-Reply-To: <7bf217ced62816b1bd3404bcfe279082347fb265.camel@sipsolutions.net>
Date: Fri, 2 Oct 2020 09:48:42 +0200
Subject: Re: WARNING in cfg80211_connect
To: Johannes Berg <johannes@sipsolutions.net>
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
X-Mailman-Version: 3.2.1
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/OGFGQ3HBGZPPLRGMMN5R6EWFVL6GMFAC/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>
MIME-Version: 1.0
Message-ID: <160162493735.1228.2242460276279240551@diktynna.open-mesh.org>
From: "Dmitry Vyukov via B.A.T.M.A.N" <b.a.t.m.a.n@lists.open-mesh.org>
Cc: syzbot <syzbot+5f9392825de654244975@syzkaller.appspotmail.com>, a@unstable.cc, b.a.t.m.a.n@lists.open-mesh.org, David Miller <davem@davemloft.net>, Dave Chinner <david@fromorbit.com>, dchinner@redhat.com, Christoph Hellwig <hch@lst.de>, Jakub Kicinski <kuba@kernel.org>, LKML <linux-kernel@vger.kernel.org>, linux-wireless <linux-wireless@vger.kernel.org>, mareklindner@neomailbox.ch, netdev <netdev@vger.kernel.org>, syzkaller-bugs <syzkaller-bugs@googlegroups.com>, syzkaller <syzkaller@googlegroups.com>, Dmitry Vyukov <dvyukov@google.com>
Content-Type: multipart/mixed; boundary="===============3488443565586699611=="

--===============3488443565586699611==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============3488443565586699611==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from mail-qk1-x744.google.com (mail-qk1-x744.google.com [IPv6:2607:f8b0:4864:20::744])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 3FDA58018B
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri,  2 Oct 2020 09:48:55 +0200 (CEST)
Received: by mail-qk1-x744.google.com with SMTP id 16so487261qkf.4
        for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 02 Oct 2020 00:48:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=UIoT0KYRho8EGp0xd1RVifhf89KYf/eZdNSMQw9Fl2c=;
        b=KF8vocwJVAwDHRnCkO791we5Tsz3XslsuI+o4XKhiY4TQFeyoFGgSgxnmr41CzTwjs
         6LkF6vM4VyVU+oHrAUzhZEke8sfS8j3KwohCegEY8/ECZEV9U2nGr72nFL5WwISJmy/3
         xzGwe25YNwuOQ8kiMUgiTpyLpViUWBt1a0otWkBd1kVhKSlyRxNLPCuZg2nM9hxuVIV0
         jAveXobAF6itQHLcMB7RQnSlCJNK1gnlN/yPA77ZrSUoSuSV7iget4eg8SFH816kE2MG
         TXHYj7Wc1riU/gVRS4JJUPRctEyf63jK23cpsxwwYExWDJOXOH0gcfw/67vnEKLEB4SL
         RZqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=UIoT0KYRho8EGp0xd1RVifhf89KYf/eZdNSMQw9Fl2c=;
        b=lFl+nBNmguSqNhvK4AfCXirICi0r0oK1NJFN4B8hocnsDEYBPHjX0RF3/XfOvl4ul7
         wCuTgkLmKXcfLqZmC00U/yboeBOwaNWNvdWm4QRils8E7ah7E6RhUn2dx2mSsVccptmo
         XDYRie/R06vYk/aCfiz3OzjFtWcnz8bri2lYpPc4Md2N/lSdSetlcm2qidZhAwPwmNsD
         IBrk1L1GraRRZPwlZOZflMcOoQZZ+dq9VsdXrowgQY1CIEqln4QrnNoqNqk2zUp2aiXt
         LjrCqLdvY7I3DvtehmxYPeYWrZtbm8sbSorPGoz75rWqEZJXYX4oI6mBeEyhPdX6t//c
         xRXg==
X-Gm-Message-State: AOAM5302L4vSpLBLlKdcCM6QMGJgRSu7YEMQZD9EAAwa6PKvjShB+ax4
	MTzg8y1a+Wo6akxDWwLSW1hB2GKAl3cZaPMfe0B1sA==
X-Google-Smtp-Source: ABdhPJyiEMQMpBHdT5fw2pCxev3Pe74VR5qJAG/39e/Fq2IoWw28zUsrF0YvE1A+U4HWKAGdc2ooXJw8AspXu1x7CI8=
X-Received: by 2002:a37:54a:: with SMTP id 71mr789273qkf.407.1601624933696;
 Fri, 02 Oct 2020 00:48:53 -0700 (PDT)
MIME-Version: 1.0
References: <0000000000000a954d05b0a89a86@google.com> <7bf217ced62816b1bd3404bcfe279082347fb265.camel@sipsolutions.net>
In-Reply-To: <7bf217ced62816b1bd3404bcfe279082347fb265.camel@sipsolutions.net>
From: Dmitry Vyukov <dvyukov@google.com>
Date: Fri, 2 Oct 2020 09:48:42 +0200
Message-ID: <CACT4Y+aRSVEJqZ_aCN6avc4Z66-Kt0C-QNS1vyNg4wnbUrWW9w@mail.gmail.com>
Subject: Re: WARNING in cfg80211_connect
To: Johannes Berg <johannes@sipsolutions.net>
Content-Type: text/plain; charset="UTF-8"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1601624935;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=UIoT0KYRho8EGp0xd1RVifhf89KYf/eZdNSMQw9Fl2c=;
	b=Dl6cS3m4XA0zZlDivdTjlpqPj7BZaOJf3A3iBMMQe+DanaZ8tSHDUvGn41Qc6cW4KPUW+0
	RrtSfBj05AtHEx5H5G5DEtGW8eoJy/KMLAg9tU7qMigTZ65zwWWub1qzldkJTVqgIm7wSE
	4RIJO/O7PUzCf6hZ4CKs7KiISbFjTOo=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1601624935; a=rsa-sha256;
	cv=none;
	b=0VuWvlT54IbK47pJWaQuHAN2uEUHdeOyrFiDndoF1pQfiiYC786REFOuA81TBMhPKKpTdE
	WtbsA4pHhd4CZfev6buVEkNIhRq2Ts+e19aIrfawMvyOrspwfI9inXhUeRBDV4PFtWdzuI
	TncgzMjq4Pyv8xKuu20MhyFu4iI/EIY=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=google.com header.s=20161025 header.b=KF8vocwJ;
	spf=pass (diktynna.open-mesh.org: domain of dvyukov@google.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=dvyukov@google.com
Message-ID-Hash: OGFGQ3HBGZPPLRGMMN5R6EWFVL6GMFAC
X-Message-ID-Hash: OGFGQ3HBGZPPLRGMMN5R6EWFVL6GMFAC
X-MailFrom: dvyukov@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
CC: syzbot <syzbot+5f9392825de654244975@syzkaller.appspotmail.com>, a@unstable.cc, b.a.t.m.a.n@lists.open-mesh.org, David Miller <davem@davemloft.net>, Dave Chinner <david@fromorbit.com>, dchinner@redhat.com, Christoph Hellwig <hch@lst.de>, Jakub Kicinski <kuba@kernel.org>, LKML <linux-kernel@vger.kernel.org>, linux-wireless <linux-wireless@vger.kernel.org>, mareklindner@neomailbox.ch, netdev <netdev@vger.kernel.org>, syzkaller-bugs <syzkaller-bugs@googlegroups.com>, syzkaller <syzkaller@googlegroups.com>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/OGFGQ3HBGZPPLRGMMN5R6EWFVL6GMFAC/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

On Fri, Oct 2, 2020 at 8:27 AM Johannes Berg <johannes@sipsolutions.net> wrote:
>
> On Thu, 2020-10-01 at 21:31 -0700, syzbot wrote:
> > syzbot has bisected this issue to:
> >
> > commit 16d4d43595b4780daac8fcea6d042689124cb094
> > Author: Christoph Hellwig <hch@lst.de>
> > Date:   Wed Jul 20 01:38:55 2016 +0000
> >
> >     xfs: split direct I/O and DAX path
> >
>
> LOL!
>
> Unlike in many other cases, here I don't even see why it went down that
> path. You'd think that Christoph's commit should have no effect
> whatsoever, but here we are with syzbot claiming a difference?
>
> I mean, often enough it says something is "caused" by a patch because
> that caused e.g. generic netlink family renumbering, or because it
> emitted some other ioctl() calls or whatnot that are invalid before and
> valid after some other (feature) patch (or vice versa sometimes), but
> you'd think that this patch would have _zero_ userspace observable
> effect?
>
> Which I guess means that the reproduction of this bug is random, perhaps
> timing related.

Hi Johannes,

syzbot provides bisection log which usually answers the why question.
In this case bisection was diverged by an unrelated kernel bug. That's
the most common reason for wrong bisection results. If you are
interested in more reasons for wrong bisection results, some time ago
I did a large analysis of bisection results:
https://groups.google.com/g/syzkaller/c/sR8aAXaWEF4/m/tTWYRgvmAwAJ
--===============3488443565586699611==--
