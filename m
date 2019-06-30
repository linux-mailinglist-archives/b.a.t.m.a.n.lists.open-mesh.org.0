Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [IPv6:2a01:4f8:141:3341:78:46:248:236])
	by mail.lfdr.de (Postfix) with ESMTPS id 371155AFAC
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 30 Jun 2019 12:43:36 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 053D081812;
	Sun, 30 Jun 2019 12:43:32 +0200 (CEST)
Received: from mail-io1-f69.google.com (mail-io1-f69.google.com
 [209.85.166.69]) by open-mesh.org (Postfix) with ESMTPS id EF01C80DCE
 for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 30 Jun 2019 12:40:01 +0200 (CEST)
Received: by mail-io1-f69.google.com with SMTP id h3so12023877iob.20
 for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 30 Jun 2019 03:40:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:in-reply-to:message-id:subject
 :from:to;
 bh=eziCMEFtU+C3qoNYfJHsPKHY2FKR9JngSHlmZZHqzFo=;
 b=mevIDTRohNMMfRzXynr9NTbOZTyY9DZQS9hl0NFxZrJG4lanlbG1XKoIw596vsMTpA
 W+958hQSG6/bS5qdEiK54K9vgfgTl83TUJ74ACrOT99RSrfRRt39nxvkVPVWqIPqTYIH
 C4PlxIBFc5bH+D7gG1X80akgOjzqF9UOpfJPwX3hyEHj1VUWk7nMDCcLFCU43RL5lLIe
 jYA8gYIkQ22uQilpQnqJaeBchfEQOBb7E9NcKmzvrXQ1GkW/MeM9ZT5JaD4BGkxO5cSC
 Cnb/7UzrJGjCJ8bVhvS55KhzHjQdOdPK1/6UxmepNqIhwPXwqCe6xzJyCjY2JOfvV9Lx
 GnVg==
X-Gm-Message-State: APjAAAXIdFTEP3tLf9vKC+z3LfvOwOKxieXQ4vkS/fr58fn1n+oq8+Jr
 fHIgG4cm3Nqo8xp5LB4VH+8b6mScQ8H6Fut5OEuO0lfyHG2y
X-Google-Smtp-Source: APXvYqwc7jNxeDwuXuaVmtRV4iFyubee59JJU/yaTue7FDuw9a59U5XBHdkSI5CIzX3MUpYnDTjMD5X25A8OGVnPI50yMEKLHG28
MIME-Version: 1.0
X-Received: by 2002:a02:c6a9:: with SMTP id o9mr10128962jan.90.1561891200769; 
 Sun, 30 Jun 2019 03:40:00 -0700 (PDT)
Date: Sun, 30 Jun 2019 03:40:00 -0700
In-Reply-To: <0000000000003ec128058c7624ec@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000003326c1058c8822c7@google.com>
Subject: Re: WARNING in kernfs_create_dir_ns
From: syzbot <syzbot+38f5d5cf7ae88c46b11a@syzkaller.appspotmail.com>
To: a@unstable.cc, b.a.t.m.a.n@lists.open-mesh.org, davem@davemloft.net, 
 gregkh@linuxfoundation.org, hongjiefang@asrmicro.com, 
 linux-kernel@vger.kernel.org, linux-mmc@vger.kernel.org, 
 mareklindner@neomailbox.ch, netdev@vger.kernel.org, sw@simonwunderlich.de, 
 syzkaller-bugs@googlegroups.com, tj@kernel.org, ulf.hansson@linaro.org
Content-Type: text/plain; charset="UTF-8"; format=flowed; delsp=yes
X-Mailman-Approved-At: Sun, 30 Jun 2019 12:43:28 +0200
X-BeenThere: b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 2.1.23
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

commit 7f38abf220e2c800a2c451372e9f07ed5fd0ea49
Author: Hongjie Fang <hongjiefang@asrmicro.com>
Date:   Tue Jul 31 02:55:09 2018 +0000

     mmc: core: improve reasonableness of bus width setting for HS400es

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=129d6755a00000
start commit:   72825454 Merge branch 'x86-urgent-for-linus' of git://git...
git tree:       upstream
final crash:    https://syzkaller.appspot.com/x/report.txt?x=119d6755a00000
console output: https://syzkaller.appspot.com/x/log.txt?x=169d6755a00000
kernel config:  https://syzkaller.appspot.com/x/.config?x=9a31528e58cc12e2
dashboard link: https://syzkaller.appspot.com/bug?extid=38f5d5cf7ae88c46b11a
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=12a6c439a00000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=1353c323a00000

Reported-by: syzbot+38f5d5cf7ae88c46b11a@syzkaller.appspotmail.com
Fixes: 7f38abf220e2 ("mmc: core: improve reasonableness of bus width  
setting for HS400es")

For information about bisection process see: https://goo.gl/tpsmEJ#bisection
