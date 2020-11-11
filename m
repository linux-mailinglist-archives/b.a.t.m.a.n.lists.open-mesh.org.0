Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 3777B2AEF6E
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 11 Nov 2020 12:19:26 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 03403807E3;
	Wed, 11 Nov 2020 12:19:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1605093565;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=gYX0ajWgpFq1MzAHC8FSvH8EejGjwsPnO1FZPGKAB5k=;
	b=l/u307hW5WjW7/Lj6tSD3qu0aFMj7qHTjit8QXW+4szGQlcYgkTQe5yeA4wBXZYdPDhBlj
	Oex9mU6d9kalgmrCVd6t21aiXHUjLdqFtjMcs7GFzoH9VsSNC9/tYKBYNoJfDRs9lZbb+a
	3WvjYTLXJECE4MsH9UqR1en9cs8GxJ0=
References: <0000000000009383f505adc8c5a0@google.com> <0000000000000b380805b09dbf40@google.com>
In-Reply-To: <0000000000000b380805b09dbf40@google.com>
Date: Wed, 11 Nov 2020 12:19:09 +0100
Subject: Re: general protection fault in nexthop_is_blackhole
To: syzbot <syzbot+b2c08a2f5cfef635cc3a@syzkaller.appspotmail.com>
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
X-Mailman-Version: 3.2.1
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/JKSNYFDQJCVZ54GFVKMRYTVZSQID4TZY/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>
MIME-Version: 1.0
Message-ID: <160509356370.1287.6202298092556819204@diktynna.open-mesh.org>
From: "Dmitry Vyukov via B.A.T.M.A.N" <b.a.t.m.a.n@lists.open-mesh.org>
Cc: a@unstable.cc, Anant Thazhemadam <anant.thazhemadam@gmail.com>, Andrii Nakryiko <andriin@fb.com>, anmol.karan123@gmail.com, Alexei Starovoitov <ast@kernel.org>, b.a.t.m.a.n@lists.open-mesh.org, bpf <bpf@vger.kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, David Miller <davem@davemloft.net>, David Ahern <dsahern@gmail.com>, hariprasad.kelam@gmail.com, Herbert Xu <herbert@gondor.apana.org.au>, John Fastabend <john.fastabend@gmail.com>, Martin KaFai Lau <kafai@fb.com>, KP Singh <kpsingh@chromium.org>, Jakub Kicinski <kuba@kernel.org>, Alexey Kuznetsov <kuznet@ms2.inr.ac.ru>, LKML <linux-kernel@vger.kernel.org>, mareklindner@neomailbox.ch, netdev <netdev@vger.kernel.org>, Nikolay Aleksandrov <nikolay@cumulusnetworks.com>, Song Liu <songliubraving@fb.com>, Steffen Klassert <steffen.klassert@secunet.com>, syzkaller-bugs <syzkaller-bugs@googlegroups.com>, Yonghong Song <yhs@fb.com>, Hideaki YOSHIFUJI <yoshfuji@linux-ipv6.org>, Dmitry Vyukov <dvyukov@google.com>
Content-Type: multipart/mixed; boundary="===============4376915679533981788=="

--===============4376915679533981788==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============4376915679533981788==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from mail-qk1-x744.google.com (mail-qk1-x744.google.com [IPv6:2607:f8b0:4864:20::744])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id CFDF980290
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 11 Nov 2020 12:19:21 +0100 (CET)
Received: by mail-qk1-x744.google.com with SMTP id h15so1214382qkl.13
        for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 11 Nov 2020 03:19:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=NdlWGa9W9j2/2idrafRO8NF9kHbSgdMNIKF8WBfZVnE=;
        b=Zf90S74xeQ2LgIINAlHaNh3n+wxSPSw6MWf8Xd3cGwGlR2g4zYQEqzjNbV21x/Yzvh
         w99oPltcMDq0BMMuF8orFw0dHU3XwsniZhq1vP/gBoW+LXFtcA9aDwE3WxoOtSFQ+XSQ
         XkFwCOJH+VHug5Jp8RT+iRUi8EmRsQ9UduJe6AIDOi2FqARmUIiQT6FZ0NCB0PHpYyci
         JML2ElQrHBcmnXQDrF+FGwR4I9pVBWBdc8QJczC/eTQ38o9Z5E227CFQnsT6tjHvS9U9
         4cGdauMHOE2ZHa3PEvI0/wsbPFaAgsY4xUizR53ibKhCJdvQPiN+poSppN9475DJMNgF
         DBQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=NdlWGa9W9j2/2idrafRO8NF9kHbSgdMNIKF8WBfZVnE=;
        b=gmpjK/PBSgSCfazt+HU5ziidhy3nEwuPbL2isKPwL+YWlh5DiUG70mTq+bLh8vXX2S
         8nqZaeCeqqfG912io2ODq8xB/hGXraRu13EDhjvc2pJHO5lh2l1aXwN42Qd1SAU0PV6g
         ERPzezHfzQDvQhKwWm1nNH4iHJCjcDvUZ9xrxKK1YSUPe08TTVpip9jFfG5OPnZN8I5n
         tgGEHOQUKRbFSWEFDOqmQFy12Ts5ZevVZjGRX+NCUHYFTOJg6Xe9K4ytwg0L/HsSXaFu
         F4StdFTEYT3Hvo06qoc9cLUU6KLlSsx4rOBJRGRL18ZhqXYKI3iU55/s84R6RTouDPM0
         ruRg==
