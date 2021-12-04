Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EFF6468392
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat,  4 Dec 2021 10:32:18 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id E30CC807B5;
	Sat,  4 Dec 2021 10:32:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1638610336;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=r+ColVLsAk+xgswqR6LD8akxVqdPUmYkvEUtN3Pczqg=;
	b=ecSgEZgcyI6AUOzhfAK3cOF+Uuz8P+Ckzie6/AThvN91z3Sq1rMOPAdd73PSknBsfFv3g6
	JwzanWKs74zeNUeuVtn05/Zl2aSvkMa7WFBbLWnwITrZyv/TWNSX1lx9H4d8w+memOkbWf
	uaAEPZh6Uacp+0c5gfpQfBHdbz4cXF4=
References: <000000000000f5964705b7d47d8c@google.com> <000000000000dc091705d203eac6@google.com>
In-Reply-To: <000000000000dc091705d203eac6@google.com>
Date: Sat, 4 Dec 2021 10:32:00 +0100
Subject: Re: [syzbot] INFO: trying to register non-static key in l2cap_sock_teardown_cb
To: syzbot <syzbot+a41dfef1d2e04910eb2e@syzkaller.appspotmail.com>
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
X-Mailman-Version: 3.2.1
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/FU7YMSFIT7LEO3FYN3KM6ZKAFEX2C73P/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>
MIME-Version: 1.0
Message-ID: <163861033507.1292.18157599582945746383@diktynna.open-mesh.org>
From: "Dmitry Vyukov via B.A.T.M.A.N" <b.a.t.m.a.n@lists.open-mesh.org>
Cc: a@unstable.cc, b.a.t.m.a.n@lists.open-mesh.org, bobo.shaobowang@huawei.com, davem@davemloft.net, hdanton@sina.com, johan.hedberg@gmail.com, kuba@kernel.org, linux-bluetooth@vger.kernel.org, linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org, luiz.dentz@gmail.com, luiz.von.dentz@intel.com, marcel@holtmann.org, mareklindner@neomailbox.ch, miklos@szeredi.hu, mszeredi@redhat.com, netdev@vger.kernel.org, syzkaller-bugs@googlegroups.com, Dmitry Vyukov <dvyukov@google.com>
Content-Type: multipart/mixed; boundary="===============2295569883751919632=="

--===============2295569883751919632==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============2295569883751919632==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from mail-oi1-x233.google.com (mail-oi1-x233.google.com [IPv6:2607:f8b0:4864:20::233])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 86BD28074D
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sat,  4 Dec 2021 10:32:12 +0100 (CET)
Received: by mail-oi1-x233.google.com with SMTP id bj13so10888222oib.4
        for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 04 Dec 2021 01:32:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=dp2mOcmnCUzYV/E9OQFo/xxl9rHZk/eGzBOBjZN1XYM=;
        b=WSTQ5SrqnlJYb5MwWXeSFWwAIj+R4+Bn1eUxHR+003PnwHgtvHR/tKMkX4wh48f4ud
         nlReAt7US/Ey/8pQ203BdU5uK7s5ZiQd6d6Fieh1nqfKJChGXOU4GE7yrmDfpHX9n0W0
         7SpCq7c28PvftiP9zRbNIpzjnQoe2Z4IDYL10DdcNFGAarkTJWcEBVw3HzTneEfkXGFz
         kEga0ebNY2oOFHlh4KbYekS7mA8PiehapP3sOnumOMu6QIWZJtzZVYY4y04W1Ti7Xxr7
         tRfo/2ISAGL5qK3E8WskkTo6NNmQrKkh5XM/80FMs9ji48HtM8UkEmnZi883zYj15RVH
         F6lA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=dp2mOcmnCUzYV/E9OQFo/xxl9rHZk/eGzBOBjZN1XYM=;
        b=SkwlpMQ+qyx4/khpuKUVglN8+tXR51tFgOXT0wRWwhP49vEaislM8FApRxIJyLKGzL
         rTMiP8Obl3Wp5l/Xlse4XacSC1EHnxa7Nkj+TdzlIQzxkjSCwey8pxqgbSdtoJ6x1+Yr
         SUuNZscr9v5ilJx77OlQsyFmlOa1d4vZi4a3HWdqvWP4wubWaXhJiSZZRHthLuE028cu
         oM1/j2l9cj01WgQbaXv2nk3YckyWmggh18dmLfKrB83RuH72mPH5K3p1WCJU4DPgtp8U
         u8UZS0Xti87uRGkdYn6H6jbi5bCTZNtpfLtYUxlRNa3Ah/ZoqIpvGR4hTxr2rSaIYES5
         JgXQ==
X-Gm-Message-State: AOAM531mMjsbClU2hWMecN17jbjcNYFnmeuouZx8TpEbWS6FIB5eeocE
	vHnRGfPmoCq9RKucMk2zY2tGbPfXeLOQcHAYyR/5Ig==
