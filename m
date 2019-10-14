Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [IPv6:2a01:4f8:141:3341:78:46:248:236])
	by mail.lfdr.de (Postfix) with ESMTPS id 633E5D5B86
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 14 Oct 2019 08:40:22 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 038F1807E8;
	Mon, 14 Oct 2019 08:39:59 +0200 (CEST)
Received: from mail-io1-f71.google.com (mail-io1-f71.google.com
 [209.85.166.71]) by open-mesh.org (Postfix) with ESMTPS id 1110F800F2
 for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 14 Oct 2019 06:04:51 +0200 (CEST)
Received: by mail-io1-f71.google.com with SMTP id w8so24707068iod.21
 for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 13 Oct 2019 21:04:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:in-reply-to:message-id:subject
 :from:to;
 bh=OuWAyTtmm63QQUGDPXR+DkHDOHPMuPnOWQaHNFnyLBY=;
 b=R9iW4swLIJCb8WJAm81TCtVs+mnk94abRxBoC48ofjCIrhUB36cK/Z4JkvZAXKbqWI
 5LrN16qbQRFg/rECj1k+KPO7IfhVm8ovS+NsIemXQ4oEuMF4faIvmGTaPiP1p+epL30v
 DqX+wC2yWnMhYfMZZiAxAkzd6IARbTCjW2U3EKrI6UgeBdLOoneR4Mdq/1PVR6VN9Nbu
 cCWCQHACggvp4MQ7hSEE5fRDRYBsUw3NwtAa3Zc9WN5nT+JcCHxZcOy2EgTcFaS2VLwb
 lX0FWquwKocybFDer5oFcuvWvnOamqUE2ppKCEH5zRdIhzzTZQlsbSbivCJhNlJunOUb
 dzyw==
X-Gm-Message-State: APjAAAUvNGlu0qOEtcIAKOe7vwjM0IWMZHXQ4i4SwFIoYGYp0SGMFOUQ
 cNC5SW94/I+X92tliWjlwPkBtp2lH0q49wNkG02PhUoVxe5e
X-Google-Smtp-Source: APXvYqwVwyIy9nSYbsyJl/5Ky7DslcWs3entkTykv54QRnqMyvOOoULUzhOD3mtwNZ2fJRFRwM9mAxsY/zpxHu8l3i0Nylw2l3P/
MIME-Version: 1.0
X-Received: by 2002:a5d:93c7:: with SMTP id j7mr6139939ioo.167.1571025421311; 
 Sun, 13 Oct 2019 20:57:01 -0700 (PDT)
Date: Sun, 13 Oct 2019 20:57:01 -0700
In-Reply-To: <00000000000059b6d40594d0f776@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000002ba5570594d6dc99@google.com>
Subject: Re: WARNING in batadv_iv_send_outstanding_bat_ogm_packet
From: syzbot <syzbot+c0b807de416427ff3dd1@syzkaller.appspotmail.com>
To: a@unstable.cc, akpm@osdl.org, arvind.yadav.cs@gmail.com, 
 b.a.t.m.a.n@lists.open-mesh.org, davem@davemloft.net, kgene@kernel.org, 
 krzk@kernel.org, kyungmin.park@samsung.com, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 linux-media@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
 mareklindner@neomailbox.ch, mchehab@kernel.org, mchehab@s-opensource.com, 
 mingo@kernel.org, netdev@vger.kernel.org, oleg@tv-sign.ru, roland@redhat.com, 
 s.nawrocki@samsung.com, sven@narfation.org, sw@simonwunderlich.de, 
 syzkaller-bugs@googlegroups.com, viro@zeniv.linux.org.uk
Content-Type: text/plain; charset="UTF-8"; format=flowed; delsp=yes
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1571025891;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to; bh=OuWAyTtmm63QQUGDPXR+DkHDOHPMuPnOWQaHNFnyLBY=;
 b=27BzHHi2p4A+9pEvHXJ60PKIzn9DR8EYOUhlk9j+3o1utRhtYzUfJG88ozpyzp/eny0he/
 dYf+VLyAUWxxLTEKfe0j5X8uPbIB0stEX/lXL1UPHbIxUxMPksS9ExOQsQXRYppQ9WQpB6
 x5K8zWEHhpZ7Wi+1yL+G2zmi7TqPmPo=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1571025891; a=rsa-sha256; cv=none;
 b=i8Mj4e4czsiCaqP63khEh5VMz3Bhwqoa5RrDjyGyt3S4sKHMj7ZAvesUF9Nbsyiwtp9nzj
 wPYMzqMlxe+54SlPvp+xt22mLgVkt8CveIYApRimHVecejoFz+AS7kIw74ttArPZNZf3dj
 pJ1WfMRboLn5vlUzNRfKeKYr9BfuvT0=
ARC-Authentication-Results: i=1; open-mesh.org; dkim=none;
 spf=pass (open-mesh.org: domain of
 3DfKjXQkbAHQkqrcSddWjShhaV.YggYdWmkWjUgflWfl.Uge@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
 designates 209.85.166.71 as permitted sender)
 smtp.mailfrom=3DfKjXQkbAHQkqrcSddWjShhaV.YggYdWmkWjUgflWfl.Uge@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
X-Mailman-Approved-At: Mon, 14 Oct 2019 08:39:54 +0200
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

commit 26d051e301f67cdd2ea3404abb43902f13214efa
Author: Arvind Yadav <arvind.yadav.cs@gmail.com>
Date:   Thu Jun 29 08:21:35 2017 +0000

     media: exynos4-is: fimc-is-i2c: constify dev_pm_ops structures

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=10a0aff0e00000
start commit:   da940012 Merge tag 'char-misc-5.4-rc3' of git://git.kernel..
git tree:       upstream
final crash:    https://syzkaller.appspot.com/x/report.txt?x=12a0aff0e00000
console output: https://syzkaller.appspot.com/x/log.txt?x=14a0aff0e00000
kernel config:  https://syzkaller.appspot.com/x/.config?x=2d2fd92a28d3e50
dashboard link: https://syzkaller.appspot.com/bug?extid=c0b807de416427ff3dd1
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=141ffd77600000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=11edd580e00000

Reported-by: syzbot+c0b807de416427ff3dd1@syzkaller.appspotmail.com
Fixes: 26d051e301f6 ("media: exynos4-is: fimc-is-i2c: constify dev_pm_ops  
structures")

For information about bisection process see: https://goo.gl/tpsmEJ#bisection
