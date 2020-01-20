Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [78.46.248.236])
	by mail.lfdr.de (Postfix) with ESMTPS id 26504142424
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 20 Jan 2020 08:19:20 +0100 (CET)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id B66CE80905;
	Mon, 20 Jan 2020 08:18:46 +0100 (CET)
Received: from mail-io1-f72.google.com (mail-io1-f72.google.com
 [209.85.166.72]) by open-mesh.org (Postfix) with ESMTPS id 5ACAA801BF
 for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 20 Jan 2020 02:35:02 +0100 (CET)
Received: by mail-io1-f72.google.com with SMTP id i8so18942516ioi.0
 for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 19 Jan 2020 17:35:02 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:in-reply-to:message-id:subject
 :from:to;
 bh=SIy1Y3nZuLhuVMewjZxysiWahWNFeojJqO9vrYtj798=;
 b=LMD8MlpY7ukNefUg7lRBlYxRDQhWcCmqc6nri8Job5TQ7I1DClIS6LPhZc+CczAlx/
 8hGPz3PJ8Ait8ULMlcI4cBDung+Xy//UAF7lC3ooLylIdJ+3f9KOfJY2kfgwzSsD0jDy
 H4v28db1iwPDPjGPTwnBaaeMOxBXZerw2VFcJ7ldjjQ5GVCKUHUPanQ305JnnjvlGWiS
 S/5OCR8netnBwXhFiV3plDVUr0FPkkriijgNdftIM9Tj59pfLyfOwhugyTBD8eM9XPQb
 wd3H/Ddj/URUL/NfEf5ObBUe9TGGx1x0fg4C5fpMBHFwSZJAo+mVGvmXkVOhKbETvZ2M
 m0jQ==
X-Gm-Message-State: APjAAAXieYYEQdE+mJJeA45wLhT4HMgFJXqhY9eWycBIbMgYebi25Yh4
 mii2tQjC7/20e3thC+GCY79pl8y8QLGhjFrkdG0QHyeCzOF5
X-Google-Smtp-Source: APXvYqwxdtT4a7BzshbFsXu5QysWavFxC8kpPU9PQQ8ENYkxIBwMzu1UUle0sf0x3jxjUjZL+Uhywd3DMA1wzvJ6JCkPaqCidVsU
MIME-Version: 1.0
X-Received: by 2002:a92:8307:: with SMTP id f7mr8911636ild.73.1579484101183;
 Sun, 19 Jan 2020 17:35:01 -0800 (PST)
Date: Sun, 19 Jan 2020 17:35:01 -0800
In-Reply-To: <000000000000bdb5b2059c865f5c@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000c795fa059c884c21@google.com>
Subject: Re: KASAN: slab-out-of-bounds Read in bitmap_ip_ext_cleanup
From: syzbot <syzbot+6491ea8f6dddbf04930e@syzkaller.appspotmail.com>
To: a@unstable.cc, akpm@linux-foundation.org, allison@lohutok.net, 
 arnd@arndb.de, axboe@kernel.dk, b.a.t.m.a.n@lists.open-mesh.org, bp@alien8.de, 
 catalin.marinas@arm.com, chris@zankel.net, christian@brauner.io, 
 coreteam@netfilter.org, davem@davemloft.net, elena.reshetova@intel.com, 
 florent.fourcot@wifirst.fr, fw@strlen.de, geert@linux-m68k.org, hare@suse.com, 
 heiko.carstens@de.ibm.com, hpa@zytor.com, info@metux.net, jcmvbkbc@gmail.com, 
 jeremy@azazel.net, johannes.berg@intel.com, kadlec@netfilter.org, 
 linux-api@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, linux-xtensa@linux-xtensa.org, 
 linux@armlinux.org.uk, mareklindner@neomailbox.ch, mingo@redhat.com, 
 netdev@vger.kernel.org, netfilter-devel@vger.kernel.org, pablo@netfilter.org, 
 peterz@infradead.org, sw@simonwunderlich.de, syzkaller-bugs@googlegroups.com, 
 tglx@linutronix.de, viro@zeniv.linux.org.uk, will@kernel.org, x86@kernel.org
Content-Type: text/plain; charset="UTF-8"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1579484103;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to; bh=SIy1Y3nZuLhuVMewjZxysiWahWNFeojJqO9vrYtj798=;
 b=Qbg58u0mbOVh+bPBChPnacbEXmpOmcJZV8jWyAiWzXhtxJFy//zVkFKIrPlWZv75BrmOu7
 z7HXHc7DzFH1CaTlc5+O5SNdTYc/lAViNUKj/HbMGOh11f32vL2Gc10RogPAYuxMFV3QaY
 Vjl8/H17TTlejsDqSb6YSwch1rQhSIw=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1579484103; a=rsa-sha256; cv=none;
 b=lCqysndXLAJWrpYtEaW0PK45IE5S2XKrNDM5m2GTLGZ7VwLbZa0OngwIKHeRmW2cWYsEbO
 XepneYpyjopZUK7fnv2HHVqVdW4oFbJr16hGbZgcwUu5YDWbkg3KvcLrZ8Mk+UZajFTtMH
 xbmtaUNIey5Nv+ZGpmfq1LTBcvFRSf0=
ARC-Authentication-Results: i=1; open-mesh.org; dkim=none;
 spf=pass (open-mesh.org: domain of
 3xQMlXgkbAFgIOPA0BB4H0FF83.6EE6B4KI4H2EDJ4DJ.2EC@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
 designates 209.85.166.72 as permitted sender)
 smtp.mailfrom=3xQMlXgkbAFgIOPA0BB4H0FF83.6EE6B4KI4H2EDJ4DJ.2EC@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
X-Mailman-Approved-At: Mon, 20 Jan 2020 08:18:38 +0100
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

commit d68dbb0c9ac8b1ff52eb09aa58ce6358400fa939
Author: Christian Brauner <christian@brauner.io>
Date:   Thu Jun 20 23:26:35 2019 +0000

    arch: handle arches who do not yet define clone3

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=1456fed1e00000
start commit:   09d4f10a net: sched: act_ctinfo: fix memory leak
git tree:       net
final crash:    https://syzkaller.appspot.com/x/report.txt?x=1656fed1e00000
console output: https://syzkaller.appspot.com/x/log.txt?x=1256fed1e00000
kernel config:  https://syzkaller.appspot.com/x/.config?x=7e89bd00623fe71e
dashboard link: https://syzkaller.appspot.com/bug?extid=6491ea8f6dddbf04930e
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=141af959e00000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=1067fa85e00000

Reported-by: syzbot+6491ea8f6dddbf04930e@syzkaller.appspotmail.com
Fixes: d68dbb0c9ac8 ("arch: handle arches who do not yet define clone3")

For information about bisection process see: https://goo.gl/tpsmEJ#bisection
