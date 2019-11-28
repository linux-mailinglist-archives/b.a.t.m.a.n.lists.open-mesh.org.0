Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [IPv6:2a01:4f8:141:3341:78:46:248:236])
	by mail.lfdr.de (Postfix) with ESMTPS id B8EE910C424
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 28 Nov 2019 07:59:51 +0100 (CET)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id F1C3480569;
	Thu, 28 Nov 2019 07:59:39 +0100 (CET)
Received: from mail-il1-f199.google.com (mail-il1-f199.google.com
 [209.85.166.199])
 by open-mesh.org (Postfix) with ESMTPS id 6A9C4800E5
 for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 28 Nov 2019 03:07:24 +0100 (CET)
Received: by mail-il1-f199.google.com with SMTP id o185so20864395ila.8
 for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 27 Nov 2019 18:07:24 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:in-reply-to:message-id:subject
 :from:to;
 bh=DYCoVBntiKkpTeX6a8KJneZkYAcva9u1pdG4zXgpO64=;
 b=QI2pWJm0nSdnBBJDxzGeh0fmybQxB/WOq4e4W7/9NsTnhTrs/YvDrSr1e5ztyhYptb
 AH4pO5UNkXU6WyDVUk26rynrIVZNMQcyTp5RYgbWvnE2yFTFuKEcQBA9M/O1zPzC9TG8
 ZiaNBF72AyNiQurz3AyiDD8bnNjEQC0VSh3I8n6rfoevNmrOBffo6ncejkZKu3tNr8Al
 SKY5v4wdOI+eRj2+xr8mmsYx0BOf5OVnbmPPDfv5BTe2/0KYQ4N73wiKtfuXuvmvxoZR
 +WTbbVSFOmrLMs6bBi3/mSF+k8KbuRkbaW0zgu822EY3Re/l5i3H9evOgCrUTQ5yclB1
 TpGQ==
X-Gm-Message-State: APjAAAV4TdqeS2EMWWflSIZ93ceRdrveBL+U/QrPYL8tuAtDB1R9Og2c
 tCMFd7FocGwdA0W7pMwH1Wv7N5NcyPgT0WADJES8c3ped74a
X-Google-Smtp-Source: APXvYqxa6cVqXVISZzxW/NS5ndS0aUKG+LFds1IRmdw/COM4lIqUf7ADeUv9oT1zbWREBSImJJDTBYinlwECS+K++PZEc9N9rGqG
MIME-Version: 1.0
X-Received: by 2002:a92:461d:: with SMTP id t29mr49468857ila.100.1574906401298; 
 Wed, 27 Nov 2019 18:00:01 -0800 (PST)
Date: Wed, 27 Nov 2019 18:00:01 -0800
In-Reply-To: <00000000000038b5c205983c2df4@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000009aa32205985e78b6@google.com>
Subject: Re: WARNING in mark_lock (3)
From: syzbot <syzbot+a229d8d995b74f8c4b6c@syzkaller.appspotmail.com>
To: a@unstable.cc, b.a.t.m.a.n@lists.open-mesh.org, davem@davemloft.net, 
 jakub.kicinski@netronome.com, jhs@mojatatu.com, jiri@resnulli.us, 
 linux-kernel@vger.kernel.org, mareklindner@neomailbox.ch, 
 netdev@vger.kernel.org, sven@narfation.org, sw@simonwunderlich.de, 
 syzkaller-bugs@googlegroups.com, vinicius.gomes@intel.com, 
 wang.yi59@zte.com.cn, xiyou.wangcong@gmail.com
Content-Type: text/plain; charset="UTF-8"; format=flowed; delsp=yes
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1574906844;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to; bh=DYCoVBntiKkpTeX6a8KJneZkYAcva9u1pdG4zXgpO64=;
 b=oDjJ0tz1EikmAtO71quJMg6exXl5yF/KtAEQv3mZkigTeQ7Pgi5PPId5RPgyzfdY2d502h
 Wtehwdv/ugVdch81mFHRXBo1mOJpLsFC0SwfIejR5J1Bqm3jKbtdiqqENOlXUvTZKz7W00
 O0ZWksjAp67f+w08AKwQaXrTqhQBF2E=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1574906844; a=rsa-sha256; cv=none;
 b=vOoTslGl8ifb7JdYi83ITZQA2SJvnxH6nsWLr286KnU0p4wacFSb6IF+alKApHJMZ2mojC
 4Oe/aroaA0rGgWdDkT3EDWWMi+9DwctaT39cTTVcPlhnyIVD7EcXyzZKfb/yJDg3vRgelR
 UzI5Xv9SL3ZlzZhspF1uFW+bYODQkOU=
ARC-Authentication-Results: i=1; open-mesh.org; dkim=none;
 spf=pass (open-mesh.org: domain of
 3ISrfXQkbAOYaghSITTMZIXXQL.OWWOTMcaMZKWVbMVb.KWU@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
 designates 209.85.166.199 as permitted sender)
 smtp.mailfrom=3ISrfXQkbAOYaghSITTMZIXXQL.OWWOTMcaMZKWVbMVb.KWU@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
X-Mailman-Approved-At: Thu, 28 Nov 2019 07:59:36 +0100
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

commit d665c1281bc89ac85b8b0c058c22a3f94640a1d6
Author: Yi Wang <wang.yi59@zte.com.cn>
Date:   Mon Oct 21 23:57:42 2019 +0000

     net: sched: taprio: fix -Wmissing-prototypes warnings

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=132ee536e00000
start commit:   89d57ddd Merge tag 'media/v5.5-1' of git://git.kernel.org/..
git tree:       upstream
final crash:    https://syzkaller.appspot.com/x/report.txt?x=10aee536e00000
console output: https://syzkaller.appspot.com/x/log.txt?x=172ee536e00000
kernel config:  https://syzkaller.appspot.com/x/.config?x=595c15c951695d1b
dashboard link: https://syzkaller.appspot.com/bug?extid=a229d8d995b74f8c4b6c
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=1511af5ee00000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=16e0f17ae00000

Reported-by: syzbot+a229d8d995b74f8c4b6c@syzkaller.appspotmail.com
Fixes: d665c1281bc8 ("net: sched: taprio: fix -Wmissing-prototypes  
warnings")

For information about bisection process see: https://goo.gl/tpsmEJ#bisection
