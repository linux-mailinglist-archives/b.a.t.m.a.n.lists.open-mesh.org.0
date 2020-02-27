Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id A730E1722D2
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 27 Feb 2020 17:08:40 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 64365806A2;
	Thu, 27 Feb 2020 17:08:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1582819720;
	h=from:from:sender:sender:reply-to:reply-to:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:in-reply-to:in-reply-to:
	 references:references:list-id:list-help:list-unsubscribe:
	 list-subscribe:list-post; bh=yjft8BSJ//jvrOQKJl63wcfLJJmrlqC4uPmbMY9Mkuk=;
	b=fvRIwiubpJUjR9B5UfnRTSmk3bxUoGYL5VlN+20259LARkcFTq7XIdxvnkQk0/0+D/SAeX
	KxnmO569NASG88PuL7IwApfVn8xm5YmSQx4MIEhMHZQv21X7n48xhIh8IYRWdEyHKzjOCo
	LTXPPnCgVkmtfL7Cpq8qFikl3Vej684=
References: <0000000000003cbb40059f4e0346@google.com>
 <CAHC9VhQVXk5ucd3=7OC=BxEkZGGLfXv9bESX67Mr-TRmTwxjEg@mail.gmail.com>
 <17916d0509978e14d9a5e9eb52d760fa57460542.camel@redhat.com>
 <CAHC9VhQnbdJprbdTa_XcgUJaiwhzbnGMWJqHczU54UMk0AFCtw@mail.gmail.com>
In-Reply-To: <CAHC9VhQnbdJprbdTa_XcgUJaiwhzbnGMWJqHczU54UMk0AFCtw@mail.gmail.com>
Date: Thu, 27 Feb 2020 16:39:59 +0100
To: Paul Moore <paul@paul-moore.com>,
 Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>
X-Mailman-Approved-At: Thu, 27 Feb 2020 17:08:32 +0100
MIME-Version: 1.0
Message-ID: <mailman.5.1582819713.14712.b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
From: "Dmitry Vyukov via B.A.T.M.A.N" <b.a.t.m.a.n@lists.open-mesh.org>
Precedence: list
Cc: Dmitry Vyukov <dvyukov@google.com>, mareklindner@neomailbox.ch,
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
Content-Type: multipart/mixed; boundary="===============2587629606490572781=="
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

--===============2587629606490572781==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============2587629606490572781==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Return-Path: <dvyukov@google.com>
Received: from mail-qt1-x844.google.com (mail-qt1-x844.google.com [IPv6:2607:f8b0:4864:20::844])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 1428480097
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 27 Feb 2020 16:40:12 +0100 (CET)
Received: by mail-qt1-x844.google.com with SMTP id t13so2589840qto.3
        for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 27 Feb 2020 07:40:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=YuPLyDhTWi2Bq6nSA95EKicG53GpCu1nSTcjutGPCOc=;
        b=L28elOzcNxzeh0RY6gJgd3a7ooDHYwTHXYzorm0o3d6jxU0nBc924LYniOadP4x5Z1
         MKoRXEM0utLFjm/Z/cXJdbG70Xb+CcpuclDVnLF807Gjw4fCAHovqblmPxLLvjq3NjTR
         CzLXBfSDNKpB/KY0s8Ejc7KzUTf36yzOyELv8nkvynRKpx54tcMRM6ib7ystbhjO1xxn
         e9zOTXqrQcAT7EMVNDxurBaQ3LHFRY8DEcZstbPrJ6ukAz4w08mgf+UIPLJmhqW0ieVU
         EfbeQel0t9qfeXXvWMbzIdpKJ4o2rViJM+dBM3krMcBcIKbSp/RWnqDUJZe11jKiQ6/C
         83Xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=YuPLyDhTWi2Bq6nSA95EKicG53GpCu1nSTcjutGPCOc=;
        b=I4pqT5N8k//2tIR0+vHMTOWCPJ46xiLerapzPOLkxd298gHpMeA46/Bs8HbbvH7V4n
         baJGtkJm87xRe2fzVShCvnT5KN/uaAGu37JNWAKN5TxgD2E6IeP+LgE+iQqS0KveDbZu
         kREdIIYFHtoa6YCTOHZDdBjP0vN0GPrvYAlNX3bScbB806X3un48FOtFIxibAMlKGqFq
         hF+WA3t/A+6mMDh2ow27AenbIsz4skoRpQwBoqUPuU+R05F4oAKCqnaQT25TlTrFcpep
         SLXgC2+PjzOE4IYHT3yqb6Yk/vWcc5H0HB/+EF/UiC1NyCGowWMQYyR6ICz5JYsYYYul
         Tdzw==
