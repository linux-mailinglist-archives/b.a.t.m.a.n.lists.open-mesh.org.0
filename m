Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id DEC7F437CAF
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 22 Oct 2021 20:41:30 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id B5B4680CD3;
	Fri, 22 Oct 2021 20:41:29 +0200 (CEST)
Received: from mail-io1-f70.google.com (mail-io1-f70.google.com [209.85.166.70])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id A59CA80CD3
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 22 Oct 2021 20:41:26 +0200 (CEST)
Received: by mail-io1-f70.google.com with SMTP id l17-20020a05660227d100b005d6609eb90eso3798055ios.16
        for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 22 Oct 2021 11:41:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
        bh=uzHEu8JcrOhTmWUji7U7XIAkxlSL4g7hVEq0Ja4DQ40=;
        b=zwY6d6NJrmtUDD5WfOo1sAavbeI+B3+29e7xqSjBQh2w/jjeKHjpszAixoMNPuAdkC
         dRre89DXIXNIjtY13Bh+6YFt1svmoGN6HQDEFSYuDq+W89aMBNRtBPpZOPo4UDJR0d8J
         KfWnNliqPQ6gl/M6fw/NR549uZcQtx04MWCjGK3hr6PmNcu9E3FgYfirJuUW7fC+oGq4
         437e7p4hMCjF+3PYJ20G5WXiEgbAvIt5iF/cTcnWq1qIp/xEJ7LK2AR4CsrqYOR0/P7l
         NFq7edO5ftajHf6r68IV8Pd6G2LI9OmcwmhRuNhCXAAts+LP9kp9JxzjeS0fRG3bm/rl
         k9uQ==
X-Gm-Message-State: AOAM532JiRti6/UJqgtjlCcm+Nnrkkjw9hBeja/qvgpYYdwtbGDC9Eax
	SMfwasQevs1rjPYswxUqoz6nt3p+8GF+bsgaTFY/nckIo3EE
X-Google-Smtp-Source: ABdhPJxRQqZLZSCanV9ISO1MVWEVuagxTVVVIOCj0tH6GVZa8TIqZbGVlUZT+7dHExrn8qUR3kJiXPj3je7oQOLcGm1sK2ZZyGxe
MIME-Version: 1.0
X-Received: by 2002:a6b:cd8c:: with SMTP id d134mr860000iog.191.1634928085221;
 Fri, 22 Oct 2021 11:41:25 -0700 (PDT)
Date: Fri, 22 Oct 2021 11:41:25 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000c0c8d505cef55b23@google.com>
Subject: [syzbot] WARNING: ODEBUG bug in batadv_nc_mesh_free
From: syzbot <syzbot+1dca817d274a3fb19f2b@syzkaller.appspotmail.com>
To: a@unstable.cc, b.a.t.m.a.n@lists.open-mesh.org, davem@davemloft.net,
	kuba@kernel.org, linux-kernel@vger.kernel.org, mareklindner@neomailbox.ch,
	netdev@vger.kernel.org, sven@narfation.org, sw@simonwunderlich.de,
	syzkaller-bugs@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1634928086;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type;
	bh=uzHEu8JcrOhTmWUji7U7XIAkxlSL4g7hVEq0Ja4DQ40=;
	b=lruWURsIC3JrLxZ1frrA3VE/mm+H56WRCQY5cgYEoe3uFPR2JHpLQmT/8k39ttl01dAX6q
	BDgzh2vx2+wax+q4V/hloTc8/rudGhtYBiEnQSMabv4F5cVUsVMmoIBFoVrDS/X7c9nzYG
	rslIt1DQforxy7P7qEFwh0iFBENqk78=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of 31QVzYQkbAL4w23oeppivettmh.ksskpiywivgsrxirx.gsq@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com designates 209.85.166.70 as permitted sender) smtp.mailfrom=31QVzYQkbAL4w23oeppivettmh.ksskpiywivgsrxirx.gsq@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com;
	dmarc=fail reason="SPF not aligned (relaxed), No valid DKIM" header.from=appspotmail.com (policy=none)
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1634928086; a=rsa-sha256;
	cv=none;
	b=0CdIEGsRtRs4yZnYu2vYGmwRaqrxbgjQZhE/wCdpyCRCZTG9mBTHj2Gw1+4m25PiYsSrno
	kHgBS+xrB08V++9G4M+Ftkvn9+4D3bV2vgaH7fqqtD2C14D8rhI9/ED42HXTxVjMeJarUH
	u+tfFNwl6v9KTB3cDltJZUfegXIb6YI=
Message-ID-Hash: J4GFXYC4URAQ5M2XC2P4VDZ3CN4ZBRVB
X-Message-ID-Hash: J4GFXYC4URAQ5M2XC2P4VDZ3CN4ZBRVB
X-MailFrom: 31QVzYQkbAL4w23oeppivettmh.ksskpiywivgsrxirx.gsq@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/J4GFXYC4URAQ5M2XC2P4VDZ3CN4ZBRVB/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Hello,

syzbot found the following issue on:

HEAD commit:    e0bfcf9c77d9 Merge tag 'mlx5-fixes-2021-10-20' of git://gi..
git tree:       net
console output: https://syzkaller.appspot.com/x/log.txt?x=17900a0cb00000
kernel config:  https://syzkaller.appspot.com/x/.config?x=bab9d35f204746a7
dashboard link: https://syzkaller.appspot.com/bug?extid=1dca817d274a3fb19f2b
compiler:       gcc (Debian 10.2.1-6) 10.2.1 20210110, GNU ld (GNU Binutils for Debian) 2.35.2
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=144d76b4b00000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=14732b80b00000

