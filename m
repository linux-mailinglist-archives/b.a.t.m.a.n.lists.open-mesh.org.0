Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 72F6718F091
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 23 Mar 2020 09:04:38 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id D33FA80677;
	Mon, 23 Mar 2020 09:04:36 +0100 (CET)
Received: from mail-io1-f71.google.com (mail-io1-f71.google.com
 [209.85.166.71])
 by diktynna.open-mesh.org (Postfix) with ESMTPS id F14E380130
 for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 23 Mar 2020 08:37:03 +0100 (CET)
Received: by mail-io1-f71.google.com with SMTP id s66so11010351iod.3
 for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 23 Mar 2020 00:37:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:in-reply-to:message-id:subject
 :from:to;
 bh=xI0usRcGed/whdLZrrsYIFzz4drUK13ORfQnfasIJ14=;
 b=MffW6HwJS8Pdle3z6nOGOsYj/zLAy1ait1BAb0QMlpa03suYwWxBSJNlM/uB8O9AfH
 8H639lpTf0t1ghY/j3Fz6Kj8iKO0g2mH/XsIQ8Kdu5k8sovTM0jmW9iZmXrnJTiGL+0j
 4Vz7EsHdFzhPe2yWqeWMb7dod3YNi5xDTBjLd6wMb3MOa+UfXW2cuse/KJP7kCAHBlP6
 9SOt2FmAqCrrjj94OhKo4hvWaRbkGooNjIgf8pxOSQrGtRNDxEtzHEUeyeRjdjyX0AqA
 tMFguCheeWmM6+RXj8+QlQVmtDhVc7NElzpv5rySbwcv/ImqM3Z3URkJ408QdC12yV/o
 RKaA==
X-Gm-Message-State: ANhLgQ0XvcNsbDgeYbVizDGiexzJWhB3HR6S1hmuIzsqp3jqVvDfzEEb
 UEJFxY4ZDU2iI6bYKmsKNARmUoFCHm8p2HnpYrMeYlLucY+T
X-Google-Smtp-Source: ADFU+vufWP1ZmfhWge9JYASUxfhkELaTlcETnEuwcsBoeOODucklUQVC3o7tld/u7Pwx7D1VAa9UfQDBlJdJnT2pfzm7+QwL09Wo
MIME-Version: 1.0
X-Received: by 2002:a6b:f60d:: with SMTP id n13mr17817597ioh.147.1584949022600; 
 Mon, 23 Mar 2020 00:37:02 -0700 (PDT)
Date: Mon, 23 Mar 2020 00:37:02 -0700
In-Reply-To: <000000000000e9e518059fd84189@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000007ab36905a180b328@google.com>
Subject: Re: KASAN: use-after-free Write in hci_sock_bind (2)
From: syzbot <syzbot+04e804c8c2224b6a9497@syzkaller.appspotmail.com>
To: a@unstable.cc, andrew@lunn.ch, b.a.t.m.a.n@lists.open-mesh.org, 
 davem@davemloft.net, f.fainelli@gmail.com, johan.hedberg@gmail.com, 
 kuba@kernel.org, linux-bluetooth@vger.kernel.org, 
 linux-kernel@vger.kernel.org, marcel@holtmann.org, mareklindner@neomailbox.ch, 
 netdev@vger.kernel.org, sw@simonwunderlich.de, 
 syzkaller-bugs@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1584949024;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to; bh=xI0usRcGed/whdLZrrsYIFzz4drUK13ORfQnfasIJ14=;
 b=UsfYBeR3uVIFrcpvMdzcVTVYwjy2Lrz/GyWNlkXGwQ/kBdvujAfcO4V1iQMoGPAL0zrv/2
 SZmvTTwunGZ+kF4Z7xDZ/nEvstV3lm27KTHeEmYGvu5ttKoR5I3/kvzmjHmcJ7lbzruqdr
 3iDUJXjnHvDCRgQLkImreR7TVYHl1j8=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1584949024; a=rsa-sha256; cv=none;
 b=G96Kv0Vu1r+iHZpODvCMxLiBvNgWj2w0fYIbsoTxCRkJCU/0BSwKD1YMfWPY9OF/A/M5H2
 QkyZLO/MupdNx5Q5T4gz97YjTObDi4IBYBaxQCIyE5uTD7D86gb/L3/ndFkrqVSFOqRIZl
 wt7/bBxq4RksBgrub5DteTbXUYLLTBc=
ARC-Authentication-Results: i=1; diktynna.open-mesh.org; dkim=none;
 spf=pass (diktynna.open-mesh.org: domain of
 3Hmd4XgkbAMc5BCxnyyr4n22vq.t11tyr75r4p106r06.p1z@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
 designates 209.85.166.71 as permitted sender)
 smtp.mailfrom=3Hmd4XgkbAMc5BCxnyyr4n22vq.t11tyr75r4p106r06.p1z@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
X-Mailman-Approved-At: Mon, 23 Mar 2020 09:04:34 +0100
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
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

syzbot has bisected this bug to:

commit 7d13eca09ed5e477f6ecfd97a35058762228b5e4
Author: Florian Fainelli <f.fainelli@gmail.com>
Date:   Sat Aug 27 22:34:20 2016 +0000

    Documentation: networking: dsa: Remove platform device TODO

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=1746f3f9e00000
start commit:   770fbb32 Add linux-next specific files for 20200228
git tree:       linux-next
final crash:    https://syzkaller.appspot.com/x/report.txt?x=14c6f3f9e00000
console output: https://syzkaller.appspot.com/x/log.txt?x=10c6f3f9e00000
kernel config:  https://syzkaller.appspot.com/x/.config?x=576314276bce4ad5
dashboard link: https://syzkaller.appspot.com/bug?extid=04e804c8c2224b6a9497
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=11fc5e75e00000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=10707013e00000

Reported-by: syzbot+04e804c8c2224b6a9497@syzkaller.appspotmail.com
Fixes: 7d13eca09ed5 ("Documentation: networking: dsa: Remove platform device TODO")

For information about bisection process see: https://goo.gl/tpsmEJ#bisection