X-Gm-Message-State: APjAAAUtxO/u595C0qbN2QlHrn86XVnO+ed4fuWTZaI+lWmZ3HHW8AY2
	MrxgHLeD5ZJeeT/QmmcB8ET88B61a3KStPEtTUHsug==
X-Google-Smtp-Source: APXvYqzJBU3JruTy5AFiWf1AZSIF0LUAdG48QvebH07jhVoHgrzI7Cn26viLGIZvenVxLDjsLp+nxmCFVu1ATlRUqdY=
X-Received: by 2002:ac8:1b18:: with SMTP id y24mr5643500qtj.158.1582818010448;
 Thu, 27 Feb 2020 07:40:10 -0800 (PST)
MIME-Version: 1.0
References: <0000000000003cbb40059f4e0346@google.com> <CAHC9VhQVXk5ucd3=7OC=BxEkZGGLfXv9bESX67Mr-TRmTwxjEg@mail.gmail.com>
 <17916d0509978e14d9a5e9eb52d760fa57460542.camel@redhat.com> <CAHC9VhQnbdJprbdTa_XcgUJaiwhzbnGMWJqHczU54UMk0AFCtw@mail.gmail.com>
In-Reply-To: <CAHC9VhQnbdJprbdTa_XcgUJaiwhzbnGMWJqHczU54UMk0AFCtw@mail.gmail.com>
From: Dmitry Vyukov <dvyukov@google.com>
Date: Thu, 27 Feb 2020 16:39:59 +0100
Message-ID: <CACT4Y+azQXLcPqtJG9zbj8hxqw4jE3dcwUj5T06bdL3uMaZk+Q@mail.gmail.com>
Subject: Re: kernel panic: audit: backlog limit exceeded
To: Paul Moore <paul@paul-moore.com>, Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>
Cc: Eric Paris <eparis@redhat.com>, 
	syzbot <syzbot+9a5e789e4725b9ef1316@syzkaller.appspotmail.com>, a@unstable.cc, 
	b.a.t.m.a.n@lists.open-mesh.org, Dan Carpenter <dan.carpenter@oracle.com>, 
	David Miller <davem@davemloft.net>, fzago@cray.com, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, john.hammond@intel.com, linux-audit@redhat.com, 
	LKML <linux-kernel@vger.kernel.org>, mareklindner@neomailbox.ch, 
	netdev <netdev@vger.kernel.org>, sw@simonwunderlich.de, 
	syzkaller-bugs <syzkaller-bugs@googlegroups.com>, syzkaller <syzkaller@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1582818012;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=YuPLyDhTWi2Bq6nSA95EKicG53GpCu1nSTcjutGPCOc=;
	b=uFACd3OSwD9ke9khH+/jyjq45R+XbUkbrHRw0Eq/WscJMa+8+dt2PId8FWSMhxg+3qH4HB
	O3DENuAvRaFDJWt0IbIvMywGfa4ut7EKu6AW+zMKcPfMsGmxyR/Hha4X5IlHxkwbejrB0s
	xQf4g+5VnQ4tbuTc8VY/5sVTmxfhUss=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1582818012; a=rsa-sha256;
	cv=none;
	b=reXWiNPitONiGNFUqrOx/W2euAGfoUJs7tbeiD+Om2MfureSAexaNfVMJ2s5uknvOLHYYf
	3Kb9cdTvf9Y7k5N7HkBzRAL6yfUXyYTFXncmSZDeG6U5hz/umLGGXCeW0vj0Cp6OZ2R59E
	QXzo3Ez7iVh3GKJfXLgzsNxXBLlRfMc=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=google.com header.s=20161025 header.b=L28elOzc;
	spf=pass (diktynna.open-mesh.org: domain of dvyukov@google.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=dvyukov@google.com
X-Mailman-Approved-At: Thu, 27 Feb 2020 17:08:32 +0100

On Mon, Feb 24, 2020 at 11:47 PM Paul Moore <paul@paul-moore.com> wrote:
>
> On Mon, Feb 24, 2020 at 5:43 PM Eric Paris <eparis@redhat.com> wrote:
> > https://syzkaller.appspot.com/x/repro.syz?x=151b1109e00000 (the
> > reproducer listed) looks like it is literally fuzzing the AUDIT_SET.
> > Which seems like this is working as designed if it is setting the
> > failure mode to 2.
>
> So it is, good catch :)  I saw the panic and instinctively chalked
> that up to a mistaken config, not expecting that it was what was being
> tested.

