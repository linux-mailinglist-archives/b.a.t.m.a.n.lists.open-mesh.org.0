Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id AA7A6436E2F
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 22 Oct 2021 01:19:29 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 7E038803BA;
	Fri, 22 Oct 2021 01:19:28 +0200 (CEST)
Received: from mail-io1-f72.google.com (mail-io1-f72.google.com [209.85.166.72])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 9CC8A80CEE
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 22 Oct 2021 01:19:25 +0200 (CEST)
Received: by mail-io1-f72.google.com with SMTP id f19-20020a6b6213000000b005ddc4ce4deeso1595422iog.0
        for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 21 Oct 2021 16:19:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
        bh=zNqTu4uMRk0iWztvQl/HZN3iKjuv/LembImAnbSpcvo=;
        b=t/9BI0wpubE9jEZI8AtI4J8MRSCSaKHIU1wrcfn0nsSHkIg0h6e97LbmQ5ui9PYPE1
         o1ZNF9cy8vMUp9EbeZtXehXMv6WyAuHGUaGFZhyqunQJPXKOS5dlnSX3nEgNiAgdmHpx
         3y+SaySVfnYd1ejfI5417hu7in1akh/AqYdueSvLGyomWiVaYfQUAxkc12rPsT9c6gm9
         fANwJhd2fs4CHK1kGWM5vs4h+7Y4J0CzSYvhST/Tv57YmgPAZ+KyTmLxF+kW4kykKvsS
         OSI6kVFnZSnRth/2CA9g4pfpttsSWQcBdSFySc/kinGPAeWS0bdNPsZd1Yzc42Ac2RTw
         4qkA==
X-Gm-Message-State: AOAM530lCul/WBbJgebSnWr53ij+SrrkWkx256Yks6dw8eEruNSnIHAu
	tUCcAX5o198geJAQs55if5CGUDxRV3nST7Z+OCZlMxmwnGmo
X-Google-Smtp-Source: ABdhPJxIKlRscXg0XNrEGTrtfckSCo1BWrEoxIjkCUYyTAtO2DK6AsRsrdBBlCzVJD8rGcveL0GuPDKiGOXo+lycOJOiZQeXPKUi
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:164d:: with SMTP id v13mr5331311ilu.10.1634858364316;
 Thu, 21 Oct 2021 16:19:24 -0700 (PDT)
Date: Thu, 21 Oct 2021 16:19:24 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <00000000000010317a05cee52016@google.com>
Subject: [syzbot] WARNING in batadv_v_ogm_free
From: syzbot <syzbot+b6a62d5cb9fe05a0e3a3@syzkaller.appspotmail.com>
To: a@unstable.cc, b.a.t.m.a.n@lists.open-mesh.org, davem@davemloft.net,
	kuba@kernel.org, linux-kernel@vger.kernel.org, mareklindner@neomailbox.ch,
	netdev@vger.kernel.org, sven@narfation.org, sw@simonwunderlich.de,
	syzkaller-bugs@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1634858365;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type;
	bh=zNqTu4uMRk0iWztvQl/HZN3iKjuv/LembImAnbSpcvo=;
	b=xocZlhtKNuZxTjFMUYhwUKwPeSUfDoJuapWBRNG5O21YTuUNnWfeLsc2up4TvpOI54RFMP
	3n6hE2fdVXTWWjpE5ZcRqJj6d8SBvj3KHcWZxdrvnAXqvQJhMlyaChlEOUDh+InRtz6Fbh
	yKA3wRNN82kKzxvrXMlrtikgi72URiQ=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of 3fPVxYQkbAEEv12ndoohudsslg.jrrjohxvhufrqwhqw.frp@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com designates 209.85.166.72 as permitted sender) smtp.mailfrom=3fPVxYQkbAEEv12ndoohudsslg.jrrjohxvhufrqwhqw.frp@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com;
	dmarc=fail reason="SPF not aligned (relaxed), No valid DKIM" header.from=appspotmail.com (policy=none)
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1634858365; a=rsa-sha256;
	cv=none;
	b=oygBv1uaSV6UoZiltcZFhStQPpfYJ02pOB15OtQISCWeD7/TIxouDSeFEcJhFRs9i2F9u7
	gJYmjsRZsAQ8a+iFfukJ2XYJuVONBtFxRG/Ne8OjS0PdXaWMWa2QeTGSzpC8UG4Ts2Qioj
	xoubXZ/mYVA69cmt2ubU1gI+ZSnx0h4=
Message-ID-Hash: JCWX24ILZB65G63J2KQ7CHTQZM6JY2PI
X-Message-ID-Hash: JCWX24ILZB65G63J2KQ7CHTQZM6JY2PI
X-MailFrom: 3fPVxYQkbAEEv12ndoohudsslg.jrrjohxvhufrqwhqw.frp@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/JCWX24ILZB65G63J2KQ7CHTQZM6JY2PI/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Hello,

syzbot found the following issue on:

HEAD commit:    2f111a6fd5b5 Merge tag 'ceph-for-5.15-rc7' of git://github..
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=121d909f300000
kernel config:  https://syzkaller.appspot.com/x/.config?x=d95853dad8472c91
dashboard link: https://syzkaller.appspot.com/bug?extid=b6a62d5cb9fe05a0e3a3
compiler:       Debian clang version 11.0.1-2, GNU ld (GNU Binutils for Debian) 2.35.2

