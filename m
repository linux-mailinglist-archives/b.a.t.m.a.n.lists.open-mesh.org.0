Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id D495F280D72
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri,  2 Oct 2020 08:27:05 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id AEA3F80601;
	Fri,  2 Oct 2020 08:27:04 +0200 (CEST)
Received: from sipsolutions.net (s3.sipsolutions.net [IPv6:2a01:4f8:191:4433::2])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 4CEBE802D7
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri,  2 Oct 2020 08:27:00 +0200 (CEST)
Received: by sipsolutions.net with esmtpsa (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
	(Exim 4.94)
	(envelope-from <johannes@sipsolutions.net>)
	id 1kOEWp-00F5MO-KU; Fri, 02 Oct 2020 08:26:51 +0200
Message-ID: <7bf217ced62816b1bd3404bcfe279082347fb265.camel@sipsolutions.net>
Subject: Re: WARNING in cfg80211_connect
From: Johannes Berg <johannes@sipsolutions.net>
To: syzbot <syzbot+5f9392825de654244975@syzkaller.appspotmail.com>,
	a@unstable.cc, b.a.t.m.a.n@lists.open-mesh.org, davem@davemloft.net,
	david@fromorbit.com, dchinner@redhat.com, hch@lst.de, kuba@kernel.org,
	linux-kernel@vger.kernel.org, linux-wireless@vger.kernel.org,
	mareklindner@neomailbox.ch, netdev@vger.kernel.org, sw@simonwunderlich.de,
	syzkaller-bugs@googlegroups.com
Date: Fri, 02 Oct 2020 08:26:50 +0200
In-Reply-To: <0000000000000a954d05b0a89a86@google.com> (sfid-20201002_063111_703712_8FE82506)
References: <0000000000000a954d05b0a89a86@google.com>
	 (sfid-20201002_063111_703712_8FE82506)
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.36.5 (3.36.5-1.fc32) 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1601620021;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=N50l5O91hlYphARuamby5d9hSVNSTP7gszNkFV/mYw4=;
	b=OBGs15kBi8KP9d8ujiWXZ98SyLAc7fgFv7BhR/V74LeIVbBjafiAcFC2xZG+eyHDTdI2jJ
	fugRxMNyLjzctH/wUuHpI1cuKBbh4DWLR4xxgaTRi/3f8WvAYMIa3rDZtseRxPZ+mIXTuu
	7DQ08iuT/lxyRLDEf/m++QRT8lqsoBU=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1601620021; a=rsa-sha256;
	cv=none;
	b=gnQrnRhKhALiS7oz8akMWRX9htar1R9S08vyGrgFS0gn+I6z/J8RRY5ccX/2q35mDgS35a
	8U6/lxBm/KeGtjs27AX1UAAxfpFuaCeqdNeSjpFgCflET7vX+O+65wQr1/SHPh/C93kU9P
	sBSN9z/nztGUqIsjZ0vFl7laivSHluY=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=none (diktynna.open-mesh.org: domain of johannes@sipsolutions.net has no SPF policy when checking 2a01:4f8:191:4433::2) smtp.mailfrom=johannes@sipsolutions.net
Message-ID-Hash: YP7GSQG2NSY73LPSTP3V6YR3ITIFURN4
X-Message-ID-Hash: YP7GSQG2NSY73LPSTP3V6YR3ITIFURN4
X-MailFrom: johannes@sipsolutions.net
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/YP7GSQG2NSY73LPSTP3V6YR3ITIFURN4/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

On Thu, 2020-10-01 at 21:31 -0700, syzbot wrote:
> syzbot has bisected this issue to:
> 
> commit 16d4d43595b4780daac8fcea6d042689124cb094
> Author: Christoph Hellwig <hch@lst.de>
> Date:   Wed Jul 20 01:38:55 2016 +0000
> 
>     xfs: split direct I/O and DAX path
> 

LOL!

Unlike in many other cases, here I don't even see why it went down that
path. You'd think that Christoph's commit should have no effect
whatsoever, but here we are with syzbot claiming a difference?

I mean, often enough it says something is "caused" by a patch because
that caused e.g. generic netlink family renumbering, or because it
emitted some other ioctl() calls or whatnot that are invalid before and
valid after some other (feature) patch (or vice versa sometimes), but
you'd think that this patch would have _zero_ userspace observable
effect?

Which I guess means that the reproduction of this bug is random, perhaps
timing related.

johannes
