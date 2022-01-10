Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C6284897E0
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 10 Jan 2022 12:49:03 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 2355180885;
	Mon, 10 Jan 2022 12:49:02 +0100 (CET)
Received: from Chamillionaire.breakpoint.cc (Chamillionaire.breakpoint.cc [IPv6:2a0a:51c0:0:12e:520::1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id A2CAC804BE
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 10 Jan 2022 12:48:59 +0100 (CET)
Received: from fw by Chamillionaire.breakpoint.cc with local (Exim 4.92)
	(envelope-from <fw@strlen.de>)
	id 1n6tAQ-0007FN-Bf; Mon, 10 Jan 2022 12:48:50 +0100
Date: Mon, 10 Jan 2022 12:48:50 +0100
From: Florian Westphal <fw@strlen.de>
To: syzbot <syzbot+e163f2ff7c3f7efd8203@syzkaller.appspotmail.com>
Subject: Re: [syzbot] WARNING: suspicious RCU usage in __dev_queue_xmit
Message-ID: <20220110114850.GD317@breakpoint.cc>
References: <000000000000ca1d2005d537ebac@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <000000000000ca1d2005d537ebac@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of fw@strlen.de designates 2a0a:51c0:0:12e:520::1 as permitted sender) smtp.mailfrom=fw@strlen.de;
	dmarc=none
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1641815339; a=rsa-sha256;
	cv=none;
	b=mx+AYRKA7JdAg22XFuI3+IkBUiqRDpqmZOK0jqZ6OzhQNSebz/+9/MAYHYtMeGLi4fYrOj
	YIcaGit8Cy/wSF3USzZIbSbUGanU8tJsdt5j5BDK5hGQVaoAi+te9GOFqyG6RkD3Ymdwhi
	C535OB3ookT0yNmn40B/doHx0tok/uE=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1641815339;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=1R/vQD+wkw1uFdKgufrnYZuf3M/lrsiduFJG9T6ikuM=;
	b=UxKI8T0KVb8q0ehn28q1EeQcqIWNNnYjTGCBRu8QMw9u2y2+BekTPT6H9ELW6hddNTtHYZ
	0lJy5WS4k/hdy+6hF+M/LQQShKyQPFbX1w2mBWBQtVbc6+GwexMMEjEMXx/31Zma3awZvr
	9O/F7TvfBT5aEw+yiAOscnXmfiWmv3U=
Message-ID-Hash: YDH2E4UCYR6B2HVBKDFTRO6EACC5O7XB
X-Message-ID-Hash: YDH2E4UCYR6B2HVBKDFTRO6EACC5O7XB
X-MailFrom: fw@strlen.de
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
CC: a@unstable.cc, alobakin@pm.me, andrii@kernel.org, ast@kernel.org, atenart@kernel.org, b.a.t.m.a.n@lists.open-mesh.org, bpf@vger.kernel.org, coreteam@netfilter.org, daniel@iogearbox.net, davem@davemloft.net, fw@strlen.de, john.fastabend@gmail.com, jonathan.lemon@gmail.com, kadlec@netfilter.org, kafai@fb.com, kpsingh@kernel.org, kuba@kernel.org, linux-kernel@vger.kernel.org, lukas@wunner.de, mareklindner@neomailbox.ch, netdev@vger.kernel.org, netfilter-devel@vger.kernel.org, pablo@netfilter.org, songliubraving@fb.com, syzkaller-bugs@googlegroups.com, yhs@fb.com
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/YDH2E4UCYR6B2HVBKDFTRO6EACC5O7XB/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

syzbot <syzbot+e163f2ff7c3f7efd8203@syzkaller.appspotmail.com> wrote:
> Hello,
> 
> syzbot found the following issue on:
> 
> HEAD commit:    4c375272fb0b Merge branch 'net-add-preliminary-netdev-refc..
> git tree:       net-next
> console output: https://syzkaller.appspot.com/x/log.txt?x=164749a9b00000
> kernel config:  https://syzkaller.appspot.com/x/.config?x=2b8e24e3a80e3875
> dashboard link: https://syzkaller.appspot.com/bug?extid=e163f2ff7c3f7efd8203
> compiler:       gcc (Debian 10.2.1-6) 10.2.1 20210110, GNU ld (GNU Binutils for Debian) 2.35.2
> syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=11493641b00000
> C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=11ac6aceb00000

> include/linux/netfilter_netdev.h:97 suspicious rcu_dereference_check() usage!

#syz fix: netfilter: egress: avoid a lockdep splat
