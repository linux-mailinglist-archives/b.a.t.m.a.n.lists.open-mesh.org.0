Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F7DB16A043
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 24 Feb 2020 09:45:11 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 913F08064C;
	Mon, 24 Feb 2020 09:45:10 +0100 (CET)
Received: from mail-il1-f197.google.com (mail-il1-f197.google.com
 [209.85.166.197])
 by diktynna.open-mesh.org (Postfix) with ESMTPS id EA85F801B9
 for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 24 Feb 2020 09:38:14 +0100 (CET)
Received: by mail-il1-f197.google.com with SMTP id c24so17010427ila.6
 for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 24 Feb 2020 00:38:14 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
 bh=GsrXjmJeGikYtB/cB8yddymFCfJV2BF6AAZhIaBbNF4=;
 b=rc1ixf13LMPsdH3+wKqQhDafkNE7aOqpPbhkQW7cHU1J4RLV+Qn0EMhAKBJx6UU0Mq
 cB1GibMCPAmVspGUyUMrISlvj1xMkTPZri68dAs0s3X7nJBMe8bglrfitcUgRPMoE6f0
 vAkAKnuI7hxZMFQjsR44NiBebVFvhUNySngI9lSiNXaP+qW6/8LAS1CQZGMaIXVUhPLY
 1KG+buAlkjNcfBVvTF//I27+J1kOY7MYQGISpwjlshBxuD8PKiW9u3YaWkqebe65omDz
 1mSXKD61QJKn3fiif+sstcJ3G/Ww5hEMI8s6WMWPS4Q9sxi3z+7zyHE7USIDH+78qjrN
 LhmQ==
X-Gm-Message-State: APjAAAUbEcMURhFpDJbwohJ+qhY4IdGfpQyfx3kwPFAzQcGNKS7Zq3dC
 vw5Fi2Urw5QgMR4fgFksxDhAgjoDzA9yEPEwFpJZZdQxh6+G
X-Google-Smtp-Source: APXvYqzy47V2csfPLyZ4K4CJj8Vfu2iPewOTbfW2itGqslEdeiHMx1tm2n/SeT/W4cM9uLNHwYYp1/q6sw/knHXinEv5R43hdh2o
MIME-Version: 1.0
X-Received: by 2002:a02:708f:: with SMTP id f137mr49636155jac.4.1582533493717; 
 Mon, 24 Feb 2020 00:38:13 -0800 (PST)
Date: Mon, 24 Feb 2020 00:38:13 -0800
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000bd0208059f4e4a87@google.com>
Subject: KMSAN: uninit-value in batadv_get_vid
From: syzbot <syzbot+0adb190024de0a0e265b@syzkaller.appspotmail.com>
To: a@unstable.cc, b.a.t.m.a.n@lists.open-mesh.org, davem@davemloft.net, 
 glider@google.com, kuba@kernel.org, linux-kernel@vger.kernel.org, 
 mareklindner@neomailbox.ch, netdev@vger.kernel.org, sven@narfation.org, 
 sw@simonwunderlich.de, syzkaller-bugs@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1582533495;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type;
 bh=GsrXjmJeGikYtB/cB8yddymFCfJV2BF6AAZhIaBbNF4=;
 b=1YJwpcO0YoE+ha2URSOi4BfO6OTUwywsvl4zY5HZspfa8DsqjMVw3MQpkF0t3K5t7lzqmb
 V2B+p385qGaxYB9+PL6KBA4tBc5jBp64OWxdiqHRy9+Kna7QTTL38enB87G/hr119HMLi4
 bREZR1xEyMbHBq+hrGEaq06DPguzOW4=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1582533495; a=rsa-sha256; cv=none;
 b=sKF3C2YHtSwM5GPqxWqDGWN1oKJpSkmY6U0J05QbAuVY0a/io965kBm4odgUv5VDp/PAol
 E+jUZvibGjoGCop4KpJ2i9aP4YQWyyXxRon4uNhkk3uMTJRNSl4nOB6WNu7SuKTehJr07a
 H1Ph5kvlOIsbFK6NtRRr8OpAwhr17qg=
ARC-Authentication-Results: i=1; diktynna.open-mesh.org; dkim=none;
 spf=pass (diktynna.open-mesh.org: domain of
 3dYtTXgkbANIGMN8y992FyDD61.4CC492IG2F0CBH2BH.0CA@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
 designates 209.85.166.197 as permitted sender)
 smtp.mailfrom=3dYtTXgkbANIGMN8y992FyDD61.4CC492IG2F0CBH2BH.0CA@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
X-Mailman-Approved-At: Mon, 24 Feb 2020 09:45:07 +0100
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

