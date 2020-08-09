Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id D992623FF35
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun,  9 Aug 2020 18:27:22 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id A7220800AD;
	Sun,  9 Aug 2020 18:27:21 +0200 (CEST)
Received: from mail-io1-f69.google.com (mail-io1-f69.google.com [209.85.166.69])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id F100A8003B
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun,  9 Aug 2020 18:27:18 +0200 (CEST)
Received: by mail-io1-f69.google.com with SMTP id k5so5373783ion.17
        for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 09 Aug 2020 09:27:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
        bh=4XSXq+pkr3PFjgGjwOy8V7S5LJrWfQdXc+zd762spFo=;
        b=Wb8CNz36SeZJjVYbzBHeg8xCWImuYOqIIoubXG1wvb02/rgtdl0uybwTLFskGDQaBt
         LaAdrSgAnyuLI0odZTBf5Eee2/SJwfuS2WPf1fY+/dQOZ9ift5u5LNregUNJXtaSwmDZ
         nwFPOqJ6LdC6Z6iEFlvmH8jeS9bgM7HfsNG3QZax13MgDDn5k/e1OHK27ue1Opi8tlDc
         0yXvRpVp5ov+GaAo07n3fGV5louHbWYjRMzbvnfg5zPGSGbx7HEBM6VQXl69oed7jygN
         3A8Yt+l+fxH5qknyoEYi52teHfrP+M7A8QGOtqC+nI0RhhW4q4rEtZw6TqFhBt3YweQz
         Ey7w==
X-Gm-Message-State: AOAM5305t9/vojbx/Jluf1KbwLFNkEV3NCQoZKZDkKIHPwMROdxYyovW
	8tr2euuI9OofE45bf3b2PGg3e4n6oH1xiA+OlCZIs7prUEJG
X-Google-Smtp-Source: ABdhPJxCb8Fc9gj7xJ+738Iy5K3TiYRUKs+DEiRZYCnd9cRMmFmxLa8rdrZjOLEpssozQCq8J6+vTEW/PuRy1QsjTxu8mqAFxiNp
MIME-Version: 1.0
X-Received: by 2002:a92:480f:: with SMTP id v15mr13207248ila.123.1596990437671;
 Sun, 09 Aug 2020 09:27:17 -0700 (PDT)
Date: Sun, 09 Aug 2020 09:27:17 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000bf4b3605ac744f22@google.com>
Subject: KMSAN: uninit-value in batadv_hard_if_event (2)
From: syzbot <syzbot+abbc768b560c84d92fd3@syzkaller.appspotmail.com>
To: a@unstable.cc, b.a.t.m.a.n@lists.open-mesh.org, davem@davemloft.net,
	glider@google.com, kuba@kernel.org, linux-kernel@vger.kernel.org,
	mareklindner@neomailbox.ch, netdev@vger.kernel.org, sven@narfation.org,
	sw@simonwunderlich.de, syzkaller-bugs@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1596990439;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type;
	bh=4XSXq+pkr3PFjgGjwOy8V7S5LJrWfQdXc+zd762spFo=;
	b=NvSHNqp6hupmUI62v/3JfSZjp0+dgy9kgxRGpWvu0FYRIzTv1TrNKqHsF43U+Sg61k0VkR
	iuJygfTHurqjaj3hhrLLPUaT3bNgCOOXgwRF4eXrENezlIYFQglPmv/wEJp0O3TNa1AkVm
	dVSblZaiWtlROnYTSrBp3qjQDGoLo9A=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1596990439; a=rsa-sha256;
	cv=none;
	b=fmOdk1lZ2Ke2Eb6dvFhx0cGUvRDFF7rQMD0vEpzogF+c3nUWPLPn1p/35hTIFnqo87stah
	gVl8m1vFLMDkXVWJglAh8Oizyh2vyiefI4VMklCyop/6iRk9uDKz6YOPlYQHHSFLSF2Wa2
	3X9sKnsC0KMN3oRoF3Q6mcG0xyktFrA=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of 35SMwXwkbAOwgmnYOZZSfOddWR.UccUZSigSfQcbhSbh.Qca@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com designates 209.85.166.69 as permitted sender) smtp.mailfrom=35SMwXwkbAOwgmnYOZZSfOddWR.UccUZSigSfQcbhSbh.Qca@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
Message-ID-Hash: XWVHL5YACT3JDAVDILR55YCSHNTE6JG5
X-Message-ID-Hash: XWVHL5YACT3JDAVDILR55YCSHNTE6JG5
X-MailFrom: 35SMwXwkbAOwgmnYOZZSfOddWR.UccUZSigSfQcbhSbh.Qca@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/XWVHL5YACT3JDAVDILR55YCSHNTE6JG5/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Hello,

