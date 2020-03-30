Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id DDDDC197DC9
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 30 Mar 2020 16:02:00 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 8654180520;
	Mon, 30 Mar 2020 16:01:55 +0200 (CEST)
Received: from mail-io1-f71.google.com (mail-io1-f71.google.com
 [209.85.166.71])
 by diktynna.open-mesh.org (Postfix) with ESMTPS id 06A3C80190
 for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 30 Mar 2020 15:51:20 +0200 (CEST)
Received: by mail-io1-f71.google.com with SMTP id x20so16241460iox.5
 for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 30 Mar 2020 06:51:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
 bh=YLVvaNavGqJEhh5fkSr20jBs4zDVUyraFKS4RYYWOFg=;
 b=M/9I3Cpx9lSr+cnWx0j47TNVyMJ2PF622AWKycSYDGx7hkvceN5dzE7qQniAiOtQ0x
 3slvS3tJ89RfOrMNmk69uIL6MxL5MH9lFcVk/BBhFzCWssy/qBKuAyKgqH7lCaGgflcK
 eZXutWliVR4xB9JRbrpuS7tbBWqV3I91dAA3uvmBP+FS4smh7ugB+wJ9eB3kAwcYJ8hL
 RaJj1VDWf7CjiFleOP2o5Qbz9Qw9CxpPzJWRjjhqmcqFR6kaP76Q5HNS6Bs5sQh271Yd
 r1Qi1SqtJu27MXptqPfuBsq9ixZzkA9MLGbTedfg2zzVCliGjEZZIySAZjYCmKbHadw1
 NObA==
X-Gm-Message-State: ANhLgQ1sZKcgCWat8BObwXyUynrYLyB7dFKgw1gWg649uvvYfOygiUG+
 GsiN5JIXfivYSfpfTnnfZnMJ1pokQGU7f8cE5AasGlCFlfJG
X-Google-Smtp-Source: ADFU+vsvxrmg4/EclKDmQeQf7Px0e7WNMnWZw5YOLVczE+DTyccrmmhsFybMffejJ0apRQDnvqMQVt+gHn8fKmDptiqTTYNCnRja
MIME-Version: 1.0
X-Received: by 2002:a6b:b4c1:: with SMTP id d184mr10497100iof.85.1585576278701; 
 Mon, 30 Mar 2020 06:51:18 -0700 (PDT)
Date: Mon, 30 Mar 2020 06:51:18 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000db448f05a212beea@google.com>
Subject: kernel panic: smack: Failed to initialize cipso DOI.
From: syzbot <syzbot+89731ccb6fec15ce1c22@syzkaller.appspotmail.com>
To: a@unstable.cc, b.a.t.m.a.n@lists.open-mesh.org, casey@schaufler-ca.com, 
 davem@davemloft.net, intel-wired-lan@lists.osuosl.org, 
 jeffrey.t.kirsher@intel.com, jkc@redhat.com, jmorris@namei.org, 
 linux-kernel@vger.kernel.org, linux-security-module@vger.kernel.org, 
 mareklindner@neomailbox.ch, netdev@vger.kernel.org, serge@hallyn.com, 
 sw@simonwunderlich.de, syzkaller-bugs@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1585576280;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type;
 bh=YLVvaNavGqJEhh5fkSr20jBs4zDVUyraFKS4RYYWOFg=;
 b=qavbajohGkm7t97iJQ6QWFjnCaKWqLwOgPy1xZurRAx+9eziFlFGKFwrpGRA52NcdHcRzh
 3IeCCXTKwfKYCfDj6oWfoYh0x4QgvZnOXLzkLac2r/ifD2THin7+2oaadi+sJlx0A+hy5U
 ZBqNFdKk5NoBw5C0FGMh6M126lrKsZU=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1585576280; a=rsa-sha256; cv=none;
 b=2EM2ROgeMlW4MerH94e7luXZxrtLjy14RZ4cAgMw0HPQICnHBGl9KTx+SVjtzJUDDOvUr1
 QJsYNSGDhTeMSnYbX4f865aj9so+j5P6ne8jokX+9f1bTcJK4GnWh92dzt9KL4yGt0Ww6Q
 QAEwE7FkzO9xw9v4KxCa5dBU3ZYI0do=
ARC-Authentication-Results: i=1; diktynna.open-mesh.org; dkim=none;
 spf=pass (diktynna.open-mesh.org: domain of
 3VvmBXgkbAEs5BCxnyyr4n22vq.t11tyr75r4p106r06.p1z@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
 designates 209.85.166.71 as permitted sender)
 smtp.mailfrom=3VvmBXgkbAEs5BCxnyyr4n22vq.t11tyr75r4p106r06.p1z@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
