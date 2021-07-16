Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EBF33CBF93
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 17 Jul 2021 01:07:13 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 3CE85807B8;
	Sat, 17 Jul 2021 01:07:12 +0200 (CEST)
Received: from mail-il1-f200.google.com (mail-il1-f200.google.com [209.85.166.200])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 07C57807B8
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 17 Jul 2021 01:07:07 +0200 (CEST)
Received: by mail-il1-f200.google.com with SMTP id j13-20020a056e02218db02902141528bc7cso2169827ila.3
        for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 16 Jul 2021 16:07:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:date:in-reply-to:message-id:subject
         :from:to;
        bh=qaMOIh2upbMs9hOM1Tz4AOxQSYOvrsMlI718rr6A6Is=;
        b=kpGPM4TVsiuhM19uv90pT8jAzqmSd6RM3Nnfgfc7E0LKo20nX0j+wpyTyC8fTvlPWf
         wMApNe+FughXnUs35MNYp/T+6xRP9rV/KBlbQLv/eKXNPiIDxC5saZtIcPs8f2TDoBuA
         ci+efx2mQeYryaG5xNl9Q9QVTUJBjTcnX7TWCxe6eu5qwLtx5pgpHW/cCkpC9KUz0k4b
         oiois014RzDMuTOYTIFiF2qoHCnLjs15ZDK4ZlrvSBYqFlH5j/JBpgUyq0mZOqwWxScZ
         1V07xQgbAqj6oMnARdxGAZiHQxaQfLU26pAnvtDTxCu1D5kJwt2TarrlAyd87UQiLedW
         LupA==
X-Gm-Message-State: AOAM532HSP3/Xhx/weV0gK9V+ICWyvBkUVMokXwJZS848wlv9tFXXzbZ
	heCkkgZWLBEiaMuUucf0b/bJ0pN34tC5s4rOTNbnIKOk2tAl
X-Google-Smtp-Source: ABdhPJxsZhI0CdLIY+rzWPN0HYQv81ux+PuPu2AjkvxwV5y7JgLfQU6oiuU1IVzcs8ebcrTDjOTOzG9MGTpliCM3OpXNwjB3HeBm
MIME-Version: 1.0
X-Received: by 2002:a92:d943:: with SMTP id l3mr8182316ilq.37.1626476826637;
 Fri, 16 Jul 2021 16:07:06 -0700 (PDT)
Date: Fri, 16 Jul 2021 16:07:06 -0700
In-Reply-To: <00000000000055e16405b0fc1a90@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000007cbbcd05c745a560@google.com>
Subject: Re: [syzbot] WARNING in sta_info_alloc
From: syzbot <syzbot+45d7c243c006f39dc55a@syzkaller.appspotmail.com>
To: a@unstable.cc, anand.jain@oracle.com, b.a.t.m.a.n@lists.open-mesh.org,
	catalin.marinas@arm.com, clm@fb.com, davem@davemloft.net, dsterba@suse.com,
	johannes@sipsolutions.net, josef@toxicpanda.com, kuba@kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-btrfs@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-wireless@vger.kernel.org,
	mareklindner@neomailbox.ch, netdev@vger.kernel.org, sw@simonwunderlich.de,
	syzkaller-bugs@googlegroups.com, will.deacon@arm.com, will@kernel.org,
	zlim.lnx@gmail.com
Content-Type: text/plain; charset="UTF-8"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1626476828;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to; bh=qaMOIh2upbMs9hOM1Tz4AOxQSYOvrsMlI718rr6A6Is=;
	b=P6kwNs/T09f2W3OtwjLMKaHPd7j1+3XDxWxENjTUdE3e80Uf31pokPG8mTHJe8ci6ZBUWP
	n/TjJOUbFObYweAcDY7Zff74QrtSGv4w3l1p2pwQ8HS+jdoRPP291nBv7d4nFYGJv8NaJ/
	+QVPSWR8UjRn+NOkj3dbPV7g8QsUYZk=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1626476828; a=rsa-sha256;
	cv=none;
	b=nmEruEXsjZVhfaf/npzEiUQtyPAd+C96kmsTlE3h0qT3PYfIYTRRvAUNi0aPCVVSbFNSzV
	Lak5FwX55BCpobbaW8UZX7CzjokXQoCbotlknaEg4MELqliUqzln9+KHAsW0OYFd52seWR
	SOttjhHWSoX7AnOUxiS9fCBPereK6eg=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of 3GhHyYAkbABMBHI3t44xAt881w.z77z4xDBxAv76Cx6C.v75@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com designates 209.85.166.200 as permitted sender) smtp.mailfrom=3GhHyYAkbABMBHI3t44xAt881w.z77z4xDBxAv76Cx6C.v75@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
Message-ID-Hash: OYRWJLCBIQZIJLJI44QD7MJVJEHW4JBW
X-Message-ID-Hash: OYRWJLCBIQZIJLJI44QD7MJVJEHW4JBW
X-MailFrom: 3GhHyYAkbABMBHI3t44xAt881w.z77z4xDBxAv76Cx6C.v75@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/OYRWJLCBIQZIJLJI44QD7MJVJEHW4JBW/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

syzbot suspects this issue was fixed by commit:

commit 282ab3ff16120ec670fe3330e85f8ebf13092f21
Author: David Sterba <dsterba@suse.com>
Date:   Mon Oct 14 12:38:33 2019 +0000

    btrfs: reduce compressed_bio members' types

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=12d5f6f2300000
start commit:   7f75285ca572 Merge tag 'for-5.12/dm-fixes-3' of git://git...
git tree:       upstream
kernel config:  https://syzkaller.appspot.com/x/.config?x=b5591c832f889fd9
dashboard link: https://syzkaller.appspot.com/bug?extid=45d7c243c006f39dc55a
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=164f385ad00000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=1427af9ad00000

If the result looks correct, please mark the issue as fixed by replying with:

#syz fix: btrfs: reduce compressed_bio members' types

For information about bisection process see: https://goo.gl/tpsmEJ#bisection
