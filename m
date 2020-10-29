Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E0F529F93C
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 30 Oct 2020 00:49:11 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 3CA628051D;
	Fri, 30 Oct 2020 00:49:10 +0100 (CET)
Received: from mail-il1-f199.google.com (mail-il1-f199.google.com [209.85.166.199])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id D107B80172
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 30 Oct 2020 00:49:06 +0100 (CET)
Received: by mail-il1-f199.google.com with SMTP id p17so3274360ilb.5
        for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 29 Oct 2020 16:49:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:date:in-reply-to:message-id:subject
         :from:to;
        bh=7hk9TAk77DHYI/kt84nHphsd4t0j8ackh+hIcD9azRA=;
        b=ro/p/XIYBwV/EXleudpgQXRF+rznw5VzAE7bgRpf3YjfqSzbHgYPZqrAjCrqDWcibe
         ygEN6gei3+0rdA1emp9z0nti3vmvnuHjQixetW3YSwyI0B//3J8rCSTNwv3Ng9E4ep/+
         yxIXfpV3jG8eHJISTLIwDf7A2pbiFrpF9yG6a/xfJC9qH4N2zod8wHBRm7RyxYELw7SX
         qselIvvwCf7BdKx0johMHCjn08Iyh3H/ZhPIL3Z4r8Hgq23A6ST+FrhB+T8IRAD5xnWu
         YMX2Wfag8f8FyJv/CDX6j7WELRuypmkWpxuBRke3JSZjhwd72WhuLy9WePzv99JiLd8X
         g4QQ==
X-Gm-Message-State: AOAM531n/uonjhyeiEkcJGwo7/NAiGPVOUOJccEZMcFiL5lhtZFKrPql
	FjlYGG4Q26wIcHgmM4hEo61yjp96FbYvWSjfnqdHTUKTxH01
X-Google-Smtp-Source: ABdhPJz6K8mon/7XpZee7kuOHWkBYo0uS+iOWapJ5rphJshKApo1O0v13M/qqv/Tjl2G6Owe5vvRA42KTOQIJB6nBYdm8sB9h+VV
MIME-Version: 1.0
X-Received: by 2002:a05:6638:3f1:: with SMTP id s17mr5648658jaq.102.1604015345410;
 Thu, 29 Oct 2020 16:49:05 -0700 (PDT)
Date: Thu, 29 Oct 2020 16:49:05 -0700
In-Reply-To: <000000000000bd1edd05b087535a@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000e0a53705b2d7ec44@google.com>
Subject: Re: INFO: rcu detected stall in security_file_open (3)
From: syzbot <syzbot+d2b6e8cc299748fecf25@syzkaller.appspotmail.com>
To: a@unstable.cc, b.a.t.m.a.n@lists.open-mesh.org, davem@davemloft.net,
	dhowells@redhat.com, fweisbec@gmail.com, ktkhai@virtuozzo.com,
	linux-afs@lists.infradead.org, linux-fsdevel@vger.kernel.org,
	linux-kernel@vger.kernel.org, mareklindner@neomailbox.ch, miklos@szeredi.hu,
	mingo@kernel.org, mszeredi@redhat.com, netdev@vger.kernel.org,
	sw@simonwunderlich.de, syzkaller-bugs@googlegroups.com, tglx@linutronix.de
Content-Type: text/plain; charset="UTF-8"
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1604015346; a=rsa-sha256;
	cv=none;
	b=R4sGynpbc9sqpU91fr465SVrVjFFIy/HDHgO1E8Nl5By3/pDYYURRPwZm8bup0oq/Dz8XE
	mFLpjkRlenI+KxYLvpU+qdv4hP/u6wKYIGE3mPX/pINHQrzCJq6gmfHgRGvOA8rAZVIliZ
	DmNNzBvdtlNuycEIQR6Z0dtr72Q1Yns=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of 38VSbXwkbAAw4ABwmxxq3m11up.s00sxq64q3o0z5qz5.o0y@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com designates 209.85.166.199 as permitted sender) smtp.mailfrom=38VSbXwkbAAw4ABwmxxq3m11up.s00sxq64q3o0z5qz5.o0y@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1604015346;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to; bh=7hk9TAk77DHYI/kt84nHphsd4t0j8ackh+hIcD9azRA=;
	b=UxALChtyF45RCUXvfq3aX+BIxJyzN3igOh9F7sPRiBTyqJpsJzFDEp1/nVwTkSzUDc4IGY
	p9P3OPuclTGElJ/vCV1a28FZbVCu+FD//b7d08ScRh5G622Lo3igECFOVSZOYgmGCbXpHQ
	TcujKRmTpIH+VPO//1yDU5Z/Zw+x8E4=
Message-ID-Hash: 65Z6YV5ZOFI7XIRNEFCXDZXGEIWSG3BE
X-Message-ID-Hash: 65Z6YV5ZOFI7XIRNEFCXDZXGEIWSG3BE
X-MailFrom: 38VSbXwkbAAw4ABwmxxq3m11up.s00sxq64q3o0z5qz5.o0y@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/65Z6YV5ZOFI7XIRNEFCXDZXGEIWSG3BE/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

syzbot suspects this issue was fixed by commit:

commit 1d0e850a49a5b56f8f3cb51e74a11e2fedb96be6
Author: David Howells <dhowells@redhat.com>
Date:   Fri Oct 16 12:21:14 2020 +0000

    afs: Fix cell removal

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=14bc220a500000
start commit:   fb0155a0 Merge tag 'nfs-for-5.9-3' of git://git.linux-nfs...
git tree:       upstream
kernel config:  https://syzkaller.appspot.com/x/.config?x=41b736b7ce1b3ea4
dashboard link: https://syzkaller.appspot.com/bug?extid=d2b6e8cc299748fecf25
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=1249c717900000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=1048d9e3900000

If the result looks correct, please mark the issue as fixed by replying with:

#syz fix: afs: Fix cell removal

For information about bisection process see: https://goo.gl/tpsmEJ#bisection
