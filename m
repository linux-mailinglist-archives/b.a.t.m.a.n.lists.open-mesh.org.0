Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 72C1516A021
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 24 Feb 2020 09:36:13 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 522C8803EA;
	Mon, 24 Feb 2020 09:36:12 +0100 (CET)
Received: from mail-il1-f199.google.com (mail-il1-f199.google.com
 [209.85.166.199])
 by diktynna.open-mesh.org (Postfix) with ESMTPS id 6B5DD80200
 for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 24 Feb 2020 09:18:15 +0100 (CET)
Received: by mail-il1-f199.google.com with SMTP id k9so16862466ili.8
 for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 24 Feb 2020 00:18:15 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
 bh=JLPU87tnj1f/dwZOZUf4sgSYUIjyyQgE9NDCtchiKHg=;
 b=UNtdQuT+vYPZXi2al7v2ZOsF7obe6z4rcnFVEduTaVjn1HOlF1qacobb3/GVoAisoj
 ciaSr6UVq0/6KLGpD3SHj083HatmjC0rGvBz7yaIXFn9EW83WqvoGqyy0mSGMhtODJi2
 tiYzhq4eVqILuKcOgDdLuXVSnj5pT+ngI3VRdpa/12kAoaE+qHdDupwBKtysnd4zW5RL
 10Man8Xd2G1GUxlbNcPO5h79zBYS5bndzC/qxciyHzgsLSqdezXw0XzSkekgdhzaI5tF
 rD95gE5Pq+k918FQK2airxgk2Ot0CFqkowCqOstsislTPDJ6Afnetussuusc/cTPXw0/
 cToA==
X-Gm-Message-State: APjAAAXRWJJYJPQgqStZMzLLA46Lfvlcsiu7xP0N7klA2SJrNmMxb17w
 obIbzQF/A5PiF2OXpbiHdeN+TRLpr++LS5GlZEDZhoNn2/pl
X-Google-Smtp-Source: APXvYqweqrylK3pukroyPFpF1CqM/vmRCGM+KOrt5PclygW/HBOfAPZfaJMekDpiEsgrLRmdG8dMFShCCyW/LuXmtBU0b3/BSwvs
MIME-Version: 1.0
X-Received: by 2002:a92:3a07:: with SMTP id h7mr57387937ila.203.1582532294128; 
 Mon, 24 Feb 2020 00:18:14 -0800 (PST)
Date: Mon, 24 Feb 2020 00:18:14 -0800
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000003cbb40059f4e0346@google.com>
Subject: kernel panic: audit: backlog limit exceeded
From: syzbot <syzbot+9a5e789e4725b9ef1316@syzkaller.appspotmail.com>
To: a@unstable.cc, b.a.t.m.a.n@lists.open-mesh.org, dan.carpenter@oracle.com, 
 davem@davemloft.net, eparis@redhat.com, fzago@cray.com, 
 gregkh@linuxfoundation.org, john.hammond@intel.com, linux-audit@redhat.com, 
 linux-kernel@vger.kernel.org, mareklindner@neomailbox.ch, 
 netdev@vger.kernel.org, paul@paul-moore.com, sw@simonwunderlich.de, 
 syzkaller-bugs@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1582532295;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type;
 bh=JLPU87tnj1f/dwZOZUf4sgSYUIjyyQgE9NDCtchiKHg=;
 b=qKJXrRYq8HvBBad4QkVeAOkgEBcYCsG0rxSjjMTiO/bipbKqnoGdfgPpbm5mmNZZbEa85o
 jT6xScAf9mbwFT7HD5G2sTdNt+6dRk/aHrUvY0yiAE8bLlVT+7tg7ilEKj/9/6y9oPHDxk
 MHiU5VYY6G7V7pf+TWlU3B6PsoemVgI=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1582532295; a=rsa-sha256; cv=none;
 b=X3XgmhO5zch6oz7rNABvCSBo083L9LBtjQfOKfIuq/5K16aIASCA15gJqE0mMRPecLCi+M
 8Fug9Mr7+ZCBjE8dhXzF5hrREzryRT4vcxPSi4+a26w4N5eUMyHHx1i8mLsC47WNMEOiCa
 /vnLWUKq4+YjHL9757LefmU4AO02faI=
ARC-Authentication-Results: i=1; diktynna.open-mesh.org; dkim=none;
 spf=pass (diktynna.open-mesh.org: domain of
 3xoZTXgkbABsJPQB1CC5I1GG94.7FF7C5LJ5I3FEK5EK.3FD@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
 designates 209.85.166.199 as permitted sender)
 smtp.mailfrom=3xoZTXgkbABsJPQB1CC5I1GG94.7FF7C5LJ5I3FEK5EK.3FD@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
X-Mailman-Approved-At: Mon, 24 Feb 2020 09:36:05 +0100
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
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

Hello,

syzbot found the following crash on:

