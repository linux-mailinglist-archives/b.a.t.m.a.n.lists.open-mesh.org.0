Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 988BA1731B5
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 28 Feb 2020 08:23:38 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 43488801FB;
	Fri, 28 Feb 2020 08:23:33 +0100 (CET)
Received: from mail-ed1-x544.google.com (mail-ed1-x544.google.com
 [IPv6:2a00:1450:4864:20::544])
 by diktynna.open-mesh.org (Postfix) with ESMTPS id CDA6D8008D
 for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 28 Feb 2020 01:14:26 +0100 (CET)
Received: by mail-ed1-x544.google.com with SMTP id c7so1257666edu.2
 for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 27 Feb 2020 16:14:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=paul-moore-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=1ib8VWwHjJvggYN18BEOwzhOZqnlM4YEYxegYLVlKSo=;
 b=Cetq1zeYMvA3/xQUwFFjv1v7a1bjQAjSwdUaiPi9JjojBXivvTLHJkO6+ll4GT8Ghc
 m4/MgSddbFsriGMMZ+avMc7K0HlBlyJU+uKEFXcLh6wkVNKc+wbLmWlfpl8+R5NF3I8M
 takyOyT3ZosZd4ERE+TMDmzCgp5XOHnLqRZPkuRa6Pmf4jg/17k5EkKPa53ec1Z9UWcI
 w3lbneT1IyeYjJRqrnUip3m4xn7zIumvSMkIoi6SMw1LXOXXpvjBxB3gemdqq80RmB7L
 jSvf/J/cTa1+8ehW41M0doB+D6RKJNZjebMAQCJqk5m8s9qW+Db1BQyqzuC/mMBPky46
 MgDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=1ib8VWwHjJvggYN18BEOwzhOZqnlM4YEYxegYLVlKSo=;
 b=Zi/Xz4SRCl94fLOEdnLbieL6XRe7l5nEFll97TFurQ9zm1cUR+tswP0G6bD9Vnhe1e
 /4DyIgcCmImZ3XRwjFOylrj3M07p4qH+mePhis8I+ARVv3QWmTL/SkXFF6kx5/fAhAjF
 9HnG4ax/LANhJZkbFoIpgpf5vJU1WFx4wWgRwoqe9Tyh8gOst9hvFqEiI/l3N7iQQbnM
 s1LAAugjo6CHbvaYQv6ZkgDWXXdpiqNjjBNpfeg32X/nl+rGomT8iyNbbGbA8/MVOWrE
 p9v8oQXNixwA51dcyX0+Xa8NdiGbpR70MmwXpcYoJ36XL2fNhyYKRtHxcFBMbHVCXDcX
 zTSQ==
X-Gm-Message-State: APjAAAVk/Mk2drk9guTC9DI5qZGOfVftgvjEfPUpsPOt3DU3znLGyJd3
 7JYE156cOJXH7OZYZuVxyAUEjEPDQE/ZK4c5VC/U
X-Google-Smtp-Source: APXvYqzIh7t+mGR5KHWmesjgjSlqpj0MLXTGXcf7rY8aVOBQpqG6xj9+VllvTVXsLbvgWVt9QS8HOh37KIMIXqFAaUs=
X-Received: by 2002:a50:a7a5:: with SMTP id i34mr1145928edc.128.1582848866078; 
 Thu, 27 Feb 2020 16:14:26 -0800 (PST)
MIME-Version: 1.0
References: <0000000000003cbb40059f4e0346@google.com>
 <CAHC9VhQVXk5ucd3=7OC=BxEkZGGLfXv9bESX67Mr-TRmTwxjEg@mail.gmail.com>
 <17916d0509978e14d9a5e9eb52d760fa57460542.camel@redhat.com>
 <CAHC9VhQnbdJprbdTa_XcgUJaiwhzbnGMWJqHczU54UMk0AFCtw@mail.gmail.com>
 <CACT4Y+azQXLcPqtJG9zbj8hxqw4jE3dcwUj5T06bdL3uMaZk+Q@mail.gmail.com>
