Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id D4F9A1DE5EC
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 22 May 2020 13:52:27 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 1B99380BBC;
	Fri, 22 May 2020 13:52:24 +0200 (CEST)
Received: from mail-il1-f197.google.com (mail-il1-f197.google.com [209.85.166.197])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 77C3880031
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 18 May 2020 14:28:06 +0200 (CEST)
Received: by mail-il1-f197.google.com with SMTP id u11so9664869ilg.5
        for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 18 May 2020 05:28:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:date:in-reply-to:message-id:subject
         :from:to;
        bh=/UaoSKuEg7BgmQIEUODx1VNqxB3FUarTMqVlwdmdwdQ=;
        b=hMMkAZS6iLTbJllw6LWZs/HWQ8DhtGEBifj01dsZo2P4HsZVnd5x1dl9v0ADkexo0m
         C4jVZg8iyzGBcrdSybUawZqYb5hAcwbOuaMDkws5bGtUPOr5Wb62xM2dxFAcbr44S+xj
         ZJvSgBx9lZN475rY9dzdwEB4ZE6Z5uOkEmVZFf3sD9aUVGrPn3XcXOFepu4oXYeDPSUd
         bRfTNBgDp8PY/15vwxQvQvMyxl6KRCc2L++tsknfr3qKz7/flbA0OmoD0BgC3eK6VSDl
         rIXT8AnEZGw+2ri2b0DNxgeS9EQwnT+AZ407++NufQ2c05wE++htb+M+L3ZhHjLbpTdX
         EpTw==
X-Gm-Message-State: AOAM531RwSY2iTSxnh8uvOuiqGaFkh6FzYdWzugja+c/C64byxMeQ3jl
	ZmFtnXdZYSnF11FPpM/SE/s2ujV1OWQdFr/mYy0CWaFF52fX
X-Google-Smtp-Source: ABdhPJxkBXNmIdsvsy/8YA3Op0IoHRuKNDhs6dRsom9/LIy6f2/gjKuMzC0g8/WxId+iZPkY72GepOClyDlw7dzo+ODBcds/NPKb
MIME-Version: 1.0
X-Received: by 2002:a05:6638:bc4:: with SMTP id g4mr13605771jad.55.1589804885154;
 Mon, 18 May 2020 05:28:05 -0700 (PDT)
Date: Mon, 18 May 2020 05:28:05 -0700
In-Reply-To: <000000000000ada39605a5e71711@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <00000000000071203205a5eb4b43@google.com>
Subject: Re: BUG: Bad rss-counter state (4)
From: syzbot <syzbot+347e2331d03d06ab0224@syzkaller.appspotmail.com>
To: a@unstable.cc, akpm@linux-foundation.org, ast@kernel.org,
	b.a.t.m.a.n@lists.open-mesh.org, davem@davemloft.net, dvyukov@google.com,
	jbacik@fb.com, linux-kernel@vger.kernel.org, linux-mm@kvack.org,
	mareklindner@neomailbox.ch, mingo@kernel.org, netdev@vger.kernel.org,
	peterz@infradead.org, songliubraving@fb.com, sw@simonwunderlich.de,
	syzkaller-bugs@googlegroups.com, yhs@fb.com
Content-Type: text/plain; charset="UTF-8"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1589804886;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to; bh=/UaoSKuEg7BgmQIEUODx1VNqxB3FUarTMqVlwdmdwdQ=;
	b=s/lhH3e0W18SNKLNOvDmSuhCVUTeb1vm7Mpe0+Rm3FHJdHqPnAMZo9sR3nsq27E2tvssPI
	zUfgZ88rIWkkZxmhk7+9Epr+t8GSfThFx2IR5gWkYWnayi4Hz8U6t4JFasg42WGv6zrVjg
	oEFH0YTM1kl2j1dvntUAODXkW2gsol4=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1589804886; a=rsa-sha256;
	cv=none;
	b=GYqPrAUAwhXRrcGxbg3+QqKQASQGG/b9RICgxfP7VGhvX9Y8AQUF55M38q0cxhbIeNBp07
	4iqF+uXHNczNT5RKOBkQJDI8evp6Z8BuboXSE+jM/Mqkb3IzYCIyS1oTHkykxuktiSWWIa
	g+TfMkN6fOklYeLRhPOiMgQQLCAB564=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of 3VX_CXgkbAFoKQRC2DD6J2HHA5.8GG8D6MK6J4GFL6FL.4GE@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com designates 209.85.166.197 as permitted sender) smtp.mailfrom=3VX_CXgkbAFoKQRC2DD6J2HHA5.8GG8D6MK6J4GFL6FL.4GE@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
Message-ID-Hash: HRCABE4RG7SWJ62CITY2R5VEVHDSIHX6
X-Message-ID-Hash: HRCABE4RG7SWJ62CITY2R5VEVHDSIHX6
X-MailFrom: 3VX_CXgkbAFoKQRC2DD6J2HHA5.8GG8D6MK6J4GFL6FL.4GE@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/HRCABE4RG7SWJ62CITY2R5VEVHDSIHX6/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

syzbot has bisected this bug to:

commit 0d8dd67be013727ae57645ecd3ea2c36365d7da8
Author: Song Liu <songliubraving@fb.com>
Date:   Wed Dec 6 22:45:14 2017 +0000

    perf/headers: Sync new perf_event.h with the tools/include/uapi version

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=13240a02100000
start commit:   ac935d22 Add linux-next specific files for 20200415
git tree:       linux-next
final crash:    https://syzkaller.appspot.com/x/report.txt?x=10a40a02100000
console output: https://syzkaller.appspot.com/x/log.txt?x=17240a02100000
kernel config:  https://syzkaller.appspot.com/x/.config?x=bc498783097e9019
dashboard link: https://syzkaller.appspot.com/bug?extid=347e2331d03d06ab0224
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=12d18e6e100000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=104170d6100000

Reported-by: syzbot+347e2331d03d06ab0224@syzkaller.appspotmail.com
Fixes: 0d8dd67be013 ("perf/headers: Sync new perf_event.h with the tools/include/uapi version")

For information about bisection process see: https://goo.gl/tpsmEJ#bisection
