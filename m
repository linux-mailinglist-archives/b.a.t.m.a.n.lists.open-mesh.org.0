Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 3445B63BCE7
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 29 Nov 2022 10:28:42 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id A5B0F80BF1;
	Tue, 29 Nov 2022 10:28:40 +0100 (CET)
Received: from mail-il1-f199.google.com (mail-il1-f199.google.com [209.85.166.199])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 073BC80497
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 29 Nov 2022 10:28:36 +0100 (CET)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1669714116;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type;
	bh=DwHYHMia3SWsCol0zN9hefpCR+EbC2cAXKhyYNd3Nv0=;
	b=2h4WokxaY//jVXbKLTPPuQtuZ7vlqu7bRGqJvBovCpdejtuIqAu4IcoULwEQBrnlQIl+MX
	pBfcfeiG1xxFFTJ2RYMhldf4t/BF+Z4gGqxXIOuFqWLCOa2sPHn4HTaSC7Eo5WzfGYTjNO
	b4GCvHeP6cb+R5IXe8ne1iWxFvzNbP8=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of 3wtCFYwkbAJ0PVWH7IIBO7MMFA.DLLDIBRPBO9LKQBKQ.9LJ@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com designates 209.85.166.199 as permitted sender) smtp.mailfrom=3wtCFYwkbAJ0PVWH7IIBO7MMFA.DLLDIBRPBO9LKQBKQ.9LJ@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com;
	dmarc=fail reason="SPF not aligned (relaxed), No valid DKIM" header.from=appspotmail.com (policy=none)
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1669714116; a=rsa-sha256;
	cv=none;
	b=NMOcvxSg7IlqGnYRCNmGVjZX2RR7ePzz+rA3YLsj1rpHETMQAhNEaoVPjjKYK3rux9MzpR
	6DOqHTMcrgrOUrdSd6wwkVV6i6qezng2JaCsoWUpflnFDoCDnjsb/HfP8gHboqE9+b5Tfv
	hRsNfOoZ3M/TuoC+tKKetREur9gB604=
Received: by mail-il1-f199.google.com with SMTP id w9-20020a056e021c8900b0030247910269so11342679ill.4
        for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 29 Nov 2022 01:28:35 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:from:subject:message-id:date:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=DwHYHMia3SWsCol0zN9hefpCR+EbC2cAXKhyYNd3Nv0=;
        b=y+Pjfwnm2kuyKntGwjDREYuzasfEzzKYMk8+bxf2SwF7IqxVdhK+S9TElrZ4F3kEB8
         bJXBMXyPdyS23BYBwlamYQw7z4ouSAKi1mt8dEeNrkKkjai659+1kcm8iNwltFc+nIMA
         P5jiaSzFhO1JEFfQaOSV+mwqT8pwioxafd1rfelk3aeiWIT2W4ucqvcTevllpjFVVbDG
         69HEWMcn03cf+RiD3bBDEjOTDh7sor8lbf0XqXvbUCOgRABwdctfOU8qh79Oinhkfq2c
         fuBR1g3ShcXusnC0zyEc/HxXORM6wolmHltA2QDueTFCBjegecTILrWwN3iV3dHW0O0C
         UDrQ==
X-Gm-Message-State: ANoB5pnx3lnbMDyLMLMYpIP8OTtdmKNz9SjjDf1VcxZPZ0aj/DSgaMKZ
	YEk0obswjihTmNYRLS+OiQLDDDKx8AHigTatrxfaA62FSqpZ
X-Google-Smtp-Source: AA0mqf4SlM8ZeHbB1FFBLv6NUjJCFRWfI2GPv7cccYZgGVE2lI1V1zt406ZHnpm7RPupUcg/iYBCP6IjCXRt7LgVhJ3S5L9rx0od
MIME-Version: 1.0
X-Received: by 2002:a92:7310:0:b0:302:571f:8d7f with SMTP id
 o16-20020a927310000000b00302571f8d7fmr25219913ilc.53.1669714114517; Tue, 29
 Nov 2022 01:28:34 -0800 (PST)
Date: Tue, 29 Nov 2022 01:28:34 -0800
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000ac218905ee989c07@google.com>
Subject: [syzbot] WARNING in batadv_nc_purge_paths
From: syzbot <syzbot+5b817d9e3b5fb5f051fc@syzkaller.appspotmail.com>
To: a@unstable.cc, b.a.t.m.a.n@lists.open-mesh.org, davem@davemloft.net,
	edumazet@google.com, kuba@kernel.org, linux-kernel@vger.kernel.org,
	mareklindner@neomailbox.ch, netdev@vger.kernel.org, pabeni@redhat.com,
	sven@narfation.org, sw@simonwunderlich.de, syzkaller-bugs@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
Message-ID-Hash: NNZ5QY6IQ7UJQLSYL7TZHFVHJXWUEXHL
X-Message-ID-Hash: NNZ5QY6IQ7UJQLSYL7TZHFVHJXWUEXHL
X-MailFrom: 3wtCFYwkbAJ0PVWH7IIBO7MMFA.DLLDIBRPBO9LKQBKQ.9LJ@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/NNZ5QY6IQ7UJQLSYL7TZHFVHJXWUEXHL/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Hello,

syzbot found the following issue on:

