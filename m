Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [IPv6:2a01:4f8:141:3341:78:46:248:236])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ECB9D5B80
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 14 Oct 2019 08:40:08 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 4783D807E4;
	Mon, 14 Oct 2019 08:39:57 +0200 (CEST)
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com
 [209.85.160.200])
 by open-mesh.org (Postfix) with ESMTPS id B4C1380170
 for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 13 Oct 2019 23:02:19 +0200 (CEST)
Received: by mail-qt1-f200.google.com with SMTP id 59so15994479qtc.5
 for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 13 Oct 2019 14:02:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
 bh=zhDjj24S80iGMjvukKDlOLStu3vUnLHYlWHFoMmucEo=;
 b=mhO8vteMRFaLxnKS6mEocJPc7lRevQ82S+tBarMzIvsHiuDrRxKuCs5LdxvQ0HAJJX
 ltVenm5jmkSawF29WRsq3mYiRuuRZgKwj/onf46+NOFAAN+MAolrv2fossPFy5+qMHYG
 ak5jvRjoqhgxzXrtWlTvZlGVlYK5K5leF3fn/TE3Br8i9v5+1ypSki5aEKWrxcpl2w6Q
 tOyYMBTgx/Ahm5XPXI2+T1TTQRUCogoov8aBClogfNCUH8lRQeIiVL3BNspJkXKc3gv6
 tyt3/3thwlmsYssFIzxchC42kIkB9/pldzdIN4GVHyF0Bv7+7hC/voC0Y5KIe4kY9m3/
 Ug/g==
X-Gm-Message-State: APjAAAWCS5NNuuE90YgkvK6hQe2LgPPn7wqrdrDeBvT5cbGs1+k+8RAS
 YyfwS9kycQUUerd3FEYZyxPzKfHmkxCRjOCzJMKgdKBGvKwQ
X-Google-Smtp-Source: APXvYqz0WjRImbT8SyTkaSHDJnUm1/KIj6wfqSNyNsrgmspeG/zdV/BEREv3xTA//bGaaWOosDUe5Y+pK15m5vTa/h8enfhdUoGK
MIME-Version: 1.0
X-Received: by 2002:a02:698d:: with SMTP id
 e135mr34071295jac.128.1571000107511; 
 Sun, 13 Oct 2019 13:55:07 -0700 (PDT)
Date: Sun, 13 Oct 2019 13:55:07 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <00000000000059b6d40594d0f776@google.com>
Subject: WARNING in batadv_iv_send_outstanding_bat_ogm_packet
From: syzbot <syzbot+c0b807de416427ff3dd1@syzkaller.appspotmail.com>
To: a@unstable.cc, b.a.t.m.a.n@lists.open-mesh.org, davem@davemloft.net, 
 linux-kernel@vger.kernel.org, mareklindner@neomailbox.ch, 
 netdev@vger.kernel.org, sven@narfation.org, sw@simonwunderlich.de, 
 syzkaller-bugs@googlegroups.com
Content-Type: text/plain; charset="UTF-8"; format=flowed; delsp=yes
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1571000539;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type;
 bh=zhDjj24S80iGMjvukKDlOLStu3vUnLHYlWHFoMmucEo=;
 b=qarAC/O80appbfZZ1gGp13TDsAZlVOSaIs0uz0Y+mhwpqjA3HsV2Dr3vIGa6q2jQHQQ8Bh
 QCyRx/Kn4Ut2DxX/R35a5Vno0wlKcfCkGurCJmuT/bZO9AH4alp5zVoMfyOeU0+ag7UWcw
 1dM6bBAem799ATN0XuguJJ3uANnEeFI=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1571000539; a=rsa-sha256; cv=none;
 b=cokKeS5qIqBX8du0y9raRxi4xUWBZVZ00+KJZuRTbKQwMzDUqtCc1T6ozyeV5UIXM3e9kw
 tNTQsai96sZ1jv+IA+SEVDVVruXDr0OyFOa7qgH7ITzfk8mpwVZodyby8JWiPdaq+FbaDH
 /g5I/H9zwyxGwxPYLmLV5aJamJNHiYs=
ARC-Authentication-Results: i=1; open-mesh.org; dkim=none;
 spf=pass (open-mesh.org: domain of
 3K4-jXQkbAMo8EF0q11u7q55yt.w44w1uA8u7s439u39.s42@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
 designates 209.85.160.200 as permitted sender)
 smtp.mailfrom=3K4-jXQkbAMo8EF0q11u7q55yt.w44w1uA8u7s439u39.s42@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
