Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id ECA693F390B
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 21 Aug 2021 08:38:07 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id CFB8582428;
	Sat, 21 Aug 2021 08:38:06 +0200 (CEST)
Received: from outgoing.mit.edu (outgoing-auth-1.mit.edu [18.9.28.11])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 284E681463
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 21 Aug 2021 05:49:33 +0200 (CEST)
Received: from cwcc.thunk.org (pool-72-74-133-215.bstnma.fios.verizon.net [72.74.133.215])
	(authenticated bits=0)
        (User authenticated as tytso@ATHENA.MIT.EDU)
	by outgoing.mit.edu (8.14.7/8.12.4) with ESMTP id 17L3hoN2017864
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 20 Aug 2021 23:43:51 -0400
Received: by cwcc.thunk.org (Postfix, from userid 15806)
	id 6D62315C3DBB; Fri, 20 Aug 2021 23:43:50 -0400 (EDT)
Date: Fri, 20 Aug 2021 23:43:50 -0400
From: "Theodore Ts'o" <tytso@mit.edu>
To: syzbot <syzbot+13146364637c7363a7de@syzkaller.appspotmail.com>
Subject: Re: [syzbot] KASAN: slab-out-of-bounds Write in
 ext4_write_inline_data_end
Message-ID: <YSB2dsveNTr9G3Mq@mit.edu>
References: <000000000000e5080305c9e51453@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <000000000000e5080305c9e51453@google.com>
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	dmarc=none;
	spf=pass (diktynna.open-mesh.org: domain of tytso@mit.edu designates 18.9.28.11 as permitted sender) smtp.mailfrom=tytso@mit.edu
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1629517774; a=rsa-sha256;
	cv=none;
	b=dKnw7ovDYe03mLa5lwqZAdOuWq1eNLTeZHG6rwWIH6yc/TAaNwdI571wlTP5GHpzUYOulc
	78OZ9t0RVDjz4K9ArVRDINoVPM2how1pxwr+CujbVxfP6m6zQY+O7PNxJ97M2y3BpnMNNB
	EnIW1AKZWjrYksYXnpIeU9F4u/eYPCU=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1629517774;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=PUvemS9NGvgCZFcNpZ251QHTXDDiBT6IQHiJ9lg/AfY=;
	b=Zb+X2k22S+BQB6e+sqMiF/Ob5gDJl++6ZKB0jQiNTd+oXnYLIkb6E+oztPBPITKmFicNx8
	+rKW4cH7k6PmRMvz2nHn4PE7TXnDEVib7ghNLS7gR9KgH6jk46Ee4LVH5y/07pbAjpSl9q
	VyK/eqrrMrud7lDfRw6Q4BPZ/eIVNQg=
X-MailFrom: tytso@mit.edu
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
Message-ID-Hash: 7CRMA7UQAK5G53K52BZ3XXXVHUMUR2IW
X-Message-ID-Hash: 7CRMA7UQAK5G53K52BZ3XXXVHUMUR2IW
X-Mailman-Approved-At: Sat, 21 Aug 2021 06:38:04 +0200
CC: a@unstable.cc, adilger.kernel@dilger.ca, arnd@arndb.de, b.a.t.m.a.n@lists.open-mesh.org, christian@brauner.io, davem@davemloft.net, linux-ext4@vger.kernel.org, linux-kernel@vger.kernel.org, mareklindner@neomailbox.ch, netdev@vger.kernel.org, syzkaller-bugs@googlegroups.com
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/7CRMA7UQAK5G53K52BZ3XXXVHUMUR2IW/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

On Thu, Aug 19, 2021 at 01:10:18AM -0700, syzbot wrote:
> Hello,
> 
> syzbot found the following issue on:
> 
> HEAD commit:    614cb2751d31 Merge tag 'trace-v5.14-rc6' of git://git.kern..
> git tree:       upstream
> console output: https://syzkaller.appspot.com/x/log.txt?x=130112c5300000
> kernel config:  https://syzkaller.appspot.com/x/.config?x=f61012d0b1cd846f
> dashboard link: https://syzkaller.appspot.com/bug?extid=13146364637c7363a7de
> compiler:       Debian clang version 11.0.1-2, GNU ld (GNU Binutils for Debian) 2.35.1
> syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=104d7cc5300000
> C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=1333ce0e300000
> 
> The issue was bisected to:
> 
> commit a154d5d83d21af6b9ee32adc5dbcea5ac1fb534c
> Author: Arnd Bergmann <arnd@arndb.de>
> Date:   Mon Mar 4 20:38:03 2019 +0000
> 
>     net: ignore sysctl_devconf_inherit_init_net without SYSCTL
> 
> bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=13f970b6300000
> final oops:     https://syzkaller.appspot.com/x/report.txt?x=100570b6300000
> console output: https://syzkaller.appspot.com/x/log.txt?x=17f970b6300000

In case it wasn't obvious, this is a bogus bisection.  It's a bug
ext4's inline_data support where there is a race between writing to an
inline_data file against setting extended attributes on that same
inline_data file.

Fix is coming up....

					- Ted
