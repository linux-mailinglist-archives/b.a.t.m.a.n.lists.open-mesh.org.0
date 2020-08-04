Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D9B823BAD5
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue,  4 Aug 2020 15:01:13 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id CBEFD803C3;
	Tue,  4 Aug 2020 15:01:10 +0200 (CEST)
Received: from mail-il1-f200.google.com (mail-il1-f200.google.com [209.85.166.200])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 1E0DB801BF
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue,  4 Aug 2020 15:01:08 +0200 (CEST)
Received: by mail-il1-f200.google.com with SMTP id e4so16467770ilr.0
        for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 04 Aug 2020 06:01:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:date:in-reply-to:message-id:subject
         :from:to;
        bh=06+82rKMp3PGXLDD6Ap7gC365MaLMsLGY5Rl6STa3zE=;
        b=N/6Gi1jvgHw9Z7A/BkgzgarLK+TwVb/RLzaGCnkQpqzIvAG/4DV0rWLwdv2qhzDsJ+
         rix9L6fk4ObAsHAXlQYeu4TX/5Q6D5ny5UZB/to707PZOX+gyPeqcIzY1knxut/17L8q
         +R5NwJYjuY71uLImtcYW4hpEN/c7o4DaQYdqtm6jt06dwhYJUx9oUotl2rjtll0REbgf
         5b/DwDG1HIzA6zPwExtpAkDwNzuuscvLzCrTE29xZ6p7VP7ldGQB1b6rYaM/uNCReYKm
         xL0S8wrgUOL0hx4qq0wm5FcL0bW7RSQEs5emvZkORtFlBQKBswonGqhM8qUrSo2ZEPrn
         ELWA==
X-Gm-Message-State: AOAM533+mlAKBVtMrQVyq/sxfmTT0sDH0aJvcJu7oTRQiZ2hW1/CwH3I
	OTIteTauP1AACnu18i3PiTzUoxouyMUwXBbYPQxh4sD/Vwy4
X-Google-Smtp-Source: ABdhPJysIn/3rq8mJzFBZcPdgkiq5Vci73yhB6VXvAfDq6syCOUZWs4ErkDjGmgAWbCV304S/arGJe8W97c4vCtTU2PHRCJr/z6K
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:d51:: with SMTP id h17mr4320234ilj.155.1596546066783;
 Tue, 04 Aug 2020 06:01:06 -0700 (PDT)
Date: Tue, 04 Aug 2020 06:01:06 -0700
In-Reply-To: <000000000000a7eb5e05abeb197d@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000002da68705ac0cd9ab@google.com>
Subject: Re: general protection fault in hci_event_packet
From: syzbot <syzbot+0bef568258653cff272f@syzkaller.appspotmail.com>
To: a@unstable.cc, b.a.t.m.a.n@lists.open-mesh.org, davem@davemloft.net,
	geert@linux-m68k.org, javier@osg.samsung.com, johan.hedberg@gmail.com,
	kuba@kernel.org, linux-bluetooth@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux@armlinux.org.uk, marcel@holtmann.org,
	mareklindner@neomailbox.ch, netdev@vger.kernel.org, sw@simonwunderlich.de,
	syzkaller-bugs@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1596546068;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to; bh=06+82rKMp3PGXLDD6Ap7gC365MaLMsLGY5Rl6STa3zE=;
	b=RCMAJei7tjLo0E/j6FmAhEYVQQYArF+vRQsrfcA8IjYiAj6/kdTfJS+vqTZ5hU5p0HfJRq
	NJdCCYMBFg7XHy0yQX6xa4wailndRSsRylJIG7eNIAkxG3W+KDJiX+p0DTZHs8WLt7sDKo
	YoEdIoqERBdB6pxly/FF6VArN4ne0NQ=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1596546068; a=rsa-sha256;
	cv=none;
	b=StTtXzEpUZdrDmMe9fu5j8lty0AtrIB9KzSmw6BagSXm08MyxA5dBzn5WYIxilFzy4DFii
	C9mFlAINHy1FJrGin7Zy/W13fvMowQifZbsIGOL82cXJ92mf3vP9IrPzqRybMiBBXVOvim
	6OGDQK/K4e+W2Kf3FgBgfPNaG/I0BY4=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of 3ElwpXwkbAG8flmXNYYReNccVQ.TbbTYRhfRePbagRag.PbZ@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com designates 209.85.166.200 as permitted sender) smtp.mailfrom=3ElwpXwkbAG8flmXNYYReNccVQ.TbbTYRhfRePbagRag.PbZ@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
Message-ID-Hash: GCHY5JS6JTK24HC7BD3USBVDGZB6SZK2
X-Message-ID-Hash: GCHY5JS6JTK24HC7BD3USBVDGZB6SZK2
X-MailFrom: 3ElwpXwkbAG8flmXNYYReNccVQ.TbbTYRhfRePbagRag.PbZ@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/GCHY5JS6JTK24HC7BD3USBVDGZB6SZK2/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

syzbot has bisected this issue to:

commit 941992d2944789641470626e9336d663236b1d28
Author: Javier Martinez Canillas <javier@osg.samsung.com>
Date:   Mon Sep 12 14:03:34 2016 +0000

    ethernet: amd: use IS_ENABLED() instead of checking for built-in or module

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=155180c2900000
start commit:   bcf87687 Linux 5.8
git tree:       upstream
final oops:     https://syzkaller.appspot.com/x/report.txt?x=175180c2900000
console output: https://syzkaller.appspot.com/x/log.txt?x=135180c2900000
kernel config:  https://syzkaller.appspot.com/x/.config?x=4b489d75d0c8859d
dashboard link: https://syzkaller.appspot.com/bug?extid=0bef568258653cff272f
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=1043af04900000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=12ca1dea900000

Reported-by: syzbot+0bef568258653cff272f@syzkaller.appspotmail.com
Fixes: 941992d29447 ("ethernet: amd: use IS_ENABLED() instead of checking for built-in or module")

For information about bisection process see: https://goo.gl/tpsmEJ#bisection
