Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [78.46.248.236])
	by mail.lfdr.de (Postfix) with ESMTPS id 00F1D142423
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 20 Jan 2020 08:18:57 +0100 (CET)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id AE04680760;
	Mon, 20 Jan 2020 08:18:44 +0100 (CET)
Received: from mail-io1-f70.google.com (mail-io1-f70.google.com
 [209.85.166.70]) by open-mesh.org (Postfix) with ESMTPS id EF070801EF
 for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 19 Jan 2020 21:21:01 +0100 (CET)
Received: by mail-io1-f70.google.com with SMTP id e13so18550416iob.17
 for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 19 Jan 2020 12:21:01 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:in-reply-to:message-id:subject
 :from:to;
 bh=tB8tVCfxWFIVfqWEsKuHgi0liSe9R1RZ+UBErAfoDaU=;
 b=suNxp+/Z/fGdbxp3+Sp5koAKoVbxYGOi/fk6o2iqT89yt3IZ6iTHbAkxokVNCvWB2D
 7aqO6a5Lxbe0kRYI2ngSjvHS8Nn3pbXL6Q3jXboTGUjeW4hSOIX/i9WR/FsZnusHRdtk
 gKpzWrVEmDGnB8Zz0MjTifUarDiahPJjAQc0fC8EKQaNptmc7Ya/kjH68tE1NKVyO+XA
 m/I6yY6dfWSGoVdXC/MqGZbeRXNHb/p841pWSOUSybAbUnUQHK3daDYeFLgLcoI8vbOq
 9B5hRjMFIBLr+9i1PeqP4QYpRB6H+0CwV++mN378u4Zn4VopMVsEikAKngBbU/n7aiL6
 xilw==
X-Gm-Message-State: APjAAAU9qtKkWOWHexvYQ0MQ1/F4nuM6UNGSKP6x7Lq7wi3yb5ASyzNl
 6zHPFR9f79UhI9829/usMgegdscrwBq1u+JweTl0momAA5PY
X-Google-Smtp-Source: APXvYqyBW0ANY5otx8x2mkJHYLCBShYafFG9L0jcSxJr3/w8Z3m4XgrA+Nba0kwQlcnkDJsAXjzzdqX7oGV/luxPfoRNInuKbPwk
MIME-Version: 1.0
X-Received: by 2002:a6b:b74a:: with SMTP id h71mr15932229iof.212.1579465260652; 
 Sun, 19 Jan 2020 12:21:00 -0800 (PST)
Date: Sun, 19 Jan 2020 12:21:00 -0800
In-Reply-To: <0000000000006d7b1e059c7db653@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000cbfd34059c83e917@google.com>
Subject: Re: KASAN: use-after-free Read in bitmap_ip_ext_cleanup
From: syzbot <syzbot+b554d01b6c7870b17da2@syzkaller.appspotmail.com>
To: a@unstable.cc, b.a.t.m.a.n@lists.open-mesh.org, 
 bridge@lists.linux-foundation.org, coreteam@netfilter.org, 
 davem@davemloft.net, florent.fourcot@wifirst.fr, fw@strlen.de, 
 jeremy@azazel.net, johannes.berg@intel.com, kadlec@netfilter.org, 
 linux-kernel@vger.kernel.org, mareklindner@neomailbox.ch, 
 netdev@vger.kernel.org, netfilter-devel@vger.kernel.org, 
 nikolay@cumulusnetworks.com, pablo@netfilter.org, roopa@cumulusnetworks.com, 
 sw@simonwunderlich.de, syzkaller-bugs@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1579465262;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to; bh=tB8tVCfxWFIVfqWEsKuHgi0liSe9R1RZ+UBErAfoDaU=;
 b=sVRVyTNwnfCJ4R+drJtnrULY2F6WtdStn2eZqTRCqecCljn88eYdQaMOo5a7yAYbgV5wqp
 T4tJWKqknj2RFfQAFdK4jG5huYU2EpRWPcTiTLqf+0PVsHWLDa92O92U4LYApsysmsOzEo
 iZgSNsF+jV07k/WjTjHcHMGW31PQwJ0=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1579465262; a=rsa-sha256; cv=none;
 b=oTlM/loJBUDUhgFI6QadqQ8ME+lIcSmQeBm3+Lq3j5RoN22vGa8LsuxDrY6FuD+fYmw9Tp
 X0Xbg9oK6DFRg+qfwjBjVccOznywV/8hMk/gLc3jP8Xep9iGMQyIQME+MmYmcJyh1SoTh4
 9MTQSi3z3s2JO+zbkYmseq0VjyjaiXM=
ARC-Authentication-Results: i=1; open-mesh.org; dkim=none;
 spf=pass (open-mesh.org: domain of
 3LLokXgkbACsZfgRHSSLYHWWPK.NVVNSLbZLYJVUaLUa.JVT@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
 designates 209.85.166.70 as permitted sender)
 smtp.mailfrom=3LLokXgkbACsZfgRHSSLYHWWPK.NVVNSLbZLYJVUaLUa.JVT@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
X-Mailman-Approved-At: Mon, 20 Jan 2020 08:18:38 +0100
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

commit 3d26eb8ad1e9b906433903ce05f775cf038e747f
Author: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Date:   Tue Jul 2 12:00:20 2019 +0000

    net: bridge: don't cache ether dest pointer on input

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=17bb1cc9e00000
start commit:   9aaa2949 Merge branch '1GbE' of git://git.kernel.org/pub/s..
git tree:       net-next
final crash:    https://syzkaller.appspot.com/x/report.txt?x=147b1cc9e00000
console output: https://syzkaller.appspot.com/x/log.txt?x=107b1cc9e00000
kernel config:  https://syzkaller.appspot.com/x/.config?x=66d8660c57ff3c98
dashboard link: https://syzkaller.appspot.com/bug?extid=b554d01b6c7870b17da2
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=15db12a5e00000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=15316faee00000

Reported-by: syzbot+b554d01b6c7870b17da2@syzkaller.appspotmail.com
Fixes: 3d26eb8ad1e9 ("net: bridge: don't cache ether dest pointer on input")

For information about bisection process see: https://goo.gl/tpsmEJ#bisection
