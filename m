Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 567833F8234
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 26 Aug 2021 08:02:47 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id ED22B8151B;
	Thu, 26 Aug 2021 08:02:45 +0200 (CEST)
Received: from mail109.syd.optusnet.com.au (mail109.syd.optusnet.com.au [211.29.132.80])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 1280880E09
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 25 Aug 2021 23:45:45 +0200 (CEST)
Received: from dread.disaster.area (pa49-195-182-146.pa.nsw.optusnet.com.au [49.195.182.146])
	by mail109.syd.optusnet.com.au (Postfix) with ESMTPS id 40F32845F7;
	Thu, 26 Aug 2021 07:45:38 +1000 (AEST)
Received: from dave by dread.disaster.area with local (Exim 4.92.3)
	(envelope-from <david@fromorbit.com>)
	id 1mJ0iE-004w5c-8M; Thu, 26 Aug 2021 07:45:34 +1000
Date: Thu, 26 Aug 2021 07:45:34 +1000
From: Dave Chinner <david@fromorbit.com>
To: syzbot <syzbot+4bb1622c9a583bb6f9f2@syzkaller.appspotmail.com>
Subject: Re: [syzbot] INFO: task hung in __xfs_buf_submit (2)
Message-ID: <20210825214534.GM3657114@dread.disaster.area>
References: <0000000000002fc21105ca657edf@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <0000000000002fc21105ca657edf@google.com>
X-Optus-CM-Score: 0
X-Optus-CM-Analysis: v=2.3 cv=Tu+Yewfh c=1 sm=1 tr=0
	a=QpfB3wCSrn/dqEBSktpwZQ==:117 a=QpfB3wCSrn/dqEBSktpwZQ==:17
	a=kj9zAlcOel0A:10 a=MhDmnRu9jo8A:10 a=VwQbUJbxAAAA:8 a=edf1wS77AAAA:8
	a=20KFwNOVAAAA:8 a=hSkVLCK3AAAA:8 a=7-415B0cAAAA:8 a=uqB4RbaozhEYDSnVuTIA:9
	a=CjuIK1q_8ugA:10 a=AjGcO6oz07-iQ99wixmX:22 a=DcSpbTIhAlouE1Uv7lRv:22
	a=cQPPKAXgyycSBL8etih5:22 a=biEYGPWJfzWAr4FL6Ov7:22
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1629927946; a=rsa-sha256;
	cv=none;
	b=ur1Au8mv7+4115/5iGzIZQKnQXUFn7kkeMs1crKVhlTzGCm5CC+3TvUmQYNktjLdIGv3hQ
	Cgcmu6az8smSKjqaASaeivxnq6Cr9Yu3zSXc1JoOgEjDCvzOGmJfR/3ggIgaKxvFbAhXvJ
	0V2P8q/Ufts+2xLHsDwAowcwdUdnGwc=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	dmarc=none;
	spf=none (diktynna.open-mesh.org: domain of david@fromorbit.com has no SPF policy when checking 211.29.132.80) smtp.mailfrom=david@fromorbit.com
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1629927946;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=Ct1moOBuVRXjNI9GOsXhZAoGPa1F7eKI89UYGawl6n4=;
	b=pDpZwspt5FS1roKhZbHsX2EnpoGZCFGLDDQozy3ZlSH6JW8BlgYH62VloxWdDax1recLJn
	QCNFymkwr017F8R17JvCLLTM1O2iHMVKQYJHoviXKgMoIImBgRyD45ewGLGlhkkISHlsZu
	oJv90Yh4M/lDikiPwoUyxAiBQhPQ1Bs=
X-MailFrom: david@fromorbit.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
Message-ID-Hash: PP62EUI6HAFS7DA7XI2KZOVOATO44JTJ
X-Message-ID-Hash: PP62EUI6HAFS7DA7XI2KZOVOATO44JTJ
X-Mailman-Approved-At: Thu, 26 Aug 2021 06:02:43 +0200
CC: a@unstable.cc, axboe@kernel.dk, b.a.t.m.a.n@lists.open-mesh.org, davem@davemloft.net, djwong@kernel.org, josef@toxicpanda.com, linux-kernel@vger.kernel.org, linux-xfs@vger.kernel.org, mareklindner@neomailbox.ch, mchristi@redhat.com, netdev@vger.kernel.org, syzkaller-bugs@googlegroups.com
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/PP62EUI6HAFS7DA7XI2KZOVOATO44JTJ/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

On Wed, Aug 25, 2021 at 10:22:21AM -0700, syzbot wrote:
> Hello,
> 
> syzbot found the following issue on:
> 
> HEAD commit:    6e764bcd1cf7 Merge tag 'for-linus' of git://git.kernel.org..
> git tree:       upstream
> console output: https://syzkaller.appspot.com/x/log.txt?x=10504885300000
> kernel config:  https://syzkaller.appspot.com/x/.config?x=2fd902af77ff1e56
> dashboard link: https://syzkaller.appspot.com/bug?extid=4bb1622c9a583bb6f9f2
> compiler:       Debian clang version 11.0.1-2, GNU ld (GNU Binutils for Debian) 2.35.1
> syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=14427606300000
> C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=149b3cce300000
> 
> The issue was bisected to:
> 
> commit 887e975c4172d0d5670c39ead2f18ba1e4ec8133
> Author: Mike Christie <mchristi@redhat.com>
> Date:   Tue Aug 13 16:39:51 2019 +0000
> 
>     nbd: add missing config put
> 
> bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=11980ad5300000
> final oops:     https://syzkaller.appspot.com/x/report.txt?x=13980ad5300000
> console output: https://syzkaller.appspot.com/x/log.txt?x=15980ad5300000
> 
> IMPORTANT: if you fix the issue, please add the following tag to the commit:
> Reported-by: syzbot+4bb1622c9a583bb6f9f2@syzkaller.appspotmail.com
> Fixes: 887e975c4172 ("nbd: add missing config put")

XFS is waiting on IO completion to be signalled from the block
device, and the bisect points to commit fixing a problem with a
block device processing IO timeout errors.

IOWs, the above commit is probably exposing a latent bug in the
commit that changes all the error handling in nbd to fix completion
races in IO completion. The commit message for 8f3ea35929a0 ("nbd:
handle unexpected replies better") also makes mention of races with
timeout errors, and the above commit is touching the timeout error
handling.

Josef, this one looks like it is yours...

Cheers,

Dave.
-- 
Dave Chinner
david@fromorbit.com