Yes, this audit failure mode is quite unpleasant for fuzzing. And
since this is not a top-level syscall argument value, it's effectively
impossible to filter out in the fuzzer. Maybe another use case for the
"fuzer lockdown" feature +Tetsuo proposed.
With the current state of the things, I think we only have an option
to disable fuzzing of audit. Which is pity because it has found 5 or
so real bugs in audit too.
But this happened anyway because audit is only reachable from init pid
namespace and syzkaller always unshares pid namespace for sandboxing
reasons, that was removed accidentally and that's how it managed to
find the bugs. But the unshare is restored now:
https://github.com/google/syzkaller/commit/5e0e1d1450d7c3497338082fc28912fdd7f93a3c

As a side effect all other real bugs in audit will be auto-obsoleted
in future if not fixed because they will stop happening.

#syz invalid


> > On Mon, 2020-02-24 at 17:38 -0500, Paul Moore wrote:
> > > On Mon, Feb 24, 2020 at 3:18 AM syzbot
> > > <syzbot+9a5e789e4725b9ef1316@syzkaller.appspotmail.com> wrote:
> > > > Hello,
> > > >
> > > > syzbot found the following crash on:
> > > >
> > > > HEAD commit:    36a44bcd Merge branch 'bnxt_en-shutdown-and-kexec-
> > > > kdump-re..
> > > > git tree:       net
> > > > console output:
> > > > https://syzkaller.appspot.com/x/log.txt?x=148bfdd9e00000
> > > > kernel config:
> > > > https://syzkaller.appspot.com/x/.config?x=768cc3d3e277cc16
> > > > dashboard link:
> > > > https://syzkaller.appspot.com/bug?extid=9a5e789e4725b9ef1316
> > > > compiler:       gcc (GCC) 9.0.0 20181231 (experimental)
> > > > syz repro:
> > > > https://syzkaller.appspot.com/x/repro.syz?x=151b1109e00000
> > > > C reproducer:
> > > > https://syzkaller.appspot.com/x/repro.c?x=128bfdd9e00000
> > > >
> > > > The bug was bisected to:
> > > >
> > > > commit 0c1b9970ddd4cc41002321c3877e7f91aacb896d
> > > > Author: Dan Carpenter <dan.carpenter@oracle.com>
> > > > Date:   Fri Jul 28 14:42:27 2017 +0000
> > > >
> > > >     staging: lustre: lustre: Off by two in lmv_fid2path()
> > > >
> > > > bisection log:
> > > > https://syzkaller.appspot.com/x/bisect.txt?x=17e6c3e9e00000
> > > > final crash:
> > > > https://syzkaller.appspot.com/x/report.txt?x=1416c3e9e00000
> > > > console output:
> > > > https://syzkaller.appspot.com/x/log.txt?x=1016c3e9e00000
> > > >
> > > > IMPORTANT: if you fix the bug, please add the following tag to the
> > > > commit:
> > > > Reported-by: syzbot+9a5e789e4725b9ef1316@syzkaller.appspotmail.com
> > > > Fixes: 0c1b9970ddd4 ("staging: lustre: lustre: Off by two in
> > > > lmv_fid2path()")
> > > >
> > > > audit: audit_backlog=13 > audit_backlog_limit=7
> > > > audit: audit_lost=1 audit_rate_limit=0 audit_backlog_limit=7
> > > > Kernel panic - not syncing: audit: backlog limit exceeded
> > > > CPU: 1 PID: 9913 Comm: syz-executor024 Not tainted 5.6.0-rc1-
> > > > syzkaller #0
> > > > Hardware name: Google Google Compute Engine/Google Compute Engine,
> > > > BIOS Google 01/01/2011
> > > > Call Trace:
> > > >  __dump_stack lib/dump_stack.c:77 [inline]
> > > >  dump_stack+0x197/0x210 lib/dump_stack.c:118
> > > >  panic+0x2e3/0x75c kernel/panic.c:221
> > > >  audit_panic.cold+0x32/0x32 kernel/audit.c:307
> > > >  audit_log_lost kernel/audit.c:377 [inline]
> > > >  audit_log_lost+0x8b/0x180 kernel/audit.c:349
> > > >  audit_log_start kernel/audit.c:1788 [inline]
> > > >  audit_log_start+0x70e/0x7c0 kernel/audit.c:1745
> > > >  audit_log+0x95/0x120 kernel/audit.c:2345
> > > >  xt_replace_table+0x61d/0x830 net/netfilter/x_tables.c:1413
> > > >  __do_replace+0x1da/0x950 net/ipv6/netfilter/ip6_tables.c:1084
> > > >  do_replace net/ipv6/netfilter/ip6_tables.c:1157 [inline]
> > > >  do_ip6t_set_ctl+0x33a/0x4c8 net/ipv6/netfilter/ip6_tables.c:1681
> > > >  nf_sockopt net/netfilter/nf_sockopt.c:106 [inline]
> > > >  nf_setsockopt+0x77/0xd0 net/netfilter/nf_sockopt.c:115
> > > >  ipv6_setsockopt net/ipv6/ipv6_sockglue.c:949 [inline]
> > > >  ipv6_setsockopt+0x147/0x180 net/ipv6/ipv6_sockglue.c:933
> > > >  tcp_setsockopt net/ipv4/tcp.c:3165 [inline]
> > > >  tcp_setsockopt+0x8f/0xe0 net/ipv4/tcp.c:3159
> > > >  sock_common_setsockopt+0x94/0xd0 net/core/sock.c:3149
> > > >  __sys_setsockopt+0x261/0x4c0 net/socket.c:2130
> > > >  __do_sys_setsockopt net/socket.c:2146 [inline]
> > > >  __se_sys_setsockopt net/socket.c:2143 [inline]
> > > >  __x64_sys_setsockopt+0xbe/0x150 net/socket.c:2143
> > > >  do_syscall_64+0xfa/0x790 arch/x86/entry/common.c:294
> > > >  entry_SYSCALL_64_after_hwframe+0x49/0xbe
> > > > RIP: 0033:0x44720a
> > > > Code: 49 89 ca b8 37 00 00 00 0f 05 48 3d 01 f0 ff ff 0f 83 1a e0
> > > > fb ff c3 66 0f 1f 84 00 00 00 00 00 49 89 ca b8 36 00 00 00 0f 05
> > > > <48> 3d 01 f0 ff ff 0f 83 fa df fb ff c3 66 0f 1f 84 00 00 00 00 00
> > > > RSP: 002b:00007ffd032dec78 EFLAGS: 00000286 ORIG_RAX:
> > > > 0000000000000036
> > > > RAX: ffffffffffffffda RBX: 0000000000000003 RCX: 000000000044720a
> > > > RDX: 0000000000000040 RSI: 0000000000000029 RDI: 0000000000000003
> > > > RBP: 00007ffd032deda0 R08: 00000000000003b8 R09: 0000000000004000
> > > > R10: 00000000006d7b40 R11: 0000000000000286 R12: 00007ffd032deca0
> > > > R13: 00000000006d9d60 R14: 0000000000000029 R15: 00000000006d7ba0
> > > > Kernel Offset: disabled
> > > > Rebooting in 86400 seconds..
> > > >
> > > >
> > > > ---
> > > > This bug is generated by a bot. It may contain errors.
> > > > See https://goo.gl/tpsmEJ for more information about syzbot.
> > > > syzbot engineers can be reached at syzkaller@googlegroups.com.
> > > >
> > > > syzbot will keep track of this bug report. See:
> > > > https://goo.gl/tpsmEJ#status for how to communicate with syzbot.
> > > > For information about bisection process see:
> > > > https://goo.gl/tpsmEJ#bisection
> > > > syzbot can test patches for this bug, for details see:
> > > > https://goo.gl/tpsmEJ#testing-patches
> > >
> > > Similar to syzbot report 72461ac44b36c98f58e5, see my comments there.

--===============2587629606490572781==--