HEAD commit:    36a44bcd Merge branch 'bnxt_en-shutdown-and-kexec-kdump-re..
git tree:       net
console output: https://syzkaller.appspot.com/x/log.txt?x=148bfdd9e00000
kernel config:  https://syzkaller.appspot.com/x/.config?x=768cc3d3e277cc16
dashboard link: https://syzkaller.appspot.com/bug?extid=9a5e789e4725b9ef1316
compiler:       gcc (GCC) 9.0.0 20181231 (experimental)
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=151b1109e00000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=128bfdd9e00000

The bug was bisected to:

commit 0c1b9970ddd4cc41002321c3877e7f91aacb896d
Author: Dan Carpenter <dan.carpenter@oracle.com>
Date:   Fri Jul 28 14:42:27 2017 +0000

    staging: lustre: lustre: Off by two in lmv_fid2path()

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=17e6c3e9e00000
final crash:    https://syzkaller.appspot.com/x/report.txt?x=1416c3e9e00000
console output: https://syzkaller.appspot.com/x/log.txt?x=1016c3e9e00000

IMPORTANT: if you fix the bug, please add the following tag to the commit:
Reported-by: syzbot+9a5e789e4725b9ef1316@syzkaller.appspotmail.com
Fixes: 0c1b9970ddd4 ("staging: lustre: lustre: Off by two in lmv_fid2path()")

audit: audit_backlog=13 > audit_backlog_limit=7
audit: audit_lost=1 audit_rate_limit=0 audit_backlog_limit=7
Kernel panic - not syncing: audit: backlog limit exceeded
CPU: 1 PID: 9913 Comm: syz-executor024 Not tainted 5.6.0-rc1-syzkaller #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 01/01/2011
Call Trace:
 __dump_stack lib/dump_stack.c:77 [inline]
 dump_stack+0x197/0x210 lib/dump_stack.c:118
 panic+0x2e3/0x75c kernel/panic.c:221
 audit_panic.cold+0x32/0x32 kernel/audit.c:307
 audit_log_lost kernel/audit.c:377 [inline]
 audit_log_lost+0x8b/0x180 kernel/audit.c:349
 audit_log_start kernel/audit.c:1788 [inline]
 audit_log_start+0x70e/0x7c0 kernel/audit.c:1745
 audit_log+0x95/0x120 kernel/audit.c:2345
 xt_replace_table+0x61d/0x830 net/netfilter/x_tables.c:1413
 __do_replace+0x1da/0x950 net/ipv6/netfilter/ip6_tables.c:1084
 do_replace net/ipv6/netfilter/ip6_tables.c:1157 [inline]
 do_ip6t_set_ctl+0x33a/0x4c8 net/ipv6/netfilter/ip6_tables.c:1681
 nf_sockopt net/netfilter/nf_sockopt.c:106 [inline]
 nf_setsockopt+0x77/0xd0 net/netfilter/nf_sockopt.c:115
 ipv6_setsockopt net/ipv6/ipv6_sockglue.c:949 [inline]
 ipv6_setsockopt+0x147/0x180 net/ipv6/ipv6_sockglue.c:933
 tcp_setsockopt net/ipv4/tcp.c:3165 [inline]
 tcp_setsockopt+0x8f/0xe0 net/ipv4/tcp.c:3159
 sock_common_setsockopt+0x94/0xd0 net/core/sock.c:3149
 __sys_setsockopt+0x261/0x4c0 net/socket.c:2130
 __do_sys_setsockopt net/socket.c:2146 [inline]
 __se_sys_setsockopt net/socket.c:2143 [inline]
 __x64_sys_setsockopt+0xbe/0x150 net/socket.c:2143
 do_syscall_64+0xfa/0x790 arch/x86/entry/common.c:294
 entry_SYSCALL_64_after_hwframe+0x49/0xbe
RIP: 0033:0x44720a
Code: 49 89 ca b8 37 00 00 00 0f 05 48 3d 01 f0 ff ff 0f 83 1a e0 fb ff c3 66 0f 1f 84 00 00 00 00 00 49 89 ca b8 36 00 00 00 0f 05 <48> 3d 01 f0 ff ff 0f 83 fa df fb ff c3 66 0f 1f 84 00 00 00 00 00
RSP: 002b:00007ffd032dec78 EFLAGS: 00000286 ORIG_RAX: 0000000000000036
RAX: ffffffffffffffda RBX: 0000000000000003 RCX: 000000000044720a
RDX: 0000000000000040 RSI: 0000000000000029 RDI: 0000000000000003
RBP: 00007ffd032deda0 R08: 00000000000003b8 R09: 0000000000004000
R10: 00000000006d7b40 R11: 0000000000000286 R12: 00007ffd032deca0
R13: 00000000006d9d60 R14: 0000000000000029 R15: 00000000006d7ba0
Kernel Offset: disabled
Rebooting in 86400 seconds..


---
This bug is generated by a bot. It may contain errors.
See https://goo.gl/tpsmEJ for more information about syzbot.
syzbot engineers can be reached at syzkaller@googlegroups.com.

syzbot will keep track of this bug report. See:
https://goo.gl/tpsmEJ#status for how to communicate with syzbot.
For information about bisection process see: https://goo.gl/tpsmEJ#bisection
syzbot can test patches for this bug, for details see:
https://goo.gl/tpsmEJ#testing-patches
