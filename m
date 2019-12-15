Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [IPv6:2a01:4f8:141:3341:78:46:248:236])
	by mail.lfdr.de (Postfix) with ESMTPS id 27A5811F6C5
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 15 Dec 2019 08:19:45 +0100 (CET)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 5B9DB8072E;
	Sun, 15 Dec 2019 08:19:03 +0100 (CET)
Received: from mail-il1-f199.google.com (mail-il1-f199.google.com
 [209.85.166.199])
 by open-mesh.org (Postfix) with ESMTPS id 899D5800A6
 for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 15 Dec 2019 07:59:59 +0100 (CET)
Received: by mail-il1-f199.google.com with SMTP id j17so3605601ilc.10
 for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 14 Dec 2019 22:59:59 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:in-reply-to:message-id:subject
 :from:to;
 bh=u5G1wrWjpZdsvluOyjyhr3hFBI3eS6YddfcUNsAZMTM=;
 b=qjwwEjXZG8g1OznEj0W6PKuljFap8VN826YThciObbnOjEIU9JhNJbZHnqbWc3RaNU
 FkWmonshIiPy/qe+h56OLiVSqcmhHCKHlf0imGA+ZP9Jp3oPHXlE0Xrqz+PKhGXV7lTe
 P/F8desE7/RW+8KBMAJJ2Kk3ZZpVvzF2ySJDwDBe5DRDsHSyhichHO6M9ozNR5k6lwB+
 xPdgJfAs4ShHPzgCU+Xl3V6JyBUpPC+ApzJBPJEXTQZqB1ijsmL4dObWwUQO29+AtRS5
 20RTtkVdBago58Xt/lelTM6Kz6lP2zW/j4xwHphUGQzBoqme+ow4KWJ6hq3Mzj+mrv8M
 8sqw==
X-Gm-Message-State: APjAAAVazablY3MwcZ9YTKJq5cZXKeP6urF0wjOs3B+TYhcvEDDOQNC+
 6TJQmZ2yZmDSaIR9KNRzM7HYVAp/yrOnbI9qdq9Epz8Nxuf+
X-Google-Smtp-Source: APXvYqxyLGjpjTN0mObYvpOtmBDQtr6uJ7PwrSM6L61lcM5UPHprWuZJancgeOdVtUb3P1pj0JRYbD3+nDwIa7kKTYXjQFKUuwTE
MIME-Version: 1.0
X-Received: by 2002:a92:3b98:: with SMTP id n24mr7262387ilh.189.1576392721076; 
 Sat, 14 Dec 2019 22:52:01 -0800 (PST)
Date: Sat, 14 Dec 2019 22:52:01 -0800
In-Reply-To: <20191215063020.GA11512@mit.edu>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000002a99070599b888dd@google.com>
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
 s=20121; t=1576393199;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to; bh=u5G1wrWjpZdsvluOyjyhr3hFBI3eS6YddfcUNsAZMTM=;
 b=wwU+1jHH/2A6As+puiKChu321g/cIElm7l6qsoNwyvoSf1NWvKcv00jdADpTrIqYyTy8Yc
 hLxciXwxCUqyq5fX6H7pRnZ1LOs4r0ho+Xe9aUkIIuAepHa1I0O52uSDCrauFWTZPd7m7r
 ANDXwqUJiI0nv0QDfUQz+h/G9l33F/Y=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1576393199; a=rsa-sha256; cv=none;
 b=aBAoYwiRO4HbjdPfZn5mGLNJg+ef4wde0NlGPYfznH9FlTtzUcq/71nhouhDFk6+PKEzhD
 Kq0N4mLtpJhr+P8kDT9ty1W7S7PKvTZTXIXZjatIeZ+VMHTwaGW603Kfr1Qo+nQIGNfFzl
 Zddy6eFACU/NhsUgrquxjftJ711bdHI=
ARC-Authentication-Results: i=1; open-mesh.org; dkim=none;
 spf=pass (open-mesh.org: domain of
 3Edj1XQkbAI4AGH2s33w9s770v.y66y3wCAw9u65Bw5B.u64@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
 designates 209.85.166.199 as permitted sender)
 smtp.mailfrom=3Edj1XQkbAI4AGH2s33w9s770v.y66y3wCAw9u65Bw5B.u64@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
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

Hello,

syzbot has tested the proposed patch and the reproducer did not trigger  
crash:

Reported-and-tested-by:  
syzbot+4a39a025912b265cacef@syzkaller.appspotmail.com

Tested on:

commit:         dfdeeb41 Merge branch 'tt/misc' into dev
git tree:        
https://git.kernel.org/pub/scm/linux/kernel/git/tytso/ext4.git master
kernel config:  https://syzkaller.appspot.com/x/.config?x=be3b077056d26622
dashboard link: https://syzkaller.appspot.com/bug?extid=4a39a025912b265cacef
compiler:       gcc (GCC) 9.0.0 20181231 (experimental)
patch:          https://syzkaller.appspot.com/x/patch.diff?x=11b02546e00000

Note: testing is done by a robot and is best-effort only.
