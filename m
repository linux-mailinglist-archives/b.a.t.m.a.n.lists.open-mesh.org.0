Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [78.46.248.236])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DCB8CE068
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon,  7 Oct 2019 13:27:55 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 012D380670;
	Mon,  7 Oct 2019 13:27:45 +0200 (CEST)
Received: from mail-io1-f72.google.com (mail-io1-f72.google.com
 [209.85.166.72]) by open-mesh.org (Postfix) with ESMTPS id F05F780197
 for <b.a.t.m.a.n@lists.open-mesh.org>; Mon,  7 Oct 2019 12:06:09 +0200 (CEST)
Received: by mail-io1-f72.google.com with SMTP id r13so25800936ioj.22
 for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 07 Oct 2019 03:06:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
 bh=2dOhl9LWYh299C4nMLmYFQZPM+ApcfTb4SWssQCL8EI=;
 b=koHnEpgF1+HI3AtRmYfl1aB8bMeqfm++p0yxc3OySw5FEa2cJPKFYyxhMWpZHclQwc
 k3Gl/hdG3WV2zX1x0cs90YBG903Mm2Fj+1THimlnp4AolyTylTclylxib5F4wJXhcqse
 v/f+IAMl4PpddbEMKA8bJBzDWisifWCERBtZd+9rkw11gweNCKVuvL42lxnzMzKZBn4P
 ToJPg9t/lm/HEWV0ZXu0PfF7V++o71dcVvKl0TC8QO0Sn/3Bv1J3EbAsD7z8PaGp/vpw
 YSkJILZA3F5/h7qeMT2Gk0TZsvlRjEDiq895P3u5eB0VcAvi7F4ahBWr0RrtOnCoxxPu
 /I0A==
X-Gm-Message-State: APjAAAV8adJHYbMcovtZeR5SJdSW860TuxFcVlv15e6L9PRVe/R/abRu
 oEkYOTt+AO7gc27hFia84/4+nx9QabPtG5mSPAe4FMKE/2aO
X-Google-Smtp-Source: APXvYqxi4OHvyHUK0a+SaogOYzTO73QeBkiB/kA+CnfygUK1TS2GeKAort/9PY+sGb8ufHnle77oiXUW5FMz/iuvXDkFlBov9d5v
MIME-Version: 1.0
X-Received: by 2002:a6b:b704:: with SMTP id h4mr22413104iof.218.1570442466837; 
 Mon, 07 Oct 2019 03:01:06 -0700 (PDT)
Date: Mon, 07 Oct 2019 03:01:06 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000604e8905944f211f@google.com>
Subject: KCSAN: data-race in find_next_bit / rcu_report_exp_cpu_mult
From: syzbot <syzbot+134336b86f728d6e55a0@syzkaller.appspotmail.com>
To: a@unstable.cc, b.a.t.m.a.n@lists.open-mesh.org, davem@davemloft.net, 
 elver@google.com, linux-kernel@vger.kernel.org, mareklindner@neomailbox.ch, 
 netdev@vger.kernel.org, sw@simonwunderlich.de, 
 syzkaller-bugs@googlegroups.com
Content-Type: text/plain; charset="UTF-8"; format=flowed; delsp=yes
X-Mailman-Approved-At: Mon, 07 Oct 2019 13:27:41 +0200
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

HEAD commit:    b4bd9343 x86, kcsan: Enable KCSAN for x86
git tree:       https://github.com/google/ktsan.git kcsan
console output: https://syzkaller.appspot.com/x/log.txt?x=11edb20d600000
kernel config:  https://syzkaller.appspot.com/x/.config?x=c0906aa620713d80
dashboard link: https://syzkaller.appspot.com/bug?extid=134336b86f728d6e55a0
compiler:       gcc (GCC) 9.0.0 20181231 (experimental)

Unfortunately, I don't have any reproducer for this crash yet.

IMPORTANT: if you fix the bug, please add the following tag to the commit:
Reported-by: syzbot+134336b86f728d6e55a0@syzkaller.appspotmail.com

==================================================================
BUG: KCSAN: data-race in find_next_bit / rcu_report_exp_cpu_mult

write to 0xffffffff85a7f140 of 8 bytes by task 7 on cpu 0:
  rcu_report_exp_cpu_mult+0x4f/0xa0 kernel/rcu/tree_exp.h:244
  rcu_report_exp_rdp+0x6c/0x90 kernel/rcu/tree_exp.h:254
  rcu_preempt_deferred_qs_irqrestore+0x3bb/0x580 kernel/rcu/tree_plugin.h:475
  rcu_read_unlock_special+0xec/0x370 kernel/rcu/tree_plugin.h:659
  __rcu_read_unlock+0xcf/0xe0 kernel/rcu/tree_plugin.h:394
  rcu_read_unlock include/linux/rcupdate.h:645 [inline]
  batadv_nc_purge_orig_hash net/batman-adv/network-coding.c:411 [inline]
  batadv_nc_worker+0x13a/0x390 net/batman-adv/network-coding.c:718
  process_one_work+0x3d4/0x890 kernel/workqueue.c:2269
  worker_thread+0xa0/0x800 kernel/workqueue.c:2415
  kthread+0x1d4/0x200 drivers/block/aoe/aoecmd.c:1253
  ret_from_fork+0x1f/0x30 arch/x86/entry/entry_64.S:352

read to 0xffffffff85a7f140 of 8 bytes by task 7251 on cpu 1:
  _find_next_bit lib/find_bit.c:39 [inline]
  find_next_bit+0x57/0xe0 lib/find_bit.c:70
  sync_rcu_exp_select_node_cpus+0x28e/0x510 kernel/rcu/tree_exp.h:375
  sync_rcu_exp_select_cpus+0x30c/0x590 kernel/rcu/tree_exp.h:439
  rcu_exp_sel_wait_wake kernel/rcu/tree_exp.h:575 [inline]
  wait_rcu_exp_gp+0x25/0x40 kernel/rcu/tree_exp.h:589
  process_one_work+0x3d4/0x890 kernel/workqueue.c:2269
  worker_thread+0xa0/0x800 kernel/workqueue.c:2415
  kthread+0x1d4/0x200 drivers/block/aoe/aoecmd.c:1253
  ret_from_fork+0x1f/0x30 arch/x86/entry/entry_64.S:352

Reported by Kernel Concurrency Sanitizer on:
CPU: 1 PID: 7251 Comm: kworker/1:4 Not tainted 5.3.0+ #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS  
Google 01/01/2011
Workqueue: rcu_gp wait_rcu_exp_gp
==================================================================


---
This bug is generated by a bot. It may contain errors.
See https://goo.gl/tpsmEJ for more information about syzbot.
syzbot engineers can be reached at syzkaller@googlegroups.com.

syzbot will keep track of this bug report. See:
https://goo.gl/tpsmEJ#status for how to communicate with syzbot.
