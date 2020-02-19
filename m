Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 80971164403
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 19 Feb 2020 13:17:14 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 7B339808DE;
	Wed, 19 Feb 2020 13:17:13 +0100 (CET)
Received: from mail-il1-f200.google.com (mail-il1-f200.google.com
 [209.85.166.200])
 by diktynna.open-mesh.org (Postfix) with ESMTPS id AFFE280091
 for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 19 Feb 2020 08:54:04 +0100 (CET)
Received: by mail-il1-f200.google.com with SMTP id o13so19266660ilf.10
 for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 18 Feb 2020 23:54:04 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:in-reply-to:message-id:subject
 :from:to:content-transfer-encoding;
 bh=bhiLhZ0hGFmHCjOA0xxswOfkox27Yu7xmMOMfRdjKnY=;
 b=mctFul3gQC0Ks1h0JkejSBn5zeVCLRURq4vSYoSrAhoq/tosN05jjuV4z12fX2Kk7h
 Qyjurjiz0dBGpcbDa66CNwvTE9TvYjymIzs2TBIqw65EN/jXWF7Rx/+xiLsvRVkgm7MX
 Yz9MuaD12FwgyenEqeLRor8af1d3lY/3UNq+cPhw2uMFobZm0GQ/I96YP2JLnm6BOhHk
 V6Gr1pAG6fesWseoYr0V/eYPOLKRRIQ03MS/tiyUiLBfbM7SO7vxKF+LHNQPfNT2Tib/
 EApoIJVnVotkqO/Gt0DUCBG+sDPLET+FCg+AHM/AGE/S++bjPxOQflP+zk9rud5IM/Nk
 8zZw==
X-Gm-Message-State: APjAAAUU6200RRkGPggFVDERPlEs7T/da8F7BNZTWgSnK5iQLZEiapZp
 vwwTMZSwAcjzSMbP2sFhZoEmsQ8E9qIjtXFIf7ixbu5RAn7H
X-Google-Smtp-Source: APXvYqxGYY13aZOMM0BSOmDQMzSYZrf2qmPLxLF8eTHCcZFD8r1N2DfCNIuzDx8cL8jZ8cKMDsJUm0ShbBazBm0Pcb2Lzvn6MzqR
MIME-Version: 1.0
X-Received: by 2002:a02:2101:: with SMTP id e1mr19970446jaa.29.1582098843467; 
 Tue, 18 Feb 2020 23:54:03 -0800 (PST)
Date: Tue, 18 Feb 2020 23:54:03 -0800
In-Reply-To: <0000000000006d7b1e059c7db653@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000908c50059ee9173a@google.com>
Subject: Re: KASAN: use-after-free Read in bitmap_ip_ext_cleanup
From: syzbot <syzbot+b554d01b6c7870b17da2@syzkaller.appspotmail.com>
To: a@unstable.cc, b.a.t.m.a.n@lists.open-mesh.org, 
 bridge@lists.linux-foundation.org, coreteam@netfilter.org, 
 davem@davemloft.net, florent.fourcot@wifirst.fr, fw@strlen.de, 
 jeremy@azazel.net, johannes.berg@intel.com, kadlec@blackhole.kfki.hu, 
 kadlec@netfilter.org, linux-kernel@vger.kernel.org, 
 mareklindner@neomailbox.ch, netdev@vger.kernel.org, 
 netfilter-devel@vger.kernel.org, nikolay@cumulusnetworks.com, 
 pablo@netfilter.org, roopa@cumulusnetworks.com, sw@simonwunderlich.de, 
 syzkaller-bugs@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1582098844;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to; bh=bhiLhZ0hGFmHCjOA0xxswOfkox27Yu7xmMOMfRdjKnY=;
 b=l9tRdtQ/W7AN/h2gky8zCGyAp9GVjBZjmRWjtiq8wjEE2Volz9PDsdjeycJUuRCLUc9WoR
 Sba7pmOdoJp8NKibU8yB2jPfRSB/zlp5kl7QG4g7wIXXXxBEDsaBQxMCL7a52Spov06Si0
 dvme9NkqvQufYVP9+ZGBB7KgM9zI1xs=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1582098844; a=rsa-sha256; cv=none;
 b=cjSksZ2m1LALTr4JFqU/nUf+E9LQUzbBLwdB4H88ZY5GA6cu3m8OoJQ6A+2g1fdggzna5q
 h32PxeG2T41R0tFvt3m5lVq90GSnnYA1OZPrSpKJOCqHdzurcChDoKe1HL83Xrzjvtv+Fq
 QPoX3zIeKEj+7wuH3Yj2mKoo90Z3/I8=
ARC-Authentication-Results: i=1; diktynna.open-mesh.org; dkim=none;
 spf=pass (diktynna.open-mesh.org: domain of
 3m-lMXgkbAJoMSTE4FF8L4JJC7.AIIAF8OM8L6IHN8HN.6IG@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
 designates 209.85.166.200 as permitted sender)
 smtp.mailfrom=3m-lMXgkbAJoMSTE4FF8L4JJC7.AIIAF8OM8L6IHN8HN.6IG@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
X-Mailman-Approved-At: Wed, 19 Feb 2020 13:17:11 +0100
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

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=3D17079245e000=
00
start commit:   8f8972a3 Merge tag 'mtd/fixes-for-5.5-rc7' of git://git.ke.=
.
git tree:       upstream
kernel config:  https://syzkaller.appspot.com/x/.config?x=3Dd9290aeb7e6cf1c=
4
dashboard link: https://syzkaller.appspot.com/bug?extid=3Db554d01b6c7870b17=
da2
userspace arch: i386
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=3D145948d6e0000=
0
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=3D16202cc9e00000

If the result looks correct, please mark the bug fixed by replying with:

#syz fix: netfilter: ipset: use bitmap infrastructure completely

For information about bisection process see: https://goo.gl/tpsmEJ#bisectio=
n
