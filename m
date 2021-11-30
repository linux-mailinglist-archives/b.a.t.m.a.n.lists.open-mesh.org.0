Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 14CB1463B94
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 30 Nov 2021 17:19:17 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id D478081003;
	Tue, 30 Nov 2021 17:19:15 +0100 (CET)
Received: from mail-il1-f198.google.com (mail-il1-f198.google.com [209.85.166.198])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 0E22C807DA
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 30 Nov 2021 17:19:11 +0100 (CET)
Received: by mail-il1-f198.google.com with SMTP id l3-20020a056e021c0300b0029fcec8f2ccso27574563ilh.9
        for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 30 Nov 2021 08:19:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:date:in-reply-to:message-id:subject
         :from:to;
        bh=82PcJsGJmWA9J7EfSsaBo8R7BvPCcHNRldX54MbqtUk=;
        b=1j/LfnHY3WqUZeOJ+ZcWQpvCZlY3dEcq8NTGw5VmIbT3l/uVROsXv5L6FXnFUMDZxV
         JSGjCvCj+RAI8bkQC+/LfrlKhPiWd8/BxhMPspVxPyg8TLNxy5Md5AQ64UJSKs6VlVjA
         JicTQFQ/0LT2dOzmbPtpH23c7wVVQiJ1nyQpn/i+utCyOXavg2KABbmnlzE1oqCF9abO
         Xw3/J3NjwBWn8o6UXDb0Sg8T0vEc/E5wuy+MlRGIkVYrmnrIDgvyNVn5yO9IjdW2vbT5
         v2emTh2zC19rIED1rkdzy+0yV7dok014gQDDawJCY+3VewUd3G50d5E/OTzpyy7SrdTP
         wBNA==
X-Gm-Message-State: AOAM533C9yMqRBl1FPpb+yXyvdfeyLwtS4H8yV3IREsnvut0FZr2HXvn
	MkIrqVNP1PTpi+fmrGVYSV32rKWcX4WUtLMEvLX6oTZ9mLmv
X-Google-Smtp-Source: ABdhPJyxuzWxbXXQxXt/uLUyAQu5gmBfd3on9w/gXZzhkfqblOPzJkm/nRXJfXP2GwX0YVZSMLpgNz44tT0MMcAsVMq1dotg6xoH
MIME-Version: 1.0
X-Received: by 2002:a92:d8cf:: with SMTP id l15mr1635ilo.59.1638289150573;
 Tue, 30 Nov 2021 08:19:10 -0800 (PST)
Date: Tue, 30 Nov 2021 08:19:10 -0800
In-Reply-To: <000000000000f5964705b7d47d8c@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000dc091705d203eac6@google.com>
Subject: Re: [syzbot] INFO: trying to register non-static key in l2cap_sock_teardown_cb
From: syzbot <syzbot+a41dfef1d2e04910eb2e@syzkaller.appspotmail.com>
To: a@unstable.cc, b.a.t.m.a.n@lists.open-mesh.org, bobo.shaobowang@huawei.com,
	davem@davemloft.net, hdanton@sina.com, johan.hedberg@gmail.com,
	kuba@kernel.org, linux-bluetooth@vger.kernel.org,
	linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org,
	luiz.dentz@gmail.com, luiz.von.dentz@intel.com, marcel@holtmann.org,
	mareklindner@neomailbox.ch, miklos@szeredi.hu, mszeredi@redhat.com,
	netdev@vger.kernel.org, sw@simonwunderlich.de,
	syzkaller-bugs@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1638289152; a=rsa-sha256;
	cv=none;
	b=Ioo50KdWs8rcJkW7Hhpeoxz0WgNdHufLSN/pIFAMAb7C3i65blB5Gv5QYAa4C/5kpZjcfq
	y/MaGm3pcgj4VdyMI9YN6Cxgr8VxVyR/VenVMhG7lVw+o3gwPWETYOsyeWyVcm9ckUAs9L
	HUrdjgunE3BEVw5YoGL7L7tYCz52q70=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1638289152;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to; bh=82PcJsGJmWA9J7EfSsaBo8R7BvPCcHNRldX54MbqtUk=;
	b=tkL3wxyGE8Ys+uvQNhbNvQLRoHZwylpSORSq7I8GFKvYFWWLIK8GvHY90k4zi5YNt006qE
	UiUbvxfpUWvyXtMT9Q4j1snNgGhjfg0v72aXmsHkjXJ/8sXTJv9KHkl3YAMswbQw9ZULnh
	JrFlibmHU2KAE3VLETZKUw6XcnmuPkE=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of 3_k6mYQkbAEk39Avlwwp2l00to.rzzrwp53p2nzy4py4.nzx@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com designates 209.85.166.198 as permitted sender) smtp.mailfrom=3_k6mYQkbAEk39Avlwwp2l00to.rzzrwp53p2nzy4py4.nzx@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com;
	dmarc=fail reason="SPF not aligned (relaxed), No valid DKIM" header.from=appspotmail.com (policy=none)
Message-ID-Hash: 3LOBS5FTT2FM4OILWDD7MBQ7H6KVZH2S
X-Message-ID-Hash: 3LOBS5FTT2FM4OILWDD7MBQ7H6KVZH2S
X-MailFrom: 3_k6mYQkbAEk39Avlwwp2l00to.rzzrwp53p2nzy4py4.nzx@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/3LOBS5FTT2FM4OILWDD7MBQ7H6KVZH2S/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

syzbot suspects this issue was fixed by commit:

commit 1bff51ea59a9afb67d2dd78518ab0582a54a472c
Author: Wang ShaoBo <bobo.shaobowang@huawei.com>
Date:   Wed Sep 1 00:35:37 2021 +0000

    Bluetooth: fix use-after-free error in lock_sock_nested()

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=134c881eb00000
start commit:   73b7a6047971 net: dsa: bcm_sf2: support BCM4908's integrat..
git tree:       net-next
kernel config:  https://syzkaller.appspot.com/x/.config?x=9ce34124da4c882b
dashboard link: https://syzkaller.appspot.com/bug?extid=a41dfef1d2e04910eb2e
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=166ee4cf500000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=1337172f500000

If the result looks correct, please mark the issue as fixed by replying with:

#syz fix: Bluetooth: fix use-after-free error in lock_sock_nested()

For information about bisection process see: https://goo.gl/tpsmEJ#bisection
