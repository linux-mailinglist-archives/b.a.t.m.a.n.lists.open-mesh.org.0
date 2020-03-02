Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 672CB175649
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon,  2 Mar 2020 09:49:41 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 154E480542;
	Mon,  2 Mar 2020 09:49:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1583138981;
	h=from:from:sender:sender:reply-to:reply-to:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:in-reply-to:in-reply-to:
	 references:references:list-id:list-help:list-unsubscribe:
	 list-subscribe:list-post; bh=bAUYbJMt4gXkW3KBNuqzTgTWE83GpwKNXYeOYqhbXK4=;
	b=hxU0ow0hNTOAueAt9xFEUZZE4TsGNokY91ARcI3GO7qOXPl+26/x/55xwLt4z+6q1s82/H
	fDlAU+/YwIQTfDGAPiCpN6ewrJXpCaBGD5GCUBgc4HqIU/kbPGtWxpDPDpJatbpEgrrIzi
	LbX8Wr5N1TG9dSeWb43DnZMNDi4Dp30=
References: <0000000000003cbb40059f4e0346@google.com>
 <CAHC9VhQVXk5ucd3=7OC=BxEkZGGLfXv9bESX67Mr-TRmTwxjEg@mail.gmail.com>
 <17916d0509978e14d9a5e9eb52d760fa57460542.camel@redhat.com>
 <CAHC9VhQnbdJprbdTa_XcgUJaiwhzbnGMWJqHczU54UMk0AFCtw@mail.gmail.com>
 <CACT4Y+azQXLcPqtJG9zbj8hxqw4jE3dcwUj5T06bdL3uMaZk+Q@mail.gmail.com>
 <CAHC9VhRRDJzyene2_40nhnxRV_ufgyaU=RrFxYGsnxR4Z_AWWw@mail.gmail.com>
In-Reply-To: <CAHC9VhRRDJzyene2_40nhnxRV_ufgyaU=RrFxYGsnxR4Z_AWWw@mail.gmail.com>
Date: Mon, 2 Mar 2020 09:42:41 +0100
To: Paul Moore <paul@paul-moore.com>
X-Mailman-Approved-At: Mon, 02 Mar 2020 09:49:33 +0100
MIME-Version: 1.0
Message-ID: <mailman.2.1583138974.2351.b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
From: "Dmitry Vyukov via B.A.T.M.A.N" <b.a.t.m.a.n@lists.open-mesh.org>
Precedence: list
Cc: Dmitry Vyukov <dvyukov@google.com>, mareklindner@neomailbox.ch,
 Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 b.a.t.m.a.n@lists.open-mesh.org, a@unstable.cc,
 LKML <linux-kernel@vger.kernel.org>, Eric Paris <eparis@redhat.com>,
 David Miller <davem@davemloft.net>,
 syzkaller-bugs <syzkaller-bugs@googlegroups.com>, linux-audit@redhat.com,
 syzkaller <syzkaller@googlegroups.com>, netdev <netdev@vger.kernel.org>,
 john.hammond@intel.com, fzago@cray.com,
 syzbot <syzbot+9a5e789e4725b9ef1316@syzkaller.appspotmail.com>,
 Dan Carpenter <dan.carpenter@oracle.com>
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
Content-Type: multipart/mixed; boundary="===============4340409076442567594=="
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

