Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id CBCF22F03A4
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat,  9 Jan 2021 21:57:25 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 6C31280873;
	Sat,  9 Jan 2021 21:57:24 +0100 (CET)
Received: from mail-il1-f200.google.com (mail-il1-f200.google.com [209.85.166.200])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 21484801CB
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sat,  9 Jan 2021 21:57:21 +0100 (CET)
Received: by mail-il1-f200.google.com with SMTP id z15so13581592ilb.3
        for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 09 Jan 2021 12:57:20 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
        bh=3TTiu2M3RHn4JcWH5ej08s7USChU5t3nyfHhSBosYAQ=;
        b=T3kc79VE0qXdApjtHdnIL+1CJvs60BLZbs8XayrvdK/NymfvZNwgQsD2HCGyP1Hm7P
         gHIvg6as2SRwKFEjBH3aELYPTFYvIoMom7BLATHd0YRgmRrDSvrI/TBD0JJI65lMV1VG
         dArTeusG/EmFzxdCnFcHpEAlBY+r0qFcMEqM5DK+QkjmiK/WuDyJpiY2S0z6NZqpahdz
         LARgAzcs8NF9zHEYT489FsREX2ovjei3xpreP58GMahiXq5IB2d4K1GXo7a/g47/K4VA
         lzt2xX+SgrclOxxEGYK3M3KDHci36+cHy34LXDTBZL8UYzZHhc7nmfe6zDiRQO3mleTO
         8oIQ==
X-Gm-Message-State: AOAM533c6toUT0HySgyvjZPh5w9+rn5GdjEKyS6WppM7WRirOMXPbiUP
	aGX79HXa+peX191/4O0ndJBL4caWKb3Nut2FCow1o7r4iXtQ
X-Google-Smtp-Source: ABdhPJyX3C5PwImyAsveNRBLPtx9Zfawm9AJWFt2P8oE5ukfFdBeoLh6aEFEo/O9Jd+1c3J6CRWnJyZEDQMgfRNpkWOR2Ztqv6Ax
MIME-Version: 1.0
X-Received: by 2002:a02:8790:: with SMTP id t16mr8947810jai.80.1610225839814;
 Sat, 09 Jan 2021 12:57:19 -0800 (PST)
Date: Sat, 09 Jan 2021 12:57:19 -0800
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <00000000000030bc3305b87debd4@google.com>
Subject: WARNING in rds_rdma_extra_size
From: syzbot <syzbot+1bd2b07f93745fa38425@syzkaller.appspotmail.com>
To: a@unstable.cc, akpm@linux-foundation.org, ast@kernel.org,
	b.a.t.m.a.n@lists.open-mesh.org, daniel@iogearbox.net, davem@davemloft.net,
	linux-kernel@vger.kernel.org, linux-mm@kvack.org, mareklindner@neomailbox.ch,
	mdroth@linux.vnet.ibm.com, netdev@vger.kernel.org, sw@simonwunderlich.de,
	syzkaller-bugs@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1610225841;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type;
	bh=3TTiu2M3RHn4JcWH5ej08s7USChU5t3nyfHhSBosYAQ=;
	b=nNxlft9FQGWmacNQQP/Rve/w+cakvFOL6QNIGQ93S8uxayCdYu0M/PxGyXz6wc9Ia3rIoK
	mSDGDQgZKm1rVxy+o+O7f0BQXyQU1XltljZ9kD3Kat8PyMfQNWGe3ww90zeUhqmIqIuD3d
	lTfOcCRWqlionFSXoIwWoZ5aoK3u2sw=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of 3rxj6XwkbAM4CIJ4u55yBu992x.08805yECyBw87Dy7D.w86@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com designates 209.85.166.200 as permitted sender) smtp.mailfrom=3rxj6XwkbAM4CIJ4u55yBu992x.08805yECyBw87Dy7D.w86@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1610225841; a=rsa-sha256;
	cv=none;
	b=lxG9tsgO0stZ+MxIfMnblCp6y4x5zvAlu+PI6NzU1iY47SqHXbwtDSoF/QNDvBRVBo1lXU
	aZEp28DDxL0UmMcenCt7rfIDimsmJEu9O+of/eLyNgpLUP8Iput8L/fJZ2wne3uhZlXGji
	Tkhj3nYYAfE8bIg2hJL5MLRGgzUySJI=
Message-ID-Hash: PMUFCLVOQA6YFIZXVNGEXHICGFI5WN3I
X-Message-ID-Hash: PMUFCLVOQA6YFIZXVNGEXHICGFI5WN3I
X-MailFrom: 3rxj6XwkbAM4CIJ4u55yBu992x.08805yECyBw87Dy7D.w86@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/PMUFCLVOQA6YFIZXVNGEXHICGFI5WN3I/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Hello,

syzbot found the following issue on:

HEAD commit:    6207214a Merge tag 'afs-fixes-04012021' of git://git.kerne..
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=146967c0d00000
kernel config:  https://syzkaller.appspot.com/x/.config?x=8aa30b9da402d224
dashboard link: https://syzkaller.appspot.com/bug?extid=1bd2b07f93745fa38425
compiler:       gcc (GCC) 10.1.0-syz 20200507
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=1351c11f500000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=1710cb50d00000

The issue was bisected to:

commit fdadd04931c2d7cd294dc5b2b342863f94be53a3
Author: Daniel Borkmann <daniel@iogearbox.net>
Date:   Tue Dec 11 11:14:12 2018 +0000

    bpf: fix bpf_jit_limit knob for PAGE_SIZE >= 64K

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=10056f70d00000
final oops:     https://syzkaller.appspot.com/x/report.txt?x=12056f70d00000
console output: https://syzkaller.appspot.com/x/log.txt?x=14056f70d00000

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+1bd2b07f93745fa38425@syzkaller.appspotmail.com
Fixes: fdadd04931c2 ("bpf: fix bpf_jit_limit knob for PAGE_SIZE >= 64K")

------------[ cut here ]------------
WARNING: CPU: 1 PID: 8462 at mm/page_alloc.c:4976 __alloc_pages_nodemask+0x5f8/0x730 mm/page_alloc.c:5011
Modules linked in:
CPU: 1 PID: 8462 Comm: syz-executor292 Not tainted 5.11.0-rc2-syzkaller #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 01/01/2011
RIP: 0010:__alloc_pages_nodemask+0x5f8/0x730 mm/page_alloc.c:4976
Code: 00 00 0c 00 0f 85 a7 00 00 00 8b 3c 24 4c 89 f2 44 89 e6 c6 44 24 70 00 48 89 6c 24 58 e8 d0 d7 ff ff 49 89 c5 e9 ea fc ff ff <0f> 0b e9 b5 fd ff ff 89 74 24 14 4c 89 4c 24 08 4c 89 74 24 18 e8
RSP: 0018:ffffc9000169f790 EFLAGS: 00010246
RAX: 0000000000000000 RBX: 1ffff920002d3ef6 RCX: 0000000000000000
RDX: 0000000000000000 RSI: dffffc0000000000 RDI: 0000000000040dc0
RBP: 0000000000040dc0 R08: 0000000000000000 R09: 0000000000000000
R10: ffffffff81b1f7f1 R11: 0000000000000000 R12: 0000000000000018
R13: 0000000000000018 R14: 0000000000000000 R15: 0000000ffffff1f0
FS:  0000000000f3c880(0000) GS:ffff8880b9f00000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00007f6b332916c0 CR3: 00000000133c3000 CR4: 0000000000350ee0
Call Trace:
 alloc_pages_current+0x18c/0x2a0 mm/mempolicy.c:2267
 alloc_pages include/linux/gfp.h:547 [inline]
 kmalloc_order+0x2e/0xb0 mm/slab_common.c:837
 kmalloc_order_trace+0x14/0x120 mm/slab_common.c:853
 kmalloc_array include/linux/slab.h:592 [inline]
 kcalloc include/linux/slab.h:621 [inline]
 rds_rdma_extra_size+0xb2/0x3b0 net/rds/rdma.c:568
 rds_rm_size net/rds/send.c:928 [inline]
 rds_sendmsg+0x20d7/0x3020 net/rds/send.c:1265
 sock_sendmsg_nosec net/socket.c:652 [inline]
 sock_sendmsg+0xcf/0x120 net/socket.c:672
 ____sys_sendmsg+0x6e8/0x810 net/socket.c:2345
 ___sys_sendmsg+0xf3/0x170 net/socket.c:2399
 __sys_sendmsg+0xe5/0x1b0 net/socket.c:2432
 do_syscall_64+0x2d/0x70 arch/x86/entry/common.c:46
 entry_SYSCALL_64_after_hwframe+0x44/0xa9
RIP: 0033:0x440359
Code: 18 89 d0 c3 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 00 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 0f 83 7b 13 fc ff c3 66 2e 0f 1f 84 00 00 00 00
RSP: 002b:00007ffe89376b68 EFLAGS: 00000246 ORIG_RAX: 000000000000002e
RAX: ffffffffffffffda RBX: 00000000004002c8 RCX: 0000000000440359
RDX: 0000000000000000 RSI: 0000000020001600 RDI: 0000000000000003
RBP: 00000000006ca018 R08: 00000000004002c8 R09: 00000000004002c8
R10: 0000000000000000 R11: 0000000000000246 R12: 0000000000401b60
R13: 0000000000401bf0 R14: 0000000000000000 R15: 0000000000000000


---
This report is generated by a bot. It may contain errors.
See https://goo.gl/tpsmEJ for more information about syzbot.
syzbot engineers can be reached at syzkaller@googlegroups.com.

syzbot will keep track of this issue. See:
https://goo.gl/tpsmEJ#status for how to communicate with syzbot.
For information about bisection process see: https://goo.gl/tpsmEJ#bisection
syzbot can test patches for this issue, for details see:
https://goo.gl/tpsmEJ#testing-patches