Unfortunately, I don't have any reproducer for this issue yet.

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+b6a62d5cb9fe05a0e3a3@syzkaller.appspotmail.com

------------[ cut here ]------------
ODEBUG: assert_init not available (active state 0) object type: timer_list hint: 0x0
WARNING: CPU: 0 PID: 9723 at lib/debugobjects.c:508 debug_print_object lib/debugobjects.c:505 [inline]
WARNING: CPU: 0 PID: 9723 at lib/debugobjects.c:508 debug_object_assert_init+0x1fa/0x250 lib/debugobjects.c:895
Modules linked in:
CPU: 0 PID: 9723 Comm: syz-executor.5 Not tainted 5.15.0-rc6-syzkaller #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 01/01/2011
RIP: 0010:debug_print_object lib/debugobjects.c:505 [inline]
RIP: 0010:debug_object_assert_init+0x1fa/0x250 lib/debugobjects.c:895
Code: e8 4b 15 b8 fd 4c 8b 45 00 48 c7 c7 a0 31 b4 8a 48 c7 c6 00 2e b4 8a 48 c7 c2 e0 33 b4 8a 31 c9 49 89 d9 31 c0 e8 b6 c6 36 fd <0f> 0b ff 05 3a 5c c5 09 48 83 c5 38 48 89 e8 48 c1 e8 03 42 80 3c
RSP: 0018:ffffc90015a06698 EFLAGS: 00010046
RAX: ccc2ef1263c32100 RBX: 0000000000000000 RCX: 0000000000040000
RDX: ffffc90015ff3000 RSI: 000000000003ffff RDI: 0000000000040000
RBP: ffffffff8a512d00 R08: ffffffff81693402 R09: ffffed1017383f2c
R10: ffffed1017383f2c R11: 0000000000000000 R12: dffffc0000000000
R13: ffff8880a4325898 R14: 0000000000000000 R15: ffffffff90bebb30
FS:  00007fb87671b700(0000) GS:ffff8880b9c00000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00005573fb61a270 CR3: 000000009b076000 CR4: 00000000003506f0
Call Trace:
 debug_timer_assert_init kernel/time/timer.c:739 [inline]
 debug_assert_init kernel/time/timer.c:784 [inline]
 del_timer+0xa5/0x3d0 kernel/time/timer.c:1204
 try_to_grab_pending+0x151/0xbb0 kernel/workqueue.c:1270
 __cancel_work_timer+0x14c/0x710 kernel/workqueue.c:3129
 batadv_v_ogm_free+0x2e/0xc0 net/batman-adv/bat_v_ogm.c:1076
 batadv_mesh_free+0x67/0x140 net/batman-adv/main.c:244
 batadv_mesh_init+0x4e5/0x550 net/batman-adv/main.c:226
 batadv_softif_init_late+0x8fe/0xd70 net/batman-adv/soft-interface.c:804
 register_netdevice+0x826/0x1c30 net/core/dev.c:10229
 __rtnl_newlink net/core/rtnetlink.c:3458 [inline]
 rtnl_newlink+0x14b3/0x1d10 net/core/rtnetlink.c:3506
 rtnetlink_rcv_msg+0x934/0xe60 net/core/rtnetlink.c:5572
 netlink_rcv_skb+0x200/0x470 net/netlink/af_netlink.c:2510
 netlink_unicast_kernel net/netlink/af_netlink.c:1319 [inline]
 netlink_unicast+0x814/0x9f0 net/netlink/af_netlink.c:1345
 netlink_sendmsg+0xa29/0xe50 net/netlink/af_netlink.c:1935
 sock_sendmsg_nosec net/socket.c:704 [inline]
 sock_sendmsg net/socket.c:724 [inline]
 ____sys_sendmsg+0x5b9/0x910 net/socket.c:2409
 ___sys_sendmsg net/socket.c:2463 [inline]
 __sys_sendmsg+0x36f/0x450 net/socket.c:2492
 do_syscall_x64 arch/x86/entry/common.c:50 [inline]
 do_syscall_64+0x44/0xd0 arch/x86/entry/common.c:80
 entry_SYSCALL_64_after_hwframe+0x44/0xae
RIP: 0033:0x7fb8791a5a39
Code: ff ff c3 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 40 00 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 bc ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007fb87671b188 EFLAGS: 00000246 ORIG_RAX: 000000000000002e
RAX: ffffffffffffffda RBX: 00007fb8792a8f60 RCX: 00007fb8791a5a39
RDX: 0000000000000000 RSI: 0000000020000140 RDI: 0000000000000003
RBP: 00007fb87671b1d0 R08: 0000000000000000 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000246 R12: 0000000000000002
R13: 00007fffd6c2d8ef R14: 00007fb87671b300 R15: 0000000000022000


---
This report is generated by a bot. It may contain errors.
See https://goo.gl/tpsmEJ for more information about syzbot.
syzbot engineers can be reached at syzkaller@googlegroups.com.

syzbot will keep track of this issue. See:
https://goo.gl/tpsmEJ#status for how to communicate with syzbot.
