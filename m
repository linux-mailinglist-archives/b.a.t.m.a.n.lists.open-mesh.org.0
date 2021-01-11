Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 954DF2F0C27
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 11 Jan 2021 06:16:12 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 4A248803BC;
	Mon, 11 Jan 2021 06:16:11 +0100 (CET)
Received: from mail-il1-f199.google.com (mail-il1-f199.google.com [209.85.166.199])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id BB42780218
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 11 Jan 2021 06:16:07 +0100 (CET)
Received: by mail-il1-f199.google.com with SMTP id x14so16128691ilg.13
        for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 10 Jan 2021 21:16:07 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:date:in-reply-to:message-id:subject
         :from:to;
        bh=TwLtYgNM/VxZnJX9RYzFOAmbDbu3TS829VUYdlrQ6tU=;
        b=IPnp538Sm+hih/zkKCqyzdAd5EzJsFkTHQg4hibRmKS9B7NVNrvH/VNdQyh5/ERwPB
         q1d6bx6AT/03XyquLJLgbTA5NaCGX9gFWV5eT67q3cmT7hhBF2SxW10XG2iGhTmUMj39
         BCxhN7PiFxLjpboNH6JI19/YJOZJDvOCRM64S4QhI7jOtovD1nPuQ71g3RAn9M3tJ6SL
         baJbAsdx2L/FlK64xh55qCLcCbrwyHtmGjgGjfl6+neFkUUZjrnwdwBPCLa2eb4ZJDiV
         VSkEUQQBZ69L+UCYnH/87ObB8ZciBy6NfKGQAGOVmGgweovDm1QLchPS0oHHhml9ArL7
         ruCA==
X-Gm-Message-State: AOAM530ssnaohi7c7DXlzUdN1RSUrvcVfvi2xccz81JQ++/Czr+QJHxU
	TWw1SrWTsWtcMQIZOPWl4d6uB5sA1JRj0aTrii/lhORqjYmx
X-Google-Smtp-Source: ABdhPJw34d6R73XmCxuksM9133DcvPyLfBOZgm6heuu0BEb6aKdNf+Jt1XOKWGljxWX0oVlLoshF5G4fzBYFc5U+6aYPAdyyumLW
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:f86:: with SMTP id v6mr14014231ilo.56.1610342166413;
 Sun, 10 Jan 2021 21:16:06 -0800 (PST)
Date: Sun, 10 Jan 2021 21:16:06 -0800
In-Reply-To: <000000000000f5964705b7d47d8c@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000cbca0705b89900b3@google.com>
Subject: Re: INFO: trying to register non-static key in l2cap_sock_teardown_cb
From: syzbot <syzbot+a41dfef1d2e04910eb2e@syzkaller.appspotmail.com>
To: a@unstable.cc, b.a.t.m.a.n@lists.open-mesh.org, davem@davemloft.net,
	hdanton@sina.com, johan.hedberg@gmail.com, kuba@kernel.org,
	linux-bluetooth@vger.kernel.org, linux-fsdevel@vger.kernel.org,
	linux-kernel@vger.kernel.org, luiz.dentz@gmail.com, marcel@holtmann.org,
	mareklindner@neomailbox.ch, miklos@szeredi.hu, mszeredi@redhat.com,
	netdev@vger.kernel.org, sw@simonwunderlich.de,
	syzkaller-bugs@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1610342167;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to; bh=TwLtYgNM/VxZnJX9RYzFOAmbDbu3TS829VUYdlrQ6tU=;
	b=GOBhakGvkXDZQp3WbNXmxa7c5DARUDCjSMAy6vcX4wYqiF7cPX4kwpkD5A7Zbfwy5uudl1
	pxVl/H5hqTsQIqPONwtSmOCNdLnBM9U+lcnhQYDceDWNOLGYsdenoKDsflTLxNBIqWJ+I+
	Hla+rbbqjVMrqglB/f//+8dMBpe0eCY=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of 3Ft_7XwkbAMk7DEzp00t6p44xs.v33v0t97t6r328t28.r31@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com designates 209.85.166.199 as permitted sender) smtp.mailfrom=3Ft_7XwkbAMk7DEzp00t6p44xs.v33v0t97t6r328t28.r31@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1610342167; a=rsa-sha256;
	cv=none;
	b=B25st5v5IXhGqqLJmE41yl9cXJBFak7gSLThnh2P7xVc/bLUKajS0vrsetnyaNzqqDOWrm
	hFsXq/j+4lvAnwmYv/eGArE44ZotqTF6y3SlO/LXshEW3sOOJLbHNoaR9AaXlpNIqv1R6y
	O2IgQZ+8za+sBsaCNNT3FemiIn8rens=
Message-ID-Hash: QBXZTJV2G6VKKMSB4RVBIM4VNMIZYCOG
X-Message-ID-Hash: QBXZTJV2G6VKKMSB4RVBIM4VNMIZYCOG
X-MailFrom: 3Ft_7XwkbAMk7DEzp00t6p44xs.v33v0t97t6r328t28.r31@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/QBXZTJV2G6VKKMSB4RVBIM4VNMIZYCOG/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

syzbot has bisected this issue to:

commit 4680a7ee5db27772af40d83393fa0fb955b745b7
Author: Miklos Szeredi <mszeredi@redhat.com>
Date:   Sat Oct 1 05:32:33 2016 +0000

    fuse: remove duplicate cs->offset assignment

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=11fc80e7500000
start commit:   73b7a604 net: dsa: bcm_sf2: support BCM4908's integrated s..
git tree:       net-next
final oops:     https://syzkaller.appspot.com/x/report.txt?x=13fc80e7500000
console output: https://syzkaller.appspot.com/x/log.txt?x=15fc80e7500000
kernel config:  https://syzkaller.appspot.com/x/.config?x=9ce34124da4c882b
dashboard link: https://syzkaller.appspot.com/bug?extid=a41dfef1d2e04910eb2e
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=166ee4cf500000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=1337172f500000

Reported-by: syzbot+a41dfef1d2e04910eb2e@syzkaller.appspotmail.com
Fixes: 4680a7ee5db2 ("fuse: remove duplicate cs->offset assignment")

For information about bisection process see: https://goo.gl/tpsmEJ#bisection
