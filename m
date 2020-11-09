Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 86C9A2AB5BA
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon,  9 Nov 2020 12:03:11 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 39E2F8049F;
	Mon,  9 Nov 2020 12:03:10 +0100 (CET)
Received: from mail-io1-f69.google.com (mail-io1-f69.google.com [209.85.166.69])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id B0A0C80290
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon,  9 Nov 2020 12:03:06 +0100 (CET)
Received: by mail-io1-f69.google.com with SMTP id c4so5333788ioi.16
        for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 09 Nov 2020 03:03:06 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:date:in-reply-to:message-id:subject
         :from:to;
        bh=RC1F7ktIPdtkjf9WZxb33quJkR4mZqslLpcDaMizXIQ=;
        b=Au4ZPuJp1t/+Ro0vO6Cc9cIvA4YiMPywBpJR6AWjZQdbE58nYmoy/+jZ504tk26bzG
         LYKL15NpxwKLkNXmRI/FtIvLB3g3JevycPt2V/3pGbVXKsOkNpYBakGOMgAE4PpYzvaa
         fvsR3FFJ8qhUZUuhuizPgR9M7SjTRCxAZaWDYAwDQQTfwUJ7HWT6LmCKSFaU3f2Hqi5/
         A38jOWL5RffV3oa5B/iATF0T8YohGP0Xm8FjfHMK/Uj2fjEu8zTEurMUAlJ3PWb/MXtv
         tCsaK7gJlzDoCfRcrG54Y8WuqM18Cq/dJBD3FcwuPKukrj9fo0Zim/XPj2gV0wu7NgbM
         cFmg==
X-Gm-Message-State: AOAM530E9Yz8aU1GtzRxPh+3Euf8vnwt/mEa+lvEf7PwGLNHJFNpAEq+
	NoR5QRivmtQ0A2iyocJOGm9wGz+EArZL5Vuib1+B1EicVdbe
X-Google-Smtp-Source: ABdhPJywQbYbN3++ou8k2gB6sjlyy0rEKh+k8IYljtbeI93rm6pObmoUSlPtAT1Ld4D0aDBhwcdPxIgVjgAK/RKW4DgHAskDUE5K
MIME-Version: 1.0
X-Received: by 2002:a92:d5d0:: with SMTP id d16mr10009802ilq.223.1604919785429;
 Mon, 09 Nov 2020 03:03:05 -0800 (PST)
Date: Mon, 09 Nov 2020 03:03:05 -0800
In-Reply-To: <000000000000a48f9e05aef6cce1@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000b4227e05b3aa8101@google.com>
Subject: Re: INFO: rcu detected stall in exit_group
From: syzbot <syzbot+1a14a0f8ce1a06d4415f@syzkaller.appspotmail.com>
To: a@unstable.cc, b.a.t.m.a.n@lists.open-mesh.org, davem@davemloft.net,
	dhowells@redhat.com, fweisbec@gmail.com, linux-afs@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-mm@kvack.org, mareklindner@neomailbox.ch,
	mike.kravetz@oracle.com, mingo@kernel.org, netdev@vger.kernel.org,
	sw@simonwunderlich.de, syzkaller-bugs@googlegroups.com, tglx@linutronix.de,
	viro@zeniv.linux.org.uk
Content-Type: text/plain; charset="UTF-8"
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of 36SGpXwkbANQIOPA0BB4H0FF83.6EE6B4KI4H2EDJ4DJ.2EC@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com designates 209.85.166.69 as permitted sender) smtp.mailfrom=36SGpXwkbANQIOPA0BB4H0FF83.6EE6B4KI4H2EDJ4DJ.2EC@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1604919786; a=rsa-sha256;
	cv=none;
	b=Sf9UXU/e6GPwaUFnAl5SHV7IlYdLT3vmWeiYEWV8jnDGcvD8pVRQOu6zd0MzaiAlA68DuM
	JtxoTW2hC/0qC7RS9NZYrSK7z5ZDOBKvvR6hsdZEpxwO+9rgH74V6yHi0rOLsLybzEWJLT
	OCigkMSw66cDF+mLjFbxhDndt0OK/DM=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1604919786;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to; bh=RC1F7ktIPdtkjf9WZxb33quJkR4mZqslLpcDaMizXIQ=;
	b=oapWKdJ3d/k5MIh/5Tzq/RAQxz/jyc/6dFPdXWGym4jpVwKWKWHn8feG62A5sgJg9MBAIN
	u0gMb77Wnio0gW9m7Qi7NMT4IZ8ltO8MNLuGJcHb1jHysBq4G7IdfbX/azT6KgX7KLnsjy
	wZxfyIJbG+i3K9YS9JiIcYnmKTOv8YU=
Message-ID-Hash: 2G5Y3IWHDYIWG3RUIYBHUEEFVLOMLLAG
X-Message-ID-Hash: 2G5Y3IWHDYIWG3RUIYBHUEEFVLOMLLAG
X-MailFrom: 36SGpXwkbANQIOPA0BB4H0FF83.6EE6B4KI4H2EDJ4DJ.2EC@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/2G5Y3IWHDYIWG3RUIYBHUEEFVLOMLLAG/>
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

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=14b65c3a500000
start commit:   34d4ddd3 Merge tag 'linux-kselftest-5.9-rc5' of git://git...
git tree:       upstream
kernel config:  https://syzkaller.appspot.com/x/.config?x=a9075b36a6ae26c9
dashboard link: https://syzkaller.appspot.com/bug?extid=1a14a0f8ce1a06d4415f
userspace arch: i386
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=10c6642d900000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=132d00fd900000

If the result looks correct, please mark the issue as fixed by replying with:

#syz fix: afs: Fix cell removal

For information about bisection process see: https://goo.gl/tpsmEJ#bisection
