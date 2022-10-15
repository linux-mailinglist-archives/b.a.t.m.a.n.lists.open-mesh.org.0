Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id A57FA5FFBB3
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 15 Oct 2022 21:01:44 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 69ACF84C77;
	Sat, 15 Oct 2022 21:01:43 +0200 (CEST)
Received: from mail-io1-f70.google.com (mail-io1-f70.google.com [209.85.166.70])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 249FB84C56
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 15 Oct 2022 21:01:40 +0200 (CEST)
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1665860500; a=rsa-sha256;
	cv=none;
	b=pZk6WcYvX3+G0Oe/hYl9erW8A14jF9FPUTsQlEBMLsAE+pabZzBgxrpWV7188NOgh21ixT
	kVp6mL72peb+Qby4EBAcKdHmweKFi/2Kqk2pmoV7bp+21qAoepkW6+MlefkSR93Pspff5q
	q4RpZshVGEgsbIedg7OJOOqh/EoQ1eE=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	dmarc=fail reason="SPF not aligned (relaxed), No valid DKIM" header.from=appspotmail.com (policy=none);
	spf=pass (diktynna.open-mesh.org: domain of 3kgNLYwkbAOUZfgRHSSLYHWWPK.NVVNSLbZLYJVUaLUa.JVT@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com designates 209.85.166.70 as permitted sender) smtp.mailfrom=3kgNLYwkbAOUZfgRHSSLYHWWPK.NVVNSLbZLYJVUaLUa.JVT@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1665860500;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to; bh=cYkruULPYI/8Q4EzKbNG+v8gQvZcsB10CLrGe3V+dn4=;
	b=jIqVMDAWKINd70PKeq6r/seW0j7jOQefJcrijw06am+4Rd3apWIrNf/NZP5CWUcfUaf1lz
	1YNeQYtS7T3c138UiTEdVJST5uZged4FY6wWgxYGoPtN2ttI8mHMFhb+9wmk8p4uOhF9gi
	WbtmkMtXPFu12mfjpbzKp4rMJTPCfsk=
Received: by mail-io1-f70.google.com with SMTP id y26-20020a5d9b1a000000b006bc71505e97so4996065ion.16
        for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 15 Oct 2022 12:01:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:from:subject:message-id:in-reply-to:date:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=cYkruULPYI/8Q4EzKbNG+v8gQvZcsB10CLrGe3V+dn4=;
        b=nxCRv3rOEr5pG34IHpLY1j+IV7BSrvJittxK4SYBwO6or49/EQCVtscW1x+qGeTuS4
         29SJivLRoQKb464fF1mxT5bUNrql7y/fRiQOAytrcjmdbsMGX6Pji1cdDz8rvWEM4mh6
         ESiV+4J6I1T5hj07yTDb0aJWCMJ7d4DP5XhyOmMgeATp2omouhns1ne7hIazYsxnNOrT
         YI2O6hStcwyzuJVQz0ap+VU4W8nQ92w8s0yfTyfly76sb0+qPN7rK15aTpwFu86jlQkL
         pBEDeWI5GrYZsTcULqUyXPPlzmqfst40G5oCg8dijErUlU6unAsWHpX0eocCYMxZ21zP
         XwDw==
X-Gm-Message-State: ACrzQf2mp82Y3scMeYu6t6U813gVUm6oir8YrIy/20uh9rbpqVafmqSF
	cx+6/aPjcdtAnZLNJ3Ea3FRJnkabmf1tecESLiBQItP/UnFZ
X-Google-Smtp-Source: AMsMyM4w45PZooPipGG/vtO+iAKgb/0nkIhogV6if27pz0zo2AxgueAuryk9Tpnnr9ui5I7/+CKxruGslbwBP+LnU5SVdq4aWXXV
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:158a:b0:2d3:f198:9f39 with SMTP id
 m10-20020a056e02158a00b002d3f1989f39mr1736875ilu.206.1665860498624; Sat, 15
 Oct 2022 12:01:38 -0700 (PDT)
Date: Sat, 15 Oct 2022 12:01:38 -0700
In-Reply-To: <0000000000009d327505b0999237@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <00000000000044187505eb175fda@google.com>
Subject: Re: [syzbot] INFO: rcu detected stall in batadv_nc_worker (3)
From: syzbot <syzbot+69904c3b4a09e8fa2e1b@syzkaller.appspotmail.com>
To: a@unstable.cc, b.a.t.m.a.n@lists.open-mesh.org, davem@davemloft.net,
	dvyukov@google.com, edumazet@google.com, jhs@mojatatu.com, jiri@resnulli.us,
	kuba@kernel.org, linux-kernel@vger.kernel.org, mareklindner@neomailbox.ch,
	netdev@vger.kernel.org, pabeni@redhat.com, sven@narfation.org,
	sw@simonwunderlich.de, syzkaller-bugs@googlegroups.com, tglx@linutronix.de,
	tonymarislogistics@yandex.com, xiyou.wangcong@gmail.com
