Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [IPv6:2a01:4f8:141:3341:78:46:248:236])
	by mail.lfdr.de (Postfix) with ESMTPS id 39CA7E8B26
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 29 Oct 2019 15:47:38 +0100 (CET)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id E6E638058D;
	Tue, 29 Oct 2019 15:47:32 +0100 (CET)
Received: from mail-il1-f198.google.com (mail-il1-f198.google.com
 [209.85.166.198])
 by open-mesh.org (Postfix) with ESMTPS id BAF6A80223
 for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 29 Oct 2019 15:17:07 +0100 (CET)
Received: by mail-il1-f198.google.com with SMTP id i74so9431771ild.13
 for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 29 Oct 2019 07:17:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:in-reply-to:message-id:subject
 :from:to;
 bh=ZXDP0wwnNkRnGcZ/hxzyUBVhVAKO5MP3N/7b/HrN89M=;
 b=UYxG6jCgKqBHCuOAF1FCm+8DYxP9iMxiZdqmDmqxZidYcMK5h/Z8RG0VjfqrY6EkRN
 iJ9/qGZiD+rSgae2A7Bmd0xeXPyJ0R9SJYrvTV9VwvISnWzyYjyzOv//jlMoNsPqjklH
 by5grtXFBrNO+HLcsO3i+ojsVHeuNr4z23tkx9UP9jH9isPrOATN8gIEWtQP1EypToKf
 isG92zfbMLvlVtdEd3kRWBlpXCmih/jcaTfE+ZBnhyRDdquTb0jT2Tm5Afm5VXwNDN2I
 SLjgjiiQrjFo6b/V2BgQP+7/i8LjGmWr8rDJl/pcVp2R7tzIb7KE+AAeIjTbvBGZimvt
 leQA==
X-Gm-Message-State: APjAAAUVpWqbXQExctZDN85uJJiXck640/hEM4Tn17NOugNsYv9kCm2T
 dULIBqH7kY/bXcCd/+I6vUD7XXTbs6GNyil7W/r+iYnSwJ0o
X-Google-Smtp-Source: APXvYqyEO6WTdX2TT1MAC5wh+aMxnQAZiQ9NAP9Ue+ASML0EMHR89Lk5xJp5JZTyc5Ij4tXWW9iYcXeag4DdS0UpQCxA/Rt7L8JZ
MIME-Version: 1.0
X-Received: by 2002:a92:8394:: with SMTP id p20mr28056667ilk.73.1572358141217; 
 Tue, 29 Oct 2019 07:09:01 -0700 (PDT)
Date: Tue, 29 Oct 2019 07:09:01 -0700
In-Reply-To: <0000000000009ea5720595dc03a3@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000007792ff05960d289d@google.com>
Subject: Re: BUG: MAX_LOCKDEP_KEYS too low!
From: syzbot <syzbot+692f39f040c1f415567b@syzkaller.appspotmail.com>
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
 s=20121; t=1572358627;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to; bh=ZXDP0wwnNkRnGcZ/hxzyUBVhVAKO5MP3N/7b/HrN89M=;
 b=uX0mEJ1hhf7tYNJNLa9hCLsQxISd9op6Il6sZfiU7ZVBmO2j15LUcsOa28AFbIaFE3fOD9
 E9wpdS6xKA3ZiLd6IJUdKRbB2nQi59BwMFrSuicBKmfGwxuHfteFqXC8Y2AoRkkdswmYwA
 7Boc6k2/R8dmE7hHST0/8CL4ArdO+DM=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1572358627; a=rsa-sha256; cv=none;
 b=W/HMIbVA10TACf5IaRvLgsLYztGr0PQxhR5uQaUQQrrr+Lug/ywQBgmdDgzsNi7uRdDse5
 QgLpNicmPFAMWBgJ0PrXFQFpQLSSbsjOnDqpwd2/I1Xza4/dHCIY19/LG2oa57k84p8M8O
 SvfUsje41x1bhd08PP601iN4Voob9pE=
ARC-Authentication-Results: i=1; open-mesh.org; dkim=none;
 spf=pass (open-mesh.org: domain of
 3_Ue4XQkbAGISYZKALLERAPPID.GOOGLEUSERCONTENT.COM@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
 designates 209.85.166.198 as permitted sender)
 smtp.mailfrom=3_Ue4XQkbAGISYZKALLERAPPID.GOOGLEUSERCONTENT.COM@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
X-Mailman-Approved-At: Tue, 29 Oct 2019 15:47:30 +0100
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

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=12e05224e00000
start commit:   60c1769a Add linux-next specific files for 20191028
git tree:       linux-next
final crash:    https://syzkaller.appspot.com/x/report.txt?x=11e05224e00000
console output: https://syzkaller.appspot.com/x/log.txt?x=16e05224e00000
kernel config:  https://syzkaller.appspot.com/x/.config?x=cb86688f30db053d
dashboard link: https://syzkaller.appspot.com/bug?extid=692f39f040c1f415567b
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=10be9ed0e00000

Reported-by: syzbot+692f39f040c1f415567b@syzkaller.appspotmail.com
Fixes: ab92d68fc22f ("net: core: add generic lockdep keys")

For information about bisection process see: https://goo.gl/tpsmEJ#bisection
