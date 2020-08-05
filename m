Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id EFFBF23C6F1
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed,  5 Aug 2020 09:31:13 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id B4946806D0;
	Wed,  5 Aug 2020 09:31:12 +0200 (CEST)
Received: from mail-il1-f200.google.com (mail-il1-f200.google.com [209.85.166.200])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 585E9803AD
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed,  5 Aug 2020 09:31:09 +0200 (CEST)
Received: by mail-il1-f200.google.com with SMTP id 65so11171537ilb.12
        for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 05 Aug 2020 00:31:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:date:in-reply-to:message-id:subject
         :from:to;
        bh=UAjlV35CqUYg8Wq8iE9joWFodTfiF9zQm++Jk44fcSY=;
        b=kaiVz0x3bbniiIr5rX/6CL1iYMTE+g4upJIGIhVknqww0XAAfkcpJHKa+P8nZZhaji
         nyD94FbVOdE/MttaQbZf3eb02wocSWsu7b5uE2pgxtesDqBYit66sTX5pmaEJHoPr+EU
         A40O+qJq6aucnAuUNt+0ZMgOnVw/APhNjwkC+ecMIGtrMuWilTCY0rfToUaL0e4ns5/x
         k1cn2nBhoA1fmeZsfT+EjSLcYwsnxbOwTwMDk0jNShtf5hchXpI+/bRIdd+uzE3meJr4
         +DAi4rfeyzqDLNdo9vHT0NWGyvQa0imcV7kjcdFzuYiVHkWLda+8Qm4N0z+DzUyRQICf
         bSIQ==
X-Gm-Message-State: AOAM532bgdvjOC5N+vtZrJP6g1Rhh4Lz10j+AYG09IVdAqiMDqYHi/TC
	3Vf+OwX7dX8miw6cMjojHNLOF5hJjd0Qnv6KWkDqGPKKZk6J
X-Google-Smtp-Source: ABdhPJydINKXG6kk6Rt5Q7YptVJc6WU2HIGHbqBbyEup0nCj4eB/muV9ogT+bIQJk1+5SdRMqrFrePgB51/EIuvRRPKG7IPv2d9A
MIME-Version: 1.0
X-Received: by 2002:a92:1b5b:: with SMTP id b88mr2679375ilb.104.1596612668103;
 Wed, 05 Aug 2020 00:31:08 -0700 (PDT)
Date: Wed, 05 Aug 2020 00:31:08 -0700
In-Reply-To: <000000000000a39e4905abeb193f@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000ed214e05ac1c5ae8@google.com>
Subject: Re: general protection fault in hci_phy_link_complete_evt
From: syzbot <syzbot+18e38290a2a263b31aa0@syzkaller.appspotmail.com>
To: a@unstable.cc, b.a.t.m.a.n@lists.open-mesh.org, davem@davemloft.net,
	johan.hedberg@gmail.com, johannes.berg@intel.com, johannes@sipsolutions.net,
	kuba@kernel.org, kvalo@codeaurora.org, linux-bluetooth@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-wireless@vger.kernel.org,
	linux@armlinux.org.uk, marcel@holtmann.org, mareklindner@neomailbox.ch,
	netdev@vger.kernel.org, sw@simonwunderlich.de,
	syzkaller-bugs@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1596612669;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to; bh=UAjlV35CqUYg8Wq8iE9joWFodTfiF9zQm++Jk44fcSY=;
	b=g+j8jIv1L7i2u9kGuqLEr48FCgBX7g5sFrDj1GSQO1cUxc5xtEz/bKfUSkqL9TYWsbzhs5
	nGXCAN/XFNiP7MHQXyvH3iEUL4YhTrC/J4b77mYe89Vz6vdbRyWByJ+nXlKU/8hU5DrfE1
	YnF4nVu9csd11UfdAvuElBFkFu/XVDA=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1596612669; a=rsa-sha256;
	cv=none;
	b=Sn7RAHW+6D8/6q2HJ55UyqH9X1OOg6WmEj5UTgEb3otYli9HMYhKpDHdKOkvbBKcy0EVoL
	QAAi1lWrisz9Gk06S2fopYYKihN6kZFwnqnP1oOezzeueaGSbF80Hr6ATNdaPEjVLl/JPU
	qR5XIFy+CLZLfnO7qkOmM8l2bNdvW6s=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of 3PGAqXwkbAKUXdePFQQJWFUUNI.LTTLQJZXJWHTSYJSY.HTR@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com designates 209.85.166.200 as permitted sender) smtp.mailfrom=3PGAqXwkbAKUXdePFQQJWFUUNI.LTTLQJZXJWHTSYJSY.HTR@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
Message-ID-Hash: ZSGMQKKM2TDDNANBJDLALCKSDSJG5XIA
X-Message-ID-Hash: ZSGMQKKM2TDDNANBJDLALCKSDSJG5XIA
X-MailFrom: 3PGAqXwkbAKUXdePFQQJWFUUNI.LTTLQJZXJWHTSYJSY.HTR@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/ZSGMQKKM2TDDNANBJDLALCKSDSJG5XIA/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

syzbot has bisected this issue to:

commit b59abfbed638037f3b51eeb73266892cd2df177f
Author: Johannes Berg <johannes.berg@intel.com>
Date:   Thu Sep 15 13:30:03 2016 +0000

    mac80211_hwsim: statically initialize hwsim_radios list

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=15dd5f98900000
start commit:   c0842fbc random32: move the pseudo-random 32-bit definitio..
git tree:       upstream
final oops:     https://syzkaller.appspot.com/x/report.txt?x=17dd5f98900000
console output: https://syzkaller.appspot.com/x/log.txt?x=13dd5f98900000
kernel config:  https://syzkaller.appspot.com/x/.config?x=cf567e8c7428377e
dashboard link: https://syzkaller.appspot.com/bug?extid=18e38290a2a263b31aa0
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=17e4e094900000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=1143e7ca900000

Reported-by: syzbot+18e38290a2a263b31aa0@syzkaller.appspotmail.com
Fixes: b59abfbed638 ("mac80211_hwsim: statically initialize hwsim_radios list")

For information about bisection process see: https://goo.gl/tpsmEJ#bisection
