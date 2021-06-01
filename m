Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 96839396C92
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue,  1 Jun 2021 07:00:17 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 42F47809F3;
	Tue,  1 Jun 2021 07:00:16 +0200 (CEST)
Received: from mail-il1-f198.google.com (mail-il1-f198.google.com [209.85.166.198])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 9976480631
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue,  1 Jun 2021 07:00:11 +0200 (CEST)
Received: by mail-il1-f198.google.com with SMTP id s3-20020a92c5c30000b02901bc737e231eso9312190ilt.13
        for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 31 May 2021 22:00:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:date:in-reply-to:message-id:subject
         :from:to;
        bh=HZoCrhifvFqebweO5oM8sTQXrnYAq0UL7ZIrots2vSc=;
        b=nTUQo//XfRI578hBvt3J0g4jDfqlDV1Dlxbqnh9f1Aj6Fw1L9eViBQKs/9XU1YddrF
         8ohnIu/QQXG4IG+JZG1zx5q6rE1AwZpedSqVMk8NBBtbP/9QjuMuL3emkyniKiXASkvG
         YK5N/pYrssWDoqQhA7qcFaCFs9hjzVRQNeXxpVizeBZVhn7wn5Kjl/SW+QnMagnU7g3E
         Y+DSV3B4aen9+ejbsOJjbjmArjaQhbxn8KdTW2gsFz128PD7xcFAaHdkgEZ2k2Wpf686
         c4NEqhBWo3y/BJiInVY4MkILrzAVj6FMLjPJLAtL/QMz63KS6JR4yU6iFF4slSDCNn7j
         2q+w==
X-Gm-Message-State: AOAM531MClDHvpNTXgUAX8hmrdMNIW0C/qctIX9D3lzUFt0aEE6/DJe9
	Wmkw0yS6oIYGnAlSKbt/wAVU52mgkW8YCcuLBzKKOY9cWSyg
X-Google-Smtp-Source: ABdhPJyDPqVeQwFPYxvwDFNm5lVzsEmrtB9fOyxrUNzo2mPUK0UzLNL7BZ0jpoGpdR7H0zY1Wl5YoHHlpd3CmiPaYpmOLCQaOLqA
MIME-Version: 1.0
X-Received: by 2002:a92:d201:: with SMTP id y1mr19795884ily.103.1622523610124;
 Mon, 31 May 2021 22:00:10 -0700 (PDT)
Date: Mon, 31 May 2021 22:00:10 -0700
In-Reply-To: <000000000000f32b3c05958ed0eb@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000006bd5ff05c3ad37da@google.com>
Subject: Re: [syzbot] INFO: task hung in register_netdevice_notifier (2)
From: syzbot <syzbot+355f8edb2ff45d5f95fa@syzkaller.appspotmail.com>
To: a@unstable.cc, ast@kernel.org, b.a.t.m.a.n@lists.open-mesh.org,
	bpf@vger.kernel.org, brouer@redhat.com, daniel@iogearbox.net,
	davem@davemloft.net, hawk@kernel.org, jakub.kicinski@netronome.com,
	john.fastabend@gmail.com, kafai@fb.com, kuba@kernel.org,
	linux-can@vger.kernel.org, linux-kernel@vger.kernel.org,
	mareklindner@neomailbox.ch, mkl@pengutronix.de, netdev@vger.kernel.org,
	socketcan@hartkopp.net, songliubraving@fb.com, sw@simonwunderlich.de,
	syzkaller-bugs@googlegroups.com, xdp-newbies@vger.kernel.org, yhs@fb.com
Content-Type: text/plain; charset="UTF-8"
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1622523611; a=rsa-sha256;
	cv=none;
	b=l8OWsc4p09nYO0IMkPTanPIarFlzwmYfnE9NxdJXT/r1lo03kUpa5P/fpHv7/qVQVDP7aK
	va/6Zvil6RJDFaV4wSGUgfSlE6w4XPXa4yw5OfaWCq8hxa5XMy1JQBpstsu+OZ5xKD4+86
	1h2DlmfXo+kkzEzmkC7JugCNh3dk5Ms=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of 32r61YAkbADspvwhXiiboXmmfa.dlldibrpboZlkqbkq.Zlj@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com designates 209.85.166.198 as permitted sender) smtp.mailfrom=32r61YAkbADspvwhXiiboXmmfa.dlldibrpboZlkqbkq.Zlj@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1622523611;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to; bh=HZoCrhifvFqebweO5oM8sTQXrnYAq0UL7ZIrots2vSc=;
	b=Tg6NBA8FQYhuX3bjnoPAtd2Ur+XkBVMnvTXSJwOoeSP3QQ5CrRrlUJlop6Ojqizi4e+5bh
	AKM7IhRezrknPtLYuijZXxmK7XQRfuVc+QBkam+092jSTcUG5Otd/4Zk1OI16/JoYKHwZW
	dIGG5/PSl2BmfPts64wWJJVFRusuaR0=
Message-ID-Hash: Y3LYD6LYS2WX3MRQEK4T52FCH5BKKHCL
X-Message-ID-Hash: Y3LYD6LYS2WX3MRQEK4T52FCH5BKKHCL
X-MailFrom: 32r61YAkbADspvwhXiiboXmmfa.dlldibrpboZlkqbkq.Zlj@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/Y3LYD6LYS2WX3MRQEK4T52FCH5BKKHCL/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

syzbot has bisected this issue to:

commit 6bf071bf09d4b2ff3ee8783531e2ce814f0870cb
Author: Jesper Dangaard Brouer <brouer@redhat.com>
Date:   Tue Jun 18 13:05:27 2019 +0000

    xdp: page_pool related fix to cpumap

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=1397c4a7d00000
start commit:   7ac3a1c1 Merge tag 'mtd/fixes-for-5.13-rc4' of git://git.k..
git tree:       upstream
final oops:     https://syzkaller.appspot.com/x/report.txt?x=1057c4a7d00000
console output: https://syzkaller.appspot.com/x/log.txt?x=1797c4a7d00000
kernel config:  https://syzkaller.appspot.com/x/.config?x=266cda122a0b56c
dashboard link: https://syzkaller.appspot.com/bug?extid=355f8edb2ff45d5f95fa
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=16cc630fd00000

Reported-by: syzbot+355f8edb2ff45d5f95fa@syzkaller.appspotmail.com
Fixes: 6bf071bf09d4 ("xdp: page_pool related fix to cpumap")

For information about bisection process see: https://goo.gl/tpsmEJ#bisection
