Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 60A4A45CB4F
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 24 Nov 2021 18:42:16 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 329BB8250E;
	Wed, 24 Nov 2021 18:42:15 +0100 (CET)
Received: from mail-io1-f69.google.com (mail-io1-f69.google.com [209.85.166.69])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id BAAED80394
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 24 Nov 2021 18:42:11 +0100 (CET)
Received: by mail-io1-f69.google.com with SMTP id 85-20020a6b0258000000b005ed47a95f03so1719081ioc.0
        for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 24 Nov 2021 09:42:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:date:in-reply-to:message-id:subject
         :from:to;
        bh=h0kvn1BdxoP46i2HNoKMazuHRf6SKPJskeY6V4kDJOE=;
        b=CG0DTGAh/REDlIZ7RnEvLjJN0AmOxxMIgGN5kpT0HKMD2oAPY9ZSnsxMpDzyJKXx46
         jC+EiWG1sYQqwfVqaLbWvNxW6lCUXTYBcWCfFjpVWuhF1t5TnubH/hpxJs/sbXInUPh2
         +6vu2wNlw9eJwhBZoerVpD5sBgGIqwcLtTXupdi1+pdlXXiay2EsXCjUcFd9Nexfio7J
         jkb9k7io6+2sU+KMreh5szIPsfM5caXMFUzZhttEv5KwNxiUOeJvZVHhEH/m5m53ZCDz
         TI4SgAGcD9UJloK5aTCf15UfWKlbLHtslv9UIML+v8XkqJRTPnX2ByTCMfPgqmy9/qWm
         cELA==
X-Gm-Message-State: AOAM533UFFnagckY7jiJrJWXxG/E0xC/AXml7RRy5aB9sctNsf/3/YOD
	Ntdpn3P0G1eQIWN3RML+0hM7TURok7cs+QdrMMVBjEpwjRD9
X-Google-Smtp-Source: ABdhPJwb7HvyUqHy3UoRecfI82f0bvHWHU2TDeSHzrJEyGEuUEO081UcqCkKr9ePW6QOXrKgj7ioth7zzj1e0gFO8okXtgY78HTC
MIME-Version: 1.0
X-Received: by 2002:a5d:9cd4:: with SMTP id w20mr17292523iow.178.1637775730232;
 Wed, 24 Nov 2021 09:42:10 -0800 (PST)
Date: Wed, 24 Nov 2021 09:42:10 -0800
In-Reply-To: <000000000000ba80b905cdcd8b19@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000009f52f205d18c60a7@google.com>
Subject: Re: [syzbot] WARNING: ODEBUG bug in batadv_v_ogm_free
From: syzbot <syzbot+0ef06384b5f39a16ebb9@syzkaller.appspotmail.com>
To: Jason@zx2c4.com, a@unstable.cc, amcohen@nvidia.com,
	b.a.t.m.a.n@lists.open-mesh.org, davem@davemloft.net, dsahern@kernel.org,
	edumazet@google.com, fw@strlen.de, idosch@OSS.NVIDIA.COM,
	justin.iurman@uliege.be, kuba@kernel.org, linux-kernel@vger.kernel.org,
	mareklindner@neomailbox.ch, netdev@vger.kernel.org, paskripkin@gmail.com,
	praveen5582@gmail.com, sven@narfation.org, sw@simonwunderlich.de,
	syzkaller-bugs@googlegroups.com, willemb@google.com, yoshfuji@linux-ipv6.org,
	zxu@linkedin.com
Content-Type: text/plain; charset="UTF-8"
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1637775731; a=rsa-sha256;
	cv=none;
	b=lpdbM5/0iQzacuHtbscHq++KPl+uztZvdR78xFWy4DiJg7WS7RFCGL/a5WvFhbRtSQqvIZ
	bfU99DIpem44eD1kEdn7cAUBlEE4qR/L+WTjqy+olBPZ/ZgutDdOidL1PFLvyqiSBP6b5b
	f+ktIuPp/NyLyG+XotmA/3wYws9s7dk=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1637775731;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to; bh=h0kvn1BdxoP46i2HNoKMazuHRf6SKPJskeY6V4kDJOE=;
	b=z7jw05UG+QWZEP7CaVmy9ZwYwIbq8Y+UBcVSj2UdpyRMnExV8rPlrjwPNsN3mcbIsQU+2w
	qa4Z3/2y5Xs5Gv0R1TpP4jvcPeheWqXpdC/6jqlAPdkyw3Bf9bn6YbhelY57EGF8WROvjG
	9tG978XRrl88Ei6ZHI9iQyxSV0/YthA=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of 3cnmeYQkbAPElrsdTeeXkTiibW.ZhhZeXnlXkVhgmXgm.Vhf@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com designates 209.85.166.69 as permitted sender) smtp.mailfrom=3cnmeYQkbAPElrsdTeeXkTiibW.ZhhZeXnlXkVhgmXgm.Vhf@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com;
	dmarc=fail reason="SPF not aligned (relaxed), No valid DKIM" header.from=appspotmail.com (policy=none)
Message-ID-Hash: 26VDNXMGSOVEHYTJ77XM3T5DIZHOFFJD
X-Message-ID-Hash: 26VDNXMGSOVEHYTJ77XM3T5DIZHOFFJD
X-MailFrom: 3cnmeYQkbAPElrsdTeeXkTiibW.ZhhZeXnlXkVhgmXgm.Vhf@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/26VDNXMGSOVEHYTJ77XM3T5DIZHOFFJD/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

syzbot suspects this issue was fixed by commit:

commit 6f68cd634856f8ca93bafd623ba5357e0f648c68
Author: Pavel Skripkin <paskripkin@gmail.com>
Date:   Sun Oct 24 13:13:56 2021 +0000

    net: batman-adv: fix error handling

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=114e3c16b00000
start commit:   cf52ad5ff16c Merge tag 'driver-core-5.15-rc6' of git://git..
git tree:       upstream
kernel config:  https://syzkaller.appspot.com/x/.config?x=9479508d7bb83ad9
dashboard link: https://syzkaller.appspot.com/bug?extid=0ef06384b5f39a16ebb9
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=17af7344b00000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=15dc02fb300000

If the result looks correct, please mark the issue as fixed by replying with:

#syz fix: net: batman-adv: fix error handling

For information about bisection process see: https://goo.gl/tpsmEJ#bisection
