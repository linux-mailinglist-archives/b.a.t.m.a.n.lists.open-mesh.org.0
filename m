Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 7388527FDA0
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu,  1 Oct 2020 12:46:59 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 65580807FD;
	Thu,  1 Oct 2020 12:46:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1601549218;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=p07uwvCUJSCwu7yLJfadRxH2QpONxCJX87JOGiM6cwI=;
	b=M+9yNUp2nje/ZCj5ejVDCuL5SAvK7H5lVO3TaGq+kp1W9H4gb2gkhRYtZkveDL3i9rpVZN
	KHbaxsrvpbMyjYXRsA5aGccvl2oCIgIU/YcQ57zQPXGWKCK20VyUN+QxDwYdjNZSmoTgcV
	vfuW95SiqoLD/4324no2BlxkVlYQtsw=
References: <0000000000009d327505b0999237@google.com>
In-Reply-To: <0000000000009d327505b0999237@google.com>
Date: Thu, 1 Oct 2020 12:46:41 +0200
Subject: Re: INFO: rcu detected stall in batadv_nc_worker (3)
To: syzbot <syzbot+69904c3b4a09e8fa2e1b@syzkaller.appspotmail.com>,
	mareklindner@neomailbox.ch, sw@simonwunderlich.de, a@unstable.cc,
	Sven Eckelmann <sven@narfation.org>, David Miller <davem@davemloft.net>,
	Jakub Kicinski <kuba@kernel.org>, b.a.t.m.a.n@lists.open-mesh.org,
	netdev <netdev@vger.kernel.org>
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
X-Mailman-Version: 3.2.1
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/HZN6NKEIY6JRCOFXE3O7OGPPUXGBVC3U/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>
MIME-Version: 1.0
Message-ID: <160154921734.1228.15324070510551616568@diktynna.open-mesh.org>
From: "Dmitry Vyukov via B.A.T.M.A.N" <b.a.t.m.a.n@lists.open-mesh.org>
Cc: LKML <linux-kernel@vger.kernel.org>, syzkaller-bugs <syzkaller-bugs@googlegroups.com>, Thomas Gleixner <tglx@linutronix.de>, Dmitry Vyukov <dvyukov@google.com>
Content-Type: multipart/mixed; boundary="===============8310299676255407502=="

--===============8310299676255407502==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============8310299676255407502==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from mail-qk1-x741.google.com (mail-qk1-x741.google.com [IPv6:2607:f8b0:4864:20::741])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 7746980172
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu,  1 Oct 2020 12:46:55 +0200 (CEST)
Received: by mail-qk1-x741.google.com with SMTP id x201so4701636qkb.11
        for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 01 Oct 2020 03:46:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=NxaIqq02Za6HdVNvlSLnwH7tO4V68CmBHj9CKWt7SKM=;
        b=paNqhF0F9UGE/GgxCylci+8zNXF4f2pEJ85z9lHARV2O3OUXoQMabIbSj93tKq8FER
         OAP0nT3qBJJX8dpiyQWmfnKriiXApUuBgngASCbozTpU8Re5f+vITffltcmhHloYy7Uo
         o5RPje6p2Ub5wWDD5DP4c9Xza/C+tuRmz+pX/qKr6Vq6bHY1N6Y5204J747MF1zDGvst
         JmhIPXc0yPbIASSuua/0GpO52OkmJQFLCTjkiiytbS9r6t3XhLfd9/a2wF320D3fFoMS
         dpzt0wpN3n01Zj2yRt0pBvagpQPYqruv2ppWpzdgHpaRb2NbbPKvtZp+D6Foqg8D08kj
         M+cQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=NxaIqq02Za6HdVNvlSLnwH7tO4V68CmBHj9CKWt7SKM=;
        b=fz/Dv3cfzu678nvWDCdD99Gh7EgThoPmaZH0o03l78YU5Jd0MDjxyJuaZMYePaNHjf
         y6W71wDrOVSEePNAbm//wrZ26jd+rg79EhvmR4Y/xFKe7zqhEnWeOPIE/OepEaRIvVtD
         Ec8nZk15pRYB37hz0x6JBHKITTfYQzp/uJamUa39QqVKc9uufA2bCfSLfHOgKkCnx9+e
         B7U3E6KRtun6QBCE2XogB11apZHpgXtvkAOP0Vn4gUPJX9uAj3qxpje2pe32/qd7NIPw
         m8hLRkI/RPRLfXssrDAuf8kJqDudNOwhZiT2lFyzh3GEMg5pV+GqN+Ldhe0/d5odJEL2
         in+g==
