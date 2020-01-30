Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [78.46.248.236])
	by mail.lfdr.de (Postfix) with ESMTPS id 310D514E917
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 31 Jan 2020 08:18:27 +0100 (CET)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id BF19780633;
	Fri, 31 Jan 2020 08:18:16 +0100 (CET)
Received: from mail-io1-f69.google.com (mail-io1-f69.google.com
 [209.85.166.69]) by open-mesh.org (Postfix) with ESMTPS id E9849800A5
 for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 30 Jan 2020 21:27:13 +0100 (CET)
Received: by mail-io1-f69.google.com with SMTP id z201so2707925iof.8
 for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 30 Jan 2020 12:27:13 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
 bh=5KZLsPvp+8RXuR3Pe74Ca7Nz3IFftp+XwGDjktIH68M=;
 b=e4pzZryw3vB9ECXny0IptxqQa0Icws9N9Bh2KDByPW5zZTaN5eeMZYOhmzWVH7/ZsA
 5nwALatg6CYQF6Lo2h9Vf/947FTI+9rRG0UmqFnDOeCPOG1SX+qCSnjxPDNgn8vXtz8P
 mx/n1iY4a8Iq3EHy/2RBayOj6UIsvEjrlx6JYmmhiHzOOpH3lYHz3bUNfB84fK1kYSCf
 9APdtjA9zr+iHdhBM++GNg0Ojeq7lwnfU4i/Xx/Vumq5KUmAfor1q4YmGzRzHGFCUCZN
 S/YJ8UDAuc2Wt0M29arz6TJS4ancqhiBUXWxa1GLt+zb97C5sFN3vNTp165svY6Q7Wf0
 lCIg==
X-Gm-Message-State: APjAAAX9jZ8u/Zu+/B55l43Ed+OuBRICb026HDn29mUA+HWK6/Jw9GR6
 hHbWE/5YXnWONU4g+AO2wYgxpiaIt0DvLjdoENNw81ouKKu3
X-Google-Smtp-Source: APXvYqyDasm6UIB0FZii5UdG+JTKmNvvy6WauxDS/4wSvwqbe5KHiJV8QICxB/oUzc7+cgJYhpDJrrfMm6gzTbXBdUvP3teD73o9
MIME-Version: 1.0
X-Received: by 2002:a5d:8509:: with SMTP id q9mr5862535ion.134.1580416032632; 
 Thu, 30 Jan 2020 12:27:12 -0800 (PST)
Date: Thu, 30 Jan 2020 12:27:12 -0800
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <00000000000038fa02059d614893@google.com>
Subject: KMSAN: uninit-value in batadv_interface_tx (2)
From: syzbot <syzbot+24458cef7d37351dd0c3@syzkaller.appspotmail.com>
To: a@unstable.cc, b.a.t.m.a.n@lists.open-mesh.org, davem@davemloft.net, 
 glider@google.com, linux-kernel@vger.kernel.org, mareklindner@neomailbox.ch, 
 netdev@vger.kernel.org, sven@narfation.org, sw@simonwunderlich.de, 
 syzkaller-bugs@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1580416034;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type;
 bh=5KZLsPvp+8RXuR3Pe74Ca7Nz3IFftp+XwGDjktIH68M=;
 b=R3fN85531cBiG2QNA0cZFaq/3SU0zJZF5QoC8IH2VKC6fqzUp14GDEK31oYtBiFOvCHMhW
 ru5GbhBozz1aVKApcv/qHnyzxztv6vp0Opt9xlrJDJ5mUaIhyX2jNO3xK6MiQLY1cypjTu
 NtijKOu5j9Ij5pyEM96QAibLFPgp1qg=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1580416034; a=rsa-sha256; cv=none;
 b=XT0T0DGHzjRqGj8vyyIjd/RdegpFWYN4hgEx9XTlOA0hwg2N5OjhTbi89FyrxvcLLnTcfi
 Y+p7rg2AnuzkbwZnezMBYn/dxTod+NrcRhJdrBSonVfepr1yJgbIb3nXGYgBQskmmN/KJB
 q6pBx7k8izSkIdVrcrXuQo8cmvgR3yQ=
