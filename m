Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id ADF5728241C
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat,  3 Oct 2020 14:45:13 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 709DD80381;
	Sat,  3 Oct 2020 14:45:12 +0200 (CEST)
Received: from mail-io1-f78.google.com (mail-io1-f78.google.com [209.85.166.78])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 2F7B280381
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sat,  3 Oct 2020 14:45:09 +0200 (CEST)
Received: by mail-io1-f78.google.com with SMTP id e21so121877ioe.4
        for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 03 Oct 2020 05:45:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:date:in-reply-to:message-id:subject
         :from:to;
        bh=O/u2fqyXLK0YS4cdPeK1MlCoIRulDbI3uMHYLDBM+gE=;
        b=VYgQzjGfn2zJ/jt+HtfD2hWdjr0m+ycg71hhdVHZGrKUHWdjeSTGFQcWhID2ojUCm3
         x1ehDANtuScEOk67PfaoHkkg/+aT8fLporDEhR6cMzwotu6v8l8OeymouRK0gFryWcKj
         M9wlUM8gm5j1IdPKfITjsNf7PfUftuw8O+ZLGIXqClYCewWrVCKANCCE98fTVFfOoj3b
         mt/LZGv5Orwz7tVnqO5zQPzWy+4fkIV1WRaUlmU4QpGvzDGvWyRAn7/Z/h7bnsg4xtrQ
         /+pEvbVAqZl4a7d09nsbw0BwXqtdrrEjiwnJwTe1Hgns2fvNT4Vmg1wxqrigS7vqBqro
         zXOQ==
X-Gm-Message-State: AOAM531W9UtiqY5bh6SiPoaUgXcZ25hEMlO2b6F5kCa2QwGFaNPA9qQp
	e3eSco3DAC2cD/u5bUxTqDrRsnBFyffxlRTLuZLZgL/+pUxF
X-Google-Smtp-Source: ABdhPJyRz/A5CvPNMT52s8+m2dfKNAHR+kvMHdTA8FDr9QHOAF5bCyv1hMFXDVTQUR3nCvvebSNewG0c6aM/CU6AfigENWeZaUPi
MIME-Version: 1.0
X-Received: by 2002:a5e:8516:: with SMTP id i22mr2945386ioj.93.1601729107907;
 Sat, 03 Oct 2020 05:45:07 -0700 (PDT)
Date: Sat, 03 Oct 2020 05:45:07 -0700
In-Reply-To: <000000000000fa10d905b0b1eb89@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <00000000000080daf705b0c39e95@google.com>
Subject: Re: WARNING in drv_bss_info_changed
From: syzbot <syzbot+4cf3e4e092f2f4120a52@syzkaller.appspotmail.com>
To: a@unstable.cc, b.a.t.m.a.n@lists.open-mesh.org, davem@davemloft.net,
	g.nault@alphalink.fr, johannes@sipsolutions.net, ktkhai@virtuozzo.com,
	kuba@kernel.org, linux-kernel@vger.kernel.org, linux-wireless@vger.kernel.org,
	mareklindner@neomailbox.ch, netdev@vger.kernel.org, sw@simonwunderlich.de,
	syzkaller-bugs@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1601729109;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to; bh=O/u2fqyXLK0YS4cdPeK1MlCoIRulDbI3uMHYLDBM+gE=;
	b=1CMKFpLEqXv0tQlPGCO5V28TQ/6vFprzW2WuwgRvK5+4pNR58fs7BDB3wxJhuCnBhvwtzO
	JWNf4C1VqWImJpWLA2teoojuHJjcMwaVcr3Aw0gJ7Poqit0k9aP3Xe6lhcVcIsF7s7xeBC
	VmI4MkdyfGxJrBJmDsGjytEyPRzWLKg=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1601729109; a=rsa-sha256;
	cv=none;
	b=tBZ1/YT5HyGzFtw4AgypRlLnZH+UpL+bmQYFnXDkBiaqsj595Nk/w55f37+2s07Z5CEwUd
	ecNTOVZhbaEJy2dBvX/4PyN15yDQCsccn3Np+TkIdMJGhkmxk65L45KCp15bjggP1c2N7K
	wtaNeeAwEgVWQHjP9Hk1ua12TgeFu08=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of 3U3J4XwkbABwKQRC2DD6J2HHA5.8GG8D6MK6J4GFL6FL.4GE@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com designates 209.85.166.78 as permitted sender) smtp.mailfrom=3U3J4XwkbABwKQRC2DD6J2HHA5.8GG8D6MK6J4GFL6FL.4GE@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
Message-ID-Hash: NKJVOUWBHVJ4KRSTYNWCQMAIRMAENP6S
X-Message-ID-Hash: NKJVOUWBHVJ4KRSTYNWCQMAIRMAENP6S
X-MailFrom: 3U3J4XwkbABwKQRC2DD6J2HHA5.8GG8D6MK6J4GFL6FL.4GE@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/NKJVOUWBHVJ4KRSTYNWCQMAIRMAENP6S/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

syzbot has bisected this issue to:

commit 489b30b53f0540b9f8e391cbb2839cea48b5d1c1
Author: Kirill Tkhai <ktkhai@virtuozzo.com>
Date:   Thu Mar 15 09:10:57 2018 +0000

    net: Convert l2tp_net_ops

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=175b598f900000
start commit:   fcadab74 Merge tag 'drm-fixes-2020-10-01-1' of git://anong..
git tree:       upstream
final oops:     https://syzkaller.appspot.com/x/report.txt?x=14db598f900000
console output: https://syzkaller.appspot.com/x/log.txt?x=10db598f900000
kernel config:  https://syzkaller.appspot.com/x/.config?x=89ab6a0c48f30b49
dashboard link: https://syzkaller.appspot.com/bug?extid=4cf3e4e092f2f4120a52
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=145eb667900000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=15422c1f900000

Reported-by: syzbot+4cf3e4e092f2f4120a52@syzkaller.appspotmail.com
Fixes: 489b30b53f05 ("net: Convert l2tp_net_ops")

For information about bisection process see: https://goo.gl/tpsmEJ#bisection
