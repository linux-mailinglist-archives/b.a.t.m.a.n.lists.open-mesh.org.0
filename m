Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EC38163D56
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 19 Feb 2020 07:59:03 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 6794D809ED;
	Wed, 19 Feb 2020 07:59:02 +0100 (CET)
Received: from smtp-out.kfki.hu (smtp-out.kfki.hu [IPv6:2001:738:5001::48])
 by diktynna.open-mesh.org (Postfix) with ESMTPS id C479C801CF
 for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 19 Feb 2020 07:50:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.kfki.hu (Postfix) with ESMTP id 2C7F3CC00F8;
 Wed, 19 Feb 2020 07:50:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 blackhole.kfki.hu; h=mime-version:user-agent:references
 :message-id:in-reply-to:from:from:date:date:received:received
 :received; s=20151130; t=1582095036; x=1583909437; bh=6N/wx1PPm7
 0XWkAYLWsXauw4+sMVlpaGdfM/XPXQNfs=; b=P8l5AL1uJmdf4WSO/J4pKD+6nV
 0fPeRbqTfRajP8An38Xf7agnkiU0vDzIVPuQG32BZwMeZUQgKhN4rDOC2jqi2xim
 i20JDuOzx9m4pGbAu8EXYZN2ETn5xnENKKjTTF1g1ayRFaKKFgoPjBRLCKWBPwFz
 3ewJn1A287yoxasEg=
X-Virus-Scanned: Debian amavisd-new at smtp2.kfki.hu
Received: from smtp2.kfki.hu ([127.0.0.1])
 by localhost (smtp2.kfki.hu [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP; Wed, 19 Feb 2020 07:50:36 +0100 (CET)
Received: from blackhole.kfki.hu (blackhole.kfki.hu [148.6.240.2])
 by smtp2.kfki.hu (Postfix) with ESMTP id DC736CC00F3;
 Wed, 19 Feb 2020 07:50:33 +0100 (CET)
Received: by blackhole.kfki.hu (Postfix, from userid 1000)
 id 6720120FCF; Wed, 19 Feb 2020 07:50:33 +0100 (CET)
Date: Wed, 19 Feb 2020 07:50:33 +0100 (CET)
From: Jozsef Kadlecsik <kadlec@netfilter.org>
X-X-Sender: kadlec@blackhole.kfki.hu
To: syzbot <syzbot+8b5f151de2f35100bbc5@syzkaller.appspotmail.com>
Subject: Re: KASAN: use-after-free Read in bitmap_ip_destroy
In-Reply-To: <0000000000000d774c059ee442e6@google.com>
Message-ID: <alpine.DEB.2.20.2002190746590.20111@blackhole.kfki.hu>
References: <0000000000000d774c059ee442e6@google.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="110363376-950394365-1582095033=:20111"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1582095038;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references:dkim-signature;
 bh=6N/wx1PPm70XWkAYLWsXauw4+sMVlpaGdfM/XPXQNfs=;
 b=U0xORVzaAEdKGFf1EN6PE+aNzj/LRN58l9DMlRQ5O8M8ggnUfOsSUY3Wx4+Auq3HxG9KY6
 p4mX9GmI2ssjBle43hNYERF5xoxMyUj4wAEpuaSmnVtN09XEg+5L/9ehLmz1bC3LxHm7et
 OZwqPrZYAr4o7l4U9+H+4ZsvWYiC0TM=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1582095038; a=rsa-sha256; cv=none;
 b=UuOB3i4FoOs+OBGf4UrHL0T4nWMU0rPsdHX1OvKJilcfFJoRJPjYC7wyZ9IrtHaVItqt5U
 9YwX01qpUpftveR1gPfhF1vcdCriNwI7SdZ8Of8yYTWPst+g4swGi+0JAyJXEoQEtetNhF
 4pc+LcmKIij65HFuU81MIMBtJWNKAGA=
ARC-Authentication-Results: i=1; diktynna.open-mesh.org;
 dkim=pass header.d=blackhole.kfki.hu header.s=20151130 header.b=P8l5AL1u;
 spf=none (diktynna.open-mesh.org: domain of kadlec@blackhole.kfki.hu has no
 SPF policy when checking 2001:738:5001::48)
 smtp.mailfrom=kadlec@blackhole.kfki.hu
X-Mailman-Approved-At: Wed, 19 Feb 2020 07:58:52 +0100
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
Cc: jeremy@azazel.net, mareklindner@neomailbox.ch, johannes.berg@intel.com,
 a@unstable.cc, florent.fourcot@wifirst.fr, b.a.t.m.a.n@lists.open-mesh.org,
 Florian Westphal <fw@strlen.de>, linux-kernel@vger.kernel.org,
 syzkaller-bugs@googlegroups.com, tanhuazhong@huawei.com,
 coreteam@netfilter.org, netfilter-devel@vger.kernel.org, lipeng321@huawei.com,
 netdev@vger.kernel.org, David Miller <davem@davemloft.net>,
 Pablo Neira Ayuso <pablo@netfilter.org>
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--110363376-950394365-1582095033=:20111
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: QUOTED-PRINTABLE


#syz fix: netfilter: ipset: use bitmap infrastructure completely

On Tue, 18 Feb 2020, syzbot wrote:

> syzbot suspects this bug was fixed by commit:
>=20
> commit 32c72165dbd0e246e69d16a3ad348a4851afd415
> Author: Kadlecsik J=C3=B3zsef <kadlec@blackhole.kfki.hu>
> Date:   Sun Jan 19 21:06:49 2020 +0000
>=20
>     netfilter: ipset: use bitmap infrastructure completely
>=20
> bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=3D17fc79b5e0=
0000
> start commit:   8f8972a3 Merge tag 'mtd/fixes-for-5.5-rc7' of git://git.k=
e..
> git tree:       upstream
> kernel config:  https://syzkaller.appspot.com/x/.config?x=3Dcfbb8fa33f49f=
9f3
> dashboard link: https://syzkaller.appspot.com/bug?extid=3D8b5f151de2f3510=
0bbc5
> syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=3D12e22559e00=
000
> C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=3D16056faee0000=
0
>=20
> If the result looks correct, please mark the bug fixed by replying with:
>=20
> #syz fix: netfilter: ipset: use bitmap infrastructure completely
>=20
> For information about bisection process see: https://goo.gl/tpsmEJ#bisect=
ion
>=20

-
E-mail  : kadlec@blackhole.kfki.hu, kadlecsik.jozsef@wigner.hu
PGP key : https://wigner.hu/~kadlec/pgp_public_key.txt
Address : Wigner Research Centre for Physics
          H-1525 Budapest 114, POB. 49, Hungary
--110363376-950394365-1582095033=:20111--
