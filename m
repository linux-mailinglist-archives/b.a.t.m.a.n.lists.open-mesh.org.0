Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AE061865B9
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 16 Mar 2020 08:31:19 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 664C280855;
	Mon, 16 Mar 2020 08:31:18 +0100 (CET)
Received: from mail-io1-f70.google.com (mail-io1-f70.google.com
 [209.85.166.70])
 by diktynna.open-mesh.org (Postfix) with ESMTPS id C9350801B2
 for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 16 Mar 2020 03:40:04 +0100 (CET)
Received: by mail-io1-f70.google.com with SMTP id k5so10758394ioa.22
 for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 15 Mar 2020 19:40:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:in-reply-to:message-id:subject
 :from:to:content-transfer-encoding;
 bh=G7pIHMXafOLm3F/2/i2LvBMFMIvTzROgcOUTWFn2X6I=;
 b=hN37TPA0uhGx8/PKZveQjjkPy2atfIykKSY+Ci37sieP7IkZebPcpEQa0oYd/GAQS/
 DSOq5OEaUgQogekA8Djd7M8CUVfKmF+yPBOImzqm+V8/Opqb5nVigm4wDVb8mrrgUxOi
 RlocUrjnUbFL+YBHyBmkgulsrSxmQLGgwud5w2dClxmroQVCRlc6xad41Lkjm37dV8IP
 8cg+Wre2BGEy+tOubxZTuTB0HuHuSX1BC8e2rErZ6yiwzF7WZ4v6SYkZP2gnKfEubP5x
 3smDXu11GzERhmUYaUe7mNGhMJL2nKzrOH0F9UlAVOpq3FqnUGhFze/kQy/NZEhLlsAm
 /8PA==
X-Gm-Message-State: ANhLgQ1J2wEKbWiekRsJDCMYUD30dqAbIftJOO9IxrtKwDnarQwvqoYk
 uKfYbJ6FfbtfvvfGWtnJb5hqpLOHSEyNGMaROIhCLW1/get2
X-Google-Smtp-Source: ADFU+vsoZxccOxRhbL4Y/MIwgxSx220g7zIbktYsAfwneEMRwc/N8lW0/7POXMyHaJ8GuPRqszlVeuTTjg5as1yqhzbhVmbrzHSZ
MIME-Version: 1.0
X-Received: by 2002:a05:6638:3dd:: with SMTP id
 r29mr2463944jaq.94.1584326403449; 
 Sun, 15 Mar 2020 19:40:03 -0700 (PDT)
Date: Sun, 15 Mar 2020 19:40:03 -0700
In-Reply-To: <000000000000bdb5b2059c865f5c@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000007c695f05a0efbc52@google.com>
Subject: Re: KASAN: slab-out-of-bounds Read in bitmap_ip_ext_cleanup
From: syzbot <syzbot+6491ea8f6dddbf04930e@syzkaller.appspotmail.com>
To: a@unstable.cc, akpm@linux-foundation.org, allison@lohutok.net, 
 arnd@arndb.de, axboe@kernel.dk, b.a.t.m.a.n@lists.open-mesh.org, bp@alien8.de, 
 catalin.marinas@arm.com, chris@zankel.net, christian.brauner@ubuntu.com, 
 christian@brauner.io, coreteam@netfilter.org, dan.carpenter@oracle.com, 
 davem@davemloft.net, elena.reshetova@intel.com, florent.fourcot@wifirst.fr, 
 fw@strlen.de, geert@linux-m68k.org, hare@suse.com, heiko.carstens@de.ibm.com, 
 hpa@zytor.com, info@drgreenstore.com, info@metux.net, jcmvbkbc@gmail.com, 
 jeremy@azazel.net, johannes.berg@intel.com, kadlec@blackhole.kfki.hu, 
 kadlec@netfilter.org, linux-api@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 linux-xtensa@linux-xtensa.org, linux@armlinux.org.uk, 
 mareklindner@neomailbox.ch, mingo@redhat.com, netdev@vger.kernel.org, 
 netfilter-core-owner@lists.netfilter.org, netfilter-devel@vger.kernel.org, 
 pablo@netfilter.org, peterz@infradead.org, sw@simonwunderlich.de, 
 syzkaller-bugs@googlegroups.com, tglx@linutronix.de, viro@zeniv.linux.org.uk, 
 will@kernel.org, x86@kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1584326404;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to; bh=G7pIHMXafOLm3F/2/i2LvBMFMIvTzROgcOUTWFn2X6I=;
 b=LwUQJTYTKxk13VbtzjYxE3KaruYDPWGH7g7Iam2Q5RNhl7T0XpTwTuQT6+YjpND2//tljd
 MOxExAzt6uVwjxF7jTz5DTsIzK76W6ik+rnGkVw6wd0EVm4oj38xjuAiOAr0k3ErVmqIpj
 1xTbHEJN4bBFgvlsfiEcJWaHl0xC+ow=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1584326404; a=rsa-sha256; cv=none;
 b=G+HG9eLhyrAHvqsolPIlPFEDIDMrKQ7Xu0GfMZz9Pv4+sG26YLt5uEYGOEZ0aYYPocY7yV
 X133zUx916of71dAy5qUu/f+0UncNwSejl/lZf8md+Xf8X7tYbpjvVXqqzUGPepEh81WX6
 T1p28KgaDBRhj1I5Q3JTl4EkWG69WAA=
ARC-Authentication-Results: i=1; diktynna.open-mesh.org; dkim=none;
 spf=pass (diktynna.open-mesh.org: domain of
 3A-duXgkbAIY289ukvvo1kzzsn.qyyqvo42o1myx3ox3.myw@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
 designates 209.85.166.70 as permitted sender)
 smtp.mailfrom=3A-duXgkbAIY289ukvvo1kzzsn.qyyqvo42o1myx3ox3.myw@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
X-Mailman-Approved-At: Mon, 16 Mar 2020 08:31:15 +0100
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

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=3D16b8e545e000=
00
start commit:   d96d875e Merge tag 'fixes_for_v5.5-rc8' of git://git.kerne.=
.
git tree:       upstream
kernel config:  https://syzkaller.appspot.com/x/.config?x=3Dcf8e288883e40ab=
a
dashboard link: https://syzkaller.appspot.com/bug?extid=3D6491ea8f6dddbf049=
30e
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=3D126748d6e0000=
0
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=3D1385f959e00000

If the result looks correct, please mark the bug fixed by replying with:

#syz fix: netfilter: ipset: use bitmap infrastructure completely

For information about bisection process see: https://goo.gl/tpsmEJ#bisectio=
n
