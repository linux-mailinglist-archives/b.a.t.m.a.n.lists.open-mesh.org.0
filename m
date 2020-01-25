Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [78.46.248.236])
	by mail.lfdr.de (Postfix) with ESMTPS id 358271493E7
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 25 Jan 2020 08:28:14 +0100 (CET)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 8BD4680BD0;
	Sat, 25 Jan 2020 08:28:00 +0100 (CET)
Received: from mail-io1-f70.google.com (mail-io1-f70.google.com
 [209.85.166.70]) by open-mesh.org (Postfix) with ESMTPS id 90E78801D6
 for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 25 Jan 2020 01:45:02 +0100 (CET)
Received: by mail-io1-f70.google.com with SMTP id w22so2458544ior.6
 for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 24 Jan 2020 16:45:02 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:in-reply-to:message-id:subject
 :from:to;
 bh=7t8461NsKJ7dggiUJMEiWFWH6uHHmMrVa8LOc9k9NXU=;
 b=qdkMmf1R8kX8W51bCmstK0ty6/xasiUnqsaO22AheTrTuPk9h31wFNyJ0+xIiisdWd
 4Aq6z69FSNjF8d6Q7q84sDSp4/g9RN08Z2G1eAZN5r2JY5rpYIxWcJlCqROzUpjL9UJ2
 VWY/V/OVkXWZjqw7znhSHaOYJZESF6rf9nqkZMtUHMLDBn6QJv+hlo2OGyFLpX2xu+4J
 4BG0kFFOzX/zK5nWEX2Ed5CA297syn6Zc8FwOS3UjtmNnc+MjWzA74hDw0AuxCYpOfiA
 5bjCzryHODtShYFCtLiE4/1fjCXNt0s1J9Ieed5pp9cU9FHZpqndYq7hVG3jtJB7zJMc
 qt5w==
X-Gm-Message-State: APjAAAUt/ZbLrm+BVNVy6/rxlc45eJCw80d6MuvbHReSmM31gLwYclMw
 8AJfJEi6ANjYBq1TCdVMU8fZQvby0nn+aZzJ9xlcPa7TN4CZ
X-Google-Smtp-Source: APXvYqwJo/vSmPmq9gsIz8uynVDogIStRUI8hB7HAkeHhbeN4sRbsogeWVwDSqjIRI+0a2J/NhCBO2MPxF0CPwKx3SXQudBlBCiz
MIME-Version: 1.0
X-Received: by 2002:a6b:915:: with SMTP id t21mr4112476ioi.34.1579913101128;
 Fri, 24 Jan 2020 16:45:01 -0800 (PST)
Date: Fri, 24 Jan 2020 16:45:01 -0800
In-Reply-To: <000000000000cdbe79059ce82948@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000002b3861059cec2f82@google.com>
Subject: Re: KASAN: slab-out-of-bounds Read in bitmap_ipmac_destroy
From: syzbot <syzbot+a85062dec5d65617cc1c@syzkaller.appspotmail.com>
To: a@unstable.cc, arvid.brodin@alten.se, b.a.t.m.a.n@lists.open-mesh.org, 
 coreteam@netfilter.org, davem@davemloft.net, florent.fourcot@wifirst.fr, 
 fw@strlen.de, jeremy@azazel.net, johannes.berg@intel.com, 
 kadlec@netfilter.org, linux-kernel@vger.kernel.org, 
 mareklindner@neomailbox.ch, netdev@vger.kernel.org, 
 netfilter-devel@vger.kernel.org, pablo@netfilter.org, sw@simonwunderlich.de, 
 syzkaller-bugs@googlegroups.com, xiyou.wangcong@gmail.com
Content-Type: text/plain; charset="UTF-8"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1579913106;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to; bh=7t8461NsKJ7dggiUJMEiWFWH6uHHmMrVa8LOc9k9NXU=;
 b=IZeArwiPoqW4EZVXIuIF1RMaSuieBsMUsb8YCogUwOtBKe/4Bt67cUB9grdj6ah+FjvdD0
 cXJ6vNgwSoEYxw2jTYjwUDx1ibgFRtDp9snHVHuKUEx4BQbLE7Q6IyOESrdf/bcnBuVhNZ
 s0HaDa7oL5W6Km0PPoJx9P7OIZ8twJw=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1579913106; a=rsa-sha256; cv=none;
 b=yVJ/03UPpDtcLMC3mr1zOsElUp3QhDjeFdyIv9Qp4qf+5iaM2lSbuXcS+yqkff9TsGQoth
 XUfd4gnXjSHMjePatPb6iunywNkHt2DRFSMZbj9m5bmwIsuGTnR79cS3p7FBn3GbYlCXBk
 cExZaLPk2dUqznS5d+YPaRc1RKfw2Yk=
ARC-Authentication-Results: i=1; open-mesh.org; dkim=none;
 spf=pass (open-mesh.org: domain of
 3jY8rXgkbAFICIJ4u55yBu992x.08805yECyBw87Dy7D.w86@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
 designates 209.85.166.70 as permitted sender)
 smtp.mailfrom=3jY8rXgkbAFICIJ4u55yBu992x.08805yECyBw87Dy7D.w86@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
X-Mailman-Approved-At: Sat, 25 Jan 2020 08:27:53 +0100
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

commit b9a1e627405d68d475a3c1f35e685ccfb5bbe668
Author: Cong Wang <xiyou.wangcong@gmail.com>
Date:   Thu Jul 4 00:21:13 2019 +0000

    hsr: implement dellink to clean up resources

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=123fce01e00000
start commit:   4703d911 Merge tag 'xarray-5.5' of git://git.infradead.org..
git tree:       upstream
final crash:    https://syzkaller.appspot.com/x/report.txt?x=113fce01e00000
console output: https://syzkaller.appspot.com/x/log.txt?x=163fce01e00000
kernel config:  https://syzkaller.appspot.com/x/.config?x=83c00afca9cf5153
dashboard link: https://syzkaller.appspot.com/bug?extid=a85062dec5d65617cc1c
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=1301ed85e00000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=14b7b79ee00000

Reported-by: syzbot+a85062dec5d65617cc1c@syzkaller.appspotmail.com
Fixes: b9a1e627405d ("hsr: implement dellink to clean up resources")

For information about bisection process see: https://goo.gl/tpsmEJ#bisection
