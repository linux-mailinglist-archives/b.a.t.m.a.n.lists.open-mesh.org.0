Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [IPv6:2a01:4f8:141:3341:78:46:248:236])
	by mail.lfdr.de (Postfix) with ESMTPS id 17FBFE807E
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 29 Oct 2019 07:47:28 +0100 (CET)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 1539F805C6;
	Tue, 29 Oct 2019 07:47:23 +0100 (CET)
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com
 [209.85.160.200])
 by open-mesh.org (Postfix) with ESMTPS id 754A580018
 for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 29 Oct 2019 05:51:44 +0100 (CET)
Received: by mail-qt1-f200.google.com with SMTP id f15so13209587qth.6
 for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 28 Oct 2019 21:51:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:in-reply-to:message-id:subject
 :from:to;
 bh=YLV8f9ZsfAXyIIZYYq3+IarNtK/1IHU/hb3TF47qpcU=;
 b=KWPCCjmQJqY1sI9EMlwy6C3KfN/qlwFRyyw4JmIJ77rT3ViZycwWwe9Z2Ibjpbkf6Y
 7kL0StMnY/F3CODY8j65lusKcpI9zpPBKQkBdESeflCuNjwMeihhQ07q3gHFBs4HCuQS
 +qy4DJ66U4sPtvHON6aZ8lc3a/MEMhBtAHkOVVLrdm6SXX1hv+pDDpMV9FIayP0lhNEB
 UNqrdSjVXgCNf+9bMS4afxMo+i1XN81Pg0fH8T0yc2Okf8LRoN8XTngW8F7x/mEV5hw2
 7gkil7Qp5UaXaDcWqapxuoyTNThPkmg0hTPuS9cUwdRFG0/rdLg154aoQgNL6C78sUfc
 maHQ==
X-Gm-Message-State: APjAAAVaS5myVgY7uxb7gTS4wIaToZGVNn2qgPyhukoacLwsXf7KEQi8
 MEp04WiR6wuou5tvaQXt2Xkq3sCGY5V4z0vc9P7P1E24R3SN
X-Google-Smtp-Source: APXvYqy8A5HcqCyEPL5dtBElWBUVccfpfDJnoTHkuyLyMyzE3tC2AL+v78u811xV2KkRr1yWR23ZU1ZAqiGqqPS8jMwtkIRFFbuv
MIME-Version: 1.0
X-Received: by 2002:a5e:d90c:: with SMTP id n12mr1656385iop.140.1572324361470; 
 Mon, 28 Oct 2019 21:46:01 -0700 (PDT)
Date: Mon, 28 Oct 2019 21:46:01 -0700
In-Reply-To: <000000000000fc25a1059602460a@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000000987900596054b0f@google.com>
Subject: Re: INFO: trying to register non-static key in
 bond_3ad_update_lacp_rate
From: syzbot <syzbot+0d083911ab18b710da71@syzkaller.appspotmail.com>
To: a@unstable.cc, alex.aring@gmail.com, allison@lohutok.net, andrew@lunn.ch, 
 andy@greyhouse.net, ap420073@gmail.com, aroulin@cumulusnetworks.com, 
 ast@domdv.de, b.a.t.m.a.n@lists.open-mesh.org, 
 bridge@lists.linux-foundation.org, cleech@redhat.com, daniel@iogearbox.net, 
 davem@davemloft.net, dcaratti@redhat.com, dsa@cumulusnetworks.com, 
 edumazet@google.com, f.fainelli@gmail.com, fw@strlen.de, 
 gregkh@linuxfoundation.org, gustavo@embeddedor.com, gvaradar@cisco.com, 
 haiyangz@microsoft.com, idosch@mellanox.com, info@metux.net, 
 ivan.khoronzhuk@linaro.org, j.vosburgh@gmail.com, j@w1.fi, 
 jakub.kicinski@netronome.com, jhs@mojatatu.com, jiri@mellanox.com, 
 jiri@resnulli.us, johan.hedberg@gmail.com, johannes.berg@intel.com, 
 john.hurley@netronome.com, jwi@linux.ibm.com, kstewart@linuxfoundation.org, 
 kvalo@codeaurora.org, kys@microsoft.com, lariel@mellanox.com, 
 linmiaohe@huawei.com, linux-bluetooth@vger.kernel.org, 
 linux-hams@vger.kernel.org, linux-hyperv@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-ppp@vger.kernel.org, 
 linux-wireless@vger.kernel.org, linux-wpan@vger.kernel.org, 
 liuhangbin@gmail.com, marcel@holtmann.org, mareklindner@neomailbox.ch
Content-Type: text/plain; charset="UTF-8"; format=flowed; delsp=yes
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1572324704;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to; bh=YLV8f9ZsfAXyIIZYYq3+IarNtK/1IHU/hb3TF47qpcU=;
 b=pgKXdBADKWLtcePKXoV4l0Oc16DNpI2u+tfwmxxDhGI+Puy5G7BUd8aqEzXPjwvMktRz7C
 qK5cQ759BofWyB0hb6k5Pg594dPiHrO1aqSX9C2A8vuWtPYrHolxE7L6EkGQeLauGDaGN3
 hrBfPOheZtd+MporxSVFIynRPsJ7Bf8=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1572324704; a=rsa-sha256; cv=none;
 b=YfDeAfIWSwuNvFG/dgzeKk0LKrWRya4C+TJohlKuLdd2fcP7NoKmkXaxgI/DPnyTQShV+A
 9Gb+IbbfYod/1ubHj9p8UGvryBIHEsoFVJdpOLHgUocZ0VcoTmnd+D8NjIe6E/3JqWUbeH
 BRcY2m093LVUEQ8Cm2su0dNroT4EWeY=
ARC-Authentication-Results: i=1; open-mesh.org; dkim=none;
 spf=pass (open-mesh.org: domain of
 3CcS3XQkbAGQUabMCNNGTCRRKF.IQQINGWUGTEQPVGPV.EQO@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
 designates 209.85.160.200 as permitted sender)
 smtp.mailfrom=3CcS3XQkbAGQUabMCNNGTCRRKF.IQQINGWUGTEQPVGPV.EQO@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
X-Mailman-Approved-At: Tue, 29 Oct 2019 07:47:20 +0100
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

commit ab92d68fc22f9afab480153bd82a20f6e2533769
Author: Taehee Yoo <ap420073@gmail.com>
Date:   Mon Oct 21 18:47:51 2019 +0000

     net: core: add generic lockdep keys

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=1467f674e00000
start commit:   60c1769a Add linux-next specific files for 20191028
git tree:       linux-next
final crash:    https://syzkaller.appspot.com/x/report.txt?x=1667f674e00000
console output: https://syzkaller.appspot.com/x/log.txt?x=1267f674e00000
kernel config:  https://syzkaller.appspot.com/x/.config?x=cb86688f30db053d
dashboard link: https://syzkaller.appspot.com/bug?extid=0d083911ab18b710da71
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=15381ee0e00000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=11571570e00000

Reported-by: syzbot+0d083911ab18b710da71@syzkaller.appspotmail.com
Fixes: ab92d68fc22f ("net: core: add generic lockdep keys")

For information about bisection process see: https://goo.gl/tpsmEJ#bisection
