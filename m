Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [IPv6:2a01:4f8:141:3341:78:46:248:236])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AA401478E0
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 24 Jan 2020 08:16:46 +0100 (CET)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id BFE498072A;
	Fri, 24 Jan 2020 08:16:33 +0100 (CET)
Received: from mail-il1-f200.google.com (mail-il1-f200.google.com
 [209.85.166.200])
 by open-mesh.org (Postfix) with ESMTPS id 0919A80095
 for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 23 Jan 2020 23:22:03 +0100 (CET)
Received: by mail-il1-f200.google.com with SMTP id h18so48126ilc.2
 for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 23 Jan 2020 14:22:03 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:in-reply-to:message-id:subject
 :from:to;
 bh=U2ciZII89LyEb1jgPxE5/IJrQKEwwRWzV2RXknpTZh0=;
 b=Mjgh/cIE2VN8ehsn2kvyWXosLla6k28ROcbSuk7NKS7quZSIkT06Rwgw5Z9GPu7RQG
 NC4pZnrMIYr3Z2OXXT8WLMHlkdY+gextecF+fgjgCCLyk0kFgs+NBIdaSTBpZpp2akw/
 rVmhJNHd5TKKGOmhM51um6DfqC8Zzp06PMv8z/I1vV18prRdgehMzcVqwIic5HYgWy6W
 i/dR5wJ37JEJM09n1JeZ2APaxWQ/nTKKXS7LXxKpTb1WTRuJOvsNhh9658OyTtiL1ZzZ
 LpZhKXTlHoULdE4/o1yd1cQJapBkh/96ckp1yZbv54DO7Mcz8pJRPcYc+8nogwYDRgYK
 4yrw==
X-Gm-Message-State: APjAAAXS+VopkFbOI6dZAARI0m7QHLSIrLA1UgdR1LLwQstzo6hm+9fF
 iRU4w7eCssXTVDtyxgu7+/MWWqRxkCoHlyNRop9ZBaDTsYuN
X-Google-Smtp-Source: APXvYqzaQsx9AEgaVI+glQ1AcIBsAAutP1ZctuK9ZTtYuJ4mdcopjSrfR25SqY6ZJWnqbTQIJlRs2yTGajrbtyPIUwun6yUoBqiI
MIME-Version: 1.0
X-Received: by 2002:a02:8587:: with SMTP id d7mr59180jai.39.1579818122597;
 Thu, 23 Jan 2020 14:22:02 -0800 (PST)
Date: Thu, 23 Jan 2020 14:22:02 -0800
In-Reply-To: <000000000000da7a79059caf2656@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <00000000000001df94059cd612b2@google.com>
Subject: Re: WARNING in __proc_create (2)
From: syzbot <syzbot+b904ba7c947a37b4b291@syzkaller.appspotmail.com>
To: a@unstable.cc, b.a.t.m.a.n@lists.open-mesh.org, dan.carpenter@oracle.com, 
 davem@davemloft.net, dhowells@redhat.com, info@drgreenstore.com, 
 linux-afs@lists.infradead.org, linux-kernel@vger.kernel.org, 
 mareklindner@neomailbox.ch, netdev@vger.kernel.org, sw@simonwunderlich.de, 
 syzkaller-bugs@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1579818124;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to; bh=U2ciZII89LyEb1jgPxE5/IJrQKEwwRWzV2RXknpTZh0=;
 b=DiE6bz3/GOVswWvum4imkbYvV/gpR2PcoKoJAfFId//OpbvvxaVlIMBoCc9I958lnZaZ49
 LoXIds0HOR2Qwp//A4JZ5pyDRaBdV0jz8wuvu6GUi8w/xwr+kP1jbsbPo90hQ0i+Zhx/e9
 an/yXQcfK5kBxBiv9xc7CmQo8cEEsRg=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1579818124; a=rsa-sha256; cv=none;
 b=FeXRrDU8na7qnO0YPJVu8cjlTrbITGQCq93KQW5cE+W7dto4igriKvlac3Uzsj/bmLPFrl
 tp9cyYVT/bM5bLOHIcUcyh6AGLnj7PHoyJTcl2YwO61q7FSsFvxTPfyyj627z2vCHQGE6l
 q9thf0wNTjW+CeTByjg0HUW7cqrBlCo=
ARC-Authentication-Results: i=1; open-mesh.org; dkim=none;
 spf=pass (open-mesh.org: domain of
 3ihwqXgkbAGMTZaLBMMFSBQQJE.HPPHMFVTFSDPOUFOU.DPN@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
 designates 209.85.166.200 as permitted sender)
 smtp.mailfrom=3ihwqXgkbAGMTZaLBMMFSBQQJE.HPPHMFVTFSDPOUFOU.DPN@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
X-Mailman-Approved-At: Fri, 24 Jan 2020 08:16:29 +0100
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

commit f4b3526d83c40dd8bf5948b9d7a1b2c340f0dcc8
Author: David Howells <dhowells@redhat.com>
Date:   Thu Nov 2 15:27:48 2017 +0000

    afs: Connect up the CB.ProbeUuid

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=1627a721e00000
start commit:   d96d875e Merge tag 'fixes_for_v5.5-rc8' of git://git.kerne..
git tree:       upstream
final crash:    https://syzkaller.appspot.com/x/report.txt?x=1527a721e00000
console output: https://syzkaller.appspot.com/x/log.txt?x=1127a721e00000
kernel config:  https://syzkaller.appspot.com/x/.config?x=83c00afca9cf5153
dashboard link: https://syzkaller.appspot.com/bug?extid=b904ba7c947a37b4b291
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=12c96185e00000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=14f859c9e00000

Reported-by: syzbot+b904ba7c947a37b4b291@syzkaller.appspotmail.com
Fixes: f4b3526d83c4 ("afs: Connect up the CB.ProbeUuid")

For information about bisection process see: https://goo.gl/tpsmEJ#bisection
