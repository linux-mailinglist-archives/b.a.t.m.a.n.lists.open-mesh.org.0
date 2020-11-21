Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B65F2BBD17
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 21 Nov 2020 05:55:21 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 101CB801CC;
	Sat, 21 Nov 2020 05:55:20 +0100 (CET)
Received: from mail-io1-f70.google.com (mail-io1-f70.google.com [209.85.166.70])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 098C380122
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 21 Nov 2020 05:55:16 +0100 (CET)
Received: by mail-io1-f70.google.com with SMTP id a2so9151991iod.13
        for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 20 Nov 2020 20:55:16 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
        bh=Bc8DJgBNhzyknhToDKlCX+JkuaB11Va6geaeIXU01nE=;
        b=dI6ftUAaRJEmqZAyY2+iG+UXRCUOOQbJnWCYXthIATe8kYE21wuOvi034Dmma3Y8/9
         BupVSQ2EvEtrWBl/Q77JCGKmhm6SKlqnT60Pf1R0jZo18yZzhft79kf6Nt6RuJqSr4vf
         bENpycszF3jojawAy8pkUlVc0XUkILrCwlLDFXu2BGyjYM3pZb3hwJ+FccGANVdipnc0
         fWBf+OLAY7cwF8deRU1EPJIrOPCqzH79HuYgG4LEgrx/XZnFHTzzwiDPzsHDEPmIUKlw
         Z1UbCCRZfskvJa/NdawPjA1SbngaxRpg48lOka0+7LQ0Nj03BEFU0KAC4QqlinfM3U/U
         W5WQ==
X-Gm-Message-State: AOAM531iAT0tW2f1TPHoGn8JQPT/EGRj1smzw8t2LoLBJRQfHklEiy1N
	z5zjo9LsMG5xJ1ggNKqRhN1yB7CLIpYwudD6qw2Madeik0L1
X-Google-Smtp-Source: ABdhPJy7jTsYFQbu+2stHEviHh2ADsNbk/5yIIh45u18OZoQ1AtChCr2ehXwg0NxNJ5eVesTx/pC19Olx6poLQCbggKPqLZyD3TN
MIME-Version: 1.0
X-Received: by 2002:a6b:b2c4:: with SMTP id b187mr28358647iof.187.1605934515653;
 Fri, 20 Nov 2020 20:55:15 -0800 (PST)
Date: Fri, 20 Nov 2020 20:55:15 -0800
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <00000000000056928205b496c43b@google.com>
Subject: INFO: task hung in sync_inodes_sb (4)
From: syzbot <syzbot+7d50f1e54a12ba3aeae2@syzkaller.appspotmail.com>
To: a@unstable.cc, b.a.t.m.a.n@lists.open-mesh.org, davem@davemloft.net,
	emmanuel.grumbach@intel.com, johannes.berg@intel.com,
	linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org,
	luciano.coelho@intel.com, mareklindner@neomailbox.ch, netdev@vger.kernel.org,
	sw@simonwunderlich.de, syzkaller-bugs@googlegroups.com,
	viro@zeniv.linux.org.uk
Content-Type: text/plain; charset="UTF-8"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1605934517;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type;
	bh=Bc8DJgBNhzyknhToDKlCX+JkuaB11Va6geaeIXU01nE=;
	b=zjDVBcZ4je0x0FPpS3b02ThWz5AhVe/i2KAb0S5UlN5acLNFxc0fn/SiZhgLNH6ZW8dkzB
	jdO/ki+zOrX6echXsyaZQISJHvQV3NVO0vvrvKESuH28NTnsYbebTq/MA/lc9P/f4srVMo
	QgsFPzTPapP2aHL9wgNqn4A0Bh0ewcQ=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1605934517; a=rsa-sha256;
	cv=none;
	b=kSGyFt/uXF7qgEHVYx1S7wmr1xveBcNxVIQC/YRVs1HI/J0wjpSQrYPSfI1L9to1R5MTQq
	UXBx92fWIG58o3hNiOD412XCsuxFBswIhQ/FPyvBtaW5ifrDfI4+aZs25X1hT9WCqOWJNi
	jkeywfW2m9amjX0sD7ljcm2K33TryJ4=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of 3s524XwkbANQIOPA0BB4H0FF83.6EE6B4KI4H2EDJ4DJ.2EC@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com designates 209.85.166.70 as permitted sender) smtp.mailfrom=3s524XwkbANQIOPA0BB4H0FF83.6EE6B4KI4H2EDJ4DJ.2EC@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
