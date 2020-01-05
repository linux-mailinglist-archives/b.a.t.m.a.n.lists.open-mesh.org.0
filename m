Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [78.46.248.236])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D181130E11
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon,  6 Jan 2020 08:40:16 +0100 (CET)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 2A1B280593;
	Mon,  6 Jan 2020 08:40:06 +0100 (CET)
Received: from mail-il1-f199.google.com (mail-il1-f199.google.com
 [209.85.166.199])
 by open-mesh.org (Postfix) with ESMTPS id 226F480091
 for <b.a.t.m.a.n@lists.open-mesh.org>; Mon,  6 Jan 2020 00:05:33 +0100 (CET)
Received: by mail-il1-f199.google.com with SMTP id e4so29846805ilm.7
 for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 05 Jan 2020 15:05:33 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:in-reply-to:message-id:subject
 :from:to;
 bh=MybccZLowdSuY610EZVsc1I89suuz7NXH7uvIv0mFvY=;
 b=QjiLu18UPZrn0o7BJGXfaNFlgCmkM1Blvyc2K20yKl7IkfYsTRboI+wVDpOzJV1AMJ
 zpzH9QyOo/Bpxd1/mWXlvhOOvcdYesxjw97YLH4N+pDAkz9dEIeMHR3gEjxUO53eqLZK
 L2iYjvotm+DJ7/qiwhElXKe8a5xF6Iw7/uwwzSRjDDmrYNXAIzsgkwI7nC/VriEdlQf2
 1ab6r/WturXtmWaYTLlqoUXdvpftPCJhJ92nwpvakFAg3D0iYp+HcjzGMb2eVc90A/C7
 3CadsRP3hvFWiLqucUMGft5qKQLw8OO5+S5CaKgyqbOtS7jem/H+kCwY6T8xAI3x5Rtc
 Cxvw==
X-Gm-Message-State: APjAAAVlo3jU8OhGKOObLUo5Eg/t1FJBaO3IECGnG0QdfJvhgi1AGkyP
 ++INBV+65XU2vxzKMMdlwpd+9GJ1jLJLAW3txrCNStFEUKgz
X-Google-Smtp-Source: APXvYqwI1kaOaU+6OhN9mHkSBgJLPiiG9E2oMRL3MMauj8xdpOQ/nYJTOKJNppAbqi17MDpHQfb0GrThss7Ve4NxONRpCk4GrB8O
MIME-Version: 1.0
X-Received: by 2002:a92:3996:: with SMTP id h22mr81182568ilf.129.1578265080765; 
 Sun, 05 Jan 2020 14:58:00 -0800 (PST)
Date: Sun, 05 Jan 2020 14:58:00 -0800
In-Reply-To: <000000000000ab3f800598cec624@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000802598059b6c7989@google.com>
Subject: Re: WARNING: bad unlock balance in sch_direct_xmit
From: syzbot <syzbot+4ec99438ed7450da6272@syzkaller.appspotmail.com>
To: a@unstable.cc, alex.aring@gmail.com, allison@lohutok.net, andrew@lunn.ch, 
 andy@greyhouse.net, ap420073@gmail.com, ast@domdv.de, 
 b.a.t.m.a.n@lists.open-mesh.org, bridge@lists.linux-foundation.org, 
 cleech@redhat.com, daniel@iogearbox.net, davem@davemloft.net, 
 dsa@cumulusnetworks.com, f.fainelli@gmail.com, fw@strlen.de, 
 gregkh@linuxfoundation.org, gustavo@embeddedor.com, haiyangz@microsoft.com, 
 info@metux.net, j.vosburgh@gmail.com, j@w1.fi, jakub.kicinski@netronome.com, 
 jhs@mojatatu.com, jiri@resnulli.us, johan.hedberg@gmail.com, 
 johannes.berg@intel.com, jwi@linux.ibm.com, kstewart@linuxfoundation.org, 
 kvalo@codeaurora.org, kys@microsoft.com, linmiaohe@huawei.com, 
 linux-bluetooth@vger.kernel.org, linux-hams@vger.kernel.org, 
 linux-hyperv@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-ppp@vger.kernel.org, linux-wireless@vger.kernel.org, 
 linux-wpan@vger.kernel.org, liuhangbin@gmail.com, marcel@holtmann.org, 
 mareklindner@neomailbox.ch, mkubecek@suse.cz, mmanning@vyatta.att-mail.com, 
 netdev@vger.kernel.org, nikolay@cumulusnetworks.com, 
 oss-drivers@netronome.com, paulus@samba.org, ralf@linux-mips.org, 
 roopa@cumulusnetworks.com, sashal@kernel.org
Content-Type: text/plain; charset="UTF-8"; format=flowed; delsp=yes
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1578265533;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to; bh=MybccZLowdSuY610EZVsc1I89suuz7NXH7uvIv0mFvY=;
 b=mDYvhgI04vm0QW8LK2dok5S7Dqxn5Mc+XtURWy9mXC66yDWpTV1lVZr9zaTJg3K5JkRJWA
 Tz5DKYlpG5bc3LGZreUhvhZYUwbokHdbhaHhpMrEZjgMcmgy9Mjd06fCFhL8mQR+eY3Hbd
 RYHqSvbpXlaY5+Stvv41aKMn27x7jJE=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1578265533; a=rsa-sha256; cv=none;
 b=yWq2MLHWd8LhpBUIweqmA3fO/SdyVPfICkfuQrQ4GruDQZbmgy7xD859voJ0rrfu5WTwYf
 Mg03Gl206IQLevFtcz0blExKVVk/YTKWZxnoJat58j7V79EU23FyMQ7gJmun7MDvSqOkhJ
 5QNVRG9jaLV4d1En2TfrPaiaBvubcn8=
ARC-Authentication-Results: i=1; open-mesh.org; dkim=none;
 spf=pass (open-mesh.org: domain of
 3-GkSXgkbAA05BCxnyyr4n22vq.t11tyr75r4p106r06.p1z@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
 designates 209.85.166.199 as permitted sender)
 smtp.mailfrom=3-GkSXgkbAA05BCxnyyr4n22vq.t11tyr75r4p106r06.p1z@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
X-Mailman-Approved-At: Mon, 06 Jan 2020 08:39:59 +0100
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

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=15e88ec6e00000
start commit:   36487907 Merge branch 'akpm' (patches from Andrew)
git tree:       upstream
final crash:    https://syzkaller.appspot.com/x/report.txt?x=17e88ec6e00000
console output: https://syzkaller.appspot.com/x/log.txt?x=13e88ec6e00000
kernel config:  https://syzkaller.appspot.com/x/.config?x=f2f3ef188b7e16cf
dashboard link: https://syzkaller.appspot.com/bug?extid=4ec99438ed7450da6272
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=1722c5c1e00000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=167aee3ee00000

Reported-by: syzbot+4ec99438ed7450da6272@syzkaller.appspotmail.com
Fixes: ab92d68fc22f ("net: core: add generic lockdep keys")

For information about bisection process see: https://goo.gl/tpsmEJ#bisection
