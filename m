Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 65EE925317A
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 26 Aug 2020 16:38:28 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 3BD20803A8;
	Wed, 26 Aug 2020 16:38:27 +0200 (CEST)
Received: from mail-io1-f69.google.com (mail-io1-f69.google.com [209.85.166.69])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 77707803A8
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 26 Aug 2020 16:38:24 +0200 (CEST)
Received: by mail-io1-f69.google.com with SMTP id w9so1357641ior.20
        for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 26 Aug 2020 07:38:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
        bh=Xxqad3xL8qqUrM4EVjmvmkbniZ+gtAPelAMhad+ABBc=;
        b=DeeGgyM+z0J8rIvqslqGEz4Msn3WgKZZbZXUqPYFdvSHj/blqZr7SEEZd/qj56k4U3
         768IS9UV6zYCu314G9uasrF4mx+mjJO1cDEnDYyULJn6te/4XpGoh2xlUVby2Eqv+tXD
         QnkjvYlCGkZP92jKh9TwGrew3muLzlP8f1jif996szbWit2TWRzHCpDaGA/Yg60Vgz0m
         uOlukbDbdY3Xd7KRgRS69pdUlGqp20PY7JLe99FYWvEXHKIMcs0P26WjL4TbWCBJisVq
         If+GCAwsacbWHO0a5A1UXsWk13GnxOhTTCEjmo0e90pyCw543exBfnhAUfPskyoCsC0q
         g/6w==
X-Gm-Message-State: AOAM532Xfls2W4NzKMIP8UCcO0SHweFNwzCJWWpfg+U/BqlVplDcZl8C
	wdDgAEMJ2VWWzxmbJxK9+uEyjvkN/ACvFbATlsOkoXIowI3i
X-Google-Smtp-Source: ABdhPJx/wE3q6toYtnfpdXKUpmAL2eZoCUl21CrqenWwy9a2FBEuv8fnXX8NeASztT0UzeKqqCLDzTQYVEgaZz53g+szfsyEfCYQ
MIME-Version: 1.0
X-Received: by 2002:a05:6602:2b08:: with SMTP id p8mr8153004iov.180.1598452703156;
 Wed, 26 Aug 2020 07:38:23 -0700 (PDT)
Date: Wed, 26 Aug 2020 07:38:23 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000008fddd805adc8c56f@google.com>
Subject: general protection fault in rt6_fill_node
From: syzbot <syzbot+81af6e9b3c4b8bc874f8@syzkaller.appspotmail.com>
To: John.Linn@xilinx.com, a@unstable.cc, andriin@fb.com, anirudh@xilinx.com,
	ast@kernel.org, b.a.t.m.a.n@lists.open-mesh.org, bpf@vger.kernel.org,
	daniel@iogearbox.net, davem@davemloft.net, hancock@sedsystems.ca,
	john.fastabend@gmail.com, kafai@fb.com, kpsingh@chromium.org, kuba@kernel.org,
	kuznet@ms2.inr.ac.ru, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, mareklindner@neomailbox.ch,
	michal.simek@xilinx.com, netdev@vger.kernel.org, songliubraving@fb.com,
	sw@simonwunderlich.de, syzkaller-bugs@googlegroups.com, yhs@fb.com,
	yoshfuji@linux-ipv6.org
Content-Type: text/plain; charset="UTF-8"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1598452704;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type;
	bh=Xxqad3xL8qqUrM4EVjmvmkbniZ+gtAPelAMhad+ABBc=;
	b=s5glFEGHW5QV7evpeMwZA5LNe7QqSzw9x4MGDR5ZsxmVxGOxadyqLheRe903i0k19Bm1Ou
	6PGZ4s40dw35vxxvzpgatqdcR3I8CGzHRhZEDrlvO30cah+UHE30tzY1AjKL7fmFyTxTLO
	ME+gU1gX0EKLqWcJd6UZ/I5YoULE2/w=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1598452704; a=rsa-sha256;
	cv=none;
	b=3SL+azfBx/dpHkfuTkf7r8cMqQDNhSHVnBCNkuKIjYh4P8fSfKCQ1hVQwDstzLu3JzEcDv
	XLX/48pL6NsYQxFEY2wAtl0uQXg8706z9R35ugjD2pVWFulUcnY5p1F/v8YQvuajEpbvlF
	zyl0s2gMTZo62qvQzllydaScpov6VdY=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of 333NGXwkbAOAUabMCNNGTCRRKF.IQQINGWUGTEQPVGPV.EQO@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com designates 209.85.166.69 as permitted sender) smtp.mailfrom=333NGXwkbAOAUabMCNNGTCRRKF.IQQINGWUGTEQPVGPV.EQO@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
