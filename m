Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [IPv6:2a01:4f8:141:3341:78:46:248:236])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E3B4143752
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 21 Jan 2020 07:58:52 +0100 (CET)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 4217780044;
	Tue, 21 Jan 2020 07:58:35 +0100 (CET)
Received: from mail-io1-f70.google.com (mail-io1-f70.google.com
 [209.85.166.70]) by open-mesh.org (Postfix) with ESMTPS id 94098801DB
 for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 21 Jan 2020 00:16:02 +0100 (CET)
Received: by mail-io1-f70.google.com with SMTP id e7so587923iog.9
 for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 20 Jan 2020 15:16:02 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:in-reply-to:message-id:subject
 :from:to;
 bh=y3GTXWLuk9NLOUo9vngxj+QH9Vmo0/vEpcLHw8rmxOE=;
 b=SmLauPWJXglal7Y2YZBSG3PnLMWKpwQ+1yYLFpp5wv5snou9WeVKVhIQdFuhlzm+mi
 zclovCANo2EwKJRASl3FKNbSd75Yo1h5u4RCFXIHF+J7LNxb9Qyt0Z3K8oM6GoOOo/aj
 0Y5GH6fdmoh8BbEHbV86YPfoXM46E3qXKnR0p372dH+TQQ8n3J8vUdSTRLh8JiVsRxgk
 JQ6gour/yeI/NG+wDlHMwBDQfsn8ZvWXIyNHHX4Cg80Qm1mHttWO9NgTe3XTxDj6MF0i
 qdVk2gZu174yfOfmTRCUd4XGEcIlOPRGBVTsJWrEziZei0CwUb4ARAT+Nk+oICNfdzFh
 B2jA==
X-Gm-Message-State: APjAAAXKbgcdhheQMJIBsyht6htV9mSt1sY4mIriwCC8o9oOr56I9BLf
 RssL/UQKRfb7OouyAYGYiAtEgcuKfnXCmNs/8ZOPz/d3dlXJ
X-Google-Smtp-Source: APXvYqwTQzxbm8PYHQsYDQTufEheVPhobojoxo91G/kDDsKtigITdXJIOhyQnk0UJj6rRXnzx2pnx/MUqigsEvuGYyTl0a8JeDIb
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:f0f:: with SMTP id
 x15mr1213167ilj.298.1579562160891; 
 Mon, 20 Jan 2020 15:16:00 -0800 (PST)
Date: Mon, 20 Jan 2020 15:16:00 -0800
In-Reply-To: <000000000000c7999e059c86eebe@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000802f87059c9a7984@google.com>
Subject: Re: KASAN: use-after-free Read in bitmap_ipmac_ext_cleanup
From: syzbot <syzbot+33fc3ad6fa11675e1a7e@syzkaller.appspotmail.com>
To: a@unstable.cc, b.a.t.m.a.n@lists.open-mesh.org, coreteam@netfilter.org, 
 davem@davemloft.net, florent.fourcot@wifirst.fr, fw@strlen.de, 
 jeremy@azazel.net, johannes.berg@intel.com, kadlec@netfilter.org, 
 linux-kernel@vger.kernel.org, mareklindner@neomailbox.ch, 
 netdev@vger.kernel.org, netfilter-devel@vger.kernel.org, pablo@netfilter.org, 
 po-hsu.lin@canonical.com, skhan@linuxfoundation.org, sw@simonwunderlich.de, 
 syzkaller-bugs@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Approved-At: Tue, 21 Jan 2020 07:58:31 +0100
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

commit ff95bf28c23490584b9d75913a520bb7bb1f2ecb
Author: Po-Hsu Lin <po-hsu.lin@canonical.com>
Date:   Mon Jul 1 04:40:31 2019 +0000

    selftests/net: skip psock_tpacket test if KALLSYMS was not enabled

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=17e2e966e00000
start commit:   8f8972a3 Merge tag 'mtd/fixes-for-5.5-rc7' of git://git.ke..
git tree:       upstream
final crash:    https://syzkaller.appspot.com/x/report.txt?x=1412e966e00000
console output: https://syzkaller.appspot.com/x/log.txt?x=1012e966e00000
kernel config:  https://syzkaller.appspot.com/x/.config?x=d9290aeb7e6cf1c4
dashboard link: https://syzkaller.appspot.com/bug?extid=33fc3ad6fa11675e1a7e
userspace arch: i386
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=15982cc9e00000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=11be38d6e00000

Reported-by: syzbot+33fc3ad6fa11675e1a7e@syzkaller.appspotmail.com
Fixes: ff95bf28c234 ("selftests/net: skip psock_tpacket test if KALLSYMS was not enabled")

For information about bisection process see: https://goo.gl/tpsmEJ#bisection
