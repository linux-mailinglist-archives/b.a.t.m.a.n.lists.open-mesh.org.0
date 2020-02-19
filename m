Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id A552716494E
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 19 Feb 2020 16:56:51 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id C1086809F8;
	Wed, 19 Feb 2020 16:56:50 +0100 (CET)
Received: from mail-il1-f197.google.com (mail-il1-f197.google.com
 [209.85.166.197])
 by diktynna.open-mesh.org (Postfix) with ESMTPS id 446F280109
 for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 19 Feb 2020 16:46:04 +0100 (CET)
Received: by mail-il1-f197.google.com with SMTP id s13so527872ili.9
 for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 19 Feb 2020 07:46:04 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:in-reply-to:message-id:subject
 :from:to:content-transfer-encoding;
 bh=meEL6Fy6aleZ9jtvpgGrvnGSbq9MuEYemHMybXseYg4=;
 b=d56JYZGccwZmU8GG2IUAqzw3mbbh9t0zuC1hOhYu1DTcHvv3WcmkUswL9UvdZoGynu
 y7XD0T1RZJw5qMegVwovdpm9NwVYuuBXLhJRdrfQpXrOZenHmdIOBpDn2UiJ1eiM3kCT
 fieAUqJz0C5wvvl2UVRjMU04Ixw5oPN0SSERtYyggUzSXHgRHRlz9iTsMpD33B2nHSTi
 qU84lxcYyawdhaGmawdJ2hKJgnjJqG5IJyMHZO4GD7E8mUab4pHY+H5ZA3XvLtFWjfkt
 JFdSntWcuwE8+A38RIoaZKCU3PeczXVSMuGa5u8M2XEvIng4Mza+Wf/ekzgv7AViXD5x
 X0tA==
X-Gm-Message-State: APjAAAXds2kk42L2rznAQEocYBkGDfLo0TKTqUpS2Y6aPijdG3eAYNsh
 uqvsrg51dXYBGXQO3ZSiUutYiC/xnXKSbEkswkV1vOtbFGIJ
X-Google-Smtp-Source: APXvYqwJfaY34Duul7QI4nsW4eP5gWo56eh9X0PBjI8pEz/ZDnQ4R7/IwdlEugDK5rSMkM2M9L+WROKda4/pXhpDOVDjiChOjTov
MIME-Version: 1.0
X-Received: by 2002:a92:91d8:: with SMTP id e85mr25001159ill.146.1582127163011; 
 Wed, 19 Feb 2020 07:46:03 -0800 (PST)
Date: Wed, 19 Feb 2020 07:46:02 -0800
In-Reply-To: <000000000000c7999e059c86eebe@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000008a7b14059eefafff@google.com>
Subject: Re: KASAN: use-after-free Read in bitmap_ipmac_ext_cleanup
From: syzbot <syzbot+33fc3ad6fa11675e1a7e@syzkaller.appspotmail.com>
To: a@unstable.cc, b.a.t.m.a.n@lists.open-mesh.org, coreteam@netfilter.org, 
 davem@davemloft.net, florent.fourcot@wifirst.fr, fw@strlen.de, 
 jeremy@azazel.net, johannes.berg@intel.com, kadlec@blackhole.kfki.hu, 
 kadlec@netfilter.org, linux-kernel@vger.kernel.org, 
 mareklindner@neomailbox.ch, netdev@vger.kernel.org, 
 netfilter-devel@vger.kernel.org, pablo@netfilter.org, 
 po-hsu.lin@canonical.com, skhan@linuxfoundation.org, sw@simonwunderlich.de, 
 syzkaller-bugs@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1582127164;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to; bh=meEL6Fy6aleZ9jtvpgGrvnGSbq9MuEYemHMybXseYg4=;
 b=LJoILKA4d7KBuDrs2WrQXwijehWMU4g9vVwSEs75Fj6GN3HGyWHG0avpQU3fRbJOG+nTOb
 K1AAWyVphx+bGSsnf024GcjPJX9oAqzgd0EpGisloujemlTJyEGT8rSI/dH1XVA1pzmwri
 Jk4m2U7I986Q3MgB/B7oxtR3X78axbM=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1582127164; a=rsa-sha256; cv=none;
 b=zX1hFdVe8ATekNopMcJEZ2S1KQScljY8s5lbM+78CEJ73XS6m/XYL7r0s8D544FmE86ZAN
 LTZ8skvm1Pp//P+DbZmZ2onCE5zLLG3MvtWZ33Yr8jwHEtKWZ2WTTT40NFg/wvCsWwd3f1
 a9H2pWXkrHX8wSvlZDkf7BF7Zukb1Aw=
ARC-Authentication-Results: i=1; diktynna.open-mesh.org; dkim=none;
 spf=pass (diktynna.open-mesh.org: domain of
 3O1hNXgkbABoIOPA0BB4H0FF83.6EE6B4KI4H2EDJ4DJ.2EC@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
 designates 209.85.166.197 as permitted sender)
 smtp.mailfrom=3O1hNXgkbABoIOPA0BB4H0FF83.6EE6B4KI4H2EDJ4DJ.2EC@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
X-Mailman-Approved-At: Wed, 19 Feb 2020 16:56:48 +0100
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

syzbot suspects this bug was fixed by commit:

commit 32c72165dbd0e246e69d16a3ad348a4851afd415
Author: Kadlecsik J=C3=B3zsef <kadlec@blackhole.kfki.hu>
Date:   Sun Jan 19 21:06:49 2020 +0000

    netfilter: ipset: use bitmap infrastructure completely

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=3D13435a7ee000=
00
start commit:   8f8972a3 Merge tag 'mtd/fixes-for-5.5-rc7' of git://git.ke.=
.
git tree:       upstream
kernel config:  https://syzkaller.appspot.com/x/.config?x=3Dd9290aeb7e6cf1c=
4
dashboard link: https://syzkaller.appspot.com/bug?extid=3D33fc3ad6fa11675e1=
a7e
userspace arch: i386
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=3D15982cc9e0000=
0
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=3D11be38d6e00000

If the result looks correct, please mark the bug fixed by replying with:

#syz fix: netfilter: ipset: use bitmap infrastructure completely

For information about bisection process see: https://goo.gl/tpsmEJ#bisectio=
n