Message-ID-Hash: TS35VMF4NZK7P7AI7IF5J26GHH6CMOQ3
X-Message-ID-Hash: TS35VMF4NZK7P7AI7IF5J26GHH6CMOQ3
X-MailFrom: 3s524XwkbANQIOPA0BB4H0FF83.6EE6B4KI4H2EDJ4DJ.2EC@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/TS35VMF4NZK7P7AI7IF5J26GHH6CMOQ3/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Hello,

syzbot found the following issue on:

HEAD commit:    03430750 Add linux-next specific files for 20201116
git tree:       linux-next
console output: https://syzkaller.appspot.com/x/log.txt?x=17027fdc500000
kernel config:  https://syzkaller.appspot.com/x/.config?x=a1c4c3f27041fdb8
dashboard link: https://syzkaller.appspot.com/bug?extid=7d50f1e54a12ba3aeae2
compiler:       gcc (GCC) 10.1.0-syz 20200507
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=124a8841500000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=15a4fce2500000

The issue was bisected to:

commit c68df2e7be0c1238ea3c281fd744a204ef3b15a0
Author: Emmanuel Grumbach <emmanuel.grumbach@intel.com>
Date:   Thu Sep 15 13:30:02 2016 +0000

    mac80211: allow using AP_LINK_PS with mac80211-generated TIM IE

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=1445e981500000
final oops:     https://syzkaller.appspot.com/x/report.txt?x=1645e981500000
console output: https://syzkaller.appspot.com/x/log.txt?x=1245e981500000

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+7d50f1e54a12ba3aeae2@syzkaller.appspotmail.com
Fixes: c68df2e7be0c ("mac80211: allow using AP_LINK_PS with mac80211-generated TIM IE")

INFO: task syz-executor017:8513 blocked for more than 143 seconds.
      Not tainted 5.10.0-rc3-next-20201116-syzkaller #0
"echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this message.
task:syz-executor017 state:D stack:27448 pid: 8513 ppid:  8507 flags:0x00004000
Call Trace:
 context_switch kernel/sched/core.c:4269 [inline]
 __schedule+0x890/0x2030 kernel/sched/core.c:5019
 schedule+0xcf/0x270 kernel/sched/core.c:5098
 wb_wait_for_completion+0x17b/0x230 fs/fs-writeback.c:209
 sync_inodes_sb+0x1a6/0x9d0 fs/fs-writeback.c:2559
 __sync_filesystem fs/sync.c:34 [inline]
 sync_filesystem fs/sync.c:67 [inline]
 sync_filesystem+0x15c/0x260 fs/sync.c:48
 generic_shutdown_super+0x70/0x370 fs/super.c:448
 kill_block_super+0x97/0xf0 fs/super.c:1446
 deactivate_locked_super+0x94/0x160 fs/super.c:335
 deactivate_super+0xad/0xd0 fs/super.c:366
 cleanup_mnt+0x3a3/0x530 fs/namespace.c:1123
 task_work_run+0xdd/0x190 kernel/task_work.c:140
 tracehook_notify_resume include/linux/tracehook.h:188 [inline]
 exit_to_user_mode_loop kernel/entry/common.c:172 [inline]
 exit_to_user_mode_prepare+0x1f0/0x200 kernel/entry/common.c:199
 syscall_exit_to_user_mode+0x38/0x260 kernel/entry/common.c:274
 entry_SYSCALL_64_after_hwframe+0x44/0xa9
RIP: 0033:0x44e0e7
Code: Unable to access opcode bytes at RIP 0x44e0bd.
RSP: 002b:00007fff42061288 EFLAGS: 00000206 ORIG_RAX: 00000000000000a6
RAX: 0000000000000000 RBX: 00000000000cee4c RCX: 000000000044e0e7
RDX: 0000000000400be0 RSI: 0000000000000002 RDI: 00007fff42061330
RBP: 0000000000002142 R08: 0000000000000000 R09: 0000000000000009
R10: 0000000000000005 R11: 0000000000000206 R12: 00007fff420623e0
R13: 0000000001f67880 R14: 0000000000000000 R15: 0000000000000000

