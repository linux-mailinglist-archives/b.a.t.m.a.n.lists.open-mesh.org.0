Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 00D35738EBE
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 21 Jun 2023 20:27:44 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id CB2DB8196F
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 21 Jun 2023 20:27:44 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1687372064;
 b=Riq7TlnP1vHZZqCjj2DpLXQSPbsji9CO/qEpP9vuhYCSaUoaRWpJ3I7dwJ2by7yscxzNS
 iOCxpwtRVjoTcY4wSVFo92irjbhk+1wO0fjcLXlmONsHsN075p3DIS8FQ4BhsgsIMowGZWH
 0pWAaRn58ZZxm2vXMTFBVPZdnnYTUPI=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1687372064; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=SM44jaBHDK4+HpvQQwzk0Gkvb0ZUSmlYthl5LL2RKq4=;
 b=FmmT6eoUuV1tyIQFcXFg0X6NTei4spnjn85e5OLtQfmqIimoI7UuvObrRv8zkET8mBGKY
 42AwuxZp4xCBtQbktSIyj3lXlWsi/3H4thWDwWSeKjC3nWQRXQjUduadx2M5zhabv2d1Lpj
 HjINtGBQcYptoc9VyHMrb7IHO9QAAf8=
ARC-Authentication-Results: i=2; open-mesh.org; dkim=fail;
  arc=pass;
  dmarc=fail (Used Org Domain Record) header.from=syzkaller.appspotmail.com
 policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=fail; arc=pass;
 dmarc=fail (Used Org Domain Record) header.from=syzkaller.appspotmail.com
 policy.dmarc=none
Received: from mail-io1-f79.google.com (mail-io1-f79.google.com
 [209.85.166.79])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id D9DB380868
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 21 Jun 2023 20:27:14 +0200 (CEST)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1687372034;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type;
	bh=SM44jaBHDK4+HpvQQwzk0Gkvb0ZUSmlYthl5LL2RKq4=;
	b=pPlUWov4bda3etcusDSkzTjZbnRrJbcaiXuLnYQkx5TX4uNOZfduhT5rRDBvcmDcXEmMjp
	Un3f2Gd3q2l+ZSoRAYQZZFhLk2NqGSLvLCUKbPksbJf2ccOaXqFXoG24PSqu2di71MZnUY
	yNdmdMATOr56FCzcOGCtGA59o6gwOi4=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1687372034; a=rsa-sha256;
	cv=none;
	b=rFLnnexhMTlw8ToLNlazB+X8ehsHf7H+pvKQm+EQCJCk3XuRAaNk6FLFrJjjWut0MwcTfw
	3j0vsiLhUGd7UIK6GhO+GuHE/AH5BZq9XqPcvZXxh2eLrIkRynKr+7VBCy3e35NQj1ealC
	FmrqDc/6fmENH2vPBMYkzvU4+y5TNII=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	dmarc=fail reason="SPF not aligned (relaxed),
 No valid DKIM" header.from=appspotmail.com (policy=none);
	spf=pass (diktynna.open-mesh.org: domain of
 3AUGTZAkbAPou01mcnngtcrrkf.iqqingwugteqpvgpv.eqo@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
 designates 209.85.166.79 as permitted sender)
 smtp.mailfrom=3AUGTZAkbAPou01mcnngtcrrkf.iqqingwugteqpvgpv.eqo@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
Received: by mail-io1-f79.google.com with SMTP id
 ca18e2360f4ac-77e365f5bd6so443526039f.1
        for <b.a.t.m.a.n@lists.open-mesh.org>;
 Wed, 21 Jun 2023 11:27:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687372033; x=1689964033;
        h=to:from:subject:message-id:date:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=SM44jaBHDK4+HpvQQwzk0Gkvb0ZUSmlYthl5LL2RKq4=;
        b=MhrxeKQmM21olNTp0ygRw1OWr7Y0lkJeyBRbylurLX353Yldh0OZXhUV2gCkMRh4JQ
         fk3s87EaqoDp9389iX+NWIyY9lN44mb0KGrTN+JQMcp6cOsAt7MEiOLDEUHQqRFVeiYJ
         JzPRM+Kr6+quikl4TUeOb0jAiO8myWi0LG+savhHwgFM1x8kM1B90L7e0C6XJLTkhU6B
         SbMDT0aonCSScbs+MMKaeuJw62bSP/tAccXvGisN/hp4RLTHPNj85BxG6B5jQFQ8iLNw
         wBRRY3Frw1UkVD5JHbNcaZxCPj9xEdATeE2jyEj5dgF3pkEvWAdD/53fQjpbrmHN22SZ
         sMCg==
X-Gm-Message-State: AC+VfDzyQxzF88gArRtJAvZDu8b/I2y/6EprMP8UABzVkdYjtuxkJhXO
	CUv3icI4OAv2v6xu04f5tkHEw3JLnGruCSnwNi20n5emn/Wq
X-Google-Smtp-Source: 
 ACHHUZ7jHo5FZZPRy71WKzHWombGzEdTy3syd1PGh14WTAvKMyegefApYIwOM5qO5JZsvxJE4Ymtvh1w2P2gpX99qmq0SKTpEGsy
MIME-Version: 1.0
X-Received: by 2002:a02:9402:0:b0:426:7963:1177 with SMTP id
 a2-20020a029402000000b0042679631177mr3463331jai.0.1687372033518; Wed, 21 Jun
 2023 11:27:13 -0700 (PDT)
