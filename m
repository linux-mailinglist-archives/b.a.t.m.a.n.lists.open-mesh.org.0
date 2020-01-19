Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [IPv6:2a01:4f8:141:3341:78:46:248:236])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F28D141D26
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 19 Jan 2020 10:42:04 +0100 (CET)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 098D6806BA;
	Sun, 19 Jan 2020 10:41:53 +0100 (CET)
Received: from mail-il1-f200.google.com (mail-il1-f200.google.com
 [209.85.166.200])
 by open-mesh.org (Postfix) with ESMTPS id 7320380237
 for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 19 Jan 2020 10:35:03 +0100 (CET)
Received: by mail-il1-f200.google.com with SMTP id i68so22771111ill.23
 for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 19 Jan 2020 01:35:03 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:in-reply-to:message-id:subject
 :from:to;
 bh=BRczTDviaeDTYez7KOKQz91MPq0sq1Vv8zv+kc9CGFY=;
 b=EOnyO4Fq+9GC0nC047UkLVz9aBrBoiKnspGsIq6NCQX2pE+AVRekvF8xW5tCtoHDml
 JoMYEZ7o4qpYxG+ZQcZ29gfw9blrwPjxtDIqs5O7VcDoP68pGd6+cJwgndplV+aENg6b
 SRI4YHqQWOedoeUfDWHdLOw3fmfeDz4tHnMtX348hNxc5/8POpiAXp51Lp5O5CuGd74S
 +kbaOql3o7K59/OseaI9cYcRTvFXwZNHHYddPenBewqIN+eIitydvtjoBvdc3M29CsLk
 CS+EMaY6GYtW3Sv4gaATZdIaEyBkoEXQJgBc8KWv5bVgZ01wDg3ZfeBddma14bI7YgkI
 Hw2g==
X-Gm-Message-State: APjAAAXJAieZgpM4rFXmv1T52yXdwOnKj6y/eoi0Ofmp6f3PZca3xg0d
 i2agzuA03zgdYtSLyvNxDs4x5ezUSY/9UHl/RsEVUTxpVW/K
X-Google-Smtp-Source: APXvYqxRJpvjM5JY3HPtw4SSeYYGyt3BTK2lm+dpjQSdSGFX2T4NMrq384OFBw8/ldl/wdX6vviEk7HiCqq+7oDPg/j/rBdVYNKH
MIME-Version: 1.0
X-Received: by 2002:a6b:731a:: with SMTP id e26mr36446343ioh.254.1579426501752; 
 Sun, 19 Jan 2020 01:35:01 -0800 (PST)
Date: Sun, 19 Jan 2020 01:35:01 -0800
In-Reply-To: <000000000000e0ab4c059c79f014@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <00000000000095fe43059c7ae3f9@google.com>
Subject: Re: KASAN: slab-out-of-bounds Read in bitmap_port_ext_cleanup
From: syzbot <syzbot+7b6206fb525c1f5ec3f8@syzkaller.appspotmail.com>
To: a@unstable.cc, andrew@lunn.ch, b.a.t.m.a.n@lists.open-mesh.org, 
 coreteam@netfilter.org, davem@davemloft.net, florent.fourcot@wifirst.fr, 
 fw@strlen.de, grygorii.strashko@ti.com, j-keerthy@ti.com, jeremy@azazel.net, 
 johannes.berg@intel.com, kadlec@netfilter.org, linux-kernel@vger.kernel.org, 
 linux-omap@vger.kernel.org, mareklindner@neomailbox.ch, 
 netdev@vger.kernel.org, netfilter-devel@vger.kernel.org, pablo@netfilter.org, 
 sw@simonwunderlich.de, syzkaller-bugs@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1579426503;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to; bh=BRczTDviaeDTYez7KOKQz91MPq0sq1Vv8zv+kc9CGFY=;
 b=z3Cn8IJW13guCGSnu+UakXdxQ8IZ70c428OYSUyhMVaRCJtG4DzGqjyOhgLL9UtQm8hFBb
 1NgKZfas+tlAEQOaizTOa/E+93Fl/IfEOKKbPP0lU06Ac2nomvJCi7Kdfgu9g4Cir5xN62
 yE4/Bqsbd0xfwsQBHuSBrKoT5bhngzM=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1579426503; a=rsa-sha256; cv=none;
 b=U+9n4ltxW5psN61xM11NrelKzaq6BscZ5OrspuVo6JtkkoUaqnmhrv4CiidC9Sf/ipz2qq
 y4ET8vOcQq8OKnmVqT/KG+NPpiZGJA3KE9gHBX/4pQfHE2SfgO+5VGQk7oiHCmfl0dJfb7
 3cyHtBfkzE/nVcyaRawEAzPzGTLv/YQ=
ARC-Authentication-Results: i=1; open-mesh.org; dkim=none;
 spf=pass (open-mesh.org: domain of
 3xSIkXgkbAJIEKL6w770DwBB4z.2AA270GE0DyA9F09F.yA8@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
 designates 209.85.166.200 as permitted sender)
 smtp.mailfrom=3xSIkXgkbAJIEKL6w770DwBB4z.2AA270GE0DyA9F09F.yA8@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
X-Mailman-Approved-At: Sun, 19 Jan 2020 10:41:48 +0100
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

commit 2f9b0d93a9d3ec64558537ab5d7cff820886afa4
Author: Keerthy <j-keerthy@ti.com>
Date:   Mon Jun 24 05:16:19 2019 +0000

    net: ethernet: ti: cpsw: Fix suspend/resume break

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=17fcf959e00000
start commit:   e02d9c4c Merge branch 'bnxt_en-fixes'
git tree:       net
final crash:    https://syzkaller.appspot.com/x/report.txt?x=1402f959e00000
console output: https://syzkaller.appspot.com/x/log.txt?x=1002f959e00000
kernel config:  https://syzkaller.appspot.com/x/.config?x=7e89bd00623fe71e
dashboard link: https://syzkaller.appspot.com/bug?extid=7b6206fb525c1f5ec3f8
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=16551cc9e00000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=14a04966e00000

Reported-by: syzbot+7b6206fb525c1f5ec3f8@syzkaller.appspotmail.com
Fixes: 2f9b0d93a9d3 ("net: ethernet: ti: cpsw: Fix suspend/resume break")

For information about bisection process see: https://goo.gl/tpsmEJ#bisection
