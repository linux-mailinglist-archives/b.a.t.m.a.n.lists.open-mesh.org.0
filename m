Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 987D6438224
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 23 Oct 2021 09:08:40 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 83C738273D;
	Sat, 23 Oct 2021 09:08:39 +0200 (CEST)
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id B8F60809B2
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 22 Oct 2021 21:36:07 +0200 (CEST)
Received: by mail-lf1-x132.google.com with SMTP id u21so5534837lff.8
        for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 22 Oct 2021 12:36:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=i/KI1/mA4M1dRYYokxYvIyvZBPQEyoO/DtFoTzHdRLw=;
        b=L/Pcyuu6lOEaRzTwNjk0bHJOQBghBzsJu2SU8uGfvXvcufS0H4AAd+wCqaIOPhLkP6
         faAD/9zxbBHoC1yXWZDC7HKfHFnVnz8wAVEyswDWqzJoXzHgEOQs4dfuFu+VSUr7Yeda
         DBZHhzU8hnoai5Ik+owhXo+mqg3845i+gKM9qfr3f0GFMZhyg00axJIlj+vgs5EgdxgS
         RjsE69ANgfwUzUHqebIHmWHYNXdPI0rqFka4EvuFqESOuWHBiXk5w8k5Ssqy3NyfEl13
         6RHxQO8uHLQCWqlUA5UnNzvdUnoDaTFmaje2a5zcJwxCZgETTsv86KKECezNuhAfX710
         mQCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=i/KI1/mA4M1dRYYokxYvIyvZBPQEyoO/DtFoTzHdRLw=;
        b=P2v89rMGIwWHB0sn1szCtiBo4q2B7sZc9S6soBOasLWSQIKtw5LbUVj2E2NS2Te4b7
         XgxUl9euKWbNj326ZvIFqxBcbelGGREJfcOqRmh/5mcm25jNIvTHw16Wed76ukYAd3W+
         o+KCbs+mfSYsTIGHR3FLfRlVOvjFGtB9V5NZBo/gQayCSeR+fg9bZ3BCbFz3bGDhqwJT
         qlnTuQcscuBEN1NibbCyjtTsXMndDxKXr93eVtnpuFbzSjGoQ+IsTKYasRorH0flSviV
         Yyu8v9Mtsgv3GzvPtN60sstY0Yly8gdv/VgqZ5GORLtcOxrdSgsSvwhSlUVQNFwGG+YZ
         GEhQ==
X-Gm-Message-State: AOAM5326jQGpfYw5zv8nOa/MSh7Xn7PvY251fNFwejtN1FfurTl+8cP1
	oF/mF3Iie+EnukWtX7cL7F/iJoy6xSyApw==
X-Google-Smtp-Source: ABdhPJzovwP/gq7I0T+v9YM6XqBRzfSThE5kRZdyxgH/btRKigwgpOVPFRzE20PQ9jhzIz7DmUUTIg==
X-Received: by 2002:ac2:5e76:: with SMTP id a22mr1533729lfr.221.1634931367065;
        Fri, 22 Oct 2021 12:36:07 -0700 (PDT)
Received: from [192.168.1.11] ([94.103.235.181])
        by smtp.gmail.com with ESMTPSA id a11sm1058083lji.90.2021.10.22.12.36.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 Oct 2021 12:36:06 -0700 (PDT)
Message-ID: <2108d58b-2aca-12f1-59f0-cca5f63098d6@gmail.com>
Date: Fri, 22 Oct 2021 22:36:05 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.0
Subject: Re: [syzbot] WARNING: ODEBUG bug in batadv_nc_mesh_free
Content-Language: en-US
To: syzbot <syzbot+1dca817d274a3fb19f2b@syzkaller.appspotmail.com>,
 a@unstable.cc, b.a.t.m.a.n@lists.open-mesh.org, davem@davemloft.net,
 kuba@kernel.org, linux-kernel@vger.kernel.org, mareklindner@neomailbox.ch,
 netdev@vger.kernel.org, sven@narfation.org, sw@simonwunderlich.de,
 syzkaller-bugs@googlegroups.com
References: <000000000000c0c8d505cef55b23@google.com>
From: Pavel Skripkin <paskripkin@gmail.com>
In-Reply-To: <000000000000c0c8d505cef55b23@google.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1634931367;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=i/KI1/mA4M1dRYYokxYvIyvZBPQEyoO/DtFoTzHdRLw=;
	b=w3gM5TzerSCz5ba3PEZLZbTlzMIVTD/x4MRw1vYQoAKdcv68xvP434jqRySZZSnQOyt3Bm
	lOkx2yG9skxkHSFbJoNullkxGik0zRhnZZzmBPvXY9hM1k04kauy76OF3KFdpVas/EJE8A
	oiaf3tj5TN4+ZTKusexwR1lRQZuDArk=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b="L/Pcyuu6";
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (diktynna.open-mesh.org: domain of paskripkin@gmail.com designates 2a00:1450:4864:20::132 as permitted sender) smtp.mailfrom=paskripkin@gmail.com
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1634931367; a=rsa-sha256;
	cv=none;
	b=RcAqFlGDWbMCvNGnnV0I9G3Lo8ezbnfQGVPSMw0egI+cFLC8rggha2zaE5b5Y7GfWD21Bk
	baSDuL7HA0r+yfOquKOn3Aa6sYIQDX40yajcsZnjjP8kw75/dMd1dfz8lNK7D5/ORHqKY+
	IyxSEnJr4t70GuxOLd6hUPMMpE6tcQo=
