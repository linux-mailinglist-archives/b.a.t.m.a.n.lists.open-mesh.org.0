Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 292D6489679
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 10 Jan 2022 11:37:26 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id F2B5E8046C;
	Mon, 10 Jan 2022 11:37:24 +0100 (CET)
Received: from mail-io1-f71.google.com (mail-io1-f71.google.com [209.85.166.71])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id D4D7C803F7
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 10 Jan 2022 11:37:20 +0100 (CET)
Received: by mail-io1-f71.google.com with SMTP id r74-20020a6b8f4d000000b0060447822f65so10735001iod.20
        for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 10 Jan 2022 02:37:20 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
        bh=28Zn727PbkOa9e5z/Te0bGji+C0r00GDui6Opfz/fgY=;
        b=MbKMXKoEfiRhVjXQtKEpzAtDunOGC3tjZzQAdg4okJrPMEcEEOu4Tt9tP4rDzd4qwX
         f0To1Eu9skIoRmyR621VQJXgc5OorbGioOa/LhcLcFyJwbnz9E+Aa8VQVbMP8rCsAPj3
         Wrlz2pl+TOEjA1I/5/ygxZld15PLjiNXLci1DgY9W/PG02wKYcZ/IkbgEU/jaSzm0E8t
         LA8f8VNXkpJl0dXpW98vHHgybdBWkhmPpDXwWLqo2YH9Wul+XI9v2iEMH3gOeLLUHbHU
         EVml2xtEq3S7gd/umCnwN0R8wJiSUVBSPNlO6HMfadrfkqzuci2pQAlLGjKPtn4UVLTs
         JpRw==
X-Gm-Message-State: AOAM532ZqcrFyvC6lYLkJ0HCZiLXWfxDtr8uNejYbymj0T0MoRK6O0Xc
	uyxJc4kCo2/rL4v/qYCKUqVW86S8x9yhnWz4ufJgoM/sXb/9
X-Google-Smtp-Source: ABdhPJxkWJglLMH3JYkAs5xRuRcpxjI7rYX9TuzOm255LBfzxK0nlisfIObbM2ncvDqJUr2+cbUo4jJfvo5yCLgKxSReC+qt7bFu
MIME-Version: 1.0
X-Received: by 2002:a6b:ba05:: with SMTP id k5mr35882555iof.194.1641811039359;
 Mon, 10 Jan 2022 02:37:19 -0800 (PST)
Date: Mon, 10 Jan 2022 02:37:19 -0800
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000ca1d2005d537ebac@google.com>
Subject: [syzbot] WARNING: suspicious RCU usage in __dev_queue_xmit
From: syzbot <syzbot+e163f2ff7c3f7efd8203@syzkaller.appspotmail.com>
To: a@unstable.cc, alobakin@pm.me, andrii@kernel.org, ast@kernel.org,
	atenart@kernel.org, b.a.t.m.a.n@lists.open-mesh.org, bpf@vger.kernel.org,
	coreteam@netfilter.org, daniel@iogearbox.net, davem@davemloft.net,
	fw@strlen.de, john.fastabend@gmail.com, jonathan.lemon@gmail.com,
	kadlec@netfilter.org, kafai@fb.com, kpsingh@kernel.org, kuba@kernel.org,
	linux-kernel@vger.kernel.org, lukas@wunner.de, mareklindner@neomailbox.ch,
	netdev@vger.kernel.org, netfilter-devel@vger.kernel.org, pablo@netfilter.org,
	songliubraving@fb.com, sven@narfation.org, sw@simonwunderlich.de,
	syzkaller-bugs@googlegroups.com, yhs@fb.com
Content-Type: text/plain; charset="UTF-8"
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of 3XwzcYQkbAPww23oeppivettmh.ksskpiywivgsrxirx.gsq@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com designates 209.85.166.71 as permitted sender) smtp.mailfrom=3XwzcYQkbAPww23oeppivettmh.ksskpiywivgsrxirx.gsq@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com;
	dmarc=fail reason="SPF not aligned (relaxed), No valid DKIM" header.from=appspotmail.com (policy=none)
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1641811040; a=rsa-sha256;
	cv=none;
	b=3e/b3SXjNwAl54wjZgOUwxHScPM2WGBVEyOiIoqyIBOi8hsP7ZIeQel78TZIIaw761MaCh
	cpJSm92KLMbFX/sdszBuBzLq85VuYETzWjS5vwb5M3s4W3S3iY1JqPySL7nRV2ahWxwMRu
	HQ5wUBtUEWrMRTiR+hZsMf7RU7hkwP0=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1641811040;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type;
	bh=28Zn727PbkOa9e5z/Te0bGji+C0r00GDui6Opfz/fgY=;
	b=sZ/uNQJZ07tbK8tdGFn8hCJnbyGCIfUrvnk7qc4juLG4Ci06b91u8nVnElcwLIwm4O2tSE
	61Q9s8LPKSd1PNBoCBozzvqv5zHR/Dzx7MCuTDZf4jvODL3hxP8xjes3CGUWqsk2EBckOQ
	wTPxeyTJAvUMiPIUEm5JH5zDMXuOZ7I=
