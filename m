Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A79526429B
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 10 Sep 2020 11:43:28 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 451F9805B2;
	Thu, 10 Sep 2020 11:43:27 +0200 (CEST)
Received: from mail-il1-f207.google.com (mail-il1-f207.google.com [209.85.166.207])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id A89A8802C6
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 10 Sep 2020 11:43:23 +0200 (CEST)
Received: by mail-il1-f207.google.com with SMTP id l6so4070398ilm.14
        for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 10 Sep 2020 02:43:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
        bh=nU1Cfh/JcUj6ODLNVhA3Cjd25BwCeH0u3p5IbvUT7E8=;
        b=KjOGR30jJeZfvvjpnXZcfha+a+eN/Fl4IInUG2SjRtQlY5kgihnk/u671jrml+VZU1
         2I/Cmk6SiM5NIU3TJ012b1b55Yk7ml2+YivanbAG+LwKpkjy5NyXRgVZnvEM9sqSp2J4
         GO3XuZcmxIAOSf1dM1VwO7HfFkiiN0b4z2xDmClHW2KeBE4ET9gXKV+2uF4iTQCW7Aij
         zcptVrAiJ8CXml27DeMRtFLavb13SYf3oo8q85k+HoqV1kIz0Ju+5ZP9BS0jTENVagn+
         WGtFMqq6xCoE8AxnN0blMI4jOrNnyTRx0acV2TfD1GH1jk+Ujwy7yEO33K61jXOYh1bG
         QuUQ==
X-Gm-Message-State: AOAM532A1f4OMSrlFIonDxppzRof1KWU6gU1mKMrGGPbJkORQaQe68g1
	VeMDYsng+5xdgc5uCg4hkdZ0bNZMKbwB+vpx2Ju/z9U2Lck0
X-Google-Smtp-Source: ABdhPJy/5bVJwVvzHKZWSI6/ZA6wJi6L48BOhQU+od43M7GR+DbMyzE5X3qlC95205a9ffBLtV1AzU37sCGWDUklU5/5IwFC5HTy
MIME-Version: 1.0
X-Received: by 2002:a92:ce48:: with SMTP id a8mr7114720ilr.295.1599731002412;
 Thu, 10 Sep 2020 02:43:22 -0700 (PDT)
Date: Thu, 10 Sep 2020 02:43:22 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000229d5a05aef26677@google.com>
Subject: general protection fault in batadv_iv_ogm_schedule (2)
From: syzbot <syzbot+870c4745cc7a955e17e2@syzkaller.appspotmail.com>
To: a@unstable.cc, b.a.t.m.a.n@lists.open-mesh.org, davem@davemloft.net,
	kuba@kernel.org, linux-kernel@vger.kernel.org, mareklindner@neomailbox.ch,
	netdev@vger.kernel.org, sven@narfation.org, sw@simonwunderlich.de,
	syzkaller-bugs@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1599731003;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type;
	bh=nU1Cfh/JcUj6ODLNVhA3Cjd25BwCeH0u3p5IbvUT7E8=;
	b=I8JpqqdNbJSB97COpYHO/sD2ozKl6RmneTPVfMXp3c4YI6nueVLY1OrpXKGxjSqTYQzl3s
	8+FZ+5L3YmIGKcsQZbPH45S218Oru7HEd36k7nJT7rZX4LlUZULDHporZC2RoI6acvfepy
	eSw7zm/eKcn4xVBxzDv2BjXL9pVyjaY=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1599731003; a=rsa-sha256;
	cv=none;
	b=LT6s/rp9jvfugs44w7LEczPDxyxSotxVkNQKcfWJk/wWKccsXCslRcKlUlCzjxaFX4Q3t7
	G8VOZgoqrVDWirs0nkwQ/gGQUFiZEZzeX9m5VT7xjmCNwQ/ebzi1zUWmZrusjWhMS40JSE
	WjfwwvSMUTF1Y0tU/UhUGujx5opH06M=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of 3OvVZXwkbAI09FG1r22v8r66zu.x55x2vB9v8t54Av4A.t53@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com designates 209.85.166.207 as permitted sender) smtp.mailfrom=3OvVZXwkbAI09FG1r22v8r66zu.x55x2vB9v8t54Av4A.t53@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
Message-ID-Hash: JFEOUTPZP7GTO73PX7I47JJX2XX2EX4Y
X-Message-ID-Hash: JFEOUTPZP7GTO73PX7I47JJX2XX2EX4Y
X-MailFrom: 3OvVZXwkbAI09FG1r22v8r66zu.x55x2vB9v8t54Av4A.t53@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/JFEOUTPZP7GTO73PX7I47JJX2XX2EX4Y/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Hello,

syzbot found the following issue on:

