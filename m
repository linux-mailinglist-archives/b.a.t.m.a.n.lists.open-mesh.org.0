Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [78.46.248.236])
	by mail.lfdr.de (Postfix) with ESMTPS id C885911DE7D
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 13 Dec 2019 08:17:15 +0100 (CET)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id F3C95802DF;
	Fri, 13 Dec 2019 08:17:07 +0100 (CET)
Received: from mail-io1-f72.google.com (mail-io1-f72.google.com
 [209.85.166.72]) by open-mesh.org (Postfix) with ESMTPS id 6D877802C3
 for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 13 Dec 2019 00:38:22 +0100 (CET)
Received: by mail-io1-f72.google.com with SMTP id e13so419988iob.17
 for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 12 Dec 2019 15:38:22 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
 bh=uPmT7H1u4tQQr91gsmUmlGu51pKPCSerupF0+mBYR+A=;
 b=NEiyvupYOHIqmrX2pNqvV+a6oXSwSqagSUvsG6LjGIkffeHawRDCMSjAL1i2FgVIhn
 rZ6bWbwiaDDGvmbTyVlkSIQ/EIbu9oqpihia9OGYntC/U10Kzjq1nHa3aXMZixJx72Wb
 AS+VMqbjTPYt91xp7SEvAZYl663tuQ774xd+o1tae+XtcGcNB2IYW94Hnm/FGFekcoLT
 Fm9a2bnz+RPinz/Wo2PlwmZw7eIRFpNW2zGewuraqAM+a0sy46rvpxtInooP+sU1KVxk
 uS6HhsBS2x6fxKyS+PzE2xmosTTEKIGtS5R0MWq3VPWbDFLCEE5MArauwDVHlfDSMZ3x
 4z0A==
X-Gm-Message-State: APjAAAWLwz0JFvAIYg0WlB3hKuMep8oQWLPgpxIG+M3RGQIpoNtJE3vt
 zcSnzlulJ5EPV3QDwljGmXTSc4y6zco+cZ7PjqZLBolG8yhV
X-Google-Smtp-Source: APXvYqxRonIBYq3QlOSfLTDmRhr3h1LOT5KDkHtrZySgylant5xgPnByJCRl6xs7oY/bbF7kt3LOHlPciackUCos0rlrM+RWe26+
MIME-Version: 1.0
X-Received: by 2002:a92:7606:: with SMTP id r6mr10592785ilc.120.1576193590352; 
 Thu, 12 Dec 2019 15:33:10 -0800 (PST)
Date: Thu, 12 Dec 2019 15:33:10 -0800
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000000ce4b105998a2b08@google.com>
Subject: KCSAN: data-race in add_timer / timer_clear_idle (2)
From: syzbot <syzbot+c051abeff5e2e8ac40f0@syzkaller.appspotmail.com>
To: a@unstable.cc, b.a.t.m.a.n@lists.open-mesh.org, davem@davemloft.net, 
 elver@google.com, linux-kernel@vger.kernel.org, mareklindner@neomailbox.ch, 
 netdev@vger.kernel.org, sven@narfation.org, sw@simonwunderlich.de, 
 syzkaller-bugs@googlegroups.com
Content-Type: text/plain; charset="UTF-8"; format=flowed; delsp=yes
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1576193903;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type;
 bh=uPmT7H1u4tQQr91gsmUmlGu51pKPCSerupF0+mBYR+A=;
 b=QkUSI0u75HII1QNBUCiA50N8OW6dlY/91hyAEapx12bbkrSDHg2OnbR2jzD4nhsgghIk1l
 LgHKsG/akRMth+iFAO+eR54TQAuDbYo3dm81kRCeOPoRW6qUTm8eir9gZhMETPYNaWs8Zf
 TmjhfFMJO64o8vtLiW2Tj8kyWgGUFks=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1576193903; a=rsa-sha256; cv=none;
 b=xCkqUhRa+huLU+uH7qFFYjR4PSHFlc8vekDRchT5M2E9HmrYPXAYZPOZ2UZL867l/5rY4+
 uC3DKO8aa9DSQLtEa8HWtRTcb7WU/Jczff1KfV4gj9qhvEbbJB5XTXSBuL14oF3cGggUxj
 g86EHxFhnJ+QEqdfHW1+tH6Sho3NU6E=
