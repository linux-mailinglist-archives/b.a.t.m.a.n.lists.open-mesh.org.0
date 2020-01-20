Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [78.46.248.236])
	by mail.lfdr.de (Postfix) with ESMTPS id 03785142C56
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 20 Jan 2020 14:40:59 +0100 (CET)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id BC14A80819;
	Mon, 20 Jan 2020 14:40:53 +0100 (CET)
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112]) by open-mesh.org (Postfix) with ESMTPS id 724B580175
 for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 20 Jan 2020 14:21:28 +0100 (CET)
Received: from [154.119.55.242] (helo=wittgenstein)
 by youngberry.canonical.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <christian.brauner@ubuntu.com>)
 id 1itWy2-0005zt-Dn; Mon, 20 Jan 2020 13:19:46 +0000
Date: Mon, 20 Jan 2020 14:19:31 +0100
From: Christian Brauner <christian.brauner@ubuntu.com>
To: syzbot <syzbot+6491ea8f6dddbf04930e@syzkaller.appspotmail.com>
Subject: Re: KASAN: slab-out-of-bounds Read in bitmap_ip_ext_cleanup
Message-ID: <20200120131930.pbhbsrm4bk4lq3d7@wittgenstein>
References: <000000000000bdb5b2059c865f5c@google.com>
 <000000000000c795fa059c884c21@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <000000000000c795fa059c884c21@google.com>
User-Agent: NeoMutt/20180716
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1579526488;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=jzZM7fv4lTXZcUHtUkIqipTf9XSe7eSyBSd2CQJi7tM=;
 b=DQruwPKlWKqWo4tPGENQTtPEsPIetyuBoEnQd16tr0dRpwmBi4PrNef0Vj7JNILDjuXMej
 jajIPiVF37tF79xWtc3YsO/Zc1CGyA3mnPob1GZDzyBHi4rKzRX1vr7q+WBPmlP5axUfa3
 3nTk3fdYwqWiv+eqZm93ZTk68pRdUiE=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1579526488; a=rsa-sha256; cv=none;
 b=PTujBakeQHrVdI/pVFvMrOtK1AqcGdbZbDNufs49bxLl+4eRswZkxd6FD/WV/HlBqjd0e2
 QLbcd0oOSDFpTLJXStnw+04mbsfTe4e87e2hNBjhIaRp/Yn57GPgXAEy4th8blrLTAvYxg
 aLkYTIzGi7Bw1yIEFboOKorcFx+5jpU=
ARC-Authentication-Results: i=1; open-mesh.org; dkim=none;
 spf=none (open-mesh.org: domain of christian.brauner@ubuntu.com has no SPF
 policy when checking 91.189.89.112)
 smtp.mailfrom=christian.brauner@ubuntu.com
X-Mailman-Approved-At: Mon, 20 Jan 2020 14:40:50 +0100
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
Cc: mareklindner@neomailbox.ch, peterz@infradead.org, catalin.marinas@arm.com,
 a@unstable.cc, jcmvbkbc@gmail.com, hpa@zytor.com, will@kernel.org,
 elena.reshetova@intel.com, hare@suse.com, johannes.berg@intel.com,
 florent.fourcot@wifirst.fr, x86@kernel.org, linux@armlinux.org.uk,
 kadlec@netfilter.org, coreteam@netfilter.org, geert@linux-m68k.org,
 allison@lohutok.net, pablo@netfilter.org, linux-arm-kernel@lists.infradead.org,
 linux-xtensa@linux-xtensa.org, arnd@arndb.de, heiko.carstens@de.ibm.com,
 syzkaller-bugs@googlegroups.com, bp@alien8.de, viro@zeniv.linux.org.uk,
 tglx@linutronix.de, mingo@redhat.com, christian@brauner.io, axboe@kernel.dk,
 chris@zankel.net, jeremy@azazel.net, linux-api@vger.kernel.org,
 b.a.t.m.a.n@lists.open-mesh.org, fw@strlen.de, linux-kernel@vger.kernel.org,
 netfilter-devel@vger.kernel.org, netdev@vger.kernel.org,
 akpm@linux-foundation.org, info@metux.net, davem@davemloft.net
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

On Sun, Jan 19, 2020 at 05:35:01PM -0800, syzbot wrote:
> syzbot has bisected this bug to:
> 
> commit d68dbb0c9ac8b1ff52eb09aa58ce6358400fa939
> Author: Christian Brauner <christian@brauner.io>
> Date:   Thu Jun 20 23:26:35 2019 +0000
> 
>     arch: handle arches who do not yet define clone3
> 
> bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=1456fed1e00000
> start commit:   09d4f10a net: sched: act_ctinfo: fix memory leak
> git tree:       net
> final crash:    https://syzkaller.appspot.com/x/report.txt?x=1656fed1e00000
> console output: https://syzkaller.appspot.com/x/log.txt?x=1256fed1e00000
> kernel config:  https://syzkaller.appspot.com/x/.config?x=7e89bd00623fe71e
> dashboard link: https://syzkaller.appspot.com/bug?extid=6491ea8f6dddbf04930e
> syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=141af959e00000
> C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=1067fa85e00000
> 
> Reported-by: syzbot+6491ea8f6dddbf04930e@syzkaller.appspotmail.com
> Fixes: d68dbb0c9ac8 ("arch: handle arches who do not yet define clone3")
> 
> For information about bisection process see: https://goo.gl/tpsmEJ#bisection

This bisect seems bogus.

Christian