Date: Wed, 21 Jun 2023 11:27:13 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000a973eb05fea7ea3d@google.com>
Subject: [syzbot] [batman?] WARNING in batadv_dat_free (2)
From: syzbot <syzbot+6c881e6772625dc7feed@syzkaller.appspotmail.com>
To: a@unstable.cc, b.a.t.m.a.n@lists.open-mesh.org, davem@davemloft.net,
	edumazet@google.com, kuba@kernel.org, linux-kernel@vger.kernel.org,
	mareklindner@neomailbox.ch, netdev@vger.kernel.org, pabeni@redhat.com,
	sven@narfation.org, sw@simonwunderlich.de, syzkaller-bugs@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
Message-ID-Hash: RBJBS2WUZOAHJX3T55H3UBLYT7BBH23M
X-Message-ID-Hash: RBJBS2WUZOAHJX3T55H3UBLYT7BBH23M
X-MailFrom: 
 3AUGTZAkbAPou01mcnngtcrrkf.iqqingwugteqpvgpv.eqo@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency;
 loop; banned-address; member-moderation;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-0;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.8
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/RBJBS2WUZOAHJX3T55H3UBLYT7BBH23M/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Hello,

syzbot found the following issue on:

HEAD commit:    970308a7b544 selftests/bpf: Set the default value of consu..
git tree:       bpf-next
console output: https://syzkaller.appspot.com/x/log.txt?x=1788094b280000
kernel config:  https://syzkaller.appspot.com/x/.config?x=ba5f40cc4484255a
dashboard link: https://syzkaller.appspot.com/bug?extid=6c881e6772625dc7feed
compiler:       gcc (Debian 10.2.1-6) 10.2.1 20210110, GNU ld (GNU Binutils for Debian) 2.35.2

Unfortunately, I don't have any reproducer for this issue yet.

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/fc4c2bba1144/disk-970308a7.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/1075dd8a55dc/vmlinux-970308a7.xz
kernel image: https://storage.googleapis.com/syzbot-assets/59f3fdc83b37/bzImage-970308a7.xz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+6c881e6772625dc7feed@syzkaller.appspotmail.com

bond0 (unregistering): (slave bond_slave_1): Releasing backup interface
bond0 (unregistering): (slave bond_slave_0): Releasing backup interface
bond0 (unregistering): Released all slaves
------------[ cut here ]------------
WARNING: CPU: 1 PID: 1005 at kernel/workqueue.c:642 set_work_data kernel/workqueue.c:642 [inline]
WARNING: CPU: 1 PID: 1005 at kernel/workqueue.c:642 clear_work_data kernel/workqueue.c:705 [inline]
WARNING: CPU: 1 PID: 1005 at kernel/workqueue.c:642 __cancel_work_timer+0x4d1/0x570 kernel/workqueue.c:3278
Modules linked in:
CPU: 1 PID: 1005 Comm: kworker/u4:5 Not tainted 6.4.0-rc3-syzkaller-00722-g970308a7b544 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 05/27/2023
Workqueue: netns cleanup_net
RIP: 0010:set_work_data kernel/workqueue.c:642 [inline]
RIP: 0010:clear_work_data kernel/workqueue.c:705 [inline]
RIP: 0010:__cancel_work_timer+0x4d1/0x570 kernel/workqueue.c:3278
Code: e8 34 08 0e 00 e9 e1 fb ff ff e8 2a 41 30 00 e8 55 f5 bb 08 e9 51 fd ff ff e8 1b 41 30 00 0f 0b e9 a6 fc ff ff e8 0f 41 30 00 <0f> 0b e9 c0 fd ff ff e8 b3 4e 83 00 e9 fd fe ff ff e8 f9 40 30 00
RSP: 0018:ffffc90005237920 EFLAGS: 00010293
RAX: 0000000000000000 RBX: 0000000000000000 RCX: 0000000000000000
RDX: ffff88802076d940 RSI: ffffffff815401c1 RDI: 0000000000000001
RBP: 0000000000000000 R08: 0000000000000001 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000000 R12: ffff888019b654b0
R13: 1ffff92000a46f25 R14: 0000000000000001 R15: ffff88802076d940
FS:  0000000000000000(0000) GS:ffff8880b9900000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00007f31ad4beba8 CR3: 000000002a10a000 CR4: 00000000003506e0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000600
Call Trace:
 <TASK>
 batadv_dat_free+0x45/0xe0 net/batman-adv/distributed-arp-table.c:840
 batadv_mesh_free+0x89/0x170 net/batman-adv/main.c:270
 batadv_softif_free+0x15/0x20 net/batman-adv/soft-interface.c:984
 netdev_run_todo+0x6bf/0x1100 net/core/dev.c:10395
 default_device_exit_batch+0x456/0x5b0 net/core/dev.c:11395
 ops_exit_list+0x125/0x170 net/core/net_namespace.c:175
 cleanup_net+0x4ee/0xb10 net/core/net_namespace.c:614
 process_one_work+0x99a/0x15e0 kernel/workqueue.c:2405
 worker_thread+0x67d/0x10c0 kernel/workqueue.c:2552
 kthread+0x344/0x440 kernel/kthread.c:379
 ret_from_fork+0x1f/0x30 arch/x86/entry/entry_64.S:308
 </TASK>


---
This report is generated by a bot. It may contain errors.
See https://goo.gl/tpsmEJ for more information about syzbot.
syzbot engineers can be reached at syzkaller@googlegroups.com.

syzbot will keep track of this issue. See:
https://goo.gl/tpsmEJ#status for how to communicate with syzbot.

If the bug is already fixed, let syzbot know by replying with:
#syz fix: exact-commit-title

If you want to change bug's subsystems, reply with:
#syz set subsystems: new-subsystem
(See the list of subsystem names on the web dashboard)

If the bug is a duplicate of another bug, reply with:
#syz dup: exact-subject-of-another-report

If you want to undo deduplication, reply with:
#syz undup
