Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id B4D6B19C457
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu,  2 Apr 2020 16:35:35 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 6309080A22;
	Thu,  2 Apr 2020 16:35:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1585838135;
	h=from:from:sender:sender:reply-to:reply-to:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:in-reply-to:in-reply-to:
	 references:references:list-id:list-help:list-unsubscribe:
	 list-subscribe:list-post; bh=FdqjvpgZb/X/UrN7UpMBhX73A4r2wzK5Is8C3aHXw6E=;
	b=kbNsBgonmYN+SYAajA2RgaGHz3GK7tQnd9Yuv0fZbL7c05B/e1gA5SUi7A/VUKO5HLkNQt
	rj+yKGTLMMBvRkledfEQluGTCuAiUxB5DFdt96xzAij9+HC/SGvLctLN00BTXfQyO11fNu
	lTVxFisGZZFOfx6N4B3UmWTWpAE6kjA=
References: <0000000000008c5a4605a24cbb16@google.com>
 <2094673.WoIe4zePQG@kermit.br.ibm.com>
In-Reply-To: <2094673.WoIe4zePQG@kermit.br.ibm.com>
Date: Thu, 2 Apr 2020 16:31:56 +0200
To: =?UTF-8?Q?Murilo_Opsfelder_Ara=C3=BAjo?= <muriloo@linux.ibm.com>
X-Mailman-Approved-At: Thu, 02 Apr 2020 16:35:28 +0200
MIME-Version: 1.0
Message-ID: <mailman.9.1585838128.11108.b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
From: "Dmitry Vyukov via B.A.T.M.A.N" <b.a.t.m.a.n@lists.open-mesh.org>
Precedence: list
Cc: Dmitry Vyukov <dvyukov@google.com>, Theodore Ts'o <tytso@mit.edu>,
 mareklindner@neomailbox.ch, Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 b.a.t.m.a.n@lists.open-mesh.org, a@unstable.cc,
 syzbot <syzbot+67e4f16db666b1c8253c@syzkaller.appspotmail.com>,
 LKML <linux-kernel@vger.kernel.org>,
 syzkaller-bugs <syzkaller-bugs@googlegroups.com>,
 netdev <netdev@vger.kernel.org>, Andreas Dilger <adilger.kernel@dilger.ca>,
 Michael Ellerman <mpe@ellerman.id.au>, Paul Mackerras <paulus@samba.org>,
 linux-ext4@vger.kernel.org, linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
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
Content-Type: multipart/mixed; boundary="===============7176849321886082516=="
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

--===============7176849321886082516==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============7176849321886082516==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Return-Path: <dvyukov@google.com>
Received: from mail-qv1-xf42.google.com (mail-qv1-xf42.google.com [IPv6:2607:f8b0:4864:20::f42])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 5219980041
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu,  2 Apr 2020 16:32:10 +0200 (CEST)
Received: by mail-qv1-xf42.google.com with SMTP id p19so1760436qve.0
        for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 02 Apr 2020 07:32:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=nEm39zdPpGwdrSWdhPm/fhoaJJGSTcSstNUDzJRA8Fo=;
        b=XpOJz5aVad5ILzm1UZMEQ/guQhRlhu5uHMvExQNsl9PvPJivkFmdWAQmilUhNBNZ00
         GznZ/zVwqZZKLAR9q/s6lsHrMZZwxJ5klD2dvq5rpQR2cm9GpCWQPV3hqGnUsml5eGT7
         ec9ObLpOFpNM7wgCSHdYtfRV95vIVusLz+UItV2LZlhwnkh6B3V5EdunYBYz2aW1qIoQ
         D/axIB3E7dDHIzj8eJBHVBLvdjevUBNytTHq1kZEcUCbBEVCb0tdaLx6bRGuGGPqk1Pw
         Oc3Npi2KhsIErtTFeTfGXWR2KKmNn1YNQlxoFJb+13RWdvobDd7J+vsbPdPSK5rKVA+C
         XLLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=nEm39zdPpGwdrSWdhPm/fhoaJJGSTcSstNUDzJRA8Fo=;
        b=hWI0pwvvUVSWz0ww/+21GTqUH61i4TKY0uvmDQwd9YiwmqqA7T9AryDh9I7v9TZ7y4
         KWjvpgi/Bhri1P2E/okAsuaVuxvJo7mP/rhUvSlJlu/bOXqItriuBqNXaHhv34yeMenz
         S8EfvCwLhNoVSYLeBAb6jXISE9R2UFfk77eZ3HJ1OSBn36bg4r18LVJEDk9KpZ6cHycC
         I7CyzwM27OfSQLibEh+9a2xDLqjO3inJ+MugURPqNmYlereyitQf42shN2sRM2FTER0O
         KIs+hnyz3UgBOI67KPcYknXXSKvv2AwD1FHfMgs3nD3qbKxpY27pgh3KILX4h0zCxtCg
         nNxg==
