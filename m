Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [78.46.248.236])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B031FEA45
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 16 Nov 2019 03:39:55 +0100 (CET)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 5B4B2803D6;
	Sat, 16 Nov 2019 03:39:43 +0100 (CET)
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com
 [209.85.219.72]) by open-mesh.org (Postfix) with ESMTPS id 4F77680055
 for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 15 Nov 2019 21:01:57 +0100 (CET)
Received: by mail-qv1-f72.google.com with SMTP id bz8so7386684qvb.9
 for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 15 Nov 2019 12:01:57 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:in-reply-to:message-id:subject
 :from:to;
 bh=U5n1EJvZkiPV6GmPCMijT0bUs78C96Uzo+x4t7ZUFTY=;
 b=Jp8p+kaanPgppSV8pPQryhWnkmywQZScA8T3vkAsQzWwM5n0WDroTIFbu1zZAtJQYu
 PtWadlDj72mTA1NRjveQoSGkF5Jfs32FOdaOSEFhZYmbjP4KmCkVyeQeTH3T5YN1N4qd
 HTeEf912Ig80lkpLJ8bZwcD5h/l8JUQspXffxeqmTbiveivXCxvdaEMMpCi2heyHR6gv
 VxbajEEd5ak2GXIIc/161dHKjhQogmhz/xn9ekOdxAewngJyvysL+6OLM6kYLnmVS9Xd
 D4Kt1g34SxQa5caEYNxUE/CY69a4CJtUyrvYGA1uuoddG9Gna+0k5QezwWgh+haRt8s6
 mT4Q==
X-Gm-Message-State: APjAAAVmr6i8Yd6R/IuLww+SQ0Gc7Yq04TVLXYXv8Z0RauN2gsjsxx/g
 8DlaX+RtqhEaV9tdeqPSQ8SbRoWxpkqHyTRu8qY7zdlhwmBM
X-Google-Smtp-Source: APXvYqxIGmxq4iqQA3DbtD/X1J4Jz5IYKL9pXLRzICSI/jIAIToGkzSJvfrosilkvOBlbcbr72OpVhz6cPCg1PZfxcNzZX7u8n7q
MIME-Version: 1.0
X-Received: by 2002:a02:a09:: with SMTP id 9mr2409414jaw.84.1573847701206;
 Fri, 15 Nov 2019 11:55:01 -0800 (PST)
Date: Fri, 15 Nov 2019 11:55:01 -0800
In-Reply-To: <000000000000ec7273058b877e1f@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <00000000000029432d059767f930@google.com>
Subject: Re: BUG: MAX_LOCKDEP_ENTRIES too low!
From: syzbot <syzbot+cd0ec5211ac07c18c049@syzkaller.appspotmail.com>
To: a@unstable.cc, alex.aring@gmail.com, allison@lohutok.net, andrew@lunn.ch, 
 andy@greyhouse.net, ap420073@gmail.com, ast@domdv.de, 
 b.a.t.m.a.n@lists.open-mesh.org, bridge@lists.linux-foundation.org, 
 cleech@redhat.com, daniel@iogearbox.net, davem@davemloft.net, 
 dev@openvswitch.org, dsa@cumulusnetworks.com, edumazet@google.com, 
 f.fainelli@gmail.com, fw@strlen.de, gbastien@versatic.net, 
 gregkh@linuxfoundation.org, gustavo@embeddedor.com, haiyangz@microsoft.com, 
 idosch@mellanox.com, info@metux.net, j.vosburgh@gmail.com, j@w1.fi, 
 jack@suse.com, jack@suse.cz, jakub.kicinski@netronome.com, jhs@mojatatu.com, 
 jiri@mellanox.com, jiri@resnulli.us, johan.hedberg@gmail.com, 
 johannes.berg@intel.com, john.hurley@netronome.com, jwi@linux.ibm.com, 
 kstewart@linuxfoundation.org, kvalo@codeaurora.org, kys@microsoft.com, 
 linmiaohe@huawei.com, linux-bluetooth@vger.kernel.org, 
 linux-hams@vger.kernel.org, linux-hyperv@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-ppp@vger.kernel.org, 
 linux-wireless@vger.kernel.org, linux-wpan@vger.kernel.org, 
 liuhangbin@gmail.com, marcel@holtmann.org, mareklindner@neomailbox.ch, 
 mcroce@redhat.com
Content-Type: text/plain; charset="UTF-8"; format=flowed; delsp=yes
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1573848117;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to; bh=U5n1EJvZkiPV6GmPCMijT0bUs78C96Uzo+x4t7ZUFTY=;
 b=a8edQ49CQZqzLIGJM9RqwxNfZw4OfaoBeC1VTS+mXWcLP0b7ls83+ZZ0N/tEsdijmJrOdR
 rFuQ7HyyHeRn3xpPnd4o/x2365miqw8/R6Y26myG2hPNB5YG8P8FOvQTU/kKSzQ7tuUBfd
 QmQfx1AI84zmI+Ee9a8QuaBDpWt86g8=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1573848117; a=rsa-sha256; cv=none;
 b=TgIuK3eYiPFfBP8PLE1aA2+pWqOLpIdlIExKItAePTWjf8LffcXl3Q2uOsCnKIrP/hgDaA
 VQZVBXclXjNqBlx8UgXcjpvS5Cbye5t87FWO4NJr1E3CDU1zWmaCId1YFHlC1nzFASeOWB
 72wq7IQNEO0UGX1T7DoEHb2WvYuzsD4=
ARC-Authentication-Results: i=1; open-mesh.org; dkim=none;
 spf=pass (open-mesh.org: domain of
 3lQLPXQkbAMo8EF0q11u7q55yt.w44w1uA8u7s439u39.s42@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
 designates 209.85.219.72 as permitted sender)
 smtp.mailfrom=3lQLPXQkbAMo8EF0q11u7q55yt.w44w1uA8u7s439u39.s42@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
X-Mailman-Approved-At: Sat, 16 Nov 2019 03:39:32 +0100
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

commit ab92d68fc22f9afab480153bd82a20f6e2533769
Author: Taehee Yoo <ap420073@gmail.com>
Date:   Mon Oct 21 18:47:51 2019 +0000

     net: core: add generic lockdep keys

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=1126f5c2e00000
start commit:   0e3f1ad8 Remove VirtualBox guest shared folders filesystem
git tree:       upstream
final crash:    https://syzkaller.appspot.com/x/report.txt?x=1326f5c2e00000
console output: https://syzkaller.appspot.com/x/log.txt?x=1526f5c2e00000
kernel config:  https://syzkaller.appspot.com/x/.config?x=1aab6d4187ddf667
dashboard link: https://syzkaller.appspot.com/bug?extid=cd0ec5211ac07c18c049
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=1171546ae00000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=133ed206e00000

Reported-by: syzbot+cd0ec5211ac07c18c049@syzkaller.appspotmail.com
Fixes: ab92d68fc22f ("net: core: add generic lockdep keys")

For information about bisection process see: https://goo.gl/tpsmEJ#bisection
