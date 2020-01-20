Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [78.46.248.236])
	by mail.lfdr.de (Postfix) with ESMTPS id 044271432E4
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 20 Jan 2020 21:26:21 +0100 (CET)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 82B8E809D4;
	Mon, 20 Jan 2020 21:26:04 +0100 (CET)
Received: from mail-io1-f69.google.com (mail-io1-f69.google.com
 [209.85.166.69]) by open-mesh.org (Postfix) with ESMTPS id 765CA801CC
 for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 20 Jan 2020 19:22:02 +0100 (CET)
Received: by mail-io1-f69.google.com with SMTP id t18so154979iob.18
 for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 20 Jan 2020 10:22:02 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:in-reply-to:message-id:subject
 :from:to;
 bh=MqDXOoM9vvTcTH3u9+KklRDGAKW3hOgR3ZSR/h+boWo=;
 b=GQM9fjvs0ENvZefsr2gC8wbc6mQhkUWoBYWoBXRhBUcKsjC/f3m9qUKksHyu7ZHI7z
 ihNB0zVzkxeL3Drcd4C2e4UMf9Nmt3xfUGLm1BxGOuDA4QklftMfIZiMbb3DDWIczHz8
 MuyO1z33Fnd0pZP9r1/sUD9NGdzH+wMxqchBpiEzpd2xiqpEgSieXKeKZDZ+eKv/l0Kh
 eTaOPqDDg3/F6dTa9EXLVdauCJhGhooeZlukn+1KbI7Wa49H7XVEiEoYoG3+MxnbPD13
 ++hvN46CeGXasrhHDNDqh9waA3X5TJnxu/oNeAz5OGUf/WW2JBmFbIjN23ROnGP3ryUX
 krwA==
X-Gm-Message-State: APjAAAU1oWeRIywEPDvlMe4IUJhWSPGg0B7ZhFmQjKwOwTvEmZK4HB43
 c5FUgY0ObhOKrYjVzsMc6/kUSThu65dnkY7liiu1uNRVa4O6
X-Google-Smtp-Source: APXvYqzfQyTnxVv2xv/HZdiNuXYYiHLNeNXNJ6hv0nTAZFxD/xXg/rkalEYxh8LA+d9fc9B6xIMLWxfmsZDaI5AWugpAqhqpGZ/4
MIME-Version: 1.0
X-Received: by 2002:a02:856a:: with SMTP id g97mr227401jai.97.1579544520986;
 Mon, 20 Jan 2020 10:22:00 -0800 (PST)
Date: Mon, 20 Jan 2020 10:22:00 -0800
In-Reply-To: <00000000000043aa29059c91459e@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000149402059c965e75@google.com>
Subject: Re: KASAN: slab-out-of-bounds Read in bitmap_ipmac_gc
From: syzbot <syzbot+c1a1fb435465986efe35@syzkaller.appspotmail.com>
To: a@unstable.cc, b.a.t.m.a.n@lists.open-mesh.org, coreteam@netfilter.org, 
 davem@davemloft.net, fw@strlen.de, gregkh@linuxfoundation.org, info@metux.net, 
 jeremy@azazel.net, kadlec@netfilter.org, kstewart@linuxfoundation.org, 
 linux-kernel@vger.kernel.org, lipeng321@huawei.com, liuyonglong@huawei.com, 
 mareklindner@neomailbox.ch, netdev@vger.kernel.org, 
 netfilter-devel@vger.kernel.org, pablo@netfilter.org, salil.mehta@huawei.com, 
 sbrivio@redhat.com, shuliubin@huawei.com, sw@simonwunderlich.de, 
 syzkaller-bugs@googlegroups.com, tglx@linutronix.de, yisen.zhuang@huawei.com
Content-Type: text/plain; charset="UTF-8"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1579544522;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to; bh=MqDXOoM9vvTcTH3u9+KklRDGAKW3hOgR3ZSR/h+boWo=;
 b=WuxJk6vpe3cSxu1IACVcxyTtYiS0BUsmJ79V68P47LBsvuPuPCMUJ+ihoN2WxfXmmYwTDL
 UBNJtLJj5Uf+vZhQCrB20zAXsICoXFfrp9NJa5uUEVZ2Od/fEts/XVEnRHCcpUG3mAjDfQ
 xkKjdRTCz4RoHOGngXWm1O3nDNwgfLc=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1579544522; a=rsa-sha256; cv=none;
 b=ccpFZcuBU31J8a5TJaPIWg9XM7DoG/ZEDy3zV3+Wb0usnywTN4rvpOf6wXV/0uxuz+Gtmn
 oDSg1z+T/CylnSHk4Tt2DxCiQbtq1UILBA7qc8M8rDf1+ymIC7h+7fseqmWby/cKcRnpbW
 E4ctvWZMbjvCUlvY7r3m77oGmYOxHuA=
ARC-Authentication-Results: i=1; open-mesh.org; dkim=none;
 spf=pass (open-mesh.org: domain of
 3yO8lXgkbADclrsdTeeXkTiibW.ZhhZeXnlXkVhgmXgm.Vhf@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
 designates 209.85.166.69 as permitted sender)
 smtp.mailfrom=3yO8lXgkbADclrsdTeeXkTiibW.ZhhZeXnlXkVhgmXgm.Vhf@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
X-Mailman-Approved-At: Mon, 20 Jan 2020 21:25:57 +0100
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

commit 0d581ba311a27762fe1a14e5db5f65d225b3d844
Author: Yonglong Liu <liuyonglong@huawei.com>
Date:   Wed Jul 3 11:12:30 2019 +0000

    net: hns: add support for vlan TSO

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=16d5dfaee00000
start commit:   def9d278 Linux 5.5-rc7
git tree:       upstream
final crash:    https://syzkaller.appspot.com/x/report.txt?x=15d5dfaee00000
console output: https://syzkaller.appspot.com/x/log.txt?x=11d5dfaee00000
kernel config:  https://syzkaller.appspot.com/x/.config?x=cf8e288883e40aba
dashboard link: https://syzkaller.appspot.com/bug?extid=c1a1fb435465986efe35
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=153ac495e00000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=153471d1e00000

Reported-by: syzbot+c1a1fb435465986efe35@syzkaller.appspotmail.com
Fixes: 0d581ba311a2 ("net: hns: add support for vlan TSO")

For information about bisection process see: https://goo.gl/tpsmEJ#bisection
