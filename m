Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [IPv6:2a01:4f8:141:3341:78:46:248:236])
	by mail.lfdr.de (Postfix) with ESMTPS id 8945815675B
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat,  8 Feb 2020 20:23:30 +0100 (CET)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 9E3468022C;
	Sat,  8 Feb 2020 20:23:10 +0100 (CET)
Received: from mail-il1-f199.google.com (mail-il1-f199.google.com
 [209.85.166.199])
 by open-mesh.org (Postfix) with ESMTPS id 3C5BD8002D
 for <b.a.t.m.a.n@lists.open-mesh.org>; Sat,  8 Feb 2020 19:58:13 +0100 (CET)
Received: by mail-il1-f199.google.com with SMTP id d22so2968877ild.3
 for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 08 Feb 2020 10:58:13 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
 bh=3QNUWzGFT2HuTCKJpDzCHQEdbSo8FRg4vF1vVLvHcvI=;
 b=T6jTfbEKaAYaKf7ci3M17L0hlG+Y70m99KFgqNRAX0q4mBEVpeziToLwBfjKiNTyxh
 hxvXdNVChDy8x+Lv1rQQZ4SjR4mCpgH+o/zs+O835FvMSMW4RcDDrXC7br51haFfrdfP
 oyf+gm/rwDON2TzGlUTTVmhD3yfPkda4sQglbod296ZlHH2UhUT5hJxoHgKKH0lhYrcj
 ygJNV+hAFOCcZoVtlXjh7JOJVt6Zpq8w/VtqmACcBz7OBaWcaKdHY0yn3TgsoNYviOil
 FxXiS+ALGSmjSljUksQUgtWf4lf+vFxAIhr36p2qEl98tEH4Uiy3ysmfyXzmleCvWHIU
 woZg==
X-Gm-Message-State: APjAAAWFXmf9jFZcB8ty01TCs9zTA0lDDXjr6KIlDcPhb7JOVK/UsvbI
 gE8Vl4NBtRDnMXBt1bNUeulNwtiZJmA41EeX/ibrTr73Exjw
X-Google-Smtp-Source: APXvYqxrn896/Y9JBPR+an+UMChgcVMohGS0DsURyWZP6/T9PkTSgkMfFBbrevYRnZPHe11AG0Whm4LLlHxnQh70cn7FLrIj+Zna
MIME-Version: 1.0
X-Received: by 2002:a92:c986:: with SMTP id y6mr5313781iln.186.1581188291971; 
 Sat, 08 Feb 2020 10:58:11 -0800 (PST)
Date: Sat, 08 Feb 2020 10:58:11 -0800
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000774f00059e15168f@google.com>
Subject: general protection fault in batadv_iv_ogm_schedule
From: syzbot <syzbot+ac36b6a33c28a491e929@syzkaller.appspotmail.com>
To: a@unstable.cc, b.a.t.m.a.n@lists.open-mesh.org, davem@davemloft.net, 
 kuba@kernel.org, linux-kernel@vger.kernel.org, mareklindner@neomailbox.ch, 
 netdev@vger.kernel.org, sven@narfation.org, sw@simonwunderlich.de, 
 syzkaller-bugs@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1581188293;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type;
 bh=3QNUWzGFT2HuTCKJpDzCHQEdbSo8FRg4vF1vVLvHcvI=;
 b=08jCSooE2IAg3mBs2jlCXGa/ErWew7vmzXjv1ObW58UcfXDCJGnLY9uRLaWBmPW2sa7NwT
 e2buNPc0s/zamW2Mb2QGtrKikiNTjJQrK5k2SfNfq3EmR+AOFb+EHBkJoZZJMm00YFpebv
 PVycXqR3ZJPimNkNcdyYI++EZPgPEas=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1581188293; a=rsa-sha256; cv=none;
 b=RNQcLhvHsM4GTfjHq1Xh949+NpOvKhFTv65v3hxZ1UovEHJumjlIkcS7z/vcXKTmL/6RQQ
 AIkxB43JGt3S9/GK3vL9fa92P/Ur7bU8W922421NaCP1sItQXp0dvt0YkZ1KiQTMTD4Q4T
 GcKj+qqmDEVLWyZoXLqRLCSVVdzEOE8=
ARC-Authentication-Results: i=1; open-mesh.org; dkim=none;
 spf=pass (open-mesh.org: domain of
 3wwQ_XgkbAMAy45qgrrkxgvvoj.muumrk0ykxiutzktz.ius@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
 designates 209.85.166.199 as permitted sender)
 smtp.mailfrom=3wwQ_XgkbAMAy45qgrrkxgvvoj.muumrk0ykxiutzktz.ius@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
X-Mailman-Approved-At: Sat, 08 Feb 2020 20:23:04 +0100
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