Message-ID-Hash: YOH5GXLM4SKFXJJ2626BMC4AUZ2JZG2H
X-Message-ID-Hash: YOH5GXLM4SKFXJJ2626BMC4AUZ2JZG2H
X-MailFrom: 333NGXwkbAOAUabMCNNGTCRRKF.IQQINGWUGTEQPVGPV.EQO@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/YOH5GXLM4SKFXJJ2626BMC4AUZ2JZG2H/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Hello,

syzbot found the following issue on:

HEAD commit:    d7223aa5 Merge branch 'l2tp-replace-custom-logging-code-wi..
git tree:       net-next
console output: https://syzkaller.appspot.com/x/log.txt?x=1399802e900000
kernel config:  https://syzkaller.appspot.com/x/.config?x=3d400a47d1416652
dashboard link: https://syzkaller.appspot.com/bug?extid=81af6e9b3c4b8bc874f8
compiler:       gcc (GCC) 10.1.0-syz 20200507
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=12949b5a900000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=17b60e46900000

The issue was bisected to:

commit 867d03bc238f62fcd28f287b9da8af5e483baeab
Author: Robert Hancock <hancock@sedsystems.ca>
Date:   Thu Jun 6 22:28:14 2019 +0000

    net: axienet: Add DMA registers to ethtool register dump

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=1523f266900000
final oops:     https://syzkaller.appspot.com/x/report.txt?x=1723f266900000
console output: https://syzkaller.appspot.com/x/log.txt?x=1323f266900000

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+81af6e9b3c4b8bc874f8@syzkaller.appspotmail.com
Fixes: 867d03bc238f ("net: axienet: Add DMA registers to ethtool register dump")

