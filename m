Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [78.46.248.236])
	by mail.lfdr.de (Postfix) with ESMTPS id 10BCC14F2B9
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 31 Jan 2020 20:26:03 +0100 (CET)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 0F8D580A22;
	Fri, 31 Jan 2020 20:25:56 +0100 (CET)
Received: from mail-il1-f200.google.com (mail-il1-f200.google.com
 [209.85.166.200])
 by open-mesh.org (Postfix) with ESMTPS id 187A38025F
 for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 31 Jan 2020 18:58:17 +0100 (CET)
Received: by mail-il1-f200.google.com with SMTP id d22so5979102ild.3
 for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 31 Jan 2020 09:58:17 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
 bh=/wqIRm40rmIFtC63KFlb4tl+GMj3ukWWtsELOOrTj18=;
 b=oGY/jtL6oOoKeCFJEdoo5DmtzpJKX74YjXcxY97/lYjdqna2I69e5zkv3AdvZqUXw7
 +HrNiGJLL1IXWgUmCvtIfBwTeEO7kTiAFyrahJAgSIaIqCaQB9eFk9QLkDwMCVpTtfbL
 PqZlExK5lZNm2hPajquv1QyMUavqgUKClP/NuqXFq6JWz1WGuBqWQgTk3e/Iwr3bdZeb
 D8oRWhlTwA77oGHLYraq0d/JM8p7iEYx4lkGkD520vFQo/fXJgtsrgXhJ7FwC6cslqaY
 zm6AIcc91N6EXrBoVgrZ6WZJtRSLF2Z1Zafl6NV4+BQwl8ijnAAbq87Owpm+5Y1YvOuv
 EKaQ==
X-Gm-Message-State: APjAAAWNKbh/Z8FR025RerXr9RVnVLiJv1fWpASTD1FkCRMgCTEDFLMN
 +CC/LOpUcmL/C8Y3Hq0iR0WaDbhIl1ZEPIMeBJ93HBKt7tyO
X-Google-Smtp-Source: APXvYqzwVnbJyWTrsnZTfwZVM5h6jHCkq8tF6EgQS162xCzXf5av2VzkdvIN48wnnIVZlx4eazsvtPT0uu9WII6OjQ+Lz9F2XRhs
MIME-Version: 1.0
X-Received: by 2002:a6b:bb45:: with SMTP id l66mr9650116iof.73.1580493493944; 
 Fri, 31 Jan 2020 09:58:13 -0800 (PST)
Date: Fri, 31 Jan 2020 09:58:13 -0800
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000004701a9059d7351dd@google.com>
Subject: KMSAN: uninit-value in batadv_bla_tx
From: syzbot <syzbot+37bad4f9cb2033876f32@syzkaller.appspotmail.com>
To: a@unstable.cc, b.a.t.m.a.n@lists.open-mesh.org, davem@davemloft.net, 
 glider@google.com, linux-kernel@vger.kernel.org, mareklindner@neomailbox.ch, 
 netdev@vger.kernel.org, sven@narfation.org, sw@simonwunderlich.de, 
 syzkaller-bugs@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1580493497;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type;
 bh=/wqIRm40rmIFtC63KFlb4tl+GMj3ukWWtsELOOrTj18=;
 b=KXj7zMPr0OstPnj+KBuVowx0O45m4uS9+hU7uFRbFAlV33QPPdSc71EqHjNxTBjNK/Nliv
 6bVWZaeyRJrIlfNYboDjC4pAoTpcgoP5RVyvrzo49b0MuN5RjMTTatyQC0RiThlB3Hgw0w
 Rl7KXPu1UvcuUGiXIIBmhWVGJLf37D4=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1580493497; a=rsa-sha256; cv=none;
 b=D3JdQS3bRGhoJzjqRETGiKvdz4pwZg6EDzSc53pItgcrBylXQatljGQTUKSSfGxWqhL1RL
 0oBBRmeVnjyNxOzPc6Kk23Yb7BICDE9kRZ3KwHRG2Owbg8xslWKdBVwYE2e6rDkzJxV8Pk
 VEyDbdKoiOxPrWdVPAuP/if6LqzONys=
ARC-Authentication-Results: i=1; open-mesh.org; dkim=none;
 spf=pass (open-mesh.org: domain of
 3tWo0XgkbAFQEKL6w770DwBB4z.2AA270GE0DyA9F09F.yA8@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
 designates 209.85.166.200 as permitted sender)
 smtp.mailfrom=3tWo0XgkbAFQEKL6w770DwBB4z.2AA270GE0DyA9F09F.yA8@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
X-Mailman-Approved-At: Fri, 31 Jan 2020 20:25:51 +0100
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
console output: https://syzkaller.appspot.com/x/log.txt?x=10b1da4ee00000
kernel config:  https://syzkaller.appspot.com/x/.config?x=e10654781bc1f11c
dashboard link: https://syzkaller.appspot.com/bug?extid=37bad4f9cb2033876f32
compiler:       clang version 10.0.0 (https://github.com/llvm/llvm-project/ c2443155a0fb245c8f17f2c1c72b6ea391e86e81)
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=102be0a1e00000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=123105a5e00000

IMPORTANT: if you fix the bug, please add the following tag to the commit:
Reported-by: syzbot+37bad4f9cb2033876f32@syzkaller.appspotmail.com

=====================================================
BUG: KMSAN: uninit-value in batadv_bla_tx+0x2675/0x3730 net/batman-adv/bridge_loop_avoidance.c:1960
CPU: 0 PID: 9 Comm: ksoftirqd/0 Not tainted 5.5.0-rc5-syzkaller #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 01/01/2011
Call Trace:
 __dump_stack lib/dump_stack.c:77 [inline]
 dump_stack+0x1c9/0x220 lib/dump_stack.c:118
 kmsan_report+0xf7/0x1e0 mm/kmsan/kmsan_report.c:118
 __msan_warning+0x58/0xa0 mm/kmsan/kmsan_instr.c:215
 batadv_bla_tx+0x2675/0x3730 net/batman-adv/bridge_loop_avoidance.c:1960
 batadv_interface_tx+0x67c/0x2450 net/batman-adv/soft-interface.c:239
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
 __napi_alloc_skb+0x193/0xa60 net/core/skbuff.c:519
 napi_alloc_skb include/linux/skbuff.h:2825 [inline]
 page_to_skb+0x19f/0x1100 drivers/net/virtio_net.c:384
 receive_mergeable drivers/net/virtio_net.c:924 [inline]
 receive_buf+0xe57/0x8ac0 drivers/net/virtio_net.c:1033
 virtnet_receive drivers/net/virtio_net.c:1323 [inline]
 virtnet_poll+0x64b/0x19f0 drivers/net/virtio_net.c:1428
 napi_poll net/core/dev.c:6532 [inline]
 net_rx_action+0x786/0x1ab0 net/core/dev.c:6600
 __do_softirq+0x311/0x83d kernel/softirq.c:293
=====================================================


---
This bug is generated by a bot. It may contain errors.
See https://goo.gl/tpsmEJ for more information about syzbot.
syzbot engineers can be reached at syzkaller@googlegroups.com.

syzbot will keep track of this bug report. See:
https://goo.gl/tpsmEJ#status for how to communicate with syzbot.
syzbot can test patches for this bug, for details see:
https://goo.gl/tpsmEJ#testing-patches
