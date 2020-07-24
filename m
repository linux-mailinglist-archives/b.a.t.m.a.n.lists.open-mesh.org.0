Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 18A6122BC6D
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 24 Jul 2020 05:28:10 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id D31B58026B;
	Fri, 24 Jul 2020 05:28:08 +0200 (CEST)
Received: from mail-io1-f71.google.com (mail-io1-f71.google.com [209.85.166.71])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id A30E080218
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 24 Jul 2020 05:28:05 +0200 (CEST)
Received: by mail-io1-f71.google.com with SMTP id d22so5424108iom.14
        for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 23 Jul 2020 20:28:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:date:in-reply-to:message-id:subject
         :from:to;
        bh=Ont9djuNY0GU/qTuUTW3soxu8Qb4Ubkk1v7mFHEioWA=;
        b=Z1fOHGu0GkvxXLphtVB57uoU8GMRWP+ZA/mFGJDVlQZ5BiWyrE65z50uf3gMCOexHn
         VpOqfoHAJWPou9J14o5VyLvQ+61+/7RE4lPujAyrQVKebvJzp6ylVarOsAWtdGsrN0Lz
         T0R/yXQ3ZgaRO1GdMJlfzFt+XG4gP2kjtGpH4rid4IzcryUhiOQQq/7auO5O3Jp5bYbs
         /zAZ7kFAsQtwfu4LBsn/eq9YAAsxbFuH4aeEIJeUeq5CTuQmtey1qg3OVjA2oMcKJ12g
         lR6L//hRZ+7isg0LJuDTnR2g4hOh4F1eMy6+/jMsIHsXGPO7BiqpP/bGWNFUv+mb47hI
         N7YQ==
X-Gm-Message-State: AOAM531EX5x/br0bCOXdAWYw+fWMbRgLFt/KNwLvo0fIix+UpqKBG7ZH
	Vqc9pmQyppcddXL/+LvajOQy3XJhPyCMuFGBue2UiJdy0qfc
X-Google-Smtp-Source: ABdhPJyJhGuaT6ThvP5DAjoFMNwap5je5huhz7wXrzNaWbB0+3IhSTSajSiENIBUlIaXs4NeyJWylMSwM1m6OQPseXtVJY63B+ii
MIME-Version: 1.0
X-Received: by 2002:a92:cf06:: with SMTP id c6mr8246821ilo.73.1595561284301;
 Thu, 23 Jul 2020 20:28:04 -0700 (PDT)
Date: Thu, 23 Jul 2020 20:28:04 -0700
In-Reply-To: <0000000000000a8e8605a22a1ae0@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <00000000000091792505ab278f0a@google.com>
Subject: Re: INFO: rcu detected stall in netlink_sendmsg (4)
From: syzbot <syzbot+0fb70e87d8e0ac278fe9@syzkaller.appspotmail.com>
To: a@unstable.cc, b.a.t.m.a.n@lists.open-mesh.org, davem@davemloft.net,
	jhs@mojatatu.com, jiri@resnulli.us, kuba@kernel.org,
	linux-kernel@vger.kernel.org, mareklindner@neomailbox.ch, mingo@redhat.com,
	netdev@vger.kernel.org, rostedt@goodmis.org, sven@narfation.org,
	sw@simonwunderlich.de, syzkaller-bugs@googlegroups.com, tglx@linutronix.de,
	vinicius.gomes@intel.com, xiyou.wangcong@gmail.com
Content-Type: text/plain; charset="UTF-8"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1595561285;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to; bh=Ont9djuNY0GU/qTuUTW3soxu8Qb4Ubkk1v7mFHEioWA=;
	b=tob2tydp4QrqdHeBKBv5BHMDp/srkM8Vbp05qBJ8gh2Mo/xi3Vw3t8uu/ixDHhD4H+ZFjh
	ID65TwDKKJRt13BVgL1jheRHxyeOghfljR56DwfevAr3IkaPfZz08TiILylGjRl0HT+Pvx
	MomDlvIUsHTgw8YmryEWYNt8OfsmnCY=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1595561285; a=rsa-sha256;
	cv=none;
	b=yvlc+n+Fkts4WHZ0DUUwHBcQGqTH2d2qmZ8UM2QcV8kzxYICqp3nV8LAbiZ7jMyF0htdmv
	kz5+Ftuj1L/H6XH0qfdqKt2rdIGi+79TIUZWdCRMNWQS/r1XThn23eZreCt1ohkIGmNZjA
	zt8BVT5zY1Dim3vUUNx/2vCN+o1xT8M=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of 3RFUaXwkbAFcHNO9zAA3GzEE72.5DD5A3JH3G1DCI3CI.1DB@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com designates 209.85.166.71 as permitted sender) smtp.mailfrom=3RFUaXwkbAFcHNO9zAA3GzEE72.5DD5A3JH3G1DCI3CI.1DB@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
Message-ID-Hash: U26ZJ2GIK4KLWIIFKEKE7SRU6CSXNXKH
X-Message-ID-Hash: U26ZJ2GIK4KLWIIFKEKE7SRU6CSXNXKH
X-MailFrom: 3RFUaXwkbAFcHNO9zAA3GzEE72.5DD5A3JH3G1DCI3CI.1DB@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/U26ZJ2GIK4KLWIIFKEKE7SRU6CSXNXKH/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

syzbot has bisected this issue to:

commit 5a781ccbd19e4664babcbe4b4ead7aa2b9283d22
Author: Vinicius Costa Gomes <vinicius.gomes@intel.com>
Date:   Sat Sep 29 00:59:43 2018 +0000

    tc: Add support for configuring the taprio scheduler

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=16d46e1b100000
start commit:   7cc2a8ea Merge tag 'block-5.8-2020-07-01' of git://git.ker..
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=11d46e1b100000
kernel config:  https://syzkaller.appspot.com/x/.config?x=7be693511b29b338
dashboard link: https://syzkaller.appspot.com/bug?extid=0fb70e87d8e0ac278fe9
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=1023588f100000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=1647a88f100000

Reported-by: syzbot+0fb70e87d8e0ac278fe9@syzkaller.appspotmail.com
Fixes: 5a781ccbd19e ("tc: Add support for configuring the taprio scheduler")

For information about bisection process see: https://goo.gl/tpsmEJ#bisection