IPv6: RTM_NEWROUTE with no NLM_F_CREATE or NLM_F_REPLACE
IPv6: NLM_F_CREATE should be set when creating new route
IPv6: NLM_F_CREATE should be set when creating new route
general protection fault, probably for non-canonical address 0xdffffc0000000010: 0000 [#1] PREEMPT SMP KASAN
KASAN: null-ptr-deref in range [0x0000000000000080-0x0000000000000087]
CPU: 1 PID: 7050 Comm: syz-executor648 Not tainted 5.9.0-rc1-syzkaller #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 01/01/2011
RIP: 0010:nexthop_is_blackhole include/net/nexthop.h:240 [inline]
RIP: 0010:rt6_fill_node+0x1396/0x2940 net/ipv6/route.c:5584
Code: 3c 02 00 0f 85 ef 14 00 00 4d 8b 6d 10 e8 f2 1c 87 fa 49 8d bd 80 00 00 00 48 b8 00 00 00 00 00 fc ff df 48 89 fa 48 c1 ea 03 <80> 3c 02 00 0f 85 10 15 00 00 4d 8b ad 80 00 00 00 e8 34 4b 06 01
RSP: 0018:ffffc900063672b0 EFLAGS: 00010202
RAX: dffffc0000000000 RBX: ffff8880a88bd800 RCX: ffffffff86ed2456
RDX: 0000000000000010 RSI: ffffffff86ed248e RDI: 0000000000000080
RBP: ffffc900063673e8 R08: 0000000000000001 R09: ffff8880a88bd847
R10: 0000000000000001 R11: 0000000000000000 R12: ffff8880a8ded940
R13: 0000000000000000 R14: ffff8880a899ea00 R15: 0000000000000000
FS:  00000000010e3880(0000) GS:ffff8880ae700000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 0000000020000300 CR3: 00000000a8efa000 CR4: 00000000001506e0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
Call Trace:
 inet6_rt_notify+0x14c/0x2b0 net/ipv6/route.c:6017
 fib6_add_rt2node net/ipv6/ip6_fib.c:1246 [inline]
 fib6_add+0x2840/0x3ed0 net/ipv6/ip6_fib.c:1473
 __ip6_ins_rt net/ipv6/route.c:1317 [inline]
 ip6_route_add+0x8b/0x150 net/ipv6/route.c:3744
 inet6_rtm_newroute+0x152/0x160 net/ipv6/route.c:5360
 rtnetlink_rcv_msg+0x44e/0xad0 net/core/rtnetlink.c:5563
 netlink_rcv_skb+0x15a/0x430 net/netlink/af_netlink.c:2470
 netlink_unicast_kernel net/netlink/af_netlink.c:1304 [inline]
 netlink_unicast+0x533/0x7d0 net/netlink/af_netlink.c:1330
 netlink_sendmsg+0x856/0xd90 net/netlink/af_netlink.c:1919
 sock_sendmsg_nosec net/socket.c:651 [inline]
 sock_sendmsg+0xcf/0x120 net/socket.c:671
 ____sys_sendmsg+0x6e8/0x810 net/socket.c:2353
 ___sys_sendmsg+0xf3/0x170 net/socket.c:2407
 __sys_sendmsg+0xe5/0x1b0 net/socket.c:2440
 do_syscall_64+0x2d/0x70 arch/x86/entry/common.c:46
 entry_SYSCALL_64_after_hwframe+0x44/0xa9
RIP: 0033:0x443ef9
Code: e8 8c 07 03 00 48 83 c4 18 c3 0f 1f 80 00 00 00 00 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 0f 83 bb 09 fc ff c3 66 2e 0f 1f 84 00 00 00 00
RSP: 002b:00007fff25138308 EFLAGS: 00000246 ORIG_RAX: 000000000000002e
RAX: ffffffffffffffda RBX: 0000000000000003 RCX: 0000000000443ef9
RDX: 0000000000000000 RSI: 0000000020000300 RDI: 0000000000000003
RBP: 00007fff25138310 R08: 0000000000000000 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000246 R12: 000000000000e25f
R13: 0000000000000000 R14: 0000000000000000 R15: 0000000000000000
Modules linked in:
---[ end trace 46e9e8854602a8a3 ]---
RIP: 0010:nexthop_is_blackhole include/net/nexthop.h:240 [inline]
RIP: 0010:rt6_fill_node+0x1396/0x2940 net/ipv6/route.c:5584
Code: 3c 02 00 0f 85 ef 14 00 00 4d 8b 6d 10 e8 f2 1c 87 fa 49 8d bd 80 00 00 00 48 b8 00 00 00 00 00 fc ff df 48 89 fa 48 c1 ea 03 <80> 3c 02 00 0f 85 10 15 00 00 4d 8b ad 80 00 00 00 e8 34 4b 06 01
RSP: 0018:ffffc900063672b0 EFLAGS: 00010202
RAX: dffffc0000000000 RBX: ffff8880a88bd800 RCX: ffffffff86ed2456
RDX: 0000000000000010 RSI: ffffffff86ed248e RDI: 0000000000000080
RBP: ffffc900063673e8 R08: 0000000000000001 R09: ffff8880a88bd847
R10: 0000000000000001 R11: 0000000000000000 R12: ffff8880a8ded940
R13: 0000000000000000 R14: ffff8880a899ea00 R15: 0000000000000000
FS:  00000000010e3880(0000) GS:ffff8880ae700000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 0000000020000300 CR3: 00000000a8efa000 CR4: 00000000001506e0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400


---
This report is generated by a bot. It may contain errors.
See https://goo.gl/tpsmEJ for more information about syzbot.
syzbot engineers can be reached at syzkaller@googlegroups.com.

syzbot will keep track of this issue. See:
https://goo.gl/tpsmEJ#status for how to communicate with syzbot.
For information about bisection process see: https://goo.gl/tpsmEJ#bisection
syzbot can test patches for this issue, for details see:
https://goo.gl/tpsmEJ#testing-patches
