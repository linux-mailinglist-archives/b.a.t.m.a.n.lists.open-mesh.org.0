Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [IPv6:2a01:4f8:141:3341:78:46:248:236])
	by mail.lfdr.de (Postfix) with ESMTPS id B0D52DE58E
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 21 Oct 2019 09:54:11 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id B08AD807FE;
	Mon, 21 Oct 2019 09:54:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1571644446;
	h=from:from:sender:sender:reply-to:reply-to:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:in-reply-to:in-reply-to:
	 references:references:list-id:list-help:list-unsubscribe:
	 list-subscribe:list-post; bh=cOLMEGRFINmSM6mF0O7jkPWf2XKnCP00Lh/TLCS+ePg=;
	b=l/MNRw+0NUwYTDnD3dDP197EA9A6GqwaW7Kz8PA866IT0e2bV78B7WP04tvLkgeTA42rxe
	Z77PYuJOTF+7qPko5GlX03eY5MGf/ZVoXFgCOFyk4ST2Mg4tjN9V5E1k5UOxvIOwDzSpbf
	RWp5SYVQuOa5lZFoa51yg2NhO/Uc4cI=
References: <000000000000ccde8d059564d93d@google.com>
 <2128256.8pjUZaGXEE@bentobox>
In-Reply-To: <2128256.8pjUZaGXEE@bentobox>
Date: Mon, 21 Oct 2019 08:54:21 +0200
To: Sven Eckelmann <sven@narfation.org>
X-Mailman-Approved-At: Mon, 21 Oct 2019 09:54:04 +0200
MIME-Version: 1.0
Message-ID: <mailman.4.1571644445.6113.b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
From: "Dmitry Vyukov via B.A.T.M.A.N" <b.a.t.m.a.n@lists.open-mesh.org>
Precedence: list
Cc: Dmitry Vyukov <dvyukov@google.com>, mareklindner@neomailbox.ch,
 netdev <netdev@vger.kernel.org>, b.a.t.m.a.n@lists.open-mesh.org,
 a@unstable.cc, LKML <linux-kernel@vger.kernel.org>,
 syzkaller-bugs <syzkaller-bugs@googlegroups.com>,
 syzbot <syzbot+7dd2da51d8ae6f990403@syzkaller.appspotmail.com>,
 David Miller <davem@davemloft.net>
X-Mailman-Version: 2.1.29
X-BeenThere: b.a.t.m.a.n@lists.open-mesh.org
List-Subscribe: <https://lists.open-mesh.org/mm/listinfo/b.a.t.m.a.n>,
 <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=subscribe>
List-Unsubscribe: <https://lists.open-mesh.org/mm/options/b.a.t.m.a.n>,
 <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=unsubscribe>
List-Archive: <http://lists.open-mesh.org/pipermail/b.a.t.m.a.n/>
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n@lists.open-mesh.org>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
Content-Type: multipart/mixed; boundary="===============5861356081575870458=="
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

