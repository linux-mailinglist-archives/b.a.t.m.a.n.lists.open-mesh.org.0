Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 95213182342
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 11 Mar 2020 21:24:56 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 5684680A3D;
	Wed, 11 Mar 2020 21:24:51 +0100 (CET)
Received: from mail-il1-f197.google.com (mail-il1-f197.google.com
 [209.85.166.197])
 by diktynna.open-mesh.org (Postfix) with ESMTPS id D67848003D
 for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 11 Mar 2020 21:17:04 +0100 (CET)
Received: by mail-il1-f197.google.com with SMTP id x10so2225404ilo.23
 for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 11 Mar 2020 13:17:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:in-reply-to:message-id:subject
 :from:to;
 bh=Hk8leBLQn5EO2E5GYez0a5lDH0bgTVJ9Yjc9wD197GA=;
 b=sujUM5EKsH9rfU957MJrZBhZ+2J2Gx8KXMebKrZjDMljAgiQhCdYvpLHQ3n0hQ0H9G
 e971BoSmJ67FCik4pdiws16zU6M1lyhQBMCY6IJFM2lt4biWbya4B8IMeQ9m22Xt9v23
 jXsE+Gsk30PCglW9NkhY0l2UOmU7hAzQmnHbpf1qLy4ak9Ki5rUdthOU1FWMkEL7jK3h
 ktZWbWa/ANNUiPAhvfzAXjZdW9csptHwRmkO9FJq0awG1tcFMdwqy0jbC+q8iRutxvU5
 gvEkiESmvEfBazHkyUR85vZswUMadYwDI2mu2ed1osBB+0mUu67em/IRWrhtmeyMUbeF
 80Hg==
X-Gm-Message-State: ANhLgQ3983EXypFpzJgA7BwJV4DImiR47Q2lI+2N0U81Rc9wbJm/9Iun
 czVSCLVt/769+urPyhAcpQ3jjRCRoq+4ukJK+g/FN8q/btrd
X-Google-Smtp-Source: ADFU+vuCk0oLjsQRK1OQUGd8tOfOULwTEpr37d1F6UYTw6+1J+u2VViJHjd/h7gGWV9DvDuMYhL3fUTIAi3lVakXW/slGPEJZJ+Y
MIME-Version: 1.0
X-Received: by 2002:a02:962e:: with SMTP id c43mr4679555jai.26.1583957823254; 
 Wed, 11 Mar 2020 13:17:03 -0700 (PDT)
Date: Wed, 11 Mar 2020 13:17:03 -0700
In-Reply-To: <00000000000030395e059f6aaa09@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <00000000000064f9a805a099eb8a@google.com>
Subject: Re: general protection fault in j1939_netdev_start
From: syzbot <syzbot+f03d384f3455d28833eb@syzkaller.appspotmail.com>
To: a@unstable.cc, b.a.t.m.a.n@lists.open-mesh.org, davem@davemloft.net, 
 jiri@mellanox.com, jiri@resnulli.us, kernel@pengutronix.de, kuba@kernel.org, 
 linux-can@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux@rempel-privat.de, mareklindner@neomailbox.ch, mkl@pengutronix.de, 
 netdev@vger.kernel.org, robin@protonic.nl, socketcan@hartkopp.net, 
 sven@narfation.org, sw@simonwunderlich.de, syzkaller-bugs@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1583957825;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to; bh=Hk8leBLQn5EO2E5GYez0a5lDH0bgTVJ9Yjc9wD197GA=;
 b=fEjTEkZ0W32l1iozvg70wvubC2O8MOLnK2Ph/twy59EWciYbAyeALnAKeoWd7W5nE4ptZC
 bFHSvBFgsM48cAIBtkuYrjCnobzpwxQj6TtafHDgwKB0lvA1z13evX91HsWtLufKefmnoW
 CxiWIWE9mV7JYWS66cBrSHwSHoRWi0E=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1583957825; a=rsa-sha256; cv=none;
 b=3+svO45td99X+ZdjV6onslVh/NZYf9g3EjXFxeyxCAmCmcQO45Ev9f/jl6pF85ndv4ELdG
 1qSLF9Da5AtWFOqbTDDUZI4cDD6fjAfwLUYNOX98/QOxqywRRr0aLr8Ay3l5oJgwvZTGvq
 KaYUMvCeV52LUgzTINkzlhbHKPRunkM=
ARC-Authentication-Results: i=1; diktynna.open-mesh.org; dkim=none;
 spf=pass (diktynna.open-mesh.org: domain of
 3P0dpXgkbAGwcijUKVVObKZZSN.QYYQVOecObMYXdOXd.MYW@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
 designates 209.85.166.197 as permitted sender)
 smtp.mailfrom=3P0dpXgkbAGwcijUKVVObKZZSN.QYYQVOecObMYXdOXd.MYW@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
X-Mailman-Approved-At: Wed, 11 Mar 2020 21:24:48 +0100
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

commit 8330f73fe9742f201f467639f8356cf58756fb9f
Author: Jiri Pirko <jiri@mellanox.com>
Date:   Wed Sep 4 07:40:47 2019 +0000

    rocker: add missing init_net check in FIB notifier

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=165cdcb1e00000
start commit:   63623fd4 Merge tag 'for-linus' of git://git.kernel.org/pub..
git tree:       upstream
final crash:    https://syzkaller.appspot.com/x/report.txt?x=155cdcb1e00000
console output: https://syzkaller.appspot.com/x/log.txt?x=115cdcb1e00000
kernel config:  https://syzkaller.appspot.com/x/.config?x=9833e26bab355358
dashboard link: https://syzkaller.appspot.com/bug?extid=f03d384f3455d28833eb
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=162b8331e00000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=10f10a2de00000

Reported-by: syzbot+f03d384f3455d28833eb@syzkaller.appspotmail.com
Fixes: 8330f73fe974 ("rocker: add missing init_net check in FIB notifier")

For information about bisection process see: https://goo.gl/tpsmEJ#bisection
