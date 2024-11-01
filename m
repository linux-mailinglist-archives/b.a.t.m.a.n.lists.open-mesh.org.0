Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id D153C9B8C65
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri,  1 Nov 2024 08:53:06 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 8762D83CF2
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri,  1 Nov 2024 08:53:06 +0100 (CET)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1730447586;
 b=L+vVfgn/h0+ETXPMttZ2Hbqv1GpjMIXtfAWmyqfOLA6Dd0k2veIqjAZc0evZTrGw+tXSU
 /eNfhZn20NDl4w2afEMZravoVxJCufNabkXf1+JJF0+YcLmELn+rXYeHpXJiTQP8Wa7gOe3
 VyfVFfdzqjVANRZpL9/TvNph2Wa+ZLI=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1730447586; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=TTx8Pkc/ULkMB25YnEZ2sz5xzsb50SUShkjtn2Uzgtk=;
 b=VLwaLIcjVi54iRvU/OHZIW4yUpKN3prfyeyTGdRCpDO4TPgVluwcbtBN1kjZ1PukMigou
 eC6/dpGeLBd6pIRl563rmToOczmhdkZIF37UcfNNGbhhlnsdBsBRhTJ40TMtttVxuh9gWSE
 E3RNr4KD/Fk2JAskZnQDQMJoINLLlbM=
ARC-Authentication-Results: i=2; open-mesh.org; dkim=fail;
  arc=pass;
  dmarc=fail (Used Org Domain Record) header.from=syzkaller.appspotmail.com
 policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=fail; arc=pass;
 dmarc=fail (Used Org Domain Record) header.from=syzkaller.appspotmail.com
 policy.dmarc=none
Received: from mail-il1-f200.google.com (mail-il1-f200.google.com
 [209.85.166.200])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 0E86A8164E
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri,  1 Nov 2024 02:30:04 +0100 (CET)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1730424605;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to; bh=TTx8Pkc/ULkMB25YnEZ2sz5xzsb50SUShkjtn2Uzgtk=;
	b=nY5JzXG5cpqz6Ningu0Sd0WdkircGaT6cligyto+ElDEuPL7EUYxa6pq1A7Oi7koGcI/vs
	U88Qlhv58G7ZP9Kyk77p1c/Jh3wlnaJPo93qzTDBo8iPyUBWBwEm1RWguALj3CLNN6XvAj
	XLsF7YtLPUvjEWEFiBv20beW16+ZwAs=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1730424605; a=rsa-sha256;
	cv=none;
	b=SAG2YnqNm9lWHme5gTRf8nVPp/Z1+EFTOBvLLjEm8cGTJAX2uHeG9I+ubCMSAvO54yFqmA
	AQSm0p5QWvk8bW+SHllyqCZUsR2spsRicrboZi0QmYzh98XcR52T6J5zXrxQMA7RZBhdgN
	Rs+5nzHHbjpDFtfRZ9z5VbCvKS/FvBs=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	dmarc=fail reason="SPF not aligned (relaxed),
 No valid DKIM" header.from=appspotmail.com (policy=none);
	spf=pass (diktynna.open-mesh.org: domain of
 3Gy8kZwkbAEo4ABwmxxq3m11up.s00sxq64q3o0z5qz5.o0y@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
 designates 209.85.166.200 as permitted sender)
 smtp.mailfrom=3Gy8kZwkbAEo4ABwmxxq3m11up.s00sxq64q3o0z5qz5.o0y@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
Received: by mail-il1-f200.google.com with SMTP id
 e9e14a558f8ab-3a3c3ecaaabso18380405ab.0
        for <b.a.t.m.a.n@lists.open-mesh.org>;
 Thu, 31 Oct 2024 18:30:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730424603; x=1731029403;
        h=to:from:subject:message-id:in-reply-to:date:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=TTx8Pkc/ULkMB25YnEZ2sz5xzsb50SUShkjtn2Uzgtk=;
        b=nW0pSJFQ9K7JuGcFBWcCCesjQpQ3xbzVUqzKIqQIpR5FmK92a4qUnkOeFB4ZtlTrp2
         vJHFMeAd/CNEmEW87bZgAvhiX9r8OjjA5Rivu5lKTBaMg09Sj0VaEa0MZ55r3Fld3UiX
         aRV/z1wv7sui0scF5BHCC1CCMFy6oYUgAKcvhw2/tvZtH2yM+J8EsiJ66rwZBEGwqJfW
         gQiomCFwRQDymjxVwyme1kVQfH5eTye7xxBzVv/RaSpSYEJlf0MYLbPP72ZZKvQD/kVe
         G6RGhu9bQ4s5h4BoT9hmEntvXfJpEqfbzU+moA0fOnA6F2MqPgIldX2p4dBX5LmO968k
         dd7w==