X-Gm-Message-State: AOAM532mkCeT0KOBW8Cq6S4/yXc06al2lVOFtTW8biDnzn2APXnJOqu9
	bN7JgkKTerdL/6IjMDpP9sv9XdaJ6nJPsv5IySurZg==
X-Google-Smtp-Source: ABdhPJyYlG8RGNjUZKn1NEXiU475Oqt1Wa5/f335MCR9/btvvCw3lKf1NDB71nTIM92AcHxiyDRqaQx4DK6yxSs7XQw=
X-Received: by 2002:a37:9747:: with SMTP id z68mr23444181qkd.424.1605093560351;
 Wed, 11 Nov 2020 03:19:20 -0800 (PST)
MIME-Version: 1.0
References: <0000000000009383f505adc8c5a0@google.com> <0000000000000b380805b09dbf40@google.com>
In-Reply-To: <0000000000000b380805b09dbf40@google.com>
From: Dmitry Vyukov <dvyukov@google.com>
Date: Wed, 11 Nov 2020 12:19:09 +0100
Message-ID: <CACT4Y+ZM6kjJjaiocArfb2EEhJKqqA3=S2Y_7GeTx2SXz-xVAQ@mail.gmail.com>
Subject: Re: general protection fault in nexthop_is_blackhole
To: syzbot <syzbot+b2c08a2f5cfef635cc3a@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="UTF-8"
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=google.com header.s=20161025 header.b=Zf90S74x;
	spf=pass (diktynna.open-mesh.org: domain of dvyukov@google.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=dvyukov@google.com
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1605093561; a=rsa-sha256;
	cv=none;
	b=J1Lsg3TD3HXTaCc7YcDMpHAbhiuvf3wAqaQScYARePsIkicgiSHQ9H1AI3ctiQVgnHvS4O
	Tq3hRiHSl72QfIDFqGziZX/NDvwKZn5/I8wX9rFclfP/FHCncFukHyvkWCxWiaBgfHZ+42
	yyzde1m19JHhwTjNF0Nw97k5Z9k4sw4=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1605093561;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=NdlWGa9W9j2/2idrafRO8NF9kHbSgdMNIKF8WBfZVnE=;
	b=y3KqxFaStZ41KEUOJC8TQDHV14k4b9igXHY8fCrWS78go2zXUeI3hnn66qWmrt6RxlqWta
	lA9WvA5TbzYcCqIlqsjWs3lOhU+v1LnPBuLkUPFALMxFbD9XL3YHVz1i7zDlUI9FtZPi1n
	o/ObdnJ/5rFrywG9A59SMWA2ar9brU0=
Message-ID-Hash: JKSNYFDQJCVZ54GFVKMRYTVZSQID4TZY
X-Message-ID-Hash: JKSNYFDQJCVZ54GFVKMRYTVZSQID4TZY
X-MailFrom: dvyukov@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
CC: a@unstable.cc, Anant Thazhemadam <anant.thazhemadam@gmail.com>, Andrii Nakryiko <andriin@fb.com>, anmol.karan123@gmail.com, Alexei Starovoitov <ast@kernel.org>, b.a.t.m.a.n@lists.open-mesh.org, bpf <bpf@vger.kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, David Miller <davem@davemloft.net>, David Ahern <dsahern@gmail.com>, hariprasad.kelam@gmail.com, Herbert Xu <herbert@gondor.apana.org.au>, John Fastabend <john.fastabend@gmail.com>, Martin KaFai Lau <kafai@fb.com>, KP Singh <kpsingh@chromium.org>, Jakub Kicinski <kuba@kernel.org>, Alexey Kuznetsov <kuznet@ms2.inr.ac.ru>, LKML <linux-kernel@vger.kernel.org>, mareklindner@neomailbox.ch, netdev <netdev@vger.kernel.org>, Nikolay Aleksandrov <nikolay@cumulusnetworks.com>, Song Liu <songliubraving@fb.com>, Steffen Klassert <steffen.klassert@secunet.com>, syzkaller-bugs <syzkaller-bugs@googlegroups.com>, Yonghong Song <yhs@fb.com>, Hideaki YOSHIFUJI <yoshfuji@linux-ipv6.org>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/JKSNYFDQJCVZ54GFVKMRYTVZSQID4TZY/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

On Thu, Oct 1, 2020 at 5:34 PM syzbot
<syzbot+b2c08a2f5cfef635cc3a@syzkaller.appspotmail.com> wrote:
>
> syzbot suspects this issue was fixed by commit:
>
> commit eeaac3634ee0e3f35548be35275efeca888e9b23
> Author: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
> Date:   Sat Aug 22 12:06:36 2020 +0000
>
>     net: nexthop: don't allow empty NHA_GROUP
>
> bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=116177a7900000
> start commit:   c3d8f220 Merge tag 'kbuild-fixes-v5.9' of git://git.kernel..
> git tree:       upstream
> kernel config:  https://syzkaller.appspot.com/x/.config?x=bb68b9e8a8cc842f
> dashboard link: https://syzkaller.appspot.com/bug?extid=b2c08a2f5cfef635cc3a
> syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=14d75e39900000
> C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=12aea519900000
>
> If the result looks correct, please mark the issue as fixed by replying with:
>
> #syz fix: net: nexthop: don't allow empty NHA_GROUP
>
> For information about bisection process see: https://goo.gl/tpsmEJ#bisection


#syz fix: net: nexthop: don't allow empty NHA_GROUP
--===============4376915679533981788==--
