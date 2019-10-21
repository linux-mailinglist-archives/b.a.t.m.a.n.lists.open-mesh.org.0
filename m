Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [78.46.248.236])
	by mail.lfdr.de (Postfix) with ESMTPS id C6358DE482
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 21 Oct 2019 08:26:54 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 31114807F6;
	Mon, 21 Oct 2019 08:26:46 +0200 (CEST)
Received: from mail-il1-f197.google.com (mail-il1-f197.google.com
 [209.85.166.197])
 by open-mesh.org (Postfix) with ESMTPS id 40CFD80164
 for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 21 Oct 2019 07:28:47 +0200 (CEST)
Received: by mail-il1-f197.google.com with SMTP id z1so5976250ilq.4
 for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 20 Oct 2019 22:28:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
 bh=RNA7wvEo4dZS4Zjh6nazheoAtSIOteZ88hIBmR8F1xQ=;
 b=oBfErba33ifDA1JEuscC9p3eDJqmD3Ovofa7STn4zJ6CO6qejzZbNjRMMouNQBVZx7
 Ag6BUL1iMz4j0AbY6o4GYrlURAMrFn40eWf+3fxi9jmuCR/tmdxts0/3bxGaLZFSMA7H
 ehFug51cYpX0neEletpKFZH3p1kkzG/O7/mduA95xUoXzYJfEyjYb2mMX8b8qd7tQn12
 ZV/IrytxZoqQorCCXBKfGPLZZxZCZJPsMgOuq5orjWT+n+KMaHH+vuRdD7a+DqhM/GOV
 6hvrXRrYJ6az6D/edkROyTkmkf3G3vp6jLdK2GPpP+3GAprsuOUsl7lAOv474bBQr/iq
 oRvQ==
X-Gm-Message-State: APjAAAWuJkmn3HnT+R81lZwDVxKF8d5OypuQ4A65iI+fvTsmYYhAI99P
 JX73/hKkF6nxBYq/vvkF4qZ8KnWZb8jC9kQaW6BTS5E5D5Gv
X-Google-Smtp-Source: APXvYqyCxl0gyCt8f14Ks5hJ2E9kauUFKQD0IBH+dz03PqnOwax24Qywyva4FwEaknsdd/yE0CqkhHO+VOHjd9NQkTK8A/cz5fxI
MIME-Version: 1.0
X-Received: by 2002:a6b:b2d5:: with SMTP id b204mr693498iof.137.1571635266901; 
 Sun, 20 Oct 2019 22:21:06 -0700 (PDT)
Date: Sun, 20 Oct 2019 22:21:06 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000ccde8d059564d93d@google.com>
Subject: general protection fault in batadv_iv_ogm_queue_add
From: syzbot <syzbot+7dd2da51d8ae6f990403@syzkaller.appspotmail.com>
To: a@unstable.cc, b.a.t.m.a.n@lists.open-mesh.org, davem@davemloft.net, 
 linux-kernel@vger.kernel.org, mareklindner@neomailbox.ch, 
 netdev@vger.kernel.org, sven@narfation.org, sw@simonwunderlich.de, 
 syzkaller-bugs@googlegroups.com
Content-Type: text/plain; charset="UTF-8"; format=flowed; delsp=yes
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1571635727;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type;
 bh=RNA7wvEo4dZS4Zjh6nazheoAtSIOteZ88hIBmR8F1xQ=;
 b=1TFrJ1wD6Mm1YhxZcIG+lzd7gkvNi6R8/vFgFc0MYzMDsd2uA+0OMGfsM2x/OKJaau3z7m
 mhqoEjCvDooSnXpVonOTTtMx8oYC7BTUe/hOgrDuVvsA6SXuKbBHuEz1Hz+kGOTY72bQq3
 DMwhvuquMaudSuyyS+iEtKUBaIe5e6I=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1571635727; a=rsa-sha256; cv=none;
 b=ViaA6dsShw+3Ya1mw4t7cH2JtXri844iMjLJSj7UIIZi6zXs0fmluyFUp8YC4bZBDoiK6e
 mHwdCFeIeutJ9BjHr+psQFj4C79IXEymG1WEhUWzCb7zJ116trh1LA9Iqgfx1iuMN2PEHT
 bW8sgOiCzu0iqoc9X+OS4hwKC0Nerbk=
ARC-Authentication-Results: i=1; open-mesh.org; dkim=none;
 spf=pass (open-mesh.org: domain of
 3QkCtXQkbAGsbhiTJUUNaJYYRM.PXXPUNdbNaLXWcNWc.LXV@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
 designates 209.85.166.197 as permitted sender)
 smtp.mailfrom=3QkCtXQkbAGsbhiTJUUNaJYYRM.PXXPUNdbNaLXWcNWc.LXV@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
