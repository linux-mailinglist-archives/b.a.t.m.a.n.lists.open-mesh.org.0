Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [78.46.248.236])
	by mail.lfdr.de (Postfix) with ESMTPS id E3D67138535
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 12 Jan 2020 06:51:27 +0100 (CET)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 2E4DF8016F;
	Sun, 12 Jan 2020 06:51:13 +0100 (CET)
Received: from mail-il1-f197.google.com (mail-il1-f197.google.com
 [209.85.166.197])
 by open-mesh.org (Postfix) with ESMTPS id 3942F802DB
 for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 12 Jan 2020 00:38:33 +0100 (CET)
Received: by mail-il1-f197.google.com with SMTP id p8so4736507ilp.22
 for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 11 Jan 2020 15:38:33 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:in-reply-to:message-id:subject
 :from:to:cc;
 bh=HG8PSEk+Nu2G0yzQ1sauBjh8yX4UWlbofl1tNDseMog=;
 b=LJ4zkjAZUcfcLSLxG6s5NIgLb4DAd2XB+iaLEScCzaDu3AuRafBNfiEZSa6sfUV8nI
 GzHIGOgKrpXD89LE2bD+xOAn0hOj8UA+ov4+qlcCqBvzIis63qn7k4iGEC2mkKv8aoCa
 4GfHk4+5to5BeTTT/1XAfc4tHRV6oXJZLzEQw/FR0COwwCpZF3DsgUjVeSXWOIOv9fDk
 4W6ChgQjUNKje5c1FSijRZUFRMidMusip/+CqixcgVY+6tDR2QjorKs48FxygH7Ohz9h
 /K/OVgUojM48Ie05k18kLVnkixHY5ln3z99LwqXoKkDnbEEwQbQJvFmZqzJC443a9t9G
 qv0w==
X-Gm-Message-State: APjAAAUegk58+TaXHS/FXswPp/xT7aUXEIw45HaZ/xjr/4vnzV1oIhwL
 FI53wn8A1ftOonjdPvzGAZagldxcDxQfWNOqaaQczAU41EX8
X-Google-Smtp-Source: APXvYqzY3G/r7L2fdqmCj2j/h1C1sHPcBcM4PyU4coxfrfPzxUmQUqHGDBOKiBTJVPd2Dc1kvuMmxK6iFOuHlz4BJK9Zg+ciJv/g
MIME-Version: 1.0
X-Received: by 2002:a6b:c804:: with SMTP id y4mr7776396iof.210.1578785911931; 
 Sat, 11 Jan 2020 15:38:31 -0800 (PST)
Date: Sat, 11 Jan 2020 15:38:31 -0800
In-Reply-To: <CAM_iQpWN-SKjjrG_7EQ-x+7UMiu6foaNWMJuwQuwN0BGmayB+A@mail.gmail.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000751268059be5bdfc@google.com>
Subject: Re: Re: WARNING: bad unlock balance in __dev_queue_xmit
From: syzbot <syzbot+ad4ea1dd5d26131a58a6@syzkaller.appspotmail.com>
To: Cong Wang <xiyou.wangcong@gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed; delsp=yes
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1578785919;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to; bh=HG8PSEk+Nu2G0yzQ1sauBjh8yX4UWlbofl1tNDseMog=;
 b=sNuZELGm6a3eJNANRVtCbOOCm7Z89fqVyKpPOSDJNwzKDhyRO6O+EGIMRzX0lb4waj/WP6
 AgM9oHuTOr9TEwVu7Pxiv0y2e6ezUAF7OVtvjuzgw2HjhXnYaCJRGhOq2AKrIsNnSAQC8l
 NCmyRtQXj4LFpbZKkPovFVcRco+t9UU=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1578785919; a=rsa-sha256; cv=none;
 b=ecjCORyF1UWKTKpiM/XT69TEk8yFKFBe6t+EmGXWNuIsJRvYeCRwhlpuQl6qLB3FAlk4fL
 7cAsq6v8+5tbZbevLY8qhL373r9zHEjYmZVNFtr022QA70HJxElU1+JMie4AA1VfAoPVtJ
 8vvpSGfMFKWZWks9DOXXAT8PQaI/U5U=
ARC-Authentication-Results: i=1; open-mesh.org; dkim=none;
 spf=pass (open-mesh.org: domain of
 3d1waXgkbAJACIJ4u55yBu992x.08805yECyBw87Dy7D.w86@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
 designates 209.85.166.197 as permitted sender)
 smtp.mailfrom=3d1waXgkbAJACIJ4u55yBu992x.08805yECyBw87Dy7D.w86@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
X-Mailman-Approved-At: Sun, 12 Jan 2020 06:50:52 +0100
X-BeenThere: b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
List-Unsubscribe: <https://lists.open-mesh.org/mm/options/b.a.t.m.a.n>,
 <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=unsubscribe>
List-Archive: <http://lists.open-mesh.org/pipermail/b.a.t.m.a.n/>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Subscribe: <https://lists.open-mesh.org/mm/listinfo/b.a.t.m.a.n>,
 <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=subscribe>
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n@lists.open-mesh.org>
Cc: kstewart@linuxfoundation.org, alex.aring@gmail.com,
 jakub.kicinski@netronome.com, ast@domdv.de, linmiaohe@huawei.com,
 gustavo@embeddedor.com, oss-drivers@netronome.com,
 linux-wireless@vger.kernel.org, a@unstable.cc, linux-hyperv@vger.kernel.org,
 netdev@vger.kernel.org, paulus@samba.org, linux-hams@vger.kernel.org,
 kys@microsoft.com, andy@greyhouse.net, mareklindner@neomailbox.ch,
 f.fainelli@gmail.com, daniel@iogearbox.net, bridge@lists.linux-foundation.org,
 jwi@linux.ibm.com, linux-wpan@vger.kernel.org, kvalo@codeaurora.org,
 kuznet@ms2.inr.ac.ru, pabeni@redhat.com, nikolay@cumulusnetworks.com,
 marcel@holtmann.org, mkubecek@suse.cz, jiri@resnulli.us,
 johan.hedberg@gmail.com, johannes.berg@intel.com, j@w1.fi,
 j.vosburgh@gmail.com, haiyangz@microsoft.com, syzkaller-bugs@googlegroups.com,
 jhs@mojatatu.com, john.hurley@netronome.com, liuhangbin@gmail.com,
 dsa@cumulusnetworks.com, allison@lohutok.net, cleech@redhat.com,
 gregkh@linuxfoundation.org, b.a.t.m.a.n@lists.open-mesh.org, fw@strlen.de,
 linux-kernel@vger.kernel.org, linux-bluetooth@vger.kernel.org,
 mmanning@vyatta.att-mail.com, linux-ppp@vger.kernel.org, info@metux.net,
 davem@davemloft.net, ap420073@gmail.com
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

> #syz dup: WARNING: bad unlock balance in sch_direct_xmit

Your 'dup:' command is accepted, but please keep  
syzkaller-bugs@googlegroups.com mailing list in CC next time. It serves as  
a history of what happened with each bug report. Thank you.

