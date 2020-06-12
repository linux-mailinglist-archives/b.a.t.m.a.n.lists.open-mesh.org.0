Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 632B91F792C
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 12 Jun 2020 15:58:44 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 27D9A80DFD;
	Fri, 12 Jun 2020 15:58:43 +0200 (CEST)
Received: from out02.mta.xmission.com (out02.mta.xmission.com [166.70.13.232])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 5DC3C8020F
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 12 Jun 2020 15:46:15 +0200 (CEST)
Received: from in01.mta.xmission.com ([166.70.13.51])
	by out02.mta.xmission.com with esmtps (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
	(Exim 4.90_1)
	(envelope-from <ebiederm@xmission.com>)
	id 1jjk0O-0007fD-33; Fri, 12 Jun 2020 07:46:00 -0600
Received: from ip68-227-160-95.om.om.cox.net ([68.227.160.95] helo=x220.xmission.com)
	by in01.mta.xmission.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.87)
	(envelope-from <ebiederm@xmission.com>)
	id 1jjk0L-0004fP-TX; Fri, 12 Jun 2020 07:45:59 -0600
From: ebiederm@xmission.com (Eric W. Biederman)
To: syzbot <syzbot+7d2debdcdb3cb93c1e5e@syzkaller.appspotmail.com>
References: <000000000000d788c905a7dfa3f4@google.com>
Date: Fri, 12 Jun 2020 08:41:47 -0500
In-Reply-To: <000000000000d788c905a7dfa3f4@google.com> (syzbot's message of
	"Fri, 12 Jun 2020 02:24:11 -0700")
Message-ID: <87sgf0pfj8.fsf@x220.int.ebiederm.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain
X-XM-SPF: eid=1jjk0L-0004fP-TX;;;mid=<87sgf0pfj8.fsf@x220.int.ebiederm.org>;;;hst=in01.mta.xmission.com;;;ip=68.227.160.95;;;frm=ebiederm@xmission.com;;;spf=neutral
X-XM-AID: U2FsdGVkX1+0CvU5+l3YqM/V9aMzCZld73bktWH3TsA=
X-SA-Exim-Connect-IP: 68.227.160.95
X-SA-Exim-Mail-From: ebiederm@xmission.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on sa06.xmission.com
X-Spam-Level: ******
X-Spam-Status: No, score=6.1 required=8.0 tests=ALL_TRUSTED,BAYES_50,
	DCC_CHECK_NEGATIVE,FVGT_m_MULTI_ODD,LotsOfNums_01,SORTED_RECIPS,
	T_TM2_M_HEADER_IN_MSG,XMGappySubj_01,XMGappySubj_02,XMSubLong
	autolearn=disabled version=3.4.2
X-Spam-Report: 
	* -1.0 ALL_TRUSTED Passed through trusted hosts only via SMTP
	*  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
	*      [score: 0.5000]
	*  0.5 XMGappySubj_01 Very gappy subject
	*  1.0 XMGappySubj_02 Gappier still
	*  0.7 XMSubLong Long Subject
	*  2.5 SORTED_RECIPS Recipient list is sorted by address
	*  1.2 LotsOfNums_01 BODY: Lots of long strings of numbers
	*  0.0 T_TM2_M_HEADER_IN_MSG BODY: No description available.
	* -0.0 DCC_CHECK_NEGATIVE Not listed in DCC
	*      [sa06 0; Body=1 Fuz1=1 Fuz2=1]
	*  0.4 FVGT_m_MULTI_ODD Contains multiple odd letter combinations
X-Spam-DCC: ; sa06 0; Body=1 Fuz1=1 Fuz2=1 
X-Spam-Combo: ******;syzbot
	<syzbot+7d2debdcdb3cb93c1e5e@syzkaller.appspotmail.com>
