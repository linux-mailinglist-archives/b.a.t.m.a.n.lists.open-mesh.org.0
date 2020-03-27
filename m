Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id C0C0F195167
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 27 Mar 2020 07:40:07 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id AD4C2807F7;
	Fri, 27 Mar 2020 07:40:05 +0100 (CET)
Received: from mail-il1-f200.google.com (mail-il1-f200.google.com
 [209.85.166.200])
 by diktynna.open-mesh.org (Postfix) with ESMTPS id 2CDB48002B
 for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 27 Mar 2020 02:28:05 +0100 (CET)
Received: by mail-il1-f200.google.com with SMTP id n18so6707514ilp.13
 for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 26 Mar 2020 18:28:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:in-reply-to:message-id:subject
 :from:to;
 bh=fpOoO95ghuCLLCEIiKHNf1Vn4Rzo9M55/w0gJcRUpiM=;
 b=P4zQn8F7pJanHwNKaHB7wZ58JfPsEvwFfppLwn6apCMdvUrJLcbpZQPF351P0h7M8p
 3Hf8bPTNzOjP/7TvQf/byz/UGUwSbyArHyltRiA4BQVDrLViJjFX848pGSLj82Csi1fW
 HtNFSIuGKu0RwI9pAQL/ql+OAnTuz7epeSZ07aZJvG8rM2qrjC278AC8Av6GEVEBMMPd
 bmSAjy6WBZPEsXfhToheAhEfSd6ZOxFeJ07oH78mUpYr8FreiaMhTDK2at9zXsh87RP3
 rR+OOH4m22VF2LM5XyXFTM2XbTwD6KWLTI6PpBEPCwxHJXiXEdrQJRFUZ1t7DZLWgUUe
 bf7w==
X-Gm-Message-State: ANhLgQ324+sC9DzX7/RISUit+Hp7UeOSNxvfRL1RA8+Cn/yxVsl+lanM
 qgk0qQi6KNjThMM4ZLuKD+IGXw2xfb5tk91fU6FwKxV2H3WU
X-Google-Smtp-Source: ADFU+vvuj9CdqnaKA39zoipe43VtYnqnycnu6XYDRVQ3pQdtkCj1GJ/YWcoFF34sHC9pd58juZJvz3MqwN724aP7IdgdRuetL7J1
MIME-Version: 1.0
X-Received: by 2002:a92:9107:: with SMTP id t7mr11623063ild.140.1585272483961; 
 Thu, 26 Mar 2020 18:28:03 -0700 (PDT)
Date: Thu, 26 Mar 2020 18:28:03 -0700
In-Reply-To: <00000000000047770d05a1c70ecb@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000004760b805a1cc03fc@google.com>
Subject: Re: KASAN: null-ptr-deref Write in blk_mq_map_swqueue
From: syzbot <syzbot+313d95e8a7a49263f88d@syzkaller.appspotmail.com>
To: a@unstable.cc, axboe@kernel.dk, b.a.t.m.a.n@lists.open-mesh.org, 
 davem@davemloft.net, dongli.zhang@oracle.com, linux-block@vger.kernel.org, 
 linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org, 
 mareklindner@neomailbox.ch, netdev@vger.kernel.org, sven@narfation.org, 
 sw@simonwunderlich.de, syzkaller-bugs@googlegroups.com, 
 viro@zeniv.linux.org.uk
Content-Type: text/plain; charset="UTF-8"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1585272485;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to; bh=fpOoO95ghuCLLCEIiKHNf1Vn4Rzo9M55/w0gJcRUpiM=;
 b=tQBMHmhvdt84dRmFaEP8ET1CqF5wqHb+Jifa5XMlUT84CVO0pTcixw7O5R/LzHX31ijyNa
 N+wchqWzJ4CkWSuuY+s3VE9gkTAeyhv9OMeErMaunGzCGxfrWtNNhpQcktFPCXPr7wLAi0
 tVU2w4Pr1OpC+233A4N0SBh+8GHlBKY=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1585272485; a=rsa-sha256; cv=none;
 b=AGQIQP1f7ZlItFwrZCLPkru3VFMV9BPcJw/2PmhYi1c/+FA1yZ2fGlkftm6HF9fhjZXY+N
 fvkkg6Zgqc+Ay9IHuqhDP5jW4TihBom41QVs9ti5oCJ8h3cbflG78voLmuquKvTqcl0DZ2
 7bRCvyLtKYdjgqa6dlsGXqDilpKcijM=
ARC-Authentication-Results: i=1; diktynna.open-mesh.org; dkim=none;
 spf=pass (diktynna.open-mesh.org: domain of
 3o1Z9XgkbAEAu01mcnngtcrrkf.iqqingwugteqpvgpv.eqo@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
 designates 209.85.166.200 as permitted sender)
 smtp.mailfrom=3o1Z9XgkbAEAu01mcnngtcrrkf.iqqingwugteqpvgpv.eqo@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
X-Mailman-Approved-At: Fri, 27 Mar 2020 07:40:03 +0100
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

syzbot has bisected this bug to:

commit 768134d4f48109b90f4248feecbeeb7d684e410c
Author: Jens Axboe <axboe@kernel.dk>
Date:   Mon Nov 11 03:30:53 2019 +0000

    io_uring: don't do flush cancel under inflight_lock

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=14233ef5e00000
start commit:   1b649e0b Merge git://git.kernel.org/pub/scm/linux/kernel/g..
git tree:       upstream
final crash:    https://syzkaller.appspot.com/x/report.txt?x=16233ef5e00000
console output: https://syzkaller.appspot.com/x/log.txt?x=12233ef5e00000
kernel config:  https://syzkaller.appspot.com/x/.config?x=27392dd2975fd692
dashboard link: https://syzkaller.appspot.com/bug?extid=313d95e8a7a49263f88d
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=13850447e00000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=119a26f5e00000

Reported-by: syzbot+313d95e8a7a49263f88d@syzkaller.appspotmail.com
Fixes: 768134d4f481 ("io_uring: don't do flush cancel under inflight_lock")

For information about bisection process see: https://goo.gl/tpsmEJ#bisection