syzbot found the following issue on:

HEAD commit:    ce8056d1 wip: changed copy_from_user where instrumented
git tree:       https://github.com/google/kmsan.git master
console output: https://syzkaller.appspot.com/x/log.txt?x=106e4c3c900000
kernel config:  https://syzkaller.appspot.com/x/.config?x=3afe005fb99591f
dashboard link: https://syzkaller.appspot.com/bug?extid=abbc768b560c84d92fd3
compiler:       clang version 10.0.0 (https://github.com/llvm/llvm-project/ c2443155a0fb245c8f17f2c1c72b6ea391e86e81)
userspace arch: i386

Unfortunately, I don't have any reproducer for this issue yet.

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+abbc768b560c84d92fd3@syzkaller.appspotmail.com

usb 1-1: config 0 descriptor??
=====================================================
BUG: KMSAN: uninit-value in batadv_check_known_mac_addr net/batman-adv/hard-interface.c:512 [inline]
BUG: KMSAN: uninit-value in batadv_hardif_add_interface net/batman-adv/hard-interface.c:944 [inline]
BUG: KMSAN: uninit-value in batadv_hard_if_event+0x28d7/0x3bd0 net/batman-adv/hard-interface.c:1034
CPU: 0 PID: 8697 Comm: kworker/0:3 Not tainted 5.8.0-rc5-syzkaller #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 01/01/2011
Workqueue: usb_hub_wq hub_event
Call Trace:
 __dump_stack lib/dump_stack.c:77 [inline]
 dump_stack+0x21c/0x280 lib/dump_stack.c:118
 kmsan_report+0xf7/0x1e0 mm/kmsan/kmsan_report.c:121
 __msan_warning+0x58/0xa0 mm/kmsan/kmsan_instr.c:215
 batadv_check_known_mac_addr net/batman-adv/hard-interface.c:512 [inline]
 batadv_hardif_add_interface net/batman-adv/hard-interface.c:944 [inline]
 batadv_hard_if_event+0x28d7/0x3bd0 net/batman-adv/hard-interface.c:1034
 notifier_call_chain kernel/notifier.c:83 [inline]
 __raw_notifier_call_chain kernel/notifier.c:361 [inline]
 raw_notifier_call_chain+0x123/0x290 kernel/notifier.c:368
 call_netdevice_notifiers_info net/core/dev.c:2027 [inline]
 call_netdevice_notifiers_extack net/core/dev.c:2039 [inline]
 call_netdevice_notifiers net/core/dev.c:2053 [inline]
 register_netdevice+0x3120/0x37d0 net/core/dev.c:9545
 register_netdev+0xbe/0x100 net/core/dev.c:9645
 rtl8150_probe+0x12d9/0x15b0 drivers/net/usb/rtl8150.c:916
 usb_probe_interface+0xece/0x1550 drivers/usb/core/driver.c:374
 really_probe+0xf20/0x20b0 drivers/base/dd.c:529
 driver_probe_device+0x293/0x390 drivers/base/dd.c:701
 __device_attach_driver+0x63f/0x830 drivers/base/dd.c:807
 bus_for_each_drv+0x2ca/0x3f0 drivers/base/bus.c:431
 __device_attach+0x4e2/0x7f0 drivers/base/dd.c:873
 device_initial_probe+0x4a/0x60 drivers/base/dd.c:920
 bus_probe_device+0x177/0x3d0 drivers/base/bus.c:491
 device_add+0x3b0e/0x40d0 drivers/base/core.c:2680
 usb_set_configuration+0x380f/0x3f10 drivers/usb/core/message.c:2032
 usb_generic_driver_probe+0x138/0x300 drivers/usb/core/generic.c:241
 usb_probe_device+0x311/0x490 drivers/usb/core/driver.c:272
 really_probe+0xf20/0x20b0 drivers/base/dd.c:529
 driver_probe_device+0x293/0x390 drivers/base/dd.c:701
 __device_attach_driver+0x63f/0x830 drivers/base/dd.c:807
 bus_for_each_drv+0x2ca/0x3f0 drivers/base/bus.c:431
 __device_attach+0x4e2/0x7f0 drivers/base/dd.c:873
 device_initial_probe+0x4a/0x60 drivers/base/dd.c:920
 bus_probe_device+0x177/0x3d0 drivers/base/bus.c:491
 device_add+0x3b0e/0x40d0 drivers/base/core.c:2680
 usb_new_device+0x1bd4/0x2a30 drivers/usb/core/hub.c:2554
 hub_port_connect drivers/usb/core/hub.c:5208 [inline]
 hub_port_connect_change drivers/usb/core/hub.c:5348 [inline]
 port_event drivers/usb/core/hub.c:5494 [inline]
 hub_event+0x5e7b/0x8a70 drivers/usb/core/hub.c:5576
 process_one_work+0x1688/0x2140 kernel/workqueue.c:2269
 worker_thread+0x10bc/0x2730 kernel/workqueue.c:2415
 kthread+0x551/0x590 kernel/kthread.c:292
 ret_from_fork+0x1f/0x30 arch/x86/entry/entry_64.S:293

Uninit was stored to memory at:
 kmsan_save_stack_with_flags mm/kmsan/kmsan.c:144 [inline]
 kmsan_internal_chain_origin+0xad/0x130 mm/kmsan/kmsan.c:310
 kmsan_memcpy_memmove_metadata+0x272/0x2e0 mm/kmsan/kmsan.c:247
 kmsan_memcpy_metadata+0xb/0x10 mm/kmsan/kmsan.c:267
 __msan_memcpy+0x43/0x50 mm/kmsan/kmsan_instr.c:116
 set_ethernet_addr drivers/net/usb/rtl8150.c:282 [inline]
 rtl8150_probe+0x1236/0x15b0 drivers/net/usb/rtl8150.c:912
 usb_probe_interface+0xece/0x1550 drivers/usb/core/driver.c:374
 really_probe+0xf20/0x20b0 drivers/base/dd.c:529
 driver_probe_device+0x293/0x390 drivers/base/dd.c:701
 __device_attach_driver+0x63f/0x830 drivers/base/dd.c:807
 bus_for_each_drv+0x2ca/0x3f0 drivers/base/bus.c:431
 __device_attach+0x4e2/0x7f0 drivers/base/dd.c:873
 device_initial_probe+0x4a/0x60 drivers/base/dd.c:920
 bus_probe_device+0x177/0x3d0 drivers/base/bus.c:491
 device_add+0x3b0e/0x40d0 drivers/base/core.c:2680
 usb_set_configuration+0x380f/0x3f10 drivers/usb/core/message.c:2032
 usb_generic_driver_probe+0x138/0x300 drivers/usb/core/generic.c:241
 usb_probe_device+0x311/0x490 drivers/usb/core/driver.c:272
 really_probe+0xf20/0x20b0 drivers/base/dd.c:529
 driver_probe_device+0x293/0x390 drivers/base/dd.c:701
 __device_attach_driver+0x63f/0x830 drivers/base/dd.c:807
 bus_for_each_drv+0x2ca/0x3f0 drivers/base/bus.c:431
 __device_attach+0x4e2/0x7f0 drivers/base/dd.c:873
 device_initial_probe+0x4a/0x60 drivers/base/dd.c:920
 bus_probe_device+0x177/0x3d0 drivers/base/bus.c:491
 device_add+0x3b0e/0x40d0 drivers/base/core.c:2680
 usb_new_device+0x1bd4/0x2a30 drivers/usb/core/hub.c:2554
 hub_port_connect drivers/usb/core/hub.c:5208 [inline]
 hub_port_connect_change drivers/usb/core/hub.c:5348 [inline]
 port_event drivers/usb/core/hub.c:5494 [inline]
 hub_event+0x5e7b/0x8a70 drivers/usb/core/hub.c:5576
 process_one_work+0x1688/0x2140 kernel/workqueue.c:2269
 worker_thread+0x10bc/0x2730 kernel/workqueue.c:2415
 kthread+0x551/0x590 kernel/kthread.c:292
 ret_from_fork+0x1f/0x30 arch/x86/entry/entry_64.S:293

Local variable ----node_id.i@rtl8150_probe created at:
 get_registers drivers/net/usb/rtl8150.c:911 [inline]
 set_ethernet_addr drivers/net/usb/rtl8150.c:281 [inline]
 rtl8150_probe+0xea7/0x15b0 drivers/net/usb/rtl8150.c:912
 get_registers drivers/net/usb/rtl8150.c:911 [inline]
 set_ethernet_addr drivers/net/usb/rtl8150.c:281 [inline]
 rtl8150_probe+0xea7/0x15b0 drivers/net/usb/rtl8150.c:912
=====================================================


---
This report is generated by a bot. It may contain errors.
See https://goo.gl/tpsmEJ for more information about syzbot.
syzbot engineers can be reached at syzkaller@googlegroups.com.

syzbot will keep track of this issue. See:
https://goo.gl/tpsmEJ#status for how to communicate with syzbot.