X-Spam-Relay-Country: 
X-Spam-Timing: total 1362 ms - load_scoreonly_sql: 0.07 (0.0%),
	signal_user_changed: 12 (0.9%), b_tie_ro: 10 (0.8%), parse: 1.54
	(0.1%), extract_message_metadata: 27 (2.0%), get_uri_detail_list: 7
	(0.5%), tests_pri_-1000: 29 (2.2%), tests_pri_-950: 1.32 (0.1%),
	tests_pri_-900: 1.06 (0.1%), tests_pri_-90: 112 (8.2%), check_bayes:
	110 (8.1%), b_tokenize: 20 (1.5%), b_tok_get_all: 16 (1.2%),
	b_comp_prob: 4.7 (0.3%), b_tok_touch_all: 64 (4.7%), b_finish: 0.87
	(0.1%), tests_pri_0: 1165 (85.6%), check_dkim_signature: 0.62 (0.0%),
	check_dkim_adsp: 3.1 (0.2%), poll_dns_idle: 0.49 (0.0%), tests_pri_10:
	2.1 (0.2%), tests_pri_500: 7 (0.5%), rewrite_mail: 0.00 (0.0%)
Subject: Re: KASAN: use-after-free Write in fsnotify_detach_connector_from_object
X-Spam-Flag: No
X-SA-Exim-Version: 4.2.1 (built Thu, 05 May 2016 13:38:54 -0600)
X-SA-Exim-Scanned: Yes (on in01.mta.xmission.com)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1591969575;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=kSH00UMWyzjk84pLwEdBPw1vYNIDKFRo0Aw8t4YnP3w=;
	b=AcjiJLUNufSplcwEeQBFcc94vUfYIor/Gp5MSaAah24McbH8vnyCNiTYDOAmNBcha5ga6A
	6TvW5tXB+Q2WWtovBbAakeOPMD1CMR6BeT3GWopeC6jEsngZoI5+cqa3SkzFFJUk4BcATg
	PveAjHxGhixHIld6RDM8FwiYQ6zQzCc=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1591969575; a=rsa-sha256;
	cv=none;
	b=iBNCN8Dylu4Fwt87rJ0PxyuTirgcG3QyBbXJoyL7ECku+13PELEgmsrhtdmKGUcBCyWiYO
	zTdC9Vqj6NtGA15aYfbTgSyx4rNr8lkySTY/9rqd5S4xB0Jka5EHpw/vHtzC1jPlpsg5Ar
	d4SSTvGZI6EPhHXx7x52AiqBjDNTJ5k=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of ebiederm@xmission.com designates 166.70.13.232 as permitted sender) smtp.mailfrom=ebiederm@xmission.com
X-MailFrom: ebiederm@xmission.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
Message-ID-Hash: EUCJMZA2PDRBVRCHCYDFG5ZSJ3EYUFWL
X-Message-ID-Hash: EUCJMZA2PDRBVRCHCYDFG5ZSJ3EYUFWL
X-Mailman-Approved-At: Fri, 12 Jun 2020 13:58:41 +0200
CC: a@unstable.cc, adobriyan@gmail.com, akpm@linux-foundation.org, alex.dewar@gmx.co.uk, amir73il@gmail.com, anton.ivanov@cambridgegreys.com, b.a.t.m.a.n@lists.open-mesh.org, davem@davemloft.net, jack@suse.cz, jdike@addtoit.com, kuba@kernel.org, linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org, linux-um@lists.infradead.org, mareklindner@neomailbox.ch, netdev@vger.kernel.org, richard@nod.at, sfr@canb.auug.org.au, syzkaller-bugs@googlegroups.com
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/EUCJMZA2PDRBVRCHCYDFG5ZSJ3EYUFWL/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

syzbot <syzbot+7d2debdcdb3cb93c1e5e@syzkaller.appspotmail.com> writes:

> Hello,
>
> syzbot found the following crash on:
>
> HEAD commit:    7ae77150 Merge tag 'powerpc-5.8-1' of git://git.kernel.org..
> git tree:       upstream
> console output: https://syzkaller.appspot.com/x/log.txt?x=120b26c1100000
> kernel config:  https://syzkaller.appspot.com/x/.config?x=d195fe572fb15312
> dashboard link: https://syzkaller.appspot.com/bug?extid=7d2debdcdb3cb93c1e5e
> compiler:       gcc (GCC) 9.0.0 20181231 (experimental)
> syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=1724b246100000
> C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=14ceb3de100000
>
> The bug was bisected to:

That bisection can not be correct.  The commit only added code, and the
code that was added is not in any of the call traces.  Further
the failure on the final commit was different than the other commits
in your bisection.

