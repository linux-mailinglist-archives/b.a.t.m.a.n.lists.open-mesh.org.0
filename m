Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 3556127FDAA
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu,  1 Oct 2020 12:49:09 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 1415A806E4;
	Thu,  1 Oct 2020 12:49:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1601549348;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=N4huUZxc+VWlp1ojn979i68BIHBflqTvAq8g7sD7jp4=;
	b=cAJSX8132QmNaByB08AbHBo62VhHOHeJGj3CW7PVGVj9OdfqXnoGcuOFCKrsIFWrZBMMCc
	iObwCnZEDdeLa/BdJMG8k4MKk3Dp2L77VW4hPmDmXdy6YpMziSVeRUU6ORRSnS4FINyrLF
	VEpHE4YNzJJbSm5Kt8KSi7shNRrdS9w=
References: <000000000000fb885a05b0997c54@google.com>
In-Reply-To: <000000000000fb885a05b0997c54@google.com>
Date: Thu, 1 Oct 2020 12:48:52 +0200
Subject: Re: KMSAN: uninit-value in batadv_nc_worker
To: syzbot <syzbot+da9194708de785081f11@syzkaller.appspotmail.com>
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
X-Mailman-Version: 3.2.1
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/4QZJYPRXGKFZYDM5STWQSDQJFTHAARCD/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>
MIME-Version: 1.0
Message-ID: <160154934676.1228.16846137582475100917@diktynna.open-mesh.org>
From: "Dmitry Vyukov via B.A.T.M.A.N" <b.a.t.m.a.n@lists.open-mesh.org>
Cc: a@unstable.cc, b.a.t.m.a.n@lists.open-mesh.org, David Miller <davem@davemloft.net>, Alexander Potapenko <glider@google.com>, Jakub Kicinski <kuba@kernel.org>, LKML <linux-kernel@vger.kernel.org>, mareklindner@neomailbox.ch, netdev <netdev@vger.kernel.org>, syzkaller-bugs <syzkaller-bugs@googlegroups.com>, Dmitry Vyukov <dvyukov@google.com>
Content-Type: multipart/mixed; boundary="===============2362006890079330121=="

--===============2362006890079330121==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============2362006890079330121==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from mail-qk1-x743.google.com (mail-qk1-x743.google.com [IPv6:2607:f8b0:4864:20::743])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id D8027805B2
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu,  1 Oct 2020 12:49:04 +0200 (CEST)
Received: by mail-qk1-x743.google.com with SMTP id v123so4694117qkd.9
        for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 01 Oct 2020 03:49:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=MhtaHYvememZ4rvJmJfpq+OiKpk7hwdBKC/+1lxZP9g=;
        b=Q5+ja/HHS3afIn1efpLSAnOb/UgOqnShksna+KJbh4xxD6Zpy0MZitkfZOm3lLQ+80
         JWYryVmm1K8gHaFcS6oRy/CoOdOPWdQVbOciEpsXAh9jIjiu8/Xy0pDubZmdilIZBv1i
         6X9yPRr9GZ+inosASTZjAPCQPDXo6kZLsISGwVcsAr7dhmawGu7ski6EMzpW3KBe69v5
         89+sfY9KBprFYt/tZOeGGW6cuFXDMuwi1jMDKCPWLeqwDmS5xgpfM0EvBtVobeQQf6VU
         wOq1O1cJzp7U5knPLp59UJyOP8R/JVK0yJJwDv/zMcdgWIoYnIF7MHbqmV2GYwpjk8uG
         cFSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=MhtaHYvememZ4rvJmJfpq+OiKpk7hwdBKC/+1lxZP9g=;
        b=UcE9j110gV/WWcnRi75pAsB1O33QMWHI7CFI1igsxj5Eb6u94/OtCi7moFDgl/3bvX
         XFU6SKsaAlXc1JQ5FU10u9a0cwtO52LZUv1uDzVrWoAzt/GtJSR6ZE/gExMe/fExlTLY
         zANKwfvaJQv8mXlTCZ4kky2RronH4/ZI7Y4WCIX5s4o8iJMl8LvzbqOzAwces8JhGNji
         3JwEj3dAVjprIExySnDeTGHbY0DkW22F5GVJurGCYCdHx73V+tX7PkG6KqV83U1htBn6
         ZhIeZEPRkGDkuWkxsdMvP252WEkstcwRa3jXcpdrupvFB7ljNRqQ6yMImHAoFlLdTm6w
         pNYQ==
