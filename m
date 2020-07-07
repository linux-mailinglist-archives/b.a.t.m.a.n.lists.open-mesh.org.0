Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id CCAE5217148
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue,  7 Jul 2020 17:30:20 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 9D69C806CC;
	Tue,  7 Jul 2020 17:30:19 +0200 (CEST)
Received: from mail-il1-f200.google.com (mail-il1-f200.google.com [209.85.166.200])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id BEBA28038A
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue,  7 Jul 2020 17:30:15 +0200 (CEST)
Received: by mail-il1-f200.google.com with SMTP id k13so30474041ilh.23
        for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 07 Jul 2020 08:30:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
        bh=l5UfEPh6FpvcqMK9z9YCj6DGXnLOftd9sD9CfnuWGio=;
        b=g966JLZD2F0I4iE9NUVaE3A6cfSpK+XX2VB1SRnuVrzldkJl3MHvhoqKzivi0ivkPc
         IfuB4cUVKJ8YodB/djpqQDqweg8LauvxUDMW1QhZHIEeZdn38rYblzvJhzbHs5tj8GUV
         jVvy8LugnIHn+qVFzPHFu8h+vueEfw4glUIC0BeFgpyupZLF1IV6+LoiesdMoaowC4eZ
         Gt/ylk+2xBs3eFBJA/j0l21IUj1Zvj0n2atMC4FCIVPUDz/CyHGcI23S1QrLOgpbyeoB
         EMpJA8YyIJKL0bAujisZyXguSuJgyJEBkHXswWTQciwqasYMBnhAn8iXtz0LYhkGTGWo
         AhKw==
X-Gm-Message-State: AOAM530U9M62DaxC5dzrTB1iH7NKbEaV5OACyHDHHWZCoggI1VDxYDqi
	sI5RMCxS6TBLifYbyzoYr1kOEhF8d/blbz7drH/gfVYt7Z/G
X-Google-Smtp-Source: ABdhPJz38T51Ko5sHjG40+v5KRv3EC++gkZunO00fGv8OmSqfw3SsUSP6S8MGjq1G+jBQ8orWn+UoH3rpNWToypbts+u/bx/KU74
MIME-Version: 1.0
X-Received: by 2002:a05:6602:2c8b:: with SMTP id i11mr31473413iow.139.1594135814367;
 Tue, 07 Jul 2020 08:30:14 -0700 (PDT)
Date: Tue, 07 Jul 2020 08:30:14 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000f06edf05a9dbaa44@google.com>
Subject: general protection fault in batadv_iv_ogm_schedule_buff (2)
From: syzbot <syzbot+2eeeb5ad0766b57394d8@syzkaller.appspotmail.com>
To: a@unstable.cc, b.a.t.m.a.n@lists.open-mesh.org, davem@davemloft.net,
	kuba@kernel.org, linux-kernel@vger.kernel.org, mareklindner@neomailbox.ch,
	netdev@vger.kernel.org, sven@narfation.org, sw@simonwunderlich.de,
	syzkaller-bugs@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1594135815;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type;
	bh=l5UfEPh6FpvcqMK9z9YCj6DGXnLOftd9sD9CfnuWGio=;
	b=vTIlj0nevbhVkGdKvx3RmwC68JadrjBEmyYpOdDSMsD1OL900TVKY0e34OtDE+LidlgaEZ
	Bv/CkFzkfZDa/nNNSUQBERfgsja5MRwbRXpmHIe7Xl8SK4fz8z8DPM36mDLeoVKolbKRdc
	/4ZS7W42jkBD6ZwZugZJ+BEh3/GgHb0=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1594135815; a=rsa-sha256;
	cv=none;
	b=cNvOINuKOyt7/zE1WhgYZyiM8O08DSONcE2uzE+e0SDqEoX2RMhW8opWKseLFAHZZX22XK
	d4Tl7NB/w1zUfkL3zqzIVO7C3vhRYEK/52ib4w3DwtttlCFhi0387FygZRSTLwnRaGbP5I
	9miqcE6LfeZ1CXmHohk2Ebw5PMuL28o=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of 3BpUEXwkbAEEv12ndoohudsslg.jrrjohxvhufrqwhqw.frp@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com designates 209.85.166.200 as permitted sender) smtp.mailfrom=3BpUEXwkbAEEv12ndoohudsslg.jrrjohxvhufrqwhqw.frp@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
Message-ID-Hash: XBVBFSLNCT73H2AELGD4Y7HRMZU5C4EX
X-Message-ID-Hash: XBVBFSLNCT73H2AELGD4Y7HRMZU5C4EX
X-MailFrom: 3BpUEXwkbAEEv12ndoohudsslg.jrrjohxvhufrqwhqw.frp@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/XBVBFSLNCT73H2AELGD4Y7HRMZU5C4EX/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Hello,

