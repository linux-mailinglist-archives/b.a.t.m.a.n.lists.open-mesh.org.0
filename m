Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [IPv6:2a01:4f8:141:3341:78:46:248:236])
	by mail.lfdr.de (Postfix) with ESMTPS id B906710C597
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 28 Nov 2019 10:03:48 +0100 (CET)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 7981480E42;
	Thu, 28 Nov 2019 10:03:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1574931819;
	h=from:from:sender:sender:reply-to:reply-to:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:in-reply-to:in-reply-to:
	 references:references:list-id:list-help:list-unsubscribe:
	 list-subscribe:list-post; bh=zOjd98lTlEu2V7zTkOBk3gHS+0XXSHbGGkX+NHWtE94=;
	b=frj8b0oa7g57oWpBqjaQlfAoj5jjVgUSx0SNagGg6eSQxFPHHvjgvmcgabTYNBwn2Wv7nv
	cywPEM0D6wAeRuI7vQnkJFlVsdx1BiEbbtvGO56AX1n7xDPhg/3SzuRdRY2pwCYu6nDo2K
	9gjbf3J9CG88PbAYjPkfb3Kj+MkeHp8=
References: <0000000000009aa32205985e78b6@google.com>
 <2825703.dkhYCMB3mh@sven-edge>
 <CACT4Y+YwNGWCXBazm+7GHpSw-gXsxmA8NA-o7O7Mpj3d-dhGYA@mail.gmail.com>
 <1809369.KjlzdqruN6@sven-edge>
In-Reply-To: <1809369.KjlzdqruN6@sven-edge>
Date: Thu, 28 Nov 2019 09:54:15 +0100
To: Sven Eckelmann <sven@narfation.org>
X-Mailman-Approved-At: Thu, 28 Nov 2019 10:03:35 +0100
MIME-Version: 1.0
Message-ID: <mailman.17.1574931816.8300.b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
From: "Dmitry Vyukov via B.A.T.M.A.N" <b.a.t.m.a.n@lists.open-mesh.org>
Precedence: list
Cc: Dmitry Vyukov <dvyukov@google.com>, wang.yi59@zte.com.cn,
 b.a.t.m.a.n@lists.open-mesh.org, Jakub Kicinski <jakub.kicinski@netronome.com>,
 mareklindner@neomailbox.ch, vinicius.gomes@intel.com,
 netdev <netdev@vger.kernel.org>,
 syzbot <syzbot+a229d8d995b74f8c4b6c@syzkaller.appspotmail.com>, a@unstable.cc,
 Jamal Hadi Salim <jhs@mojatatu.com>, LKML <linux-kernel@vger.kernel.org>,
 syzkaller-bugs <syzkaller-bugs@googlegroups.com>,
 syzkaller <syzkaller@googlegroups.com>, Cong Wang <xiyou.wangcong@gmail.com>,
 =?UTF-8?B?SmnFmcOtIFDDrXJrbw==?= <jiri@resnulli.us>,
 David Miller <davem@davemloft.net>
X-Mailman-Version: 2.1.29
X-BeenThere: b.a.t.m.a.n@lists.open-mesh.org
List-Subscribe: <https://lists.open-mesh.org/mm/listinfo/b.a.t.m.a.n>,
 <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=subscribe>
List-Unsubscribe: <https://lists.open-mesh.org/mm/options/b.a.t.m.a.n>,
 <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=unsubscribe>
List-Archive: <http://lists.open-mesh.org/pipermail/b.a.t.m.a.n/>
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n@lists.open-mesh.org>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
Content-Type: multipart/mixed; boundary="===============2581830478180884959=="
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