X-Gm-Message-State: AGi0PuYXo3un/ocQk9i8ONLbpH1zhrzuy0QJ9ovHp2gM4u1VpubFF6pv
	L2wY6BOjSDnYyqMW4DPRWPxzD2VELI6QN0jqKR58tg==
X-Google-Smtp-Source: APiQypJwqfcLWhsYN3F97f6DqmbK/ct6u6QjagEjXfdiopJ7JHUgbfygP+NXFOBTG1tjYFE36Me19lRiNXiQ7Mb7iCY=
X-Received: by 2002:a05:6214:1367:: with SMTP id c7mr1857836qvw.22.1585837928739;
 Thu, 02 Apr 2020 07:32:08 -0700 (PDT)
MIME-Version: 1.0
References: <0000000000008c5a4605a24cbb16@google.com> <2094673.WoIe4zePQG@kermit.br.ibm.com>
In-Reply-To: <2094673.WoIe4zePQG@kermit.br.ibm.com>
From: Dmitry Vyukov <dvyukov@google.com>
Date: Thu, 2 Apr 2020 16:31:56 +0200
Message-ID: <CACT4Y+YpJt=qMSWKGneTCgzGOErxAE3n3WX+6FYFii2LoBuNQQ@mail.gmail.com>
Subject: Re: WARNING in ext4_da_update_reserve_space
To: =?UTF-8?Q?Murilo_Opsfelder_Ara=C3=BAjo?= <muriloo@linux.ibm.com>
Cc: syzbot <syzbot+67e4f16db666b1c8253c@syzkaller.appspotmail.com>, a@unstable.cc, 
	Andreas Dilger <adilger.kernel@dilger.ca>, b.a.t.m.a.n@lists.open-mesh.org, 
	Benjamin Herrenschmidt <benh@kernel.crashing.org>, David Miller <davem@davemloft.net>, 
	linux-ext4@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>, 
	linuxppc-dev <linuxppc-dev@lists.ozlabs.org>, mareklindner@neomailbox.ch, 
	Michael Ellerman <mpe@ellerman.id.au>, netdev <netdev@vger.kernel.org>, 
	Paul Mackerras <paulus@samba.org>, sw@simonwunderlich.de, 
	syzkaller-bugs <syzkaller-bugs@googlegroups.com>, "Theodore Ts'o" <tytso@mit.edu>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1585837930;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=nEm39zdPpGwdrSWdhPm/fhoaJJGSTcSstNUDzJRA8Fo=;
	b=jF2jvGaU1O516OOspjLQshUgsSeqqA3WtCbCWEZTDGoD9fUC1KjPNgkjUnAOEG7gMlz5as
	7dCF5w4fPKTp8XtYw3OxaApE7GaFFAV5PplTLJCXcMNMyaMGKhKtRlh71pT6dsinMLUwnw
	lPZiAcOmahCMPfRNxp7x+mMHyof2kbU=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1585837930; a=rsa-sha256;
	cv=none;
	b=B9qpb9r6lKwCmSb6E7Xy0xtjMVNetUO5OHWRCOs7/TXy6JKF0OdOm3G3173ystCsB6XRbu
	jYltJydgeWGvLNuAwnsoklRtlIwhO7/HqgzHnPBMv4JzcTuXR39AokXRtEGwVBcP1CyN+H
	ppgh15lKVy02ndl/o7ROeWMK93VTruE=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=google.com header.s=20161025 header.b=XpOJz5aV;
	spf=pass (diktynna.open-mesh.org: domain of dvyukov@google.com designates 2607:f8b0:4864:20::f42 as permitted sender) smtp.mailfrom=dvyukov@google.com