Content-Type: text/plain; charset="UTF-8"
Message-ID-Hash: FEHD2PN6HWTT5TABJTAEQ2AJSMDUMSTH
X-Message-ID-Hash: FEHD2PN6HWTT5TABJTAEQ2AJSMDUMSTH
X-MailFrom: 3kgNLYwkbAOUZfgRHSSLYHWWPK.NVVNSLbZLYJVUaLUa.JVT@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/FEHD2PN6HWTT5TABJTAEQ2AJSMDUMSTH/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

syzbot has found a reproducer for the following issue on:

HEAD commit:    55be6084c8e0 Merge tag 'timers-core-2022-10-05' of git://g..
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=1623ec72880000
kernel config:  https://syzkaller.appspot.com/x/.config?x=df75278aabf0681a
dashboard link: https://syzkaller.appspot.com/bug?extid=69904c3b4a09e8fa2e1b
compiler:       gcc (Debian 10.2.1-6) 10.2.1 20210110, GNU ld (GNU Binutils for Debian) 2.35.2
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=16e2e478880000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=149ca17c880000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/9d967e5d91fa/disk-55be6084.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/9a8cffcbc089/vmlinux-55be6084.xz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+69904c3b4a09e8fa2e1b@syzkaller.appspotmail.com

rcu: INFO: rcu_preempt self-detected stall on CPU
rcu: 	0-...!: (1 GPs behind) idle=d61c/1/0x4000000000000000 softirq=5548/5551 fqs=5
	(t=10501 jiffies g=4985 q=1169 ncpus=2)
rcu: rcu_preempt kthread starved for 10488 jiffies! g4985 f0x0 RCU_GP_WAIT_FQS(5) ->state=0x0 ->cpu=1
rcu: 	Unless rcu_preempt kthread gets sufficient CPU time, OOM is now expected behavior.
rcu: RCU grace-period kthread stack dump:
task:rcu_preempt     state:R  running task     stack:28728 pid:17    ppid:2      flags:0x00004000
Call Trace:
 <TASK>
 context_switch kernel/sched/core.c:5178 [inline]
 __schedule+0xadf/0x5270 kernel/sched/core.c:6490
 schedule+0xda/0x1b0 kernel/sched/core.c:6566
 schedule_timeout+0x14a/0x2a0 kernel/time/timer.c:1935
 rcu_gp_fqs_loop+0x190/0x910 kernel/rcu/tree.c:1658
 rcu_gp_kthread+0x236/0x360 kernel/rcu/tree.c:1857
 kthread+0x2e4/0x3a0 kernel/kthread.c:376
 ret_from_fork+0x1f/0x30 arch/x86/entry/entry_64.S:306
 </TASK>
rcu: Stack dump where RCU GP kthread last ran:
Sending NMI from CPU 0 to CPUs 1:
NMI backtrace for cpu 1
CPU: 1 PID: 47 Comm: kworker/u4:3 Not tainted 6.0.0-syzkaller-09589-g55be6084c8e0 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 09/22/2022
Workqueue: bat_events batadv_nc_worker
RIP: 0010:check_kcov_mode kernel/kcov.c:166 [inline]
RIP: 0010:__sanitizer_cov_trace_pc+0x7/0x60 kernel/kcov.c:200
Code: 4c 00 5d be 03 00 00 00 e9 d6 43 84 02 66 0f 1f 44 00 00 48 8b be a8 01 00 00 e8 b4 ff ff ff 31 c0 c3 90 65 8b 05 f9 24 87 7e <89> c1 48 8b 34 24 81 e1 00 01 00 00 65 48 8b 14 25 80 6f 02 00 a9
RSP: 0018:ffffc900001f0c48 EFLAGS: 00000286
RAX: 0000000000000101 RBX: ffff88806b299c90 RCX: ffffffff878c4a1d
RDX: ffff888017893b00 RSI: 0000000000000100 RDI: 0000000000000007
RBP: fffffff0a3da8872 R08: 0000000000000007 R09: 0000000000000000
R10: fffffff0a3da8872 R11: 000000000008c07d R12: fffffff0a3da8872
R13: ffff888018f5ab00 R14: 0000000000000000 R15: 0000000000000000
FS:  0000000000000000(0000) GS:ffff8880b9b00000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 0000000000000000 CR3: 0000000026ef0000 CR4: 00000000003506e0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
Call Trace:
 <IRQ>
 pie_calculate_probability+0x32b/0x7c0 net/sched/sch_pie.c:387
 fq_pie_timer+0x170/0x2a0 net/sched/sch_fq_pie.c:380
 call_timer_fn+0x1a0/0x6b0 kernel/time/timer.c:1474
 expire_timers kernel/time/timer.c:1519 [inline]
 __run_timers.part.0+0x674/0xa80 kernel/time/timer.c:1790
 __run_timers kernel/time/timer.c:1768 [inline]
 run_timer_softirq+0xb3/0x1d0 kernel/time/timer.c:1803
 __do_softirq+0x1d0/0x9c8 kernel/softirq.c:571
 invoke_softirq kernel/softirq.c:445 [inline]
 __irq_exit_rcu+0x123/0x180 kernel/softirq.c:650
 irq_exit_rcu+0x5/0x20 kernel/softirq.c:662
 sysvec_apic_timer_interrupt+0x93/0xc0 arch/x86/kernel/apic/apic.c:1107
 </IRQ>
 <TASK>
 asm_sysvec_apic_timer_interrupt+0x16/0x20 arch/x86/include/asm/idtentry.h:649
