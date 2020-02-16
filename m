Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id C76D81603FD
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 16 Feb 2020 13:20:28 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id C0E75803B1;
	Sun, 16 Feb 2020 13:20:27 +0100 (CET)
Received: from mail-il1-f199.google.com (mail-il1-f199.google.com
 [209.85.166.199])
 by diktynna.open-mesh.org (Postfix) with ESMTPS id E1D4C801CB
 for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 16 Feb 2020 11:49:17 +0100 (CET)
Received: by mail-il1-f199.google.com with SMTP id u14so11864071ilq.15
 for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 16 Feb 2020 02:49:17 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
 bh=2aqq2XF7vHvzjgpHSz+9+O0Q0trixBJldu6u6JkJB9U=;
 b=YPVNS4MvmCYubK8oORs3XvsN+sF6BqgNG6mtBPLmiEdIMkw006B1OIsssZi+q99Zn8
 zG3ccLPL42ldWXAboi2gyZPdCyNe5bAcdd/u+/mwJjzuUyOIx2MaPK76ydYQMuz5U0FZ
 beO/BRg4xXhRCcKVEIPnD98WklsbCWx3nBJKWK5y9ED2sn2Uvl/r8AKK36zilrw3oUUG
 P4AlnNDdm0PKSgc9PToAwJ6/Ydn3/Rt5sWKus7q3LLUZlHbZ6REHUmWFZ+92OjZA9D7K
 lzNb1VYrIRB5cjdevYIeEYm+A6myI7BeDdgiev84kR49K7O19BpqharP+o3CqCMeilHA
 cxXg==
X-Gm-Message-State: APjAAAWgguCqtkTzHTFgI0ooXXdO15BM9YO4+FytNLMtpkcxXq+nyNld
 CebIvZcA5czBv9T3HO9r5P9xkg/5dTM4HscJiQNqpbSNC4jC
X-Google-Smtp-Source: APXvYqwQ4/8IRNI8rEMC7zWuoZsEtYT7tQT0LiQd27UwhrJAfS7WmkDDfVns5x/fSmBpvfZPVeVCzs9/NgksJjTSCs6q6ro39roT
MIME-Version: 1.0
X-Received: by 2002:a02:9f06:: with SMTP id z6mr8467362jal.2.1581850156460;
 Sun, 16 Feb 2020 02:49:16 -0800 (PST)
Date: Sun, 16 Feb 2020 02:49:16 -0800
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000a9f57e059eaf30a6@google.com>
Subject: general protection fault in batadv_iv_ogm_schedule_buff
From: syzbot <syzbot+a98f2016f40b9cd3818a@syzkaller.appspotmail.com>
To: a@unstable.cc, b.a.t.m.a.n@lists.open-mesh.org, davem@davemloft.net, 
 kuba@kernel.org, linux-kernel@vger.kernel.org, mareklindner@neomailbox.ch, 
 netdev@vger.kernel.org, sven@narfation.org, sw@simonwunderlich.de, 
 syzkaller-bugs@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1581850158;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type;
 bh=2aqq2XF7vHvzjgpHSz+9+O0Q0trixBJldu6u6JkJB9U=;
 b=mPwh7FOB5kdiLy7eaHceXqq8ie9Cv0+AVrrOqLIFYbj8Tcj0Ut5WWsy38qWOhQ9qVvwfp4
 RlcP3jELzf1Gy+mCrD0rJ4o9BL4K9bTM3jqX/1E1qponUM1/RDs9m64ezyInQJ6YQtqwjP
 NMOjQgb8D4Rdg3gUXAXBwkFVLpQSJbo=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1581850158; a=rsa-sha256; cv=none;
 b=cYMaXpIRDvPuKAfRIlW2auYmUf3xrhMRaVBr73hadksB3mF5aLS0yuDGDy00du3UzvJb2/
 nmmrbffPNOcnjiUEd8ylJhRqNvR9l6hTzUJ/n1eauA07c7OgP5ccO/GTGrqHFczdJ/IXgR
 1TKjCiHRUmz9nUtDS5219l9vsT6T+RI=
ARC-Authentication-Results: i=1; diktynna.open-mesh.org; dkim=none;
 spf=pass (diktynna.open-mesh.org: domain of
 3LB5JXgkbAIU178tjuun0jyyrm.pxxpun31n0lxw2nw2.lxv@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
 designates 209.85.166.199 as permitted sender)
 smtp.mailfrom=3LB5JXgkbAIU178tjuun0jyyrm.pxxpun31n0lxw2nw2.lxv@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
X-Mailman-Approved-At: Sun, 16 Feb 2020 13:20:25 +0100
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

