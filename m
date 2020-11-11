Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 050E12AEF75
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 11 Nov 2020 12:20:01 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id B7B2080D64;
	Wed, 11 Nov 2020 12:20:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1605093600;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=SS0AzCn/ZqMEGHRahKWufggq+ytWf6OdLf6Nk/LcGxk=;
	b=OjZAedaptIqHVFzk9NCfCWvVI4tO5kK7miopPphZl3YfOM0UMciy4WNFR0mr+jTWJfKL28
	EnH0d9qKeRHV5iGYYWDN6dvmxBxXIWU1wx4J9r0qi+UwdzKfcdHB6WNl1MZ/8bsF4oXx/A
	smCRiFrlDei9PlS3iDoMyKu5t9yDsII=
References: <0000000000008fddd805adc8c56f@google.com> <000000000000abcd5505b0a06d96@google.com>
In-Reply-To: <000000000000abcd5505b0a06d96@google.com>
Date: Wed, 11 Nov 2020 12:19:45 +0100
Subject: Re: general protection fault in rt6_fill_node
To: syzbot <syzbot+81af6e9b3c4b8bc874f8@syzkaller.appspotmail.com>
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
X-Mailman-Version: 3.2.1
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/KIVBNQFWITLWMNGMXQ7I5B55BJ77J23O/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>
MIME-Version: 1.0
Message-ID: <160509360000.1287.18151546458621112194@diktynna.open-mesh.org>
From: "Dmitry Vyukov via B.A.T.M.A.N" <b.a.t.m.a.n@lists.open-mesh.org>
Cc: John.Linn@xilinx.com, a@unstable.cc, Anant Thazhemadam <anant.thazhemadam@gmail.com>, Andrii Nakryiko <andriin@fb.com>, anirudh@xilinx.com, Alexei Starovoitov <ast@kernel.org>, b.a.t.m.a.n@lists.open-mesh.org, bpf <bpf@vger.kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, David Miller <davem@davemloft.net>, David Ahern <dsahern@gmail.com>, hancock@sedsystems.ca, John Fastabend <john.fastabend@gmail.com>, Martin KaFai Lau <kafai@fb.com>, KP Singh <kpsingh@chromium.org>, Jakub Kicinski <kuba@kernel.org>, Alexey Kuznetsov <kuznet@ms2.inr.ac.ru>, Linux ARM <linux-arm-kernel@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>, mareklindner@neomailbox.ch, michal.simek@xilinx.com, netdev <netdev@vger.kernel.org>, Nikolay Aleksandrov <nikolay@cumulusnetworks.com>, Song Liu <songliubraving@fb.com>, syzkaller-bugs <syzkaller-bugs@googlegroups.com>, Yonghong Song <yhs@fb.com>, Hideaki YOSHIFUJI <yoshfuji@linux-ipv6.org>, Dmitry Vyukov <dvyukov@google.com>
Content-Type: multipart/mixed; boundary="===============3658809862557392288=="

--===============3658809862557392288==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============3658809862557392288==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from mail-qv1-xf42.google.com (mail-qv1-xf42.google.com [IPv6:2607:f8b0:4864:20::f42])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id C11FB804B4
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 11 Nov 2020 12:19:57 +0100 (CET)
Received: by mail-qv1-xf42.google.com with SMTP id 63so678778qva.7
        for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 11 Nov 2020 03:19:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=HL+P6C+e6EWuUkq6BT22AnRS/x2R8zWC5SF2fuIvWTY=;
        b=G7eBLWOQu/jKzydXH77LVk341vLoFf2aVMsmRzA51ZaqsLZw8reU4eMnbvGOcSaAZq
         0b3xp/oFtihhxA67Tz22LyI/Yore49lROWLIym1ViOFCxrPRQcgwHAw/NWFVF7JRvSKm
         KzNfdc/KedyImofcF1Gl6HzW0SvPt2kJolBtt/fSQNWKnHsxpXz70c+sUIfX747qok7N
         LZQVuNAH2Al9XhPCPYpPID5PU37KLRoO/v5VdbkK2DlYc3cSUs33actL4xTT8i0Zr2rw
         P3hJJL1bXlkdtS2TKLIUGe+PuhLraTqcRbvnRhYjqqBT/EF+M86YL/YhjOos1psD1mQE
         nl0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=HL+P6C+e6EWuUkq6BT22AnRS/x2R8zWC5SF2fuIvWTY=;
        b=iF+BKPpxN12+M4EB6zL9EotLVsVETvRmQVERltUZXPDlZQj8IC/Y53w21GMt5oNve5
         v8Y0SZFb+Fnr5+WeFhYk78ZKR8mVBoE1RqbQ+iCu4HUrpKo+KVNXcrYJq57v6dkHyfaW
         Z1mzXozdwNSeGnfcX5NYV5bp399jXFSSZ+XYg3XYWh8Sxasl4LKskeMguRbIa3pDuM06
         rezX/FxUKWtVONwlmDQIHPhwCa4D561vFlBWBYWTR/aDeLUt4GBjgfz6b0V7AkwUDUsi
         U/yFYWJBhn89C8uXlbP+s4choHsl9VmybL5RMgnruQj04IDueOe6X+8xV/mSI86lvTpX
         4L/A==
