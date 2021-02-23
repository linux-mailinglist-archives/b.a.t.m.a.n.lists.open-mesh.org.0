Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B682322378
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 23 Feb 2021 02:20:13 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 06F6F8026B;
	Tue, 23 Feb 2021 02:20:12 +0100 (CET)
Received: from mail-il1-f197.google.com (mail-il1-f197.google.com [209.85.166.197])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 91ED78026B
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 23 Feb 2021 02:20:09 +0100 (CET)
Received: by mail-il1-f197.google.com with SMTP id w1so3108174ilo.5
        for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 22 Feb 2021 17:20:09 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:date:in-reply-to:message-id:subject
         :from:to;
        bh=ACL/TW56hmM3icGPdSa0X3n3g07ekXH6PTx0W+ED+Os=;
        b=OlrH7tAyiQbZiHbfOvYiEt2a8DYUkeNwriracIyQNk5hnBQdjlcyi5zhpQmmMHek+1
         qC5TaeZr0CTZGBeJSp7XRJPiTZt3Rx1MXdN4DZIxwT35iWE4KAK/jKvhFsG20Fr/ICF+
         234QcQDl7zKpnB2gK1FGXgesjU3mTnP8EKWnrNI92hozMX/nJQGpKCpogjG3LaXiRZgE
         I+FY8BE5Yh7zGsmymSIeiIWKFXMxMgqkDeNl5L549UaujprTptnSgN2dNUsrIUEZ26Zx
         Lb9IeWtBqczomcN65LlVXvcYw8ssKxQ5pjOs+DsG9Kk8lYHsKDoOHdFilh/94zevOW5v
         4MIA==
X-Gm-Message-State: AOAM530PFQC5IqdvLB3A+in/jSsawMKzSkcxYE61Bxk3yjCWX9iLVryP
	pR9JHWMWXVzczesLJH2S1dzecBuVYzG1ORbpo1WQrsnNs3PW
X-Google-Smtp-Source: ABdhPJx9ZFVHGhyVAJurNdjMzu3Qfr+RlQdpRk1YumGN7EUKjFQqc3Ah/e+LPTa1FrJaCYq/dtjAB9VwGPIQe5m3XHIN7YtRNaeU
MIME-Version: 1.0
X-Received: by 2002:a02:a888:: with SMTP id l8mr6116516jam.50.1614043208198;
 Mon, 22 Feb 2021 17:20:08 -0800 (PST)
Date: Mon, 22 Feb 2021 17:20:08 -0800
In-Reply-To: <0000000000007f199405baa1ffc4@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <00000000000013b2eb05bbf6b8ce@google.com>
Subject: Re: WARNING in init_timer_key
From: syzbot <syzbot+105896fac213f26056f9@syzkaller.appspotmail.com>
To: a@unstable.cc, b.a.t.m.a.n@lists.open-mesh.org, davem@davemloft.net,
	gerrit@erg.abdn.ac.uk, hkallweit1@gmail.com, johannes.berg@intel.com,
	johannes@sipsolutions.net, kuba@kernel.org, linux-kernel@vger.kernel.org,
	linux-wireless@vger.kernel.org, mareklindner@neomailbox.ch,
	netdev@vger.kernel.org, sven@narfation.org, sw@simonwunderlich.de,
	syzkaller-bugs@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1614043209; a=rsa-sha256;
	cv=none;
	b=UFkNdXjTrGbr5gDm6IYXbOoEDrmjEkFLmWv9qoCvH7GnlEf3Gy9F6GYyX9v966rRr7BHXq
	dqyc1YoGxvHHwcxVTx7L3LM8gQ6xfvI4adde0cA+Abuk+yuZYGVZ4uz1vt3BdL3sbPWt50
	lh69ZgpRSxEjW28gwtaz4zS1Bo4zGik=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of 3SFg0YAkbANEFLM7x881ExCC50.3BB381HF1EzBAG1AG.zB9@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com designates 209.85.166.197 as permitted sender) smtp.mailfrom=3SFg0YAkbANEFLM7x881ExCC50.3BB381HF1EzBAG1AG.zB9@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1614043209;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to; bh=ACL/TW56hmM3icGPdSa0X3n3g07ekXH6PTx0W+ED+Os=;
	b=OtRYoS244btBVXDtj6Uu9h1GemOCipuzE/6MWedx+fIUaN3y6nGVPVW4DYgaNQ6eqYEScj
	UyX4KjNa2KyXknyy1ccRA1/bB9SqpdTU8hSNk4lRjxzTqJjns8xCeu2IsDnYm+sgSYb+qd
	y69ojmvLenS43TODAUCZARAqctanbyY=
Message-ID-Hash: O2YEUFWY4DSMGTS4YQCR3MTJMC533RLH
X-Message-ID-Hash: O2YEUFWY4DSMGTS4YQCR3MTJMC533RLH
X-MailFrom: 3SFg0YAkbANEFLM7x881ExCC50.3BB381HF1EzBAG1AG.zB9@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/O2YEUFWY4DSMGTS4YQCR3MTJMC533RLH/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

syzbot has bisected this issue to:

commit b9df4fd7e99cb8bfd80c4143f3045d63b1754ad0
Author: Heiner Kallweit <hkallweit1@gmail.com>
Date:   Sun Oct 6 16:19:54 2019 +0000

    net: core: change return type of pskb_may_pull to bool

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=11b4545cd00000
start commit:   1048ba83 Linux 5.11-rc6
git tree:       upstream
final oops:     https://syzkaller.appspot.com/x/report.txt?x=13b4545cd00000
console output: https://syzkaller.appspot.com/x/log.txt?x=15b4545cd00000
kernel config:  https://syzkaller.appspot.com/x/.config?x=3ae5569643a9955f
dashboard link: https://syzkaller.appspot.com/bug?extid=105896fac213f26056f9
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=16f0e564d00000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=147075e8d00000

Reported-by: syzbot+105896fac213f26056f9@syzkaller.appspotmail.com
Fixes: b9df4fd7e99c ("net: core: change return type of pskb_may_pull to bool")

For information about bisection process see: https://goo.gl/tpsmEJ#bisection
