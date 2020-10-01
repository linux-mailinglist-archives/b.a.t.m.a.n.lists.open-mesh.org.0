Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B73E280726
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu,  1 Oct 2020 20:46:10 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 5A72F806A4;
	Thu,  1 Oct 2020 20:46:09 +0200 (CEST)
Received: from mail-il1-f207.google.com (mail-il1-f207.google.com [209.85.166.207])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id B6AAB802A5
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu,  1 Oct 2020 20:46:06 +0200 (CEST)
Received: by mail-il1-f207.google.com with SMTP id r10so5301493ilq.6
        for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 01 Oct 2020 11:46:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:date:in-reply-to:message-id:subject
         :from:to;
        bh=QPaq3GozfGEmcVEfcZ9p2WifWSbg3p4JEASOWyQUygM=;
        b=ssEIkKjLO8vmoAHNwJHdtTKBehwnRzEsa80tw762bcHyK3aRfXzS3IpFBSY0wIcQkf
         D4k0WsZlZ3o9rmKNr3d1fRFneULuwWuKaJVMxMWQ/NOTo1A5iodDdKUiArK4udY9jbgb
         lVpettuHjVDyKqSkZBJcZkd4Q2b8wELZvEjTDrskOnJbP5yMauoIUoguKXF9XyvW/7AM
         o2hGHCSjJphnf+zujlDEcYO4g2eW+xEkaioF/oMMgf7HPPqqtR+XB5KtSA9AZ+aEA0Td
         60A0eW8exUZ//wQ/y4oJZg4ankgBI0hbwAUmJYhyq82+vnJy9XacEOPct2AZ4CZ898KL
         lZKg==
X-Gm-Message-State: AOAM533dT1yXZk8y7hpi/gtPNFJBbdQTVQQY5aT4YBovoaMPQc+azLiV
	MZHQoKPpeoSNkIhQ8dBJeb4bWwwgsK4MGIqWxiINvEWzn+Oz
X-Google-Smtp-Source: ABdhPJxZy8JSQ93jW1Afj+8O1MF5YFh8NRykTOGDo1ivTsoY0Wr90IQy946nezTTOaKxADBqzM6N18M0Cfj/CgmkiynfD3dUBzzM
MIME-Version: 1.0
X-Received: by 2002:a6b:7005:: with SMTP id l5mr6586653ioc.10.1601577964783;
 Thu, 01 Oct 2020 11:46:04 -0700 (PDT)
Date: Thu, 01 Oct 2020 11:46:04 -0700
In-Reply-To: <0000000000008fddd805adc8c56f@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000abcd5505b0a06d96@google.com>
Subject: Re: general protection fault in rt6_fill_node
From: syzbot <syzbot+81af6e9b3c4b8bc874f8@syzkaller.appspotmail.com>
To: John.Linn@xilinx.com, a@unstable.cc, anant.thazhemadam@gmail.com,
	andriin@fb.com, anirudh@xilinx.com, ast@kernel.org,
	b.a.t.m.a.n@lists.open-mesh.org, bpf@vger.kernel.org, daniel@iogearbox.net,
	davem@davemloft.net, dsahern@gmail.com, hancock@sedsystems.ca,
	john.fastabend@gmail.com, kafai@fb.com, kpsingh@chromium.org, kuba@kernel.org,
	kuznet@ms2.inr.ac.ru, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, mareklindner@neomailbox.ch,
	michal.simek@xilinx.com, netdev@vger.kernel.org, nikolay@cumulusnetworks.com,
	songliubraving@fb.com, sw@simonwunderlich.de, syzkaller-bugs@googlegroups.com,
	yhs@fb.com, yoshfuji@linux-ipv6.org
Content-Type: text/plain; charset="UTF-8"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1601577966;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to; bh=QPaq3GozfGEmcVEfcZ9p2WifWSbg3p4JEASOWyQUygM=;
	b=oximXQurj6wZsaDHK5ne3vcJBxPMNAUDd3hxB1CcBy1Y0ovqD5i00vAGL3kMxM+oB8+ZLI
	EP0ZtrJWFJ8dfHHfTbwEO2O55J5CMIg8/gLHtPr+uzoEXC5Vw9IdC22oqAoaIOl2yywsqe
	WRmGSyaZhARcErVaVQqMECJmWztxMTk=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1601577966; a=rsa-sha256;
	cv=none;
	b=TpPaOmSNHTmT1Gp9UKdMP9IJYvyOVJRem9OeoxZxgWRHB5tbGM1IS8gyXxTxBBznl/3pAX
	dP5QfqMEvtjQDCAvxrG/8RXSQagfKE3wCW/G5ch+01fSI+F7Sv79bF1unlUV2v6QojMCN/
	6ses9KPBPhkG2pOdQPuJdAb3dCDTI80=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of 37CN2XwkbAA87DEzp00t6p44xs.v33v0t97t6r328t28.r31@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com designates 209.85.166.207 as permitted sender) smtp.mailfrom=37CN2XwkbAA87DEzp00t6p44xs.v33v0t97t6r328t28.r31@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
Message-ID-Hash: ZLU7BMZOMFRMM6OHVGM7MNODGR34POAX
X-Message-ID-Hash: ZLU7BMZOMFRMM6OHVGM7MNODGR34POAX
X-MailFrom: 37CN2XwkbAA87DEzp00t6p44xs.v33v0t97t6r328t28.r31@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/ZLU7BMZOMFRMM6OHVGM7MNODGR34POAX/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

syzbot suspects this issue was fixed by commit:

commit eeaac3634ee0e3f35548be35275efeca888e9b23
Author: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Date:   Sat Aug 22 12:06:36 2020 +0000

    net: nexthop: don't allow empty NHA_GROUP

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=12beed5b900000
start commit:   c3d8f220 Merge tag 'kbuild-fixes-v5.9' of git://git.kernel..
git tree:       upstream
kernel config:  https://syzkaller.appspot.com/x/.config?x=a0437fdd630bee11
dashboard link: https://syzkaller.appspot.com/bug?extid=81af6e9b3c4b8bc874f8
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=13ff8539900000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=143f3a96900000

If the result looks correct, please mark the issue as fixed by replying with:

#syz fix: net: nexthop: don't allow empty NHA_GROUP

For information about bisection process see: https://goo.gl/tpsmEJ#bisection