HEAD commit:    65762d97e6fa Merge branch 'for-next/perf' into for-kernelci
git tree:       git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git for-kernelci
console output: https://syzkaller.appspot.com/x/log.txt?x=1558f7fd880000
kernel config:  https://syzkaller.appspot.com/x/.config?x=56d0c7c3a2304e8f
dashboard link: https://syzkaller.appspot.com/bug?extid=5b817d9e3b5fb5f051fc
compiler:       Debian clang version 13.0.1-++20220126092033+75e33f71c2da-1~exp1~20220126212112.63, GNU ld (GNU Binutils for Debian) 2.35.2
userspace arch: arm64

Unfortunately, I don't have any reproducer for this issue yet.

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/52f702197b30/disk-65762d97.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/72189c2789ce/vmlinux-65762d97.xz
kernel image: https://storage.googleapis.com/syzbot-assets/ec0349196c98/Image-65762d97.gz.xz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+5b817d9e3b5fb5f051fc@syzkaller.appspotmail.com

------------[ cut here ]------------
WARNING: CPU: 1 PID: 3498 at kernel/softirq.c:376 __local_bh_enable_ip+0x180/0x1a4 kernel/softirq.c:376
Modules linked in:
CPU: 1 PID: 3498 Comm: kworker/u4:11 Not tainted 6.1.0-rc6-syzkaller-32653-g65762d97e6fa #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 09/30/2022
Workqueue: bat_events batadv_nc_worker

pstate: 20400005 (nzCv daif +PAN -UAO -TCO -DIT -SSBS BTYPE=--)
pc : __local_bh_enable_ip+0x180/0x1a4 kernel/softirq.c:376
lr : __raw_spin_unlock_bh include/linux/spinlock_api_smp.h:167 [inline]
lr : _raw_spin_unlock_bh+0x48/0x58 kernel/locking/spinlock.c:210
sp : ffff80001398bc60
x29: ffff80001398bc60
 x28: ffff80000d2fb000
 x27: ffff80000d2fb000

x26: 000000000000007e
 x25: 0000000000000004
 x24: 0000000000000000

x23: ffff0000f2dcdf80
 x22: 0000000000000000
 x21: ffff00011ed2b480

x20: ffff80000bf44c08
 x19: 0000000000000201
 x18: 0000000000000163

x17: ffff80000c0cd83c
 x16: ffff80000dbe6158
 x15: ffff00011ed2b480

x14: 00000000000000c8
 x13: 00000000ffffffff
 x12: ffff00011ed2b480

x11: ff808000095cfff8
 x10: 00000000ffffffff
 x9 : ffff80000d2d09a0

x8 : 0000000000000201
 x7 : ffff80000bf44a98
 x6 : 0000000000000000

x5 : 0000000000000000
 x4 : 0000000000000001
 x3 : 0000000000000000

x2 : 0000000000000001
 x1 : 0000000000000201
 x0 : ffff80000bf44c08

Call trace:
 __local_bh_enable_ip+0x180/0x1a4 kernel/softirq.c:376
 __raw_spin_unlock_bh include/linux/spinlock_api_smp.h:167 [inline]
 _raw_spin_unlock_bh+0x48/0x58 kernel/locking/spinlock.c:210
 spin_unlock_bh include/linux/spinlock.h:395 [inline]
 batadv_nc_purge_paths+0x1d0/0x214 net/batman-adv/network-coding.c:471
 batadv_nc_worker+0x3a8/0x484 net/batman-adv/network-coding.c:722
 process_one_work+0x2d8/0x504 kernel/workqueue.c:2289
 worker_thread+0x340/0x610 kernel/workqueue.c:2436
 kthread+0x12c/0x158 kernel/kthread.c:376
 ret_from_fork+0x10/0x20 arch/arm64/kernel/entry.S:863
irq event stamp: 28503233
hardirqs last  enabled at (28503231): [<ffff800008106f78>] __local_bh_enable_ip+0x13c/0x1a4 kernel/softirq.c:401
hardirqs last disabled at (28503233): [<ffff80000c0809a4>] __el1_irq arch/arm64/kernel/entry-common.c:468 [inline]
hardirqs last disabled at (28503233): [<ffff80000c0809a4>] el1_interrupt+0x24/0x68 arch/arm64/kernel/entry-common.c:486
softirqs last  enabled at (28503230): [<ffff80000bf44c08>] spin_unlock_bh include/linux/spinlock.h:395 [inline]
softirqs last  enabled at (28503230): [<ffff80000bf44c08>] batadv_nc_purge_paths+0x1d0/0x214 net/batman-adv/network-coding.c:471
softirqs last disabled at (28503232): [<ffff80000bf44a98>] spin_lock_bh include/linux/spinlock.h:355 [inline]
softirqs last disabled at (28503232): [<ffff80000bf44a98>] batadv_nc_purge_paths+0x60/0x214 net/batman-adv/network-coding.c:442
---[ end trace 0000000000000000 ]---


---
This report is generated by a bot. It may contain errors.
See https://goo.gl/tpsmEJ for more information about syzbot.
syzbot engineers can be reached at syzkaller@googlegroups.com.

syzbot will keep track of this issue. See:
https://goo.gl/tpsmEJ#status for how to communicate with syzbot.