--===============2581830478180884959==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============2581830478180884959==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Return-Path: <dvyukov@google.com>
Received: from mail-qv1-xf41.google.com (mail-qv1-xf41.google.com [IPv6:2607:f8b0:4864:20::f41])
	by open-mesh.org (Postfix) with ESMTPS id 2080E80642
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 28 Nov 2019 09:54:28 +0100 (CET)
Received: by mail-qv1-xf41.google.com with SMTP id s18so10038574qvr.4
        for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 28 Nov 2019 00:54:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=HoqmZ4ISGst+6RxBOTmccwmK74t4nIgQ0Amev8cPgJw=;
        b=cM7lGvanWO5KiySXbzZYYcyrA6cgoAnT7nFXRAyOZh1whtmTQn7+SREmxD8m2HFExg
         ZJTsDpaLLOX0RWst+X5UrTSn4MSOol0pqlgKEs2hfycLAGBl2V75cW8BAcy03nr+9UHu
         O3VSnrploTWsSndKiNJWN98XCGaKsd+dogwMqEY5xD9H5+YCUC/c0DYmEL+iL6KuKyEE
         xwdLNQ4G1Y+ixl27uFSGtaEsfRk08Jprnp6Jk507XQ2+l0SL3FqgwaSTJ7xWF7eSYDtu
         89u/jkRigRPi66mttLx1EgLjn3M2n7B+AasFgU4AFuolX7BzG6nFUEWR45Id8SavuzfE
         jRLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=HoqmZ4ISGst+6RxBOTmccwmK74t4nIgQ0Amev8cPgJw=;
        b=LDxsH27aHOBewpSvz3SxS6T43vnVa2Pl2PWhswtsaknU9svBVxMncZbXU2c6/zRVgL
         cRprF5W6nlOhPYRKf5YWLfGaGtKszxbRqxYLBc1MeCi1po5ONDWAfpJGxqDxRu20xlo3
         p2L/9DcR6PDTp2DXesVISUiZrePv2OhEfhrszMQBE2amuC0kdEw6ZCDPXNsS2v2ixbLW
         VaeVXK94rc2VNKd1FX0UyvXM7eltphlUctkGBSoIrpAIHQGkMSDhL4gYo2VLswg4ZpVS
         ikbQ/XCRiyrT7l3FQ45Ue13o4i5u3QNDvXt9FeveCoutrHc5nWktK12+DeSzUFaDyvjA
         Vj4w==
X-Gm-Message-State: APjAAAX8Pw6NLa+knaH51C+zMHBQzPMN/n4FtuF4+0lXC34Z8r6PMd9a
	dDFSiMpxx9mZusBKEjfQ3QK0N4lSit8dKRfHe1oM7Q==
X-Google-Smtp-Source: APXvYqwketckvdqNsCiapXjNAvjDeAQUljd4H4OG+vca5gsS5F+c5jxbOi0LjNMMxQMyhUr3JUWAVPy9Os8b4xje1Fs=
X-Received: by 2002:a05:6214:8ee:: with SMTP id dr14mr9867650qvb.122.1574931266487;
 Thu, 28 Nov 2019 00:54:26 -0800 (PST)
MIME-Version: 1.0
References: <0000000000009aa32205985e78b6@google.com> <2825703.dkhYCMB3mh@sven-edge>
 <CACT4Y+YwNGWCXBazm+7GHpSw-gXsxmA8NA-o7O7Mpj3d-dhGYA@mail.gmail.com> <1809369.KjlzdqruN6@sven-edge>
In-Reply-To: <1809369.KjlzdqruN6@sven-edge>
From: Dmitry Vyukov <dvyukov@google.com>
Date: Thu, 28 Nov 2019 09:54:15 +0100
Message-ID: <CACT4Y+abQSWfiN16BwXFOBi+d3CFGk53oj+5+zZwQPbcYu-Rew@mail.gmail.com>
Subject: Re: WARNING in mark_lock (3)
To: Sven Eckelmann <sven@narfation.org>
Cc: syzkaller <syzkaller@googlegroups.com>, 
	syzbot <syzbot+a229d8d995b74f8c4b6c@syzkaller.appspotmail.com>, a@unstable.cc, 
	b.a.t.m.a.n@lists.open-mesh.org, David Miller <davem@davemloft.net>, 
	Jakub Kicinski <jakub.kicinski@netronome.com>, Jamal Hadi Salim <jhs@mojatatu.com>, 
	=?UTF-8?B?SmnFmcOtIFDDrXJrbw==?= <jiri@resnulli.us>, 
	LKML <linux-kernel@vger.kernel.org>, mareklindner@neomailbox.ch, 
	netdev <netdev@vger.kernel.org>, sw@simonwunderlich.de, 
	syzkaller-bugs <syzkaller-bugs@googlegroups.com>, vinicius.gomes@intel.com, 
	wang.yi59@zte.com.cn, Cong Wang <xiyou.wangcong@gmail.com>
