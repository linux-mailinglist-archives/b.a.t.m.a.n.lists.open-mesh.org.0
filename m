Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id AC9242569B1
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 29 Aug 2020 20:23:19 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 74153803C2;
	Sat, 29 Aug 2020 20:23:13 +0200 (CEST)
Received: from mail-il1-f199.google.com (mail-il1-f199.google.com [209.85.166.199])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 3F16380019
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 29 Aug 2020 20:23:09 +0200 (CEST)
Received: by mail-il1-f199.google.com with SMTP id o18so1787935ill.20
        for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 29 Aug 2020 11:23:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:date:in-reply-to:message-id:subject
         :from:to;
        bh=bPIxx1nU1y1vRAICXwgpqNsvENjqeAPVEB+JHRttykM=;
        b=d6zzwslynGAbBh+/YXByg8d0SIemgnIWpaggwAQsp8IrPvYWbTyM4jt7+FAaEb/p+Z
         awEBnhjZglM5DHfyqSE4oKBixWYK2CHdd7XLEsXahdMDnmhQVYFMPEf9T1OsCs1g5894
         rvQn7ylOwJaAW6IO0buImhub9hpIE43z2MjvbWBoZAL0AXfRa+cpLWQUhChLFCXEszjx
         Lf9SWZowdI3PJrE2goBprE7iz0IXQJl4kWPz2/ZNHV1w0c0X9v7KJDxlehTbiqDqmLk/
         es19z3u+b3WrDmJuI4LEsIarMbJdX8VkqJOGqgA8iZhoQv+MzC7JxeJaBf1JCKbu4l7A
         ZDtA==
X-Gm-Message-State: AOAM533+HIDMbJCZSbozBXYe1IrZrsKaND5KGMJx0AfDXxjK5mzjBq1n
	rBw8INifZZp6mLTImdPX8MULeh3Tld7KxLUQT+1vlFdyDXLm
X-Google-Smtp-Source: ABdhPJxEVVgA7Ub0bc+MvFmjZc1/RLEdJoez91edkd/s46zbbgIIdHjRz0Wm+HGP+LJ67kuMQWaAkopVRrwprhGvW720EhjW9N/v
MIME-Version: 1.0
X-Received: by 2002:a92:d1c4:: with SMTP id u4mr3401246ilg.295.1598725387974;
 Sat, 29 Aug 2020 11:23:07 -0700 (PDT)
Date: Sat, 29 Aug 2020 11:23:07 -0700
In-Reply-To: <000000000000d3d67f05a20d2027@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000d8002705ae084273@google.com>
Subject: Re: INFO: task hung in tls_sk_proto_close
From: syzbot <syzbot+ca1345cca66556f3d79b@syzkaller.appspotmail.com>
To: a@unstable.cc, aviadye@mellanox.com, aviadye@nvidia.com,
	b.a.t.m.a.n@lists.open-mesh.org, borisp@mellanox.com, borisp@nvidia.com,
	daniel@iogearbox.net, davem@davemloft.net, idosch@mellanox.com,
	john.fastabend@gmail.com, kuba@kernel.org, linux-kernel@vger.kernel.org,
	mareklindner@neomailbox.ch, netdev@vger.kernel.org, petrm@mellanox.com,
	sw@simonwunderlich.de, syzkaller-bugs@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1598725389;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to; bh=bPIxx1nU1y1vRAICXwgpqNsvENjqeAPVEB+JHRttykM=;
	b=1OwTJ5lkiuyYgN3TiWoLeLZn9IMfNR7gLVgWossaWYOxT515q+u6LmwYt0R+DY0YWsqCzT
	zmcPyX5kr0RlmBBPta4pH/7QmlLLcIIuebOADpvjXZK3/mepQ04/1162ycXcxmpQLHyWXl
	MWDGsw9CWmH6t/MVTkK6qIvb+DqYegM=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1598725389; a=rsa-sha256;
	cv=none;
	b=H4zOY4Ykk0E1LogoYOql9XufQEBQK1/5bm8WE0Vy6Rgfg5H2lNRYtQu6XwKrfghMC22eJm
	84P1iq6PK2ekqWnLmZU+RK3D4PVtSxLZcobCjJsL3cmeJjTJmJrdfCwaEd4oPmzcbuTbP+
	eXlDPkyY+5lX4m1Uva4YIS8rBq5hBj4=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of 3C51KXwkbAHAgmnYOZZSfOddWR.UccUZSigSfQcbhSbh.Qca@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com designates 209.85.166.199 as permitted sender) smtp.mailfrom=3C51KXwkbAHAgmnYOZZSfOddWR.UccUZSigSfQcbhSbh.Qca@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
Message-ID-Hash: O3GC6Q5ZNNJ2KPMQBSTJM2VUN7ARWQ4B
X-Message-ID-Hash: O3GC6Q5ZNNJ2KPMQBSTJM2VUN7ARWQ4B
X-MailFrom: 3C51KXwkbAHAgmnYOZZSfOddWR.UccUZSigSfQcbhSbh.Qca@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/O3GC6Q5ZNNJ2KPMQBSTJM2VUN7ARWQ4B/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

syzbot has bisected this issue to:

commit 02d21b59d5cc4b4b395bbc2a29319b8a529ebeff
Author: Ido Schimmel <idosch@mellanox.com>
Date:   Wed Jan 23 14:32:59 2019 +0000

    mlxsw: spectrum_nve: Enable VXLAN on Spectrum-2

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=14e89b05900000
start commit:   5438dd45 net_sched: fix error path in red_init()
git tree:       net
final oops:     https://syzkaller.appspot.com/x/report.txt?x=16e89b05900000
console output: https://syzkaller.appspot.com/x/log.txt?x=12e89b05900000
kernel config:  https://syzkaller.appspot.com/x/.config?x=a0437fdd630bee11
dashboard link: https://syzkaller.appspot.com/bug?extid=ca1345cca66556f3d79b
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=14acdfe5900000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=1792598e900000

Reported-by: syzbot+ca1345cca66556f3d79b@syzkaller.appspotmail.com
Fixes: 02d21b59d5cc ("mlxsw: spectrum_nve: Enable VXLAN on Spectrum-2")

For information about bisection process see: https://goo.gl/tpsmEJ#bisection