X-Gm-Message-State: AOAM530L7T7TqUAZehsZYoA0ZqSfGC0H3w7EeOWDfLsxwJLmNho40sKi
	bxa1eJhavYi/hwVGuUZHQl3eRy03/KA8AWlPuMlDew==
X-Google-Smtp-Source: ABdhPJxSKANgqKyIaFyKJJvDKEIsAq50ZDYIvoYkWBLdIn0dbZYFOsej/MN69Kzg8OORqQgkUJcdv3y6TbWf2QePsTM=
X-Received: by 2002:a0c:8d8b:: with SMTP id t11mr24811025qvb.13.1605093596081;
 Wed, 11 Nov 2020 03:19:56 -0800 (PST)
MIME-Version: 1.0
References: <0000000000008fddd805adc8c56f@google.com> <000000000000abcd5505b0a06d96@google.com>
In-Reply-To: <000000000000abcd5505b0a06d96@google.com>
From: Dmitry Vyukov <dvyukov@google.com>
Date: Wed, 11 Nov 2020 12:19:45 +0100
Message-ID: <CACT4Y+bpDs82p-+vV2fki3STcdZaGcrmOqO1qh-agE7couKBHw@mail.gmail.com>
Subject: Re: general protection fault in rt6_fill_node
To: syzbot <syzbot+81af6e9b3c4b8bc874f8@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="UTF-8"
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=google.com header.s=20161025 header.b=G7eBLWOQ;
	spf=pass (diktynna.open-mesh.org: domain of dvyukov@google.com designates 2607:f8b0:4864:20::f42 as permitted sender) smtp.mailfrom=dvyukov@google.com
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1605093597; a=rsa-sha256;
	cv=none;
	b=Y9RuqL3+/ZFPoY9fHC+uheqddiWhSr772Nye/blIwz2l6l35x5p8MMledbEG23fRJ6YevI
	n2QFHIp44+d0AtibiuBIqCO6mcaHkdZjGGgqL2t+JcAUbTT+9hMlDZaJRoRPZUN/Ow50EO
	JynCNsp42rnDPiIQBudISqbWcPMuSzg=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1605093597;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=HL+P6C+e6EWuUkq6BT22AnRS/x2R8zWC5SF2fuIvWTY=;
	b=hviP0CWKSCamX296Q0rkzJIWVZtPHp8cJTQRctyqn7BLY9A8JObVXCPdvnQLQaQpN+sQ3i
	wa0gO+Kl4RShPuVMH+4kaNVCK3+MCQo23i9RFwt28jMj62W8jVQg0kq0EKh2/jVqW9rTAg
	/+EtZVDwrRWt2VJn4zdkP8sWQZAeBYc=
Message-ID-Hash: KIVBNQFWITLWMNGMXQ7I5B55BJ77J23O
X-Message-ID-Hash: KIVBNQFWITLWMNGMXQ7I5B55BJ77J23O
X-MailFrom: dvyukov@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
CC: John.Linn@xilinx.com, a@unstable.cc, Anant Thazhemadam <anant.thazhemadam@gmail.com>, Andrii Nakryiko <andriin@fb.com>, anirudh@xilinx.com, Alexei Starovoitov <ast@kernel.org>, b.a.t.m.a.n@lists.open-mesh.org, bpf <bpf@vger.kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, David Miller <davem@davemloft.net>, David Ahern <dsahern@gmail.com>, hancock@sedsystems.ca, John Fastabend <john.fastabend@gmail.com>, Martin KaFai Lau <kafai@fb.com>, KP Singh <kpsingh@chromium.org>, Jakub Kicinski <kuba@kernel.org>, Alexey Kuznetsov <kuznet@ms2.inr.ac.ru>, Linux ARM <linux-arm-kernel@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>, mareklindner@neomailbox.ch, michal.simek@xilinx.com, netdev <netdev@vger.kernel.org>, Nikolay Aleksandrov <nikolay@cumulusnetworks.com>, Song Liu <songliubraving@fb.com>, syzkaller-bugs <syzkaller-bugs@googlegroups.com>, Yonghong Song <yhs@fb.com>, Hideaki YOSHIFUJI <yoshfuji@linux-ipv6.org>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/KIVBNQFWITLWMNGMXQ7I5B55BJ77J23O/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

On Thu, Oct 1, 2020 at 8:46 PM syzbot
<syzbot+81af6e9b3c4b8bc874f8@syzkaller.appspotmail.com> wrote:
>
> syzbot suspects this issue was fixed by commit:
>
> commit eeaac3634ee0e3f35548be35275efeca888e9b23
> Author: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
> Date:   Sat Aug 22 12:06:36 2020 +0000
>
>     net: nexthop: don't allow empty NHA_GROUP
>
> bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=12beed5b900000
> start commit:   c3d8f220 Merge tag 'kbuild-fixes-v5.9' of git://git.kernel..
> git tree:       upstream
> kernel config:  https://syzkaller.appspot.com/x/.config?x=a0437fdd630bee11
> dashboard link: https://syzkaller.appspot.com/bug?extid=81af6e9b3c4b8bc874f8
> syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=13ff8539900000
> C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=143f3a96900000
>
> If the result looks correct, please mark the issue as fixed by replying with:
>
> #syz fix: net: nexthop: don't allow empty NHA_GROUP
>
> For information about bisection process see: https://goo.gl/tpsmEJ#bisection

#syz fix: net: nexthop: don't allow empty NHA_GROUP
--===============3658809862557392288==--