RIP: 0010:rcu_preempt_read_exit kernel/rcu/tree_plugin.h:382 [inline]
RIP: 0010:__rcu_read_unlock+0x2d/0x570 kernel/rcu/tree_plugin.h:421
Code: 55 41 54 55 65 48 8b 2c 25 80 6f 02 00 53 48 8d bd 3c 04 00 00 48 b8 00 00 00 00 00 fc ff df 48 89 fa 48 c1 ea 03 0f b6 14 02 <48> 89 f8 83 e0 07 83 c0 03 38 d0 7c 08 84 d2 0f 85 24 02 00 00 65
RSP: 0018:ffffc90000b87c58 EFLAGS: 00000a07
RAX: dffffc0000000000 RBX: 0000000000000001 RCX: 0000000000000000
RDX: 0000000000000000 RSI: ffffffff891cd30e RDI: ffff888017893f3c
RBP: ffff888017893b00 R08: 0000000000000001 R09: 0000000000000000
R10: 0000000000000001 R11: 0000000000000001 R12: 0000000000000001
R13: 0000000000000000 R14: dffffc0000000000 R15: 0000000000000345
 rcu_read_unlock include/linux/rcupdate.h:770 [inline]
 batadv_nc_purge_orig_hash net/batman-adv/network-coding.c:412 [inline]
 batadv_nc_worker+0x853/0xfa0 net/batman-adv/network-coding.c:719
 process_one_work+0x991/0x1610 kernel/workqueue.c:2289
 worker_thread+0x665/0x1080 kernel/workqueue.c:2436
 kthread+0x2e4/0x3a0 kernel/kthread.c:376
 ret_from_fork+0x1f/0x30 arch/x86/entry/entry_64.S:306
 </TASK>
INFO: NMI handler (nmi_cpu_backtrace_handler) took too long to run: 1.452 msecs
CPU: 0 PID: 16 Comm: ksoftirqd/0 Not tainted 6.0.0-syzkaller-09589-g55be6084c8e0 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 09/22/2022
RIP: 0010:pie_calculate_probability+0x1a5/0x7c0 net/sched/sch_pie.c:354
Code: 20 48 b8 82 be e0 12 01 00 00 00 48 89 fa 48 c1 ea 03 4c 0f af e0 48 b8 00 00 00 00 00 fc ff df 80 3c 02 00 0f 85 e4 05 00 00 <4c> 89 ea 4c 8b 7b 20 48 b8 00 00 00 00 00 fc ff df 48 c1 ea 03 80
RSP: 0018:ffffc90000157b40 EFLAGS: 00000246
RAX: dffffc0000000000 RBX: ffff88806b81acc0 RCX: 0000000000000100
RDX: 1ffff1100d70359c RSI: ffffffff878c480f RDI: ffff88806b81ace0
RBP: 0000000225c17d04 R08: 0000000000000005 R09: 0000000000000000
R10: 0000000000000000 R11: 000000000008c07d R12: 00000015798ee228
R13: ffff888017498300 R14: 0000000000000000 R15: 0000000000000000
FS:  0000000000000000(0000) GS:ffff8880b9a00000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00007ffddaac90a8 CR3: 0000000011aec000 CR4: 00000000003506f0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
Call Trace:
 <TASK>
 fq_pie_timer+0x170/0x2a0 net/sched/sch_fq_pie.c:380
 call_timer_fn+0x1a0/0x6b0 kernel/time/timer.c:1474
 expire_timers kernel/time/timer.c:1519 [inline]
 __run_timers.part.0+0x674/0xa80 kernel/time/timer.c:1790
 __run_timers kernel/time/timer.c:1768 [inline]
 run_timer_softirq+0xb3/0x1d0 kernel/time/timer.c:1803
 __do_softirq+0x1d0/0x9c8 kernel/softirq.c:571
 run_ksoftirqd kernel/softirq.c:934 [inline]
 run_ksoftirqd+0x2d/0x60 kernel/softirq.c:926
 smpboot_thread_fn+0x645/0x9c0 kernel/smpboot.c:164
 kthread+0x2e4/0x3a0 kernel/kthread.c:376
 ret_from_fork+0x1f/0x30 arch/x86/entry/entry_64.S:306
 </TASK>
