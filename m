Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [IPv6:2a01:4f8:141:3341:78:46:248:236])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FA53E84FC
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 29 Oct 2019 11:00:29 +0100 (CET)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id C20BA805E4;
	Tue, 29 Oct 2019 11:00:22 +0100 (CET)
Received: from mail-il1-f197.google.com (mail-il1-f197.google.com
 [209.85.166.197])
 by open-mesh.org (Postfix) with ESMTPS id D914E800A7
 for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 29 Oct 2019 10:58:43 +0100 (CET)
Received: by mail-il1-f197.google.com with SMTP id p18so4193502ilm.18
 for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 29 Oct 2019 02:58:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:in-reply-to:message-id:subject
 :from:to;
 bh=KhTni5i4fWNYOrXXdKRZL7n4/+Q2oXySWZR+SGDk+1M=;
 b=oGJMgEYtATWq20IY8GsNG7rIEkm3BgEzdgvoYBv5CWyoWNQVeyfEwrXM+aoPQfxS9i
 lIYKxTqCFs1OEXBmIkNwRslVQkdYgVSx6Qvezruh/DXKKY5D5z85ZCY4zqGa+NN9Gi0c
 VT/MogQgges6N7CLTBYRuxg1/keD6oGtOs/LBQUNxosgw4C/qheIUq8cn98jq1Az4Tlc
 6U/BYZzd0IWSQJYRFXJDc/3k5tYpnJXt6KqcpqKqiw9BAo4ung2Q7i30ihGginhc2cBj
 LkGD9CN4D0c+cRn0t+3qtDCeOIw/g8hPXy7Wo4kiNDGiYHE5XG+tVnN/jPHnd/OOWdzU
 IjPg==
X-Gm-Message-State: APjAAAV3r7YxWkG66I0GRDf4k03pwp9QOtpoZ20bmZ3NLTp3yN7ITXJP
 JIQSv9n3MSz/dfzeHrKE+xZbTnAgxaVbBw7oTB+Y1cYNmOhU
X-Google-Smtp-Source: APXvYqxJ9xrCQYDM3zjASN2O14TUYOL1Vq099EpzYllPSctTMS5wHjd4pXl9VmehlTUaytj82L6S0Af4Z1CPJkWAD5Rc60MY47Nk
MIME-Version: 1.0
X-Received: by 2002:a92:8dd9:: with SMTP id w86mr25132844ill.93.1572342721346; 
 Tue, 29 Oct 2019 02:52:01 -0700 (PDT)
Date: Tue, 29 Oct 2019 02:52:00 -0700
In-Reply-To: <000000000000044a7f0595fbaf2c@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000006db1370596099128@google.com>
Subject: Re: INFO: trying to register non-static key in
 bond_3ad_update_ad_actor_settings
From: syzbot <syzbot+8da67f407bcba2c72e6e@syzkaller.appspotmail.com>
To: a@unstable.cc, alex.aring@gmail.com, allison@lohutok.net, andrew@lunn.ch, 
 andy@greyhouse.net, ap420073@gmail.com, aroulin@cumulusnetworks.com, 
 ast@domdv.de, b.a.t.m.a.n@lists.open-mesh.org, 
 bridge@lists.linux-foundation.org, cleech@redhat.com, daniel@iogearbox.net, 
 davem@davemloft.net, dcaratti@redhat.com, dsa@cumulusnetworks.com, 
 edumazet@google.com, f.fainelli@gmail.com, fw@strlen.de, 
 gbastien@versatic.net, gregkh@linuxfoundation.org, gustavo@embeddedor.com, 
 haiyangz@microsoft.com, idosch@mellanox.com, info@metux.net, 
 ivan.khoronzhuk@linaro.org, j.vosburgh@gmail.com, j@w1.fi, 
 jakub.kicinski@netronome.com, jhs@mojatatu.com, jiri@mellanox.com, 
 jiri@resnulli.us, johan.hedberg@gmail.com, johannes.berg@intel.com, 
 john.hurley@netronome.com, jwi@linux.ibm.com, kstewart@linuxfoundation.org, 
 kvalo@codeaurora.org, kys@microsoft.com, linmiaohe@huawei.com, 
 linux-bluetooth@vger.kernel.org, linux-hams@vger.kernel.org, 
 linux-hyperv@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-ppp@vger.kernel.org, linux-wireless@vger.kernel.org, 
 linux-wpan@vger.kernel.org, liuhangbin@gmail.com, marcel@holtmann.org, 
 mareklindner@neomailbox.ch, mcroce@redhat.com
Content-Type: text/plain; charset="UTF-8"; format=flowed; delsp=yes
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1572343123;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to; bh=KhTni5i4fWNYOrXXdKRZL7n4/+Q2oXySWZR+SGDk+1M=;
 b=tcZNi9Z8bYz7v0p4Ya/yinBpcUBosubibVJrL5Lx8JCI783CBuvk8zZrkBTX8wzJjJdA2K
 sOuv2jeeKpc2D+gyKUkNUibSWt/s1VYEnyvS5cc8/1K90VaNGXRQIIQ2AQo91k/lIi6cDj
 EBWp+XyBZGHxr4EWBCQI1coJbfICzEU=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1572343123; a=rsa-sha256; cv=none;
 b=xEwuQ3DcAwhQA78K+HGzlf0n0CL2CDxt3Yw5ee9xfBTdkFDydUKQL6TEvvpNfuieuu3OjR
 eVCO8GqWCPKkGdV7qeaZFVKiSJIuSo/bUiqFwla13UShl1Nv2aqPTO/tgag6rAYvqLtE73
 CvkboaTlMiJ6V8aW4ofecfCosOb7ZJg=
ARC-Authentication-Results: i=1; open-mesh.org; dkim=none;
 spf=pass (open-mesh.org: domain of
 3wQu4XQkbAKweklWMXXQdMbbUP.SaaSXQgeQdOaZfQZf.OaY@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
 designates 209.85.166.197 as permitted sender)
 smtp.mailfrom=3wQu4XQkbAKweklWMXXQdMbbUP.SaaSXQgeQdOaZfQZf.OaY@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
X-Mailman-Approved-At: Tue, 29 Oct 2019 11:00:20 +0100
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

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=12b54d70e00000
start commit:   60c1769a Add linux-next specific files for 20191028
git tree:       linux-next
final crash:    https://syzkaller.appspot.com/x/report.txt?x=11b54d70e00000
console output: https://syzkaller.appspot.com/x/log.txt?x=16b54d70e00000
kernel config:  https://syzkaller.appspot.com/x/.config?x=cb86688f30db053d
dashboard link: https://syzkaller.appspot.com/bug?extid=8da67f407bcba2c72e6e
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=14d43a04e00000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=16be3b9ce00000

Reported-by: syzbot+8da67f407bcba2c72e6e@syzkaller.appspotmail.com
Fixes: ab92d68fc22f ("net: core: add generic lockdep keys")

For information about bisection process see: https://goo.gl/tpsmEJ#bisection