X-Gm-Message-State: AOAM533az8Guv/RBy/7QamQ4pj1Zex6MbbhI0LZObBqE3uDP+LCy/Q+B
	tU8Yaswh3qDQVjRia67QPe3WaDNwyTqmlHOEXh+1cg==
X-Google-Smtp-Source: ABdhPJzQtuX7AillBtZefadTG0qjZHNjGCL1bCtT0BrigvqojThJniY5FV5d1A3bs21KxCXgP9J7VM1bQmmY/XfpAsk=
X-Received: by 2002:a37:5684:: with SMTP id k126mr6630526qkb.43.1601549213981;
 Thu, 01 Oct 2020 03:46:53 -0700 (PDT)
MIME-Version: 1.0
References: <0000000000009d327505b0999237@google.com>
In-Reply-To: <0000000000009d327505b0999237@google.com>
From: Dmitry Vyukov <dvyukov@google.com>
Date: Thu, 1 Oct 2020 12:46:41 +0200
Message-ID: <CACT4Y+YXm7aPTd9hvA3Jj4Xz1ZwR+wZ4bdvYFShUJpmjivVScw@mail.gmail.com>
Subject: Re: INFO: rcu detected stall in batadv_nc_worker (3)
To: syzbot <syzbot+69904c3b4a09e8fa2e1b@syzkaller.appspotmail.com>,
	mareklindner@neomailbox.ch, sw@simonwunderlich.de, a@unstable.cc,
	Sven Eckelmann <sven@narfation.org>, David Miller <davem@davemloft.net>,
	Jakub Kicinski <kuba@kernel.org>, b.a.t.m.a.n@lists.open-mesh.org,
	netdev <netdev@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1601549215;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=NxaIqq02Za6HdVNvlSLnwH7tO4V68CmBHj9CKWt7SKM=;
	b=W6Q5zKkdvkZkYM66wtD7OfqCnC3H+OmRH1Sd2hF4tRi1Bd1wSyXyVDehpCaaekorB02+Z/
	3W1ACYycur2Jr5syqPgpMqskikDMWY2CGCMd5b/JuMaJgtY447XqFNddcqQ7Rr6/b1EGwm
	mSrDn56XJTmLtw6akm/MsOWQniIKqes=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1601549215; a=rsa-sha256;
	cv=none;
	b=LBnv5oD10dji0cz70cRVG0vq2nLaEtKs1s7B+M/dis8UxYHZYRkx2QrnKnm3JM8IhIqw1U
	P01E7C5oeC+yysCCnWLfuoavRVOJv8l8RPsZAomaE77Os781eNdbv5sWgJlz4zZBzEKjZ/
	DT204TC30Utz1FEldNQ3VWpj6YKwMF8=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=google.com header.s=20161025 header.b=paNqhF0F;
	spf=pass (diktynna.open-mesh.org: domain of dvyukov@google.com designates 2607:f8b0:4864:20::741 as permitted sender) smtp.mailfrom=dvyukov@google.com
Message-ID-Hash: HZN6NKEIY6JRCOFXE3O7OGPPUXGBVC3U
X-Message-ID-Hash: HZN6NKEIY6JRCOFXE3O7OGPPUXGBVC3U
X-MailFrom: dvyukov@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
CC: LKML <linux-kernel@vger.kernel.org>, syzkaller-bugs <syzkaller-bugs@googlegroups.com>, Thomas Gleixner <tglx@linutronix.de>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/HZN6NKEIY6JRCOFXE3O7OGPPUXGBVC3U/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