X-Mailman-Approved-At: Thu, 02 Apr 2020 16:35:28 +0200

On Thu, Apr 2, 2020 at 4:06 PM Murilo Opsfelder Ara=C3=BAjo
<muriloo@linux.ibm.com> wrote:
>
> On Thursday, April 2, 2020 8:02:11 AM -03 syzbot wrote:
> > Hello,
> >
> > syzbot found the following crash on:
> >
> > HEAD commit:    1a147b74 Merge branch 'DSA-mtu'
> > git tree:       net-next
> > console output: https://syzkaller.appspot.com/x/log.txt?x=3D14237713e00=
000
> > kernel config:  https://syzkaller.appspot.com/x/.config?x=3D46ee14d4915=
944bc
> > dashboard link: https://syzkaller.appspot.com/bug?extid=3D67e4f16db666b=
1c8253c
> > compiler:       gcc (GCC) 9.0.0 20181231 (experimental)
> > syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=3D12237713e=
00000
> > C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=3D10ec7c97e00=
000
> >
> > The bug was bisected to:
> >
> > commit 658b0f92bc7003bc734471f61bf7cd56339eb8c3
> > Author: Murilo Opsfelder Araujo <muriloo@linux.ibm.com>
> > Date:   Wed Aug 1 21:33:15 2018 +0000
> >
> >     powerpc/traps: Print unhandled signals in a separate function
>
> This commit is specific to powerpc and the crash is from an x86_64 system=
.
>
> There is a bunch of scp errors in the logs:
>
> scp: ./syz-executor998635077: No space left on device
>
> Is it possible that these errors might be misleading the syzbot?

You may see how it reacted on them based on
# git bisect bad/good
lines. As far as I see these errors did not confuse it.

But this guy did:
run #0: crashed: general protection fault in batadv_iv_ogm_queue_add






> > bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=3D15979f5b=
e00000
> > final crash:    https://syzkaller.appspot.com/x/report.txt?x=3D17979f5b=
e00000
> > console output: https://syzkaller.appspot.com/x/log.txt?x=3D13979f5be00=
000
> >
> > IMPORTANT: if you fix the bug, please add the following tag to the comm=
it:
> > Reported-by: syzbot+67e4f16db666b1c8253c@syzkaller.appspotmail.com
> > Fixes: 658b0f92bc70 ("powerpc/traps: Print unhandled signals in a separ=
ate
> > function")
> >
> > EXT4-fs warning (device sda1): ext4_da_update_reserve_space:344:
> > ext4_da_update_reserve_space: ino 15722, used 1 with only 0 reserved da=
ta
> > blocks ------------[ cut here ]------------
> > WARNING: CPU: 1 PID: 359 at fs/ext4/inode.c:348
> > ext4_da_update_reserve_space+0x622/0x7d0 fs/ext4/inode.c:344 Kernel pan=
ic -
> > not syncing: panic_on_warn set ...
> > CPU: 1 PID: 359 Comm: kworker/u4:5 Not tainted 5.6.0-rc7-syzkaller #0
> > Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS
> > Google 01/01/2011 Workqueue: writeback wb_workfn (flush-8:0)
> > Call Trace:
> >  __dump_stack lib/dump_stack.c:77 [inline]
> >  dump_stack+0x188/0x20d lib/dump_stack.c:118
> >  panic+0x2e3/0x75c kernel/panic.c:221
> >  __warn.cold+0x2f/0x35 kernel/panic.c:582
> >  report_bug+0x27b/0x2f0 lib/bug.c:195
> >  fixup_bug arch/x86/kernel/traps.c:174 [inline]
> >  fixup_bug arch/x86/kernel/traps.c:169 [inline]
> >  do_error_trap+0x12b/0x220 arch/x86/kernel/traps.c:267
> >  do_invalid_op+0x32/0x40 arch/x86/kernel/traps.c:286
> >  invalid_op+0x23/0x30 arch/x86/entry/entry_64.S:1027
> > RIP: 0010:ext4_da_update_reserve_space+0x622/0x7d0 fs/ext4/inode.c:348
> > Code: 02 00 0f 85 94 01 00 00 48 8b 7d 28 49 c7 c0 20 72 3c 88 41 56 48=
 c7
> > c1 80 60 3c 88 53 ba 58 01 00 00 4c 89 c6 e8 1e 6d 0d 00 <0f> 0b 48 b8 =
00
> > 00 00 00 00 fc ff df 4c 89 ea 48 c1 ea 03 0f b6 04 RSP:
> > 0018:ffffc90002197288 EFLAGS: 00010296
> > RAX: 0000000000000000 RBX: 0000000000000001 RCX: 0000000000000000
> > RDX: 0000000000000000 RSI: ffffffff820bf066 RDI: fffff52000432e21
> > RBP: ffff888086b744c8 R08: 0000000000000091 R09: ffffed1015ce6659
> > R10: ffffed1015ce6658 R11: ffff8880ae7332c7 R12: 0000000000000001
> > R13: ffff888086b74990 R14: 0000000000000000 R15: ffff888086b74a40
> >  ext4_ext_map_blocks+0x24aa/0x37d0 fs/ext4/extents.c:4500
> >  ext4_map_blocks+0x4cb/0x1650 fs/ext4/inode.c:622
> >  mpage_map_one_extent fs/ext4/inode.c:2365 [inline]
> >  mpage_map_and_submit_extent fs/ext4/inode.c:2418 [inline]
> >  ext4_writepages+0x19eb/0x3080 fs/ext4/inode.c:2772
> >  do_writepages+0xfa/0x2a0 mm/page-writeback.c:2344
> >  __writeback_single_inode+0x12a/0x1410 fs/fs-writeback.c:1452
> >  writeback_sb_inodes+0x515/0xdd0 fs/fs-writeback.c:1716
> >  wb_writeback+0x2a5/0xd90 fs/fs-writeback.c:1892
> >  wb_do_writeback fs/fs-writeback.c:2037 [inline]
> >  wb_workfn+0x339/0x11c0 fs/fs-writeback.c:2078
> >  process_one_work+0x94b/0x1690 kernel/workqueue.c:2266
> >  worker_thread+0x96/0xe20 kernel/workqueue.c:2412
> >  kthread+0x357/0x430 kernel/kthread.c:255
> >  ret_from_fork+0x24/0x30 arch/x86/entry/entry_64.S:352
> > Kernel Offset: disabled
> > Rebooting in 86400 seconds..
> >
> >
> > ---
> > This bug is generated by a bot. It may contain errors.
> > See https://goo.gl/tpsmEJ for more information about syzbot.
> > syzbot engineers can be reached at syzkaller@googlegroups.com.
> >
> > syzbot will keep track of this bug report. See:
> > https://goo.gl/tpsmEJ#status for how to communicate with syzbot.
> > For information about bisection process see: https://goo.gl/tpsmEJ#bise=
ction
> > syzbot can test patches for this bug, for details see:
> > https://goo.gl/tpsmEJ#testing-patches
>
> --
> Murilo
>
> --
> You received this message because you are subscribed to the Google Groups=
 "syzkaller-bugs" group.
> To unsubscribe from this group and stop receiving emails from it, send an=
 email to syzkaller-bugs+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgi=
d/syzkaller-bugs/2094673.WoIe4zePQG%40kermit.br.ibm.com.

--===============7176849321886082516==--