X-Mailman-Approved-At: Mon, 14 Oct 2019 08:39:54 +0200
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

HEAD commit:    da940012 Merge tag 'char-misc-5.4-rc3' of git://git.kernel..
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=13ffd808e00000
kernel config:  https://syzkaller.appspot.com/x/.config?x=2d2fd92a28d3e50
dashboard link: https://syzkaller.appspot.com/bug?extid=c0b807de416427ff3dd1
compiler:       clang version 9.0.0 (/home/glider/llvm/clang  
80fee25776c2fb61e74c1ecb1a523375c2500b69)
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=141ffd77600000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=11edd580e00000

IMPORTANT: if you fix the bug, please add the following tag to the commit:
Reported-by: syzbot+c0b807de416427ff3dd1@syzkaller.appspotmail.com

------------[ cut here ]------------
WARNING: CPU: 1 PID: 30 at net/batman-adv/bat_iv_ogm.c:382  
batadv_iv_ogm_emit net/batman-adv/bat_iv_ogm.c:382 [inline]
WARNING: CPU: 1 PID: 30 at net/batman-adv/bat_iv_ogm.c:382  
batadv_iv_send_outstanding_bat_ogm_packet+0x6b4/0x770  
net/batman-adv/bat_iv_ogm.c:1663
Kernel panic - not syncing: panic_on_warn set ...
CPU: 1 PID: 30 Comm: kworker/u4:2 Not tainted 5.4.0-rc2+ #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS  
Google 01/01/2011
Workqueue: bat_events batadv_iv_send_outstanding_bat_ogm_packet
Call Trace:
  __dump_stack lib/dump_stack.c:77 [inline]
  dump_stack+0x1d8/0x2f8 lib/dump_stack.c:113
  panic+0x264/0x7a9 kernel/panic.c:221
  __warn+0x20e/0x210 kernel/panic.c:582
  report_bug+0x1b6/0x2f0 lib/bug.c:195
  fixup_bug arch/x86/kernel/traps.c:179 [inline]
  do_error_trap+0xd7/0x440 arch/x86/kernel/traps.c:272
  do_invalid_op+0x36/0x40 arch/x86/kernel/traps.c:291
  invalid_op+0x23/0x30 arch/x86/entry/entry_64.S:1028
RIP: 0010:batadv_iv_ogm_emit net/batman-adv/bat_iv_ogm.c:382 [inline]
RIP: 0010:batadv_iv_send_outstanding_bat_ogm_packet+0x6b4/0x770  
net/batman-adv/bat_iv_ogm.c:1663
Code: 66 05 00 eb 05 e8 9c 48 23 fa 48 83 c4 68 5b 41 5c 41 5d 41 5e 41 5f  
5d c3 e8 88 48 23 fa 0f 0b e9 34 ff ff ff e8 7c 48 23 fa <0f> 0b e9 28 ff  
ff ff 89 d9 80 e1 07 80 c1 03 38 c1 0f 8c c1 f9 ff
RSP: 0018:ffff8880a9abfc48 EFLAGS: 00010293
RAX: ffffffff874fe8a4 RBX: ffff888094160870 RCX: ffff8880a9ab2080
RDX: 0000000000000000 RSI: 0000000000000001 RDI: 0000000000000002
RBP: ffff8880a9abfcd8 R08: ffffffff874fe28e R09: ffffed10123e6969
R10: ffffed10123e6969 R11: 0000000000000000 R12: ffff888091f34000
R13: dffffc0000000000 R14: ffff8880a80c5000 R15: ffff8880a4481400
  process_one_work+0x7ef/0x10e0 kernel/workqueue.c:2269
  worker_thread+0xc01/0x1630 kernel/workqueue.c:2415
  kthread+0x332/0x350 kernel/kthread.c:255
  ret_from_fork+0x24/0x30 arch/x86/entry/entry_64.S:352
Kernel Offset: disabled
Rebooting in 86400 seconds..


---
This bug is generated by a bot. It may contain errors.
See https://goo.gl/tpsmEJ for more information about syzbot.
syzbot engineers can be reached at syzkaller@googlegroups.com.

syzbot will keep track of this bug report. See:
https://goo.gl/tpsmEJ#status for how to communicate with syzbot.
syzbot can test patches for this bug, for details see:
https://goo.gl/tpsmEJ#testing-patches