On Thu, Oct 1, 2020 at 12:35 PM syzbot
<syzbot+69904c3b4a09e8fa2e1b@syzkaller.appspotmail.com> wrote:
>
> Hello,
>
> syzbot found the following issue on:
>
> HEAD commit:    fffe3ae0 Merge tag 'for-linus-hmm' of git://git.kernel.org..
> git tree:       upstream
> console output: https://syzkaller.appspot.com/x/log.txt?x=17e03342900000
> kernel config:  https://syzkaller.appspot.com/x/.config?x=226c7a97d80bec54
> dashboard link: https://syzkaller.appspot.com/bug?extid=69904c3b4a09e8fa2e1b
> compiler:       clang version 10.0.0 (https://github.com/llvm/llvm-project/ c2443155a0fb245c8f17f2c1c72b6ea391e86e81)
>
> Unfortunately, I don't have any reproducer for this issue yet.
>
> IMPORTANT: if you fix the issue, please add the following tag to the commit:
> Reported-by: syzbot+69904c3b4a09e8fa2e1b@syzkaller.appspotmail.com

+batadv maintainers

May be related to:
KMSAN: uninit-value in batadv_nc_worker
https://syzkaller.appspot.com/bug?extid=da9194708de785081f11

> rcu: INFO: rcu_preempt detected stalls on CPUs/tasks:
> rcu:    0-...!: (1 GPs behind) idle=22e/1/0x4000000000000000 softirq=85361/85365 fqs=8
>         (detected by 1, t=10502 jiffies, g=114061, q=1511)
> Sending NMI from CPU 1 to CPUs 0:
> NMI backtrace for cpu 0
> CPU: 0 PID: 194 Comm: kworker/u4:4 Not tainted 5.8.0-syzkaller #0
> Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 01/01/2011
> Workqueue: bat_events batadv_nc_worker
> RIP: 0010:arch_local_save_flags arch/x86/include/asm/paravirt.h:765 [inline]
> RIP: 0010:arch_local_irq_save arch/x86/include/asm/paravirt.h:787 [inline]
> RIP: 0010:__raw_spin_lock_irqsave include/linux/spinlock_api_smp.h:108 [inline]
> RIP: 0010:_raw_spin_lock_irqsave+0x3c/0xc0 kernel/locking/spinlock.c:159
> Code: 03 49 bf 00 00 00 00 00 fc ff df 42 80 3c 38 00 74 0c 48 c7 c7 b0 d5 4b 89 e8 a0 97 92 f9 48 83 3d 38 61 2a 01 00 74 79 9c 58 <0f> 1f 44 00 00 49 89 c6 48 c7 c0 c0 d5 4b 89 48 c1 e8 03 42 80 3c
> RSP: 0018:ffffc90000007d40 EFLAGS: 00000082
> RAX: 0000000000000082 RBX: ffffffff8ba182b8 RCX: 000000000000d6e0
> RDX: 0000000080010001 RSI: ffffffff894eec80 RDI: ffffffff8ba182b8
> RBP: ffffffff894eec80 R08: ffffffff816542f4 R09: fffff52000000fb0
> R10: fffff52000000fb0 R11: 0000000000000000 R12: dffffc0000000000
> R13: 1ffff11015d04ed2 R14: dffffc0000000000 R15: dffffc0000000000
> FS:  0000000000000000(0000) GS:ffff8880ae800000(0000) knlGS:0000000000000000
> CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> CR2: 00000000004ddaf0 CR3: 0000000090ca1000 CR4: 00000000001506f0
> DR0: 0000000020000000 DR1: 0000000000000000 DR2: 0000000000000000
> DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000600
> Call Trace:
>  <IRQ>
>  debug_object_activate+0x62/0x5f0 lib/debugobjects.c:636
>  debug_hrtimer_activate kernel/time/hrtimer.c:416 [inline]
>  debug_activate kernel/time/hrtimer.c:476 [inline]
>  enqueue_hrtimer kernel/time/hrtimer.c:965 [inline]
>  __run_hrtimer kernel/time/hrtimer.c:1537 [inline]
>  __hrtimer_run_queues+0x510/0x930 kernel/time/hrtimer.c:1584
>  hrtimer_interrupt+0x373/0xd60 kernel/time/hrtimer.c:1646
>  local_apic_timer_interrupt arch/x86/kernel/apic/apic.c:1080 [inline]
>  __sysvec_apic_timer_interrupt+0xf0/0x260 arch/x86/kernel/apic/apic.c:1097
>  asm_call_on_stack+0xf/0x20 arch/x86/entry/entry_64.S:706
>  </IRQ>
>  __run_on_irqstack arch/x86/include/asm/irq_stack.h:22 [inline]
>  run_on_irqstack_cond arch/x86/include/asm/irq_stack.h:48 [inline]
>  sysvec_apic_timer_interrupt+0x94/0xf0 arch/x86/kernel/apic/apic.c:1091
>  asm_sysvec_apic_timer_interrupt+0x12/0x20 arch/x86/include/asm/idtentry.h:581
> RIP: 0010:arch_local_irq_restore arch/x86/include/asm/paravirt.h:770 [inline]
> RIP: 0010:lock_release+0x3c4/0x750 kernel/locking/lockdep.c:5026
> Code: 48 c1 e8 03 42 80 3c 28 00 74 0c 48 c7 c7 b8 d5 4b 89 e8 3f 0b 5a 00 48 83 3d df d4 f1 07 00 0f 84 5c 03 00 00 4c 89 e7 57 9d <0f> 1f 44 00 00 65 48 8b 04 25 28 00 00 00 48 3b 44 24 50 0f 85 40
> RSP: 0018:ffffc90001037bf8 EFLAGS: 00000282
> RAX: 1ffffffff1297ab7 RBX: 1ffff110151d2949 RCX: ffff8880a8e94180
> RDX: ffff8880a8e94a48 RSI: ffffffff894ea290 RDI: 0000000000000282
> RBP: 9644b5a36c253f0c R08: dffffc0000000000 R09: fffffbfff131b08e
> R10: fffffbfff131b08e R11: 0000000000000000 R12: 0000000000000282
> R13: dffffc0000000000 R14: dffffc0000000000 R15: ffff8880a8e94a4c
>  rcu_read_unlock include/linux/rcupdate.h:688 [inline]
>  batadv_nc_purge_orig_hash net/batman-adv/network-coding.c:411 [inline]
>  batadv_nc_worker+0x261/0x5c0 net/batman-adv/network-coding.c:718
>  process_one_work+0x789/0xfc0 kernel/workqueue.c:2269
>  worker_thread+0xaa4/0x1460 kernel/workqueue.c:2415
>  kthread+0x37e/0x3a0 drivers/block/aoe/aoecmd.c:1234
>  ret_from_fork+0x1f/0x30 arch/x86/entry/entry_64.S:294
> rcu: rcu_preempt kthread starved for 10486 jiffies! g114061 f0x0 RCU_GP_WAIT_FQS(5) ->state=0x402 ->cpu=1
> rcu:    Unless rcu_preempt kthread gets sufficient CPU time, OOM is now expected behavior.
> rcu: RCU grace-period kthread stack dump:
> rcu_preempt     I28608    10      2 0x00004000
> Call Trace:
>  context_switch kernel/sched/core.c:3778 [inline]
>  __schedule+0x979/0xce0 kernel/sched/core.c:4527
>
>
> ---
> This report is generated by a bot. It may contain errors.
> See https://goo.gl/tpsmEJ for more information about syzbot.
> syzbot engineers can be reached at syzkaller@googlegroups.com.
>
> syzbot will keep track of this issue. See:
> https://goo.gl/tpsmEJ#status for how to communicate with syzbot.
>
> --
> You received this message because you are subscribed to the Google Groups "syzkaller-bugs" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to syzkaller-bugs+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/syzkaller-bugs/0000000000009d327505b0999237%40google.com.
--===============8310299676255407502==--
