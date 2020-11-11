Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 81D542AEF43
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 11 Nov 2020 12:12:23 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 30B30803AB;
	Wed, 11 Nov 2020 12:12:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1605093142;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=nQmIaQxIpKr4TD8zwRORObgVlPPjXs5iqAG64LTMOmM=;
	b=pPgEz68EMc/ZD7OWSq/JQxLUXb0uN4Hxyf6xGxXXQQGf4qc4JFLcLavyFQUEkRk+ChNRY2
	YG9ilVVh+c/rIvmOhGYwh07dOBBRUCZ4y/SRvXmpTPZYV4fCwmGxtp6sYbXkDxun9WI9M+
	uyjDyPzTf2L7ZH/ayLN89RjwOa9w7oA=
References: <000000000000a48f9e05aef6cce1@google.com> <000000000000b4227e05b3aa8101@google.com>
In-Reply-To: <000000000000b4227e05b3aa8101@google.com>
Date: Wed, 11 Nov 2020 12:12:06 +0100
Subject: Re: INFO: rcu detected stall in exit_group
To: syzbot <syzbot+1a14a0f8ce1a06d4415f@syzkaller.appspotmail.com>
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
X-Mailman-Version: 3.2.1
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/QN4BI5N4OTVUMDRLTPUDUEQOGY357FGE/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>
MIME-Version: 1.0
Message-ID: <160509314096.1287.3768097501899780905@diktynna.open-mesh.org>
From: "Dmitry Vyukov via B.A.T.M.A.N" <b.a.t.m.a.n@lists.open-mesh.org>
Cc: a@unstable.cc, b.a.t.m.a.n@lists.open-mesh.org, David Miller <davem@davemloft.net>, David Howells <dhowells@redhat.com>, =?UTF-8?B?RnLDqWTDqXJpYyBXZWlzYmVja2Vy?= <fweisbec@gmail.com>, linux-afs@lists.infradead.org, LKML <linux-kernel@vger.kernel.org>, Linux-MM <linux-mm@kvack.org>, mareklindner@neomailbox.ch, Mike Kravetz <mike.kravetz@oracle.com>, Ingo Molnar <mingo@kernel.org>, netdev <netdev@vger.kernel.org>, syzkaller-bugs <syzkaller-bugs@googlegroups.com>, Thomas Gleixner <tglx@linutronix.de>, Al Viro <viro@zeniv.linux.org.uk>, Dmitry Vyukov <dvyukov@google.com>
Content-Type: multipart/mixed; boundary="===============9158061891617729815=="

--===============9158061891617729815==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============9158061891617729815==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from mail-qk1-x741.google.com (mail-qk1-x741.google.com [IPv6:2607:f8b0:4864:20::741])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 0B98380290
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 11 Nov 2020 12:12:18 +0100 (CET)
Received: by mail-qk1-x741.google.com with SMTP id h15so1200450qkl.13
        for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 11 Nov 2020 03:12:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=WblSjW7Hy1Qg/G9ygaqee8dLuPciIb0PMDRXWK2yB3I=;
        b=mnoXeYYU9FZvxitCgz+s3IfMrgwI92vcPOfjlpLHfCKQ0i916WWDlzOVGj5faz2D9+
         JXDBkB6Sqv5zDJCTOyJP86i9c7z/OeJz1YDk1McIBYw9hrCsly2glRfgS4dDw9xmC1vj
         NPO/Y3ydEZHxMbD++b7hkNodPdDlqOxg74S5UE2qyakpVvg/pNP5O2Hsi0wHiKa8ur1V
         QqScNUC3sx+DtFLhy2H2G+PKibPl3zNqX2JQhIwKceYMlWbMggEJPSUOMIr5d3LM9+eT
         AuXp2vy8WuYE8VhaYajRR/fikF2jfNaJWD51CG3aYsWb886PT2kBX8r/XrWSnvAIwEMs
         4wrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=WblSjW7Hy1Qg/G9ygaqee8dLuPciIb0PMDRXWK2yB3I=;
        b=X50KBFAeBt85ZAgediANWLN8rOFFdOv58N4g7tGb9KnWor59DGYg6mjLzmQXsTV3dQ
         rDh7Mis5uDpzfe7T9/Oi5m+lkYeyRLZt2PV2HrTjQXkw6CseopldUBEKUepRIPnKZDc2
         ldiYiBgJigIEtXwVf2XUfA0rYkgIa5UYeugkv1/4C1i0Bln90iHRy4gQydwr5D0a+pJL
         faUlnPZ2nSVjfvz1AWJk2KmcQqhUm+SlP03hGd7Vlxl6XqYH+gjSca6ETdOGuCgXZdY0
         k50QMgcB4aAKKb2DEaYX6QoshNVgVTNRcP9UmJWrMqov4qh+Khj0S8zThPW/vQsUf/Um
         hi/Q==
