Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 3111D633670
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 22 Nov 2022 08:57:42 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id C69D680E81;
	Tue, 22 Nov 2022 08:57:40 +0100 (CET)
Received: from mail-io1-f72.google.com (mail-io1-f72.google.com [209.85.166.72])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 11DCA80220
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 22 Nov 2022 08:57:38 +0100 (CET)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1669103858;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to; bh=bc8RrsqreLFi7HYFtgQkTdL3TrNOh9evIgWdfmzeQJw=;
	b=Q4O31RArsOPsPOU0hNzzYM7P//1sAH/uNji+qGBBPX20jhEiN68hWuZdooEs+4aBGvvhTG
	CL3jRPkAAWyTSt5tPOY1hO8G4gfPI6iA56utRwbHHxAKi9KaAkchKdqNdhFA9OmNPuu2XW
	4s5tWy7B0jHPZTYd7fVB4dKygSCar3g=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of 38IB8YwkbAAcz56rhsslyhwwpk.nvvnsl1zlyjvu0lu0.jvt@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com designates 209.85.166.72 as permitted sender) smtp.mailfrom=38IB8YwkbAAcz56rhsslyhwwpk.nvvnsl1zlyjvu0lu0.jvt@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com;
	dmarc=fail reason="SPF not aligned (relaxed), No valid DKIM" header.from=appspotmail.com (policy=none)
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1669103858; a=rsa-sha256;
	cv=none;
	b=DZEwmhQDhcA/6OL/BSsJEB/1FkN8vHp5hg5sw83CI/VxGHTTCOu2IHEyw4ACKf9QDUrV/R
	NtKdRHiexChLBH5JSk4TjwYXpPhq+jkkm8o/iiabu2XYPjGwB6IsKVN3JQ2h42EYkUoka+
	2WsnD29WHE+/QJWcc488EyEQaowVumA=
Received: by mail-io1-f72.google.com with SMTP id z139-20020a6bc991000000b006dac0d359edso6624903iof.2
        for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 21 Nov 2022 23:57:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:from:subject:message-id:in-reply-to:date:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bc8RrsqreLFi7HYFtgQkTdL3TrNOh9evIgWdfmzeQJw=;
        b=3L7itksvEuU5X/6/5vIlqBi2mR2498K3NGmj9Mh2xIyp5iml054JxI3ommH2IF/Nhu
         4MRgTIknYP66buqS98D/fD7Y67mjHfCoSZX4d2M63DlkkOJjTv5fNGc+eywIAQct8iX0
         Jqje18DvXlAqg22xidqgB0nVxwUGeC7btlkfFx/C0aeh7LjJ+2Z48S33+1zJH5vHu6PX
         1pTIgwdYVQI9qlpsaPL7wg+xvN2jbCHagcDgXTrOkFAqy6Y/sFlOcExD4dnKCTaoOpCM
         FomFgNEKS9pJYN7IUS+Oa+wAvTNUjCz0hWmOiqbBvJ5IG16e4O2cfqY0c+yYiTEoCTw1
         3Ezw==
X-Gm-Message-State: ANoB5pnQCwlyvF0KFW4wKYCCX6fzps3frltGXfrxrl4slIrBjTlQzxl6
	hB53S/QpaRpzmmrlDqyMS0FUhH19Wl64rt9yK1HzAVWypLLa
X-Google-Smtp-Source: AA0mqf718VO4ONghTLkTuhGLusUX0QQ9d+60ngsXijMXAQvGYJ/YErkU9mcLtkcRZDbW4k3SOLkrwRrGIKkwoFaJ0uw3Fg+EWRKj
MIME-Version: 1.0
X-Received: by 2002:a5e:8806:0:b0:6d2:4c85:c7b2 with SMTP id
 l6-20020a5e8806000000b006d24c85c7b2mr1178024ioj.32.1669103856657; Mon, 21 Nov
 2022 23:57:36 -0800 (PST)
Date: Mon, 21 Nov 2022 23:57:36 -0800
In-Reply-To: <000000000000c1e64305ed9dc5e8@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000782c8605ee0a8612@google.com>
Subject: Re: [syzbot] BUG: MAX_LOCKDEP_ENTRIES too low! (3)
From: syzbot <syzbot+b04c9ffbbd2f303d00d9@syzkaller.appspotmail.com>
To: a@unstable.cc, b.a.t.m.a.n@lists.open-mesh.org, davem@davemloft.net,
	edumazet@google.com, jhs@mojatatu.com, jiri@resnulli.us, kuba@kernel.org,
	linux-kernel@vger.kernel.org, mareklindner@neomailbox.ch,
	netdev@vger.kernel.org, pabeni@redhat.com, sven@narfation.org,
	sw@simonwunderlich.de, syzkaller-bugs@googlegroups.com,
	xiyou.wangcong@gmail.com
Content-Type: text/plain; charset="UTF-8"
Message-ID-Hash: UBAZAUJMO3F2PKLZW7WZPOVKLAFFMVAG
X-Message-ID-Hash: UBAZAUJMO3F2PKLZW7WZPOVKLAFFMVAG
X-MailFrom: 38IB8YwkbAAcz56rhsslyhwwpk.nvvnsl1zlyjvu0lu0.jvt@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/UBAZAUJMO3F2PKLZW7WZPOVKLAFFMVAG/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

syzbot has found a reproducer for the following issue on:

HEAD commit:    9ab000d9ac54 Merge branch 'nfc-leaks'
git tree:       net
console+strace: https://syzkaller.appspot.com/x/log.txt?x=178f3db5880000
kernel config:  https://syzkaller.appspot.com/x/.config?x=6f4e5e9899396248
dashboard link: https://syzkaller.appspot.com/bug?extid=b04c9ffbbd2f303d00d9
compiler:       gcc (Debian 10.2.1-6) 10.2.1 20210110, GNU ld (GNU Binutils for Debian) 2.35.2
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=15051edd880000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=15b9d365880000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/0db12aff8b37/disk-9ab000d9.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/62dc4dacf73e/vmlinux-9ab000d9.xz
kernel image: https://storage.googleapis.com/syzbot-assets/0cc1ecdd9ab6/bzImage-9ab000d9.xz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+b04c9ffbbd2f303d00d9@syzkaller.appspotmail.com

8021q: adding VLAN 0 to HW filter on device batadv968
BUG: MAX_LOCKDEP_ENTRIES too low!
turning off the locking correctness validator.
CPU: 1 PID: 5813 Comm: syz-executor248 Not tainted 6.1.0-rc5-syzkaller-00128-g9ab000d9ac54 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 10/26/2022
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:88 [inline]
 dump_stack_lvl+0xd1/0x138 lib/dump_stack.c:106
 alloc_list_entry.cold+0x11/0x18 kernel/locking/lockdep.c:1402
 add_lock_to_list kernel/locking/lockdep.c:1423 [inline]
 check_prev_add kernel/locking/lockdep.c:3167 [inline]
 check_prevs_add kernel/locking/lockdep.c:3216 [inline]
 validate_chain kernel/locking/lockdep.c:3831 [inline]
 __lock_acquire+0x3626/0x56d0 kernel/locking/lockdep.c:5055
 lock_acquire kernel/locking/lockdep.c:5668 [inline]
 lock_acquire+0x1e3/0x630 kernel/locking/lockdep.c:5633
 __raw_spin_lock_bh include/linux/spinlock_api_smp.h:126 [inline]
 _raw_spin_lock_bh+0x33/0x40 kernel/locking/spinlock.c:178
 spin_lock_bh include/linux/spinlock.h:355 [inline]
 batadv_tt_local_event+0x1f6/0x7e0 net/batman-adv/translation-table.c:482
 batadv_tt_local_add+0x638/0x1f50 net/batman-adv/translation-table.c:758
 batadv_softif_create_vlan+0x2ed/0x530 net/batman-adv/soft-interface.c:586
 batadv_interface_add_vid+0xd7/0x110 net/batman-adv/soft-interface.c:646
 vlan_add_rx_filter_info+0x149/0x1d0 net/8021q/vlan_core.c:211
 __vlan_vid_add net/8021q/vlan_core.c:306 [inline]
 vlan_vid_add+0x3f6/0x7f0 net/8021q/vlan_core.c:336
 vlan_device_event.cold+0x28/0x2d net/8021q/vlan.c:385
 notifier_call_chain+0xb5/0x200 kernel/notifier.c:87
 call_netdevice_notifiers_info+0xb5/0x130 net/core/dev.c:1945
 call_netdevice_notifiers_extack net/core/dev.c:1983 [inline]
 call_netdevice_notifiers net/core/dev.c:1997 [inline]
 dev_open net/core/dev.c:1473 [inline]
 dev_open+0x136/0x150 net/core/dev.c:1461
 team_port_add drivers/net/team/team.c:1215 [inline]
 team_add_slave+0xa03/0x1b90 drivers/net/team/team.c:1984
 do_set_master+0x1c8/0x220 net/core/rtnetlink.c:2578
 rtnl_newlink_create net/core/rtnetlink.c:3381 [inline]
 __rtnl_newlink+0x13ac/0x17e0 net/core/rtnetlink.c:3581
 rtnl_newlink+0x68/0xa0 net/core/rtnetlink.c:3594
 rtnetlink_rcv_msg+0x43e/0xca0 net/core/rtnetlink.c:6091
 netlink_rcv_skb+0x157/0x430 net/netlink/af_netlink.c:2540
 netlink_unicast_kernel net/netlink/af_netlink.c:1319 [inline]
 netlink_unicast+0x547/0x7f0 net/netlink/af_netlink.c:1345
 netlink_sendmsg+0x91b/0xe10 net/netlink/af_netlink.c:1921
 sock_sendmsg_nosec net/socket.c:714 [inline]
 sock_sendmsg+0xd3/0x120 net/socket.c:734
 ____sys_sendmsg+0x712/0x8c0 net/socket.c:2482
 ___sys_sendmsg+0x110/0x1b0 net/socket.c:2536
 __sys_sendmsg+0xf7/0x1c0 net/socket.c:2565
 do_syscall_x64 arch/x86/entry/common.c:50 [inline]
 do_syscall_64+0x39/0xb0 arch/x86/entry/common.c:80
 entry_SYSCALL_64_after_hwframe+0x63/0xcd
RIP: 0033:0x7f2d5511cab9
Code: 28 00 00 00 75 05 48 83 c4 28 c3 e8 e1 14 00 00 90 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 c0 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007ffddb541428 EFLAGS: 00000246 ORIG_RAX: 000000000000002e
RAX: ffffffffffffffda RBX: 000000000003d335 RCX: 00007f2d5511cab9
RDX: 0000000000000000 RSI: 0000000020000300 RDI: 0000000000000004
RBP: 0000000000000000 R08: 00007ffddb5415c8 R09: 00007ffddb5415c8
R10: 00007ffddb5415c8 R11: 0000000000000246 R12: 00007ffddb54143c
R13: 431bde82d7b634db R14: 0000000000000000 R15: 0000000000000000
 </TASK>
team968: Port device batadv968 added