X-Forwarded-Encrypted: i=1;
 AJvYcCVO4jdsNTB4KTV64yUmnrn/M7wj1D7Gdmq+BBrIi1E0qIjoayPnN5YLKPAYIiQ5kpmh6vDoKKl8fwgX2A==@lists.open-mesh.org
X-Gm-Message-State: AOJu0YylaaPKublnyQjPEeCTS7cV71xbmdwOeeRzIX7wvqwbVAQg9aGD
	g3tQD5DPFSWGxE8yzM0IYYrlP1KHW3XodpPwVODbdr6JBpTjwADgUHbqjnpOHXvNN4dkno/M1kJ
	Be8uHX55qzXdiFSzLY1rQV6OhUiUvvGgwmIEzv5YuluLNrMMweEYK5GE=
X-Google-Smtp-Source: 
 AGHT+IF/iGjFSN3CX3FXliJcR+7/sefN9TRnsqo+hdrH+km5zgp622Jp80Ys88ISNfbFDe9cCPD2Fla0EDHTqw/Gd6zV0nQqPkjK
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:1609:b0:3a4:e62b:4dfd with SMTP id
 e9e14a558f8ab-3a5e2458517mr111236185ab.7.1730424603451; Thu, 31 Oct 2024
 18:30:03 -0700 (PDT)
Date: Thu, 31 Oct 2024 18:30:03 -0700
In-Reply-To: <000000000000ce6fdb061cc7e5b2@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <67242f1b.050a0220.529b6.005e.GAE@google.com>
Subject: Re: [syzbot] [netfilter] BUG: soft lockup in
 batadv_iv_send_outstanding_bat_ogm_packet
From: syzbot <syzbot+572f6e36bc6ee6f16762@syzkaller.appspotmail.com>
To: a@unstable.cc, b.a.t.m.a.n@lists.open-mesh.org, bsegall@google.com,
	davem@davemloft.net, dietmar.eggemann@arm.com, edumazet@google.com,
	juri.lelli@redhat.com, kadlec@netfilter.org, kuba@kernel.org,
	linux-kernel@vger.kernel.org, mareklindner@neomailbox.ch, mgorman@suse.de,
	mingo@redhat.com, netdev@vger.kernel.org, netfilter-devel@vger.kernel.org,
	pabeni@redhat.com, pablo@netfilter.org, peterz@infradead.org,
	rostedt@goodmis.org, sven@narfation.org, sw@simonwunderlich.de,
	syzkaller-bugs@googlegroups.com, vincent.guittot@linaro.org,
	vschneid@redhat.com
Content-Type: text/plain; charset="UTF-8"
X-MailFrom: 
 3Gy8kZwkbAEo4ABwmxxq3m11up.s00sxq64q3o0z5qz5.o0y@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency;
 loop; banned-address; member-moderation;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-0;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-1;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-2
Message-ID-Hash: XS255X5VAMNFYIR3FYRPVZGJVYPA6PD2
X-Message-ID-Hash: XS255X5VAMNFYIR3FYRPVZGJVYPA6PD2
X-Mailman-Approved-At: Fri, 01 Nov 2024 08:52:56 +0100
X-Mailman-Version: 3.3.8
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/XS255X5VAMNFYIR3FYRPVZGJVYPA6PD2/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

syzbot suspects this issue was fixed by commit:

commit c662e2b1e8cfc3b6329704dab06051f8c3ec2993
Author: Peter Zijlstra <peterz@infradead.org>
Date:   Thu Sep 5 15:02:24 2024 +0000

    sched: Fix sched_delayed vs sched_core

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=14886e87980000
start commit:   a430d95c5efa Merge tag 'lsm-pr-20240911' of git://git.kern..
git tree:       upstream
kernel config:  https://syzkaller.appspot.com/x/.config?x=44d46e514184cd24
dashboard link: https://syzkaller.appspot.com/bug?extid=572f6e36bc6ee6f16762
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=1481cca9980000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=14929607980000

If the result looks correct, please mark the issue as fixed by replying with:

#syz fix: sched: Fix sched_delayed vs sched_core

For information about bisection process see: https://goo.gl/tpsmEJ#bisection
