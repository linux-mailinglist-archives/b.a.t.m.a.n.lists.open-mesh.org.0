Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [IPv6:2a01:4f8:141:3341:78:46:248:236])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C77910E641
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon,  2 Dec 2019 08:05:30 +0100 (CET)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 7EADA8063C;
	Mon,  2 Dec 2019 08:05:19 +0100 (CET)
Received: from mail-io1-f69.google.com (mail-io1-f69.google.com
 [209.85.166.69]) by open-mesh.org (Postfix) with ESMTPS id CC7198001F
 for <b.a.t.m.a.n@lists.open-mesh.org>; Mon,  2 Dec 2019 05:12:50 +0100 (CET)
Received: by mail-io1-f69.google.com with SMTP id p2so24954746ioh.8
 for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 01 Dec 2019 20:12:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:in-reply-to:message-id:subject
 :from:to;
 bh=oWsENjm7d/+QABjuPHBYSJPPMCuN6XI9dZYPsoGDEJo=;
 b=qS/YtRwQuJzRP2EMS067q0fJ/CkeqGCjv4DV41bkaJrT/lQYW7FXC/TA7MGI9y+MJ6
 W2nvc6+UXIeqg6k/Uubjs5jcsUrdeP46pNuvJHE+VmrBlrCBXg3UWqPP5cJwZMZWyM6Z
 6otYmcKPXpmKEWE0HFcpgTqdvsnlnPN3LAfCKnJD5rwYk4rNja4dI29yjqToNv/oNKiL
 FZ/MRwdMjcbUnmeoDGqIInRoSDt3C6joy1jW9hFs4xli5fWIJ66br8D9HpW4Szk16Z4S
 ILJUVFuOPOqkKB6LfmzdIE7sE36OYVn6PEX9VRquXXOu+mAdb5NvPbKOXjcOO9WcrGF/
 lLeg==
X-Gm-Message-State: APjAAAUQ1lo9wgSFNc4taSVgqHLhRJyVbolvFeANzqpyAapp3XiOKZ5N
 Ou2Ms7EjLcVP3MlBpRzIdj6izNyGQcmLPzXZ2rUbqWeSHxUo
X-Google-Smtp-Source: APXvYqwbNau2iLq/cBIAuQInsyrPMPEuwnt2BDzeyB8yqBtnk0ZK4FLDDa7c3GeQTvUxRw7rZ0iE6vluQVplMVvE3Si4+oaVnUb7
MIME-Version: 1.0
X-Received: by 2002:a5d:8184:: with SMTP id u4mr50614802ion.155.1575259621372; 
 Sun, 01 Dec 2019 20:07:01 -0800 (PST)
Date: Sun, 01 Dec 2019 20:07:01 -0800
In-Reply-To: <000000000000c280ba05988b6242@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000293e9f0598b0b69d@google.com>
Subject: Re: BUG: sleeping function called from invalid context in
 __alloc_pages_nodemask
From: syzbot <syzbot+4925d60532bf4c399608@syzkaller.appspotmail.com>
To: a@unstable.cc, akpm@linux-foundation.org, alex.aring@gmail.com, 
 allison@lohutok.net, andrew@lunn.ch, andy@greyhouse.net, ap420073@gmail.com, 
 aryabinin@virtuozzo.com, ast@domdv.de, b.a.t.m.a.n@lists.open-mesh.org, 
 bridge@lists.linux-foundation.org, christophe.leroy@c-s.fr, cleech@redhat.com, 
 daniel@iogearbox.net, davem@davemloft.net, dja@axtens.net, 
 dsa@cumulusnetworks.com, dvyukov@google.com, edumazet@google.com, 
 f.fainelli@gmail.com, fw@strlen.de, glider@google.com, gor@linux.ibm.com, 
 gregkh@linuxfoundation.org, gustavo@embeddedor.com, gvaradar@cisco.com, 
 haiyangz@microsoft.com, hdanton@sina.com, idosch@mellanox.com, info@metux.net, 
 j.vosburgh@gmail.com, j@w1.fi, jakub.kicinski@netronome.com, jhs@mojatatu.com, 
 jiri@resnulli.us, johan.hedberg@gmail.com, johannes.berg@intel.com, 
 jwi@linux.ibm.com, kasan-dev@googlegroups.com, kstewart@linuxfoundation.org, 
 kvalo@codeaurora.org, kys@microsoft.com, lariel@mellanox.com, 
 linmiaohe@huawei.com, linux-bluetooth@vger.kernel.org, 
 linux-hams@vger.kernel.org, linux-hyperv@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-mm@kvack.org, linux-ppp@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"; format=flowed; delsp=yes
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1575259971;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to; bh=oWsENjm7d/+QABjuPHBYSJPPMCuN6XI9dZYPsoGDEJo=;
 b=CL7B0/sb843bWt2IXp7LDhHyRpiEnHpHjYYwbyhL68jXLvxNgS7SqNWEtK1tOBoUlerIAS
 tFMKhjzvDrKOqifClxpC/xexpRWFd7mWRKjhezj3U9NN+duEG85d2rAOVRD4P5Y8eRup0c
 CTnl6Nh6nqBTO3w819si+ad0iwRjK+g=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1575259971; a=rsa-sha256; cv=none;
 b=X8NDxVBSNsIhFl0boT0b5WBUBtEFNyrCXz5jQLH8M1n7ewjR3/5bycQ7Jh+s3GDdl6KUq4
 P2Wx/xx/AUNH1dDCzy5MqkBYkphCsueSSlMJoaiJWSLfY2I5wP7s0sDl6BR+d7LfuUjqc0
 pqq+nnAtXyDtwPkAAeiwF+zclxBPM6w=
ARC-Authentication-Results: i=1; open-mesh.org; dkim=none;
 spf=pass (open-mesh.org: domain of
 35Y3kXQkbAIg4ABwmxxq3m11up.s00sxq64q3o0z5qz5.o0y@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
 designates 209.85.166.69 as permitted sender)
 smtp.mailfrom=35Y3kXQkbAIg4ABwmxxq3m11up.s00sxq64q3o0z5qz5.o0y@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
X-Mailman-Approved-At: Mon, 02 Dec 2019 08:05:16 +0100
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

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=15769712e00000
start commit:   419593da Add linux-next specific files for 20191129
git tree:       linux-next
final crash:    https://syzkaller.appspot.com/x/report.txt?x=17769712e00000
console output: https://syzkaller.appspot.com/x/log.txt?x=13769712e00000
kernel config:  https://syzkaller.appspot.com/x/.config?x=7c04b0959e75c206
dashboard link: https://syzkaller.appspot.com/bug?extid=4925d60532bf4c399608
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=16148e9ce00000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=12a1f786e00000

Reported-by: syzbot+4925d60532bf4c399608@syzkaller.appspotmail.com
Fixes: ab92d68fc22f ("net: core: add generic lockdep keys")

For information about bisection process see: https://goo.gl/tpsmEJ#bisection