HEAD commit:    8bbbc5cf kmsan: don't compile memmove
git tree:       https://github.com/google/kmsan.git master
console output: https://syzkaller.appspot.com/x/log.txt?x=15471109e00000
kernel config:  https://syzkaller.appspot.com/x/.config?x=cd0e9a6b0e555cc3
dashboard link: https://syzkaller.appspot.com/bug?extid=0adb190024de0a0e265b
compiler:       clang version 10.0.0 (https://github.com/llvm/llvm-project/ c2443155a0fb245c8f17f2c1c72b6ea391e86e81)
userspace arch: i386
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=1247c109e00000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=1349a779e00000

IMPORTANT: if you fix the bug, please add the following tag to the commit:
Reported-by: syzbot+0adb190024de0a0e265b@syzkaller.appspotmail.com

=====================================================
BUG: KMSAN: uninit-value in batadv_get_vid+0x1fd/0x340 net/batman-adv/main.c:650
CPU: 0 PID: 12317 Comm: syz-executor026 Not tainted 5.6.0-rc2-syzkaller #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 01/01/2011
Call Trace:
 __dump_stack lib/dump_stack.c:77 [inline]
 dump_stack+0x1c9/0x220 lib/dump_stack.c:118
 kmsan_report+0xf7/0x1e0 mm/kmsan/kmsan_report.c:118
 __msan_warning+0x58/0xa0 mm/kmsan/kmsan_instr.c:215
 batadv_get_vid+0x1fd/0x340 net/batman-adv/main.c:650
 batadv_interface_tx+0x30a/0x2450 net/batman-adv/soft-interface.c:212
 __netdev_start_xmit include/linux/netdevice.h:4524 [inline]
 netdev_start_xmit include/linux/netdevice.h:4538 [inline]
 xmit_one net/core/dev.c:3470 [inline]
 dev_hard_start_xmit+0x531/0xab0 net/core/dev.c:3486
 __dev_queue_xmit+0x37de/0x4220 net/core/dev.c:4063
 dev_queue_xmit+0x4b/0x60 net/core/dev.c:4096
 __bpf_tx_skb net/core/filter.c:2061 [inline]
 __bpf_redirect_common net/core/filter.c:2100 [inline]
 __bpf_redirect+0x11d5/0x1440 net/core/filter.c:2107
 ____bpf_clone_redirect net/core/filter.c:2140 [inline]
 bpf_clone_redirect+0x466/0x620 net/core/filter.c:2112
 bpf_prog_bb15b996d00816f9+0x7a4/0x1000
 bpf_dispatcher_nopfunc include/linux/bpf.h:521 [inline]
 bpf_test_run+0x60c/0xe50 net/bpf/test_run.c:48
 bpf_prog_test_run_skb+0xcab/0x24a0 net/bpf/test_run.c:388
 bpf_prog_test_run kernel/bpf/syscall.c:2572 [inline]
 __do_sys_bpf+0xa684/0x13510 kernel/bpf/syscall.c:3414
 __se_sys_bpf kernel/bpf/syscall.c:3355 [inline]
 __ia32_sys_bpf+0xdb/0x120 kernel/bpf/syscall.c:3355
 do_syscall_32_irqs_on arch/x86/entry/common.c:339 [inline]
 do_fast_syscall_32+0x3c7/0x6e0 arch/x86/entry/common.c:410
 entry_SYSENTER_compat+0x68/0x77 arch/x86/entry/entry_64_compat.S:139
RIP: 0023:0xf7fc8d99
Code: 90 e8 0b 00 00 00 f3 90 0f ae e8 eb f9 8d 74 26 00 89 3c 24 c3 90 90 90 90 90 90 90 90 90 90 90 90 51 52 55 89 e5 0f 34 cd 80 <5d> 5a 59 c3 90 90 90 90 eb 0d 90 90 90 90 90 90 90 90 90 90 90 90
RSP: 002b:00000000ff9adc0c EFLAGS: 00000246 ORIG_RAX: 0000000000000165
RAX: ffffffffffffffda RBX: 000000000000000a RCX: 0000000020000280
RDX: 0000000000000040 RSI: 0000000000000000 RDI: 000000000000005b
RBP: 0000000000000000 R08: 0000000000000000 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000000 R12: 0000000000000000
R13: 0000000000000000 R14: 0000000000000000 R15: 0000000000000000

Uninit was created at:
 kmsan_save_stack_with_flags mm/kmsan/kmsan.c:144 [inline]
 kmsan_internal_poison_shadow+0x66/0xd0 mm/kmsan/kmsan.c:127
 kmsan_slab_alloc+0x8a/0xe0 mm/kmsan/kmsan_hooks.c:82
 slab_alloc_node mm/slub.c:2793 [inline]
 __kmalloc_node_track_caller+0xb40/0x1200 mm/slub.c:4401
 __kmalloc_reserve net/core/skbuff.c:142 [inline]
 pskb_expand_head+0x20b/0x1b00 net/core/skbuff.c:1629
 skb_ensure_writable+0x3ea/0x490 net/core/skbuff.c:5453
 __bpf_try_make_writable net/core/filter.c:1635 [inline]
 bpf_try_make_writable net/core/filter.c:1641 [inline]
 bpf_try_make_head_writable net/core/filter.c:1649 [inline]
 ____bpf_clone_redirect net/core/filter.c:2134 [inline]
 bpf_clone_redirect+0x251/0x620 net/core/filter.c:2112
 bpf_prog_bb15b996d00816f9+0x7a4/0x1000
 bpf_dispatcher_nopfunc include/linux/bpf.h:521 [inline]
 bpf_test_run+0x60c/0xe50 net/bpf/test_run.c:48
 bpf_prog_test_run_skb+0xcab/0x24a0 net/bpf/test_run.c:388
 bpf_prog_test_run kernel/bpf/syscall.c:2572 [inline]
 __do_sys_bpf+0xa684/0x13510 kernel/bpf/syscall.c:3414
 __se_sys_bpf kernel/bpf/syscall.c:3355 [inline]
 __ia32_sys_bpf+0xdb/0x120 kernel/bpf/syscall.c:3355
 do_syscall_32_irqs_on arch/x86/entry/common.c:339 [inline]
 do_fast_syscall_32+0x3c7/0x6e0 arch/x86/entry/common.c:410
 entry_SYSENTER_compat+0x68/0x77 arch/x86/entry/entry_64_compat.S:139
=====================================================


---
This bug is generated by a bot. It may contain errors.
See https://goo.gl/tpsmEJ for more information about syzbot.
syzbot engineers can be reached at syzkaller@googlegroups.com.

syzbot will keep track of this bug report. See:
https://goo.gl/tpsmEJ#status for how to communicate with syzbot.
syzbot can test patches for this bug, for details see:
https://goo.gl/tpsmEJ#testing-patches