Message-ID-Hash: LUQCHUBAKUDPBZNWEP3FCLLEXC2GC72K
X-Message-ID-Hash: LUQCHUBAKUDPBZNWEP3FCLLEXC2GC72K
X-MailFrom: 3XwzcYQkbAPww23oeppivettmh.ksskpiywivgsrxirx.gsq@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/LUQCHUBAKUDPBZNWEP3FCLLEXC2GC72K/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Hello,

syzbot found the following issue on:

HEAD commit:    4c375272fb0b Merge branch 'net-add-preliminary-netdev-refc..
git tree:       net-next
console output: https://syzkaller.appspot.com/x/log.txt?x=164749a9b00000
kernel config:  https://syzkaller.appspot.com/x/.config?x=2b8e24e3a80e3875
dashboard link: https://syzkaller.appspot.com/bug?extid=e163f2ff7c3f7efd8203
compiler:       gcc (Debian 10.2.1-6) 10.2.1 20210110, GNU ld (GNU Binutils for Debian) 2.35.2
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=11493641b00000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=11ac6aceb00000

The issue was bisected to:

commit 42df6e1d221dddc0f2acf2be37e68d553ad65f96
Author: Lukas Wunner <lukas@wunner.de>
Date:   Fri Oct 8 20:06:03 2021 +0000

    netfilter: Introduce egress hook

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=1236329db00000
final oops:     https://syzkaller.appspot.com/x/report.txt?x=1136329db00000
console output: https://syzkaller.appspot.com/x/log.txt?x=1636329db00000

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+e163f2ff7c3f7efd8203@syzkaller.appspotmail.com
Fixes: 42df6e1d221d ("netfilter: Introduce egress hook")

=============================
WARNING: suspicious RCU usage
5.16.0-rc3-syzkaller #0 Not tainted
-----------------------------
include/linux/netfilter_netdev.h:97 suspicious rcu_dereference_check() usage!

other info that might help us debug this:


rcu_scheduler_active = 2, debug_locks = 1
3 locks held by kworker/u4:2/49:
 #0: ffff88814b0fe938 ((wq_completion)bat_events){+.+.}-{0:0}, at: arch_atomic64_set arch/x86/include/asm/atomic64_64.h:34 [inline]
 #0: ffff88814b0fe938 ((wq_completion)bat_events){+.+.}-{0:0}, at: arch_atomic_long_set include/linux/atomic/atomic-long.h:41 [inline]
 #0: ffff88814b0fe938 ((wq_completion)bat_events){+.+.}-{0:0}, at: atomic_long_set include/linux/atomic/atomic-instrumented.h:1198 [inline]
 #0: ffff88814b0fe938 ((wq_completion)bat_events){+.+.}-{0:0}, at: set_work_data kernel/workqueue.c:635 [inline]
 #0: ffff88814b0fe938 ((wq_completion)bat_events){+.+.}-{0:0}, at: set_work_pool_and_clear_pending kernel/workqueue.c:662 [inline]
 #0: ffff88814b0fe938 ((wq_completion)bat_events){+.+.}-{0:0}, at: process_one_work+0x896/0x1690 kernel/workqueue.c:2269
 #1: ffffc9000119fdb0 ((work_completion)(&(&forw_packet_aggr->delayed_work)->work)){+.+.}-{0:0}, at: process_one_work+0x8ca/0x1690 kernel/workqueue.c:2273
 #2: ffffffff8bb83b00 (rcu_read_lock_bh){....}-{1:2}, at: __dev_queue_xmit+0x1e3/0x3640 net/core/dev.c:4036

stack backtrace:
CPU: 1 PID: 49 Comm: kworker/u4:2 Not tainted 5.16.0-rc3-syzkaller #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 01/01/2011
Workqueue: bat_events batadv_iv_send_outstanding_bat_ogm_packet
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:88 [inline]
 dump_stack_lvl+0xcd/0x134 lib/dump_stack.c:106
 nf_hook_egress include/linux/netfilter_netdev.h:97 [inline]
 __dev_queue_xmit+0x2eac/0x3640 net/core/dev.c:4053
 batadv_send_skb_packet+0x4a9/0x5f0 net/batman-adv/send.c:108
 batadv_iv_ogm_send_to_if net/batman-adv/bat_iv_ogm.c:393 [inline]
 batadv_iv_ogm_emit net/batman-adv/bat_iv_ogm.c:421 [inline]
 batadv_iv_send_outstanding_bat_ogm_packet+0x6d7/0x8e0 net/batman-adv/bat_iv_ogm.c:1701
 process_one_work+0x9b2/0x1690 kernel/workqueue.c:2298
 worker_thread+0x658/0x11f0 kernel/workqueue.c:2445
 kthread+0x405/0x4f0 kernel/kthread.c:327
 ret_from_fork+0x1f/0x30 arch/x86/entry/entry_64.S:295
 </TASK>


---
This report is generated by a bot. It may contain errors.
See https://goo.gl/tpsmEJ for more information about syzbot.
syzbot engineers can be reached at syzkaller@googlegroups.com.

syzbot will keep track of this issue. See:
https://goo.gl/tpsmEJ#status for how to communicate with syzbot.
For information about bisection process see: https://goo.gl/tpsmEJ#bisection
syzbot can test patches for this issue, for details see:
https://goo.gl/tpsmEJ#testing-patches
