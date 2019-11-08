Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [IPv6:2a01:4f8:141:3341:78:46:248:236])
	by mail.lfdr.de (Postfix) with ESMTPS id 136C8F4E53
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri,  8 Nov 2019 15:40:53 +0100 (CET)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 9BCEF80C21;
	Fri,  8 Nov 2019 15:40:44 +0100 (CET)
Received: from mail-io1-f70.google.com (mail-io1-f70.google.com
 [209.85.166.70]) by open-mesh.org (Postfix) with ESMTPS id D18C080161
 for <b.a.t.m.a.n@lists.open-mesh.org>; Fri,  8 Nov 2019 15:35:58 +0100 (CET)
Received: by mail-io1-f70.google.com with SMTP id c67so5415225iof.22
 for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 08 Nov 2019 06:35:58 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
 bh=Fc1AeehNUTfKl/ssy9FjKjLKkl1fuRqIqy43NB+5sHo=;
 b=HAGVwqJxJdNHsOUQ7b3GIiFW8HeqxtiVvAb/QAVUiCTRN+m3Y3Gu/hzyDpzn6ZPLaf
 2o+kB2Lm+QvjaoQ/dDaWT+lrjTcwQlXrIyPajIVXLkhZlwTVzYRy3FcvfcVnxzn8vvsA
 T++i9xXE6zLJFoELaUPXkth4SCMvUqKia29M6OFFBPkVyJyDJISUfjPukOKPTBeHFaD3
 xdHOQ5LNHDK6KWlmsdRvn8+s5YJW31WVnBexBaDXA4uzszoXJeWn05FGRKbPnnGsOssS
 sNRqVcGq23q985hoGA/Zji7LF2qblg4P3JvqRDKm6h8LMIp1oW/LARvZ4rUWhxv1hUbQ
 Resw==
X-Gm-Message-State: APjAAAUzortogz9Ou41xcolcn6T5qZsaGpucVUMEafgQ1V9NsRzcPYch
 H7+gkuDHdzovjyoPf4lyJmj0k7xexbWVER0zl58/fj+cdvAp
X-Google-Smtp-Source: APXvYqz+GUs/qSBf9Rk2PflrXCYjo2fZBhJeXHTaoeYr9Pwgzk5CdLXlg5K4ytx+w1iK/Rh4YNNi2GUdwdnyaeumKqxb4jvNtCt6
MIME-Version: 1.0
X-Received: by 2002:a05:6602:1223:: with SMTP id
 z3mr319283iot.92.1573223290084; 
 Fri, 08 Nov 2019 06:28:10 -0800 (PST)
Date: Fri, 08 Nov 2019 06:28:10 -0800
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000005ba74a0596d697be@google.com>
Subject: KCSAN: data-race in batadv_tt_local_add / batadv_tt_local_add
From: syzbot <syzbot+1d5dadec56d9e87f0aac@syzkaller.appspotmail.com>
To: a@unstable.cc, b.a.t.m.a.n@lists.open-mesh.org, davem@davemloft.net, 
 elver@google.com, linux-kernel@vger.kernel.org, mareklindner@neomailbox.ch, 
 netdev@vger.kernel.org, sven@narfation.org, sw@simonwunderlich.de, 
 syzkaller-bugs@googlegroups.com
Content-Type: text/plain; charset="UTF-8"; format=flowed; delsp=yes
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1573223758;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type;
 bh=Fc1AeehNUTfKl/ssy9FjKjLKkl1fuRqIqy43NB+5sHo=;
 b=aeoLwWRHHlx9N36vNGn+s1FoM4NcTP8rxzDtCcRkvp4r7ONxTXF/9xkaeKxXr5CcvYu5Zq
 RtONtPbHPzcDq9r93siGovqP8Xw7hkmV7gQVT+Su8DUBJUCiH4rFPi8suBkQIJlWqPiiOH
 7alqGsWeJWy6h6bBC/S6ziyDQ9l8Rqc=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1573223758; a=rsa-sha256; cv=none;
 b=u3n1eytqw/eu/YiBuJ+Wb/zgMAE4+1UUnQa/BrLWI+dOoSRcHDzlufQVAbFsfPKlqjOYL1
 2CeTRzUk1ogh3AxHQ++Ks457ExGf3vD0I+oq8AYOiD9smug4SIGR4N7dQDfNI0rRe/5BlL
 3dZzQMegr4+qSQLAqNmey8u1ZJ0DCzU=
ARC-Authentication-Results: i=1; open-mesh.org; dkim=none;
 spf=pass (open-mesh.org: domain of
 3envFXQkbAHsrxyjZkkdqZoohc.fnnfkdtrdqbnmsdms.bnl@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
 designates 209.85.166.70 as permitted sender)
 smtp.mailfrom=3envFXQkbAHsrxyjZkkdqZoohc.fnnfkdtrdqbnmsdms.bnl@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
X-Mailman-Approved-At: Fri, 08 Nov 2019 15:40:42 +0100
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

