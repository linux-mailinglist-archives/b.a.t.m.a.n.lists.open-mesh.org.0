Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [IPv6:2a01:4f8:141:3341:78:46:248:236])
	by mail.lfdr.de (Postfix) with ESMTPS id 142DBCE069
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon,  7 Oct 2019 13:28:06 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 9408180673;
	Mon,  7 Oct 2019 13:27:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1570447666;
	h=from:from:sender:sender:reply-to:reply-to:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:in-reply-to:in-reply-to:
	 references:references:list-id:list-help:list-unsubscribe:
	 list-subscribe:list-post; bh=Leyh+R+ZudyUb6GXFbKdXzOyE2N28TfTGgjDwMigfok=;
	b=ASjzvjeqLRHvqY8gdaL4nAv7CflLJhrkNzvrRIrIJK4pK6Vpfz3YueCKSForRal8sKdBmV
	8W0O9L71iv2z6G94QBCsnI+kGxNQ+YPql+JIk3dDojbz+IQE20XQXSu6Oz/EpHtw2apFwH
	4roDoJNsr+xFzVn+YmWhdnJO57ItJoU=
References: <000000000000604e8905944f211f@google.com>
In-Reply-To: <000000000000604e8905944f211f@google.com>
Date: Mon, 7 Oct 2019 12:04:16 +0200
To: syzbot <syzbot+134336b86f728d6e55a0@syzkaller.appspotmail.com>, 
 paulmck@kernel.org, josh@joshtriplett.org, rostedt@goodmis.org, 
 mathieu.desnoyers@efficios.com, jiangshanlai@gmail.com, 
 Joel Fernandes <joel@joelfernandes.org>, rcu@vger.kernel.org
X-Mailman-Approved-At: Mon, 07 Oct 2019 13:27:41 +0200
MIME-Version: 1.0
Message-ID: <mailman.4.1570447662.23960.b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
From: "Marco Elver via B.A.T.M.A.N" <b.a.t.m.a.n@lists.open-mesh.org>
Precedence: list
Cc: Marco Elver <elver@google.com>, mareklindner@neomailbox.ch,
 netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org, a@unstable.cc,
 LKML <linux-kernel@vger.kernel.org>, syzkaller-bugs@googlegroups.com,
 davem@davemloft.net
X-Mailman-Version: 2.1.29
X-BeenThere: b.a.t.m.a.n@lists.open-mesh.org
List-Subscribe: <https://lists.open-mesh.org/mm/listinfo/b.a.t.m.a.n>,
 <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=subscribe>
List-Unsubscribe: <https://lists.open-mesh.org/mm/options/b.a.t.m.a.n>,
 <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=unsubscribe>
List-Archive: <http://lists.open-mesh.org/pipermail/b.a.t.m.a.n/>
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n@lists.open-mesh.org>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
Content-Type: multipart/mixed; boundary="===============0031616297075135823=="
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1570447666;
	h=from:from:sender:sender:reply-to:reply-to:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:in-reply-to:in-reply-to:
	 references:references:list-id:list-help:list-unsubscribe:
	 list-subscribe:list-post; bh=Leyh+R+ZudyUb6GXFbKdXzOyE2N28TfTGgjDwMigfok=;
	b=WiU9nS4zH/ugMZA0d+b8LtXzowtf6H9qcEXTvb9gpp1uKt8k3t8ATK9gzj4RKDpPkRvOfu
	f5yZ0g0ZXZJi8M24dnemct7o1FPLeVMpFp8BnhFgeQS6ri8Q1egJMMsFrtXZxfPKx1Usxf
	9lxCOxbDe4C6lN1ThVGa3mUORpIp5wg=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1570447666; a=rsa-sha256;
	cv=none;
	b=pXg0EA6You9o5bEAQ6SIYKlSD38/sOl1/6iMHC1Whwqaav3CU6PcjjKWvEO/cacABQS4ws
	Wwwo7zAlOuUD8g8/b07TQCJgPWzt2HB7tBwgiqT4OxnshGU1+ZXSbsoT0H50/pu5Yhz8Iy
	jXuLcMM+uenNijlS48zbrRFlugeCVc0=
