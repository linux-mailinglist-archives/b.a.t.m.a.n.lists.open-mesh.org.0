Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id D433C16BA43
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 25 Feb 2020 08:13:58 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 3EE5380762;
	Tue, 25 Feb 2020 08:13:57 +0100 (CET)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [207.211.31.120])
 by diktynna.open-mesh.org (Postfix) with ESMTPS id 5809180022
 for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 24 Feb 2020 23:43:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1582584217;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=+oclofHchw/GDHhS/ehFkqV0QdXivh6ncK51lEL/8AU=;
 b=G14sd7BdvsOxUhiRSrur+KszYX+TCIKeJVMPfB1PxaT3YdGHjoBcSxslvEzqtIGb3SF3dc
 UWKMRwdXSEytTnTHMLJFeii9LhtHba4I1VK9tx0O1CkWPo11RzIxvD8k91n0PpOGbf7eti
 +KYpRZtXrkD9hcnZtqBEYqaGPLSdt4Y=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-127-GpfJUv9pOg-tSLx_ZMzHLA-1; Mon, 24 Feb 2020 17:43:35 -0500
X-MC-Unique: GpfJUv9pOg-tSLx_ZMzHLA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1A5F618C8C01;
 Mon, 24 Feb 2020 22:43:32 +0000 (UTC)
Received: from ovpn-121-250.rdu2.redhat.com (ovpn-121-250.rdu2.redhat.com
 [10.10.121.250])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 9F3009078A;
 Mon, 24 Feb 2020 22:43:27 +0000 (UTC)
Message-ID: <17916d0509978e14d9a5e9eb52d760fa57460542.camel@redhat.com>
Subject: Re: kernel panic: audit: backlog limit exceeded
From: Eric Paris <eparis@redhat.com>
To: Paul Moore <paul@paul-moore.com>, syzbot
 <syzbot+9a5e789e4725b9ef1316@syzkaller.appspotmail.com>
Date: Mon, 24 Feb 2020 17:43:27 -0500
In-Reply-To: <CAHC9VhQVXk5ucd3=7OC=BxEkZGGLfXv9bESX67Mr-TRmTwxjEg@mail.gmail.com>
References: <0000000000003cbb40059f4e0346@google.com>
 <CAHC9VhQVXk5ucd3=7OC=BxEkZGGLfXv9bESX67Mr-TRmTwxjEg@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.34.4 (3.34.4-1.fc31) 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1582584218;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:dkim-signature;
 bh=+oclofHchw/GDHhS/ehFkqV0QdXivh6ncK51lEL/8AU=;
 b=WBX6Bj8er3JwR96NlVaDFae6rGgLo6OuFfj6fyN0h9o6EM9HMxDmBu+S5FvszyGWEmRyR+
 aNR3gtMJ58dXesGJZe19BfHXN4FEc7UKGG3rx+K6j24EtnxlgDMaKdVDPGKP1gVygRr+D5
 4fP3t00jIDTXw5B62f3A5xsF+mXaiqc=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1582584218; a=rsa-sha256; cv=none;
 b=imcBXX5nsrNit9UOy5Wr3YhaiqPRVN5KoWrIWS1kPQDI4Tb22x6vPHQCXgfebHiNF81opX
 1r00OtU/ymXCxvL+MirXsh7nE3heDO/2AV5qtaJbLCUe2qhGwselk/eik2JIxfVSDrIGwK
 MyHqUhEWgnL/eg6q9Kr6n11ePKTEWG0=
ARC-Authentication-Results: i=1; diktynna.open-mesh.org;
 dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=G14sd7Bd;
 spf=pass (diktynna.open-mesh.org: domain of eparis@redhat.com designates
 207.211.31.120 as permitted sender) smtp.mailfrom=eparis@redhat.com
X-Mailman-Approved-At: Tue, 25 Feb 2020 08:13:46 +0100
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
Cc: mareklindner@neomailbox.ch, gregkh@linuxfoundation.org,
 b.a.t.m.a.n@lists.open-mesh.org, a@unstable.cc, linux-kernel@vger.kernel.org,
 syzkaller-bugs@googlegroups.com, linux-audit@redhat.com,
 netdev@vger.kernel.org, john.hammond@intel.com, fzago@cray.com,
 davem@davemloft.net, dan.carpenter@oracle.com
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

https://syzkaller.appspot.com/x/repro.syz?x=151b1109e00000 (the
reproducer listed) looks like it is literally fuzzing the AUDIT_SET.
Which seems like this is working as designed if it is setting the
failure mode to 2.