X-Mailman-Approved-At: Mon, 21 Oct 2019 08:26:43 +0200
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

HEAD commit:    998d7551 Merge branch 'akpm' (patches from Andrew)
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=1702db87600000
kernel config:  https://syzkaller.appspot.com/x/.config?x=e0ac4d9b35046343
dashboard link: https://syzkaller.appspot.com/bug?extid=7dd2da51d8ae6f990403
compiler:       gcc (GCC) 9.0.0 20181231 (experimental)

Unfortunately, I don't have any reproducer for this crash yet.

IMPORTANT: if you fix the bug, please add the following tag to the commit:
Reported-by: syzbot+7dd2da51d8ae6f990403@syzkaller.appspotmail.com

kasan: CONFIG_KASAN_INLINE enabled
kasan: GPF could be caused by NULL-ptr deref or user memory access
general protection fault: 0000 [#1] PREEMPT SMP KASAN
CPU: 0 PID: 4256 Comm: kworker/u4:0 Not tainted 5.4.0-rc3+ #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS  
Google 01/01/2011
Workqueue: bat_events batadv_iv_send_outstanding_bat_ogm_packet
RIP: 0010:batadv_iv_ogm_queue_add+0x49/0x1120  
net/batman-adv/bat_iv_ogm.c:605
Code: 48 89 75 b8 48 89 4d c0 4c 89 45 b0 44 89 4d d0 e8 fc 02 46 fa 48 8d  
7b 03 48 b8 00 00 00 00 00 fc ff df 48 89 fa 48 c1 ea 03 <0f> b6 04 02 48  
89 fa 83 e2 07 38 d0 7f 08 84 c0 0f 85 18 0d 00 00
RSP: 0018:ffff88805d2cfb80 EFLAGS: 00010246
RAX: dffffc0000000000 RBX: 0000000000000000 RCX: ffff888092284000
RDX: 0000000000000000 RSI: ffffffff872d1214 RDI: 0000000000000003
RBP: ffff88805d2cfc18 R08: ffff888092284000 R09: 0000000000000001
R10: ffffed100ba59f77 R11: 0000000000000003 R12: dffffc0000000000
R13: ffffed101245080e R14: ffff888092284000 R15: 0000000100051cf6
FS:  0000000000000000(0000) GS:ffff8880ae800000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00000000200002c0 CR3: 00000000a421b000 CR4: 00000000001426f0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
Call Trace:
  batadv_iv_ogm_schedule+0xb0b/0xe50 net/batman-adv/bat_iv_ogm.c:813
  batadv_iv_send_outstanding_bat_ogm_packet+0x580/0x760  
net/batman-adv/bat_iv_ogm.c:1675
  process_one_work+0x9af/0x1740 kernel/workqueue.c:2269
  worker_thread+0x98/0xe40 kernel/workqueue.c:2415
  kthread+0x361/0x430 kernel/kthread.c:255
  ret_from_fork+0x24/0x30 arch/x86/entry/entry_64.S:352
Modules linked in:
---[ end trace 04d065842187c2b8 ]---
RIP: 0010:batadv_iv_ogm_queue_add+0x49/0x1120  
net/batman-adv/bat_iv_ogm.c:605
Code: 48 89 75 b8 48 89 4d c0 4c 89 45 b0 44 89 4d d0 e8 fc 02 46 fa 48 8d  
7b 03 48 b8 00 00 00 00 00 fc ff df 48 89 fa 48 c1 ea 03 <0f> b6 04 02 48  
89 fa 83 e2 07 38 d0 7f 08 84 c0 0f 85 18 0d 00 00
RSP: 0018:ffff88805d2cfb80 EFLAGS: 00010246
RAX: dffffc0000000000 RBX: 0000000000000000 RCX: ffff888092284000
RDX: 0000000000000000 RSI: ffffffff872d1214 RDI: 0000000000000003
RBP: ffff88805d2cfc18 R08: ffff888092284000 R09: 0000000000000001
R10: ffffed100ba59f77 R11: 0000000000000003 R12: dffffc0000000000
R13: ffffed101245080e R14: ffff888092284000 R15: 0000000100051cf6
FS:  0000000000000000(0000) GS:ffff8880ae800000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00000000200002c0 CR3: 00000000a421b000 CR4: 00000000001426f0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400


---
This bug is generated by a bot. It may contain errors.
See https://goo.gl/tpsmEJ for more information about syzbot.
syzbot engineers can be reached at syzkaller@googlegroups.com.

syzbot will keep track of this bug report. See:
https://goo.gl/tpsmEJ#status for how to communicate with syzbot.