ARC-Authentication-Results: i=1;
	open-mesh.org;
	none

--===============0031616297075135823==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============0031616297075135823==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Return-Path: <elver@google.com>
Received: from mail-oi1-x243.google.com (mail-oi1-x243.google.com [IPv6:2607:f8b0:4864:20::243])
	by open-mesh.org (Postfix) with ESMTPS id 5124A80197
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon,  7 Oct 2019 12:10:04 +0200 (CEST)
Received: by mail-oi1-x243.google.com with SMTP id a15so5105896oic.0
        for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 07 Oct 2019 03:10:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=gYT1x2/n140JP+1FiTJ0CmclfsvjrAD1h2tPOsxcDtk=;
        b=N6HzdJBtIpQoxnOBdY0HnLqWIl4ZGqrWy52I2zIQx6jUsIW0YliTbMjw3kdcQDsmQF
         WDmsktR5U8xqyStXSgOAjksxTeVxGWSEqOH7Gf8wad2mvgc2NEXwJyF4sRnMPsKCrVX+
         JlFN2i4zOZK1TOsyVruHJNguL4GzRFAGoB8NJSfZZOZlDZ2YuqmvQxz2b8t7q+/bJNz+
         W80qUvbBpdwcSyvj25sSkenbt7sn2nLonZFaU/QifQ51fPKU3DlrSzXNMii5YY/zsHde
         JXu4Ipbl36u5D5dN7SQqN7nLl7Fgy41BpH9t0uNNilMtYGmn5u6YtV4p/zLb3OdNEI3D
         GFFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=gYT1x2/n140JP+1FiTJ0CmclfsvjrAD1h2tPOsxcDtk=;
        b=hv46QaVn8w6o5hHLgWkbnJ187tKm/eELmPOqv/m/EUfuOjgQhWLPUo7kcMemmS3851
         J4JOzgSYu+q43An+C3x0qC6WNBoYRCyVZJK6NQBOzz5/P7lF53qzOo+4FJdHdCVtJpFg
         fPzmfdJ5qgfl6WaSXQ0XN6M3GABTK05H5UJI/Y1l6tWNX/1ktfph+tkVXyec8SdRxzo6
         oRJxsj8LKCXGLPR76rZyGncm5RnRkVqdG2Ecv3fIWRBYYRrajQ8OWb8fbFDPvm5S9EdL
         89ShPwttnkqXeJa9FOf9EIb+4uGVFziGkghFHdKyTsXJd0VSD/snazbjyW92UqdZjryZ
         lGuw==
X-Gm-Message-State: APjAAAV7qhiqFGbO4ozloQ5R4D4X+Cal9BPg1WTAz9Fn23BWOyVRQQD4
	zgPEs7QzNFPTFX58DtrTEi2+joR0pefnirMZKjtP4hWLACpMVg==
X-Google-Smtp-Source: APXvYqwq5iX3haMgW2pDDYlUcZQMS6VSvjATAwVAdUQyT2N2RAgpJ9Jgfm6V7j6yYCXNmqZhgSgI0P2elMaMnbZ3S04=
X-Received: by 2002:a05:6808:13:: with SMTP id u19mr566370oic.83.1570442667301;
 Mon, 07 Oct 2019 03:04:27 -0700 (PDT)
MIME-Version: 1.0
References: <000000000000604e8905944f211f@google.com>
In-Reply-To: <000000000000604e8905944f211f@google.com>
From: Marco Elver <elver@google.com>
Date: Mon, 7 Oct 2019 12:04:16 +0200
Message-ID: <CANpmjNNmSOagbTpffHr4=Yedckx9Rm2NuGqC9UqE+AOz5f1-ZQ@mail.gmail.com>
Subject: Re: KCSAN: data-race in find_next_bit / rcu_report_exp_cpu_mult
To: syzbot <syzbot+134336b86f728d6e55a0@syzkaller.appspotmail.com>, 
	paulmck@kernel.org, josh@joshtriplett.org, rostedt@goodmis.org, 
	mathieu.desnoyers@efficios.com, jiangshanlai@gmail.com, 
	Joel Fernandes <joel@joelfernandes.org>, rcu@vger.kernel.org