ARC-Authentication-Results: i=1; open-mesh.org; dkim=none;
 spf=pass (open-mesh.org: domain of
 3Ns7yXQkbAJMFLM7x881ExCC50.3BB381HF1EzBAG1AG.zB9@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
 designates 209.85.166.72 as permitted sender)
 smtp.mailfrom=3Ns7yXQkbAJMFLM7x881ExCC50.3BB381HF1EzBAG1AG.zB9@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
X-Mailman-Approved-At: Fri, 13 Dec 2019 08:17:03 +0100
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

HEAD commit:    ef798c30 x86, kcsan: Enable KCSAN for x86
git tree:       https://github.com/google/ktsan.git kcsan
console output: https://syzkaller.appspot.com/x/log.txt?x=156e052ee00000
kernel config:  https://syzkaller.appspot.com/x/.config?x=8077a73bd604a9d4
dashboard link: https://syzkaller.appspot.com/bug?extid=c051abeff5e2e8ac40f0
compiler:       gcc (GCC) 9.0.0 20181231 (experimental)

Unfortunately, I don't have any reproducer for this crash yet.

IMPORTANT: if you fix the bug, please add the following tag to the commit:
Reported-by: syzbot+c051abeff5e2e8ac40f0@syzkaller.appspotmail.com

==================================================================
BUG: KCSAN: data-race in add_timer / timer_clear_idle

read to 0xffff88812be1b6e4 of 1 bytes by task 23 on cpu 1:
  forward_timer_base kernel/time/timer.c:892 [inline]
  __mod_timer kernel/time/timer.c:1009 [inline]
  mod_timer kernel/time/timer.c:1100 [inline]
  add_timer+0x3a6/0x550 kernel/time/timer.c:1136
  __queue_delayed_work+0x13b/0x1d0 kernel/workqueue.c:1649
  queue_delayed_work_on+0xf3/0x110 kernel/workqueue.c:1674
  queue_delayed_work include/linux/workqueue.h:509 [inline]
  batadv_mcast_start_timer net/batman-adv/multicast.c:71 [inline]
  batadv_mcast_mla_update+0x11ad/0x19e0 net/batman-adv/multicast.c:949
  process_one_work+0x3d4/0x890 kernel/workqueue.c:2269
  worker_thread+0xa0/0x800 kernel/workqueue.c:2415
  kthread+0x1d4/0x200 drivers/block/aoe/aoecmd.c:1253
  ret_from_fork+0x1f/0x30 arch/x86/entry/entry_64.S:352

write to 0xffff88812be1b6e4 of 1 bytes by task 0 on cpu 0:
  timer_clear_idle+0x42/0x50 kernel/time/timer.c:1675
  tick_nohz_restart_sched_tick kernel/time/tick-sched.c:839 [inline]
  __tick_nohz_idle_restart_tick+0x36/0x1b0 kernel/time/tick-sched.c:1140
  tick_nohz_idle_exit+0x1af/0x1e0 kernel/time/tick-sched.c:1181
  do_idle+0xb1/0x280 kernel/sched/idle.c:276
  cpu_startup_entry+0x1b/0x20 kernel/sched/idle.c:355
  rest_init+0xec/0xf6 init/main.c:452
  arch_call_rest_init+0x17/0x37
  start_kernel+0x838/0x85e init/main.c:786
  x86_64_start_reservations+0x29/0x2b arch/x86/kernel/head64.c:490
  x86_64_start_kernel+0x72/0x76 arch/x86/kernel/head64.c:471
  secondary_startup_64+0xa4/0xb0 arch/x86/kernel/head_64.S:241

Reported by Kernel Concurrency Sanitizer on:
CPU: 0 PID: 0 Comm: swapper/0 Not tainted 5.4.0-syzkaller #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS  
Google 01/01/2011
==================================================================


---
This bug is generated by a bot. It may contain errors.
See https://goo.gl/tpsmEJ for more information about syzbot.
syzbot engineers can be reached at syzkaller@googlegroups.com.

syzbot will keep track of this bug report. See:
https://goo.gl/tpsmEJ#status for how to communicate with syzbot.
