Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 02F21600277
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 16 Oct 2022 19:34:30 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id D63DF84AF2;
	Sun, 16 Oct 2022 19:34:28 +0200 (CEST)
Received: from mail-io1-f71.google.com (mail-io1-f71.google.com [209.85.166.71])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 1FF1783EA2
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 16 Oct 2022 19:34:25 +0200 (CEST)
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1665941665; a=rsa-sha256;
	cv=none;
	b=0dLhnj4xxP4MeKWKJFWlxvwwogFuEv2eaEyQ4Xsgsw5eIrt+prboDopUtZ8mMyDD4ozJqC
	CkmfWUeYdvbWjeNRRk6Tvw4dDmkWyIqBXQTeUv+ruIZTr/GVVETHXXKBQxwQMU8IX1a32d
	ewkt83//7eF7WVSEfgaTIKad6ZErWZo=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	dmarc=fail reason="SPF not aligned (relaxed), No valid DKIM" header.from=appspotmail.com (policy=none);
	spf=pass (diktynna.open-mesh.org: domain of 3n0BMYwkbAHIiopaQbbUhQffYT.WeeWbUkiUhSedjUdj.Sec@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com designates 209.85.166.71 as permitted sender) smtp.mailfrom=3n0BMYwkbAHIiopaQbbUhQffYT.WeeWbUkiUhSedjUdj.Sec@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1665941665;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to; bh=9HnUcMrpaOy4ZoL5ypHWvjmoyr0LqAIz7W4hYAK2fiI=;
	b=O9BoNQqWfBdmRQgoCm8vp2n0ezxemWceqCTUTHVN8y5kll4r/NBUi6BLFX5yf1E0INhJdF
	rywZVvi3PWhs2zjTJ+HA8TFIIsTkV/8OPDGZLIYhHupSOEyzBNpwLYM7TyY6Fkd6onzBqz
	S5+M/iP1mRk9ibfsNDWzbX9iFh/T8Eo=
Received: by mail-io1-f71.google.com with SMTP id q12-20020a5d834c000000b006bc2cb1994aso5732910ior.15
        for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 16 Oct 2022 10:34:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:from:subject:message-id:in-reply-to:date:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9HnUcMrpaOy4ZoL5ypHWvjmoyr0LqAIz7W4hYAK2fiI=;
        b=7igapWBV3QWeanpE/jKITzUN7bWz6t2qEsRiJ8uOkCiXQWs4exNSw+58wsysFpmUSI
         YwDexmRgfgXKw7E5rFLk1rG7JgHJukOW1uHc3+UZ5OTfxjqViKoEzjDsu1Og3NDn3ePF
         76emlkik8Po1zR242WutbwVVRbhJRFBfHFF/fif9/cK6vmr6YsV28/jfeRywrzXgcXlZ
         XFwURmXUwrtNgDLUXBb4XHfRGZboQj+JY/qbPOvTcZuJ2K+NB+EgMs1HODxFG5Mnimu+
         4KDwaAEdyUjgntHfIQdpSmGqcOKPm43Q/etG7D4oaUFngVTK6SW6X1/jBn0iD8qcLkk5
         r3pw==
X-Gm-Message-State: ACrzQf1/2yzeznHjSgg8PAT0foKBn9U/+NeEqpLlqW3kNi0SV1EWNgmG
	kk+qvzLM1FyLdXspjwiC53tU734ZgQa09IrnukgIm9AXRjFj
X-Google-Smtp-Source: AMsMyM7qspteAsrK5Mgq3OaCHRR/wYcZjGnfTnfsk7GdfkdP3jG+nm1SS/vzaXgUf0BQGOpO5QgR8XlS8g1zTVGBw7BHfTVjcerF
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:184c:b0:2fc:4f65:9dee with SMTP id
 b12-20020a056e02184c00b002fc4f659deemr3194230ilv.154.1665941663602; Sun, 16
 Oct 2022 10:34:23 -0700 (PDT)
Date: Sun, 16 Oct 2022 10:34:23 -0700
In-Reply-To: <0000000000009d327505b0999237@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <00000000000013612005eb2a4525@google.com>
Subject: Re: [syzbot] INFO: rcu detected stall in batadv_nc_worker (3)
From: syzbot <syzbot+69904c3b4a09e8fa2e1b@syzkaller.appspotmail.com>
To: a@unstable.cc, alsa-devel@alsa-project.org,
	b.a.t.m.a.n@lists.open-mesh.org, broonie@kernel.org, davem@davemloft.net,
	dvyukov@google.com, edumazet@google.com, hdanton@sina.com, jhs@mojatatu.com,
	jiri@resnulli.us, kuba@kernel.org, lgirdwood@gmail.com,
	linux-kernel@vger.kernel.org, mareklindner@neomailbox.ch,
	netdev@vger.kernel.org, pabeni@redhat.com, perex@perex.cz,
	povik+lin@cutebit.org, steve@sk2.org, sven@narfation.org,
	sw@simonwunderlich.de, syzkaller-bugs@googlegroups.com, tglx@linutronix.de,
	tiwai@suse.com, tonymarislogistics@yandex.com, xiyou.wangcong@gmail.com
Content-Type: text/plain; charset="UTF-8"
Message-ID-Hash: BL5NQOF3JM4YMXO2H5Y7GDL6TM7PYMBT
X-Message-ID-Hash: BL5NQOF3JM4YMXO2H5Y7GDL6TM7PYMBT
X-MailFrom: 3n0BMYwkbAHIiopaQbbUhQffYT.WeeWbUkiUhSedjUdj.Sec@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/BL5NQOF3JM4YMXO2H5Y7GDL6TM7PYMBT/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

syzbot has bisected this issue to:

commit f8a4018c826fde6137425bbdbe524d5973feb173
Author: Mark Brown <broonie@kernel.org>
Date:   Thu Jun 2 13:53:04 2022 +0000

    ASoC: tas2770: Use modern ASoC DAI format terminology

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=164d4978880000
start commit:   55be6084c8e0 Merge tag 'timers-core-2022-10-05' of git://g..
git tree:       upstream
final oops:     https://syzkaller.appspot.com/x/report.txt?x=154d4978880000
console output: https://syzkaller.appspot.com/x/log.txt?x=114d4978880000
kernel config:  https://syzkaller.appspot.com/x/.config?x=df75278aabf0681a
dashboard link: https://syzkaller.appspot.com/bug?extid=69904c3b4a09e8fa2e1b
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=16e2e478880000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=149ca17c880000

Reported-by: syzbot+69904c3b4a09e8fa2e1b@syzkaller.appspotmail.com
Fixes: f8a4018c826f ("ASoC: tas2770: Use modern ASoC DAI format terminology")

For information about bisection process see: https://goo.gl/tpsmEJ#bisection