HEAD commit:    34d4ddd3 Merge tag 'linux-kselftest-5.9-rc5' of git://git...
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=13db7cdd900000
kernel config:  https://syzkaller.appspot.com/x/.config?x=8f5c353182ed6199
dashboard link: https://syzkaller.appspot.com/bug?extid=870c4745cc7a955e17e2
compiler:       clang version 10.0.0 (https://github.com/llvm/llvm-project/ c2443155a0fb245c8f17f2c1c72b6ea391e86e81)

Unfortunately, I don't have any reproducer for this issue yet.

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+870c4745cc7a955e17e2@syzkaller.appspotmail.com

general protection fault, probably for non-canonical address 0xdffffc000000000e: 0000 [#1] PREEMPT SMP KASAN
KASAN: null-ptr-deref in range [0x0000000000000070-0x0000000000000077]
CPU: 1 PID: 6396 Comm: kworker/u4:8 Not tainted 5.9.0-rc4-syzkaller #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 01/01/2011
Workqueue: bat_events batadv_iv_send_outstanding_bat_ogm_packet
RIP: 0010:batadv_iv_ogm_schedule_buff net/batman-adv/bat_iv_ogm.c:843 [inline]
RIP: 0010:batadv_iv_ogm_schedule+0x925/0xf40 net/batman-adv/bat_iv_ogm.c:869
Code: 00 48 c1 e8 03 48 89 44 24 28 48 c7 c5 48 e7 3a 8c 0f 1f 40 00 49 8d 5f 70 48 89 d8 48 c1 e8 03 48 b9 00 00 00 00 00 fc ff df <80> 3c 08 00 74 08 48 89 df e8 7d e0 a9 f9 48 8b 1b 48 b8 00 00 00
RSP: 0018:ffffc90019cd7b88 EFLAGS: 00010202
RAX: 000000000000000e RBX: 0000000000000070 RCX: dffffc0000000000
RDX: 0000000000000000 RSI: 0000000000000007 RDI: 0000000000000000
RBP: ffffffff8c3ae748 R08: ffffffff880ae416 R09: ffffed10152b4c06
R10: ffffed10152b4c06 R11: 0000000000000000 R12: 0000000000000007
R13: ffff8880a95a6028 R14: ffff8880a7f17870 R15: 0000000000000000
FS:  0000000000000000(0000) GS:ffff8880ae900000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 0000000000000000 CR3: 00000000931c4000 CR4: 00000000001526e0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
Call Trace:
 batadv_iv_send_outstanding_bat_ogm_packet+0x68c/0x7c0 net/batman-adv/bat_iv_ogm.c:1723
 process_one_work+0x789/0xfc0 kernel/workqueue.c:2269
 worker_thread+0xaa4/0x1460 kernel/workqueue.c:2415
 kthread+0x37e/0x3a0 drivers/block/aoe/aoecmd.c:1234
 ret_from_fork+0x1f/0x30 arch/x86/entry/entry_64.S:294
Modules linked in:
---[ end trace 3bb6c6ec8627e29b ]---
RIP: 0010:batadv_iv_ogm_schedule_buff net/batman-adv/bat_iv_ogm.c:843 [inline]
RIP: 0010:batadv_iv_ogm_schedule+0x925/0xf40 net/batman-adv/bat_iv_ogm.c:869
Code: 00 48 c1 e8 03 48 89 44 24 28 48 c7 c5 48 e7 3a 8c 0f 1f 40 00 49 8d 5f 70 48 89 d8 48 c1 e8 03 48 b9 00 00 00 00 00 fc ff df <80> 3c 08 00 74 08 48 89 df e8 7d e0 a9 f9 48 8b 1b 48 b8 00 00 00
RSP: 0018:ffffc90019cd7b88 EFLAGS: 00010202
RAX: 000000000000000e RBX: 0000000000000070 RCX: dffffc0000000000
RDX: 0000000000000000 RSI: 0000000000000007 RDI: 0000000000000000
RBP: ffffffff8c3ae748 R08: ffffffff880ae416 R09: ffffed10152b4c06
R10: ffffed10152b4c06 R11: 0000000000000000 R12: 0000000000000007
R13: ffff8880a95a6028 R14: ffff8880a7f17870 R15: 0000000000000000
FS:  0000000000000000(0000) GS:ffff8880ae900000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 0000000000000000 CR3: 00000000931c4000 CR4: 00000000001526e0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400


---
This report is generated by a bot. It may contain errors.
See https://goo.gl/tpsmEJ for more information about syzbot.
syzbot engineers can be reached at syzkaller@googlegroups.com.

syzbot will keep track of this issue. See:
https://goo.gl/tpsmEJ#status for how to communicate with syzbot.