X-Gm-Message-State: AOAM530SQDIOCh2EsqKH6o+S7tr0TWTP7zMUzgw12QCp7dYahLOqmwcq
	RtpwKN8yCB94lWyQ6sGnuv3Fh7S4EC7BdiT0imFx4g==
X-Google-Smtp-Source: ABdhPJxBZa2JHmBQ+mmFyUCkkOli1nAXMt9u84WWTXJZ2g7FTJuO/3Ljb+AR9KpejYSByzfAIbL0tmNJH+2i08ZzBv8=
X-Received: by 2002:a37:9c4f:: with SMTP id f76mr7127532qke.250.1601549343333;
 Thu, 01 Oct 2020 03:49:03 -0700 (PDT)
MIME-Version: 1.0
References: <000000000000fb885a05b0997c54@google.com>
In-Reply-To: <000000000000fb885a05b0997c54@google.com>
From: Dmitry Vyukov <dvyukov@google.com>
Date: Thu, 1 Oct 2020 12:48:52 +0200
Message-ID: <CACT4Y+Z5pdgzT1-Oead4Gnn-SpPinm1_MuRYD-35sDZ5TwzkZA@mail.gmail.com>
Subject: Re: KMSAN: uninit-value in batadv_nc_worker
To: syzbot <syzbot+da9194708de785081f11@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="UTF-8"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1601549344;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=MhtaHYvememZ4rvJmJfpq+OiKpk7hwdBKC/+1lxZP9g=;
	b=zHPY1cLKbgVM4kNTZCTMlGhZ5/RHR6Li4r2P/7SV4RPYV6/nFFHL/NDvg6EwC7XSSfJ8rf
	T7xW8e10I+NwkvyFJYFmj89sckxOBk7tkAI/DfLbgZeLHXsquF7h4bdevbMPMp2D3AUiIP
	Nw4qGCdIE8CErPHojftqM6YKmDcS5tY=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1601549344; a=rsa-sha256;
	cv=none;
	b=qjdd78S+P6HxYlIqRJdrchYtA0NSrXPIQjTXXOOG5fYoqviHbPoNib/1tmIV02QA6R6mPG
	qpef16EA8N+9HDZjhYBcOy8wefpE6XKvGNrICvhVTdhNZvd2957rDIRZ+9J8tAfs49XhyY
	r2tfVc8IjrToT1dBl90qqAQkb9E2WsI=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=google.com header.s=20161025 header.b=Q5+ja/HH;
	spf=pass (diktynna.open-mesh.org: domain of dvyukov@google.com designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=dvyukov@google.com
Message-ID-Hash: 4QZJYPRXGKFZYDM5STWQSDQJFTHAARCD
X-Message-ID-Hash: 4QZJYPRXGKFZYDM5STWQSDQJFTHAARCD
X-MailFrom: dvyukov@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
CC: a@unstable.cc, b.a.t.m.a.n@lists.open-mesh.org, David Miller <davem@davemloft.net>, Alexander Potapenko <glider@google.com>, Jakub Kicinski <kuba@kernel.org>, LKML <linux-kernel@vger.kernel.org>, mareklindner@neomailbox.ch, netdev <netdev@vger.kernel.org>, syzkaller-bugs <syzkaller-bugs@googlegroups.com>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/4QZJYPRXGKFZYDM5STWQSDQJFTHAARCD/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

On Thu, Oct 1, 2020 at 12:29 PM syzbot
<syzbot+da9194708de785081f11@syzkaller.appspotmail.com> wrote:
>
> Hello,
>
> syzbot found the following issue on:
>
> HEAD commit:    5edb1df2 kmsan: drop the _nosanitize string functions
> git tree:       https://github.com/google/kmsan.git master
> console output: https://syzkaller.appspot.com/x/log.txt?x=10cc55a7900000
> kernel config:  https://syzkaller.appspot.com/x/.config?x=4991d22eb136035c
> dashboard link: https://syzkaller.appspot.com/bug?extid=da9194708de785081f11
> compiler:       clang version 10.0.0 (https://github.com/llvm/llvm-project/ c2443155a0fb245c8f17f2c1c72b6ea391e86e81)
>
> Unfortunately, I don't have any reproducer for this issue yet.
>
> IMPORTANT: if you fix the issue, please add the following tag to the commit:
> Reported-by: syzbot+da9194708de785081f11@syzkaller.appspotmail.com

It's somewhat unobvious how this can happen (or not?).

But may be related to:
INFO: rcu detected stall in batadv_nc_worker (3)
https://syzkaller.appspot.com/bug?id=6dba9b6476dd536c17afa799a72f265e448ff820

which happens with low frequency for the past 300 days, 21 stalls in total.

If we imagine the list somehow ends up uninitialized, occasional
infinite loops make perfect sense.



> =====================================================
> BUG: KMSAN: uninit-value in batadv_nc_purge_orig_hash net/batman-adv/network-coding.c:408 [inline]
> BUG: KMSAN: uninit-value in batadv_nc_worker+0x1c0/0x1d70 net/batman-adv/network-coding.c:718
> CPU: 0 PID: 7 Comm: kworker/u4:0 Not tainted 5.9.0-rc4-syzkaller #0
> Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 01/01/2011
> Workqueue: bat_events batadv_nc_worker
> Call Trace:
>  __dump_stack lib/dump_stack.c:77 [inline]
>  dump_stack+0x21c/0x280 lib/dump_stack.c:118
>  kmsan_report+0xf7/0x1e0 mm/kmsan/kmsan_report.c:122
>  __msan_warning+0x58/0xa0 mm/kmsan/kmsan_instr.c:201
>  batadv_nc_purge_orig_hash net/batman-adv/network-coding.c:408 [inline]
>  batadv_nc_worker+0x1c0/0x1d70 net/batman-adv/network-coding.c:718
>  process_one_work+0x1688/0x2140 kernel/workqueue.c:2269
>  worker_thread+0x10bc/0x2730 kernel/workqueue.c:2415
>  kthread+0x551/0x590 kernel/kthread.c:293
>  ret_from_fork+0x1f/0x30 arch/x86/entry/entry_64.S:294
>
> Uninit was created at:
>  kmsan_save_stack_with_flags mm/kmsan/kmsan.c:143 [inline]
>  kmsan_internal_poison_shadow+0x66/0xd0 mm/kmsan/kmsan.c:126
>  kmsan_slab_alloc+0x8a/0xe0 mm/kmsan/kmsan_hooks.c:80
>  slab_alloc_node mm/slub.c:2907 [inline]
>  slab_alloc mm/slub.c:2916 [inline]
>  __kmalloc+0x2bb/0x4b0 mm/slub.c:3982
>  kmalloc_array+0x90/0x140 include/linux/slab.h:594
>  batadv_hash_new+0x129/0x530 net/batman-adv/hash.c:52
>  batadv_originator_init+0x9b/0x370 net/batman-adv/originator.c:211
>  batadv_mesh_init+0x4dc/0x9d0 net/batman-adv/main.c:204
>  batadv_softif_init_late+0x6d8/0xa30 net/batman-adv/soft-interface.c:857
>  register_netdevice+0xbbc/0x37d0 net/core/dev.c:9760
>  __rtnl_newlink net/core/rtnetlink.c:3454 [inline]
>  rtnl_newlink+0x2e77/0x3ed0 net/core/rtnetlink.c:3500
>  rtnetlink_rcv_msg+0x142b/0x18c0 net/core/rtnetlink.c:5563
>  netlink_rcv_skb+0x6d7/0x7e0 net/netlink/af_netlink.c:2470
>  rtnetlink_rcv+0x50/0x60 net/core/rtnetlink.c:5581
>  netlink_unicast_kernel net/netlink/af_netlink.c:1304 [inline]
>  netlink_unicast+0x11c8/0x1490 net/netlink/af_netlink.c:1330
>  netlink_sendmsg+0x173a/0x1840 net/netlink/af_netlink.c:1919
>  sock_sendmsg_nosec net/socket.c:651 [inline]
>  sock_sendmsg net/socket.c:671 [inline]
>  __sys_sendto+0x9dc/0xc80 net/socket.c:1992
>  __do_sys_sendto net/socket.c:2004 [inline]
>  __se_sys_sendto+0x107/0x130 net/socket.c:2000
>  __x64_sys_sendto+0x6e/0x90 net/socket.c:2000
>  do_syscall_64+0x9f/0x140 arch/x86/entry/common.c:48
>  entry_SYSCALL_64_after_hwframe+0x44/0xa9
> =====================================================
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
> To view this discussion on the web visit https://groups.google.com/d/msgid/syzkaller-bugs/000000000000fb885a05b0997c54%40google.com.
--===============2362006890079330121==--