HEAD commit:    05f22368 x86, kcsan: Enable KCSAN for x86
git tree:       https://github.com/google/ktsan.git kcsan
console output: https://syzkaller.appspot.com/x/log.txt?x=1195a0d4e00000
kernel config:  https://syzkaller.appspot.com/x/.config?x=87d111955f40591f
dashboard link: https://syzkaller.appspot.com/bug?extid=1d5dadec56d9e87f0aac
compiler:       gcc (GCC) 9.0.0 20181231 (experimental)

Unfortunately, I don't have any reproducer for this crash yet.

IMPORTANT: if you fix the bug, please add the following tag to the commit:
Reported-by: syzbot+1d5dadec56d9e87f0aac@syzkaller.appspotmail.com

==================================================================
BUG: KCSAN: data-race in batadv_tt_local_add / batadv_tt_local_add

write to 0xffff8880a8e19698 of 2 bytes by task 10064 on cpu 0:
  batadv_tt_local_add+0x21b/0x1020 net/batman-adv/translation-table.c:799
  batadv_interface_tx+0x398/0xae0 net/batman-adv/soft-interface.c:249
  __netdev_start_xmit include/linux/netdevice.h:4420 [inline]
  netdev_start_xmit include/linux/netdevice.h:4434 [inline]
  xmit_one net/core/dev.c:3280 [inline]
  dev_hard_start_xmit+0xef/0x430 net/core/dev.c:3296
  __dev_queue_xmit+0x14c9/0x1b60 net/core/dev.c:3873
  dev_queue_xmit+0x21/0x30 net/core/dev.c:3906
  __bpf_tx_skb net/core/filter.c:2060 [inline]
  __bpf_redirect_common net/core/filter.c:2099 [inline]
  __bpf_redirect+0x4b4/0x710 net/core/filter.c:2106
  ____bpf_clone_redirect net/core/filter.c:2139 [inline]
  bpf_clone_redirect+0x1a5/0x1f0 net/core/filter.c:2111
  bpf_prog_bb15b996d00816f9+0x71c/0x1000
  bpf_test_run+0x1c3/0x490 net/bpf/test_run.c:44
  bpf_prog_test_run_skb+0x4da/0x840 net/bpf/test_run.c:310
  bpf_prog_test_run kernel/bpf/syscall.c:2108 [inline]
  __do_sys_bpf+0x1664/0x2b90 kernel/bpf/syscall.c:2884
  __se_sys_bpf kernel/bpf/syscall.c:2825 [inline]
  __x64_sys_bpf+0x4c/0x60 kernel/bpf/syscall.c:2825
  do_syscall_64+0xcc/0x370 arch/x86/entry/common.c:290
  entry_SYSCALL_64_after_hwframe+0x44/0xa9

read to 0xffff8880a8e19698 of 2 bytes by task 9969 on cpu 1:
  batadv_tt_local_add+0x3d1/0x1020 net/batman-adv/translation-table.c:801
  batadv_interface_tx+0x398/0xae0 net/batman-adv/soft-interface.c:249
  __netdev_start_xmit include/linux/netdevice.h:4420 [inline]
  netdev_start_xmit include/linux/netdevice.h:4434 [inline]
  xmit_one net/core/dev.c:3280 [inline]
  dev_hard_start_xmit+0xef/0x430 net/core/dev.c:3296
  __dev_queue_xmit+0x14c9/0x1b60 net/core/dev.c:3873
  dev_queue_xmit+0x21/0x30 net/core/dev.c:3906
  __bpf_tx_skb net/core/filter.c:2060 [inline]
  __bpf_redirect_common net/core/filter.c:2099 [inline]
  __bpf_redirect+0x4b4/0x710 net/core/filter.c:2106
  ____bpf_clone_redirect net/core/filter.c:2139 [inline]
  bpf_clone_redirect+0x1a5/0x1f0 net/core/filter.c:2111
  bpf_prog_bb15b996d00816f9+0x312/0x1000
  bpf_test_run+0x1c3/0x490 net/bpf/test_run.c:44
  bpf_prog_test_run_skb+0x4da/0x840 net/bpf/test_run.c:310
  bpf_prog_test_run kernel/bpf/syscall.c:2108 [inline]
  __do_sys_bpf+0x1664/0x2b90 kernel/bpf/syscall.c:2884
  __se_sys_bpf kernel/bpf/syscall.c:2825 [inline]
  __x64_sys_bpf+0x4c/0x60 kernel/bpf/syscall.c:2825
  do_syscall_64+0xcc/0x370 arch/x86/entry/common.c:290

Reported by Kernel Concurrency Sanitizer on:
CPU: 1 PID: 9969 Comm: syz-executor.2 Not tainted 5.4.0-rc3+ #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS  
Google 01/01/2011
==================================================================


---
This bug is generated by a bot. It may contain errors.
See https://goo.gl/tpsmEJ for more information about syzbot.
syzbot engineers can be reached at syzkaller@googlegroups.com.

syzbot will keep track of this bug report. See:
https://goo.gl/tpsmEJ#status for how to communicate with syzbot.