Bisection is inconclusive: the issue happens on the oldest tested release.

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=14093652b00000
final oops:     https://syzkaller.appspot.com/x/report.txt?x=16093652b00000
console output: https://syzkaller.appspot.com/x/log.txt?x=12093652b00000

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+1dca817d274a3fb19f2b@syzkaller.appspotmail.com

R13: 0000000000000000 R14: 0000000000000000 R15: 0000000000000000
------------[ cut here ]------------
ODEBUG: assert_init not available (active state 0) object type: timer_list hint: 0x0
WARNING: CPU: 0 PID: 6548 at lib/debugobjects.c:505 debug_print_object+0x16e/0x250 lib/debugobjects.c:505
Modules linked in:
CPU: 0 PID: 6548 Comm: syz-executor286 Not tainted 5.15.0-rc5-syzkaller #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 01/01/2011
RIP: 0010:debug_print_object+0x16e/0x250 lib/debugobjects.c:505
Code: ff df 48 89 fa 48 c1 ea 03 80 3c 02 00 0f 85 af 00 00 00 48 8b 14 dd 80 3e e4 89 4c 89 ee 48 c7 c7 80 32 e4 89 e8 5e 1d 15 05 <0f> 0b 83 05 d5 39 90 09 01 48 83 c4 18 5b 5d 41 5c 41 5d 41 5e c3
RSP: 0018:ffffc90002d7ecc0 EFLAGS: 00010086
RAX: 0000000000000000 RBX: 0000000000000005 RCX: 0000000000000000
RDX: ffff8880163c8000 RSI: ffffffff815e88a8 RDI: fffff520005afd8a
RBP: 0000000000000001 R08: 0000000000000000 R09: 0000000000000000
R10: ffffffff815e264e R11: 0000000000000000 R12: ffffffff898de560
R13: ffffffff89e43900 R14: ffffffff81658550 R15: 1ffff920005afda3
FS:  0000555555c03300(0000) GS:ffff8880b9c00000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00007fef3003e098 CR3: 0000000073ad0000 CR4: 00000000003506f0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
Call Trace:
 debug_object_assert_init lib/debugobjects.c:895 [inline]
 debug_object_assert_init+0x1f4/0x2e0 lib/debugobjects.c:866
 debug_timer_assert_init kernel/time/timer.c:739 [inline]
 debug_assert_init kernel/time/timer.c:784 [inline]
 del_timer+0x6d/0x110 kernel/time/timer.c:1204
 try_to_grab_pending+0x6d/0xd0 kernel/workqueue.c:1270
 __cancel_work_timer+0xa6/0x570 kernel/workqueue.c:3129
 batadv_nc_mesh_free+0x41/0x120 net/batman-adv/network-coding.c:1869
 batadv_mesh_free+0x7d/0x170 net/batman-adv/main.c:245
 batadv_mesh_init+0x62f/0x710 net/batman-adv/main.c:226
 batadv_softif_init_late+0xad4/0xdd0 net/batman-adv/soft-interface.c:804
 register_netdevice+0x51e/0x1500 net/core/dev.c:10229
 batadv_softif_newlink+0x6e/0x90 net/batman-adv/soft-interface.c:1068
 __rtnl_newlink+0x106d/0x1750 net/core/rtnetlink.c:3458
 rtnl_newlink+0x64/0xa0 net/core/rtnetlink.c:3506
 rtnetlink_rcv_msg+0x413/0xb80 net/core/rtnetlink.c:5572
 netlink_rcv_skb+0x153/0x420 net/netlink/af_netlink.c:2510
 netlink_unicast_kernel net/netlink/af_netlink.c:1319 [inline]
 netlink_unicast+0x533/0x7d0 net/netlink/af_netlink.c:1345
 netlink_sendmsg+0x86d/0xdb0 net/netlink/af_netlink.c:1935
 sock_sendmsg_nosec net/socket.c:704 [inline]
 sock_sendmsg+0xcf/0x120 net/socket.c:724
 ____sys_sendmsg+0x6e8/0x810 net/socket.c:2409
 ___sys_sendmsg+0xf3/0x170 net/socket.c:2463
 __sys_sendmsg+0xe5/0x1b0 net/socket.c:2492
 do_syscall_x64 arch/x86/entry/common.c:50 [inline]
 do_syscall_64+0x35/0xb0 arch/x86/entry/common.c:80
 entry_SYSCALL_64_after_hwframe+0x44/0xae
RIP: 0033:0x7f14439a87e9
Code: 28 c3 e8 2a 14 00 00 66 2e 0f 1f 84 00 00 00 00 00 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 c0 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007ffda1fa6268 EFLAGS: 00000246 ORIG_RAX: 000000000000002e
RAX: ffffffffffffffda RBX: 0000000000000002 RCX: 00007f14439a87e9
RDX: 0000000000000000 RSI: 0000000020000140 RDI: 0000000000000003
RBP: 00007ffda1fa6270 R08: 0000000000000002 R09: 00007f1443003531
R10: 0000000000000000 R11: 0000000000000246 R12: 0000000000000004
R13: 0000000000000000 R14: 0000000000000000 R15: 0000000000000000


---
This report is generated by a bot. It may contain errors.
See https://goo.gl/tpsmEJ for more information about syzbot.
syzbot engineers can be reached at syzkaller@googlegroups.com.

syzbot will keep track of this issue. See:
https://goo.gl/tpsmEJ#status for how to communicate with syzbot.
For information about bisection process see: https://goo.gl/tpsmEJ#bisection
syzbot can test patches for this issue, for details see:
https://goo.gl/tpsmEJ#testing-patches