HEAD commit:    f7571657 Merge tag 'fuse-fixes-5.6-rc1' of git://git.kerne..
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=12dddbbee00000
kernel config:  https://syzkaller.appspot.com/x/.config?x=7f1d914a74bd6ddc
dashboard link: https://syzkaller.appspot.com/bug?extid=ac36b6a33c28a491e929
compiler:       clang version 10.0.0 (https://github.com/llvm/llvm-project/ c2443155a0fb245c8f17f2c1c72b6ea391e86e81)

Unfortunately, I don't have any reproducer for this crash yet.

IMPORTANT: if you fix the bug, please add the following tag to the commit:
Reported-by: syzbot+ac36b6a33c28a491e929@syzkaller.appspotmail.com

general protection fault, probably for non-canonical address 0xdffffc0000000002: 0000 [#1] PREEMPT SMP KASAN
KASAN: null-ptr-deref in range [0x0000000000000010-0x0000000000000017]
CPU: 0 PID: 465 Comm: kworker/u4:5 Not tainted 5.5.0-syzkaller #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 01/01/2011
Workqueue: bat_events batadv_iv_send_outstanding_bat_ogm_packet
RIP: 0010:batadv_iv_ogm_schedule_buff net/batman-adv/bat_iv_ogm.c:814 [inline]
RIP: 0010:batadv_iv_ogm_schedule+0x220/0xf00 net/batman-adv/bat_iv_ogm.c:865
Code: e8 35 ef bf f9 4c 89 ad 60 ff ff ff 4d 8b 75 00 66 41 c1 c7 08 49 8d 5e 16 48 89 d8 48 c1 e8 03 49 bd 00 00 00 00 00 fc ff df <42> 8a 04 28 84 c0 0f 85 e0 0b 00 00 66 44 89 3b 4c 89 a5 78 ff ff
RSP: 0018:ffffc90002887b78 EFLAGS: 00010203
RAX: 0000000000000002 RBX: 0000000000000016 RCX: 1ffff11012580611
RDX: 0000000000000000 RSI: ffff8880a80449b0 RDI: 0000000000000282
RBP: ffffc90002887c38 R08: dffffc0000000000 R09: fffffbfff12d3605
R10: fffffbfff12d3605 R11: 0000000000000000 R12: ffff888092c03000
R13: dffffc0000000000 R14: 0000000000000000 R15: 0000000000000000
FS:  0000000000000000(0000) GS:ffff8880aea00000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 000000000075bfd4 CR3: 0000000090ab0000 CR4: 00000000001406f0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
Call Trace:
 batadv_iv_send_outstanding_bat_ogm_packet+0x664/0x770 net/batman-adv/bat_iv_ogm.c:1718
 process_one_work+0x7f5/0x10f0 kernel/workqueue.c:2264
 worker_thread+0xbbc/0x1630 kernel/workqueue.c:2410
 kthread+0x332/0x350 kernel/kthread.c:255
 ret_from_fork+0x24/0x30 arch/x86/entry/entry_64.S:352
Modules linked in:
---[ end trace eddf69e5e4c9f596 ]---
RIP: 0010:batadv_iv_ogm_schedule_buff net/batman-adv/bat_iv_ogm.c:814 [inline]
RIP: 0010:batadv_iv_ogm_schedule+0x220/0xf00 net/batman-adv/bat_iv_ogm.c:865
Code: e8 35 ef bf f9 4c 89 ad 60 ff ff ff 4d 8b 75 00 66 41 c1 c7 08 49 8d 5e 16 48 89 d8 48 c1 e8 03 49 bd 00 00 00 00 00 fc ff df <42> 8a 04 28 84 c0 0f 85 e0 0b 00 00 66 44 89 3b 4c 89 a5 78 ff ff
RSP: 0018:ffffc90002887b78 EFLAGS: 00010203
RAX: 0000000000000002 RBX: 0000000000000016 RCX: 1ffff11012580611
RDX: 0000000000000000 RSI: ffff8880a80449b0 RDI: 0000000000000282
RBP: ffffc90002887c38 R08: dffffc0000000000 R09: fffffbfff12d3605
R10: fffffbfff12d3605 R11: 0000000000000000 R12: ffff888092c03000
R13: dffffc0000000000 R14: 0000000000000000 R15: 0000000000000000
FS:  0000000000000000(0000) GS:ffff8880aea00000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 000000000075bfd4 CR3: 000000009c67b000 CR4: 00000000001406f0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400


---
This bug is generated by a bot. It may contain errors.
See https://goo.gl/tpsmEJ for more information about syzbot.
syzbot engineers can be reached at syzkaller@googlegroups.com.

syzbot will keep track of this bug report. See:
https://goo.gl/tpsmEJ#status for how to communicate with syzbot.