--===============4340409076442567594==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============4340409076442567594==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Return-Path: <dvyukov@google.com>
Received: from mail-qk1-x742.google.com (mail-qk1-x742.google.com [IPv6:2607:f8b0:4864:20::742])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id A544180041
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon,  2 Mar 2020 09:42:54 +0100 (CET)
Received: by mail-qk1-x742.google.com with SMTP id f3so9265415qkh.3
        for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 02 Mar 2020 00:42:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=r8aSF5MeqDQUW8YKb8YbsbsupScDDHgnONeFSMF1J5M=;
        b=B/KNoxaQBGiH3PD1NpEzCo1O0oK4E7EK+1S3evPRu02hz84J4NBnPjObI8b1gKqd4p
         c1hs9hOlTU4U3f1nxTLhByHL1nWKv73jKdbN6fOKC1q6atwvoOAxFgV1YWZJm0VoENj0
         z7VBgyGWyTbTRoSkSpLOAe0ZBovE60dzdlycqAbec+ttpuz4989oFrgKBUsRyN7N5ucu
         Bz3PiXGf1+EXZHg+suW1UR8i5GirjuSp2OlsCh54mr8OnXEu5Cmdwb/4NTHwZc7RJ6r+
         oz9RH21mh4B5udlNT2u1CHarVJgtk7XeMmXpmn1yaF8OMCT+6+vdHLMAuBtDs7o6vO0+
         tVDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=r8aSF5MeqDQUW8YKb8YbsbsupScDDHgnONeFSMF1J5M=;
        b=Z7F1bWkwtNfnurwvWsmfKoD2IeoNMgb1JQTrQcIb3Y9jBUlqFBzDlgPATdVwgeC3R3
         pldBi/QawxT9G0ocRpY8EYLHujW0KUQ5zEt8mdyLZkn1HqO2H3Fbov5XoAfki0vlKXlp
         /o9twYjXe7xBXiIG84DcIDsIkoX1zJUEVZfdYIEvrtbi7x7I2+b2klLrLpc/c7LH0tEk
         A/UOdEhPlvkdpVv0nZWAqXoeu9KHf4h2cr1Q7ciXYDS2xQP9d7ABgAWh7q5JUZJlNn3J
         J5E4adWODULC86+VYtsLLC5/qOrRkLzH+zMoVaTtwlBGrXgHlVNO0cThvKn+uhJasriY
         dtTw==
X-Gm-Message-State: APjAAAUW/DjNbmhxoUfdtikcS4KfqQasTWDQSJW7UDA6dsFscIZPzGaJ
	+jB9eAXnlbtPz6WQUrW6pyedrWYb+VyFxuL6gccpOg==
X-Google-Smtp-Source: APXvYqztcu29n10/zsKgII0AqR3Fc9rw71b3zIoTvJYDp6H3lPYF0NTShZJmpjhfeX5F1NoW+jLeFauy7Qb3dxiFWO0=
X-Received: by 2002:ae9:e003:: with SMTP id m3mr15639507qkk.250.1583138573164;
 Mon, 02 Mar 2020 00:42:53 -0800 (PST)
MIME-Version: 1.0
References: <0000000000003cbb40059f4e0346@google.com> <CAHC9VhQVXk5ucd3=7OC=BxEkZGGLfXv9bESX67Mr-TRmTwxjEg@mail.gmail.com>
 <17916d0509978e14d9a5e9eb52d760fa57460542.camel@redhat.com>
 <CAHC9VhQnbdJprbdTa_XcgUJaiwhzbnGMWJqHczU54UMk0AFCtw@mail.gmail.com>
 <CACT4Y+azQXLcPqtJG9zbj8hxqw4jE3dcwUj5T06bdL3uMaZk+Q@mail.gmail.com> <CAHC9VhRRDJzyene2_40nhnxRV_ufgyaU=RrFxYGsnxR4Z_AWWw@mail.gmail.com>