Content-Type: text/plain; charset="UTF-8"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1574931268;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=HoqmZ4ISGst+6RxBOTmccwmK74t4nIgQ0Amev8cPgJw=;
	b=rZHAe9AkSaDE1gVuX/tj/odWP1JmKYpU7iaRBK4IoA1j/yCnu7h8CUjTkp/mYJuK5leN+9
	IRiolcjUeR6mmQCH5jBo7P4l7EPbpn+1kquDuE9af+JNGGF1cMFcxO4inhwxEJASDNn2eK
	+aikpkqU1iMvHNDwq1MoRhZM+yq+fbs=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1574931268; a=rsa-sha256;
	cv=none;
	b=Nmk7cgzdhQ+veqQr0MPFgQj9DfsgOmsP5VvCuoUynvlwaaLtOp2vtqE8FUEGJH2/J6mlen
	W4biV8zax4MOFldQDbtd1EYR3MemIz3Wf9pQS9tnOOFRToVGMkbj53JVJ0IZDXiwuhTji1
	+pYNq5UosEQU19YBHG0y0+HIkSUe7SA=
ARC-Authentication-Results: i=1;
	open-mesh.org;
	dkim=pass header.d=google.com header.s=20161025 header.b=cM7lGvan;
	spf=pass (open-mesh.org: domain of dvyukov@google.com designates 2607:f8b0:4864:20::f41 as permitted sender) smtp.mailfrom=dvyukov@google.com
X-Mailman-Approved-At: Thu, 28 Nov 2019 10:03:35 +0100

On Thu, Nov 28, 2019 at 9:46 AM Sven Eckelmann <sven@narfation.org> wrote:
>
> On Thursday, 28 November 2019 09:40:32 CET Dmitry Vyukov wrote:
> > On Thu, Nov 28, 2019 at 8:25 AM Sven Eckelmann <sven@narfation.org> wrote:
> > >
> > > On Thursday, 28 November 2019 03:00:01 CET syzbot wrote:
> > > [...]
> > > > bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=132ee536e00000
> > > > start commit:   89d57ddd Merge tag 'media/v5.5-1' of git://git.kernel.org/..
> > > > git tree:       upstream
> > > > final crash:    https://syzkaller.appspot.com/x/report.txt?x=10aee536e00000
> > >
> > > Can the syzbot infrastructure be told to ignore this crash in the bisect run?
> > > Because this should be an unrelated crash which is (hopefully) fixed in
> > > 40e220b4218b ("batman-adv: Avoid free/alloc race when handling OGM buffer").
> >
> > +syzkaller mailing list for syzbot discussion
> >
> > Hi Sven,
> >
> > There is no such functionality at the moment.
> > What exactly do you mean? Somehow telling it interactively? Or
> > hardcode some set of crashes for linux? I don't see how any of these
> > options can really work...
>
> I was thinking more about rerunning the same bisect but tell it to assume
> "crashed: general protection fault in batadv_iv_ogm_queue_add" as OK instead
> of assuming that it is a crashed like the previous "crashed: WARNING in
> mark_lock". Just to get a non-bogus bisect result. Or try to rerun the
> bisect between 40e220b4218b and 89d57dddd7d319ded00415790a0bb3c954b7e386

But... but this done by a program. What do you mean by "tell it"?

--===============2581830478180884959==--
