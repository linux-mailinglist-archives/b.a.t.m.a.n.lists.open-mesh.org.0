Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AB253508BA
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 31 Mar 2021 23:03:14 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id D9BCF80873;
	Wed, 31 Mar 2021 23:03:12 +0200 (CEST)
Received: from mail-io1-f71.google.com (mail-io1-f71.google.com [209.85.166.71])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id F2B9C804BC
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 31 Mar 2021 23:03:09 +0200 (CEST)
Received: by mail-io1-f71.google.com with SMTP id j1so2462317ioo.3
        for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 31 Mar 2021 14:03:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:date:in-reply-to:message-id:subject
         :from:to;
        bh=kP/y11epKcSUPOyR3ggVPINM0BmYMwSnVyCElSIqNFk=;
        b=oiMTdUjmQRqMO2xCp+0g34F+/yjQdaR2G7uhqS6WfVGIQzv1t/KGCxee/pnepKV/2G
         h2aNaTMVd8CMj6gsrjuUOTE8nEt5nEmnmFsFDBG7NjOSYso+9PtvNxX/N525Mm2QCe+q
         fFs0lfr0qiwGBlUsPSwOS14mJMfC0kpGe97rHPrRffRYoYJzVSPAZ0T9Deb9cxjNLDVV
         1akhumSSevgKrDey+pGowvWuJuvLkLzVXQckQIhPAwGJGsr0WGSE4dyDNj+LYAPcvFRg
         y16Nk5wq3Lbr4QKOwdOtKrNxRiny2gRP0/35+PfrodNmuHmxqy2jVgr0TKbWFBZ2tx2O
         2y+A==
X-Gm-Message-State: AOAM531QatDKraq6oRQpr1jwfbLuCVkAWrBwmClV7dSTT0jqZL4vaf9z
	sumqu8TpNoy7azBsMflTJSHV08n8rGAUcTuERtY9q+LRx6Sv
X-Google-Smtp-Source: ABdhPJwLRBNjRlYsZOUMcyuiCfXjpK8qdqf9jZ3VAQDOJm+DbI0iO8VxG0rEbQUcU2oSqtwg/wuXvw4w01xF8OT1kTor7aN6bJkU
MIME-Version: 1.0
X-Received: by 2002:a05:6638:388e:: with SMTP id b14mr4857937jav.62.1617224588612;
 Wed, 31 Mar 2021 14:03:08 -0700 (PDT)
Date: Wed, 31 Mar 2021 14:03:08 -0700
In-Reply-To: <00000000000073afff05bbe9a54d@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <00000000000020564605bedb716e@google.com>
Subject: Re: [syzbot] WARNING in ieee802154_del_seclevel
From: syzbot <syzbot+fbf4fc11a819824e027b@syzkaller.appspotmail.com>
To: a@unstable.cc, alex.aring@gmail.com, b.a.t.m.a.n@lists.open-mesh.org,
	davem@davemloft.net, info@sophiescuban.com, jkosina@suse.cz, kuba@kernel.org,
	linux-kernel@vger.kernel.org, linux-wpan@vger.kernel.org,
	mareklindner@neomailbox.ch, netdev@vger.kernel.org, stefan@datenfreihafen.org,
	stern@rowland.harvard.edu, sw@simonwunderlich.de,
	syzkaller-bugs@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of 3jONkYAkbAO8jpqbRccViRggZU.XffXcVljViTfekVek.Tfd@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com designates 209.85.166.71 as permitted sender) smtp.mailfrom=3jONkYAkbAO8jpqbRccViRggZU.XffXcVljViTfekVek.Tfd@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1617224590; a=rsa-sha256;
	cv=none;
	b=GhIbjgQFNE8qhW7LWRoQgM2tzQ9sHJ8yidWUI3im63ThNQvVmYseWkrUkNMeAaJzZL5+oC
	RArlUXRfe07orN+Ym5ROeGO/PQl+YKcLgEtCTGGWw/ig7TU6MUj7hB8hYvTZvPv3JEorHe
	bcZ62mYyGRNU4li+8cf/pa6GOgoRrMc=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1617224590;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to; bh=kP/y11epKcSUPOyR3ggVPINM0BmYMwSnVyCElSIqNFk=;
	b=GhfN1mpQbuXAj1qZpNl9TDiI4svhHOpTYgaJ8V3NOkZvzh4YybPQpYLDPnMXu7mFWXhWUp
	spdWeoQANBzq3mfdfmydOBSG3B9pIvD/OVt2FzjBHMlFUVnxUI6r7kdYFEGH7gI/bFZCaL
	SAucLUyCK7pX1Flk58InjwGRhTiPguE=
Message-ID-Hash: T7YEXSCHVS3KLNPFJR2A3UJQHXXPELAB
X-Message-ID-Hash: T7YEXSCHVS3KLNPFJR2A3UJQHXXPELAB
X-MailFrom: 3jONkYAkbAO8jpqbRccViRggZU.XffXcVljViTfekVek.Tfd@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/T7YEXSCHVS3KLNPFJR2A3UJQHXXPELAB/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

syzbot has bisected this issue to:

commit 416dacb819f59180e4d86a5550052033ebb6d72c
Author: Alan Stern <stern@rowland.harvard.edu>
Date:   Wed Aug 21 17:27:12 2019 +0000

    HID: hidraw: Fix invalid read in hidraw_ioctl

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=127430fcd00000
start commit:   6e5a03bc ethernet/netronome/nfp: Fix a use after free in n..
git tree:       net
final oops:     https://syzkaller.appspot.com/x/report.txt?x=117430fcd00000
console output: https://syzkaller.appspot.com/x/log.txt?x=167430fcd00000
kernel config:  https://syzkaller.appspot.com/x/.config?x=daeff30c2474a60f
dashboard link: https://syzkaller.appspot.com/bug?extid=fbf4fc11a819824e027b
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=13bfe45ed00000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=1188e31ad00000

Reported-by: syzbot+fbf4fc11a819824e027b@syzkaller.appspotmail.com
Fixes: 416dacb819f5 ("HID: hidraw: Fix invalid read in hidraw_ioctl")

For information about bisection process see: https://goo.gl/tpsmEJ#bisection
