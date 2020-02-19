Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 589DB163D55
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 19 Feb 2020 07:58:56 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 56CE5805B2;
	Wed, 19 Feb 2020 07:58:54 +0100 (CET)
Received: from mail-io1-f69.google.com (mail-io1-f69.google.com
 [209.85.166.69])
 by diktynna.open-mesh.org (Postfix) with ESMTPS id D91DE800C9
 for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 19 Feb 2020 03:08:02 +0100 (CET)
Received: by mail-io1-f69.google.com with SMTP id d13so15328550ioc.3
 for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 18 Feb 2020 18:08:02 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:in-reply-to:message-id:subject
 :from:to:content-transfer-encoding;
 bh=4diWwWLXm7lY/GHl3gvscC/1M0a1R7YH2cSj9Fw5eHQ=;
 b=BisKaW+1BBocv45My1YFLMGK2LsnjYm4SAlVTru7dN1zbO0Izr15UVBwfoYiANnbyz
 gKFDU/G3itVppAIRRw4yPLOmGjqf5IQJLjgMcnIaPNF3ffz7lCNFinZvozxUc2iI4p2b
 feSSpUdGkg/wczsoWn4nq5US/P32Xbs0HW3teC7KHQF5hOAwIuzDcbeqBCkmRugL7YTy
 MF7wCeoqPUiDP3YI1EHpYLOp0Oow6heiYr0RWl3lZ8Oel0nGwtFwuHe5eoGOT7Ojnx8d
 c8M1nG2PcngwIq56hINHgLxD36DFSvJhyIvQ2y4Ltb50+AjXWaTFIjLCR7Jp6ubWgs3U
 4Rpw==
X-Gm-Message-State: APjAAAV9E9L5nyZQkfrP9zOPw1+R0gdKejsT7scdLzf6P3uMwNLlcc3U
 2Jl2vdIT8DWABUO4YS9mWqjPjLNco3DMrTtCgkVY/xNwf8Nu
X-Google-Smtp-Source: APXvYqzdxPP1bcYe7a4xOJJ2PZvwgFfZkFkliW3rcWAp+NO+QUzOk5XyZt5pyzhMqqramXLk6gwjJUtyolpYMy0PBvZtFLrsOuX6
MIME-Version: 1.0
X-Received: by 2002:a92:15c2:: with SMTP id 63mr22276770ilv.111.1582078081462; 
 Tue, 18 Feb 2020 18:08:01 -0800 (PST)
Date: Tue, 18 Feb 2020 18:08:01 -0800
In-Reply-To: <000000000000bb0378059c865fdf@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000000d774c059ee442e6@google.com>
Subject: Re: KASAN: use-after-free Read in bitmap_ip_destroy
From: syzbot <syzbot+8b5f151de2f35100bbc5@syzkaller.appspotmail.com>
To: a@unstable.cc, b.a.t.m.a.n@lists.open-mesh.org, coreteam@netfilter.org, 
 davem@davemloft.net, florent.fourcot@wifirst.fr, fw@strlen.de, 
 jeremy@azazel.net, johannes.berg@intel.com, kadlec@blackhole.kfki.hu, 
 kadlec@netfilter.org, linux-kernel@vger.kernel.org, lipeng321@huawei.com, 
 mareklindner@neomailbox.ch, netdev@vger.kernel.org, 
 netfilter-devel@vger.kernel.org, pablo@netfilter.org, sw@simonwunderlich.de, 
 syzkaller-bugs@googlegroups.com, tanhuazhong@huawei.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1582078082;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to; bh=4diWwWLXm7lY/GHl3gvscC/1M0a1R7YH2cSj9Fw5eHQ=;
 b=W2AA4slW8yZzaXU0gePlnlrrAMGUybav21ij5CEJmeYI7ioJLND7oeqhHsnW+vTfJ9dQPf
 C6Y/in0gnIZkCMsF5EyqxGJ4brEzjTsGcMUCVqEArYrFa7HWNBtIhrIK24YBoz2LYHtFpT
 TSX9RQLMXZx9DIaOozjL/pWF/GKkclo=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1582078082; a=rsa-sha256; cv=none;
 b=tqWmwf6hn0ebKuMzhYr4pULETU0+KoIwU6mBI2H3ZaJ8wSge+2JKMq7KhixuiXyS53ryLj
 WwVEVTNVx4CjT2NMqSlxieAEJisFYFd5BYU8CJRn9M5Cyp9bf7VQdq09V5ohF2X09r0BKy
 g1RwaQC0DRX3LmB3TkCxr4VetpaGp4w=
ARC-Authentication-Results: i=1; diktynna.open-mesh.org; dkim=none;
 spf=pass (diktynna.open-mesh.org: domain of
 3gZhMXgkbANwQWXI8JJCP8NNGB.EMMEJCSQCPAMLRCLR.AMK@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
 designates 209.85.166.69 as permitted sender)
 smtp.mailfrom=3gZhMXgkbANwQWXI8JJCP8NNGB.EMMEJCSQCPAMLRCLR.AMK@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
X-Mailman-Approved-At: Wed, 19 Feb 2020 07:58:52 +0100
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

syzbot suspects this bug was fixed by commit:

commit 32c72165dbd0e246e69d16a3ad348a4851afd415
Author: Kadlecsik J=C3=B3zsef <kadlec@blackhole.kfki.hu>
Date:   Sun Jan 19 21:06:49 2020 +0000

    netfilter: ipset: use bitmap infrastructure completely

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=3D17fc79b5e000=
00
start commit:   8f8972a3 Merge tag 'mtd/fixes-for-5.5-rc7' of git://git.ke.=
.
git tree:       upstream
kernel config:  https://syzkaller.appspot.com/x/.config?x=3Dcfbb8fa33f49f9f=
3
dashboard link: https://syzkaller.appspot.com/bug?extid=3D8b5f151de2f35100b=
bc5
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=3D12e22559e0000=
0
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=3D16056faee00000

If the result looks correct, please mark the bug fixed by replying with:

#syz fix: netfilter: ipset: use bitmap infrastructure completely

For information about bisection process see: https://goo.gl/tpsmEJ#bisectio=
n