syzbot found the following crash on:

HEAD commit:    7cc2a8ea Merge tag 'block-5.8-2020-07-01' of git://git.ker..
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=130b828f100000
kernel config:  https://syzkaller.appspot.com/x/.config?x=7be693511b29b338
dashboard link: https://syzkaller.appspot.com/bug?extid=2eeeb5ad0766b57394d8
compiler:       gcc (GCC) 10.1.0-syz 20200507

Unfortunately, I don't have any reproducer for this crash yet.

IMPORTANT: if you fix the bug, please add the following tag to the commit:
Reported-by: syzbot+2eeeb5ad0766b57394d8@syzkaller.appspotmail.com

general protection fault, probably for non-canonical address 0xdffffc000000000e: 0000 [#1] PREEMPT SMP KASAN
KASAN: null-ptr-deref in range [0x0000000000000070-0x0000000000000077]
CPU: 1 PID: 9126 Comm: kworker/u4:9 Not tainted 5.8.0-rc3-syzkaller #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 01/01/2011
Workqueue: bat_events batadv_iv_send_outstanding_bat_ogm_packet
RIP: 0010:batadv_iv_ogm_schedule_buff+0xd1e/0x1410 net/batman-adv/bat_iv_ogm.c:843
Code: 80 3c 28 00 0f 85 ee 05 00 00 4d 8b 3f 49 81 ff e0 e9 4e 8d 0f 84 dd 02 00 00 e8 bd 80 ae f9 49 8d 7f 70 48 89 f8 48 c1 e8 03 <42> 80 3c 28 00 0f 85 af 06 00 00 48 8b 44 24 08 49 8b 6f 70 80 38
RSP: 0018:ffffc90004e97b98 EFLAGS: 00010202
RAX: 000000000000000e RBX: ffff8880a7471800 RCX: ffffffff87c5394d
RDX: ffff88804cf02380 RSI: ffffffff87c536a3 RDI: 0000000000000070
RBP: 0000000000077000 R08: 0000000000000001 R09: ffff8880a875a02b
R10: 0000000000000000 R11: 0000000000000000 R12: 0000000000000007
R13: dffffc0000000000 R14: ffff888051ad4c40 R15: 0000000000000000
FS:  0000000000000000(0000) GS:ffff8880ae700000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 0000000000400200 CR3: 0000000061cac000 CR4: 00000000001426e0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
Call Trace:
 batadv_iv_ogm_schedule net/batman-adv/bat_iv_ogm.c:869 [inline]
 batadv_iv_ogm_schedule net/batman-adv/bat_iv_ogm.c:862 [inline]
 batadv_iv_send_outstanding_bat_ogm_packet+0x5c8/0x800 net/batman-adv/bat_iv_ogm.c:1722
 process_one_work+0x94c/0x1670 kernel/workqueue.c:2269
 worker_thread+0x64c/0x1120 kernel/workqueue.c:2415
 kthread+0x3b5/0x4a0 kernel/kthread.c:291
 ret_from_fork+0x1f/0x30 arch/x86/entry/entry_64.S:293
Modules linked in:
---[ end trace f5c5eda032070cd1 ]---
RIP: 0010:batadv_iv_ogm_schedule_buff+0xd1e/0x1410 net/batman-adv/bat_iv_ogm.c:843
Code: 80 3c 28 00 0f 85 ee 05 00 00 4d 8b 3f 49 81 ff e0 e9 4e 8d 0f 84 dd 02 00 00 e8 bd 80 ae f9 49 8d 7f 70 48 89 f8 48 c1 e8 03 <42> 80 3c 28 00 0f 85 af 06 00 00 48 8b 44 24 08 49 8b 6f 70 80 38
RSP: 0018:ffffc90004e97b98 EFLAGS: 00010202
RAX: 000000000000000e RBX: ffff8880a7471800 RCX: ffffffff87c5394d
RDX: ffff88804cf02380 RSI: ffffffff87c536a3 RDI: 0000000000000070
RBP: 0000000000077000 R08: 0000000000000001 R09: ffff8880a875a02b
R10: 0000000000000000 R11: 0000000000000000 R12: 0000000000000007
R13: dffffc0000000000 R14: ffff888051ad4c40 R15: 0000000000000000
FS:  0000000000000000(0000) GS:ffff8880ae700000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 0000000000400200 CR3: 000000009480d000 CR4: 00000000001426e0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400


---
This bug is generated by a bot. It may contain errors.
See https://goo.gl/tpsmEJ for more information about syzbot.
syzbot engineers can be reached at syzkaller@googlegroups.com.

syzbot will keep track of this bug report. See:
https://goo.gl/tpsmEJ#status for how to communicate with syzbot.
