Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A82C185624
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 14 Mar 2020 18:50:05 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 7A6EB806A7;
	Sat, 14 Mar 2020 18:50:04 +0100 (CET)
Received: from mail-il1-f197.google.com (mail-il1-f197.google.com
 [209.85.166.197])
 by diktynna.open-mesh.org (Postfix) with ESMTPS id 8E90680179
 for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 14 Mar 2020 18:20:03 +0100 (CET)
Received: by mail-il1-f197.google.com with SMTP id h12so9721387ils.12
 for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 14 Mar 2020 10:20:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:in-reply-to:message-id:subject
 :from:to:content-transfer-encoding;
 bh=+QdPalM1/7ayitV9XmteLgnXaS2hu+LX/EwtXkNn8sI=;
 b=sb2ExKTavpwkeAIeJcQWfhBeUhcTWcg70qKBdsEFr592i5GGb6WYj8AO+8XNEokLE/
 WFaTS+Moom4VLvoIm2/o3i2g4Mxxucl3ah+lP7Iv6TKtMbS0AftvcaOTeOc6wwbh14Jp
 oN9oOJHzdAATv4jDnRE0bg5H4io6/Z+B9gXQGwzfIeXAgj3bXlgylfJj5vME4g9EA8pE
 9d4vh0GRMPupdNsLqiQEPu+02jBfsx32X2ere1TRB2M4ItsZsKGduSiAY76e0a9j5WbM
 qSuuCRlRcIhBi3sdC76dZKOl0gzRbUk3vtHawM+ZUjkibqwSNhqGiFVBIiscoYSVZi8V
 rNIA==
X-Gm-Message-State: ANhLgQ2rkO6XpOxH/M37AUE6uaxUeBLmQy8TMnm8DQ5WYJtNogadEY8S
 YT2i1JdMGWO/umUFfwtvByLydAhwVqjJ90ktsLHNGbeayq4g
X-Google-Smtp-Source: ADFU+vsvmmvzF0I4nMIQXyBWKmywCRss6IV6wvF4RwqOdkw0XwU5mtrUilZd8jdSs9quwxi/+KGtd7aYDnIYchTEyVeGinshxzTm
MIME-Version: 1.0
X-Received: by 2002:a92:aa87:: with SMTP id p7mr18089913ill.63.1584206402340; 
 Sat, 14 Mar 2020 10:20:02 -0700 (PDT)
Date: Sat, 14 Mar 2020 10:20:02 -0700
In-Reply-To: <000000000000cdbe79059ce82948@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000dccd2405a0d3cb04@google.com>
Subject: Re: KASAN: slab-out-of-bounds Read in bitmap_ipmac_destroy
From: syzbot <syzbot+a85062dec5d65617cc1c@syzkaller.appspotmail.com>
To: a@unstable.cc, arvid.brodin@alten.se, b.a.t.m.a.n@lists.open-mesh.org, 
 coreteam@netfilter.org, davem@davemloft.net, florent.fourcot@wifirst.fr, 
 fw@strlen.de, jeremy@azazel.net, johannes.berg@intel.com, 
 kadlec@blackhole.kfki.hu, kadlec@netfilter.org, linux-kernel@vger.kernel.org, 
 mareklindner@neomailbox.ch, netdev@vger.kernel.org, 
 netfilter-devel@vger.kernel.org, pablo@netfilter.org, sw@simonwunderlich.de, 
 syzkaller-bugs@googlegroups.com, xiyou.wangcong@gmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1584206403;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to; bh=+QdPalM1/7ayitV9XmteLgnXaS2hu+LX/EwtXkNn8sI=;
 b=0JqPo8zc/4k5rJHSFC/NLBZ9jeUY8o02yntki1xEJxBqajbQbrjCCVCD21CfdE4kUrq/BB
 AVHSMGeRv9LghM4zRJiDgZWTCtYHBJQXo9Rv5BpVlGTcy/i4N9cuB38NGJuz2hIOlFuK0Z
 CoKucATPLtQSwrDZs8MAahkhNWTolfA=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1584206403; a=rsa-sha256; cv=none;
 b=FYHXcg53IFxWk6S+Msn0k9pA3GQwT2BFUoboU81oygXka/Tcsg+Yw1j+LNZ+2cLRz9bbwu
 AikaRE4V+oJ5gnJz+WvE+CogEY4jALxYKnw00ayaPKra+KfSWJZhsS3Hk4keIrwrMdnYt2
 arzchL1FGT9Zc8AaHOi2RtzqvMLAmpw=
ARC-Authentication-Results: i=1; diktynna.open-mesh.org; dkim=none;
 spf=pass (diktynna.open-mesh.org: domain of
 3QhJtXgkbABUDJK5v66zCvAA3y.19916zFDzCx98Ez8E.x97@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
 designates 209.85.166.197 as permitted sender)
 smtp.mailfrom=3QhJtXgkbABUDJK5v66zCvAA3y.19916zFDzCx98Ez8E.x97@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
X-Mailman-Approved-At: Sat, 14 Mar 2020 18:49:58 +0100
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

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=3D10aef753e000=
00
start commit:   4703d911 Merge tag 'xarray-5.5' of git://git.infradead.org.=
.
git tree:       upstream
kernel config:  https://syzkaller.appspot.com/x/.config?x=3D83c00afca9cf515=
3
dashboard link: https://syzkaller.appspot.com/bug?extid=3Da85062dec5d65617c=
c1c
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=3D1301ed85e0000=
0
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=3D14b7b79ee00000

If the result looks correct, please mark the bug fixed by replying with:

#syz fix: netfilter: ipset: use bitmap infrastructure completely

For information about bisection process see: https://goo.gl/tpsmEJ#bisectio=
n