X-Gm-Message-State: AOAM531htXoLAYpBd0wmKJ3szxi+TamtUtDO7ZqaCHP50pWAb10tgXxu
	PYcI8W/6Iz8v8guwH1dZKEGO+4oXQ3PIBNa6l749aQ==
X-Google-Smtp-Source: ABdhPJytmEudtqCvqu9Cia4M/vz8rvbh5JQqeb7dFN0b5G22lRbkjrL2sa5NNnZ0sXR/eE6YVQcWrXHOQaQh0zml8/Q=
X-Received: by 2002:a05:620a:15ce:: with SMTP id o14mr25226279qkm.231.1605093137327;
 Wed, 11 Nov 2020 03:12:17 -0800 (PST)
MIME-Version: 1.0
References: <000000000000a48f9e05aef6cce1@google.com> <000000000000b4227e05b3aa8101@google.com>
In-Reply-To: <000000000000b4227e05b3aa8101@google.com>
From: Dmitry Vyukov <dvyukov@google.com>
Date: Wed, 11 Nov 2020 12:12:06 +0100
Message-ID: <CACT4Y+Zy=m_K=rHpzi09tOd6YuQe6Dzk9vLvNoZk8Oo1hVG55g@mail.gmail.com>
Subject: Re: INFO: rcu detected stall in exit_group
To: syzbot <syzbot+1a14a0f8ce1a06d4415f@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="UTF-8"
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=google.com header.s=20161025 header.b=mnoXeYYU;
	spf=pass (diktynna.open-mesh.org: domain of dvyukov@google.com designates 2607:f8b0:4864:20::741 as permitted sender) smtp.mailfrom=dvyukov@google.com
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1605093139; a=rsa-sha256;
	cv=none;
	b=Tvi/h+j1vfxH7HMwAmfotPgADesATaACMP5dVT6dDMV2Zkph6dyee87Dm9Co4y06TRSNEW
	uMT2/5wfK8UNbplDFRC79wwUhzHkRsEiU4dGkrEAuo15UO8HwYnzFUyEtj1k60H1s5wRxm
	08ktfI2ipvd2lzCzezwX+EhAhOWFyCQ=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1605093139;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=WblSjW7Hy1Qg/G9ygaqee8dLuPciIb0PMDRXWK2yB3I=;
	b=i0nSpwzfZMko+lV9qEENwehp48Xl7+lL3BbMe343I8KfrIqoiPFfkCQYu4a+YfDDpF9DG0
	6Cvmwq8z3B31T0qpItqD/q0APBQwsje/sk1HkhDE6p3Xe1kNcqx6qhddopmz8b3KJYAPPp
	RmjknKrrmJrQHYjGg1+maI2E2okRbPM=
Message-ID-Hash: QN4BI5N4OTVUMDRLTPUDUEQOGY357FGE
X-Message-ID-Hash: QN4BI5N4OTVUMDRLTPUDUEQOGY357FGE
X-MailFrom: dvyukov@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
CC: a@unstable.cc, b.a.t.m.a.n@lists.open-mesh.org, David Miller <davem@davemloft.net>, David Howells <dhowells@redhat.com>, =?UTF-8?B?RnLDqWTDqXJpYyBXZWlzYmVja2Vy?= <fweisbec@gmail.com>, linux-afs@lists.infradead.org, LKML <linux-kernel@vger.kernel.org>, Linux-MM <linux-mm@kvack.org>, mareklindner@neomailbox.ch, Mike Kravetz <mike.kravetz@oracle.com>, Ingo Molnar <mingo@kernel.org>, netdev <netdev@vger.kernel.org>, syzkaller-bugs <syzkaller-bugs@googlegroups.com>, Thomas Gleixner <tglx@linutronix.de>, Al Viro <viro@zeniv.linux.org.uk>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/QN4BI5N4OTVUMDRLTPUDUEQOGY357FGE/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

On Mon, Nov 9, 2020 at 12:03 PM syzbot
<syzbot+1a14a0f8ce1a06d4415f@syzkaller.appspotmail.com> wrote:
>
> syzbot suspects this issue was fixed by commit:
>
> commit 1d0e850a49a5b56f8f3cb51e74a11e2fedb96be6
> Author: David Howells <dhowells@redhat.com>
> Date:   Fri Oct 16 12:21:14 2020 +0000
>
>     afs: Fix cell removal
>
> bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=14b65c3a500000
> start commit:   34d4ddd3 Merge tag 'linux-kselftest-5.9-rc5' of git://git...
> git tree:       upstream
> kernel config:  https://syzkaller.appspot.com/x/.config?x=a9075b36a6ae26c9
> dashboard link: https://syzkaller.appspot.com/bug?extid=1a14a0f8ce1a06d4415f
> userspace arch: i386
> syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=10c6642d900000
> C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=132d00fd900000
>
> If the result looks correct, please mark the issue as fixed by replying with:
>
> #syz fix: afs: Fix cell removal
>
> For information about bisection process see: https://goo.gl/tpsmEJ#bisection

#syz fix: afs: Fix cell removal
--===============9158061891617729815==--
