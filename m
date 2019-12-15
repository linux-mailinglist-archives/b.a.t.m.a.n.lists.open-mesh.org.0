Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [78.46.248.236])
	by mail.lfdr.de (Postfix) with ESMTPS id 74D3D11F6C3
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 15 Dec 2019 08:19:08 +0100 (CET)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id C17DD80228;
	Sun, 15 Dec 2019 08:18:57 +0100 (CET)
Received: from mail-io1-f72.google.com (mail-io1-f72.google.com
 [209.85.166.72]) by open-mesh.org (Postfix) with ESMTPS id 33328801EE
 for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 15 Dec 2019 02:33:53 +0100 (CET)
Received: by mail-io1-f72.google.com with SMTP id n26so2984927ioj.1
 for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 14 Dec 2019 17:33:53 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:in-reply-to:message-id:subject
 :from:to;
 bh=c+s69FUrevmh/qMLgOyZw9GWvtN3ytNCAie8XX1Wio0=;
 b=RknYmf4MaaDKvl9s9il+VajWO3m0x3HR36zfwLjhmEQsoVigwa6pTkXw3+QWxoIe0D
 sy/PVyvY2MlpsLs0dzII205XqUKsdPLBouG2Ojizmxp7xHkrSnBBA+6N2cFQcTgATCzY
 AH9RjFCbqJLq1SrMIPEO3Jo6xU4cVyeI5o3+TSC2IdKs7uwr6NTXgLU4pr6QzN91SHL5
 gtw/83+CWqumq4CrJUjo0NvSCvlaeztm3w7fxsj27HrGY0Phw/0LhqaEWMdmVKabV0LA
 WzAIXzrGob+jGqClDoG8xyZk30wXFIx9tQK/C2Udl1tVbErJL3SxKFoop9mm1klpPp+c
 HJ1Q==
X-Gm-Message-State: APjAAAXVZCIEof+TQkYV00k0gK+/kyef/vLdlCJ2h8MEHjlzyOkfhjZf
 XPAX3Ow7Mt2Stxvki1RFca6fVNAgPEyqa7ci/b2aKvylX2Qo
X-Google-Smtp-Source: APXvYqy7O21f8gr/KcYVDGHHA00H9AO2+CAAcrvPyJbJkQR9bGCOqaPnuFyWq42GKUJVdxRtIb/Aqis0HVOF9COqLeCaOOMD3jTv
MIME-Version: 1.0
X-Received: by 2002:a92:5a56:: with SMTP id o83mr2853063ilb.97.1576373220852; 
 Sat, 14 Dec 2019 17:27:00 -0800 (PST)
Date: Sat, 14 Dec 2019 17:27:00 -0800
In-Reply-To: <000000000000c71dcf0579b0553f@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000dcc9b10599b3fd5e@google.com>
Subject: Re: KASAN: use-after-free Read in ext4_xattr_set_entry (2)
From: syzbot <syzbot+4a39a025912b265cacef@syzkaller.appspotmail.com>
To: a@unstable.cc, adilger.kernel@dilger.ca, afd@ti.com, 
 b.a.t.m.a.n@lists.open-mesh.org, chris@lapa.com.au, davem@davemloft.net, 
 linux-ext4@vger.kernel.org, linux-kernel@vger.kernel.org, 
 mareklindner@neomailbox.ch, netdev@vger.kernel.org, pali.rohar@gmail.com, 
 sre@kernel.org, sw@simonwunderlich.de, syzkaller-bugs@googlegroups.com, 
 tytso@mit.edu
Content-Type: text/plain; charset="UTF-8"; format=flowed; delsp=yes
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1576373634;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to; bh=c+s69FUrevmh/qMLgOyZw9GWvtN3ytNCAie8XX1Wio0=;
 b=SOD1pB86Vxe7UOjnV3h87N1HKSGOqidHdQYLo7pUVu53PTs41BDdGOnjhiwCiAj1Rus7tF
 dwp4b32ycE79C/9Zrk6Pm6dV8cttlTQ/frlO4dn4O5hOwaTY7bRFEXorA2tmx6q4Zv/LPP
 NOueNwBKpuBmIA851GwRPy2N+zmItDw=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1576373634; a=rsa-sha256; cv=none;
 b=QSot7tqeFTkMKJc8gZoDb9C5q/Gj5DZY9eaXLKsRJl0ea8gQ7JQpyKEC2hgbQiHki4J0ys
 JdFtCgu4p5rmkPqrs5pDCkyPE1nLmTFx8Efrnz7Wq9dvkDPr/LXK/XBeTyFYIImDv7Flhk
 qruw3jXxvYEeJjE+io3WB5s5+k3S6P0=
ARC-Authentication-Results: i=1; open-mesh.org; dkim=none;
 spf=pass (open-mesh.org: domain of
 35Iv1XQkbAMc5BCxnyyr4n22vq.t11tyr75r4p106r06.p1z@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
 designates 209.85.166.72 as permitted sender)
 smtp.mailfrom=35Iv1XQkbAMc5BCxnyyr4n22vq.t11tyr75r4p106r06.p1z@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
X-Mailman-Approved-At: Sun, 15 Dec 2019 08:18:53 +0100
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

commit 8835cae5f2abd7f7a3143afe357f416aff5517a4
Author: Chris Lapa <chris@lapa.com.au>
Date:   Wed Jan 11 01:44:47 2017 +0000

     power: supply: bq27xxx: adds specific support for bq27520-g4 revision.

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=16661f41e00000
start commit:   ae4b064e Merge tag 'afs-fixes-20191211' of git://git.kerne..
git tree:       upstream
final crash:    https://syzkaller.appspot.com/x/report.txt?x=15661f41e00000
console output: https://syzkaller.appspot.com/x/log.txt?x=11661f41e00000
kernel config:  https://syzkaller.appspot.com/x/.config?x=79f79de2a27d3e3d
dashboard link: https://syzkaller.appspot.com/bug?extid=4a39a025912b265cacef
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=15ec1332e00000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=163455dee00000

Reported-by: syzbot+4a39a025912b265cacef@syzkaller.appspotmail.com
Fixes: 8835cae5f2ab ("power: supply: bq27xxx: adds specific support for  
bq27520-g4 revision.")

For information about bisection process see: https://goo.gl/tpsmEJ#bisection
