Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DE1C21F747
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 14 Jul 2020 18:27:26 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id E9BC7806F2;
	Tue, 14 Jul 2020 18:27:24 +0200 (CEST)
Received: from mail-io1-f70.google.com (mail-io1-f70.google.com [209.85.166.70])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 647F9801AB
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 14 Jul 2020 18:27:20 +0200 (CEST)
Received: by mail-io1-f70.google.com with SMTP id k10so10723356ioh.22
        for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 14 Jul 2020 09:27:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
        bh=dstuODflYqtTFdHo+dQOhggl9goZdZNOBX1EB0MG4zo=;
        b=YVBcEaEuvPhY2rhWmpC8e/+ri8haOEBO6JQp23Av3DyQrJzqPb4mByi05b6JIjFDzr
         AxyDewQb4OnlnZIBSseSJ0g/RX1qLtRCXG3J6pKbbMmEDZMaht5OqVo4WsJHcaTNQewR
         xU9RpMdbUUPAtqlyhZuFaN7DmtOg+e3d5HDXzfp5q+gfJBs0CoJqke8urxewOKCFNy/4
         j4zi+8aGueZltD1zBCbA618XI+m9cD1JUWNv+w/Vyqu5uLHSJ9DG4kdagtzbswC/uIcB
         JuDtqhn9h71U2Oav6/SyiGpPICrgF5eF/agCdD4+VTPFUBTEb2nYSlj+6gO2qA24+ux9
         bpDQ==
X-Gm-Message-State: AOAM530p/LMWZPMN6gWuhOQuMS9848BoZh9cPmoKzBVy6cfnPU2pRNZZ
	pA78ueE4c5s50Ylibkrq/YJKzMQEt49YhgL8Sb9HWoHL6buF
X-Google-Smtp-Source: ABdhPJys5dUu3H+Pdy9gh29PNlGaMJv4rZM79Lpm6uhoiwhdQ7kYMr+ucdAkbvMgmvwvfa0jOydNz2B26Qil20fWpZx2801XLaGo
MIME-Version: 1.0
X-Received: by 2002:a6b:3985:: with SMTP id g127mr5559995ioa.107.1594744039070;
 Tue, 14 Jul 2020 09:27:19 -0700 (PDT)
Date: Tue, 14 Jul 2020 09:27:19 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000f4e3be05aa694729@google.com>
Subject: KMSAN: uninit-value in batadv_tt_hash_find
From: syzbot <syzbot+ab16e463b903f5a37036@syzkaller.appspotmail.com>
To: a@unstable.cc, b.a.t.m.a.n@lists.open-mesh.org, davem@davemloft.net,
	glider@google.com, kuba@kernel.org, linux-kernel@vger.kernel.org,
	mareklindner@neomailbox.ch, netdev@vger.kernel.org, sven@narfation.org,
	sw@simonwunderlich.de, syzkaller-bugs@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1594744040;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type;
	bh=dstuODflYqtTFdHo+dQOhggl9goZdZNOBX1EB0MG4zo=;
	b=moQHdxbkcIrKONEzkgau0xdBoWb+sp5y02fFJJ7z1gH8nr7nnVMbYoJXP8hiVmUV3VGnMV
	gq866fLhAjFQnK6NuFEb5H25pSdgpPt0bzGBvg7v9SIvSzHwoquh1gReYSJjKK9VHQhMa4
	rVXHbVNKg/ULKqUEWbuT6k4yULfGiF4=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1594744040; a=rsa-sha256;
	cv=none;
	b=whZR/6y/yQ1U3rNDC7pQfSJjEzwqWufP7cPxS+zlKvihtgJi7lJl/PenZxnSn4uciQUiVI
	5GzOfJ9OCpjMVR2oCdoSVaoPU+MhvsHw8fZzJ/qUZxyR7g+lIXrGnllJCcygzR3dEABmM6
	kBUIHuglU4VxkWea+v7XJU6QUMx5m+4=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of 359wNXwkbANYKQRC2DD6J2HHA5.8GG8D6MK6J4GFL6FL.4GE@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com designates 209.85.166.70 as permitted sender) smtp.mailfrom=359wNXwkbANYKQRC2DD6J2HHA5.8GG8D6MK6J4GFL6FL.4GE@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
Message-ID-Hash: 74N2ZYVNYKOGYSNJBWYXYEIHN5CIN2KW
X-Message-ID-Hash: 74N2ZYVNYKOGYSNJBWYXYEIHN5CIN2KW
X-MailFrom: 359wNXwkbANYKQRC2DD6J2HHA5.8GG8D6MK6J4GFL6FL.4GE@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/74N2ZYVNYKOGYSNJBWYXYEIHN5CIN2KW/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Hello,

syzbot found the following crash on:

HEAD commit:    f0d5ec90 kmsan: apply __no_sanitize_memory to dotraplinkag..
git tree:       https://github.com/google/kmsan.git master
console output: https://syzkaller.appspot.com/x/log.txt?x=10c0883b100000
kernel config:  https://syzkaller.appspot.com/x/.config?x=86e4f8af239686c6
dashboard link: https://syzkaller.appspot.com/bug?extid=ab16e463b903f5a37036
compiler:       clang version 10.0.0 (https://github.com/llvm/llvm-project/ c2443155a0fb245c8f17f2c1c72b6ea391e86e81)
userspace arch: i386

Unfortunately, I don't have any reproducer for this crash yet.

IMPORTANT: if you fix the bug, please add the following tag to the commit:
Reported-by: syzbot+ab16e463b903f5a37036@syzkaller.appspotmail.com

=====================================================
BUG: KMSAN: uninit-value in __read_once_size include/linux/compiler.h:206 [inline]
BUG: KMSAN: uninit-value in batadv_tt_hash_find+0x38a/0x810 net/batman-adv/translation-table.c:144
CPU: 0 PID: 23320 Comm: syz-executor.5 Not tainted 5.7.0-rc4-syzkaller #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 01/01/2011
Call Trace:
 __dump_stack lib/dump_stack.c:77 [inline]
 dump_stack+0x1c9/0x220 lib/dump_stack.c:118
 kmsan_report+0xf7/0x1e0 mm/kmsan/kmsan_report.c:121
 __msan_warning+0x58/0xa0 mm/kmsan/kmsan_instr.c:215
 __read_once_size include/linux/compiler.h:206 [inline]
 batadv_tt_hash_find+0x38a/0x810 net/batman-adv/translation-table.c:144
 batadv_tt_global_hash_find net/batman-adv/translation-table.c:203 [inline]
 batadv_transtable_search+0x292/0xa00 net/batman-adv/translation-table.c:2618
 batadv_send_skb_via_tt_generic+0x181/0x290 net/batman-adv/send.c:423
 batadv_send_skb_via_tt net/batman-adv/send.h:82 [inline]
 batadv_interface_tx+0x1b3d/0x2450 net/batman-adv/soft-interface.c:378
 __netdev_start_xmit include/linux/netdevice.h:4533 [inline]
 netdev_start_xmit include/linux/netdevice.h:4547 [inline]
 xmit_one net/core/dev.c:3477 [inline]
 dev_hard_start_xmit+0x531/0xab0 net/core/dev.c:3493
 __dev_queue_xmit+0x2f8d/0x3b20 net/core/dev.c:4052
 dev_queue_xmit+0x4b/0x60 net/core/dev.c:4085
 neigh_hh_output include/net/neighbour.h:499 [inline]
 neigh_output include/net/neighbour.h:508 [inline]
 ip_finish_output2+0x20fd/0x2610 net/ipv4/ip_output.c:228
 ip_do_fragment+0x2c98/0x3570 net/ipv4/ip_output.c:849
 ip_fragment+0x242/0x400 net/ipv4/ip_output.c:585
 __ip_finish_output+0xd34/0xd80 net/ipv4/ip_output.c:304
 ip_finish_output+0x166/0x410 net/ipv4/ip_output.c:316
 NF_HOOK_COND include/linux/netfilter.h:296 [inline]
 ip_mc_output+0xfbf/0x1090 net/ipv4/ip_output.c:415
 dst_output include/net/dst.h:435 [inline]
 ip_local_out net/ipv4/ip_output.c:125 [inline]
 ip_send_skb+0x179/0x360 net/ipv4/ip_output.c:1560
 udp_send_skb+0x1046/0x18b0 net/ipv4/udp.c:891
 udp_sendmsg+0x3bb5/0x4100 net/ipv4/udp.c:1178
 inet_sendmsg+0x276/0x2e0 net/ipv4/af_inet.c:807
 sock_sendmsg_nosec net/socket.c:652 [inline]
 sock_sendmsg net/socket.c:672 [inline]
 ____sys_sendmsg+0x1056/0x1350 net/socket.c:2362
 ___sys_sendmsg net/socket.c:2416 [inline]
 __sys_sendmmsg+0x863/0xd60 net/socket.c:2499
 __compat_sys_sendmmsg net/compat.c:672 [inline]
 __do_compat_sys_sendmmsg net/compat.c:679 [inline]
 __se_compat_sys_sendmmsg+0xcd/0xf0 net/compat.c:676
 __ia32_compat_sys_sendmmsg+0x56/0x70 net/compat.c:676
 do_syscall_32_irqs_on arch/x86/entry/common.c:339 [inline]
 do_fast_syscall_32+0x3bf/0x6d0 arch/x86/entry/common.c:398
 entry_SYSENTER_compat+0x68/0x77 arch/x86/entry/entry_64_compat.S:139
RIP: 0023:0xf7f3add9
Code: 90 e8 0b 00 00 00 f3 90 0f ae e8 eb f9 8d 74 26 00 89 3c 24 c3 90 90 90 90 90 90 90 90 90 90 90 90 51 52 55 89 e5 0f 34 cd 80 <5d> 5a 59 c3 90 90 90 90 eb 0d 90 90 90 90 90 90 90 90 90 90 90 90
RSP: 002b:00000000f5d140cc EFLAGS: 00000296 ORIG_RAX: 0000000000000159
RAX: ffffffffffffffda RBX: 0000000000000003 RCX: 0000000020007f80
RDX: 0000000000000001 RSI: 0000000000000000 RDI: 0000000000000000
RBP: 0000000000000000 R08: 0000000000000000 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000000 R12: 0000000000000000
R13: 0000000000000000 R14: 0000000000000000 R15: 0000000000000000

Uninit was stored to memory at:
 kmsan_save_stack_with_flags mm/kmsan/kmsan.c:144 [inline]
 kmsan_internal_chain_origin+0xad/0x130 mm/kmsan/kmsan.c:310
 __msan_chain_origin+0x50/0x90 mm/kmsan/kmsan_instr.c:165
 ether_addr_copy include/linux/etherdevice.h:279 [inline]
 batadv_tt_hash_find+0x333/0x810 net/batman-adv/translation-table.c:137
 batadv_tt_global_hash_find net/batman-adv/translation-table.c:203 [inline]
 batadv_transtable_search+0x292/0xa00 net/batman-adv/translation-table.c:2618
 batadv_send_skb_via_tt_generic+0x181/0x290 net/batman-adv/send.c:423
 batadv_send_skb_via_tt net/batman-adv/send.h:82 [inline]
 batadv_interface_tx+0x1b3d/0x2450 net/batman-adv/soft-interface.c:378
 __netdev_start_xmit include/linux/netdevice.h:4533 [inline]
 netdev_start_xmit include/linux/netdevice.h:4547 [inline]
 xmit_one net/core/dev.c:3477 [inline]
 dev_hard_start_xmit+0x531/0xab0 net/core/dev.c:3493
 __dev_queue_xmit+0x2f8d/0x3b20 net/core/dev.c:4052
 dev_queue_xmit+0x4b/0x60 net/core/dev.c:4085
 neigh_hh_output include/net/neighbour.h:499 [inline]
 neigh_output include/net/neighbour.h:508 [inline]
 ip_finish_output2+0x20fd/0x2610 net/ipv4/ip_output.c:228
 ip_do_fragment+0x2c98/0x3570 net/ipv4/ip_output.c:849
 ip_fragment+0x242/0x400 net/ipv4/ip_output.c:585
 __ip_finish_output+0xd34/0xd80 net/ipv4/ip_output.c:304
 ip_finish_output+0x166/0x410 net/ipv4/ip_output.c:316
 NF_HOOK_COND include/linux/netfilter.h:296 [inline]
 ip_mc_output+0xfbf/0x1090 net/ipv4/ip_output.c:415
 dst_output include/net/dst.h:435 [inline]
 ip_local_out net/ipv4/ip_output.c:125 [inline]
 ip_send_skb+0x179/0x360 net/ipv4/ip_output.c:1560
 udp_send_skb+0x1046/0x18b0 net/ipv4/udp.c:891
 udp_sendmsg+0x3bb5/0x4100 net/ipv4/udp.c:1178
 inet_sendmsg+0x276/0x2e0 net/ipv4/af_inet.c:807
 sock_sendmsg_nosec net/socket.c:652 [inline]
 sock_sendmsg net/socket.c:672 [inline]
 ____sys_sendmsg+0x1056/0x1350 net/socket.c:2362
 ___sys_sendmsg net/socket.c:2416 [inline]
 __sys_sendmmsg+0x863/0xd60 net/socket.c:2499
 __compat_sys_sendmmsg net/compat.c:672 [inline]
 __do_compat_sys_sendmmsg net/compat.c:679 [inline]
 __se_compat_sys_sendmmsg+0xcd/0xf0 net/compat.c:676
 __ia32_compat_sys_sendmmsg+0x56/0x70 net/compat.c:676
 do_syscall_32_irqs_on arch/x86/entry/common.c:339 [inline]
 do_fast_syscall_32+0x3bf/0x6d0 arch/x86/entry/common.c:398
 entry_SYSENTER_compat+0x68/0x77 arch/x86/entry/entry_64_compat.S:139

Local variable ----chaddr@batadv_interface_tx created at:
 batadv_interface_tx+0x66/0x2450 net/batman-adv/soft-interface.c:191
 batadv_interface_tx+0x66/0x2450 net/batman-adv/soft-interface.c:191
=====================================================


---
This bug is generated by a bot. It may contain errors.
See https://goo.gl/tpsmEJ for more information about syzbot.
syzbot engineers can be reached at syzkaller@googlegroups.com.

syzbot will keep track of this bug report. See:
https://goo.gl/tpsmEJ#status for how to communicate with syzbot.
