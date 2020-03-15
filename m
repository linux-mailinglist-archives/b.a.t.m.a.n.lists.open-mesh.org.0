Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id B158F185ACB
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 15 Mar 2020 07:50:20 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id A616C804F2;
	Sun, 15 Mar 2020 07:50:19 +0100 (CET)
Received: from mail-il1-f198.google.com (mail-il1-f198.google.com
 [209.85.166.198])
 by diktynna.open-mesh.org (Postfix) with ESMTPS id C0204800AB
 for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 15 Mar 2020 06:49:03 +0100 (CET)
Received: by mail-il1-f198.google.com with SMTP id c11so4280794ilq.2
 for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 14 Mar 2020 22:49:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:in-reply-to:message-id:subject
 :from:to:content-transfer-encoding;
 bh=FJOATGVgF+RB8AvqptT57xQBCVKN+MlPkIh/jxrUb5Y=;
 b=Yp+6XJA7wQ7nkUo7k4/kR+G2bkz+Fu3B5/e34k0FlYtbauXDxbvFuZAEmN1jMcKL2p
 BNm38DA4kBfqnDMFG3buSOWOJOWWh8eTfXQAal1iYlqvvuRWggjROvP0ZTteXDCvoTR4
 Op1t0uKvSvy9mD3weKzo1t46DqOi11lwM1IrqhZz3Xge7Uudv3RLxj0JjaT2ptU9gPhF
 mAGT1VBX+ph6vYb9UH1n63rmwiD2VET5+OzR3ULSVyKn3EyugBK+TVg+o13fBGyxPvcb
 t+bGT7qXxxUiTDR8dOqifPaI/0s9Ke1u0uPTROcYNcumqMOrUVubDwHZmIBy98PF0lYm
 U7Ag==
X-Gm-Message-State: ANhLgQ005VzuLiVgf+hq0dAWQo4n2fO8qvY9bmCcM8wAAd/NObq3hZL6
 R+5AJxj1LNEzum8Z3q43HgbY0hHajoGN90LDMCfAHampJGLT
X-Google-Smtp-Source: ADFU+vtjWrHuYWHmtJ+7R/F21gT5LEveKjWUsRf8UObsGMOlzh5S+x+bzsUNrMqUqBppbPPWer/sA+tMDrmnP8e3gzLvu8ysJS2P
MIME-Version: 1.0
X-Received: by 2002:a92:5e14:: with SMTP id s20mr101812ilb.101.1584251342473; 
 Sat, 14 Mar 2020 22:49:02 -0700 (PDT)
Date: Sat, 14 Mar 2020 22:49:02 -0700
In-Reply-To: <000000000000e0ab4c059c79f014@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <00000000000080d06405a0de4277@google.com>
Subject: Re: KASAN: slab-out-of-bounds Read in bitmap_port_ext_cleanup
From: syzbot <syzbot+7b6206fb525c1f5ec3f8@syzkaller.appspotmail.com>
To: a@unstable.cc, andrew@lunn.ch, b.a.t.m.a.n@lists.open-mesh.org, 
 coreteam@netfilter.org, davem@davemloft.net, florent.fourcot@wifirst.fr, 
 fw@strlen.de, grygorii.strashko@ti.com, j-keerthy@ti.com, jeremy@azazel.net, 
 johannes.berg@intel.com, kadlec@blackhole.kfki.hu, kadlec@netfilter.org, 
 linux-kernel@vger.kernel.org, linux-omap@vger.kernel.org, 
 mareklindner@neomailbox.ch, netdev@vger.kernel.org, 
 netfilter-devel@vger.kernel.org, pablo@netfilter.org, sw@simonwunderlich.de, 
 syzkaller-bugs@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1584251343;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to; bh=FJOATGVgF+RB8AvqptT57xQBCVKN+MlPkIh/jxrUb5Y=;
 b=QMLHvert98OCIZ3voSFTPLX4eq7Dio0NG6RmFIZzrFWA+IMSfxVmDG8+uOxp97g5VCyRly
 jfi969qXgl7vp16zSjNLLj8RjyYdc+Gi+qImk37CRfAon6cGW9EOiPZg4DL1MaNj6cDduI
 cryDudibBuhixaeRaytUR2pKBvU69jY=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1584251343; a=rsa-sha256; cv=none;
 b=mr7yiZSD7xUYL/sgVl9C1/5Dt4z8wW6FGz/wlG1ismU7QJ+M4kKqxRDO/o7PhgWpBRJl2Z
 DS1O3KeeJYiETdByQ9zAv3iDTRWtF42XacjqR6bDy4/2rZqRt7XbMIOt1XGvac2Apgpxea
 578xl5Jyuz1tRVwwaCTHxxCHcfZzQLY=
ARC-Authentication-Results: i=1; diktynna.open-mesh.org; dkim=none;
 spf=pass (diktynna.open-mesh.org: domain of
 3zsFtXgkbAAMv12ndoohudsslg.jrrjohxvhufrqwhqw.frp@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
 designates 209.85.166.198 as permitted sender)
 smtp.mailfrom=3zsFtXgkbAAMv12ndoohudsslg.jrrjohxvhufrqwhqw.frp@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
X-Mailman-Approved-At: Sun, 15 Mar 2020 07:50:16 +0100
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

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=3D122e7c1de000=
00
start commit:   d5d359b0 Merge branch 'for-linus' of git://git.kernel.org/.=
.
git tree:       upstream
kernel config:  https://syzkaller.appspot.com/x/.config?x=3Dcf8e288883e40ab=
a
dashboard link: https://syzkaller.appspot.com/bug?extid=3D7b6206fb525c1f5ec=
3f8
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=3D15909f21e0000=
0
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=3D141a1611e00000

If the result looks correct, please mark the bug fixed by replying with:

#syz fix: netfilter: ipset: use bitmap infrastructure completely

For information about bisection process see: https://goo.gl/tpsmEJ#bisectio=
n