X-Google-Smtp-Source: ABdhPJwHT61kOEJ6OKmVIbikhcKXSAgYjacMdWWfxmWruZekkbmJkcsbN+UN0YGjvX52pd7TgLy63T2wrCG4P4k6CM0=
X-Received: by 2002:a05:6808:120b:: with SMTP id a11mr14692196oil.128.1638610330910;
 Sat, 04 Dec 2021 01:32:10 -0800 (PST)
MIME-Version: 1.0
References: <000000000000f5964705b7d47d8c@google.com> <000000000000dc091705d203eac6@google.com>
In-Reply-To: <000000000000dc091705d203eac6@google.com>
From: Dmitry Vyukov <dvyukov@google.com>
Date: Sat, 4 Dec 2021 10:32:00 +0100
Message-ID: <CACT4Y+bN9OX1t4v80n5OPN68fySSVWxx0FKOsTHRTff9Xuokng@mail.gmail.com>
Subject: Re: [syzbot] INFO: trying to register non-static key in l2cap_sock_teardown_cb
To: syzbot <syzbot+a41dfef1d2e04910eb2e@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="UTF-8"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1638610332;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=dp2mOcmnCUzYV/E9OQFo/xxl9rHZk/eGzBOBjZN1XYM=;
	b=1H+Ihb+gKmvO7t+BJok2D/wW6l8/zdJub96e5WGIZTQTtuIgyEIwfajR5ienRd+rXsNOxl
	n3SkvjuY0N7M6OzhPDMTWT9C8NL2EUd76XgBSdqix1GI2DjslOQnhRRPfxhommqTRCAfQQ
	0/Mhwddu1/RPO7fGpP+dibUUQ0Y0TjQ=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=google.com header.s=20210112 header.b=WSTQ5Srq;
	dmarc=pass (policy=reject) header.from=google.com;
	spf=pass (diktynna.open-mesh.org: domain of dvyukov@google.com designates 2607:f8b0:4864:20::233 as permitted sender) smtp.mailfrom=dvyukov@google.com
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1638610332; a=rsa-sha256;
	cv=none;
	b=GF29/mYgwU7Se+zl1ntzH1Mu9kPNCiX5m2MV6Sy1yw7kZr1S00VCTUza5NmaeO+ycDGsHF
	0vVpsf6OWIDeYxNfQP3Mhwg6L/kjnIcbROd1AbYn47xkpq7q8CEzNqFLT/LiSOBLIRLXyf
	0j0Ck0BBoalAkH1WO3rv3b9QxwpfY6s=
Message-ID-Hash: FU7YMSFIT7LEO3FYN3KM6ZKAFEX2C73P
X-Message-ID-Hash: FU7YMSFIT7LEO3FYN3KM6ZKAFEX2C73P
X-MailFrom: dvyukov@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
CC: a@unstable.cc, b.a.t.m.a.n@lists.open-mesh.org, bobo.shaobowang@huawei.com, davem@davemloft.net, hdanton@sina.com, johan.hedberg@gmail.com, kuba@kernel.org, linux-bluetooth@vger.kernel.org, linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org, luiz.dentz@gmail.com, luiz.von.dentz@intel.com, marcel@holtmann.org, mareklindner@neomailbox.ch, miklos@szeredi.hu, mszeredi@redhat.com, netdev@vger.kernel.org, syzkaller-bugs@googlegroups.com
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/FU7YMSFIT7LEO3FYN3KM6ZKAFEX2C73P/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

On Tue, 30 Nov 2021 at 17:19, syzbot
<syzbot+a41dfef1d2e04910eb2e@syzkaller.appspotmail.com> wrote:
>
> syzbot suspects this issue was fixed by commit:
>
> commit 1bff51ea59a9afb67d2dd78518ab0582a54a472c
> Author: Wang ShaoBo <bobo.shaobowang@huawei.com>
> Date:   Wed Sep 1 00:35:37 2021 +0000
>
>     Bluetooth: fix use-after-free error in lock_sock_nested()
>
> bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=134c881eb00000
> start commit:   73b7a6047971 net: dsa: bcm_sf2: support BCM4908's integrat..
> git tree:       net-next
> kernel config:  https://syzkaller.appspot.com/x/.config?x=9ce34124da4c882b
> dashboard link: https://syzkaller.appspot.com/bug?extid=a41dfef1d2e04910eb2e
> syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=166ee4cf500000
> C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=1337172f500000
>
> If the result looks correct, please mark the issue as fixed by replying with:
>
> #syz fix: Bluetooth: fix use-after-free error in lock_sock_nested()
>
> For information about bisection process see: https://goo.gl/tpsmEJ#bisection

A use-after-free can lead to other random consequences, and there
actually was a KASAN report after the lockdep report in the original
report. So w/o a better candidate let's do:

#syz fix: Bluetooth: fix use-after-free error in lock_sock_nested()
--===============2295569883751919632==--
