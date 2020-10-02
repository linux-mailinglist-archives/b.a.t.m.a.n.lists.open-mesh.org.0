Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 53FCB280CD5
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri,  2 Oct 2020 06:31:14 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 0B5C2804BB;
	Fri,  2 Oct 2020 06:31:13 +0200 (CEST)
Received: from mail-io1-f80.google.com (mail-io1-f80.google.com [209.85.166.80])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 494A0800A1
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri,  2 Oct 2020 06:31:10 +0200 (CEST)
Received: by mail-io1-f80.google.com with SMTP id m10so207011ioq.0
        for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 01 Oct 2020 21:31:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:date:in-reply-to:message-id:subject
         :from:to;
        bh=2rR7OFCkiGOcbn8yg3FFIizJzk0Y5CDsOwEAe9MFfqY=;
        b=fUo8R92zZcuWNuyImDMi0G7aVsWKTV/VsuX4/PqnEwadY5EMKwX1IQ6kSpBbP1e07F
         a5ip/uCC/mNeLbSttA/lIlIBDbBtFZmwmu3Jni9DoaYlqX7c9skX84L+PuliQwMxCHZw
         0sSt9YFhRk6kRSCUS1Pt29dyjjJP87eJu+nzaZRpdwCBhcmUabuQKaMT2gZ7pB8JP2jR
         qROSnJUr0ukB1zg5xq9KzyAA3fDcfzwKxYJGJbCoQR9NCm4cMuf2O/i3OnX7tMdTstxl
         PY/gLULilnR0sOJXtuAt+4eOvjVs3NS+jsDILe3itmPOC6fqGxD3qNHgRdtQQ/U+bBix
         Zq5Q==
X-Gm-Message-State: AOAM533Sq3SeIH2VswEaYVjdjYTn7W8f3PYbLLtvOKhETlw4jUrEg6AU
	pI5t+y/bMuw9HulDmlnylTLCxZRzOjzHPy5jS5//6CaFmiMn
X-Google-Smtp-Source: ABdhPJwyio9B9RK4QMV+77SSkDUiL2aBMDrXygJtRXJZn8ix0TJV07LbSiIGdgU/ICZl+Xp6JhyjTk1bOjljcqJ5nfrSfAkO2l0T
MIME-Version: 1.0
X-Received: by 2002:a05:6638:24c1:: with SMTP id y1mr616780jat.119.1601613068931;
 Thu, 01 Oct 2020 21:31:08 -0700 (PDT)
Date: Thu, 01 Oct 2020 21:31:08 -0700
In-Reply-To: <0000000000007b357405b099798f@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000000a954d05b0a89a86@google.com>
Subject: Re: WARNING in cfg80211_connect
From: syzbot <syzbot+5f9392825de654244975@syzkaller.appspotmail.com>
To: a@unstable.cc, b.a.t.m.a.n@lists.open-mesh.org, davem@davemloft.net,
	david@fromorbit.com, dchinner@redhat.com, hch@lst.de,
	johannes@sipsolutions.net, kuba@kernel.org, linux-kernel@vger.kernel.org,
	linux-wireless@vger.kernel.org, mareklindner@neomailbox.ch,
	netdev@vger.kernel.org, sw@simonwunderlich.de,
	syzkaller-bugs@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1601613070;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to; bh=2rR7OFCkiGOcbn8yg3FFIizJzk0Y5CDsOwEAe9MFfqY=;
	b=r5I6o75/PixusYgBeK938bbE2LCcI8kfPitny8AeeTR6mCh4qAKB3cvyCApnHSovW+6ylU
	Fkrvt2If5oGreC4QXR+rd3PM9HptdVPhTI7+aTSZxayUgOLVQwLccg9fFo6mFy/hS4R+7c
	W84lQpZobQ6a+euUHPldCKxb2zOnzAM=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1601613070; a=rsa-sha256;
	cv=none;
	b=I42cCFX8KAHUt8I5u0IAjWQGaCAvDF06VmQQWewHAvbMUsrEA0xQkFx9fNp5wKL7bBQza/
	spRMxvHuVN9rhxIABOFe3OiD+BPiJ7R2Jxv7GaLqALwoHcbdgAkm1RzxUSeVy59gPWeZ0V
	+uQgwfBU93qcpQlSoM/HyT478fv9FIg=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of 3DK12XwkbAEMx34pfqqjwfuuni.lttlqjzxjwhtsyjsy.htr@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com designates 209.85.166.80 as permitted sender) smtp.mailfrom=3DK12XwkbAEMx34pfqqjwfuuni.lttlqjzxjwhtsyjsy.htr@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
Message-ID-Hash: V55ZLXAAAHIYOMY4SRLJPK6BPCRYVYI7
X-Message-ID-Hash: V55ZLXAAAHIYOMY4SRLJPK6BPCRYVYI7
X-MailFrom: 3DK12XwkbAEMx34pfqqjwfuuni.lttlqjzxjwhtsyjsy.htr@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/V55ZLXAAAHIYOMY4SRLJPK6BPCRYVYI7/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

syzbot has bisected this issue to:

commit 16d4d43595b4780daac8fcea6d042689124cb094
Author: Christoph Hellwig <hch@lst.de>
Date:   Wed Jul 20 01:38:55 2016 +0000

    xfs: split direct I/O and DAX path

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=14f662b7900000
start commit:   87d5034d Merge tag 'mlx5-updates-2020-09-30' of git://git...
git tree:       net-next
final oops:     https://syzkaller.appspot.com/x/report.txt?x=16f662b7900000
console output: https://syzkaller.appspot.com/x/log.txt?x=12f662b7900000
kernel config:  https://syzkaller.appspot.com/x/.config?x=7b5cc8ec2218e99d
dashboard link: https://syzkaller.appspot.com/bug?extid=5f9392825de654244975
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=1100d333900000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=1414c997900000

Reported-by: syzbot+5f9392825de654244975@syzkaller.appspotmail.com
Fixes: 16d4d43595b4 ("xfs: split direct I/O and DAX path")

For information about bisection process see: https://goo.gl/tpsmEJ#bisection