In-Reply-To: <CAHC9VhRRDJzyene2_40nhnxRV_ufgyaU=RrFxYGsnxR4Z_AWWw@mail.gmail.com>
From: Dmitry Vyukov <dvyukov@google.com>
Date: Mon, 2 Mar 2020 09:42:41 +0100
Message-ID: <CACT4Y+YkJSLt+-0_wvSHfxi8J1Tn=H-NBeZ+E3h-TAKu53vyqw@mail.gmail.com>
Subject: Re: kernel panic: audit: backlog limit exceeded
To: Paul Moore <paul@paul-moore.com>
Cc: Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>, Eric Paris <eparis@redhat.com>, 
	syzbot <syzbot+9a5e789e4725b9ef1316@syzkaller.appspotmail.com>, a@unstable.cc, 
	b.a.t.m.a.n@lists.open-mesh.org, Dan Carpenter <dan.carpenter@oracle.com>, 
	David Miller <davem@davemloft.net>, fzago@cray.com, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, john.hammond@intel.com, linux-audit@redhat.com, 
	LKML <linux-kernel@vger.kernel.org>, mareklindner@neomailbox.ch, 
	netdev <netdev@vger.kernel.org>, sw@simonwunderlich.de, 
	syzkaller-bugs <syzkaller-bugs@googlegroups.com>, syzkaller <syzkaller@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1583138574;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=r8aSF5MeqDQUW8YKb8YbsbsupScDDHgnONeFSMF1J5M=;
	b=iQ5ubUaL4VSJ/HLu8qwFaIC+5Ti+JMlt4ZZDCE/FsCAtZTCMDZRrz5zjXu0IXCEX0Yy0eh
	exRaZaOWJI4QncdVbvhLP9bRsSh9WpErMmoWCWYgvt0X5yu9zmMqTLo73dy8xutOKpXbH0
	nSDeg1lupxFMxtnBVnObAl44ly3Ifak=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1583138574; a=rsa-sha256;
	cv=none;
	b=Bx4d6V9dxEhNvpqnjKssD7xjUOmfUDLvTgGE2UYGe61gdvBzxumdyZaT8YmPTcS/ur4MwR
	aLQ8uVwfNShaV4QmQBWhsR1THJnNxiVeylvJd3AdTzL9JaeaeMUmv0r0Ya9xYkLG1Zdxxw
	h9+p6dz62YYrA7duiKEgFXacPzP/bS4=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=google.com header.s=20161025 header.b=B/KNoxaQ;
	spf=pass (diktynna.open-mesh.org: domain of dvyukov@google.com designates 2607:f8b0:4864:20::742 as permitted sender) smtp.mailfrom=dvyukov@google.com
X-Mailman-Approved-At: Mon, 02 Mar 2020 09:49:33 +0100

On Fri, Feb 28, 2020 at 1:14 AM Paul Moore <paul@paul-moore.com> wrote:
>
> On Thu, Feb 27, 2020 at 10:40 AM Dmitry Vyukov <dvyukov@google.com> wrote:
> > On Mon, Feb 24, 2020 at 11:47 PM Paul Moore <paul@paul-moore.com> wrote:
> > > On Mon, Feb 24, 2020 at 5:43 PM Eric Paris <eparis@redhat.com> wrote:
> > > > https://syzkaller.appspot.com/x/repro.syz?x=151b1109e00000 (the
> > > > reproducer listed) looks like it is literally fuzzing the AUDIT_SET.
> > > > Which seems like this is working as designed if it is setting the
> > > > failure mode to 2.
> > >
> > > So it is, good catch :)  I saw the panic and instinctively chalked
> > > that up to a mistaken config, not expecting that it was what was being
> > > tested.
> >
> > Yes, this audit failure mode is quite unpleasant for fuzzing. And
> > since this is not a top-level syscall argument value, it's effectively
> > impossible to filter out in the fuzzer. Maybe another use case for the
> > "fuzer lockdown" feature +Tetsuo proposed.
> > With the current state of the things, I think we only have an option
> > to disable fuzzing of audit. Which is pity because it has found 5 or
> > so real bugs in audit too.
> > But this happened anyway because audit is only reachable from init pid
> > namespace and syzkaller always unshares pid namespace for sandboxing
> > reasons, that was removed accidentally and that's how it managed to
> > find the bugs. But the unshare is restored now:
> > https://github.com/google/syzkaller/commit/5e0e1d1450d7c3497338082fc28912fdd7f93a3c
> >
> > As a side effect all other real bugs in audit will be auto-obsoleted
> > in future if not fixed because they will stop happening.
>
> On the plus side, I did submit fixes for the other real audit bugs
> that syzbot found recently and Linus pulled them into the tree today
> so at least we have that small victory.

+1!

> We could consider adding a fuzz-friendly build time config which would
> disable the panic failsafe, but it probably isn't worth it at the
> moment considering the syzbot's pid namespace limitations.
>
> --
> paul moore
> www.paul-moore.com

--===============4340409076442567594==--