--===============5861356081575870458==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============5861356081575870458==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Return-Path: <dvyukov@google.com>
Received: from mail-qk1-x743.google.com (mail-qk1-x743.google.com [IPv6:2607:f8b0:4864:20::743])
	by open-mesh.org (Postfix) with ESMTPS id A56F680137
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 21 Oct 2019 08:54:34 +0200 (CEST)
Received: by mail-qk1-x743.google.com with SMTP id y81so7650615qkb.7
        for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 20 Oct 2019 23:54:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Ew+EeWIbh/tqMeE+5rFDb3TmVPvP26ghW75d5Js6Qtw=;
        b=dFaeHNsclipaWu2ERIrqmeUPM7sosfeU0BP3o+RR59EoFvT67V02FSKj+gA6Ig+HQi
         neYmaWsW+5c4UwwahGwcd0olDJyoJ7YK6BJGgy7BvesBTzRKGE2/TDt/ukvDG6Q4Djb6
         oAh6gbE/8bpu0NmQW/RvisFHFsv1NRbu/v0R390zJjwEa8047C8wpC59yOLz7Ss4ue0g
         wLjDKJtvKATA/L6o77A7A8y39NLlYlOIdjT+Q6QHZ5tCMmyoqy/p4UO9yeAuP1V1LNIz
         v6B4G8lEgfD+rNZdi+7o0qX0YlsCDoT5S8VULOG6rTYF8dj2G+f7DMHMmYiPRjsJXa8C
         20SA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Ew+EeWIbh/tqMeE+5rFDb3TmVPvP26ghW75d5Js6Qtw=;
        b=izHNrs00dGx36wYo0cXwTDncsuwXDQ0X99NClS43bZRav//D6VHbTDKgQkjUqlreU3
         xbMCeCzw1TymO4WLooJWi3VGVq3YyZNgLEXvUbLO0PCKruQUJOVoO7m1Csu9NfMpoHVS
         ck5KTKdj4LNZdR4fWBxFEvS55W1aoj7Kyy7zMU1KS5+e9ld+Njn9CYKLtQ0zk6mG7jWF
         ThNmP/+ZhCuVyJQWkrULYKaq2Wz6Pfq7vqo/fNVCWVgnu7y3AahEmKD9DBW/In2QMdWr
         VffUm3SYkD/65h0M74jAAn+gn23lptkCSZ8BN6TXKe13czHZGNms0al/Bt4+Ubg/M46Z
         Uk1g==
X-Gm-Message-State: APjAAAWv63XhllqE9t4T2jpQ90KMQJQLtMyCp180AM3ciurABi0WBmuw
	JA8RCv5taCy5Zjd8UE4upG+vr01MC+oQEQg4zTzTmg==
X-Google-Smtp-Source: APXvYqwLGZMm/enYdDvmjkI2LuNStrvFJ67sk4sLbYYSRiSKeDAqgxOHCR1oZsY+eH4nd8nG/upIK48k31arWDpywLY=
X-Received: by 2002:a37:4a87:: with SMTP id x129mr20543344qka.43.1571640872789;
 Sun, 20 Oct 2019 23:54:32 -0700 (PDT)
MIME-Version: 1.0
References: <000000000000ccde8d059564d93d@google.com> <2128256.8pjUZaGXEE@bentobox>
In-Reply-To: <2128256.8pjUZaGXEE@bentobox>
From: Dmitry Vyukov <dvyukov@google.com>
Date: Mon, 21 Oct 2019 08:54:21 +0200
Message-ID: <CACT4Y+b1Fkky4JZUTFpUe0jaUVpo7N59T5XTahjzkmig83Dd6A@mail.gmail.com>
Subject: Re: general protection fault in batadv_iv_ogm_queue_add
To: Sven Eckelmann <sven@narfation.org>
Cc: syzbot <syzbot+7dd2da51d8ae6f990403@syzkaller.appspotmail.com>, a@unstable.cc, 
	b.a.t.m.a.n@lists.open-mesh.org, David Miller <davem@davemloft.net>, 
	LKML <linux-kernel@vger.kernel.org>, mareklindner@neomailbox.ch, 
	netdev <netdev@vger.kernel.org>, sw@simonwunderlich.de, 
	syzkaller-bugs <syzkaller-bugs@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1571640874;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=Ew+EeWIbh/tqMeE+5rFDb3TmVPvP26ghW75d5Js6Qtw=;
	b=RND2oI9xJxZnZUPoA3HmZCKDIei4pMPZY39ACnWDtLOxTOXhPiacR6wWCWaSh1CdcincqS
	zqF1jIiecM3iHh7/y8FEKrP/o/6Tuy4Pgt9mYC3+2+Vcv2Wypt2z2lmQWWcr8kzTO1Pxb6
	bHNQnxHY3J5Qjnz+X8fr9hZg/kBFldY=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1571640874; a=rsa-sha256;
	cv=none;
	b=ePEOzrE4eaEQmPTv0LGgAXmhDMVjSkRrGZQui4qXWDQMeRxbYiG62iX3stKG6Iqss9e2SM
	+0zCbwRhBPqRn3CraqjJZMPovPah6qncuvou05u4oFyuTJ0AQYjA4xfAi67gBAaiWr49Ff
	d+k+OYupI5t2O53ZEr3wkBWxMjQ9ZFA=