Showing all locks held in the system:
2 locks held by kworker/u4:5/225:
 #0: ffff8881413a4138 ((wq_completion)writeback){+.+.}-{0:0}, at: arch_atomic64_set arch/x86/include/asm/atomic64_64.h:34 [inline]
 #0: ffff8881413a4138 ((wq_completion)writeback){+.+.}-{0:0}, at: atomic64_set include/asm-generic/atomic-instrumented.h:856 [inline]
 #0: ffff8881413a4138 ((wq_completion)writeback){+.+.}-{0:0}, at: atomic_long_set include/asm-generic/atomic-long.h:41 [inline]
 #0: ffff8881413a4138 ((wq_completion)writeback){+.+.}-{0:0}, at: set_work_data kernel/workqueue.c:616 [inline]
 #0: ffff8881413a4138 ((wq_completion)writeback){+.+.}-{0:0}, at: set_work_pool_and_clear_pending kernel/workqueue.c:643 [inline]
 #0: ffff8881413a4138 ((wq_completion)writeback){+.+.}-{0:0}, at: process_one_work+0x821/0x15a0 kernel/workqueue.c:2243
 #1: ffffc9000191fda8 ((work_completion)(&(&wb->dwork)->work)){+.+.}-{0:0}, at: process_one_work+0x854/0x15a0 kernel/workqueue.c:2247
1 lock held by khungtaskd/1655:
 #0: ffffffff8b339ce0 (rcu_read_lock){....}-{1:2}, at: debug_show_all_locks+0x53/0x260 kernel/locking/lockdep.c:6252
1 lock held by in:imklog/8188:
 #0: ffff888017c8f4f0 (&f->f_pos_lock){+.+.}-{3:3}, at: __fdget_pos+0xe9/0x100 fs/file.c:932
2 locks held by syz-executor017/8513:
 #0: ffff88801a8500e0 (&type->s_umount_key#49){+.+.}-{3:3}, at: deactivate_super+0xa5/0xd0 fs/super.c:365
 #1: ffff888143f5e708 (&bdi->wb_switch_rwsem){+.+.}-{3:3}, at: bdi_down_write_wb_switch_rwsem fs/fs-writeback.c:344 [inline]
 #1: ffff888143f5e708 (&bdi->wb_switch_rwsem){+.+.}-{3:3}, at: sync_inodes_sb+0x18c/0x9d0 fs/fs-writeback.c:2557

=============================================

NMI backtrace for cpu 0
CPU: 0 PID: 1655 Comm: khungtaskd Not tainted 5.10.0-rc3-next-20201116-syzkaller #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 01/01/2011
Call Trace:
 __dump_stack lib/dump_stack.c:79 [inline]
 dump_stack+0x107/0x163 lib/dump_stack.c:120
 nmi_cpu_backtrace.cold+0x44/0xd7 lib/nmi_backtrace.c:105
 nmi_trigger_cpumask_backtrace+0x1b3/0x230 lib/nmi_backtrace.c:62
 trigger_all_cpu_backtrace include/linux/nmi.h:147 [inline]
 check_hung_uninterruptible_tasks kernel/hung_task.c:253 [inline]
 watchdog+0xd89/0xf30 kernel/hung_task.c:338
 kthread+0x3af/0x4a0 kernel/kthread.c:292
 ret_from_fork+0x1f/0x30 arch/x86/entry/entry_64.S:296
Sending NMI from CPU 0 to CPUs 1:
NMI backtrace for cpu 1 skipped: idling at native_safe_halt arch/x86/include/asm/irqflags.h:60 [inline]
NMI backtrace for cpu 1 skipped: idling at arch_safe_halt arch/x86/include/asm/irqflags.h:103 [inline]
NMI backtrace for cpu 1 skipped: idling at acpi_safe_halt drivers/acpi/processor_idle.c:111 [inline]
NMI backtrace for cpu 1 skipped: idling at acpi_idle_do_entry+0x1c9/0x250 drivers/acpi/processor_idle.c:517


---
This report is generated by a bot. It may contain errors.
See https://goo.gl/tpsmEJ for more information about syzbot.
syzbot engineers can be reached at syzkaller@googlegroups.com.

syzbot will keep track of this issue. See:
https://goo.gl/tpsmEJ#status for how to communicate with syzbot.
For information about bisection process see: https://goo.gl/tpsmEJ#bisection
syzbot can test patches for this issue, for details see:
https://goo.gl/tpsmEJ#testing-patches