HEAD commit:    2019fc96 Merge git://git.kernel.org/pub/scm/linux/kernel/g..
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=16ebaae6e00000
kernel config:  https://syzkaller.appspot.com/x/.config?x=735296e4dd620b10
dashboard link: https://syzkaller.appspot.com/bug?extid=a98f2016f40b9cd3818a
compiler:       gcc (GCC) 9.0.0 20181231 (experimental)

Unfortunately, I don't have any reproducer for this crash yet.

IMPORTANT: if you fix the bug, please add the following tag to the commit:
Reported-by: syzbot+a98f2016f40b9cd3818a@syzkaller.appspotmail.com

general protection fault, probably for non-canonical address 0xdffffc0000000002: 0000 [#1] PREEMPT SMP KASAN
KASAN: null-ptr-deref in range [0x0000000000000010-0x0000000000000017]
CPU: 0 PID: 21 Comm: kworker/u4:1 Not tainted 5.6.0-rc1-syzkaller #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 01/01/2011
Workqueue: bat_events batadv_iv_send_outstanding_bat_ogm_packet
RIP: 0010:batadv_iv_ogm_schedule_buff+0x3f4/0x12d0 net/batman-adv/bat_iv_ogm.c:814
Code: c1 ea 03 80 3c 02 00 0f 85 e5 0d 00 00 4d 8b a7 88 00 00 00 48 b8 00 00 00 00 00 fc ff df 49 8d 7c 24 16 48 89 fa 48 c1 ea 03 <0f> b6 14 02 48 89 f8 83 e0 07 83 c0 01 38 d0 7c 08 84 d2 0f 85 b8
RSP: 0018:ffffc90000dd7bb8 EFLAGS: 00010203
RAX: dffffc0000000000 RBX: 0000000000000000 RCX: 1ffff1101537d9c1
RDX: 0000000000000002 RSI: ffffffff87cc2c28 RDI: 0000000000000016
RBP: ffffc90000dd7ca8 R08: 0000000000000004 R09: ffff8880a9bece10
R10: fffffbfff154b460 R11: ffffffff8aa5a307 R12: 0000000000000000
R13: 0000000000000001 R14: ffffc90000dd7c40 R15: ffff8880a9aa0800
FS:  0000000000000000(0000) GS:ffff8880ae800000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: ffffffffff600400 CR3: 000000008f5a3000 CR4: 00000000001406f0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
Call Trace:
 batadv_iv_ogm_schedule net/batman-adv/bat_iv_ogm.c:865 [inline]
 batadv_iv_ogm_schedule net/batman-adv/bat_iv_ogm.c:858 [inline]
 batadv_iv_send_outstanding_bat_ogm_packet+0x5da/0x7c0 net/batman-adv/bat_iv_ogm.c:1718
 process_one_work+0xa05/0x17a0 kernel/workqueue.c:2264
 worker_thread+0x98/0xe40 kernel/workqueue.c:2410
 kthread+0x361/0x430 kernel/kthread.c:255
 ret_from_fork+0x24/0x30 arch/x86/entry/entry_64.S:352
Modules linked in:
---[ end trace 101b07e3062bfd0c ]---
RIP: 0010:batadv_iv_ogm_schedule_buff+0x3f4/0x12d0 net/batman-adv/bat_iv_ogm.c:814
Code: c1 ea 03 80 3c 02 00 0f 85 e5 0d 00 00 4d 8b a7 88 00 00 00 48 b8 00 00 00 00 00 fc ff df 49 8d 7c 24 16 48 89 fa 48 c1 ea 03 <0f> b6 14 02 48 89 f8 83 e0 07 83 c0 01 38 d0 7c 08 84 d2 0f 85 b8
RSP: 0018:ffffc90000dd7bb8 EFLAGS: 00010203
RAX: dffffc0000000000 RBX: 0000000000000000 RCX: 1ffff1101537d9c1
RDX: 0000000000000002 RSI: ffffffff87cc2c28 RDI: 0000000000000016
RBP: ffffc90000dd7ca8 R08: 0000000000000004 R09: ffff8880a9bece10
R10: fffffbfff154b460 R11: ffffffff8aa5a307 R12: 0000000000000000
R13: 0000000000000001 R14: ffffc90000dd7c40 R15: ffff8880a9aa0800
FS:  0000000000000000(0000) GS:ffff8880ae800000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: ffffffffff600400 CR3: 000000009d9e7000 CR4: 00000000001406f0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400


---
This bug is generated by a bot. It may contain errors.
See https://goo.gl/tpsmEJ for more information about syzbot.
syzbot engineers can be reached at syzkaller@googlegroups.com.

syzbot will keep track of this bug report. See:
https://goo.gl/tpsmEJ#status for how to communicate with syzbot.