Cc: a@unstable.cc, b.a.t.m.a.n@lists.open-mesh.org, davem@davemloft.net, 
	LKML <linux-kernel@vger.kernel.org>, mareklindner@neomailbox.ch, 
	netdev@vger.kernel.org, sw@simonwunderlich.de, 
	syzkaller-bugs@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Approved-At: Mon, 07 Oct 2019 13:27:41 +0200

+RCU maintainers
This might be a data-race in RCU itself.

On Mon, 7 Oct 2019 at 12:01, syzbot
<syzbot+134336b86f728d6e55a0@syzkaller.appspotmail.com> wrote:
>
> Hello,
>
> syzbot found the following crash on:
>
> HEAD commit:    b4bd9343 x86, kcsan: Enable KCSAN for x86
> git tree:       https://github.com/google/ktsan.git kcsan
> console output: https://syzkaller.appspot.com/x/log.txt?x=11edb20d600000
> kernel config:  https://syzkaller.appspot.com/x/.config?x=c0906aa620713d80
> dashboard link: https://syzkaller.appspot.com/bug?extid=134336b86f728d6e55a0
> compiler:       gcc (GCC) 9.0.0 20181231 (experimental)
>
> Unfortunately, I don't have any reproducer for this crash yet.
>
> IMPORTANT: if you fix the bug, please add the following tag to the commit:
> Reported-by: syzbot+134336b86f728d6e55a0@syzkaller.appspotmail.com
>
> ==================================================================
> BUG: KCSAN: data-race in find_next_bit / rcu_report_exp_cpu_mult
>
> write to 0xffffffff85a7f140 of 8 bytes by task 7 on cpu 0:
>   rcu_report_exp_cpu_mult+0x4f/0xa0 kernel/rcu/tree_exp.h:244
>   rcu_report_exp_rdp+0x6c/0x90 kernel/rcu/tree_exp.h:254
>   rcu_preempt_deferred_qs_irqrestore+0x3bb/0x580 kernel/rcu/tree_plugin.h:475
>   rcu_read_unlock_special+0xec/0x370 kernel/rcu/tree_plugin.h:659
>   __rcu_read_unlock+0xcf/0xe0 kernel/rcu/tree_plugin.h:394
>   rcu_read_unlock include/linux/rcupdate.h:645 [inline]
>   batadv_nc_purge_orig_hash net/batman-adv/network-coding.c:411 [inline]
>   batadv_nc_worker+0x13a/0x390 net/batman-adv/network-coding.c:718
>   process_one_work+0x3d4/0x890 kernel/workqueue.c:2269
>   worker_thread+0xa0/0x800 kernel/workqueue.c:2415
>   kthread+0x1d4/0x200 drivers/block/aoe/aoecmd.c:1253
>   ret_from_fork+0x1f/0x30 arch/x86/entry/entry_64.S:352
>
> read to 0xffffffff85a7f140 of 8 bytes by task 7251 on cpu 1:
>   _find_next_bit lib/find_bit.c:39 [inline]
>   find_next_bit+0x57/0xe0 lib/find_bit.c:70
>   sync_rcu_exp_select_node_cpus+0x28e/0x510 kernel/rcu/tree_exp.h:375
>   sync_rcu_exp_select_cpus+0x30c/0x590 kernel/rcu/tree_exp.h:439
>   rcu_exp_sel_wait_wake kernel/rcu/tree_exp.h:575 [inline]
>   wait_rcu_exp_gp+0x25/0x40 kernel/rcu/tree_exp.h:589
>   process_one_work+0x3d4/0x890 kernel/workqueue.c:2269
>   worker_thread+0xa0/0x800 kernel/workqueue.c:2415
>   kthread+0x1d4/0x200 drivers/block/aoe/aoecmd.c:1253
>   ret_from_fork+0x1f/0x30 arch/x86/entry/entry_64.S:352
>
> Reported by Kernel Concurrency Sanitizer on:
> CPU: 1 PID: 7251 Comm: kworker/1:4 Not tainted 5.3.0+ #0
> Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS
> Google 01/01/2011
> Workqueue: rcu_gp wait_rcu_exp_gp
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

--===============0031616297075135823==--
