Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id DB82A4381E6
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 23 Oct 2021 06:50:15 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id A13A981242;
	Sat, 23 Oct 2021 06:50:14 +0200 (CEST)
Received: from mail-io1-f72.google.com (mail-io1-f72.google.com [209.85.166.72])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id D61B2806F6
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 23 Oct 2021 06:50:11 +0200 (CEST)
Received: by mail-io1-f72.google.com with SMTP id y11-20020a056602164b00b005de32183909so4640049iow.10
        for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 22 Oct 2021 21:50:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:date:in-reply-to:message-id:subject
         :from:to;
        bh=mvePd5L1eky6kii+wlkb5JDOZo/0Hv/Enm522ESKj7E=;
        b=Xhh++lecBnZ5JdqxRd+wrPpLbxutnQkbgbEKWLsm9bqPsWJMnb2E0wK+A1N8gpTLOo
         7kC1NejfNfOd3r8Z0eU13khcJvOEWs4UyqTwt9gqei4EaNPiL8ERKjxpL/5iFbNpkXMj
         SSCV5js5Dk8uB8YB8Xwz0o55Yn3PtNHoZo+Yh2w0VMLccNTyphBdcOaGmMedcjEyHn0X
         FUD32lPx4wuPLw851yVxdAL+WkkHlvBZ0DzT616Or73e/A58nYxR0/O8I4GUI2uKLriR
         dR++Bs6BrkkRE6XqQeYVXEx3GBxivnzbYUr1GJHSJvNWWwptCkgbg0zw3JlJHGb2BWm3
         71Dg==
X-Gm-Message-State: AOAM530fE7VtwTPq/do3nifDjGwaLF1EyjVLJg8X+TNMBHD/+TqHBk5M
	4ktnOfNg8g18bYlvQ4PMUy2MYVryJHrH667GloO1Gek/ZH5b
X-Google-Smtp-Source: ABdhPJzRejzoVuLjfxevXfIloGzhEE6WWMlDeOnHot44VK+A6KSR1zzyIrdx+0ZzffS+srM4B1JAZTs2vGvwqF8jcfAbuC1g48SW
MIME-Version: 1.0
X-Received: by 2002:a05:6602:1504:: with SMTP id g4mr2343090iow.133.1634964610411;
 Fri, 22 Oct 2021 21:50:10 -0700 (PDT)
Date: Fri, 22 Oct 2021 21:50:10 -0700
In-Reply-To: <5e29e63c-d2b5-ae72-0e33-5a22e727be3c@gmail.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000d2f5fa05cefddcf0@google.com>
Subject: Re: [syzbot] WARNING in batadv_nc_mesh_free
From: syzbot <syzbot+28b0702ada0bf7381f58@syzkaller.appspotmail.com>
To: a@unstable.cc, b.a.t.m.a.n@lists.open-mesh.org, davem@davemloft.net,
	kuba@kernel.org, linux-kernel@vger.kernel.org, mareklindner@neomailbox.ch,
	netdev@vger.kernel.org, paskripkin@gmail.com, sven@narfation.org,
	sw@simonwunderlich.de, syzkaller-bugs@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1634964611;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to; bh=mvePd5L1eky6kii+wlkb5JDOZo/0Hv/Enm522ESKj7E=;
	b=CRGo5oJlI0/TyF4gcYgZ5S67SG4TMlMK2TmPmrpJh+4v55uaRAVNC1al0SWdJmhXATsJoF
	4L31ZqUz+w22ihyDvreJeXX3ba6lKgu59YicqLNszl8/wLbKcF7rZZZsfPJthYCLb+uq4U
	5aYdLbfHa8+21nGhJa/fotZpNR6ztfA=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of 3gpRzYQkbAIs7DEzp00t6p44xs.v33v0t97t6r328t28.r31@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com designates 209.85.166.72 as permitted sender) smtp.mailfrom=3gpRzYQkbAIs7DEzp00t6p44xs.v33v0t97t6r328t28.r31@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com;
	dmarc=fail reason="SPF not aligned (relaxed), No valid DKIM" header.from=appspotmail.com (policy=none)
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1634964611; a=rsa-sha256;
	cv=none;
	b=cPqgLR1VHu73T8yA7pr03GpaqeGXNUUFzhMFfanpwuDQvSSaiA59ZNiffqMhNhfbpXsEji
	2q1bRI7Ky1IKbf+nnYscfs37n4Uu07hQ40+f3kk1GT/69zsem+sRZdLQDEfFr45oYF/5AL
	cuA+9QGkixwJYw3X/X/elCl3gve9dTE=
Message-ID-Hash: OUU3ANCQK46AIVHLRARGWNQVUIXH6T4B
X-Message-ID-Hash: OUU3ANCQK46AIVHLRARGWNQVUIXH6T4B
X-MailFrom: 3gpRzYQkbAIs7DEzp00t6p44xs.v33v0t97t6r328t28.r31@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/OUU3ANCQK46AIVHLRARGWNQVUIXH6T4B/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Hello,

syzbot has tested the proposed patch and the reproducer did not trigger any issue:

Reported-and-tested-by: syzbot+28b0702ada0bf7381f58@syzkaller.appspotmail.com

Tested on:

commit:         9c0c4d24 Merge tag 'block-5.15-2021-10-22' of git://gi..
git tree:       upstream
kernel config:  https://syzkaller.appspot.com/x/.config?x=d95853dad8472c91
dashboard link: https://syzkaller.appspot.com/bug?extid=28b0702ada0bf7381f58
compiler:       Debian clang version 11.0.1-2, GNU ld (GNU Binutils for Debian) 2.35.2
patch:          https://syzkaller.appspot.com/x/patch.diff?x=1553d4c4b00000

Note: testing is done by a robot and is best-effort only.