On Mon, 2020-02-24 at 17:38 -0500, Paul Moore wrote:
> On Mon, Feb 24, 2020 at 3:18 AM syzbot
> <syzbot+9a5e789e4725b9ef1316@syzkaller.appspotmail.com> wrote:
> > Hello,
> > 
> > syzbot found the following crash on:
> > 
> > HEAD commit:    36a44bcd Merge branch 'bnxt_en-shutdown-and-kexec-
> > kdump-re..
> > git tree:       net
> > console output: 
> > https://syzkaller.appspot.com/x/log.txt?x=148bfdd9e00000
> > kernel config:  
> > https://syzkaller.appspot.com/x/.config?x=768cc3d3e277cc16
> > dashboard link: 
> > https://syzkaller.appspot.com/bug?extid=9a5e789e4725b9ef1316
> > compiler:       gcc (GCC) 9.0.0 20181231 (experimental)
> > syz repro:      
> > https://syzkaller.appspot.com/x/repro.syz?x=151b1109e00000
> > C reproducer:   
> > https://syzkaller.appspot.com/x/repro.c?x=128bfdd9e00000
> > 
> > The bug was bisected to:
> > 
> > commit 0c1b9970ddd4cc41002321c3877e7f91aacb896d
> > Author: Dan Carpenter <dan.carpenter@oracle.com>
> > Date:   Fri Jul 28 14:42:27 2017 +0000
> > 
> >     staging: lustre: lustre: Off by two in lmv_fid2path()
> > 
> > bisection log:  
> > https://syzkaller.appspot.com/x/bisect.txt?x=17e6c3e9e00000
> > final crash:    
> > https://syzkaller.appspot.com/x/report.txt?x=1416c3e9e00000
> > console output: 
> > https://syzkaller.appspot.com/x/log.txt?x=1016c3e9e00000
> > 
> > IMPORTANT: if you fix the bug, please add the following tag to the
> > commit:
> > Reported-by: syzbot+9a5e789e4725b9ef1316@syzkaller.appspotmail.com
> > Fixes: 0c1b9970ddd4 ("staging: lustre: lustre: Off by two in
> > lmv_fid2path()")
> > 
> > audit: audit_backlog=13 > audit_backlog_limit=7
> > audit: audit_lost=1 audit_rate_limit=0 audit_backlog_limit=7
> > Kernel panic - not syncing: audit: backlog limit exceeded
> > CPU: 1 PID: 9913 Comm: syz-executor024 Not tainted 5.6.0-rc1-
> > syzkaller #0
> > Hardware name: Google Google Compute Engine/Google Compute Engine,
> > BIOS Google 01/01/2011
> > Call Trace:
> >  __dump_stack lib/dump_stack.c:77 [inline]
> >  dump_stack+0x197/0x210 lib/dump_stack.c:118
> >  panic+0x2e3/0x75c kernel/panic.c:221
> >  audit_panic.cold+0x32/0x32 kernel/audit.c:307
> >  audit_log_lost kernel/audit.c:377 [inline]
> >  audit_log_lost+0x8b/0x180 kernel/audit.c:349
> >  audit_log_start kernel/audit.c:1788 [inline]
> >  audit_log_start+0x70e/0x7c0 kernel/audit.c:1745
> >  audit_log+0x95/0x120 kernel/audit.c:2345
> >  xt_replace_table+0x61d/0x830 net/netfilter/x_tables.c:1413
> >  __do_replace+0x1da/0x950 net/ipv6/netfilter/ip6_tables.c:1084
> >  do_replace net/ipv6/netfilter/ip6_tables.c:1157 [inline]
> >  do_ip6t_set_ctl+0x33a/0x4c8 net/ipv6/netfilter/ip6_tables.c:1681
> >  nf_sockopt net/netfilter/nf_sockopt.c:106 [inline]
> >  nf_setsockopt+0x77/0xd0 net/netfilter/nf_sockopt.c:115
> >  ipv6_setsockopt net/ipv6/ipv6_sockglue.c:949 [inline]
> >  ipv6_setsockopt+0x147/0x180 net/ipv6/ipv6_sockglue.c:933
> >  tcp_setsockopt net/ipv4/tcp.c:3165 [inline]
> >  tcp_setsockopt+0x8f/0xe0 net/ipv4/tcp.c:3159
> >  sock_common_setsockopt+0x94/0xd0 net/core/sock.c:3149
> >  __sys_setsockopt+0x261/0x4c0 net/socket.c:2130
> >  __do_sys_setsockopt net/socket.c:2146 [inline]
> >  __se_sys_setsockopt net/socket.c:2143 [inline]
> >  __x64_sys_setsockopt+0xbe/0x150 net/socket.c:2143
> >  do_syscall_64+0xfa/0x790 arch/x86/entry/common.c:294
> >  entry_SYSCALL_64_after_hwframe+0x49/0xbe
> > RIP: 0033:0x44720a
> > Code: 49 89 ca b8 37 00 00 00 0f 05 48 3d 01 f0 ff ff 0f 83 1a e0
> > fb ff c3 66 0f 1f 84 00 00 00 00 00 49 89 ca b8 36 00 00 00 0f 05
> > <48> 3d 01 f0 ff ff 0f 83 fa df fb ff c3 66 0f 1f 84 00 00 00 00 00
> > RSP: 002b:00007ffd032dec78 EFLAGS: 00000286 ORIG_RAX:
> > 0000000000000036
> > RAX: ffffffffffffffda RBX: 0000000000000003 RCX: 000000000044720a
> > RDX: 0000000000000040 RSI: 0000000000000029 RDI: 0000000000000003
> > RBP: 00007ffd032deda0 R08: 00000000000003b8 R09: 0000000000004000
> > R10: 00000000006d7b40 R11: 0000000000000286 R12: 00007ffd032deca0
> > R13: 00000000006d9d60 R14: 0000000000000029 R15: 00000000006d7ba0
> > Kernel Offset: disabled
> > Rebooting in 86400 seconds..
> > 
> > 
> > ---
> > This bug is generated by a bot. It may contain errors.
> > See https://goo.gl/tpsmEJ for more information about syzbot.
> > syzbot engineers can be reached at syzkaller@googlegroups.com.
> > 
> > syzbot will keep track of this bug report. See:
> > https://goo.gl/tpsmEJ#status for how to communicate with syzbot.
> > For information about bisection process see: 
> > https://goo.gl/tpsmEJ#bisection
> > syzbot can test patches for this bug, for details see:
> > https://goo.gl/tpsmEJ#testing-patches
> 
> Similar to syzbot report 72461ac44b36c98f58e5, see my comments there.
> 