ARC-Authentication-Results: i=1; open-mesh.org; dkim=none;
 spf=pass (open-mesh.org: domain of
 3IDwzXgkbAF0NTUF5GG9M5KKD8.BJJBG9PN9M7JIO9IO.7JH@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
 designates 209.85.166.69 as permitted sender)
 smtp.mailfrom=3IDwzXgkbAF0NTUF5GG9M5KKD8.BJJBG9PN9M7JIO9IO.7JH@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
X-Mailman-Approved-At: Fri, 31 Jan 2020 08:18:12 +0100
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

HEAD commit:    686a4f77 kmsan: don't compile memmove
git tree:       https://github.com/google/kmsan.git master
console output: https://syzkaller.appspot.com/x/log.txt?x=11aff3c9e00000
kernel config:  https://syzkaller.appspot.com/x/.config?x=e10654781bc1f11c
dashboard link: https://syzkaller.appspot.com/bug?extid=24458cef7d37351dd0c3
compiler:       clang version 10.0.0 (https://github.com/llvm/llvm-project/ c2443155a0fb245c8f17f2c1c72b6ea391e86e81)

Unfortunately, I don't have any reproducer for this crash yet.

IMPORTANT: if you fix the bug, please add the following tag to the commit:
Reported-by: syzbot+24458cef7d37351dd0c3@syzkaller.appspotmail.com

=====================================================
BUG: KMSAN: uninit-value in batadv_interface_tx+0x10cf/0x2450 net/batman-adv/soft-interface.c:264
CPU: 1 PID: 16 Comm: ksoftirqd/1 Not tainted 5.5.0-rc5-syzkaller #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 01/01/2011
Call Trace:
 __dump_stack lib/dump_stack.c:77 [inline]
 dump_stack+0x1c9/0x220 lib/dump_stack.c:118
 kmsan_report+0xf7/0x1e0 mm/kmsan/kmsan_report.c:118
 __msan_warning+0x58/0xa0 mm/kmsan/kmsan_instr.c:215
 batadv_interface_tx+0x10cf/0x2450 net/batman-adv/soft-interface.c:264
 __netdev_start_xmit include/linux/netdevice.h:4447 [inline]
 netdev_start_xmit include/linux/netdevice.h:4461 [inline]
 xmit_one net/core/dev.c:3420 [inline]
 dev_hard_start_xmit+0x531/0xab0 net/core/dev.c:3436
 __dev_queue_xmit+0x37de/0x4220 net/core/dev.c:4013
 dev_queue_xmit+0x4b/0x60 net/core/dev.c:4046
 hsr_xmit net/hsr/hsr_forward.c:228 [inline]
 hsr_forward_do net/hsr/hsr_forward.c:285 [inline]
 hsr_forward_skb+0x2614/0x30d0 net/hsr/hsr_forward.c:361
 hsr_handle_frame+0x385/0x4b0 net/hsr/hsr_slave.c:43
 __netif_receive_skb_core+0x21de/0x5840 net/core/dev.c:5051
 __netif_receive_skb_one_core net/core/dev.c:5148 [inline]
 __netif_receive_skb net/core/dev.c:5264 [inline]
 process_backlog+0x936/0x1410 net/core/dev.c:6095
 napi_poll net/core/dev.c:6532 [inline]
 net_rx_action+0x786/0x1ab0 net/core/dev.c:6600
 __do_softirq+0x311/0x83d kernel/softirq.c:293
 run_ksoftirqd+0x25/0x40 kernel/softirq.c:607
 smpboot_thread_fn+0x493/0x980 kernel/smpboot.c:165
 kthread+0x4b5/0x4f0 kernel/kthread.c:256
 ret_from_fork+0x35/0x40 arch/x86/entry/entry_64.S:353

Uninit was stored to memory at:
 kmsan_save_stack_with_flags mm/kmsan/kmsan.c:144 [inline]
 kmsan_internal_chain_origin+0xad/0x130 mm/kmsan/kmsan.c:310
 kmsan_memcpy_memmove_metadata+0x272/0x2e0 mm/kmsan/kmsan.c:247
 kmsan_memcpy_metadata+0xb/0x10 mm/kmsan/kmsan.c:267
 __msan_memcpy+0x43/0x50 mm/kmsan/kmsan_instr.c:116
 pskb_expand_head+0x38b/0x1b00 net/core/skbuff.c:1637
 __skb_pad+0x47f/0x900 net/core/skbuff.c:1805
 __skb_put_padto include/linux/skbuff.h:3193 [inline]
 skb_put_padto include/linux/skbuff.h:3212 [inline]
 send_hsr_supervision_frame+0x122d/0x1500 net/hsr/hsr_device.c:310
 hsr_announce+0x1e2/0x370 net/hsr/hsr_device.c:341
 call_timer_fn+0x218/0x510 kernel/time/timer.c:1404
 expire_timers kernel/time/timer.c:1449 [inline]
 __run_timers+0xcff/0x1210 kernel/time/timer.c:1773
 run_timer_softirq+0x2d/0x50 kernel/time/timer.c:1786
 __do_softirq+0x311/0x83d kernel/softirq.c:293

Uninit was created at:
 kmsan_save_stack_with_flags+0x3c/0x90 mm/kmsan/kmsan.c:144
 kmsan_internal_alloc_meta_for_pages mm/kmsan/kmsan_shadow.c:307 [inline]
 kmsan_alloc_page+0x12a/0x310 mm/kmsan/kmsan_shadow.c:336
 __alloc_pages_nodemask+0x57f2/0x5f60 mm/page_alloc.c:4800
 __alloc_pages include/linux/gfp.h:498 [inline]
 __alloc_pages_node include/linux/gfp.h:511 [inline]
 alloc_pages_node include/linux/gfp.h:525 [inline]
 __page_frag_cache_refill mm/page_alloc.c:4875 [inline]
 page_frag_alloc+0x3ae/0x910 mm/page_alloc.c:4905
 __netdev_alloc_skb+0x703/0xbb0 net/core/skbuff.c:455
 __netdev_alloc_skb_ip_align include/linux/skbuff.h:2801 [inline]
 netdev_alloc_skb_ip_align include/linux/skbuff.h:2811 [inline]
 batadv_iv_ogm_aggregate_new net/batman-adv/bat_iv_ogm.c:558 [inline]
 batadv_iv_ogm_queue_add+0x10da/0x1900 net/batman-adv/bat_iv_ogm.c:670
 batadv_iv_ogm_schedule_buff net/batman-adv/bat_iv_ogm.c:829 [inline]
 batadv_iv_ogm_schedule+0xcf1/0x13c0 net/batman-adv/bat_iv_ogm.c:865
 batadv_iv_send_outstanding_bat_ogm_packet+0xbae/0xd50 net/batman-adv/bat_iv_ogm.c:1718
 process_one_work+0x1552/0x1ef0 kernel/workqueue.c:2264
 worker_thread+0xef6/0x2450 kernel/workqueue.c:2410
 kthread+0x4b5/0x4f0 kernel/kthread.c:256
 ret_from_fork+0x35/0x40 arch/x86/entry/entry_64.S:353
=====================================================


---
This bug is generated by a bot. It may contain errors.
See https://goo.gl/tpsmEJ for more information about syzbot.
syzbot engineers can be reached at syzkaller@googlegroups.com.

syzbot will keep track of this bug report. See:
https://goo.gl/tpsmEJ#status for how to communicate with syzbot.