X-Mailman-Approved-At: Mon, 30 Mar 2020 16:01:53 +0200
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

HEAD commit:    1b649e0b Merge git://git.kernel.org/pub/scm/linux/kernel/g..
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=14957099e00000
kernel config:  https://syzkaller.appspot.com/x/.config?x=4ac76c43beddbd9
dashboard link: https://syzkaller.appspot.com/bug?extid=89731ccb6fec15ce1c22
compiler:       clang version 10.0.0 (https://github.com/llvm/llvm-project/ c2443155a0fb245c8f17f2c1c72b6ea391e86e81)
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=1202c375e00000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=1390bb03e00000

The bug was bisected to:

commit a9d2d53a788a9c5bc8a7d1b4ea7857b68e221357
Author: Ken Cox <jkc@redhat.com>
Date:   Tue Nov 15 19:00:37 2016 +0000

    ixgbe: test for trust in macvlan adjustments for VF

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=13cb06f3e00000
final crash:    https://syzkaller.appspot.com/x/report.txt?x=102b06f3e00000
console output: https://syzkaller.appspot.com/x/log.txt?x=17cb06f3e00000

IMPORTANT: if you fix the bug, please add the following tag to the commit:
Reported-by: syzbot+89731ccb6fec15ce1c22@syzkaller.appspotmail.com
Fixes: a9d2d53a788a ("ixgbe: test for trust in macvlan adjustments for VF")

RSP: 002b:00007ffebd499a38 EFLAGS: 00000246 ORIG_RAX: 0000000000000001
RAX: ffffffffffffffda RBX: 00007ffebd499a40 RCX: 00000000004404e9
RDX: 0000000000000014 RSI: 0000000020000040 RDI: 0000000000000003
RBP: 0000000000000004 R08: 0000000000000001 R09: 00007ffebd490031
R10: 0000000000000000 R11: 0000000000000246 R12: 0000000000401dd0
R13: 0000000000401e60 R14: 0000000000000000 R15: 0000000000000000
Kernel panic - not syncing: smack:  Failed to initialize cipso DOI.
CPU: 1 PID: 7197 Comm: syz-executor480 Not tainted 5.6.0-rc7-syzkaller #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 01/01/2011
Call Trace:
 __dump_stack lib/dump_stack.c:77 [inline]
 dump_stack+0x1e9/0x30e lib/dump_stack.c:118
 panic+0x264/0x7a0 kernel/panic.c:221
 smk_cipso_doi+0x4d8/0x4e0 security/smack/smackfs.c:698
 smk_write_doi+0x123/0x190 security/smack/smackfs.c:1595
 __vfs_write+0xa7/0x710 fs/read_write.c:494
 vfs_write+0x271/0x570 fs/read_write.c:558
 ksys_write+0x115/0x220 fs/read_write.c:611
 do_syscall_64+0xf3/0x1b0 arch/x86/entry/common.c:294
 entry_SYSCALL_64_after_hwframe+0x49/0xbe
RIP: 0033:0x4404e9
Code: 18 89 d0 c3 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 00 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 0f 83 5b 14 fc ff c3 66 2e 0f 1f 84 00 00 00 00
RSP: 002b:00007ffebd499a38 EFLAGS: 00000246 ORIG_RAX: 0000000000000001
RAX: ffffffffffffffda RBX: 00007ffebd499a40 RCX: 00000000004404e9
RDX: 0000000000000014 RSI: 0000000020000040 RDI: 0000000000000003
RBP: 0000000000000004 R08: 0000000000000001 R09: 00007ffebd490031
R10: 0000000000000000 R11: 0000000000000246 R12: 0000000000401dd0
R13: 0000000000401e60 R14: 0000000000000000 R15: 0000000000000000
Kernel Offset: disabled
Rebooting in 86400 seconds..


---
This bug is generated by a bot. It may contain errors.
See https://goo.gl/tpsmEJ for more information about syzbot.
syzbot engineers can be reached at syzkaller@googlegroups.com.

syzbot will keep track of this bug report. See:
https://goo.gl/tpsmEJ#status for how to communicate with syzbot.
For information about bisection process see: https://goo.gl/tpsmEJ#bisection
syzbot can test patches for this bug, for details see:
https://goo.gl/tpsmEJ#testing-patches