I will believe commit 69879c01a0c3f70e0887cfb4d9ff439814361e46 ("proc:
Remove the now unnecessary internal mount of proc") is the point at
which things start failing for your reproducer.  That is the change
that makes it possible to actually unmount proc, and for it's super
block to be freed.

Now I don't know why fsnotify is holding on after a filesystem has been
unmounted.  At first glance this looks like a bug in inotify.

It looks like your reproducer is doing:

	mkdir ./file
        mount -t proc ./file
        inotify_init()
        inotify_add_watch(./file, ...);
        umount(./file)
        ...
        exit(0);
        <kaboom>

Then after the exit inotify is falling over because the filesystem has
already been unmounted.

Can anyone who is more familiar with inotify/fsnotify give a clue why
the unmount of the filesystem is not clearing the watch?

Is it a generic bug or is there something proc is not doing?

Eric


> commit 76313c70c52f930af4afd21684509ca52297ea71
> Author: Eric W. Biederman <ebiederm@xmission.com>
> Date:   Wed Feb 19 16:37:15 2020 +0000
>
>     uml: Create a private mount of proc for mconsole
>
> bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=117c4912100000
> final crash:    https://syzkaller.appspot.com/x/report.txt?x=137c4912100000
> console output: https://syzkaller.appspot.com/x/log.txt?x=157c4912100000
>
> IMPORTANT: if you fix the bug, please add the following tag to the commit:
> Reported-by: syzbot+7d2debdcdb3cb93c1e5e@syzkaller.appspotmail.com
> Fixes: 76313c70c52f ("uml: Create a private mount of proc for mconsole")
>
> ==================================================================
> BUG: KASAN: use-after-free in atomic64_inc include/asm-generic/atomic-instrumented.h:1049 [inline]
> BUG: KASAN: use-after-free in atomic_long_inc include/asm-generic/atomic-long.h:160 [inline]
> BUG: KASAN: use-after-free in fsnotify_detach_connector_from_object+0x25e/0x380 fs/notify/mark.c:185
> Write of size 8 at addr ffff88809fd7e7c0 by task syz-executor972/8021
>
> CPU: 1 PID: 8021 Comm: syz-executor972 Not tainted 5.7.0-syzkaller #0
> Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 01/01/2011
> Call Trace:
>  __dump_stack lib/dump_stack.c:77 [inline]
>  dump_stack+0x188/0x20d lib/dump_stack.c:118
>  print_address_description.constprop.0.cold+0xd3/0x413 mm/kasan/report.c:383
>  __kasan_report mm/kasan/report.c:513 [inline]
>  kasan_report.cold+0x1f/0x37 mm/kasan/report.c:530
>  check_memory_region_inline mm/kasan/generic.c:186 [inline]
>  check_memory_region+0x141/0x190 mm/kasan/generic.c:192
>  atomic64_inc include/asm-generic/atomic-instrumented.h:1049 [inline]
>  atomic_long_inc include/asm-generic/atomic-long.h:160 [inline]
>  fsnotify_detach_connector_from_object+0x25e/0x380 fs/notify/mark.c:185
>  fsnotify_put_mark+0x367/0x580 fs/notify/mark.c:250
>  fsnotify_clear_marks_by_group+0x33f/0x490 fs/notify/mark.c:764
>  fsnotify_destroy_group+0xc9/0x300 fs/notify/group.c:61
>  inotify_release+0x33/0x40 fs/notify/inotify/inotify_user.c:271
>  __fput+0x33e/0x880 fs/file_table.c:281
>  task_work_run+0xf4/0x1b0 kernel/task_work.c:123
>  exit_task_work include/linux/task_work.h:22 [inline]
>  do_exit+0xb3f/0x2de0 kernel/exit.c:806
>  do_group_exit+0x125/0x340 kernel/exit.c:904
>  __do_sys_exit_group kernel/exit.c:915 [inline]
>  __se_sys_exit_group kernel/exit.c:913 [inline]
>  __x64_sys_exit_group+0x3a/0x50 kernel/exit.c:913
>  do_syscall_64+0xf6/0x7d0 arch/x86/entry/common.c:295
>  entry_SYSCALL_64_after_hwframe+0x49/0xb3
> RIP: 0033:0x445448
> Code: Bad RIP value.
> RSP: 002b:00007ffe48521018 EFLAGS: 00000246 ORIG_RAX: 00000000000000e7
> RAX: ffffffffffffffda RBX: 0000000000000000 RCX: 0000000000445448
> RDX: 0000000000000000 RSI: 000000000000003c RDI: 0000000000000000
> RBP: 00000000004cca90 R08: 00000000000000e7 R09: ffffffffffffffd0
> R10: 00007ffe48521060 R11: 0000000000000246 R12: 0000000000000001
> R13: 00000000006e0340 R14: 0000000000000007 R15: 000000000000002d
>
> Allocated by task 8026:
>  save_stack+0x1b/0x40 mm/kasan/common.c:48
>  set_track mm/kasan/common.c:56 [inline]
>  __kasan_kmalloc mm/kasan/common.c:494 [inline]
>  __kasan_kmalloc.constprop.0+0xbf/0xd0 mm/kasan/common.c:467
>  kmem_cache_alloc_trace+0x153/0x7d0 mm/slab.c:3551
>  kmalloc include/linux/slab.h:555 [inline]
>  kzalloc include/linux/slab.h:669 [inline]
>  alloc_super+0x52/0x9d0 fs/super.c:203
>  sget_fc+0x13f/0x790 fs/super.c:530
>  vfs_get_super+0x6d/0x2d0 fs/super.c:1186
>  vfs_get_tree+0x89/0x2f0 fs/super.c:1547
>  do_new_mount fs/namespace.c:2874 [inline]
>  do_mount+0x1306/0x1b40 fs/namespace.c:3199
>  __do_sys_mount fs/namespace.c:3409 [inline]
>  __se_sys_mount fs/namespace.c:3386 [inline]
>  __x64_sys_mount+0x18f/0x230 fs/namespace.c:3386
>  do_syscall_64+0xf6/0x7d0 arch/x86/entry/common.c:295
>  entry_SYSCALL_64_after_hwframe+0x49/0xb3
>
> Freed by task 23:
>  save_stack+0x1b/0x40 mm/kasan/common.c:48
>  set_track mm/kasan/common.c:56 [inline]
>  kasan_set_free_info mm/kasan/common.c:316 [inline]
>  __kasan_slab_free+0xf7/0x140 mm/kasan/common.c:455
>  __cache_free mm/slab.c:3426 [inline]
>  kfree+0x109/0x2b0 mm/slab.c:3757
>  process_one_work+0x965/0x16a0 kernel/workqueue.c:2268
>  worker_thread+0x96/0xe20 kernel/workqueue.c:2414
>  kthread+0x388/0x470 kernel/kthread.c:268
>  ret_from_fork+0x24/0x30 arch/x86/entry/entry_64.S:351
>
> The buggy address belongs to the object at ffff88809fd7e000
>  which belongs to the cache kmalloc-4k of size 4096
> The buggy address is located 1984 bytes inside of
>  4096-byte region [ffff88809fd7e000, ffff88809fd7f000)
> The buggy address belongs to the page:
> page:ffffea00027f5f80 refcount:1 mapcount:0 mapping:0000000000000000 index:0x0 head:ffffea00027f5f80 order:1 compound_mapcount:0
> flags: 0xfffe0000010200(slab|head)
> raw: 00fffe0000010200 ffffea000247aa88 ffffea000242ef08 ffff8880aa002000
> raw: 0000000000000000 ffff88809fd7e000 0000000100000001 0000000000000000
> page dumped because: kasan: bad access detected
>
> Memory state around the buggy address:
>  ffff88809fd7e680: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
>  ffff88809fd7e700: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
>>ffff88809fd7e780: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
>                                            ^
>  ffff88809fd7e800: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
>  ffff88809fd7e880: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
> ==================================================================
>
>
> ---
> This bug is generated by a bot. It may contain errors.
> See https://goo.gl/tpsmEJ for more information about syzbot.
> syzbot engineers can be reached at syzkaller@googlegroups.com.
>
> syzbot will keep track of this bug report. See:
> https://goo.gl/tpsmEJ#status for how to communicate with syzbot.
> For information about bisection process see: https://goo.gl/tpsmEJ#bisection
> syzbot can test patches for this bug, for details see:
> https://goo.gl/tpsmEJ#testing-patches
