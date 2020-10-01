Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A5C92802CF
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu,  1 Oct 2020 17:34:10 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id DB5AD80735;
	Thu,  1 Oct 2020 17:34:08 +0200 (CEST)
Received: from mail-io1-f79.google.com (mail-io1-f79.google.com [209.85.166.79])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 5DF12802B3
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu,  1 Oct 2020 17:34:06 +0200 (CEST)
Received: by mail-io1-f79.google.com with SMTP id x13so3865402iom.10
        for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 01 Oct 2020 08:34:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:date:in-reply-to:message-id:subject
         :from:to;
        bh=p3I8AGMy+YrC12QmQ5gsY3D38zGF8Pag/wYZhM1xiNM=;
        b=hx4/ipayaeCU2T0NUf0VHKOc1fUOUiLPmQNF1ittxF+2M3Nxe+CIVtzjaA4ulDx+P6
         51d7xDWnP3v3NEMrNQbPdqDijraxIuxdUrtvKJVOvZT+mU8z19XDnJdh1pwCOKlO99XO
         1rBmZRyn3+Iu4f4nBcez7xTMnzOQTUozFyN1bKJ8+vw0NpW/sN4wwrmN0UcsjTe2+DTf
         jHTs5964o08zn27o/GYMbxBkXPYaLYLx7tp/+O/TfsCYux5PWjrIkrNBBYmfX1hsZHLX
         hr1tMojalZdpEylHy+2frQU0vEBGSTs6Ar+ttkELiJlGzJVzO+JHgzhM+9wQ68XQvJGM
         BtTQ==
X-Gm-Message-State: AOAM531ak97o68NW3Jn3VeK3eI/JhE1c+Ep3AVUi4Dmjw3VuEEaUdobi
	7/CgIuRS+kugJXmJSwtA4p1tEVgvY/3WrTekprn0gY/QoLt7
X-Google-Smtp-Source: ABdhPJzWXX40gZdF7EK/pSohyG4bjSkTey+WsRbE2NFpHS3R9P98PRdoZno5HwO3cr2VYcwXmBfh1igws3xj4NbPQiMxM+0aJ+6L
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:e01:: with SMTP id a1mr2940074ilk.162.1601566445088;
 Thu, 01 Oct 2020 08:34:05 -0700 (PDT)
Date: Thu, 01 Oct 2020 08:34:05 -0700
In-Reply-To: <0000000000009383f505adc8c5a0@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000000b380805b09dbf40@google.com>
Subject: Re: general protection fault in nexthop_is_blackhole
From: syzbot <syzbot+b2c08a2f5cfef635cc3a@syzkaller.appspotmail.com>
To: a@unstable.cc, anant.thazhemadam@gmail.com, andriin@fb.com,
	anmol.karan123@gmail.com, ast@kernel.org, b.a.t.m.a.n@lists.open-mesh.org,
	bpf@vger.kernel.org, daniel@iogearbox.net, davem@davemloft.net,
	dsahern@gmail.com, hariprasad.kelam@gmail.com, herbert@gondor.apana.org.au,
	john.fastabend@gmail.com, kafai@fb.com, kpsingh@chromium.org, kuba@kernel.org,
	kuznet@ms2.inr.ac.ru, linux-kernel@vger.kernel.org,
	mareklindner@neomailbox.ch, netdev@vger.kernel.org,
	nikolay@cumulusnetworks.com, songliubraving@fb.com,
	steffen.klassert@secunet.com, sw@simonwunderlich.de,
	syzkaller-bugs@googlegroups.com, yhs@fb.com, yoshfuji@linux-ipv6.org
Content-Type: text/plain; charset="UTF-8"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1601566446;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to; bh=p3I8AGMy+YrC12QmQ5gsY3D38zGF8Pag/wYZhM1xiNM=;
	b=Kd1w1YiAn/7iTaoCW5ljy/bkJ1zwidCX2VVdDLfiU/MSDAnXaYgyT7TQdePOVzrzc9X98I
	p7S/R2qKkdii16E/A2Z21ghWc4LUaPaD4sO+vymKYZZpNLlX+mOxUd2Yp/fR2dSyaQguxe
	VJPI5R6j5bzzF2AxQqvkX9go2kGDwto=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1601566446; a=rsa-sha256;
	cv=none;
	b=CLzoeKvMiu6Cw8mr3dwkcJ5KOSIvqdOsb5zs0Wi8yHeIwasbm+7aQAq/d1Rrb27igWoHsP
	mY2ZoGoxjlyBGdrpwkR7ZrPxYTfV90uLGd5cPGphqnnu7dJlQUhPc4hd48J06cjl0EAv67
	2CBeYxc7RxP4uxIwqMhuLTIChdwrkKc=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of 37fZ1XwkbALQmsteUffYlUjjcX.aiiafYomYlWihnYhn.Wig@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com designates 209.85.166.79 as permitted sender) smtp.mailfrom=37fZ1XwkbALQmsteUffYlUjjcX.aiiafYomYlWihnYhn.Wig@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
Message-ID-Hash: THW6BLTKHLYGGOY2HYEOJ3NSZL2SSSPE
X-Message-ID-Hash: THW6BLTKHLYGGOY2HYEOJ3NSZL2SSSPE
X-MailFrom: 37fZ1XwkbALQmsteUffYlUjjcX.aiiafYomYlWihnYhn.Wig@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/THW6BLTKHLYGGOY2HYEOJ3NSZL2SSSPE/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

syzbot suspects this issue was fixed by commit:

commit eeaac3634ee0e3f35548be35275efeca888e9b23
Author: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Date:   Sat Aug 22 12:06:36 2020 +0000

    net: nexthop: don't allow empty NHA_GROUP

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=116177a7900000
start commit:   c3d8f220 Merge tag 'kbuild-fixes-v5.9' of git://git.kernel..
git tree:       upstream
kernel config:  https://syzkaller.appspot.com/x/.config?x=bb68b9e8a8cc842f
dashboard link: https://syzkaller.appspot.com/bug?extid=b2c08a2f5cfef635cc3a
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=14d75e39900000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=12aea519900000

If the result looks correct, please mark the issue as fixed by replying with:

#syz fix: net: nexthop: don't allow empty NHA_GROUP

For information about bisection process see: https://goo.gl/tpsmEJ#bisection