ARC-Authentication-Results: i=1;
	open-mesh.org;
	dkim=pass header.d=google.com header.s=20161025 header.b=dFaeHNsc;
	spf=pass (open-mesh.org: domain of dvyukov@google.com designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=dvyukov@google.com
X-Mailman-Approved-At: Mon, 21 Oct 2019 09:54:04 +0200

On Mon, Oct 21, 2019 at 8:33 AM Sven Eckelmann <sven@narfation.org> wrote:
>
> On Monday, 21 October 2019 07:21:06 CEST syzbot wrote:
> [...]
> > IMPORTANT: if you fix the bug, please add the following tag to the commit:
> > Reported-by: syzbot+7dd2da51d8ae6f990403@syzkaller.appspotmail.com
> >
> > kasan: CONFIG_KASAN_INLINE enabled
> > kasan: GPF could be caused by NULL-ptr deref or user memory access
> > general protection fault: 0000 [#1] PREEMPT SMP KASAN
> > CPU: 0 PID: 4256 Comm: kworker/u4:0 Not tainted 5.4.0-rc3+ #0
> > Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS
> > Google 01/01/2011
> > Workqueue: bat_events batadv_iv_send_outstanding_bat_ogm_packet
> > RIP: 0010:batadv_iv_ogm_queue_add+0x49/0x1120
> > net/batman-adv/bat_iv_ogm.c:605
> > Code: 48 89 75 b8 48 89 4d c0 4c 89 45 b0 44 89 4d d0 e8 fc 02 46 fa 48 8d
> > 7b 03 48 b8 00 00 00 00 00 fc ff df 48 89 fa 48 c1 ea 03 <0f> b6 04 02 48
> > 89 fa 83 e2 07 38 d0 7f 08 84 c0 0f 85 18 0d 00 00
> > RSP: 0018:ffff88805d2cfb80 EFLAGS: 00010246
> > RAX: dffffc0000000000 RBX: 0000000000000000 RCX: ffff888092284000
> > RDX: 0000000000000000 RSI: ffffffff872d1214 RDI: 0000000000000003
> > RBP: ffff88805d2cfc18 R08: ffff888092284000 R09: 0000000000000001
> > R10: ffffed100ba59f77 R11: 0000000000000003 R12: dffffc0000000000
> > R13: ffffed101245080e R14: ffff888092284000 R15: 0000000100051cf6
> > FS:  0000000000000000(0000) GS:ffff8880ae800000(0000) knlGS:0000000000000000
> > CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> > CR2: 00000000200002c0 CR3: 00000000a421b000 CR4: 00000000001426f0
> > DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
> > DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
> > Call Trace:
> >   batadv_iv_ogm_schedule+0xb0b/0xe50 net/batman-adv/bat_iv_ogm.c:813
> >   batadv_iv_send_outstanding_bat_ogm_packet+0x580/0x760
> > net/batman-adv/bat_iv_ogm.c:1675
>
> I am guessing that the fix for this is queued up since a while at
>  https://git.open-mesh.org/linux-merge.git/commit/40e220b4218bb3d278e5e8cc04ccdfd1c7ff8307
>
> Kind regards,
>         Sven

Hi Sven,

It was fixed based on another syzbot report, let's tell syzbot that
this is a dup of that other report than:

#syz dup: KASAN: use-after-free Read in batadv_iv_ogm_queue_add

--===============5861356081575870458==--
