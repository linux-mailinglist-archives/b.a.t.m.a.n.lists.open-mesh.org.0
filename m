Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 55E6918C78B
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 20 Mar 2020 07:35:36 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 36FE180724;
	Fri, 20 Mar 2020 07:35:34 +0100 (CET)
Received: from mail-io1-f69.google.com (mail-io1-f69.google.com
 [209.85.166.69])
 by diktynna.open-mesh.org (Postfix) with ESMTPS id E095C800DF
 for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 20 Mar 2020 01:48:03 +0100 (CET)
Received: by mail-io1-f69.google.com with SMTP id p4so3312580ioo.4
 for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 19 Mar 2020 17:48:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:in-reply-to:message-id:subject
 :from:to;
 bh=KQIeV41BqSA2HWOsTXHaruLvJbTFku9df88EiZxeP2U=;
 b=m5UwK6gsJt9+1bWY43IJQbdYSBWMix6tOS/yAFUSuDd4yE3kfVWiI80awUE8sUck/h
 GnwzvUAndhtmKaIyQURhpNAHx4Ts33TPepjo2KdmjaE9vZxpzo3WdlOM8IytE4InFQL4
 90e1ISxdEvFX57OxWioDcnRDP+yhDTpEGWBzViawsKVlSJvA13QpzEF+0u4Eo/7ZNLrJ
 RuwHmgUnKLDLWMyn90ahx4SgQL7umoILOFwDGOlrLQqy39U5OEbgebdctMSPYxLWou3K
 glAo6u/zuEXH0gq5Fm8VybyTxb7TruO3Cm95vL7NvpE3TMCTNB4F4VAtUyZncHpbz4b2
 0xeQ==
X-Gm-Message-State: ANhLgQ2KfBM8n1DRueF4ycilywDT6hvSSOi42JyhsV2qrtEQFhGpZ+sz
 xtIcdiatZQvkEZATp6RYg/Y7eUaJUUdDcAzwNk4XMz81y+UT
X-Google-Smtp-Source: ADFU+vtOqc6u9s+pMnAy4wggYF/r7nVtJrIj9IeIrcmEVypYawzs8Dh9C2t0kEbG2HqkEDMYGd/BujA1AdzgBk4Sx4zpBokunsE7
MIME-Version: 1.0
X-Received: by 2002:a6b:5406:: with SMTP id i6mr5275616iob.188.1584665282593; 
 Thu, 19 Mar 2020 17:48:02 -0700 (PDT)
Date: Thu, 19 Mar 2020 17:48:02 -0700
In-Reply-To: <00000000000074219d05a139e082@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <00000000000041ca9305a13ea3e0@google.com>
Subject: Re: general protection fault in sctp_ulpevent_nofity_peer_addr_change
From: syzbot <syzbot+3950016bd95c2ca0377b@syzkaller.appspotmail.com>
To: a@unstable.cc, b.a.t.m.a.n@lists.open-mesh.org, b.zolnierkie@samsung.com, 
 davem@davemloft.net, dri-devel@lists.freedesktop.org, kuba@kernel.org, 
 linux-fbdev@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-sctp@vger.kernel.org, lkundrak@v3.sk, marcelo.leitner@gmail.com, 
 mareklindner@neomailbox.ch, netdev@vger.kernel.org, nhorman@tuxdriver.com, 
 sw@simonwunderlich.de, syzkaller-bugs@googlegroups.com, vyasevich@gmail.com
Content-Type: text/plain; charset="UTF-8"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1584665284;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to; bh=KQIeV41BqSA2HWOsTXHaruLvJbTFku9df88EiZxeP2U=;
 b=dYUBZffzkATT1hIZdE/Ns13UYyYKKNwOBQnU7JcuUvm1mtc4l2sLP/3tcouA81n29Iy/k+
 1O/I1wBmlMfUJLuZ7zQs98kGJBhsPL2HFlye8xuZaP9kpVU82PHcaBd6sXRF1wOvTl4r1n
 YKRwCk3phY/pu+MvCC/LEhOnxH+Wpto=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1584665284; a=rsa-sha256; cv=none;
 b=tAuwoiKw08+YXwEcKAcCIAnGQsvn5ko4ZWrzogzz7D1LvFXDQngjBU3soqtG41MEhoFw8p
 owoUaT7vSa2g0ROFjwlF0UpEzuzYttit7PJ4zUFvAxcIeO+2qMopB6apWGD+VpfNJo/a7A
 KDuVcXGkZP44PKazDaTJSy94jfxO48M=
ARC-Authentication-Results: i=1; diktynna.open-mesh.org; dkim=none;
 spf=pass (diktynna.open-mesh.org: domain of
 3whJ0XgkbALEjpqbRccViRggZU.XffXcVljViTfekVek.Tfd@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
 designates 209.85.166.69 as permitted sender)
 smtp.mailfrom=3whJ0XgkbALEjpqbRccViRggZU.XffXcVljViTfekVek.Tfd@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
X-Mailman-Approved-At: Fri, 20 Mar 2020 07:35:31 +0100
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

commit da2648390ce3d409218b6bbbf2386d8ddeec2265
Author: Lubomir Rintel <lkundrak@v3.sk>
Date:   Thu Dec 20 18:13:09 2018 +0000

    pxa168fb: trivial typo fix

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=1361e139e00000
start commit:   5076190d mm: slub: be more careful about the double cmpxch..
git tree:       upstream
final crash:    https://syzkaller.appspot.com/x/report.txt?x=10e1e139e00000
console output: https://syzkaller.appspot.com/x/log.txt?x=1761e139e00000
kernel config:  https://syzkaller.appspot.com/x/.config?x=9f894bd92023de02
dashboard link: https://syzkaller.appspot.com/bug?extid=3950016bd95c2ca0377b
userspace arch: i386
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=1162bbe3e00000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=13c93b45e00000

Reported-by: syzbot+3950016bd95c2ca0377b@syzkaller.appspotmail.com
Fixes: da2648390ce3 ("pxa168fb: trivial typo fix")

For information about bisection process see: https://goo.gl/tpsmEJ#bisection
