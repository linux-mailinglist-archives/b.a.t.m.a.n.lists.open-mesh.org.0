Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [78.46.248.236])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D1CF143758
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 21 Jan 2020 07:59:07 +0100 (CET)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id C92D6809D4;
	Tue, 21 Jan 2020 07:58:38 +0100 (CET)
Received: from mail-io1-f72.google.com (mail-io1-f72.google.com
 [209.85.166.72]) by open-mesh.org (Postfix) with ESMTPS id 7F2C3801CC
 for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 21 Jan 2020 05:41:02 +0100 (CET)
Received: by mail-io1-f72.google.com with SMTP id p206so965342iod.13
 for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 20 Jan 2020 20:41:02 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:in-reply-to:message-id:subject
 :from:to;
 bh=NCHvuKVSBxRHeizGAyp94YLEyZNHqgNg1esxuxlJg/o=;
 b=GR8YDHWwnVTVXYdMM4oO4h4ERimCkAoCeFWSZceP6aNcQ3vyuzguDV8EvHoJzmDtIi
 oohOh8J4idGg9DrY9GukBgnxDHqb/iFXj6TcUDpOcBsUodrZeXDnlpqUFMkO6GzIe8EK
 wQ3BVrU7plBV1Q4J3dHol8G82O1GtFdQWAH76KLdaTiyjpTjX1hUEdaP9ZC74z9Wvuzb
 ZJu6o7YyyqvgatBZywj/BLUezJL6Ealhz/w7YlT70DJ3fHNeqf8pPzhFvXePetkp73I1
 emy4kS623DpbdKbrSwxkTByBQkFaOletsUJSKVlrsJlVqNku+jHR+OZOJKvREwAtOGyh
 31Jw==
X-Gm-Message-State: APjAAAWX9JmXD8mqYcfpy2vabSS1dGRhHWhMqQL25LbVY7EzHqCyoMZ7
 ULPsv4y6R4rfBOEXU6PdRNns0HaKJuUoYpH99z9lo0AgJXGR
X-Google-Smtp-Source: APXvYqzJrudOM5ZqIhdp6/vUqAJPKgAZHJimMJnIa4tHcx71IDDXqV6DGIP5tIwdhQNRHsKr47nmu6rr4NtsU6zWdZOvYEY4ROX2
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:4d2:: with SMTP id
 f18mr2062010ils.54.1579581661230; 
 Mon, 20 Jan 2020 20:41:01 -0800 (PST)
Date: Mon, 20 Jan 2020 20:41:01 -0800
In-Reply-To: <000000000000bb0378059c865fdf@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000cfbeb5059c9f036d@google.com>
Subject: Re: KASAN: use-after-free Read in bitmap_ip_destroy
From: syzbot <syzbot+8b5f151de2f35100bbc5@syzkaller.appspotmail.com>
To: a@unstable.cc, b.a.t.m.a.n@lists.open-mesh.org, coreteam@netfilter.org, 
 davem@davemloft.net, florent.fourcot@wifirst.fr, fw@strlen.de, 
 jeremy@azazel.net, johannes.berg@intel.com, kadlec@netfilter.org, 
 linux-kernel@vger.kernel.org, lipeng321@huawei.com, 
 mareklindner@neomailbox.ch, netdev@vger.kernel.org, 
 netfilter-devel@vger.kernel.org, pablo@netfilter.org, sw@simonwunderlich.de, 
 syzkaller-bugs@googlegroups.com, tanhuazhong@huawei.com
Content-Type: text/plain; charset="UTF-8"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1579581662;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to; bh=NCHvuKVSBxRHeizGAyp94YLEyZNHqgNg1esxuxlJg/o=;
 b=O7ceoIWT1/CjztCCeXKR2GMJG3PFK/E/MuNLbJnFJh0hCJkUHp2YP5hUzwheoMzfJbWjDo
 Kb9RJcASvbCgNYVgCWMIRF2sMH586rpIBLIvxXladfs0E9Q6oEKVWnfvVq89iejpI2Lj1b
 1zLAtWHkzimMfcbhtg975tSJnVV0WL8=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1579581662; a=rsa-sha256; cv=none;
 b=Nxd203pAvzYoAY4O+P0mCWlucH5M5xtPQGGGPuuXa7eiEp4dK9gA5qqWhcWMFWHdhdb2s/
 5grd3wUfSA3Mamotbzcqi2n/D7S0MS9Y8zh4Ay2gKKO2iB7HQ7+POJYuHrBtuL9G/GWc9M
 rtO/rU0C6uP9OW3ooUPNMflOLixp9Cc=
ARC-Authentication-Results: i=1; open-mesh.org; dkim=none;
 spf=pass (open-mesh.org: domain of
 33YAmXgkbAHAgmnYOZZSfOddWR.UccUZSigSfQcbhSbh.Qca@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
 designates 209.85.166.72 as permitted sender)
 smtp.mailfrom=33YAmXgkbAHAgmnYOZZSfOddWR.UccUZSigSfQcbhSbh.Qca@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
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

commit 354d0fab649d47045517cf7cae03d653a4dcb3b8
Author: Peng Li <lipeng321@huawei.com>
Date:   Thu Jul 4 14:04:26 2019 +0000

    net: hns3: add default value for tc_size and tc_offset

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=15cc0685e00000
start commit:   8f8972a3 Merge tag 'mtd/fixes-for-5.5-rc7' of git://git.ke..
git tree:       upstream
final crash:    https://syzkaller.appspot.com/x/report.txt?x=17cc0685e00000
console output: https://syzkaller.appspot.com/x/log.txt?x=13cc0685e00000
kernel config:  https://syzkaller.appspot.com/x/.config?x=cfbb8fa33f49f9f3
dashboard link: https://syzkaller.appspot.com/bug?extid=8b5f151de2f35100bbc5
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=12e22559e00000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=16056faee00000

Reported-by: syzbot+8b5f151de2f35100bbc5@syzkaller.appspotmail.com
Fixes: 354d0fab649d ("net: hns3: add default value for tc_size and tc_offset")

For information about bisection process see: https://goo.gl/tpsmEJ#bisection
