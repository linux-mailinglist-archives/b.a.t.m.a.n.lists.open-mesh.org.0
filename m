Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [78.46.248.236])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E83B11CC8E
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 12 Dec 2019 12:50:39 +0100 (CET)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 4DD36800FC;
	Thu, 12 Dec 2019 12:50:30 +0100 (CET)
Received: from mail-io1-f72.google.com (mail-io1-f72.google.com
 [209.85.166.72]) by open-mesh.org (Postfix) with ESMTPS id 3AFCA80198
 for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 12 Dec 2019 12:40:19 +0100 (CET)
Received: by mail-io1-f72.google.com with SMTP id t18so1302852iob.18
 for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 12 Dec 2019 03:40:19 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:in-reply-to:message-id:subject
 :from:to;
 bh=zFl6E7DmT67W68XqVzR2aCsqjcFpWexNUq+6/CXmVUk=;
 b=JutpXh5R/9wPOYIl9GxtN3GP8/+dOIQCheS+DkOt/bCuFejXYTwjQZzgyu99kTxeFP
 RYevRqpvpnyBWS4h9MV7OeR877YSMVsFOMpIfJhmBzVQj1qWTayV6Zb6XXEhjeKiMWOe
 5/zQBLQkiQqgzF7k9c/RQqOW7lmB+7Sj7wOtMreBpVTHYuSo3QsukT5RoVwL/TuSo6ck
 8kwv7jaI6jUvQVcxDhztdf/nsjCMPXAQ0HF1Ph7OFvCapTBMRDEcrFFUaxVQnRZi4lr4
 7jQLlCYWFGwy31jog7+P0Blrn7iuVG4ThzFPSHurtwUhHybh3UTdR5wxPshwbDBmomRq
 oi7g==
X-Gm-Message-State: APjAAAVcrZlZ0qt8oVxPF6kh0fD9EXDNmMnDqko8Y+Oes66yQ6rtARhx
 VbfOyAwHkgedJe/yXL1vgzCpJoCv0GnBB+woSz9qTSzwzFAV
X-Google-Smtp-Source: APXvYqx7tAF42179GqyQGzxmn7mnoZxL7LgtxR3PNlsI/lOpd2FmYULEa+vakNib69tHnoQvSF7+iHISpB+uiby7hAsvBYRTiqDc
MIME-Version: 1.0
X-Received: by 2002:a92:3b19:: with SMTP id i25mr7844146ila.85.1576150500982; 
 Thu, 12 Dec 2019 03:35:00 -0800 (PST)
Date: Thu, 12 Dec 2019 03:35:00 -0800
In-Reply-To: <000000000000b6b03205997b71cf@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000b949ee0599802274@google.com>
Subject: Re: BUG: corrupted list in __dentry_kill (2)
From: syzbot <syzbot+31043da7725b6ec210f1@syzkaller.appspotmail.com>
To: a@unstable.cc, alex.aring@gmail.com, allison@lohutok.net, andrew@lunn.ch, 
 andy@greyhouse.net, ap420073@gmail.com, ast@domdv.de, ast@kernel.org, 
 b.a.t.m.a.n@lists.open-mesh.org, bpf@vger.kernel.org, 
 bridge@lists.linux-foundation.org, cleech@redhat.com, daniel@iogearbox.net, 
 davem@davemloft.net, dsa@cumulusnetworks.com, dsahern@gmail.com, 
 dvyukov@google.com, f.fainelli@gmail.com, fw@strlen.de, 
 gregkh@linuxfoundation.org, haiyangz@microsoft.com, hawk@kernel.org, 
 hdanton@sina.com, idosch@mellanox.com, info@metux.net, j.vosburgh@gmail.com, 
 j@w1.fi, jakub.kicinski@netronome.com, jhs@mojatatu.com, jiri@mellanox.com, 
 jiri@resnulli.us, johan.hedberg@gmail.com, johannes.berg@intel.com, 
 john.fastabend@gmail.com, john.hurley@netronome.com, jwi@linux.ibm.com, 
 kafai@fb.com, kstewart@linuxfoundation.org, kvalo@codeaurora.org, 
 kys@microsoft.com, linux-bluetooth@vger.kernel.org, 
 linux-fsdevel@vger.kernel.org, linux-hams@vger.kernel.org, 
 linux-hyperv@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-ppp@vger.kernel.org, linux-wireless@vger.kernel.org, 
 linux-wpan@vger.kernel.org, liuhangbin@gmail.com, marcel@holtmann.org
Content-Type: text/plain; charset="UTF-8"; format=flowed; delsp=yes
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1576150820;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to; bh=zFl6E7DmT67W68XqVzR2aCsqjcFpWexNUq+6/CXmVUk=;
 b=GvhZ204YkZ2dHvyi+y9rPI5+KtfLkdfPp749sAX2RyaptRe7rtWdqEQHgCpdknvCvqRksP
 wvLudQKaK0Q9WBVirPaWpiCuiN7sUU5lGI80Qcli6kQd9nzjBdcnfbBZw61wiqpTGkdQYg
 DFCFj4XSzxiiOk/J98XdspDeU5rseX0=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1576150820; a=rsa-sha256; cv=none;
 b=YQR+Foz8/nm6MnRqRBk2Ai84caQeXpsMK4OJy5oCCQxuyhJWWqiW9+oyK1J4vch6pb5sEq
 6SC/6KmilkqCCAraFkY9DNlwzoaKKAFiLX7zUXB4UUWJ/8HMwuvDa/RqOGgMTm8WKT3pJx
 xTsoEuY/6/uNpaqcyv9mgBqK2DkYQDU=
ARC-Authentication-Results: i=1; open-mesh.org; dkim=none;
 spf=pass (open-mesh.org: domain of
 35CXyXQkbAO0hnoZPaaTgPeeXS.VddVaTjhTgRdciTci.Rdb@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
 designates 209.85.166.72 as permitted sender)
 smtp.mailfrom=35CXyXQkbAO0hnoZPaaTgPeeXS.VddVaTjhTgRdciTci.Rdb@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
X-Mailman-Approved-At: Thu, 12 Dec 2019 12:50:26 +0100
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

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=12d37cb6e00000
start commit:   938f49c8 Add linux-next specific files for 20191211
git tree:       linux-next
final crash:    https://syzkaller.appspot.com/x/report.txt?x=11d37cb6e00000
console output: https://syzkaller.appspot.com/x/log.txt?x=16d37cb6e00000
kernel config:  https://syzkaller.appspot.com/x/.config?x=96834c884ba7bb81
dashboard link: https://syzkaller.appspot.com/bug?extid=31043da7725b6ec210f1
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=12dc83dae00000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=16ac8396e00000

Reported-by: syzbot+31043da7725b6ec210f1@syzkaller.appspotmail.com
Fixes: ab92d68fc22f ("net: core: add generic lockdep keys")

For information about bisection process see: https://goo.gl/tpsmEJ#bisection