X-MailFrom: paskripkin@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
Message-ID-Hash: 3HXTQ3RYSW5UQ5UOLE3N6IFSCTULO3O5
X-Message-ID-Hash: 3HXTQ3RYSW5UQ5UOLE3N6IFSCTULO3O5
X-Mailman-Approved-At: Sat, 23 Oct 2021 07:08:38 +0200
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/3HXTQ3RYSW5UQ5UOLE3N6IFSCTULO3O5/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

On 10/22/21 21:41, syzbot wrote:
> Hello,
> 
> syzbot found the following issue on:
> 
> HEAD commit:    e0bfcf9c77d9 Merge tag 'mlx5-fixes-2021-10-20' of git://gi..
> git tree:       net
> console output: https://syzkaller.appspot.com/x/log.txt?x=17900a0cb00000
> kernel config:  https://syzkaller.appspot.com/x/.config?x=bab9d35f204746a7
> dashboard link: https://syzkaller.appspot.com/bug?extid=1dca817d274a3fb19f2b
> compiler:       gcc (Debian 10.2.1-6) 10.2.1 20210110, GNU ld (GNU Binutils for Debian) 2.35.2
> syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=144d76b4b00000
> C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=14732b80b00000
> 
> Bisection is inconclusive: the issue happens on the oldest tested release.
> 
> bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=14093652b00000
> final oops:     https://syzkaller.appspot.com/x/report.txt?x=16093652b00000
> console output: https://syzkaller.appspot.com/x/log.txt?x=12093652b00000
> 
> IMPORTANT: if you fix the issue, please add the following tag to the commit:
> Reported-by: syzbot+1dca817d274a3fb19f2b@syzkaller.appspotmail.com
> 
> R13: 0000000000000000 R14: 0000000000000000 R15: 0000000000000000
> ------------[ cut here ]------------
> ODEBUG: assert_init not available (active state 0) object type: timer_list hint: 0x0
> WARNING: CPU: 0 PID: 6548 at lib/debugobjects.c:505 debug_print_object+0x16e/0x250 lib/debugobjects.c:505
> Modules linked in:
> CPU: 0 PID: 6548 Comm: syz-executor286 Not tainted 5.15.0-rc5-syzkaller #0
> Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 01/01/2011
> RIP: 0010:debug_print_object+0x16e/0x250 lib/debugobjects.c:505
> Code: ff df 48 89 fa 48 c1 ea 03 80 3c 02 00 0f 85 af 00 00 00 48 8b 14 dd 80 3e e4 89 4c 89 ee 48 c7 c7 80 32 e4 89 e8 5e 1d 15 05 <0f> 0b 83 05 d5 39 90 09 01 48 83 c4 18 5b 5d 41 5c 41 5d 41 5e c3
> RSP: 0018:ffffc90002d7ecc0 EFLAGS: 00010086
> RAX: 0000000000000000 RBX: 0000000000000005 RCX: 0000000000000000
> RDX: ffff8880163c8000 RSI: ffffffff815e88a8 RDI: fffff520005afd8a
> RBP: 0000000000000001 R08: 0000000000000000 R09: 0000000000000000
> R10: ffffffff815e264e R11: 0000000000000000 R12: ffffffff898de560
> R13: ffffffff89e43900 R14: ffffffff81658550 R15: 1ffff920005afda3
> FS:  0000555555c03300(0000) GS:ffff8880b9c00000(0000) knlGS:0000000000000000
> CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> CR2: 00007fef3003e098 CR3: 0000000073ad0000 CR4: 00000000003506f0
> DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
> DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
> Call Trace:
>   debug_object_assert_init lib/debugobjects.c:895 [inline]
>   debug_object_assert_init+0x1f4/0x2e0 lib/debugobjects.c:866
>   debug_timer_assert_init kernel/time/timer.c:739 [inline]
>   debug_assert_init kernel/time/timer.c:784 [inline]
>   del_timer+0x6d/0x110 kernel/time/timer.c:1204
>   try_to_grab_pending+0x6d/0xd0 kernel/workqueue.c:1270
>   __cancel_work_timer+0xa6/0x570 kernel/workqueue.c:3129
>   batadv_nc_mesh_free+0x41/0x120 net/batman-adv/network-coding.c:1869
>   batadv_mesh_free+0x7d/0x170 net/batman-adv/main.c:245
>   batadv_mesh_init+0x62f/0x710 net/batman-adv/main.c:226

Same fault injection, same backtrace, same warning... Looks like duplicate.

#syz dup: WARNING in batadv_nc_mesh_free


With regards,
Pavel Skripkin
