Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FD031AB773
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 16 Apr 2020 07:40:15 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 5C5DA806F7;
	Thu, 16 Apr 2020 07:40:13 +0200 (CEST)
Received: from mail-il1-f198.google.com (mail-il1-f198.google.com
 [209.85.166.198])
 by diktynna.open-mesh.org (Postfix) with ESMTPS id 5CA5080084
 for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 16 Apr 2020 02:11:05 +0200 (CEST)
Received: by mail-il1-f198.google.com with SMTP id y2so7259048ilm.8
 for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 15 Apr 2020 17:11:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:in-reply-to:message-id:subject
 :from:to;
 bh=fpoqVPhszf0NVg05C+Ce87uumBc0cG0RasYX5KRrK/A=;
 b=t1syivuV0UFUQlLlEhEKPXLd3ATwztYPTgLudDFQ0XDArCWay0ggWUYh2TbHd1pcr7
 0mivcSp9pdTS3SgE5kujv6geYwoX+50aHnqgSKafN3DjxSxVcE6m372D2FAIqacP0Lnf
 K/DmnMxLdDYHcZcf9DWINEN9RcoTBdeIi8NQlu/y+H3evYKDXY8kfZT27giTQVOfXAkA
 De0N6aJ8x9QOjtPgodKl/Csro5GD1Ef3osJWrwQQ0D1zCKPbNmoPglKHZOGdxENObyiH
 brHdzbHFtobC7QU+yaA76ua+G1XYPOlrv818dGGH1QGR+jUaPDiV3Qt0MIipHEH5nhVx
 T2xw==
X-Gm-Message-State: AGi0PuaerjtWSgYGtMipuho3G4/qIFfiA4U/AmPisPBAgSjjoo58OFfa
 MqVlhDILJkBWDhrIO0/7PGPesI8FDqYQJmYnFwfIVE70dNkI
X-Google-Smtp-Source: APiQypKcCgI3/2owP+Ax+avsl/BzFIkiA31xvFAOZDOMymkWaDm+4dJSPNPqeM8Ut+RNphNBCe4mDPpNDLKfGAmGhhXHK5QOcm+K
MIME-Version: 1.0
X-Received: by 2002:a02:7b05:: with SMTP id q5mr28919026jac.105.1586995863913; 
 Wed, 15 Apr 2020 17:11:03 -0700 (PDT)
Date: Wed, 15 Apr 2020 17:11:03 -0700
In-Reply-To: <0000000000003ec128058c7624ec@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000ba8e5605a35d4465@google.com>
Subject: Re: WARNING in kernfs_create_dir_ns
From: syzbot <syzbot+38f5d5cf7ae88c46b11a@syzkaller.appspotmail.com>
To: a@unstable.cc, b.a.t.m.a.n@lists.open-mesh.org, davem@davemloft.net, 
 gregkh@linuxfoundation.org, hdanton@sina.com, hongjiefang@asrmicro.com, 
 linux-kernel@vger.kernel.org, linux-mmc@vger.kernel.org, longman@redhat.com, 
 mareklindner@neomailbox.ch, mingo@kernel.org, netdev@vger.kernel.org, 
 peterz@infradead.org, sw@simonwunderlich.de, syzkaller-bugs@googlegroups.com, 
 tj@kernel.org, ulf.hansson@linaro.org
Content-Type: text/plain; charset="UTF-8"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1586995865;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to; bh=fpoqVPhszf0NVg05C+Ce87uumBc0cG0RasYX5KRrK/A=;
 b=lW77bHzkxzMpONlLFC81yWSeDY4k7a4a4PdHQ8xeetl42IWVaEgmQqC5mfgl0tKvJLg/zE
 oOnsRiAZXGfP63hxH6SWP5ZvIumKQNcZ+39jdOJHvgjf5iYX1AnqaFAUapfRG8JqAWmRRz
 pWBR5QgJ4sBHhU29otl4NhyPx/fP/ho=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1586995865; a=rsa-sha256; cv=none;
 b=hbHmPKllKGhN2ujpFDN0XAiN/Ebfbo+Uax44ST7pcvFR9dENYfBEuZp2CLr8m6997GIDeA
 IdwlGDLjIc3LK1O53sMS0JlMiTnU2HlFdFHXKxO0og2QdgQcsxJxIKvnRSl7pBAkI0ZQA0
 y/IcuwENs/exfWr7ZNg+UGZ8P8vbReM=
ARC-Authentication-Results: i=1; diktynna.open-mesh.org; dkim=none;
 spf=pass (diktynna.open-mesh.org: domain of
 3l6KXXgkbADYkqrcSddWjShhaV.YggYdWmkWjUgflWfl.Uge@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
 designates 209.85.166.198 as permitted sender)
 smtp.mailfrom=3l6KXXgkbADYkqrcSddWjShhaV.YggYdWmkWjUgflWfl.Uge@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
X-Mailman-Approved-At: Thu, 16 Apr 2020 07:40:11 +0200
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

syzbot suspects this bug was fixed by commit:

commit 810507fe6fd5ff3de429121adff49523fabb643a
Author: Waiman Long <longman@redhat.com>
Date:   Thu Feb 6 15:24:08 2020 +0000

    locking/lockdep: Reuse freed chain_hlocks entries

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=1008138be00000
start commit:   72825454 Merge branch 'x86-urgent-for-linus' of git://git...
git tree:       upstream
kernel config:  https://syzkaller.appspot.com/x/.config?x=9a31528e58cc12e2
dashboard link: https://syzkaller.appspot.com/bug?extid=38f5d5cf7ae88c46b11a
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=12a6c439a00000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=1353c323a00000

If the result looks correct, please mark the bug fixed by replying with:

#syz fix: locking/lockdep: Reuse freed chain_hlocks entries

For information about bisection process see: https://goo.gl/tpsmEJ#bisection
