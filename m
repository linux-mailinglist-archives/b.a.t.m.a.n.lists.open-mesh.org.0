Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 9385B186D36
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 16 Mar 2020 15:37:38 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 5C1A680BA0;
	Mon, 16 Mar 2020 15:37:33 +0100 (CET)
Received: from mail-io1-f69.google.com (mail-io1-f69.google.com
 [209.85.166.69])
 by diktynna.open-mesh.org (Postfix) with ESMTPS id 0C1B8801AB
 for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 16 Mar 2020 13:49:04 +0100 (CET)
Received: by mail-io1-f69.google.com with SMTP id h76so5677152iof.12
 for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 16 Mar 2020 05:49:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:in-reply-to:message-id:subject
 :from:to:content-transfer-encoding;
 bh=bbgjCSG0GMx48AI+Nh/K6rSe5vletqIPxakfsmtyduw=;
 b=KbzS/7i0FAPmDxRV8W3O6hkA62J6MzZwDqVCMNHHRaLf0+1GprbZlJcxBSqu8whoAy
 l5x53A5jFhN1XsW1vJxhc0cA1WqJm+6kg8YTSyeeR+1k9BmJFB2IcgqXVJr7oJmlee0r
 R4VMnobJ3dtyEhU+2yKdByqk266vcBq+QvujUI6Pppg6NMJiiq+R2vtLiXWTdmGZLFRj
 WY1rAd2Jb7+JCBWGWnoVA4/E4i5U24JWYuNo+JTwJADPnL+zUAIZSU25xbw6oZ9k1tcY
 hTGN3mATRtjUayB77Pg9BzMZAgkC1mCIN+mANWOhst28hsd3ZK5phNCZZT6xyHtZanlJ
 Dr0A==
X-Gm-Message-State: ANhLgQ2iwmvFzc9iaHvm0mcNWFq57pIgArYUsZmm3vKJEP1tN48RCj2v
 vhHRo4UZMMOKRB7uFJVMFr7fSRjv460shHxDlV43J6G+K//C
X-Google-Smtp-Source: ADFU+vue7B9fHGoWNVwlgwrWGWkXeorIo9SBr4w0t4qGXj0x5F7298EMNFAO00Xn0od3oIodZxvMr/pdtB+0Ajok3FT03wHErLf5
MIME-Version: 1.0
X-Received: by 2002:a92:d789:: with SMTP id d9mr455830iln.301.1584362942791;
 Mon, 16 Mar 2020 05:49:02 -0700 (PDT)
Date: Mon, 16 Mar 2020 05:49:02 -0700
In-Reply-To: <00000000000043aa29059c91459e@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <00000000000066871f05a0f83e9d@google.com>
Subject: Re: KASAN: slab-out-of-bounds Read in bitmap_ipmac_gc
From: syzbot <syzbot+c1a1fb435465986efe35@syzkaller.appspotmail.com>
To: a@unstable.cc, allison@lohutok.net, b.a.t.m.a.n@lists.open-mesh.org, 
 coreteam@netfilter.org, davem@davemloft.net, fw@strlen.de, 
 gregkh@linuxfoundation.org, info@metux.net, jeremy@azazel.net, 
 kadlec@blackhole.kfki.hu, kadlec@netfilter.org, kstewart@linuxfoundation.org, 
 linux-kernel@vger.kernel.org, lipeng321@huawei.com, liuyonglong@huawei.com, 
 mareklindner@neomailbox.ch, netdev@vger.kernel.org, 
 netfilter-devel@vger.kernel.org, pablo@netfilter.org, salil.mehta@huawei.com, 
 sbrivio@redhat.com, shuliubin@huawei.com, sw@simonwunderlich.de, 
 syzkaller-bugs@googlegroups.com, tglx@linutronix.de, yisen.zhuang@huawei.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1584362944;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to; bh=bbgjCSG0GMx48AI+Nh/K6rSe5vletqIPxakfsmtyduw=;
 b=WVltr4pKCZBQADXhjpOKzgTf01EvZaM8bY2U/PthIHCIMbu0mj8OfBehYXiuFo7BQu+8q7
 MO1+lsZ6wYnr95EQfdmQcsfgRk6+tXkDICCppgqGFy8SPqOxOKcUbHADAciDhxMiO42jWS
 hGYWXd2cHHTGmHzKXo/gB3hCLWcUgVk=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1584362944; a=rsa-sha256; cv=none;
 b=yOC7qfeUr7Wo1lbz8e5fFCnsGwCJ70+h02D8rQ6qHTR3tBYEaIR8SRsdqqgvlBHuadSoZf
 PcJpex85HdiEi6VL+h6sgfSx9Zjg7sWjRKQiRg392RUmGjO+pn1pnRY5qWH6CavzNHmSXX
 O3Zea/84Aix4uV/hvOFSGeKbM8YutCE=
ARC-Authentication-Results: i=1; diktynna.open-mesh.org; dkim=none;
 spf=pass (diktynna.open-mesh.org: domain of
 3vnVvXgkbAGERXYJ9KKDQ9OOHC.FNNFKDTRDQBNMSDMS.BNL@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
 designates 209.85.166.69 as permitted sender)
 smtp.mailfrom=3vnVvXgkbAGERXYJ9KKDQ9OOHC.FNNFKDTRDQBNMSDMS.BNL@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
X-Mailman-Approved-At: Mon, 16 Mar 2020 15:37:25 +0100
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

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=3D1074c2a9e000=
00
start commit:   d96d875e Merge tag 'fixes_for_v5.5-rc8' of git://git.kerne.=
.
git tree:       upstream
kernel config:  https://syzkaller.appspot.com/x/.config?x=3Dcf8e288883e40ab=
a
dashboard link: https://syzkaller.appspot.com/bug?extid=3Dc1a1fb435465986ef=
e35
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=3D14e36185e0000=
0
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=3D104a7a11e00000

If the result looks correct, please mark the bug fixed by replying with:

#syz fix: netfilter: ipset: use bitmap infrastructure completely

For information about bisection process see: https://goo.gl/tpsmEJ#bisectio=
n
