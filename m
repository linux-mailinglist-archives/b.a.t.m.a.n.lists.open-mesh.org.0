Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [78.46.248.236])
	by mail.lfdr.de (Postfix) with ESMTPS id EEE3C12BDF9
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 28 Dec 2019 17:04:27 +0100 (CET)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 4FBC1806DD;
	Sat, 28 Dec 2019 17:04:19 +0100 (CET)
Received: from mail-il1-f198.google.com (mail-il1-f198.google.com
 [209.85.166.198])
 by open-mesh.org (Postfix) with ESMTPS id 77BA080098
 for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 28 Dec 2019 10:11:48 +0100 (CET)
Received: by mail-il1-f198.google.com with SMTP id s9so1611780ilk.0
 for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 28 Dec 2019 01:11:48 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:in-reply-to:message-id:subject
 :from:to;
 bh=WfGb9lGFdGhSi8hZEfWk/M3G0IsGwYCNAdgm6CjQ7QI=;
 b=tHW5o58SooDbIEl9COM6GxkMsTzcVNqM0LRJzRfmvjOFt2bwhTt36GiRjpnvZ4WsYy
 Of2hMOUSSBjQkW7w2Jm9IMfIbkgd2aIoQzmWHI/syEukXUpq0m8E+4fom2I1zCLSUdXw
 dM1EZ2iXyACKDZgaA0+sjAynBlMFGKun1jjnsDZl9TDhrAtVBKdAVmtEg7uSD8UEacIh
 Pi/QQTje4SPAsNuckqLZXkPh6CTyEhDmFTjRGBMSw/LGKZd/0R/4jksAbzQvhDS6t9BM
 1D0GlAjjzLptnXjh2BPPC59JAWugNvxV1DOFrX05i4tz5QRa7w0fNHVRP8HmANFhE4LO
 9+EA==
X-Gm-Message-State: APjAAAVH9EF+xScEAJiw61smCT5FMxGpkjKaPuZ7rrSPuIf0MHZHOvdE
 GqoTph7mcFR2huSrWmWZPOD7LSwBpr/TAmDn7Za60yrAI7VR
X-Google-Smtp-Source: APXvYqyJDTFrNl+ZpW3oGkoUn5Ny0lVdEe36WgM5iN4TzGysRfB97r5Zok5DVtIDafRKxTRvqHwhuE0e1QpHyIt/5WWgjBGqL612
MIME-Version: 1.0
X-Received: by 2002:a6b:f404:: with SMTP id i4mr37323657iog.252.1577523961683; 
 Sat, 28 Dec 2019 01:06:01 -0800 (PST)
Date: Sat, 28 Dec 2019 01:06:01 -0800
In-Reply-To: <0000000000004718ff059abd88ef@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000005c669c059abfebe7@google.com>
Subject: Re: general protection fault in nf_ct_netns_do_get
From: syzbot <syzbot+19616eedf6fd8e241e50@syzkaller.appspotmail.com>
To: a@unstable.cc, b.a.t.m.a.n@lists.open-mesh.org, coreteam@netfilter.org, 
 davem@davemloft.net, fw@strlen.de, hpa@zytor.com, kadlec@netfilter.org, 
 linux-kernel@vger.kernel.org, linux@roeck-us.net, mareklindner@neomailbox.ch, 
 mingo@redhat.com, netdev@vger.kernel.org, netfilter-devel@vger.kernel.org, 
 pablo@netfilter.org, sw@simonwunderlich.de, syzkaller-bugs@googlegroups.com, 
 tglx@linutronix.de, torvalds@linux-foundation.org, x86@kernel.org
Content-Type: text/plain; charset="UTF-8"; format=flowed; delsp=yes
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1577524308;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to; bh=WfGb9lGFdGhSi8hZEfWk/M3G0IsGwYCNAdgm6CjQ7QI=;
 b=kI5W2oGDi4vT3TT96r3MqWGs7Df3ETtr9MOid6j6Lou250Zsik2tGlTPk52sozOQFTRaDv
 WVBzyh0PkghO4ncLxxIZ0fdzIfVpeCa8yRB72QqA7RlCBePCeTdtQtlQiynrBbr73E8yoj
 WjAY93bYcHf+Yah1NPC2W4uMuerDqrI=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1577524308; a=rsa-sha256; cv=none;
 b=axU0qtABAXpLqDUHkXs70IDgD2xIjqFBR6cUGIbDXgEYsFmgDBBJ1+aMuTbGzn7pSndatn
 FBruHp2dN9vV3JzOKNU9VEhQuDCz4KUhbE6QXHqyXvQOkx8UX23KwfgDoMDnelSl4b/mSW
 W+0pqa/GOr74x5ajL5vXxc2yGNVcL5I=
ARC-Authentication-Results: i=1; open-mesh.org; dkim=none;
 spf=pass (open-mesh.org: domain of
 3-RoHXgkbAEIw23oeppivettmh.ksskpiywivgsrxirx.gsq@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
 designates 209.85.166.198 as permitted sender)
 smtp.mailfrom=3-RoHXgkbAEIw23oeppivettmh.ksskpiywivgsrxirx.gsq@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
X-Mailman-Approved-At: Sat, 28 Dec 2019 17:04:16 +0100
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

commit 0a957467c5fd46142bc9c52758ffc552d4c5e2f7
Author: Guenter Roeck <linux@roeck-us.net>
Date:   Wed Aug 15 20:22:27 2018 +0000

     x86: i8259: Add missing include file

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=1579e751e00000
start commit:   46cf053e Linux 5.5-rc3
git tree:       upstream
final crash:    https://syzkaller.appspot.com/x/report.txt?x=1779e751e00000
console output: https://syzkaller.appspot.com/x/log.txt?x=1379e751e00000
kernel config:  https://syzkaller.appspot.com/x/.config?x=ed9d672709340e35
dashboard link: https://syzkaller.appspot.com/bug?extid=19616eedf6fd8e241e50
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=14a47ab9e00000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=170f2485e00000

Reported-by: syzbot+19616eedf6fd8e241e50@syzkaller.appspotmail.com
Fixes: 0a957467c5fd ("x86: i8259: Add missing include file")

For information about bisection process see: https://goo.gl/tpsmEJ#bisection