In-Reply-To: <CACT4Y+azQXLcPqtJG9zbj8hxqw4jE3dcwUj5T06bdL3uMaZk+Q@mail.gmail.com>
From: Paul Moore <paul@paul-moore.com>
Date: Thu, 27 Feb 2020 19:14:15 -0500
Message-ID: <CAHC9VhRRDJzyene2_40nhnxRV_ufgyaU=RrFxYGsnxR4Z_AWWw@mail.gmail.com>
Subject: Re: kernel panic: audit: backlog limit exceeded
To: Dmitry Vyukov <dvyukov@google.com>
Content-Type: text/plain; charset="UTF-8"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1582848867;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references:dkim-signature;
 bh=1ib8VWwHjJvggYN18BEOwzhOZqnlM4YEYxegYLVlKSo=;
 b=F0MdamDVUZSjZEbdG4on+xVtGWcRmPJAxUMqC/2MHQggkzRe+UoNl3EviE6LF/EyGqYmLR
 O07QXy3h619xyqwTkGWMk505PHh0g7wSyAkvLvCe6fsGP7Gzp/Yt74nNYTiWm5vnANs89K
 2qiR2lF4DNpvO+x1PfB3kQEUTpHyWYM=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1582848867; a=rsa-sha256; cv=none;
 b=1QcnW/AsQjLtBC3TewXYzWi0p+j/HehyjdRGdrAlDdVO9riV6FwQRnJxpfUSb+3BSYqAzT
 cXJEl5o6G5M3XieF3IpZr2XRr+0+oW7dP/fO3R0Vof8dT+B7b0qJ8YQVWL072xAVYbnVZQ
 vJuCZJz190rBvcOc4XBgxsZYn+fERSQ=
ARC-Authentication-Results: i=1; diktynna.open-mesh.org;
 dkim=pass header.d=paul-moore-com.20150623.gappssmtp.com header.s=20150623
 header.b=Cetq1zeY; 
 spf=none (diktynna.open-mesh.org: domain of paul@paul-moore.com has no SPF
 policy when checking 2a00:1450:4864:20::544)
 smtp.mailfrom=paul@paul-moore.com
X-Mailman-Approved-At: Fri, 28 Feb 2020 08:23:22 +0100
X-BeenThere: b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 2.1.29
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
Cc: mareklindner@neomailbox.ch,
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
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

On Thu, Feb 27, 2020 at 10:40 AM Dmitry Vyukov <dvyukov@google.com> wrote:
> On Mon, Feb 24, 2020 at 11:47 PM Paul Moore <paul@paul-moore.com> wrote:
> > On Mon, Feb 24, 2020 at 5:43 PM Eric Paris <eparis@redhat.com> wrote:
> > > https://syzkaller.appspot.com/x/repro.syz?x=151b1109e00000 (the
> > > reproducer listed) looks like it is literally fuzzing the AUDIT_SET.
> > > Which seems like this is working as designed if it is setting the
> > > failure mode to 2.
> >
> > So it is, good catch :)  I saw the panic and instinctively chalked
> > that up to a mistaken config, not expecting that it was what was being
> > tested.
>
> Yes, this audit failure mode is quite unpleasant for fuzzing. And
> since this is not a top-level syscall argument value, it's effectively
> impossible to filter out in the fuzzer. Maybe another use case for the
> "fuzer lockdown" feature +Tetsuo proposed.
> With the current state of the things, I think we only have an option
> to disable fuzzing of audit. Which is pity because it has found 5 or
> so real bugs in audit too.
> But this happened anyway because audit is only reachable from init pid
> namespace and syzkaller always unshares pid namespace for sandboxing
> reasons, that was removed accidentally and that's how it managed to
> find the bugs. But the unshare is restored now:
> https://github.com/google/syzkaller/commit/5e0e1d1450d7c3497338082fc28912fdd7f93a3c
>
> As a side effect all other real bugs in audit will be auto-obsoleted
> in future if not fixed because they will stop happening.

On the plus side, I did submit fixes for the other real audit bugs
that syzbot found recently and Linus pulled them into the tree today
so at least we have that small victory.

We could consider adding a fuzz-friendly build time config which would
disable the panic failsafe, but it probably isn't worth it at the
moment considering the syzbot's pid namespace limitations.

-- 
paul moore
www.paul-moore.com
